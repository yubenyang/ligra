#!/bin/bash

mkdir bin/
mkdir graph/

cd apps/
OPENMP=1 make -j
mv encoder decoder BFS BC BellmanFord Components Components-Shortcut Radii PageRank PageRankDelta BFSCC BFS-Bitvector KCore MIS Triangle CF ../bin
make cleansrc
cd ../utils
OPENMP=1 make -j
mv rMatGraph gridGraph randLocalGraph SNAPtoAdj wghSNAPtoAdj adjGraphAddWeights adjToBinary communityToHyperAdj hyperAdjToBinary adjHypergraphAddWeights randHypergraph KONECTtoHyperAdj KONECTtoClique communityToClique communityToMESH KONECTtoMESH ../bin
rm utils.h parseCommandLine.h parallel.h quickSort.h
cd ../

bin/rMatGraph 200000000 graph/rMat_200000000
@interface MANodeLegacyImplementation
- (BOOL)hasEdgeOfType:(unint64_t)a3 matchingFilter:(id)a4;
- (BOOL)hasEdgeOfType:(unint64_t)a3 withNode:(id)a4;
- (MANodeLegacyImplementation)initWithNode:(id)a3;
- (unint64_t)countOfEdgesOfType:(unint64_t)a3 matchingFilter:(id)a4;
- (void)enumerateEdgesOfType:(unint64_t)a3 matchingFilter:(id)a4 usingBlock:(id)a5;
- (void)enumerateEdgesOfType:(unint64_t)a3 usingBlock:(id)a4;
- (void)enumerateEdgesOfType:(unint64_t)a3 withNode:(id)a4 usingBlock:(id)a5;
- (void)enumerateNeighborEdgesAndNodesMatchingFilter:(id)a3 usingBlock:(id)a4;
- (void)enumerateNeighborEdgesAndNodesThroughEdgesOfType:(unint64_t)a3 matchingFilter:(id)a4 usingBlock:(id)a5;
- (void)enumerateNeighborNodesMatchingFilter:(id)a3 usingBlock:(id)a4;
- (void)enumerateNeighborNodesThroughEdgesOfType:(unint64_t)a3 matchingFilter:(id)a4 usingBlock:(id)a5;
@end

@implementation MANodeLegacyImplementation

- (void)enumerateNeighborNodesThroughEdgesOfType:(unint64_t)a3 matchingFilter:(id)a4 usingBlock:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__MANodeLegacyImplementation_enumerateNeighborNodesThroughEdgesOfType_matchingFilter_usingBlock___block_invoke;
  v10[3] = &unk_2797FEBF8;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [(MANodeLegacyImplementation *)self enumerateEdgesOfType:a3 matchingFilter:a4 usingBlock:v10];
}

void __97__MANodeLegacyImplementation_enumerateNeighborNodesThroughEdgesOfType_matchingFilter_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v5 = [a2 oppositeNode:*(*(a1 + 32) + 16)];
  (*(v4 + 16))(v4, v5, a3);
}

- (void)enumerateNeighborEdgesAndNodesThroughEdgesOfType:(unint64_t)a3 matchingFilter:(id)a4 usingBlock:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __105__MANodeLegacyImplementation_enumerateNeighborEdgesAndNodesThroughEdgesOfType_matchingFilter_usingBlock___block_invoke;
  v10[3] = &unk_2797FEBF8;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [(MANodeLegacyImplementation *)self enumerateEdgesOfType:a3 matchingFilter:a4 usingBlock:v10];
}

void __105__MANodeLegacyImplementation_enumerateNeighborEdgesAndNodesThroughEdgesOfType_matchingFilter_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  v5 = [v4 oppositeNode:v3];
  (*(*(a1 + 40) + 16))();
}

- (void)enumerateNeighborNodesMatchingFilter:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__MANodeLegacyImplementation_enumerateNeighborNodesMatchingFilter_usingBlock___block_invoke;
  v8[3] = &unk_2797FDB28;
  v9 = v6;
  v7 = v6;
  [(MANodeLegacyImplementation *)self enumerateNeighborEdgesAndNodesMatchingFilter:a3 usingBlock:v8];
}

- (void)enumerateNeighborEdgesAndNodesMatchingFilter:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[(MAElementFilter *)MANodeFilter];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __86__MANodeLegacyImplementation_enumerateNeighborEdgesAndNodesMatchingFilter_usingBlock___block_invoke;
    v16[3] = &unk_2797FEBF8;
    v10 = &v17;
    v16[4] = self;
    v17 = v7;
    v11 = v7;
    [(MANodeLegacyImplementation *)self enumerateEdgesOfType:3 usingBlock:v16];
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __86__MANodeLegacyImplementation_enumerateNeighborEdgesAndNodesMatchingFilter_usingBlock___block_invoke_2;
    v13[3] = &unk_2797FDB00;
    v13[4] = self;
    v10 = &v14;
    v14 = v6;
    v15 = v7;
    v12 = v7;
    [(MANodeLegacyImplementation *)self enumerateEdgesOfType:3 usingBlock:v13];
  }
}

void __86__MANodeLegacyImplementation_enumerateNeighborEdgesAndNodesMatchingFilter_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 oppositeNode:*(*(a1 + 32) + 16)];
  if (v3 != *(*(a1 + 32) + 16))
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __86__MANodeLegacyImplementation_enumerateNeighborEdgesAndNodesMatchingFilter_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 oppositeNode:*(*(a1 + 32) + 16)];
  if (v3 != *(*(a1 + 32) + 16) && [*(a1 + 40) matchesNode:v3])
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)enumerateEdgesOfType:(unint64_t)a3 withNode:(id)a4 usingBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = +[(MAElementFilter *)MAEdgeFilter];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__MANodeLegacyImplementation_enumerateEdgesOfType_withNode_usingBlock___block_invoke;
  v13[3] = &unk_2797FDAD8;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  [(MANodeLegacyImplementation *)self enumerateNeighborEdgesAndNodesThroughEdgesOfType:a3 matchingFilter:v10 usingBlock:v13];
}

void __71__MANodeLegacyImplementation_enumerateEdgesOfType_withNode_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) isSameNodeAsNode:a3])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (BOOL)hasEdgeOfType:(unint64_t)a3 withNode:(id)a4
{
  v6 = a4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__MANodeLegacyImplementation_hasEdgeOfType_withNode___block_invoke;
  v9[3] = &unk_2797FED68;
  v11 = &v12;
  v9[4] = self;
  v7 = v6;
  v10 = v7;
  [(MANodeLegacyImplementation *)self enumerateEdgesOfType:a3 usingBlock:v9];
  LOBYTE(a3) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return a3;
}

void __53__MANodeLegacyImplementation_hasEdgeOfType_withNode___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v5 = [a2 oppositeNode:*(a1[4] + 16)];
  *(*(a1[6] + 8) + 24) = v5 == a1[5];

  *a3 = *(*(a1[6] + 8) + 24);
}

- (void)enumerateEdgesOfType:(unint64_t)a3 matchingFilter:(id)a4 usingBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = +[(MAElementFilter *)MAEdgeFilter];
  v11 = [v8 isEqual:v10];

  if (v11)
  {
    [(MANodeLegacyImplementation *)self enumerateEdgesOfType:a3 usingBlock:v9];
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __77__MANodeLegacyImplementation_enumerateEdgesOfType_matchingFilter_usingBlock___block_invoke;
    v12[3] = &unk_2797FEBF8;
    v13 = v8;
    v14 = v9;
    [(MANodeLegacyImplementation *)self enumerateEdgesOfType:a3 usingBlock:v12];
  }
}

void __77__MANodeLegacyImplementation_enumerateEdgesOfType_matchingFilter_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) matchesEdge:?])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)enumerateEdgesOfType:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = v6;
  switch(a3)
  {
    case 3uLL:
      edges = self->_edges;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __62__MANodeLegacyImplementation_enumerateEdgesOfType_usingBlock___block_invoke_3;
      v12[3] = &unk_2797FDAB0;
      v13 = v6;
      [(NSMutableArray *)edges enumerateObjectsUsingBlock:v12];
      v9 = v13;
      goto LABEL_7;
    case 2uLL:
      v10 = self->_edges;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __62__MANodeLegacyImplementation_enumerateEdgesOfType_usingBlock___block_invoke_2;
      v14[3] = &unk_2797FDA88;
      v14[4] = self;
      v15 = v6;
      [(NSMutableArray *)v10 enumerateObjectsUsingBlock:v14];
      v9 = v15;
      goto LABEL_7;
    case 1uLL:
      v8 = self->_edges;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __62__MANodeLegacyImplementation_enumerateEdgesOfType_usingBlock___block_invoke;
      v16[3] = &unk_2797FDA88;
      v16[4] = self;
      v17 = v6;
      [(NSMutableArray *)v8 enumerateObjectsUsingBlock:v16];
      v9 = v17;
LABEL_7:

      break;
  }
}

void __62__MANodeLegacyImplementation_enumerateEdgesOfType_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 targetNode];
  v4 = [v3 isSameNodeAsNode:*(*(a1 + 32) + 16)];

  if (v4)
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __62__MANodeLegacyImplementation_enumerateEdgesOfType_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 sourceNode];
  v4 = [v3 isSameNodeAsNode:*(*(a1 + 32) + 16)];

  if (v4)
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (BOOL)hasEdgeOfType:(unint64_t)a3 matchingFilter:(id)a4
{
  v6 = a4;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__MANodeLegacyImplementation_hasEdgeOfType_matchingFilter___block_invoke;
  v8[3] = &unk_2797FFB10;
  v8[4] = &v9;
  [(MANodeLegacyImplementation *)self enumerateEdgesOfType:a3 matchingFilter:v6 usingBlock:v8];
  LOBYTE(a3) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return a3;
}

uint64_t __59__MANodeLegacyImplementation_hasEdgeOfType_matchingFilter___block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

- (unint64_t)countOfEdgesOfType:(unint64_t)a3 matchingFilter:(id)a4
{
  v6 = a4;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__MANodeLegacyImplementation_countOfEdgesOfType_matchingFilter___block_invoke;
  v9[3] = &unk_2797FFB10;
  v9[4] = &v10;
  [(MANodeLegacyImplementation *)self enumerateEdgesOfType:a3 matchingFilter:v6 usingBlock:v9];
  v7 = v11[3];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (MANodeLegacyImplementation)initWithNode:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MANodeLegacyImplementation;
  v5 = [(MANodeLegacyImplementation *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_node = v4;
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    edges = v6->_edges;
    v6->_edges = v7;
  }

  return v6;
}

@end
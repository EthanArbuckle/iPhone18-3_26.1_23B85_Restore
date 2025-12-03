@interface MANodeLegacyImplementation
- (BOOL)hasEdgeOfType:(unint64_t)type matchingFilter:(id)filter;
- (BOOL)hasEdgeOfType:(unint64_t)type withNode:(id)node;
- (MANodeLegacyImplementation)initWithNode:(id)node;
- (unint64_t)countOfEdgesOfType:(unint64_t)type matchingFilter:(id)filter;
- (void)enumerateEdgesOfType:(unint64_t)type matchingFilter:(id)filter usingBlock:(id)block;
- (void)enumerateEdgesOfType:(unint64_t)type usingBlock:(id)block;
- (void)enumerateEdgesOfType:(unint64_t)type withNode:(id)node usingBlock:(id)block;
- (void)enumerateNeighborEdgesAndNodesMatchingFilter:(id)filter usingBlock:(id)block;
- (void)enumerateNeighborEdgesAndNodesThroughEdgesOfType:(unint64_t)type matchingFilter:(id)filter usingBlock:(id)block;
- (void)enumerateNeighborNodesMatchingFilter:(id)filter usingBlock:(id)block;
- (void)enumerateNeighborNodesThroughEdgesOfType:(unint64_t)type matchingFilter:(id)filter usingBlock:(id)block;
@end

@implementation MANodeLegacyImplementation

- (void)enumerateNeighborNodesThroughEdgesOfType:(unint64_t)type matchingFilter:(id)filter usingBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__MANodeLegacyImplementation_enumerateNeighborNodesThroughEdgesOfType_matchingFilter_usingBlock___block_invoke;
  v10[3] = &unk_2797FEBF8;
  v10[4] = self;
  v11 = blockCopy;
  v9 = blockCopy;
  [(MANodeLegacyImplementation *)self enumerateEdgesOfType:type matchingFilter:filter usingBlock:v10];
}

void __97__MANodeLegacyImplementation_enumerateNeighborNodesThroughEdgesOfType_matchingFilter_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v5 = [a2 oppositeNode:*(*(a1 + 32) + 16)];
  (*(v4 + 16))(v4, v5, a3);
}

- (void)enumerateNeighborEdgesAndNodesThroughEdgesOfType:(unint64_t)type matchingFilter:(id)filter usingBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __105__MANodeLegacyImplementation_enumerateNeighborEdgesAndNodesThroughEdgesOfType_matchingFilter_usingBlock___block_invoke;
  v10[3] = &unk_2797FEBF8;
  v10[4] = self;
  v11 = blockCopy;
  v9 = blockCopy;
  [(MANodeLegacyImplementation *)self enumerateEdgesOfType:type matchingFilter:filter usingBlock:v10];
}

void __105__MANodeLegacyImplementation_enumerateNeighborEdgesAndNodesThroughEdgesOfType_matchingFilter_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  v5 = [v4 oppositeNode:v3];
  (*(*(a1 + 40) + 16))();
}

- (void)enumerateNeighborNodesMatchingFilter:(id)filter usingBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__MANodeLegacyImplementation_enumerateNeighborNodesMatchingFilter_usingBlock___block_invoke;
  v8[3] = &unk_2797FDB28;
  v9 = blockCopy;
  v7 = blockCopy;
  [(MANodeLegacyImplementation *)self enumerateNeighborEdgesAndNodesMatchingFilter:filter usingBlock:v8];
}

- (void)enumerateNeighborEdgesAndNodesMatchingFilter:(id)filter usingBlock:(id)block
{
  filterCopy = filter;
  blockCopy = block;
  v8 = +[(MAElementFilter *)MANodeFilter];
  v9 = [filterCopy isEqual:v8];

  if (v9)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __86__MANodeLegacyImplementation_enumerateNeighborEdgesAndNodesMatchingFilter_usingBlock___block_invoke;
    v16[3] = &unk_2797FEBF8;
    v10 = &v17;
    v16[4] = self;
    v17 = blockCopy;
    v11 = blockCopy;
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
    v14 = filterCopy;
    v15 = blockCopy;
    v12 = blockCopy;
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

- (void)enumerateEdgesOfType:(unint64_t)type withNode:(id)node usingBlock:(id)block
{
  nodeCopy = node;
  blockCopy = block;
  v10 = +[(MAElementFilter *)MAEdgeFilter];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__MANodeLegacyImplementation_enumerateEdgesOfType_withNode_usingBlock___block_invoke;
  v13[3] = &unk_2797FDAD8;
  v14 = nodeCopy;
  v15 = blockCopy;
  v11 = blockCopy;
  v12 = nodeCopy;
  [(MANodeLegacyImplementation *)self enumerateNeighborEdgesAndNodesThroughEdgesOfType:type matchingFilter:v10 usingBlock:v13];
}

void __71__MANodeLegacyImplementation_enumerateEdgesOfType_withNode_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) isSameNodeAsNode:a3])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (BOOL)hasEdgeOfType:(unint64_t)type withNode:(id)node
{
  nodeCopy = node;
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
  v7 = nodeCopy;
  v10 = v7;
  [(MANodeLegacyImplementation *)self enumerateEdgesOfType:type usingBlock:v9];
  LOBYTE(type) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return type;
}

void __53__MANodeLegacyImplementation_hasEdgeOfType_withNode___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v5 = [a2 oppositeNode:*(a1[4] + 16)];
  *(*(a1[6] + 8) + 24) = v5 == a1[5];

  *a3 = *(*(a1[6] + 8) + 24);
}

- (void)enumerateEdgesOfType:(unint64_t)type matchingFilter:(id)filter usingBlock:(id)block
{
  filterCopy = filter;
  blockCopy = block;
  v10 = +[(MAElementFilter *)MAEdgeFilter];
  v11 = [filterCopy isEqual:v10];

  if (v11)
  {
    [(MANodeLegacyImplementation *)self enumerateEdgesOfType:type usingBlock:blockCopy];
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __77__MANodeLegacyImplementation_enumerateEdgesOfType_matchingFilter_usingBlock___block_invoke;
    v12[3] = &unk_2797FEBF8;
    v13 = filterCopy;
    v14 = blockCopy;
    [(MANodeLegacyImplementation *)self enumerateEdgesOfType:type usingBlock:v12];
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

- (void)enumerateEdgesOfType:(unint64_t)type usingBlock:(id)block
{
  blockCopy = block;
  v7 = blockCopy;
  switch(type)
  {
    case 3uLL:
      edges = self->_edges;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __62__MANodeLegacyImplementation_enumerateEdgesOfType_usingBlock___block_invoke_3;
      v12[3] = &unk_2797FDAB0;
      v13 = blockCopy;
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
      v15 = blockCopy;
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
      v17 = blockCopy;
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

- (BOOL)hasEdgeOfType:(unint64_t)type matchingFilter:(id)filter
{
  filterCopy = filter;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__MANodeLegacyImplementation_hasEdgeOfType_matchingFilter___block_invoke;
  v8[3] = &unk_2797FFB10;
  v8[4] = &v9;
  [(MANodeLegacyImplementation *)self enumerateEdgesOfType:type matchingFilter:filterCopy usingBlock:v8];
  LOBYTE(type) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return type;
}

uint64_t __59__MANodeLegacyImplementation_hasEdgeOfType_matchingFilter___block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

- (unint64_t)countOfEdgesOfType:(unint64_t)type matchingFilter:(id)filter
{
  filterCopy = filter;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__MANodeLegacyImplementation_countOfEdgesOfType_matchingFilter___block_invoke;
  v9[3] = &unk_2797FFB10;
  v9[4] = &v10;
  [(MANodeLegacyImplementation *)self enumerateEdgesOfType:type matchingFilter:filterCopy usingBlock:v9];
  v7 = v11[3];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (MANodeLegacyImplementation)initWithNode:(id)node
{
  nodeCopy = node;
  v10.receiver = self;
  v10.super_class = MANodeLegacyImplementation;
  v5 = [(MANodeLegacyImplementation *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_node = nodeCopy;
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    edges = v6->_edges;
    v6->_edges = v7;
  }

  return v6;
}

@end
@interface MANodeKGImplementation
- (BOOL)hasEdgeOfType:(unint64_t)type matchingFilter:(id)filter;
- (BOOL)hasEdgeOfType:(unint64_t)type withNode:(id)node;
- (MANodeKGImplementation)initWithNode:(id)node;
- (id)edgeIdentifiersOfType:(unint64_t)type matchingFilter:(id)filter;
- (unint64_t)countOfEdgesOfType:(unint64_t)type matchingFilter:(id)filter;
- (void)enumerateEdgesOfType:(unint64_t)type matchingFilter:(id)filter usingBlock:(id)block;
- (void)enumerateEdgesOfType:(unint64_t)type withNode:(id)node usingBlock:(id)block;
- (void)enumerateNeighborEdgesAndNodesMatchingFilter:(id)filter usingBlock:(id)block;
- (void)enumerateNeighborEdgesAndNodesThroughEdgesOfType:(unint64_t)type matchingFilter:(id)filter usingBlock:(id)block;
- (void)enumerateNeighborNodesMatchingFilter:(id)filter usingBlock:(id)block;
- (void)enumerateNeighborNodesThroughEdgesOfType:(unint64_t)type matchingFilter:(id)filter usingBlock:(id)block;
- (void)enumerateNodesRelatedWithRelation:(id)relation usingBlock:(id)block;
@end

@implementation MANodeKGImplementation

- (void)enumerateNeighborNodesMatchingFilter:(id)filter usingBlock:(id)block
{
  v15[2] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  filterCopy = filter;
  v8 = +[(MAElementFilter *)MAEdgeFilter];
  anyDirectionRelation = [v8 anyDirectionRelation];
  excludeSource = [anyDirectionRelation excludeSource];
  v15[0] = excludeSource;
  relation = [filterCopy relation];

  v15[1] = relation;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v13 = [MARelation chain:v12];

  [(MANodeKGImplementation *)self enumerateNodesRelatedWithRelation:v13 usingBlock:blockCopy];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)enumerateNodesRelatedWithRelation:(id)relation usingBlock:(id)block
{
  relationCopy = relation;
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  v8 = self->_node;
  v9 = [[MANodeCollection alloc] initWithNode:v8];

  v10 = [MANodeCollection nodesRelatedToNodes:v9 withRelation:relationCopy];
  [v10 enumerateNodesUsingBlock:blockCopy];

  objc_autoreleasePoolPop(v7);
}

- (void)enumerateNeighborEdgesAndNodesMatchingFilter:(id)filter usingBlock:(id)block
{
  blockCopy = block;
  v6 = +[(MAElementFilter *)MAEdgeFilter];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__MANodeKGImplementation_enumerateNeighborEdgesAndNodesMatchingFilter_usingBlock___block_invoke;
  v8[3] = &unk_2797FEBF8;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  [(MANodeKGImplementation *)self enumerateEdgesOfType:3 matchingFilter:v6 usingBlock:v8];
}

void __82__MANodeKGImplementation_enumerateNeighborEdgesAndNodesMatchingFilter_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 oppositeNode:*(*(a1 + 32) + 8)];
  if (([*(*(a1 + 32) + 8) isSameNodeAsNode:v3] & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (id)edgeIdentifiersOfType:(unint64_t)type matchingFilter:(id)filter
{
  node = self->_node;
  filterCopy = filter;
  graphReference = [(MANode *)node graphReference];
  concreteGraph = [graphReference concreteGraph];

  v10 = [[KGElementIdentifierSet alloc] initWithElementIdentifier:[(MANode *)self->_node identifier]];
  v11 = [concreteGraph edgeIdentifiersOfType:type onNodesForIdentifiers:v10 matchingFilter:filterCopy];

  return v11;
}

- (void)enumerateEdgesOfType:(unint64_t)type matchingFilter:(id)filter usingBlock:(id)block
{
  filterCopy = filter;
  blockCopy = block;
  v9 = objc_autoreleasePoolPush();
  graphReference = [(MANode *)self->_node graphReference];
  concreteGraph = [graphReference concreteGraph];

  v12 = [(MANodeKGImplementation *)self edgeIdentifiersOfType:type matchingFilter:filterCopy];
  [concreteGraph enumerateEdgesWithIdentifiers:v12 usingBlock:blockCopy];

  objc_autoreleasePoolPop(v9);
}

- (void)enumerateNeighborNodesThroughEdgesOfType:(unint64_t)type matchingFilter:(id)filter usingBlock:(id)block
{
  blockCopy = block;
  v9 = [filter relationWithType:type];
  [(MANodeKGImplementation *)self enumerateNodesRelatedWithRelation:v9 usingBlock:blockCopy];
}

- (void)enumerateNeighborEdgesAndNodesThroughEdgesOfType:(unint64_t)type matchingFilter:(id)filter usingBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __101__MANodeKGImplementation_enumerateNeighborEdgesAndNodesThroughEdgesOfType_matchingFilter_usingBlock___block_invoke;
  v10[3] = &unk_2797FEBF8;
  v10[4] = self;
  v11 = blockCopy;
  v9 = blockCopy;
  [(MANodeKGImplementation *)self enumerateEdgesOfType:type matchingFilter:filter usingBlock:v10];
}

void __101__MANodeKGImplementation_enumerateNeighborEdgesAndNodesThroughEdgesOfType_matchingFilter_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  v5 = [v4 oppositeNode:v3];
  (*(*(a1 + 40) + 16))();
}

- (BOOL)hasEdgeOfType:(unint64_t)type withNode:(id)node
{
  nodeCopy = node;
  v7 = objc_autoreleasePoolPush();
  graphReference = [(MANode *)self->_node graphReference];
  concreteGraph = [graphReference concreteGraph];

  v10 = [concreteGraph edgeIdentifiersOfType:type sourceNodeIdentifier:-[MANode identifier](self->_node targetNodeIdentifier:{"identifier"), objc_msgSend(nodeCopy, "identifier")}];
  LOBYTE(self) = [v10 isEmpty];

  objc_autoreleasePoolPop(v7);
  return self ^ 1;
}

- (void)enumerateEdgesOfType:(unint64_t)type withNode:(id)node usingBlock:(id)block
{
  nodeCopy = node;
  blockCopy = block;
  v9 = objc_autoreleasePoolPush();
  graphReference = [(MANode *)self->_node graphReference];
  concreteGraph = [graphReference concreteGraph];

  v12 = [concreteGraph edgeIdentifiersOfType:type sourceNodeIdentifier:-[MANode identifier](self->_node targetNodeIdentifier:{"identifier"), objc_msgSend(nodeCopy, "identifier")}];
  [concreteGraph enumerateEdgesWithIdentifiers:v12 usingBlock:blockCopy];

  objc_autoreleasePoolPop(v9);
}

- (BOOL)hasEdgeOfType:(unint64_t)type matchingFilter:(id)filter
{
  filterCopy = filter;
  v7 = objc_autoreleasePoolPush();
  v8 = [(MANodeKGImplementation *)self edgeIdentifiersOfType:type matchingFilter:filterCopy];
  LOBYTE(self) = [v8 isEmpty];

  objc_autoreleasePoolPop(v7);
  return self ^ 1;
}

- (unint64_t)countOfEdgesOfType:(unint64_t)type matchingFilter:(id)filter
{
  v4 = [(MANodeKGImplementation *)self edgeIdentifiersOfType:type matchingFilter:filter];
  v5 = [v4 count];

  return v5;
}

- (MANodeKGImplementation)initWithNode:(id)node
{
  v5.receiver = self;
  v5.super_class = MANodeKGImplementation;
  result = [(MANodeKGImplementation *)&v5 init];
  if (result)
  {
    result->_node = node;
  }

  return result;
}

@end
@interface KGNodeFilterRelation
- (KGNodeFilterRelation)initWithNodeFilter:(id)filter;
- (id)adjacencyByJoiningWithAdjacency:(id)adjacency inGraph:(id)graph;
- (id)adjacencyWithStartNodeIdentifiers:(id)identifiers inGraph:(id)graph;
@end

@implementation KGNodeFilterRelation

- (id)adjacencyByJoiningWithAdjacency:(id)adjacency inGraph:(id)graph
{
  nodeFilter = self->_nodeFilter;
  adjacencyCopy = adjacency;
  v7 = [graph nodeIdentifiersMatchingFilter:nodeFilter];
  v8 = [adjacencyCopy intersectingTargetsWith:v7];

  return v8;
}

- (id)adjacencyWithStartNodeIdentifiers:(id)identifiers inGraph:(id)graph
{
  v4 = [graph nodeIdentifiersMatchingFilter:self->_nodeFilter];
  v5 = [KGDirectedBinaryAdjacency identityWith:v4];

  return v5;
}

- (KGNodeFilterRelation)initWithNodeFilter:(id)filter
{
  filterCopy = filter;
  v9.receiver = self;
  v9.super_class = KGNodeFilterRelation;
  v6 = [(KGNodeFilterRelation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nodeFilter, filter);
  }

  return v7;
}

@end
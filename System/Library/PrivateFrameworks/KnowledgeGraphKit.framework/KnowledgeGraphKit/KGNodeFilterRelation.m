@interface KGNodeFilterRelation
- (KGNodeFilterRelation)initWithNodeFilter:(id)a3;
- (id)adjacencyByJoiningWithAdjacency:(id)a3 inGraph:(id)a4;
- (id)adjacencyWithStartNodeIdentifiers:(id)a3 inGraph:(id)a4;
@end

@implementation KGNodeFilterRelation

- (id)adjacencyByJoiningWithAdjacency:(id)a3 inGraph:(id)a4
{
  nodeFilter = self->_nodeFilter;
  v6 = a3;
  v7 = [a4 nodeIdentifiersMatchingFilter:nodeFilter];
  v8 = [v6 intersectingTargetsWith:v7];

  return v8;
}

- (id)adjacencyWithStartNodeIdentifiers:(id)a3 inGraph:(id)a4
{
  v4 = [a4 nodeIdentifiersMatchingFilter:self->_nodeFilter];
  v5 = [KGDirectedBinaryAdjacency identityWith:v4];

  return v5;
}

- (KGNodeFilterRelation)initWithNodeFilter:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = KGNodeFilterRelation;
  v6 = [(KGNodeFilterRelation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nodeFilter, a3);
  }

  return v7;
}

@end
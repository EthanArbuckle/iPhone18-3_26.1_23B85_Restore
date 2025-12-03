@interface MANodeFilterRelation
+ (id)scanRelationWithScanner:(id)scanner;
- (BOOL)isEqual:(id)equal;
- (MANodeFilterRelation)initWithNodeFilter:(id)filter;
- (id)adjacencyByJoiningWithAdjacency:(id)adjacency graph:(id)graph;
- (id)adjacencyWithStartNodeIdentifiers:(id)identifiers graph:(id)graph;
- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)identifiers toTargetNodeIdentifiers:(id)nodeIdentifiers graph:(id)graph;
@end

@implementation MANodeFilterRelation

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v7 = v6;
      nodeFilter = self->_nodeFilter;
      v9 = nodeFilter;
      if (!nodeFilter)
      {
        nodeFilter = [(MANodeFilterRelation *)v6 nodeFilter];
        if (!nodeFilter)
        {
          v11 = 1;
          goto LABEL_11;
        }

        v9 = self->_nodeFilter;
      }

      nodeFilter2 = [(MANodeFilterRelation *)v7 nodeFilter];
      v11 = [(MAElementFilter *)v9 isEqual:nodeFilter2];

      if (nodeFilter)
      {
LABEL_12:

        goto LABEL_13;
      }

LABEL_11:

      goto LABEL_12;
    }

    v11 = 0;
  }

LABEL_13:

  return v11;
}

- (id)adjacencyByJoiningWithAdjacency:(id)adjacency graph:(id)graph
{
  adjacencyCopy = adjacency;
  graphReference = [graph graphReference];
  concreteGraph = [graphReference concreteGraph];
  nodeFilter = self->_nodeFilter;
  targets = [adjacencyCopy targets];
  v11 = [concreteGraph nodeIdentifiersMatchingFilter:nodeFilter intersectingIdentifiers:targets];

  v12 = [adjacencyCopy intersectingTargetsWith:v11];

  return v12;
}

- (id)adjacencyWithStartNodeIdentifiers:(id)identifiers graph:(id)graph
{
  identifiersCopy = identifiers;
  graphReference = [graph graphReference];
  concreteGraph = [graphReference concreteGraph];
  v9 = [concreteGraph nodeIdentifiersMatchingFilter:self->_nodeFilter intersectingIdentifiers:identifiersCopy];

  v10 = [KGDirectedBinaryAdjacency identityWith:v9];

  return v10;
}

- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)identifiers toTargetNodeIdentifiers:(id)nodeIdentifiers graph:(id)graph
{
  nodeIdentifiersCopy = nodeIdentifiers;
  identifiersCopy = identifiers;
  graphReference = [graph graphReference];
  concreteGraph = [graphReference concreteGraph];
  v11 = [concreteGraph nodeIdentifiersMatchingFilter:self->_nodeFilter intersectingIdentifiers:identifiersCopy];

  [nodeIdentifiersCopy unionWithIdentifierSet:v11];
}

- (MANodeFilterRelation)initWithNodeFilter:(id)filter
{
  filterCopy = filter;
  v9.receiver = self;
  v9.super_class = MANodeFilterRelation;
  initForSubclassing = [(MARelation *)&v9 initForSubclassing];
  v7 = initForSubclassing;
  if (initForSubclassing)
  {
    objc_storeStrong(initForSubclassing + 1, filter);
  }

  return v7;
}

+ (id)scanRelationWithScanner:(id)scanner
{
  scannerCopy = scanner;
  scanLocation = [scannerCopy scanLocation];
  v5 = [(MAElementFilter *)MANodeFilter scanFilterWithScanner:scannerCopy];
  if (v5)
  {
    v6 = [[MANodeFilterRelation alloc] initWithNodeFilter:v5];
  }

  else
  {
    [scannerCopy setScanLocation:scanLocation];
    v6 = 0;
  }

  return v6;
}

@end
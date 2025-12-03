@interface MANeighborRelation
+ (id)scanRelationWithScanner:(id)scanner;
- (BOOL)isEqual:(id)equal;
- (MANeighborRelation)initWithEdgeType:(unint64_t)type edgeFilter:(id)filter;
- (id)adjacencyByJoiningWithAdjacency:(id)adjacency graph:(id)graph;
- (id)adjacencyWithEndNodeIdentifiers:(id)identifiers graph:(id)graph;
- (id)adjacencyWithStartNodeIdentifiers:(id)identifiers graph:(id)graph;
- (id)inverse;
- (id)transitiveClosure;
- (id)visualString;
- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)identifiers toTargetNodeIdentifiers:(id)nodeIdentifiers graph:(id)graph;
@end

@implementation MANeighborRelation

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = equalCopy;
      edgeType = self->_edgeType;
      if (edgeType == [(MANeighborRelation *)v5 edgeType])
      {
        edgeFilter = self->_edgeFilter;
        v8 = edgeFilter;
        if (!edgeFilter)
        {
          edgeType = [(MANeighborRelation *)v5 edgeFilter];
          if (!edgeType)
          {
            v10 = 1;
LABEL_14:

            goto LABEL_15;
          }

          v8 = self->_edgeFilter;
        }

        edgeFilter = [(MANeighborRelation *)v5 edgeFilter];
        v10 = [(MAElementFilter *)v8 isEqual:edgeFilter];

        if (!edgeFilter)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v10 = 0;
      }

LABEL_15:

      goto LABEL_16;
    }

    v10 = 0;
  }

LABEL_16:

  return v10;
}

+ (id)scanRelationWithScanner:(id)scanner
{
  scannerCopy = scanner;
  scanLocation = [scannerCopy scanLocation];
  v5 = [scannerCopy scanString:@"<" intoString:0];
  if ([scannerCopy scanString:@"-" intoString:0])
  {
    v6 = [(MAElementFilter *)MAEdgeFilter scanFilterWithScanner:scannerCopy];
    if (v6 && ([scannerCopy scanString:@"-" intoString:0] & 1) != 0 && (v7 = objc_msgSend(scannerCopy, "scanString:intoString:", @">", 0), (v5 & v7) != 1))
    {
      v10 = 2;
      if ((v7 & 1) == 0)
      {
        v10 = 3;
      }

      if (v5)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      v8 = [[MANeighborRelation alloc] initWithEdgeType:v11 edgeFilter:v6];
    }

    else
    {
      [scannerCopy setScanLocation:scanLocation];
      v8 = 0;
    }
  }

  else
  {
    [scannerCopy setScanLocation:scanLocation];
    v8 = 0;
  }

  return v8;
}

- (id)visualString
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = string;
  if (self->_edgeType == 1)
  {
    [string appendString:@"<"];
  }

  [v4 appendString:@"-"];
  [(MAEdgeFilter *)self->_edgeFilter appendVisualStringToString:v4];
  [v4 appendString:@"-"];
  if (self->_edgeType == 2)
  {
    [v4 appendString:@">"];
  }

  return v4;
}

- (id)adjacencyByJoiningWithAdjacency:(id)adjacency graph:(id)graph
{
  graphCopy = graph;
  adjacencyCopy = adjacency;
  inverse = [(MANeighborRelation *)self inverse];
  targets = [adjacencyCopy targets];
  v10 = [inverse adjacencyWithEndNodeIdentifiers:targets graph:graphCopy];

  v11 = [adjacencyCopy joinOnTargetsOfAdjacency:v10];

  return v11;
}

- (id)adjacencyWithEndNodeIdentifiers:(id)identifiers graph:(id)graph
{
  identifiersCopy = identifiers;
  graphReference = [graph graphReference];
  concreteGraph = [graphReference concreteGraph];
  v9 = [concreteGraph adjacencyWithEndNodeIdentifiers:identifiersCopy edgeFilter:self->_edgeFilter edgeType:self->_edgeType];

  return v9;
}

- (id)adjacencyWithStartNodeIdentifiers:(id)identifiers graph:(id)graph
{
  identifiersCopy = identifiers;
  graphReference = [graph graphReference];
  concreteGraph = [graphReference concreteGraph];
  v9 = [concreteGraph adjacencyWithStartNodeIdentifiers:identifiersCopy edgeFilter:self->_edgeFilter edgeType:self->_edgeType];

  return v9;
}

- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)identifiers toTargetNodeIdentifiers:(id)nodeIdentifiers graph:(id)graph
{
  nodeIdentifiersCopy = nodeIdentifiers;
  identifiersCopy = identifiers;
  graphReference = [graph graphReference];
  concreteGraph = [graphReference concreteGraph];
  v11 = [concreteGraph neighborNodeIdentifiersWithStartNodeIdentifiers:identifiersCopy edgeType:self->_edgeType edgeFilter:self->_edgeFilter];

  [nodeIdentifiersCopy unionWithIdentifierSet:v11];
}

- (id)transitiveClosure
{
  v3 = [MATransitiveClosureRelation alloc];
  v4 = [[MATransitiveNeighborRelation alloc] initWithNeighborRelation:self];
  v5 = [(MATransitiveClosureRelation *)v3 initWithBase:v4];

  return v5;
}

- (id)inverse
{
  v2 = self->_edgeType - 1;
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_255972F78[v2];
  }

  v4 = [[MANeighborRelation alloc] initWithEdgeType:v3 edgeFilter:self->_edgeFilter];

  return v4;
}

- (MANeighborRelation)initWithEdgeType:(unint64_t)type edgeFilter:(id)filter
{
  filterCopy = filter;
  v11.receiver = self;
  v11.super_class = MANeighborRelation;
  initForSubclassing = [(MARelation *)&v11 initForSubclassing];
  v9 = initForSubclassing;
  if (initForSubclassing)
  {
    initForSubclassing->_edgeType = type;
    objc_storeStrong(&initForSubclassing->_edgeFilter, filter);
  }

  return v9;
}

@end
@interface MANeighborRelation
+ (id)scanRelationWithScanner:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MANeighborRelation)initWithEdgeType:(unint64_t)a3 edgeFilter:(id)a4;
- (id)adjacencyByJoiningWithAdjacency:(id)a3 graph:(id)a4;
- (id)adjacencyWithEndNodeIdentifiers:(id)a3 graph:(id)a4;
- (id)adjacencyWithStartNodeIdentifiers:(id)a3 graph:(id)a4;
- (id)inverse;
- (id)transitiveClosure;
- (id)visualString;
- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)a3 toTargetNodeIdentifiers:(id)a4 graph:(id)a5;
@end

@implementation MANeighborRelation

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = v4;
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

        v9 = [(MANeighborRelation *)v5 edgeFilter];
        v10 = [(MAElementFilter *)v8 isEqual:v9];

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

+ (id)scanRelationWithScanner:(id)a3
{
  v3 = a3;
  v4 = [v3 scanLocation];
  v5 = [v3 scanString:@"<" intoString:0];
  if ([v3 scanString:@"-" intoString:0])
  {
    v6 = [(MAElementFilter *)MAEdgeFilter scanFilterWithScanner:v3];
    if (v6 && ([v3 scanString:@"-" intoString:0] & 1) != 0 && (v7 = objc_msgSend(v3, "scanString:intoString:", @">", 0), (v5 & v7) != 1))
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
      [v3 setScanLocation:v4];
      v8 = 0;
    }
  }

  else
  {
    [v3 setScanLocation:v4];
    v8 = 0;
  }

  return v8;
}

- (id)visualString
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = v3;
  if (self->_edgeType == 1)
  {
    [v3 appendString:@"<"];
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

- (id)adjacencyByJoiningWithAdjacency:(id)a3 graph:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MANeighborRelation *)self inverse];
  v9 = [v7 targets];
  v10 = [v8 adjacencyWithEndNodeIdentifiers:v9 graph:v6];

  v11 = [v7 joinOnTargetsOfAdjacency:v10];

  return v11;
}

- (id)adjacencyWithEndNodeIdentifiers:(id)a3 graph:(id)a4
{
  v6 = a3;
  v7 = [a4 graphReference];
  v8 = [v7 concreteGraph];
  v9 = [v8 adjacencyWithEndNodeIdentifiers:v6 edgeFilter:self->_edgeFilter edgeType:self->_edgeType];

  return v9;
}

- (id)adjacencyWithStartNodeIdentifiers:(id)a3 graph:(id)a4
{
  v6 = a3;
  v7 = [a4 graphReference];
  v8 = [v7 concreteGraph];
  v9 = [v8 adjacencyWithStartNodeIdentifiers:v6 edgeFilter:self->_edgeFilter edgeType:self->_edgeType];

  return v9;
}

- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)a3 toTargetNodeIdentifiers:(id)a4 graph:(id)a5
{
  v8 = a4;
  v9 = a3;
  v12 = [a5 graphReference];
  v10 = [v12 concreteGraph];
  v11 = [v10 neighborNodeIdentifiersWithStartNodeIdentifiers:v9 edgeType:self->_edgeType edgeFilter:self->_edgeFilter];

  [v8 unionWithIdentifierSet:v11];
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

- (MANeighborRelation)initWithEdgeType:(unint64_t)a3 edgeFilter:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MANeighborRelation;
  v8 = [(MARelation *)&v11 initForSubclassing];
  v9 = v8;
  if (v8)
  {
    v8->_edgeType = a3;
    objc_storeStrong(&v8->_edgeFilter, a4);
  }

  return v9;
}

@end
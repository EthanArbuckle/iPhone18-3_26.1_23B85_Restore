@interface MATransitiveNeighborRelation
- (MATransitiveNeighborRelation)initWithEdgeType:(unint64_t)a3 edgeFilter:(id)a4;
- (MATransitiveNeighborRelation)initWithNeighborRelation:(id)a3;
- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)a3 toTargetNodeIdentifiers:(id)a4 graph:(id)a5;
@end

@implementation MATransitiveNeighborRelation

- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)a3 toTargetNodeIdentifiers:(id)a4 graph:(id)a5
{
  v8 = a4;
  v9 = a3;
  v14 = [a5 graphReference];
  v10 = [v14 concreteGraph];
  v11 = [(MANeighborRelation *)self edgeType];
  v12 = [(MANeighborRelation *)self edgeFilter];
  v13 = [v10 transitiveClosureNeighborNodeIdentifiersWithStartNodeIdentifiers:v9 edgeType:v11 edgeFilter:v12];

  [v8 unionWithIdentifierSet:v13];
}

- (MATransitiveNeighborRelation)initWithNeighborRelation:(id)a3
{
  v4 = a3;
  v5 = [v4 edgeType];
  v6 = [v4 edgeFilter];

  v7 = [(MATransitiveNeighborRelation *)self initWithEdgeType:v5 edgeFilter:v6];
  return v7;
}

- (MATransitiveNeighborRelation)initWithEdgeType:(unint64_t)a3 edgeFilter:(id)a4
{
  v5.receiver = self;
  v5.super_class = MATransitiveNeighborRelation;
  return [(MANeighborRelation *)&v5 initWithEdgeType:a3 edgeFilter:a4];
}

@end
@interface MATransitiveNeighborRelation
- (MATransitiveNeighborRelation)initWithEdgeType:(unint64_t)type edgeFilter:(id)filter;
- (MATransitiveNeighborRelation)initWithNeighborRelation:(id)relation;
- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)identifiers toTargetNodeIdentifiers:(id)nodeIdentifiers graph:(id)graph;
@end

@implementation MATransitiveNeighborRelation

- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)identifiers toTargetNodeIdentifiers:(id)nodeIdentifiers graph:(id)graph
{
  nodeIdentifiersCopy = nodeIdentifiers;
  identifiersCopy = identifiers;
  graphReference = [graph graphReference];
  concreteGraph = [graphReference concreteGraph];
  edgeType = [(MANeighborRelation *)self edgeType];
  edgeFilter = [(MANeighborRelation *)self edgeFilter];
  v13 = [concreteGraph transitiveClosureNeighborNodeIdentifiersWithStartNodeIdentifiers:identifiersCopy edgeType:edgeType edgeFilter:edgeFilter];

  [nodeIdentifiersCopy unionWithIdentifierSet:v13];
}

- (MATransitiveNeighborRelation)initWithNeighborRelation:(id)relation
{
  relationCopy = relation;
  edgeType = [relationCopy edgeType];
  edgeFilter = [relationCopy edgeFilter];

  v7 = [(MATransitiveNeighborRelation *)self initWithEdgeType:edgeType edgeFilter:edgeFilter];
  return v7;
}

- (MATransitiveNeighborRelation)initWithEdgeType:(unint64_t)type edgeFilter:(id)filter
{
  v5.receiver = self;
  v5.super_class = MATransitiveNeighborRelation;
  return [(MANeighborRelation *)&v5 initWithEdgeType:type edgeFilter:filter];
}

@end
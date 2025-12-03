@interface KGNeighborRelation
- (KGNeighborRelation)initWithEdgeFilter:(id)filter edgeDirection:(unint64_t)direction;
- (id)adjacencyByJoiningWithAdjacency:(id)adjacency inGraph:(id)graph;
- (id)inverse;
@end

@implementation KGNeighborRelation

- (id)adjacencyByJoiningWithAdjacency:(id)adjacency inGraph:(id)graph
{
  graphCopy = graph;
  adjacencyCopy = adjacency;
  targets = [adjacencyCopy targets];
  v9 = self->_edgeDirection - 1;
  if (v9 > 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = qword_255972F78[v9];
  }

  v11 = [graphCopy adjacencyWithTargetNodeIdentifiers:targets edgeFilter:self->_edgeFilter edgeDirection:v10];

  v12 = [adjacencyCopy joinOnTargetsOfAdjacency:v11];

  return v12;
}

- (id)inverse
{
  v3 = [KGNeighborRelation alloc];
  v4 = self->_edgeDirection - 1;
  if (v4 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_255972F78[v4];
  }

  v6 = [(KGNeighborRelation *)v3 initWithEdgeFilter:self->_edgeFilter edgeDirection:v5];

  return v6;
}

- (KGNeighborRelation)initWithEdgeFilter:(id)filter edgeDirection:(unint64_t)direction
{
  filterCopy = filter;
  v11.receiver = self;
  v11.super_class = KGNeighborRelation;
  v8 = [(KGNeighborRelation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_edgeFilter, filter);
    v9->_edgeDirection = direction;
  }

  return v9;
}

@end
@interface KGNeighborRelation
- (KGNeighborRelation)initWithEdgeFilter:(id)a3 edgeDirection:(unint64_t)a4;
- (id)adjacencyByJoiningWithAdjacency:(id)a3 inGraph:(id)a4;
- (id)inverse;
@end

@implementation KGNeighborRelation

- (id)adjacencyByJoiningWithAdjacency:(id)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 targets];
  v9 = self->_edgeDirection - 1;
  if (v9 > 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = qword_255972F78[v9];
  }

  v11 = [v6 adjacencyWithTargetNodeIdentifiers:v8 edgeFilter:self->_edgeFilter edgeDirection:v10];

  v12 = [v7 joinOnTargetsOfAdjacency:v11];

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

- (KGNeighborRelation)initWithEdgeFilter:(id)a3 edgeDirection:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = KGNeighborRelation;
  v8 = [(KGNeighborRelation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_edgeFilter, a3);
    v9->_edgeDirection = a4;
  }

  return v9;
}

@end
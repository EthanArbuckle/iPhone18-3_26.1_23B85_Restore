@interface KGGraphChangeRequest
- (KGGraphChangeRequest)init;
- (unint64_t)count;
- (void)removeEdge:(id)a3;
- (void)removeNode:(id)a3;
- (void)setResolved;
- (void)updateEdge:(id)a3 newProperties:(id)a4;
- (void)updateNode:(id)a3 newProperties:(id)a4;
@end

@implementation KGGraphChangeRequest

- (void)removeEdge:(id)a3
{
  edgeIdentifiersToRemove = self->_edgeIdentifiersToRemove;
  v4 = [a3 identifier];

  [(KGMutableElementIdentifierSet *)edgeIdentifiersToRemove addIdentifier:v4];
}

- (void)updateEdge:(id)a3 newProperties:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[KGEdgeChangeRequest alloc] initWithEdge:v7 properties:v6];

  [(NSMutableArray *)self->_edgeUpdates addObject:v8];
}

- (void)removeNode:(id)a3
{
  nodeIdentifiersToRemove = self->_nodeIdentifiersToRemove;
  v4 = [a3 identifier];

  [(KGMutableElementIdentifierSet *)nodeIdentifiersToRemove addIdentifier:v4];
}

- (void)updateNode:(id)a3 newProperties:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[KGNodeChangeRequest alloc] initWithNode:v7 properties:v6];

  [(NSMutableArray *)self->_nodeUpdates addObject:v8];
}

- (void)setResolved
{
  [(NSMutableArray *)self->_nodesToInsert removeAllObjects];
  [(NSMutableArray *)self->_edgesToInsert removeAllObjects];
  [(NSMutableArray *)self->_nodeUpdates removeAllObjects];
  [(NSMutableArray *)self->_edgeUpdates removeAllObjects];
  [(KGMutableElementIdentifierSet *)self->_nodeIdentifiersToRemove removeAllIdentifiers];
  edgeIdentifiersToRemove = self->_edgeIdentifiersToRemove;

  [(KGMutableElementIdentifierSet *)edgeIdentifiersToRemove removeAllIdentifiers];
}

- (unint64_t)count
{
  v3 = [(NSMutableArray *)self->_nodesToInsert count];
  v4 = [(NSMutableArray *)self->_edgesToInsert count]+ v3;
  v5 = [(NSMutableArray *)self->_nodeUpdates count];
  v6 = v4 + v5 + [(NSMutableArray *)self->_edgeUpdates count];
  v7 = [(KGElementIdentifierSet *)self->_nodeIdentifiersToRemove count];
  return v6 + v7 + [(KGElementIdentifierSet *)self->_edgeIdentifiersToRemove count];
}

- (KGGraphChangeRequest)init
{
  v16.receiver = self;
  v16.super_class = KGGraphChangeRequest;
  v2 = [(KGGraphChangeRequest *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    nodesToInsert = v2->_nodesToInsert;
    v2->_nodesToInsert = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    edgesToInsert = v2->_edgesToInsert;
    v2->_edgesToInsert = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    nodeUpdates = v2->_nodeUpdates;
    v2->_nodeUpdates = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    edgeUpdates = v2->_edgeUpdates;
    v2->_edgeUpdates = v9;

    v11 = objc_alloc_init(KGMutableElementIdentifierSet);
    nodeIdentifiersToRemove = v2->_nodeIdentifiersToRemove;
    v2->_nodeIdentifiersToRemove = v11;

    v13 = objc_alloc_init(KGMutableElementIdentifierSet);
    edgeIdentifiersToRemove = v2->_edgeIdentifiersToRemove;
    v2->_edgeIdentifiersToRemove = v13;
  }

  return v2;
}

@end
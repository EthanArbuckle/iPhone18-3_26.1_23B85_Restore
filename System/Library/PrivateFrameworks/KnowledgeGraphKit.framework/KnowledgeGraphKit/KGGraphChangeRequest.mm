@interface KGGraphChangeRequest
- (KGGraphChangeRequest)init;
- (unint64_t)count;
- (void)removeEdge:(id)edge;
- (void)removeNode:(id)node;
- (void)setResolved;
- (void)updateEdge:(id)edge newProperties:(id)properties;
- (void)updateNode:(id)node newProperties:(id)properties;
@end

@implementation KGGraphChangeRequest

- (void)removeEdge:(id)edge
{
  edgeIdentifiersToRemove = self->_edgeIdentifiersToRemove;
  identifier = [edge identifier];

  [(KGMutableElementIdentifierSet *)edgeIdentifiersToRemove addIdentifier:identifier];
}

- (void)updateEdge:(id)edge newProperties:(id)properties
{
  propertiesCopy = properties;
  edgeCopy = edge;
  v8 = [[KGEdgeChangeRequest alloc] initWithEdge:edgeCopy properties:propertiesCopy];

  [(NSMutableArray *)self->_edgeUpdates addObject:v8];
}

- (void)removeNode:(id)node
{
  nodeIdentifiersToRemove = self->_nodeIdentifiersToRemove;
  identifier = [node identifier];

  [(KGMutableElementIdentifierSet *)nodeIdentifiersToRemove addIdentifier:identifier];
}

- (void)updateNode:(id)node newProperties:(id)properties
{
  propertiesCopy = properties;
  nodeCopy = node;
  v8 = [[KGNodeChangeRequest alloc] initWithNode:nodeCopy properties:propertiesCopy];

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
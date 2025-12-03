@interface MAGraphChangeRequest
- (MAGraphChangeRequest)init;
- (unint64_t)numberOfChanges;
- (void)removeEdge:(id)edge;
- (void)removeEdges:(id)edges;
- (void)removeNode:(id)node;
- (void)removeNodes:(id)nodes;
@end

@implementation MAGraphChangeRequest

- (void)removeEdges:(id)edges
{
  edgeIdentifiersToRemove = self->_edgeIdentifiersToRemove;
  elementIdentifiers = [edges elementIdentifiers];
  [(KGMutableElementIdentifierSet *)edgeIdentifiersToRemove unionWithIdentifierSet:elementIdentifiers];
}

- (void)removeEdge:(id)edge
{
  edgeIdentifiersToRemove = self->_edgeIdentifiersToRemove;
  identifier = [edge identifier];

  [(KGMutableElementIdentifierSet *)edgeIdentifiersToRemove addIdentifier:identifier];
}

- (void)removeNodes:(id)nodes
{
  nodeIdentifiersToRemove = self->_nodeIdentifiersToRemove;
  elementIdentifiers = [nodes elementIdentifiers];
  [(KGMutableElementIdentifierSet *)nodeIdentifiersToRemove unionWithIdentifierSet:elementIdentifiers];
}

- (void)removeNode:(id)node
{
  nodeIdentifiersToRemove = self->_nodeIdentifiersToRemove;
  identifier = [node identifier];

  [(KGMutableElementIdentifierSet *)nodeIdentifiersToRemove addIdentifier:identifier];
}

- (unint64_t)numberOfChanges
{
  v3 = [(NSMutableArray *)self->_nodesToInsert count];
  v4 = [(NSMutableArray *)self->_edgesToInsert count]+ v3;
  v5 = [(KGElementIdentifierSet *)self->_nodeIdentifiersToRemove count];
  return v4 + v5 + [(KGElementIdentifierSet *)self->_edgeIdentifiersToRemove count];
}

- (MAGraphChangeRequest)init
{
  v12.receiver = self;
  v12.super_class = MAGraphChangeRequest;
  v2 = [(MAGraphChangeRequest *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    nodesToInsert = v2->_nodesToInsert;
    v2->_nodesToInsert = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    edgesToInsert = v2->_edgesToInsert;
    v2->_edgesToInsert = v5;

    v7 = objc_alloc_init(KGMutableElementIdentifierSet);
    nodeIdentifiersToRemove = v2->_nodeIdentifiersToRemove;
    v2->_nodeIdentifiersToRemove = v7;

    v9 = objc_alloc_init(KGMutableElementIdentifierSet);
    edgeIdentifiersToRemove = v2->_edgeIdentifiersToRemove;
    v2->_edgeIdentifiersToRemove = v9;
  }

  return v2;
}

@end
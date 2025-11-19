@interface MAGraphChangeRequest
- (MAGraphChangeRequest)init;
- (unint64_t)numberOfChanges;
- (void)removeEdge:(id)a3;
- (void)removeEdges:(id)a3;
- (void)removeNode:(id)a3;
- (void)removeNodes:(id)a3;
@end

@implementation MAGraphChangeRequest

- (void)removeEdges:(id)a3
{
  edgeIdentifiersToRemove = self->_edgeIdentifiersToRemove;
  v4 = [a3 elementIdentifiers];
  [(KGMutableElementIdentifierSet *)edgeIdentifiersToRemove unionWithIdentifierSet:v4];
}

- (void)removeEdge:(id)a3
{
  edgeIdentifiersToRemove = self->_edgeIdentifiersToRemove;
  v4 = [a3 identifier];

  [(KGMutableElementIdentifierSet *)edgeIdentifiersToRemove addIdentifier:v4];
}

- (void)removeNodes:(id)a3
{
  nodeIdentifiersToRemove = self->_nodeIdentifiersToRemove;
  v4 = [a3 elementIdentifiers];
  [(KGMutableElementIdentifierSet *)nodeIdentifiersToRemove unionWithIdentifierSet:v4];
}

- (void)removeNode:(id)a3
{
  nodeIdentifiersToRemove = self->_nodeIdentifiersToRemove;
  v4 = [a3 identifier];

  [(KGMutableElementIdentifierSet *)nodeIdentifiersToRemove addIdentifier:v4];
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
@interface KGMemoryGraphStore
- (BOOL)_removeEdgesForMemoryNode:(id)node error:(id *)error;
- (BOOL)_removeMemoryEdge:(id)edge error:(id *)error;
- (BOOL)_removeNode:(unint64_t)node error:(id *)error;
- (BOOL)addEdges:(id)edges error:(id *)error;
- (BOOL)addNodes:(id)nodes error:(id *)error;
- (BOOL)removeEdgeForIdentifier:(unint64_t)identifier error:(id *)error;
- (BOOL)removeEdgesForIdentifiers:(id)identifiers error:(id *)error;
- (BOOL)removeNodeForIdentifier:(unint64_t)identifier error:(id *)error;
- (BOOL)removeNodesForIdentifiers:(id)identifiers error:(id *)error;
- (BOOL)updateEdgeForIdentifier:(unint64_t)identifier withProperties:(id)properties error:(id *)error;
- (BOOL)updateNodeForIdentifier:(unint64_t)identifier withProperties:(id)properties error:(id *)error;
- (KGMemoryGraphStore)init;
- (NSUUID)graphIdentifier;
- (id)_edgeIdentifiersForNodeIdentifier:(unint64_t)identifier;
- (id)_lock_allEdgeIdentifiers;
- (id)_lock_allNodeIdentifiers;
- (id)_lock_arrayOfEdgesWithIdentifiers:(id)identifiers entityFactory:(id)factory error:(id *)error;
- (id)_lock_arrayOfNodesWithIdentifiers:(id)identifiers entityFactory:(id)factory error:(id *)error;
- (id)_lock_edgeIdentifiersMatchingFilter:(id)filter intersectingIdentifiers:(id)identifiers error:(id *)error;
- (id)_lock_edgeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction error:(id *)error;
- (id)_lock_intersectionOfEdgesWithLabels:(id)labels;
- (id)_lock_intersectionOfNodesWithLabels:(id)labels;
- (id)_lock_nodeIdentifiersOfEdgesWithIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction error:(id *)error;
- (id)_lock_snapshotEdgeForIdentifier:(unint64_t)identifier reusableNode:(id)node entityFactory:(id)factory;
- (id)_lock_snapshotNodeForIdentifier:(unint64_t)identifier entityFactory:(id)factory;
- (id)_lock_sourcesByTargetWithEdgeIdentifiers:(id)identifiers error:(id *)error;
- (id)_lock_targetsBySourceWithEdgeIdentifiers:(id)identifiers error:(id *)error;
- (id)_lock_unionOfEdgesWithLabels:(id)labels;
- (id)_lock_unionOfNodesWithLabels:(id)labels;
- (id)arrayOfEdgesWithIdentifiers:(id)identifiers entityFactory:(id)factory error:(id *)error;
- (id)arrayOfNodesWithIdentifiers:(id)identifiers entityFactory:(id)factory error:(id *)error;
- (id)edgeForIdentifier:(unint64_t)identifier entityFactory:(id)factory error:(id *)error;
- (id)edgeIdentifiersBetween:(id)between endNodeIdentifiers:(id)identifiers edgeFilter:(id)filter edgeDirection:(unint64_t)direction error:(id *)error;
- (id)edgeIdentifiersForNodeIdentifier:(unint64_t)identifier error:(id *)error;
- (id)edgeIdentifiersMatchingFilter:(id)filter intersectingIdentifiers:(id)identifiers error:(id *)error;
- (id)edgeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction error:(id *)error;
- (id)edgeIdentifiersWithStartNodeIdentifiers:(id)identifiers intersectingEdgeIdentifiers:(id)edgeIdentifiers edgeDirection:(unint64_t)direction error:(id *)error;
- (id)edgeLabels;
- (id)initForSubclasses;
- (id)insertEdgeWithIdentifier:(unint64_t)identifier labels:(id)labels properties:(id)properties sourceNodeIdentifier:(unint64_t)nodeIdentifier targetNodeIdentifier:(unint64_t)targetNodeIdentifier error:(id *)error;
- (id)insertNodeWithIdentifier:(unint64_t)identifier labels:(id)labels properties:(id)properties error:(id *)error;
- (id)labelsOfEdgesForIdentifiers:(id)identifiers;
- (id)labelsOfNodesForIdentifiers:(id)identifiers;
- (id)neighborNodeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction edgeFilter:(id)filter error:(id *)error;
- (id)nodeForIdentifier:(unint64_t)identifier entityFactory:(id)factory error:(id *)error;
- (id)nodeIdentifiersMatchingFilter:(id)filter intersectingIdentifiers:(id)identifiers error:(id *)error;
- (id)nodeIdentifiersOfEdgesWithIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction error:(id *)error;
- (id)nodeLabels;
- (id)propertiesForEdgesWithIdentifiers:(id)identifiers propertyName:(id)name error:(id *)error;
- (id)propertiesForNodesWithIdentifiers:(id)identifiers propertyName:(id)name error:(id *)error;
- (id)sourcesByTargetWithEdgeIdentifiers:(id)identifiers error:(id *)error;
- (id)targetsBySourceWithEdgeIdentifiers:(id)identifiers error:(id *)error;
- (id)transitiveClosureNeighborNodeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction edgeFilter:(id)filter error:(id *)error;
@end

@implementation KGMemoryGraphStore

- (BOOL)_removeNode:(unint64_t)node error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v8 = [(NSMutableDictionary *)self->_memoryNodeByIdentifier objectForKeyedSubscript:v7];
  if (!v8)
  {
LABEL_18:
    v16 = 0;
    goto LABEL_19;
  }

  [(NSMutableDictionary *)self->_memoryNodeByIdentifier removeObjectForKey:v7];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  labels = [v8 labels];
  v10 = [labels countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(labels);
        }

        v14 = [(NSMutableDictionary *)self->_nodeIdentifiersByLabel objectForKeyedSubscript:*(*(&v20 + 1) + 8 * i)];
        if (!v14)
        {
          v17 = KGLoggingConnection();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_255870000, v17, OS_LOG_TYPE_ERROR, "Node has a label and it's not in _nodeIdentifiersByLabel", buf, 2u);
          }

          goto LABEL_17;
        }

        v15 = v14;
        [v14 removeIdentifier:node];
      }

      v11 = [labels countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  if (![(KGMemoryGraphStore *)self _removeEdgesForMemoryNode:v8 error:error])
  {
    labels = KGLoggingConnection();
    if (os_log_type_enabled(labels, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      nodeCopy = node;
      _os_log_error_impl(&dword_255870000, labels, OS_LOG_TYPE_ERROR, "Cannot delete edges for node: %lu", buf, 0xCu);
    }

LABEL_17:

    goto LABEL_18;
  }

  v16 = 1;
LABEL_19:

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)removeNodeForIdentifier:(unint64_t)identifier error:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  LOBYTE(error) = [(KGMemoryGraphStore *)self _removeNode:identifier error:error];
  os_unfair_lock_unlock(&self->_lock);
  return error;
}

- (BOOL)removeNodesForIdentifiers:(id)identifiers error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  os_unfair_lock_lock(&self->_lock);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  indexArray = [identifiersCopy indexArray];
  v8 = [indexArray countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v22;
    do
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(indexArray);
        }

        unsignedIntegerValue = [*(*(&v21 + 1) + 8 * v12) unsignedIntegerValue];
        v20 = v13;
        v15 = [(KGMemoryGraphStore *)self _removeNode:unsignedIntegerValue error:&v20];
        v10 = v20;

        ++v12;
        v13 = v10;
      }

      while (v9 != v12);
      v9 = [indexArray countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);

    if (error)
    {
      v16 = v15;
    }

    else
    {
      v16 = 1;
    }

    if ((v16 & 1) == 0)
    {
      v17 = v10;
      *error = v10;
    }
  }

  else
  {

    v10 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  v18 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)_removeEdgesForMemoryNode:(id)node error:(id *)error
{
  nodeCopy = node;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v7 = -[KGMemoryGraphStore _edgeIdentifiersForNodeIdentifier:](self, "_edgeIdentifiersForNodeIdentifier:", [nodeCopy identifier]);
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3528;
  v15 = __Block_byref_object_dispose__3529;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__KGMemoryGraphStore__removeEdgesForMemoryNode_error___block_invoke;
  v10[3] = &unk_2797FF000;
  v10[4] = self;
  v10[5] = &v17;
  v10[6] = &v11;
  [v7 enumerateIdentifiersWithBlock:v10];
  if (error)
  {
    *error = v12[5];
  }

  v8 = *(v18 + 24);
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
  return v8;
}

void __54__KGMemoryGraphStore__removeEdgesForMemoryNode_error___block_invoke(void *a1, uint64_t a2, _BYTE *a3)
{
  v4 = a1;
  v5 = *(a1[4] + 72);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = v4[4];
  v13 = 0;
  LOBYTE(v6) = [v8 _removeMemoryEdge:v7 error:&v13];
  v9 = v13;
  *(*(v4[5] + 8) + 24) = v6;
  v10 = *(v4[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
  v12 = v9;

  LOBYTE(v4) = *(*(v4[5] + 8) + 24);
  if ((v4 & 1) == 0)
  {
    *a3 = 1;
  }
}

- (BOOL)_removeMemoryEdge:(id)edge error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  edgeCopy = edge;
  identifier = [edgeCopy identifier];
  memoryEdgeByIdentifier = self->_memoryEdgeByIdentifier;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:identifier];
  [(NSMutableDictionary *)memoryEdgeByIdentifier removeObjectForKey:v8];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  labels = [edgeCopy labels];
  v10 = [labels countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(labels);
        }

        v14 = [(NSMutableDictionary *)self->_edgeIdentifiersByLabel objectForKeyedSubscript:*(*(&v24 + 1) + 8 * i)];
        if (!v14)
        {
          v20 = KGLoggingConnection();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *v23 = 0;
            _os_log_error_impl(&dword_255870000, v20, OS_LOG_TYPE_ERROR, "Edge has a label and it's not in _edgeIdentifiersByLabel", v23, 2u);
          }

          v19 = 0;
          goto LABEL_13;
        }

        v15 = v14;
        [v14 removeIdentifier:identifier];
      }

      v11 = [labels countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  edgeIdentifiersBySourceNodeIdentifier = self->_edgeIdentifiersBySourceNodeIdentifier;
  sourceNode = [edgeCopy sourceNode];
  -[KGMutableDirectedBinaryAdjacency removeSource:target:](edgeIdentifiersBySourceNodeIdentifier, "removeSource:target:", [sourceNode identifier], identifier);

  edgeIdentifiersByTargetNodeIdentifier = self->_edgeIdentifiersByTargetNodeIdentifier;
  labels = [edgeCopy targetNode];
  -[KGMutableDirectedBinaryAdjacency removeSource:target:](edgeIdentifiersByTargetNodeIdentifier, "removeSource:target:", [labels identifier], identifier);
  v19 = 1;
LABEL_13:

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)removeEdgeForIdentifier:(unint64_t)identifier error:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  memoryEdgeByIdentifier = self->_memoryEdgeByIdentifier;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:identifier];
  v9 = [(NSMutableDictionary *)memoryEdgeByIdentifier objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [(KGMemoryGraphStore *)self _removeMemoryEdge:v9 error:error];
  }

  else
  {
    v10 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (BOOL)removeEdgesForIdentifiers:(id)identifiers error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  os_unfair_lock_lock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  indexArray = [identifiersCopy indexArray];
  v8 = [indexArray countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(indexArray);
      }

      v12 = [(NSMutableDictionary *)self->_memoryEdgeByIdentifier objectForKeyedSubscript:*(*(&v16 + 1) + 8 * v11)];
      if (!v12)
      {
        break;
      }

      v13 = [(KGMemoryGraphStore *)self _removeMemoryEdge:v12 error:error];

      if (!v13)
      {
        LOBYTE(v12) = 0;
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [indexArray countByEnumeratingWithState:&v16 objects:v20 count:16];
        LOBYTE(v12) = 1;
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    LOBYTE(v12) = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)updateEdgeForIdentifier:(unint64_t)identifier withProperties:(id)properties error:(id *)error
{
  propertiesCopy = properties;
  os_unfair_lock_lock(&self->_lock);
  memoryEdgeByIdentifier = self->_memoryEdgeByIdentifier;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:identifier];
  v10 = [(NSMutableDictionary *)memoryEdgeByIdentifier objectForKeyedSubscript:v9];

  if (v10)
  {
    [v10 setProperties:propertiesCopy];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v10 != 0;
}

- (BOOL)updateNodeForIdentifier:(unint64_t)identifier withProperties:(id)properties error:(id *)error
{
  propertiesCopy = properties;
  os_unfair_lock_lock(&self->_lock);
  memoryNodeByIdentifier = self->_memoryNodeByIdentifier;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:identifier];
  v10 = [(NSMutableDictionary *)memoryNodeByIdentifier objectForKeyedSubscript:v9];

  if (v10)
  {
    [v10 setProperties:propertiesCopy];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v10 != 0;
}

- (id)sourcesByTargetWithEdgeIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(KGMemoryGraphStore *)self _lock_sourcesByTargetWithEdgeIdentifiers:identifiersCopy error:error];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)targetsBySourceWithEdgeIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(KGMemoryGraphStore *)self _lock_targetsBySourceWithEdgeIdentifiers:identifiersCopy error:error];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)_lock_sourcesByTargetWithEdgeIdentifiers:(id)identifiers error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __69__KGMemoryGraphStore__lock_sourcesByTargetWithEdgeIdentifiers_error___block_invoke;
  v22[3] = &unk_2797FEFD8;
  v22[4] = self;
  v7 = v6;
  v23 = v7;
  [identifiersCopy enumerateIdentifiersWithBlock:v22];
  v8 = objc_alloc_init(KGMutableDirectedBinaryAdjacency);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [v9 objectForKeyedSubscript:{v14, v18}];
        -[KGMutableDirectedBinaryAdjacency setTargets:forSource:](v8, "setTargets:forSource:", v15, [v14 unsignedIntegerValue]);
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

void __69__KGMemoryGraphStore__lock_sourcesByTargetWithEdgeIdentifiers_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 72);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v11 = [v3 objectForKeyedSubscript:v4];

  v5 = [v11 targetNode];
  v6 = [v5 identifier];

  v7 = [v11 sourceNode];
  v8 = [v7 identifier];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  v10 = [*(a1 + 40) objectForKeyedSubscript:v9];
  if (!v10)
  {
    v10 = objc_alloc_init(KGMutableElementIdentifierSet);
    [*(a1 + 40) setObject:v10 forKeyedSubscript:v9];
  }

  [(KGMutableElementIdentifierSet *)v10 addIdentifier:v8];
}

- (id)_lock_targetsBySourceWithEdgeIdentifiers:(id)identifiers error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __69__KGMemoryGraphStore__lock_targetsBySourceWithEdgeIdentifiers_error___block_invoke;
  v22[3] = &unk_2797FEFD8;
  v22[4] = self;
  v7 = v6;
  v23 = v7;
  [identifiersCopy enumerateIdentifiersWithBlock:v22];
  v8 = objc_alloc_init(KGMutableDirectedBinaryAdjacency);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [v9 objectForKeyedSubscript:{v14, v18}];
        -[KGMutableDirectedBinaryAdjacency setTargets:forSource:](v8, "setTargets:forSource:", v15, [v14 unsignedIntegerValue]);
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

void __69__KGMemoryGraphStore__lock_targetsBySourceWithEdgeIdentifiers_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 72);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v11 = [v3 objectForKeyedSubscript:v4];

  v5 = [v11 sourceNode];
  v6 = [v5 identifier];

  v7 = [v11 targetNode];
  v8 = [v7 identifier];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  v10 = [*(a1 + 40) objectForKeyedSubscript:v9];
  if (!v10)
  {
    v10 = objc_alloc_init(KGMutableElementIdentifierSet);
    [*(a1 + 40) setObject:v10 forKeyedSubscript:v9];
  }

  [(KGMutableElementIdentifierSet *)v10 addIdentifier:v8];
}

- (id)labelsOfEdgesForIdentifiers:(id)identifiers
{
  v21 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  indexArray = [identifiersCopy indexArray];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [indexArray countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(indexArray);
        }

        v11 = [(NSMutableDictionary *)self->_memoryEdgeByIdentifier objectForKeyedSubscript:*(*(&v16 + 1) + 8 * i)];
        v12 = v11;
        if (v11)
        {
          labels = [v11 labels];
          [v5 unionSet:labels];
        }
      }

      v8 = [indexArray countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)labelsOfNodesForIdentifiers:(id)identifiers
{
  v21 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  indexArray = [identifiersCopy indexArray];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [indexArray countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(indexArray);
        }

        v11 = [(NSMutableDictionary *)self->_memoryNodeByIdentifier objectForKeyedSubscript:*(*(&v16 + 1) + 8 * i)];
        v12 = v11;
        if (v11)
        {
          labels = [v11 labels];
          [v5 unionSet:labels];
        }
      }

      v8 = [indexArray countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)edgeLabels
{
  os_unfair_lock_lock(&self->_lock);
  v3 = MEMORY[0x277CBEB98];
  allKeys = [(NSMutableDictionary *)self->_edgeIdentifiersByLabel allKeys];
  v5 = [v3 setWithArray:allKeys];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)nodeLabels
{
  os_unfair_lock_lock(&self->_lock);
  v3 = MEMORY[0x277CBEB98];
  allKeys = [(NSMutableDictionary *)self->_nodeIdentifiersByLabel allKeys];
  v5 = [v3 setWithArray:allKeys];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)propertiesForEdgesWithIdentifiers:(id)identifiers propertyName:(id)name error:(id *)error
{
  identifiersCopy = identifiers;
  nameCopy = name;
  os_unfair_lock_lock(&self->_lock);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3528;
  v19 = __Block_byref_object_dispose__3529;
  v20 = objc_alloc_init(KGMutablePropertyValueArray);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__KGMemoryGraphStore_propertiesForEdgesWithIdentifiers_propertyName_error___block_invoke;
  v12[3] = &unk_2797FEFB0;
  v12[4] = self;
  v14 = &v15;
  v9 = nameCopy;
  v13 = v9;
  [identifiersCopy enumerateIdentifiersWithBlock:v12];
  os_unfair_lock_unlock(&self->_lock);
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

void __75__KGMemoryGraphStore_propertiesForEdgesWithIdentifiers_propertyName_error___block_invoke(void *a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(a1[4] + 72);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v13 = [v6 objectForKeyedSubscript:v7];

  v8 = v13;
  if (!v13)
  {
    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;

    v8 = 0;
    *a3 = 1;
  }

  v11 = [v8 properties];
  v12 = [v11 objectForKeyedSubscript:a1[5]];

  if (v12)
  {
    [*(*(a1[6] + 8) + 40) appendValue:v12 forIdentifier:a2];
  }
}

- (id)propertiesForNodesWithIdentifiers:(id)identifiers propertyName:(id)name error:(id *)error
{
  identifiersCopy = identifiers;
  nameCopy = name;
  os_unfair_lock_lock(&self->_lock);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3528;
  v19 = __Block_byref_object_dispose__3529;
  v20 = objc_alloc_init(KGMutablePropertyValueArray);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__KGMemoryGraphStore_propertiesForNodesWithIdentifiers_propertyName_error___block_invoke;
  v12[3] = &unk_2797FEFB0;
  v12[4] = self;
  v14 = &v15;
  v9 = nameCopy;
  v13 = v9;
  [identifiersCopy enumerateIdentifiersWithBlock:v12];
  os_unfair_lock_unlock(&self->_lock);
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

void __75__KGMemoryGraphStore_propertiesForNodesWithIdentifiers_propertyName_error___block_invoke(void *a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(a1[4] + 48);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v13 = [v6 objectForKeyedSubscript:v7];

  v8 = v13;
  if (!v13)
  {
    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;

    v8 = 0;
    *a3 = 1;
  }

  v11 = [v8 properties];
  v12 = [v11 objectForKeyedSubscript:a1[5]];

  if (v12)
  {
    [*(*(a1[6] + 8) + 40) appendValue:v12 forIdentifier:a2];
  }
}

- (id)nodeIdentifiersOfEdgesWithIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction error:(id *)error
{
  identifiersCopy = identifiers;
  os_unfair_lock_lock(&self->_lock);
  v9 = [(KGMemoryGraphStore *)self _lock_nodeIdentifiersOfEdgesWithIdentifiers:identifiersCopy edgeDirection:direction error:error];

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (id)_lock_nodeIdentifiersOfEdgesWithIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction error:(id *)error
{
  identifiersCopy = identifiers;
  v8 = objc_alloc_init(KGMutableElementIdentifierSet);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86__KGMemoryGraphStore__lock_nodeIdentifiersOfEdgesWithIdentifiers_edgeDirection_error___block_invoke;
  v13[3] = &unk_2797FEF88;
  v13[4] = self;
  directionCopy = direction;
  v9 = v8;
  v14 = v9;
  [identifiersCopy enumerateIdentifiersWithBlock:v13];

  v10 = v14;
  v11 = v9;

  return v9;
}

void __86__KGMemoryGraphStore__lock_nodeIdentifiersOfEdgesWithIdentifiers_edgeDirection_error___block_invoke(void *a1, uint64_t a2)
{
  v3 = *(a1[4] + 72);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v10 = [v3 objectForKeyedSubscript:v4];

  v5 = a1[6];
  if (v5)
  {
    v6 = a1[5];
    v7 = [v10 targetNode];
    [v6 addIdentifier:{objc_msgSend(v7, "identifier")}];

    v5 = a1[6];
  }

  if ((v5 & 2) != 0)
  {
    v8 = a1[5];
    v9 = [v10 sourceNode];
    [v8 addIdentifier:{objc_msgSend(v9, "identifier")}];
  }
}

- (id)transitiveClosureNeighborNodeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction edgeFilter:(id)filter error:(id *)error
{
  identifiersCopy = identifiers;
  filterCopy = filter;
  v12 = [identifiersCopy copy];
  v13 = objc_alloc_init(KGMutableElementIdentifierSet);
  v14 = [(KGMemoryGraphStore *)self neighborNodeIdentifiersWithStartNodeIdentifiers:v12 edgeDirection:direction edgeFilter:filterCopy error:error];
  if (v14)
  {
    while (1)
    {
      v15 = v14;
      v16 = [(KGElementIdentifierSet *)v13 mutableCopy];
      [v16 unionWithIdentifierSet:v15];
      if ([v16 isEqual:v13])
      {
        break;
      }

      [(KGMutableElementIdentifierSet *)v13 unionWithIdentifierSet:v15];

      v14 = [(KGMemoryGraphStore *)self neighborNodeIdentifiersWithStartNodeIdentifiers:v15 edgeDirection:direction edgeFilter:filterCopy error:error];
      v12 = v15;
      if (!v14)
      {
        v17 = 0;
        v12 = v15;
        goto LABEL_7;
      }
    }

    v17 = v13;
  }

  else
  {
    v17 = 0;
  }

LABEL_7:

  return v17;
}

- (id)neighborNodeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction edgeFilter:(id)filter error:(id *)error
{
  directionCopy = direction;
  identifiersCopy = identifiers;
  filterCopy = filter;
  os_unfair_lock_lock(&self->_lock);
  if ((directionCopy & 2) != 0)
  {
    v13 = [(KGMemoryGraphStore *)self _lock_edgeIdentifiersWithStartNodeIdentifiers:identifiersCopy edgeDirection:2 error:error];
    v14 = [(KGMemoryGraphStore *)self _lock_edgeIdentifiersMatchingFilter:filterCopy intersectingIdentifiers:v13 error:error];

    v12 = [(KGMemoryGraphStore *)self _lock_nodeIdentifiersOfEdgesWithIdentifiers:v14 edgeDirection:1 error:error];

    if ((directionCopy & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_5:
    v15 = [(KGMemoryGraphStore *)self _lock_edgeIdentifiersWithStartNodeIdentifiers:identifiersCopy edgeDirection:1 error:error];
    v16 = [(KGMemoryGraphStore *)self _lock_edgeIdentifiersMatchingFilter:filterCopy intersectingIdentifiers:v15 error:error];

    v17 = [(KGMemoryGraphStore *)self _lock_nodeIdentifiersOfEdgesWithIdentifiers:v16 edgeDirection:2 error:error];
    v18 = v17;
    if (v12)
    {
      v19 = [v12 identifierSetByFormingUnion:v17];

      v12 = v19;
    }

    else
    {
      v12 = v17;
    }

    goto LABEL_9;
  }

  v12 = 0;
  if (directionCopy)
  {
    goto LABEL_5;
  }

LABEL_9:
  os_unfair_lock_unlock(&self->_lock);

  return v12;
}

- (id)edgeIdentifiersBetween:(id)between endNodeIdentifiers:(id)identifiers edgeFilter:(id)filter edgeDirection:(unint64_t)direction error:(id *)error
{
  identifiersCopy = identifiers;
  filterCopy = filter;
  v14 = [(KGMemoryGraphStore *)self edgeIdentifiersWithStartNodeIdentifiers:between edgeDirection:direction error:error];
  if (v14)
  {
    v15 = v14;
    if (direction - 1 > 2)
    {
      v16 = 0;
    }

    else
    {
      v16 = qword_255972F78[direction - 1];
    }

    v18 = [(KGMemoryGraphStore *)self edgeIdentifiersWithStartNodeIdentifiers:identifiersCopy intersectingEdgeIdentifiers:v14 edgeDirection:v16 error:error];

    v17 = [(KGMemoryGraphStore *)self edgeIdentifiersMatchingFilter:filterCopy intersectingIdentifiers:v18 error:error];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)edgeIdentifiersWithStartNodeIdentifiers:(id)identifiers intersectingEdgeIdentifiers:(id)edgeIdentifiers edgeDirection:(unint64_t)direction error:(id *)error
{
  edgeIdentifiersCopy = edgeIdentifiers;
  v11 = [(KGMemoryGraphStore *)self edgeIdentifiersWithStartNodeIdentifiers:identifiers edgeDirection:direction error:error];
  v12 = [v11 identifierSetByIntersectingIdentifierSet:edgeIdentifiersCopy];

  return v12;
}

- (id)edgeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction error:(id *)error
{
  identifiersCopy = identifiers;
  os_unfair_lock_lock(&self->_lock);
  v9 = [(KGMemoryGraphStore *)self _lock_edgeIdentifiersWithStartNodeIdentifiers:identifiersCopy edgeDirection:direction error:error];

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (id)_lock_edgeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction error:(id *)error
{
  identifiersCopy = identifiers;
  os_unfair_lock_assert_owner(&self->_lock);
  switch(direction)
  {
    case 3uLL:
      v10 = [(KGDirectedBinaryAdjacency *)self->_edgeIdentifiersBySourceNodeIdentifier targetsForSources:identifiersCopy];
      v11 = [(KGDirectedBinaryAdjacency *)self->_edgeIdentifiersByTargetNodeIdentifier targetsForSources:identifiersCopy];
      if ([v10 isEmpty])
      {
        v12 = v11;
      }

      else if ([v11 isEmpty])
      {
        v12 = v10;
      }

      else
      {
        v12 = [v11 identifierSetByFormingUnion:v10];
      }

      v9 = v12;

      goto LABEL_14;
    case 2uLL:
      edgeIdentifiersBySourceNodeIdentifier = self->_edgeIdentifiersBySourceNodeIdentifier;
      goto LABEL_6;
    case 1uLL:
      edgeIdentifiersBySourceNodeIdentifier = self->_edgeIdentifiersByTargetNodeIdentifier;
LABEL_6:
      v9 = [(KGDirectedBinaryAdjacency *)edgeIdentifiersBySourceNodeIdentifier targetsForSources:identifiersCopy];
      goto LABEL_14;
  }

  v9 = 0;
LABEL_14:

  return v9;
}

- (id)_edgeIdentifiersForNodeIdentifier:(unint64_t)identifier
{
  v5 = [(KGDirectedBinaryAdjacency *)self->_edgeIdentifiersBySourceNodeIdentifier targetsForSourceIdentifier:?];
  v6 = [(KGDirectedBinaryAdjacency *)self->_edgeIdentifiersByTargetNodeIdentifier targetsForSourceIdentifier:identifier];
  if ([v5 isEmpty])
  {
    v7 = v6;
  }

  else if ([v6 isEmpty])
  {
    v7 = v5;
  }

  else
  {
    v7 = [v6 identifierSetByFormingUnion:v5];
  }

  v8 = v7;

  return v8;
}

- (id)edgeIdentifiersForNodeIdentifier:(unint64_t)identifier error:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  v6 = [(KGMemoryGraphStore *)self _edgeIdentifiersForNodeIdentifier:identifier];
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)nodeIdentifiersMatchingFilter:(id)filter intersectingIdentifiers:(id)identifiers error:(id *)error
{
  filterCopy = filter;
  identifiersCopy = identifiers;
  os_unfair_lock_lock(&self->_lock);
  requiredLabels = [filterCopy requiredLabels];
  v10 = [requiredLabels count];

  if (v10)
  {
    requiredLabels2 = [filterCopy requiredLabels];
    _lock_allNodeIdentifiers = [(KGMemoryGraphStore *)self _lock_intersectionOfNodesWithLabels:requiredLabels2];

    if (identifiersCopy)
    {
LABEL_3:
      v13 = [_lock_allNodeIdentifiers identifierSetByIntersectingIdentifierSet:identifiersCopy];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = identifiersCopy;
      }

      v16 = v15;

      _lock_allNodeIdentifiers = v16;
    }
  }

  else
  {
    _lock_allNodeIdentifiers = 0;
    if (identifiersCopy)
    {
      goto LABEL_3;
    }
  }

  if (!_lock_allNodeIdentifiers)
  {
    _lock_allNodeIdentifiers = [(KGMemoryGraphStore *)self _lock_allNodeIdentifiers];
  }

  v17 = objc_alloc_init(KGMutableElementIdentifierSet);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __82__KGMemoryGraphStore_nodeIdentifiersMatchingFilter_intersectingIdentifiers_error___block_invoke;
  v23[3] = &unk_2797FEF60;
  v23[4] = self;
  v24 = filterCopy;
  v18 = v17;
  v25 = v18;
  v19 = filterCopy;
  [_lock_allNodeIdentifiers enumerateIdentifiersWithBlock:v23];
  os_unfair_lock_unlock(&self->_lock);
  v20 = v25;
  v21 = v18;

  return v18;
}

void __82__KGMemoryGraphStore_nodeIdentifiersMatchingFilter_intersectingIdentifiers_error___block_invoke(id *a1, uint64_t a2)
{
  v4 = [a1[4] memoryNodeByIdentifier];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v6 = [v4 objectForKeyedSubscript:v5];

  if ([a1[5] matchesNode:v6])
  {
    [a1[6] addIdentifier:{objc_msgSend(v6, "identifier")}];
  }
}

- (id)_lock_allNodeIdentifiers
{
  os_unfair_lock_assert_owner(&self->_lock);
  allKeys = [(NSMutableDictionary *)self->_nodeIdentifiersByLabel allKeys];
  v4 = [(KGMemoryGraphStore *)self _lock_unionOfNodesWithLabels:allKeys];

  return v4;
}

- (id)_lock_unionOfNodesWithLabels:(id)labels
{
  v19 = *MEMORY[0x277D85DE8];
  labelsCopy = labels;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = objc_alloc_init(KGMutableElementIdentifierSet);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = labelsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMutableDictionary *)self->_nodeIdentifiersByLabel objectForKeyedSubscript:*(*(&v14 + 1) + 8 * i), v14];
        if (v11)
        {
          [(KGMutableElementIdentifierSet *)v5 unionWithIdentifierSet:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_lock_intersectionOfNodesWithLabels:(id)labels
{
  v20 = *MEMORY[0x277D85DE8];
  labelsCopy = labels;
  os_unfair_lock_assert_owner(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = labelsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v6)
  {
LABEL_15:

LABEL_16:
    v8 = objc_alloc_init(KGElementIdentifierSet);
    goto LABEL_17;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v16;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = [(NSMutableDictionary *)self->_nodeIdentifiersByLabel objectForKeyedSubscript:*(*(&v15 + 1) + 8 * i), v15];
      if (!v11)
      {

        goto LABEL_15;
      }

      v12 = v11;
      if (v8)
      {
        [(KGElementIdentifierSet *)v8 intersectWithIdentifierSet:v11];
      }

      else
      {
        v8 = [v11 mutableCopy];
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_17:

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)arrayOfNodesWithIdentifiers:(id)identifiers entityFactory:(id)factory error:(id *)error
{
  factoryCopy = factory;
  identifiersCopy = identifiers;
  os_unfair_lock_lock(&self->_lock);
  v10 = [(KGMemoryGraphStore *)self _lock_arrayOfNodesWithIdentifiers:identifiersCopy entityFactory:factoryCopy error:error];

  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (id)nodeForIdentifier:(unint64_t)identifier entityFactory:(id)factory error:(id *)error
{
  factoryCopy = factory;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(KGMemoryGraphStore *)self _lock_snapshotNodeForIdentifier:identifier entityFactory:factoryCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (id)_lock_snapshotNodeForIdentifier:(unint64_t)identifier entityFactory:(id)factory
{
  factoryCopy = factory;
  os_unfair_lock_assert_owner(&self->_lock);
  memoryNodeByIdentifier = self->_memoryNodeByIdentifier;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:identifier];
  v9 = [(NSMutableDictionary *)memoryNodeByIdentifier objectForKeyedSubscript:v8];

  if (v9)
  {
    identifier = [v9 identifier];
    labels = [v9 labels];
    properties = [v9 properties];
    v13 = [factoryCopy nodeWithIdentifier:identifier labels:labels properties:properties];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)edgeIdentifiersMatchingFilter:(id)filter intersectingIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  filterCopy = filter;
  os_unfair_lock_lock(&self->_lock);
  v10 = [(KGMemoryGraphStore *)self _lock_edgeIdentifiersMatchingFilter:filterCopy intersectingIdentifiers:identifiersCopy error:error];

  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (id)_lock_edgeIdentifiersMatchingFilter:(id)filter intersectingIdentifiers:(id)identifiers error:(id *)error
{
  filterCopy = filter;
  identifiersCopy = identifiers;
  os_unfair_lock_assert_owner(&self->_lock);
  requiredLabels = [filterCopy requiredLabels];
  v10 = [requiredLabels count];

  if (v10)
  {
    requiredLabels2 = [filterCopy requiredLabels];
    _lock_allEdgeIdentifiers = [(KGMemoryGraphStore *)self _lock_intersectionOfEdgesWithLabels:requiredLabels2];

    if (identifiersCopy)
    {
LABEL_3:
      v13 = [_lock_allEdgeIdentifiers identifierSetByIntersectingIdentifierSet:identifiersCopy];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = identifiersCopy;
      }

      v16 = v15;

      _lock_allEdgeIdentifiers = v16;
    }
  }

  else
  {
    _lock_allEdgeIdentifiers = 0;
    if (identifiersCopy)
    {
      goto LABEL_3;
    }
  }

  if (!_lock_allEdgeIdentifiers)
  {
    _lock_allEdgeIdentifiers = [(KGMemoryGraphStore *)self _lock_allEdgeIdentifiers];
  }

  v17 = objc_alloc_init(KGMutableElementIdentifierSet);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __88__KGMemoryGraphStore__lock_edgeIdentifiersMatchingFilter_intersectingIdentifiers_error___block_invoke;
  v23[3] = &unk_2797FEF60;
  v23[4] = self;
  v24 = filterCopy;
  v18 = v17;
  v25 = v18;
  v19 = filterCopy;
  [_lock_allEdgeIdentifiers enumerateIdentifiersWithBlock:v23];
  v20 = v25;
  v21 = v18;

  return v18;
}

void __88__KGMemoryGraphStore__lock_edgeIdentifiersMatchingFilter_intersectingIdentifiers_error___block_invoke(id *a1, uint64_t a2)
{
  v4 = [a1[4] memoryEdgeByIdentifier];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v6 = [v4 objectForKeyedSubscript:v5];

  if ([a1[5] matchesEdge:v6])
  {
    [a1[6] addIdentifier:{objc_msgSend(v6, "identifier")}];
  }
}

- (id)_lock_allEdgeIdentifiers
{
  os_unfair_lock_assert_owner(&self->_lock);
  allKeys = [(NSMutableDictionary *)self->_edgeIdentifiersByLabel allKeys];
  v4 = [(KGMemoryGraphStore *)self _lock_unionOfEdgesWithLabels:allKeys];

  return v4;
}

- (id)_lock_unionOfEdgesWithLabels:(id)labels
{
  v19 = *MEMORY[0x277D85DE8];
  labelsCopy = labels;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = objc_alloc_init(KGMutableElementIdentifierSet);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = labelsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMutableDictionary *)self->_edgeIdentifiersByLabel objectForKeyedSubscript:*(*(&v14 + 1) + 8 * i), v14];
        if (v11)
        {
          [(KGMutableElementIdentifierSet *)v5 unionWithIdentifierSet:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_lock_intersectionOfEdgesWithLabels:(id)labels
{
  v20 = *MEMORY[0x277D85DE8];
  labelsCopy = labels;
  os_unfair_lock_assert_owner(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = labelsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v6)
  {
LABEL_15:

LABEL_16:
    v8 = objc_alloc_init(KGElementIdentifierSet);
    goto LABEL_17;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v16;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = [(NSMutableDictionary *)self->_edgeIdentifiersByLabel objectForKeyedSubscript:*(*(&v15 + 1) + 8 * i), v15];
      if (!v11)
      {

        goto LABEL_15;
      }

      v12 = v11;
      if (v8)
      {
        [(KGElementIdentifierSet *)v8 intersectWithIdentifierSet:v11];
      }

      else
      {
        v8 = [v11 mutableCopy];
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_17:

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)arrayOfEdgesWithIdentifiers:(id)identifiers entityFactory:(id)factory error:(id *)error
{
  factoryCopy = factory;
  identifiersCopy = identifiers;
  os_unfair_lock_lock(&self->_lock);
  v10 = [(KGMemoryGraphStore *)self _lock_arrayOfEdgesWithIdentifiers:identifiersCopy entityFactory:factoryCopy error:error];

  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (id)_lock_arrayOfEdgesWithIdentifiers:(id)identifiers entityFactory:(id)factory error:(id *)error
{
  identifiersCopy = identifiers;
  factoryCopy = factory;
  os_unfair_lock_assert_owner(&self->_lock);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3528;
  v19 = __Block_byref_object_dispose__3529;
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__KGMemoryGraphStore__lock_arrayOfEdgesWithIdentifiers_entityFactory_error___block_invoke;
  v12[3] = &unk_2797FEFB0;
  v12[4] = self;
  v9 = factoryCopy;
  v13 = v9;
  v14 = &v15;
  [identifiersCopy enumerateIdentifiersWithBlock:v12];
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

void __76__KGMemoryGraphStore__lock_arrayOfEdgesWithIdentifiers_entityFactory_error___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) _lock_snapshotEdgeForIdentifier:a2 reusableNode:0 entityFactory:*(a1 + 40)];
  v8 = v5;
  if (!v5)
  {
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;

    v5 = 0;
    *a3 = 1;
  }

  [*(*(*(a1 + 48) + 8) + 40) addObject:v5];
}

- (id)_lock_arrayOfNodesWithIdentifiers:(id)identifiers entityFactory:(id)factory error:(id *)error
{
  identifiersCopy = identifiers;
  factoryCopy = factory;
  os_unfair_lock_assert_owner(&self->_lock);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3528;
  v19 = __Block_byref_object_dispose__3529;
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__KGMemoryGraphStore__lock_arrayOfNodesWithIdentifiers_entityFactory_error___block_invoke;
  v12[3] = &unk_2797FEFB0;
  v12[4] = self;
  v9 = factoryCopy;
  v13 = v9;
  v14 = &v15;
  [identifiersCopy enumerateIdentifiersWithBlock:v12];
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

void __76__KGMemoryGraphStore__lock_arrayOfNodesWithIdentifiers_entityFactory_error___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) _lock_snapshotNodeForIdentifier:a2 entityFactory:*(a1 + 40)];
  v8 = v5;
  if (!v5)
  {
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;

    v5 = 0;
    *a3 = 1;
  }

  [*(*(*(a1 + 48) + 8) + 40) addObject:v5];
}

- (id)edgeForIdentifier:(unint64_t)identifier entityFactory:(id)factory error:(id *)error
{
  factoryCopy = factory;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(KGMemoryGraphStore *)self _lock_snapshotEdgeForIdentifier:identifier reusableNode:0 entityFactory:factoryCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (id)_lock_snapshotEdgeForIdentifier:(unint64_t)identifier reusableNode:(id)node entityFactory:(id)factory
{
  nodeCopy = node;
  factoryCopy = factory;
  os_unfair_lock_assert_owner(&self->_lock);
  memoryEdgeByIdentifier = self->_memoryEdgeByIdentifier;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:identifier];
  v12 = [(NSMutableDictionary *)memoryEdgeByIdentifier objectForKeyedSubscript:v11];

  if (v12)
  {
    sourceNode = [v12 sourceNode];
    targetNode = [v12 targetNode];
    identifier = [nodeCopy identifier];
    if (identifier != [sourceNode identifier] || (v16 = nodeCopy) == 0)
    {
      identifier2 = [sourceNode identifier];
      labels = [sourceNode labels];
      properties = [sourceNode properties];
      v16 = [factoryCopy nodeWithIdentifier:identifier2 labels:labels properties:properties];
    }

    if (identifier != [targetNode identifier] || (v20 = nodeCopy) == 0)
    {
      identifier3 = [targetNode identifier];
      labels2 = [targetNode labels];
      properties2 = [targetNode properties];
      v20 = [factoryCopy nodeWithIdentifier:identifier3 labels:labels2 properties:properties2];
    }

    identifier4 = [v12 identifier];
    labels3 = [v12 labels];
    properties3 = [v12 properties];
    v27 = [factoryCopy edgeWithIdentifier:identifier4 labels:labels3 properties:properties3 sourceNode:v16 targetNode:v20];
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)insertNodeWithIdentifier:(unint64_t)identifier labels:(id)labels properties:(id)properties error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  labelsCopy = labels;
  propertiesCopy = properties;
  os_unfair_lock_lock(&self->_lock);
  v23 = propertiesCopy;
  v11 = [[KGMemoryNode alloc] initWithIdentifier:identifier labels:labelsCopy properties:propertiesCopy];
  memoryNodeByIdentifier = self->_memoryNodeByIdentifier;
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:identifier];
  [(NSMutableDictionary *)memoryNodeByIdentifier setObject:v11 forKeyedSubscript:v13];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = labelsCopy;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * i);
        v20 = [(NSMutableDictionary *)self->_nodeIdentifiersByLabel objectForKeyedSubscript:v19];
        if (!v20)
        {
          v20 = objc_alloc_init(KGMutableElementIdentifierSet);
          [(NSMutableDictionary *)self->_nodeIdentifiersByLabel setObject:v20 forKeyedSubscript:v19];
        }

        [(KGMutableElementIdentifierSet *)v20 addIdentifier:identifier];
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  self->_nextNodeIdentifier = identifier + 1;
  os_unfair_lock_unlock(&self->_lock);

  v21 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)addNodes:(id)nodes error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  os_unfair_lock_lock(&self->_lock);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = nodesCopy;
  v26 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v26)
  {
    v25 = *v34;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v33 + 1) + 8 * i);
        nextNodeIdentifier = self->_nextNodeIdentifier;
        self->_nextNodeIdentifier = nextNodeIdentifier + 1;
        labels = [v7 labels];
        v10 = [KGMemoryNode alloc];
        v28 = v7;
        properties = [v7 properties];
        v12 = [(KGMemoryNode *)v10 initWithIdentifier:nextNodeIdentifier labels:labels properties:properties];

        memoryNodeByIdentifier = self->_memoryNodeByIdentifier;
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:nextNodeIdentifier];
        v27 = v12;
        [(NSMutableDictionary *)memoryNodeByIdentifier setObject:v12 forKeyedSubscript:v14];

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v15 = labels;
        v16 = [v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v30;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v30 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v29 + 1) + 8 * j);
              v21 = [(NSMutableDictionary *)self->_nodeIdentifiersByLabel objectForKeyedSubscript:v20];
              if (!v21)
              {
                v21 = objc_alloc_init(KGMutableElementIdentifierSet);
                [(NSMutableDictionary *)self->_nodeIdentifiersByLabel setObject:v21 forKeyedSubscript:v20];
              }

              [(KGMutableElementIdentifierSet *)v21 addIdentifier:nextNodeIdentifier];
            }

            v17 = [v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v17);
        }

        [v28 resolveIdentifier:nextNodeIdentifier];
      }

      v26 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v26);
  }

  os_unfair_lock_unlock(&self->_lock);
  v22 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)insertEdgeWithIdentifier:(unint64_t)identifier labels:(id)labels properties:(id)properties sourceNodeIdentifier:(unint64_t)nodeIdentifier targetNodeIdentifier:(unint64_t)targetNodeIdentifier error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  labelsCopy = labels;
  propertiesCopy = properties;
  os_unfair_lock_lock(&self->_lock);
  memoryNodeByIdentifier = self->_memoryNodeByIdentifier;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:nodeIdentifier];
  v17 = [(NSMutableDictionary *)memoryNodeByIdentifier objectForKeyedSubscript:v16];

  v18 = self->_memoryNodeByIdentifier;
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:targetNodeIdentifier];
  v20 = [(NSMutableDictionary *)v18 objectForKeyedSubscript:v19];

  v34 = propertiesCopy;
  v33 = v20;
  v21 = [[KGMemoryEdge alloc] initWithIdentifier:identifier labels:labelsCopy properties:propertiesCopy sourceNode:v17 targetNode:v20];
  [(KGMutableDirectedBinaryAdjacency *)self->_edgeIdentifiersBySourceNodeIdentifier insertSource:nodeIdentifier target:identifier];
  [(KGMutableDirectedBinaryAdjacency *)self->_edgeIdentifiersByTargetNodeIdentifier insertSource:targetNodeIdentifier target:identifier];
  memoryEdgeByIdentifier = self->_memoryEdgeByIdentifier;
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:identifier];
  [(NSMutableDictionary *)memoryEdgeByIdentifier setObject:v21 forKeyedSubscript:v23];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v24 = labelsCopy;
  v25 = [v24 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v36;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v35 + 1) + 8 * i);
        v30 = [(NSMutableDictionary *)self->_edgeIdentifiersByLabel objectForKeyedSubscript:v29];
        if (!v30)
        {
          v30 = objc_alloc_init(KGMutableElementIdentifierSet);
          [(NSMutableDictionary *)self->_edgeIdentifiersByLabel setObject:v30 forKeyedSubscript:v29];
        }

        [(KGMutableElementIdentifierSet *)v30 addIdentifier:identifier];
      }

      v26 = [v24 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v26);
  }

  self->_nextEdgeIdentifier = identifier + 1;
  os_unfair_lock_unlock(&self->_lock);

  v31 = *MEMORY[0x277D85DE8];

  return v21;
}

- (BOOL)addEdges:(id)edges error:(id *)error
{
  v55 = *MEMORY[0x277D85DE8];
  edgesCopy = edges;
  os_unfair_lock_lock(&self->_lock);
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = edgesCopy;
  v39 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v39)
  {
    v38 = *v50;
    do
    {
      v6 = 0;
      do
      {
        if (*v50 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v6;
        v7 = *(*(&v49 + 1) + 8 * v6);
        nextEdgeIdentifier = self->_nextEdgeIdentifier;
        self->_nextEdgeIdentifier = nextEdgeIdentifier + 1;
        labels = [v7 labels];
        memoryNodeByIdentifier = self->_memoryNodeByIdentifier;
        v10 = MEMORY[0x277CCABB0];
        sourceNode = [v7 sourceNode];
        v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(sourceNode, "identifier")}];
        v13 = [(NSMutableDictionary *)memoryNodeByIdentifier objectForKeyedSubscript:v12];

        v14 = self->_memoryNodeByIdentifier;
        v15 = MEMORY[0x277CCABB0];
        targetNode = [v7 targetNode];
        v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(targetNode, "identifier")}];
        v18 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:v17];

        v19 = [KGMemoryEdge alloc];
        v43 = v7;
        properties = [v7 properties];
        v41 = v18;
        v42 = v13;
        v21 = [(KGMemoryEdge *)v19 initWithIdentifier:nextEdgeIdentifier labels:labels properties:properties sourceNode:v13 targetNode:v18];

        memoryEdgeByIdentifier = self->_memoryEdgeByIdentifier;
        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:nextEdgeIdentifier];
        [(NSMutableDictionary *)memoryEdgeByIdentifier setObject:v21 forKeyedSubscript:v23];

        edgeIdentifiersBySourceNodeIdentifier = self->_edgeIdentifiersBySourceNodeIdentifier;
        sourceNode2 = [(KGMemoryEdge *)v21 sourceNode];
        -[KGMutableDirectedBinaryAdjacency insertSource:target:](edgeIdentifiersBySourceNodeIdentifier, "insertSource:target:", [sourceNode2 identifier], nextEdgeIdentifier);

        edgeIdentifiersByTargetNodeIdentifier = self->_edgeIdentifiersByTargetNodeIdentifier;
        targetNode2 = [(KGMemoryEdge *)v21 targetNode];
        -[KGMutableDirectedBinaryAdjacency insertSource:target:](edgeIdentifiersByTargetNodeIdentifier, "insertSource:target:", [targetNode2 identifier], nextEdgeIdentifier);

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v28 = labels;
        v29 = [v28 countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v46;
          do
          {
            for (i = 0; i != v30; ++i)
            {
              if (*v46 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v33 = *(*(&v45 + 1) + 8 * i);
              v34 = [(NSMutableDictionary *)self->_edgeIdentifiersByLabel objectForKeyedSubscript:v33];
              if (!v34)
              {
                v34 = objc_alloc_init(KGMutableElementIdentifierSet);
                [(NSMutableDictionary *)self->_edgeIdentifiersByLabel setObject:v34 forKeyedSubscript:v33];
              }

              [(KGMutableElementIdentifierSet *)v34 addIdentifier:nextEdgeIdentifier];
            }

            v30 = [v28 countByEnumeratingWithState:&v45 objects:v53 count:16];
          }

          while (v30);
        }

        [v43 resolveIdentifier:{-[KGMemoryEdge identifier](v21, "identifier")}];
        v6 = v44 + 1;
      }

      while (v44 + 1 != v39);
      v39 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v39);
  }

  os_unfair_lock_unlock(&self->_lock);
  v35 = *MEMORY[0x277D85DE8];
  return 1;
}

- (NSUUID)graphIdentifier
{
  graphIdentifier = self->_graphIdentifier;
  if (!graphIdentifier)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    v5 = self->_graphIdentifier;
    self->_graphIdentifier = uUID;

    graphIdentifier = self->_graphIdentifier;
  }

  return graphIdentifier;
}

- (KGMemoryGraphStore)init
{
  initForSubclasses = [(KGMemoryGraphStore *)self initForSubclasses];
  if (initForSubclasses)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    graphIdentifier = initForSubclasses->_graphIdentifier;
    initForSubclasses->_graphIdentifier = uUID;
  }

  return initForSubclasses;
}

- (id)initForSubclasses
{
  v16.receiver = self;
  v16.super_class = KGMemoryGraphStore;
  v2 = [(KGMemoryGraphStore *)&v16 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    memoryNodeByIdentifier = v2->_memoryNodeByIdentifier;
    v2->_memoryNodeByIdentifier = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    nodeIdentifiersByLabel = v2->_nodeIdentifiersByLabel;
    v2->_nodeIdentifiersByLabel = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    memoryEdgeByIdentifier = v2->_memoryEdgeByIdentifier;
    v2->_memoryEdgeByIdentifier = dictionary3;

    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    edgeIdentifiersByLabel = v2->_edgeIdentifiersByLabel;
    v2->_edgeIdentifiersByLabel = dictionary4;

    v2->_nextNodeIdentifier = 1;
    v2->_nextEdgeIdentifier = 1;
    v2->_lock._os_unfair_lock_opaque = 0;
    v11 = objc_alloc_init(KGMutableDirectedBinaryAdjacency);
    edgeIdentifiersBySourceNodeIdentifier = v2->_edgeIdentifiersBySourceNodeIdentifier;
    v2->_edgeIdentifiersBySourceNodeIdentifier = v11;

    v13 = objc_alloc_init(KGMutableDirectedBinaryAdjacency);
    edgeIdentifiersByTargetNodeIdentifier = v2->_edgeIdentifiersByTargetNodeIdentifier;
    v2->_edgeIdentifiersByTargetNodeIdentifier = v13;
  }

  return v2;
}

@end
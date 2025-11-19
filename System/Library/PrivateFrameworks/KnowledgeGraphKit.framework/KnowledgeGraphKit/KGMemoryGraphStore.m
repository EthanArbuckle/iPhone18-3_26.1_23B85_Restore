@interface KGMemoryGraphStore
- (BOOL)_removeEdgesForMemoryNode:(id)a3 error:(id *)a4;
- (BOOL)_removeMemoryEdge:(id)a3 error:(id *)a4;
- (BOOL)_removeNode:(unint64_t)a3 error:(id *)a4;
- (BOOL)addEdges:(id)a3 error:(id *)a4;
- (BOOL)addNodes:(id)a3 error:(id *)a4;
- (BOOL)removeEdgeForIdentifier:(unint64_t)a3 error:(id *)a4;
- (BOOL)removeEdgesForIdentifiers:(id)a3 error:(id *)a4;
- (BOOL)removeNodeForIdentifier:(unint64_t)a3 error:(id *)a4;
- (BOOL)removeNodesForIdentifiers:(id)a3 error:(id *)a4;
- (BOOL)updateEdgeForIdentifier:(unint64_t)a3 withProperties:(id)a4 error:(id *)a5;
- (BOOL)updateNodeForIdentifier:(unint64_t)a3 withProperties:(id)a4 error:(id *)a5;
- (KGMemoryGraphStore)init;
- (NSUUID)graphIdentifier;
- (id)_edgeIdentifiersForNodeIdentifier:(unint64_t)a3;
- (id)_lock_allEdgeIdentifiers;
- (id)_lock_allNodeIdentifiers;
- (id)_lock_arrayOfEdgesWithIdentifiers:(id)a3 entityFactory:(id)a4 error:(id *)a5;
- (id)_lock_arrayOfNodesWithIdentifiers:(id)a3 entityFactory:(id)a4 error:(id *)a5;
- (id)_lock_edgeIdentifiersMatchingFilter:(id)a3 intersectingIdentifiers:(id)a4 error:(id *)a5;
- (id)_lock_edgeIdentifiersWithStartNodeIdentifiers:(id)a3 edgeDirection:(unint64_t)a4 error:(id *)a5;
- (id)_lock_intersectionOfEdgesWithLabels:(id)a3;
- (id)_lock_intersectionOfNodesWithLabels:(id)a3;
- (id)_lock_nodeIdentifiersOfEdgesWithIdentifiers:(id)a3 edgeDirection:(unint64_t)a4 error:(id *)a5;
- (id)_lock_snapshotEdgeForIdentifier:(unint64_t)a3 reusableNode:(id)a4 entityFactory:(id)a5;
- (id)_lock_snapshotNodeForIdentifier:(unint64_t)a3 entityFactory:(id)a4;
- (id)_lock_sourcesByTargetWithEdgeIdentifiers:(id)a3 error:(id *)a4;
- (id)_lock_targetsBySourceWithEdgeIdentifiers:(id)a3 error:(id *)a4;
- (id)_lock_unionOfEdgesWithLabels:(id)a3;
- (id)_lock_unionOfNodesWithLabels:(id)a3;
- (id)arrayOfEdgesWithIdentifiers:(id)a3 entityFactory:(id)a4 error:(id *)a5;
- (id)arrayOfNodesWithIdentifiers:(id)a3 entityFactory:(id)a4 error:(id *)a5;
- (id)edgeForIdentifier:(unint64_t)a3 entityFactory:(id)a4 error:(id *)a5;
- (id)edgeIdentifiersBetween:(id)a3 endNodeIdentifiers:(id)a4 edgeFilter:(id)a5 edgeDirection:(unint64_t)a6 error:(id *)a7;
- (id)edgeIdentifiersForNodeIdentifier:(unint64_t)a3 error:(id *)a4;
- (id)edgeIdentifiersMatchingFilter:(id)a3 intersectingIdentifiers:(id)a4 error:(id *)a5;
- (id)edgeIdentifiersWithStartNodeIdentifiers:(id)a3 edgeDirection:(unint64_t)a4 error:(id *)a5;
- (id)edgeIdentifiersWithStartNodeIdentifiers:(id)a3 intersectingEdgeIdentifiers:(id)a4 edgeDirection:(unint64_t)a5 error:(id *)a6;
- (id)edgeLabels;
- (id)initForSubclasses;
- (id)insertEdgeWithIdentifier:(unint64_t)a3 labels:(id)a4 properties:(id)a5 sourceNodeIdentifier:(unint64_t)a6 targetNodeIdentifier:(unint64_t)a7 error:(id *)a8;
- (id)insertNodeWithIdentifier:(unint64_t)a3 labels:(id)a4 properties:(id)a5 error:(id *)a6;
- (id)labelsOfEdgesForIdentifiers:(id)a3;
- (id)labelsOfNodesForIdentifiers:(id)a3;
- (id)neighborNodeIdentifiersWithStartNodeIdentifiers:(id)a3 edgeDirection:(unint64_t)a4 edgeFilter:(id)a5 error:(id *)a6;
- (id)nodeForIdentifier:(unint64_t)a3 entityFactory:(id)a4 error:(id *)a5;
- (id)nodeIdentifiersMatchingFilter:(id)a3 intersectingIdentifiers:(id)a4 error:(id *)a5;
- (id)nodeIdentifiersOfEdgesWithIdentifiers:(id)a3 edgeDirection:(unint64_t)a4 error:(id *)a5;
- (id)nodeLabels;
- (id)propertiesForEdgesWithIdentifiers:(id)a3 propertyName:(id)a4 error:(id *)a5;
- (id)propertiesForNodesWithIdentifiers:(id)a3 propertyName:(id)a4 error:(id *)a5;
- (id)sourcesByTargetWithEdgeIdentifiers:(id)a3 error:(id *)a4;
- (id)targetsBySourceWithEdgeIdentifiers:(id)a3 error:(id *)a4;
- (id)transitiveClosureNeighborNodeIdentifiersWithStartNodeIdentifiers:(id)a3 edgeDirection:(unint64_t)a4 edgeFilter:(id)a5 error:(id *)a6;
@end

@implementation KGMemoryGraphStore

- (BOOL)_removeNode:(unint64_t)a3 error:(id *)a4
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
  v9 = [v8 labels];
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
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
          objc_enumerationMutation(v9);
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
        [v14 removeIdentifier:a3];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  if (![(KGMemoryGraphStore *)self _removeEdgesForMemoryNode:v8 error:a4])
  {
    v9 = KGLoggingConnection();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v25 = a3;
      _os_log_error_impl(&dword_255870000, v9, OS_LOG_TYPE_ERROR, "Cannot delete edges for node: %lu", buf, 0xCu);
    }

LABEL_17:

    goto LABEL_18;
  }

  v16 = 1;
LABEL_19:

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)removeNodeForIdentifier:(unint64_t)a3 error:(id *)a4
{
  os_unfair_lock_lock(&self->_lock);
  LOBYTE(a4) = [(KGMemoryGraphStore *)self _removeNode:a3 error:a4];
  os_unfair_lock_unlock(&self->_lock);
  return a4;
}

- (BOOL)removeNodesForIdentifiers:(id)a3 error:(id *)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v6 indexArray];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v7);
        }

        v14 = [*(*(&v21 + 1) + 8 * v12) unsignedIntegerValue];
        v20 = v13;
        v15 = [(KGMemoryGraphStore *)self _removeNode:v14 error:&v20];
        v10 = v20;

        ++v12;
        v13 = v10;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);

    if (a4)
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
      *a4 = v10;
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

- (BOOL)_removeEdgesForMemoryNode:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v7 = -[KGMemoryGraphStore _edgeIdentifiersForNodeIdentifier:](self, "_edgeIdentifiersForNodeIdentifier:", [v6 identifier]);
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
  if (a4)
  {
    *a4 = v12[5];
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

- (BOOL)_removeMemoryEdge:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 identifier];
  memoryEdgeByIdentifier = self->_memoryEdgeByIdentifier;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  [(NSMutableDictionary *)memoryEdgeByIdentifier removeObjectForKey:v8];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [v5 labels];
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v9);
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
        [v14 removeIdentifier:v6];
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  edgeIdentifiersBySourceNodeIdentifier = self->_edgeIdentifiersBySourceNodeIdentifier;
  v17 = [v5 sourceNode];
  -[KGMutableDirectedBinaryAdjacency removeSource:target:](edgeIdentifiersBySourceNodeIdentifier, "removeSource:target:", [v17 identifier], v6);

  edgeIdentifiersByTargetNodeIdentifier = self->_edgeIdentifiersByTargetNodeIdentifier;
  v9 = [v5 targetNode];
  -[KGMutableDirectedBinaryAdjacency removeSource:target:](edgeIdentifiersByTargetNodeIdentifier, "removeSource:target:", [v9 identifier], v6);
  v19 = 1;
LABEL_13:

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)removeEdgeForIdentifier:(unint64_t)a3 error:(id *)a4
{
  os_unfair_lock_lock(&self->_lock);
  memoryEdgeByIdentifier = self->_memoryEdgeByIdentifier;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v9 = [(NSMutableDictionary *)memoryEdgeByIdentifier objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [(KGMemoryGraphStore *)self _removeMemoryEdge:v9 error:a4];
  }

  else
  {
    v10 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (BOOL)removeEdgesForIdentifiers:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 indexArray];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        objc_enumerationMutation(v7);
      }

      v12 = [(NSMutableDictionary *)self->_memoryEdgeByIdentifier objectForKeyedSubscript:*(*(&v16 + 1) + 8 * v11)];
      if (!v12)
      {
        break;
      }

      v13 = [(KGMemoryGraphStore *)self _removeMemoryEdge:v12 error:a4];

      if (!v13)
      {
        LOBYTE(v12) = 0;
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (BOOL)updateEdgeForIdentifier:(unint64_t)a3 withProperties:(id)a4 error:(id *)a5
{
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  memoryEdgeByIdentifier = self->_memoryEdgeByIdentifier;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v10 = [(NSMutableDictionary *)memoryEdgeByIdentifier objectForKeyedSubscript:v9];

  if (v10)
  {
    [v10 setProperties:v7];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v10 != 0;
}

- (BOOL)updateNodeForIdentifier:(unint64_t)a3 withProperties:(id)a4 error:(id *)a5
{
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  memoryNodeByIdentifier = self->_memoryNodeByIdentifier;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v10 = [(NSMutableDictionary *)memoryNodeByIdentifier objectForKeyedSubscript:v9];

  if (v10)
  {
    [v10 setProperties:v7];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v10 != 0;
}

- (id)sourcesByTargetWithEdgeIdentifiers:(id)a3 error:(id *)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(KGMemoryGraphStore *)self _lock_sourcesByTargetWithEdgeIdentifiers:v6 error:a4];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)targetsBySourceWithEdgeIdentifiers:(id)a3 error:(id *)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(KGMemoryGraphStore *)self _lock_targetsBySourceWithEdgeIdentifiers:v6 error:a4];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)_lock_sourcesByTargetWithEdgeIdentifiers:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __69__KGMemoryGraphStore__lock_sourcesByTargetWithEdgeIdentifiers_error___block_invoke;
  v22[3] = &unk_2797FEFD8;
  v22[4] = self;
  v7 = v6;
  v23 = v7;
  [v5 enumerateIdentifiersWithBlock:v22];
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

- (id)_lock_targetsBySourceWithEdgeIdentifiers:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __69__KGMemoryGraphStore__lock_targetsBySourceWithEdgeIdentifiers_error___block_invoke;
  v22[3] = &unk_2797FEFD8;
  v22[4] = self;
  v7 = v6;
  v23 = v7;
  [v5 enumerateIdentifiersWithBlock:v22];
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

- (id)labelsOfEdgesForIdentifiers:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = [v4 indexArray];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMutableDictionary *)self->_memoryEdgeByIdentifier objectForKeyedSubscript:*(*(&v16 + 1) + 8 * i)];
        v12 = v11;
        if (v11)
        {
          v13 = [v11 labels];
          [v5 unionSet:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)labelsOfNodesForIdentifiers:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = [v4 indexArray];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMutableDictionary *)self->_memoryNodeByIdentifier objectForKeyedSubscript:*(*(&v16 + 1) + 8 * i)];
        v12 = v11;
        if (v11)
        {
          v13 = [v11 labels];
          [v5 unionSet:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  v4 = [(NSMutableDictionary *)self->_edgeIdentifiersByLabel allKeys];
  v5 = [v3 setWithArray:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)nodeLabels
{
  os_unfair_lock_lock(&self->_lock);
  v3 = MEMORY[0x277CBEB98];
  v4 = [(NSMutableDictionary *)self->_nodeIdentifiersByLabel allKeys];
  v5 = [v3 setWithArray:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)propertiesForEdgesWithIdentifiers:(id)a3 propertyName:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
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
  v9 = v8;
  v13 = v9;
  [v7 enumerateIdentifiersWithBlock:v12];
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

- (id)propertiesForNodesWithIdentifiers:(id)a3 propertyName:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
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
  v9 = v8;
  v13 = v9;
  [v7 enumerateIdentifiersWithBlock:v12];
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

- (id)nodeIdentifiersOfEdgesWithIdentifiers:(id)a3 edgeDirection:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  os_unfair_lock_lock(&self->_lock);
  v9 = [(KGMemoryGraphStore *)self _lock_nodeIdentifiersOfEdgesWithIdentifiers:v8 edgeDirection:a4 error:a5];

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (id)_lock_nodeIdentifiersOfEdgesWithIdentifiers:(id)a3 edgeDirection:(unint64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = objc_alloc_init(KGMutableElementIdentifierSet);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86__KGMemoryGraphStore__lock_nodeIdentifiersOfEdgesWithIdentifiers_edgeDirection_error___block_invoke;
  v13[3] = &unk_2797FEF88;
  v13[4] = self;
  v15 = a4;
  v9 = v8;
  v14 = v9;
  [v7 enumerateIdentifiersWithBlock:v13];

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

- (id)transitiveClosureNeighborNodeIdentifiersWithStartNodeIdentifiers:(id)a3 edgeDirection:(unint64_t)a4 edgeFilter:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [v10 copy];
  v13 = objc_alloc_init(KGMutableElementIdentifierSet);
  v14 = [(KGMemoryGraphStore *)self neighborNodeIdentifiersWithStartNodeIdentifiers:v12 edgeDirection:a4 edgeFilter:v11 error:a6];
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

      v14 = [(KGMemoryGraphStore *)self neighborNodeIdentifiersWithStartNodeIdentifiers:v15 edgeDirection:a4 edgeFilter:v11 error:a6];
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

- (id)neighborNodeIdentifiersWithStartNodeIdentifiers:(id)a3 edgeDirection:(unint64_t)a4 edgeFilter:(id)a5 error:(id *)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  os_unfair_lock_lock(&self->_lock);
  if ((v8 & 2) != 0)
  {
    v13 = [(KGMemoryGraphStore *)self _lock_edgeIdentifiersWithStartNodeIdentifiers:v10 edgeDirection:2 error:a6];
    v14 = [(KGMemoryGraphStore *)self _lock_edgeIdentifiersMatchingFilter:v11 intersectingIdentifiers:v13 error:a6];

    v12 = [(KGMemoryGraphStore *)self _lock_nodeIdentifiersOfEdgesWithIdentifiers:v14 edgeDirection:1 error:a6];

    if ((v8 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_5:
    v15 = [(KGMemoryGraphStore *)self _lock_edgeIdentifiersWithStartNodeIdentifiers:v10 edgeDirection:1 error:a6];
    v16 = [(KGMemoryGraphStore *)self _lock_edgeIdentifiersMatchingFilter:v11 intersectingIdentifiers:v15 error:a6];

    v17 = [(KGMemoryGraphStore *)self _lock_nodeIdentifiersOfEdgesWithIdentifiers:v16 edgeDirection:2 error:a6];
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
  if (v8)
  {
    goto LABEL_5;
  }

LABEL_9:
  os_unfair_lock_unlock(&self->_lock);

  return v12;
}

- (id)edgeIdentifiersBetween:(id)a3 endNodeIdentifiers:(id)a4 edgeFilter:(id)a5 edgeDirection:(unint64_t)a6 error:(id *)a7
{
  v12 = a4;
  v13 = a5;
  v14 = [(KGMemoryGraphStore *)self edgeIdentifiersWithStartNodeIdentifiers:a3 edgeDirection:a6 error:a7];
  if (v14)
  {
    v15 = v14;
    if (a6 - 1 > 2)
    {
      v16 = 0;
    }

    else
    {
      v16 = qword_255972F78[a6 - 1];
    }

    v18 = [(KGMemoryGraphStore *)self edgeIdentifiersWithStartNodeIdentifiers:v12 intersectingEdgeIdentifiers:v14 edgeDirection:v16 error:a7];

    v17 = [(KGMemoryGraphStore *)self edgeIdentifiersMatchingFilter:v13 intersectingIdentifiers:v18 error:a7];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)edgeIdentifiersWithStartNodeIdentifiers:(id)a3 intersectingEdgeIdentifiers:(id)a4 edgeDirection:(unint64_t)a5 error:(id *)a6
{
  v10 = a4;
  v11 = [(KGMemoryGraphStore *)self edgeIdentifiersWithStartNodeIdentifiers:a3 edgeDirection:a5 error:a6];
  v12 = [v11 identifierSetByIntersectingIdentifierSet:v10];

  return v12;
}

- (id)edgeIdentifiersWithStartNodeIdentifiers:(id)a3 edgeDirection:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  os_unfair_lock_lock(&self->_lock);
  v9 = [(KGMemoryGraphStore *)self _lock_edgeIdentifiersWithStartNodeIdentifiers:v8 edgeDirection:a4 error:a5];

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (id)_lock_edgeIdentifiersWithStartNodeIdentifiers:(id)a3 edgeDirection:(unint64_t)a4 error:(id *)a5
{
  v7 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  switch(a4)
  {
    case 3uLL:
      v10 = [(KGDirectedBinaryAdjacency *)self->_edgeIdentifiersBySourceNodeIdentifier targetsForSources:v7];
      v11 = [(KGDirectedBinaryAdjacency *)self->_edgeIdentifiersByTargetNodeIdentifier targetsForSources:v7];
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
      v9 = [(KGDirectedBinaryAdjacency *)edgeIdentifiersBySourceNodeIdentifier targetsForSources:v7];
      goto LABEL_14;
  }

  v9 = 0;
LABEL_14:

  return v9;
}

- (id)_edgeIdentifiersForNodeIdentifier:(unint64_t)a3
{
  v5 = [(KGDirectedBinaryAdjacency *)self->_edgeIdentifiersBySourceNodeIdentifier targetsForSourceIdentifier:?];
  v6 = [(KGDirectedBinaryAdjacency *)self->_edgeIdentifiersByTargetNodeIdentifier targetsForSourceIdentifier:a3];
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

- (id)edgeIdentifiersForNodeIdentifier:(unint64_t)a3 error:(id *)a4
{
  os_unfair_lock_lock(&self->_lock);
  v6 = [(KGMemoryGraphStore *)self _edgeIdentifiersForNodeIdentifier:a3];
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)nodeIdentifiersMatchingFilter:(id)a3 intersectingIdentifiers:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  os_unfair_lock_lock(&self->_lock);
  v9 = [v7 requiredLabels];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [v7 requiredLabels];
    v12 = [(KGMemoryGraphStore *)self _lock_intersectionOfNodesWithLabels:v11];

    if (v8)
    {
LABEL_3:
      v13 = [v12 identifierSetByIntersectingIdentifierSet:v8];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v8;
      }

      v16 = v15;

      v12 = v16;
    }
  }

  else
  {
    v12 = 0;
    if (v8)
    {
      goto LABEL_3;
    }
  }

  if (!v12)
  {
    v12 = [(KGMemoryGraphStore *)self _lock_allNodeIdentifiers];
  }

  v17 = objc_alloc_init(KGMutableElementIdentifierSet);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __82__KGMemoryGraphStore_nodeIdentifiersMatchingFilter_intersectingIdentifiers_error___block_invoke;
  v23[3] = &unk_2797FEF60;
  v23[4] = self;
  v24 = v7;
  v18 = v17;
  v25 = v18;
  v19 = v7;
  [v12 enumerateIdentifiersWithBlock:v23];
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
  v3 = [(NSMutableDictionary *)self->_nodeIdentifiersByLabel allKeys];
  v4 = [(KGMemoryGraphStore *)self _lock_unionOfNodesWithLabels:v3];

  return v4;
}

- (id)_lock_unionOfNodesWithLabels:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = objc_alloc_init(KGMutableElementIdentifierSet);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
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

- (id)_lock_intersectionOfNodesWithLabels:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
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

- (id)arrayOfNodesWithIdentifiers:(id)a3 entityFactory:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  os_unfair_lock_lock(&self->_lock);
  v10 = [(KGMemoryGraphStore *)self _lock_arrayOfNodesWithIdentifiers:v9 entityFactory:v8 error:a5];

  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (id)nodeForIdentifier:(unint64_t)a3 entityFactory:(id)a4 error:(id *)a5
{
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(KGMemoryGraphStore *)self _lock_snapshotNodeForIdentifier:a3 entityFactory:v7];

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (id)_lock_snapshotNodeForIdentifier:(unint64_t)a3 entityFactory:(id)a4
{
  v6 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  memoryNodeByIdentifier = self->_memoryNodeByIdentifier;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v9 = [(NSMutableDictionary *)memoryNodeByIdentifier objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [v9 identifier];
    v11 = [v9 labels];
    v12 = [v9 properties];
    v13 = [v6 nodeWithIdentifier:v10 labels:v11 properties:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)edgeIdentifiersMatchingFilter:(id)a3 intersectingIdentifiers:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  os_unfair_lock_lock(&self->_lock);
  v10 = [(KGMemoryGraphStore *)self _lock_edgeIdentifiersMatchingFilter:v9 intersectingIdentifiers:v8 error:a5];

  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (id)_lock_edgeIdentifiersMatchingFilter:(id)a3 intersectingIdentifiers:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  v9 = [v7 requiredLabels];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [v7 requiredLabels];
    v12 = [(KGMemoryGraphStore *)self _lock_intersectionOfEdgesWithLabels:v11];

    if (v8)
    {
LABEL_3:
      v13 = [v12 identifierSetByIntersectingIdentifierSet:v8];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v8;
      }

      v16 = v15;

      v12 = v16;
    }
  }

  else
  {
    v12 = 0;
    if (v8)
    {
      goto LABEL_3;
    }
  }

  if (!v12)
  {
    v12 = [(KGMemoryGraphStore *)self _lock_allEdgeIdentifiers];
  }

  v17 = objc_alloc_init(KGMutableElementIdentifierSet);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __88__KGMemoryGraphStore__lock_edgeIdentifiersMatchingFilter_intersectingIdentifiers_error___block_invoke;
  v23[3] = &unk_2797FEF60;
  v23[4] = self;
  v24 = v7;
  v18 = v17;
  v25 = v18;
  v19 = v7;
  [v12 enumerateIdentifiersWithBlock:v23];
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
  v3 = [(NSMutableDictionary *)self->_edgeIdentifiersByLabel allKeys];
  v4 = [(KGMemoryGraphStore *)self _lock_unionOfEdgesWithLabels:v3];

  return v4;
}

- (id)_lock_unionOfEdgesWithLabels:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = objc_alloc_init(KGMutableElementIdentifierSet);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
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

- (id)_lock_intersectionOfEdgesWithLabels:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
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

- (id)arrayOfEdgesWithIdentifiers:(id)a3 entityFactory:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  os_unfair_lock_lock(&self->_lock);
  v10 = [(KGMemoryGraphStore *)self _lock_arrayOfEdgesWithIdentifiers:v9 entityFactory:v8 error:a5];

  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (id)_lock_arrayOfEdgesWithIdentifiers:(id)a3 entityFactory:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
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
  v9 = v8;
  v13 = v9;
  v14 = &v15;
  [v7 enumerateIdentifiersWithBlock:v12];
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

- (id)_lock_arrayOfNodesWithIdentifiers:(id)a3 entityFactory:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
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
  v9 = v8;
  v13 = v9;
  v14 = &v15;
  [v7 enumerateIdentifiersWithBlock:v12];
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

- (id)edgeForIdentifier:(unint64_t)a3 entityFactory:(id)a4 error:(id *)a5
{
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(KGMemoryGraphStore *)self _lock_snapshotEdgeForIdentifier:a3 reusableNode:0 entityFactory:v7];

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (id)_lock_snapshotEdgeForIdentifier:(unint64_t)a3 reusableNode:(id)a4 entityFactory:(id)a5
{
  v8 = a4;
  v9 = a5;
  os_unfair_lock_assert_owner(&self->_lock);
  memoryEdgeByIdentifier = self->_memoryEdgeByIdentifier;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v12 = [(NSMutableDictionary *)memoryEdgeByIdentifier objectForKeyedSubscript:v11];

  if (v12)
  {
    v13 = [v12 sourceNode];
    v14 = [v12 targetNode];
    v15 = [v8 identifier];
    if (v15 != [v13 identifier] || (v16 = v8) == 0)
    {
      v17 = [v13 identifier];
      v18 = [v13 labels];
      v19 = [v13 properties];
      v16 = [v9 nodeWithIdentifier:v17 labels:v18 properties:v19];
    }

    if (v15 != [v14 identifier] || (v20 = v8) == 0)
    {
      v21 = [v14 identifier];
      v22 = [v14 labels];
      v23 = [v14 properties];
      v20 = [v9 nodeWithIdentifier:v21 labels:v22 properties:v23];
    }

    v24 = [v12 identifier];
    v25 = [v12 labels];
    v26 = [v12 properties];
    v27 = [v9 edgeWithIdentifier:v24 labels:v25 properties:v26 sourceNode:v16 targetNode:v20];
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)insertNodeWithIdentifier:(unint64_t)a3 labels:(id)a4 properties:(id)a5 error:(id *)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  os_unfair_lock_lock(&self->_lock);
  v23 = v10;
  v11 = [[KGMemoryNode alloc] initWithIdentifier:a3 labels:v9 properties:v10];
  memoryNodeByIdentifier = self->_memoryNodeByIdentifier;
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)memoryNodeByIdentifier setObject:v11 forKeyedSubscript:v13];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v9;
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

        [(KGMutableElementIdentifierSet *)v20 addIdentifier:a3];
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  self->_nextNodeIdentifier = a3 + 1;
  os_unfair_lock_unlock(&self->_lock);

  v21 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)addNodes:(id)a3 error:(id *)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v5;
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
        v9 = [v7 labels];
        v10 = [KGMemoryNode alloc];
        v28 = v7;
        v11 = [v7 properties];
        v12 = [(KGMemoryNode *)v10 initWithIdentifier:nextNodeIdentifier labels:v9 properties:v11];

        memoryNodeByIdentifier = self->_memoryNodeByIdentifier;
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:nextNodeIdentifier];
        v27 = v12;
        [(NSMutableDictionary *)memoryNodeByIdentifier setObject:v12 forKeyedSubscript:v14];

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v15 = v9;
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

- (id)insertEdgeWithIdentifier:(unint64_t)a3 labels:(id)a4 properties:(id)a5 sourceNodeIdentifier:(unint64_t)a6 targetNodeIdentifier:(unint64_t)a7 error:(id *)a8
{
  v40 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a5;
  os_unfair_lock_lock(&self->_lock);
  memoryNodeByIdentifier = self->_memoryNodeByIdentifier;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
  v17 = [(NSMutableDictionary *)memoryNodeByIdentifier objectForKeyedSubscript:v16];

  v18 = self->_memoryNodeByIdentifier;
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a7];
  v20 = [(NSMutableDictionary *)v18 objectForKeyedSubscript:v19];

  v34 = v14;
  v33 = v20;
  v21 = [[KGMemoryEdge alloc] initWithIdentifier:a3 labels:v13 properties:v14 sourceNode:v17 targetNode:v20];
  [(KGMutableDirectedBinaryAdjacency *)self->_edgeIdentifiersBySourceNodeIdentifier insertSource:a6 target:a3];
  [(KGMutableDirectedBinaryAdjacency *)self->_edgeIdentifiersByTargetNodeIdentifier insertSource:a7 target:a3];
  memoryEdgeByIdentifier = self->_memoryEdgeByIdentifier;
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)memoryEdgeByIdentifier setObject:v21 forKeyedSubscript:v23];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v24 = v13;
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

        [(KGMutableElementIdentifierSet *)v30 addIdentifier:a3];
      }

      v26 = [v24 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v26);
  }

  self->_nextEdgeIdentifier = a3 + 1;
  os_unfair_lock_unlock(&self->_lock);

  v31 = *MEMORY[0x277D85DE8];

  return v21;
}

- (BOOL)addEdges:(id)a3 error:(id *)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v5;
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
        v40 = [v7 labels];
        memoryNodeByIdentifier = self->_memoryNodeByIdentifier;
        v10 = MEMORY[0x277CCABB0];
        v11 = [v7 sourceNode];
        v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(v11, "identifier")}];
        v13 = [(NSMutableDictionary *)memoryNodeByIdentifier objectForKeyedSubscript:v12];

        v14 = self->_memoryNodeByIdentifier;
        v15 = MEMORY[0x277CCABB0];
        v16 = [v7 targetNode];
        v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v16, "identifier")}];
        v18 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:v17];

        v19 = [KGMemoryEdge alloc];
        v43 = v7;
        v20 = [v7 properties];
        v41 = v18;
        v42 = v13;
        v21 = [(KGMemoryEdge *)v19 initWithIdentifier:nextEdgeIdentifier labels:v40 properties:v20 sourceNode:v13 targetNode:v18];

        memoryEdgeByIdentifier = self->_memoryEdgeByIdentifier;
        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:nextEdgeIdentifier];
        [(NSMutableDictionary *)memoryEdgeByIdentifier setObject:v21 forKeyedSubscript:v23];

        edgeIdentifiersBySourceNodeIdentifier = self->_edgeIdentifiersBySourceNodeIdentifier;
        v25 = [(KGMemoryEdge *)v21 sourceNode];
        -[KGMutableDirectedBinaryAdjacency insertSource:target:](edgeIdentifiersBySourceNodeIdentifier, "insertSource:target:", [v25 identifier], nextEdgeIdentifier);

        edgeIdentifiersByTargetNodeIdentifier = self->_edgeIdentifiersByTargetNodeIdentifier;
        v27 = [(KGMemoryEdge *)v21 targetNode];
        -[KGMutableDirectedBinaryAdjacency insertSource:target:](edgeIdentifiersByTargetNodeIdentifier, "insertSource:target:", [v27 identifier], nextEdgeIdentifier);

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v28 = v40;
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
    v4 = [MEMORY[0x277CCAD78] UUID];
    v5 = self->_graphIdentifier;
    self->_graphIdentifier = v4;

    graphIdentifier = self->_graphIdentifier;
  }

  return graphIdentifier;
}

- (KGMemoryGraphStore)init
{
  v2 = [(KGMemoryGraphStore *)self initForSubclasses];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    graphIdentifier = v2->_graphIdentifier;
    v2->_graphIdentifier = v3;
  }

  return v2;
}

- (id)initForSubclasses
{
  v16.receiver = self;
  v16.super_class = KGMemoryGraphStore;
  v2 = [(KGMemoryGraphStore *)&v16 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    memoryNodeByIdentifier = v2->_memoryNodeByIdentifier;
    v2->_memoryNodeByIdentifier = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    nodeIdentifiersByLabel = v2->_nodeIdentifiersByLabel;
    v2->_nodeIdentifiersByLabel = v5;

    v7 = [MEMORY[0x277CBEB38] dictionary];
    memoryEdgeByIdentifier = v2->_memoryEdgeByIdentifier;
    v2->_memoryEdgeByIdentifier = v7;

    v9 = [MEMORY[0x277CBEB38] dictionary];
    edgeIdentifiersByLabel = v2->_edgeIdentifiersByLabel;
    v2->_edgeIdentifiersByLabel = v9;

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
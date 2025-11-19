@interface KGDegasGraphStore
- (BOOL)_lock_enumerateEdgesWithIdentifiers:(id)a3 entityFactory:(id)a4 error:(id *)a5 block:(id)a6;
- (BOOL)_lock_filterEdgesWithOptionalLabels:(id)a3 includeTombstones:(BOOL)a4 edgeIdentifiers:(id *)a5 error:(id *)a6;
- (BOOL)_lock_filterEdgesWithProperties:(id)a3 includeTombstones:(BOOL)a4 edgeIdentifiers:(id *)a5 error:(id *)a6;
- (BOOL)_lock_filterEdgesWithRequiredLabels:(id)a3 includeTombstones:(BOOL)a4 edgeIdentifiers:(id *)a5 error:(id *)a6;
- (BOOL)_lock_filterNodesWithOptionalLabels:(id)a3 includeTombstones:(BOOL)a4 nodeIdentifiers:(id *)a5 error:(id *)a6;
- (BOOL)_lock_filterNodesWithProperties:(id)a3 includeTombstones:(BOOL)a4 nodeIdentifiers:(id *)a5 error:(id *)a6;
- (BOOL)_lock_filterNodesWithRequiredLabels:(id)a3 includeTombstones:(BOOL)a4 nodeIdentifiers:(id *)a5 error:(id *)a6;
- (BOOL)addEdges:(id)a3 error:(id *)a4;
- (BOOL)addNodes:(id)a3 error:(id *)a4;
- (BOOL)beginTransactionWithError:(id *)a3;
- (BOOL)commitTransactionWithError:(id *)a3;
- (BOOL)copyToURL:(id)a3 error:(id *)a4;
- (BOOL)openWithMode:(unint64_t)a3 error:(id *)a4;
- (BOOL)removeEdgeForIdentifier:(unint64_t)a3 error:(id *)a4;
- (BOOL)removeEdgesForIdentifiers:(id)a3 error:(id *)a4;
- (BOOL)removeNodeForIdentifier:(unint64_t)a3 error:(id *)a4;
- (BOOL)removeNodesForIdentifiers:(id)a3 error:(id *)a4;
- (BOOL)rollbackTransactionWithError:(id *)a3;
- (BOOL)updateEdgeForIdentifier:(unint64_t)a3 withProperties:(id)a4 error:(id *)a5;
- (BOOL)updateNodeForIdentifier:(unint64_t)a3 withProperties:(id)a4 error:(id *)a5;
- (KGDegasGraphStore)initWithURL:(id)a3;
- (NSUUID)graphIdentifier;
- (id)_lock_edgeIdentifiersMatchingFilter:(id)a3 intersectingIdentifiers:(id)a4 error:(id *)a5;
- (id)_lock_edgeIdentifiersWithStartNodeIdentifiers:(id)a3 edgeDirection:(unint64_t)a4 error:(id *)a5;
- (id)_lock_edgeIdentifiersWithStartNodeIdentifiers:(id)a3 intersectingEdgeIdentifiers:(id)a4 edgeDirection:(unint64_t)a5 error:(id *)a6;
- (id)_lock_graphIdentifier;
- (id)_lock_neighborNodeIdentifiersWithStartNodeIdentifiers:(id)a3 edgeDirection:(unint64_t)a4 edgeFilter:(id)a5 error:(id *)a6;
- (id)_lock_nodeForIdentifier:(unint64_t)a3 entityFactory:(id)a4 error:(id *)a5;
- (id)_lock_nodeIdentifiersMatchingFilter:(id)a3 intersectingIdentifiers:(id)a4 error:(id *)a5;
- (id)_lock_nodeIdentifiersOfEdgesWithIdentifiers:(id)a3 edgeDirection:(unint64_t)a4 error:(id *)a5;
- (id)_lock_sourcesByTargetWithEdgeIdentifiers:(id)a3 error:(id *)a4;
- (id)_lock_targetsBySourceWithEdgeIdentifiers:(id)a3 error:(id *)a4;
- (id)_resolvedPropertyValue:(id)a3 isScalar:(BOOL *)a4;
- (id)arrayOfEdgesWithIdentifiers:(id)a3 entityFactory:(id)a4 error:(id *)a5;
- (id)arrayOfNodesWithIdentifiers:(id)a3 entityFactory:(id)a4 error:(id *)a5;
- (id)changesAfterToken:(id)a3 transactionLimit:(int64_t)a4 error:(id *)a5;
- (id)edgeChangesAfterToken:(id)a3 transactionLimit:(int64_t)a4 edgeFilter:(id)a5 error:(id *)a6;
- (id)edgeForIdentifier:(unint64_t)a3 entityFactory:(id)a4 error:(id *)a5;
- (id)edgeIdentifiersBetween:(id)a3 endNodeIdentifiers:(id)a4 edgeFilter:(id)a5 edgeDirection:(unint64_t)a6 error:(id *)a7;
- (id)edgeIdentifiersForNodeIdentifier:(unint64_t)a3 withLabels:(id)a4 edgeDirection:(unint64_t)a5 error:(id *)a6;
- (id)edgeIdentifiersMatchingFilter:(id)a3 intersectingIdentifiers:(id)a4 error:(id *)a5;
- (id)edgeIdentifiersWithStartNodeIdentifiers:(id)a3 edgeDirection:(unint64_t)a4 error:(id *)a5;
- (id)edgeIdentifiersWithStartNodeIdentifiers:(id)a3 intersectingEdgeIdentifiers:(id)a4 edgeDirection:(unint64_t)a5 error:(id *)a6;
- (id)edgeLabels;
- (id)labelsOfEdgesForIdentifiers:(id)a3;
- (id)labelsOfNodesForIdentifiers:(id)a3;
- (id)neighborNodeIdentifiersWithStartNodeIdentifiers:(id)a3 edgeDirection:(unint64_t)a4 edgeFilter:(id)a5 error:(id *)a6;
- (id)nodeChangesAfterToken:(id)a3 transactionLimit:(int64_t)a4 nodeFilter:(id)a5 error:(id *)a6;
- (id)nodeForIdentifier:(unint64_t)a3 entityFactory:(id)a4 error:(id *)a5;
- (id)nodeIdentifiersMatchingFilter:(id)a3 intersectingIdentifiers:(id)a4 error:(id *)a5;
- (id)nodeIdentifiersOfEdgesWithIdentifiers:(id)a3 edgeDirection:(unint64_t)a4 error:(id *)a5;
- (id)nodeLabels;
- (id)orderedArrayOfEdgesWithIdentifiers:(id)a3 entityFactory:(id)a4 error:(id *)a5;
- (id)orderedArrayOfNodesWithIdentifiers:(id)a3 entityFactory:(id)a4 error:(id *)a5;
- (id)propertiesForEdgesWithIdentifiers:(id)a3 propertyName:(id)a4 error:(id *)a5;
- (id)propertiesForNodesWithIdentifiers:(id)a3 propertyName:(id)a4 error:(id *)a5;
- (id)sourcesByTargetWithEdgeIdentifiers:(id)a3 error:(id *)a4;
- (id)targetsBySourceWithEdgeIdentifiers:(id)a3 error:(id *)a4;
- (id)transitiveClosureNeighborNodeIdentifiersWithStartNodeIdentifiers:(id)a3 edgeDirection:(unint64_t)a4 edgeFilter:(id)a5 error:(id *)a6;
- (unint64_t)graphVersion;
- (void)_lock_enumerateNodesWithIdentifiers:(id)a3 entityFactory:(id)a4 block:(id)a5;
- (void)close;
- (void)setGraphVersion:(unint64_t)a3;
@end

@implementation KGDegasGraphStore

- (id)edgeChangesAfterToken:(id)a3 transactionLimit:(int64_t)a4 edgeFilter:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a3;
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  v12 = [v11 transactionSequenceNumber];

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v10 setIncludeTombstones:1];
  v14 = [(KGDegasGraphStore *)self edgeIdentifiersMatchingFilter:v10 intersectingIdentifiers:0 error:a6];
  if (v14)
  {
    [v10 setIncludeTombstones:0];
    database = self->_database;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __77__KGDegasGraphStore_edgeChangesAfterToken_transactionLimit_edgeFilter_error___block_invoke;
    v19[3] = &unk_2797FDDA0;
    v19[4] = self;
    v20 = v14;
    v16 = v13;
    v21 = v16;
    [(KGDatabase *)database transactionChangesAfterTransactionId:v12 limit:a4 block:v19];
    os_unfair_lock_unlock(&self->_lock);
    v17 = v16;
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v17 = 0;
  }

  return v17;
}

void __77__KGDegasGraphStore_edgeChangesAfterToken_transactionLimit_edgeFilter_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8)
{
  v12 = a8;
  v13 = a6;
  v14 = a4;
  v15 = [KGTransactionToken alloc];
  v16 = [*(a1 + 32) _lock_graphIdentifier];
  v21 = [(KGTransactionToken *)v15 initForGraphIdentifier:v16 transactionSequence:a2];

  v17 = [v14 identifierSetByIntersectingIdentifierSet:*(a1 + 40)];

  v18 = [v13 identifierSetByIntersectingIdentifierSet:*(a1 + 40)];

  v19 = [v12 identifierSetByIntersectingIdentifierSet:*(a1 + 40)];

  v20 = [[KGGraphChange alloc] initWithTransactionToken:v21 edgesInserted:v17 edgesUpdated:v18 edgesDeleted:v19];
  [*(a1 + 48) addObject:v20];
}

- (id)nodeChangesAfterToken:(id)a3 transactionLimit:(int64_t)a4 nodeFilter:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a3;
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  v12 = [v11 transactionSequenceNumber];

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v10 setIncludeTombstones:1];
  v14 = [(KGDegasGraphStore *)self nodeIdentifiersMatchingFilter:v10 intersectingIdentifiers:0 error:a6];
  if (v14)
  {
    [v10 setIncludeTombstones:0];
    database = self->_database;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __77__KGDegasGraphStore_nodeChangesAfterToken_transactionLimit_nodeFilter_error___block_invoke;
    v19[3] = &unk_2797FDDA0;
    v19[4] = self;
    v20 = v14;
    v16 = v13;
    v21 = v16;
    [(KGDatabase *)database transactionChangesAfterTransactionId:v12 limit:a4 block:v19];
    os_unfair_lock_unlock(&self->_lock);
    v17 = v16;
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v17 = 0;
  }

  return v17;
}

void __77__KGDegasGraphStore_nodeChangesAfterToken_transactionLimit_nodeFilter_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v11 = a7;
  v12 = a5;
  v13 = a3;
  v14 = [KGTransactionToken alloc];
  v15 = [*(a1 + 32) _lock_graphIdentifier];
  v20 = [(KGTransactionToken *)v14 initForGraphIdentifier:v15 transactionSequence:a2];

  v16 = [v13 identifierSetByIntersectingIdentifierSet:*(a1 + 40)];

  v17 = [v12 identifierSetByIntersectingIdentifierSet:*(a1 + 40)];

  v18 = [v11 identifierSetByIntersectingIdentifierSet:*(a1 + 40)];

  v19 = [[KGGraphChange alloc] initWithTransactionToken:v20 nodesInserted:v16 nodesUpdated:v17 nodesDeleted:v18];
  [*(a1 + 48) addObject:v19];
}

- (id)changesAfterToken:(id)a3 transactionLimit:(int64_t)a4 error:(id *)a5
{
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  v8 = [v7 transactionSequenceNumber];

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  database = self->_database;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__KGDegasGraphStore_changesAfterToken_transactionLimit_error___block_invoke;
  v15[3] = &unk_2797FDD78;
  v15[4] = self;
  v11 = v9;
  v16 = v11;
  [(KGDatabase *)database transactionChangesAfterTransactionId:v8 limit:a4 block:v15];
  os_unfair_lock_unlock(&self->_lock);
  v12 = v16;
  v13 = v11;

  return v11;
}

void __62__KGDegasGraphStore_changesAfterToken_transactionLimit_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [KGTransactionToken alloc];
  v22 = [*(a1 + 32) _lock_graphIdentifier];
  v24 = [(KGTransactionToken *)v21 initForGraphIdentifier:v22 transactionSequence:a2];

  v23 = [[KGGraphChange alloc] initWithTransactionToken:v24 nodesInserted:v20 edgesInserted:v19 nodesUpdated:v18 edgesUpdated:v17 nodesDeleted:v16 edgesDeleted:v15];
  [*(a1 + 40) addObject:v23];
}

- (BOOL)copyToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  LOBYTE(a4) = [(KGDatabase *)self->_database copyToURL:v6 error:a4];

  os_unfair_lock_unlock(&self->_lock);
  return a4;
}

- (void)close
{
  [(KGDatabase *)self->_database close];
  database = self->_database;
  self->_database = 0;
}

- (BOOL)openWithMode:(unint64_t)a3 error:(id *)a4
{
  if (self->_url)
  {
    v7 = [[KGDatabase alloc] initWithURL:self->_url];
    database = self->_database;
    self->_database = v7;

    if (a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = 6;
    }

    if (v9)
    {
      self->_isReadOnly = 1;
    }

    if ([KGDatabase openWithMode:"openWithMode:error:" error:?])
    {
      return 1;
    }

    v13 = self->_database;
    self->_database = 0;
  }

  else if (a4)
  {
    v11 = kg_errorWithCode(5004);
    v12 = v11;
    result = 0;
    *a4 = v11;
    return result;
  }

  return 0;
}

- (BOOL)rollbackTransactionWithError:(id *)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_transactionCounter - 1;
  self->_transactionCounter = v5;
  if (v5)
  {
    v6 = KGLoggingConnection();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v9 = 0;
      _os_log_fault_impl(&dword_255870000, v6, OS_LOG_TYPE_FAULT, "graph database transaction rollback called at non-root level!", v9, 2u);
    }
  }

  v7 = [(KGDatabase *)self->_database rollbackTransactionWithError:a3];
  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (BOOL)commitTransactionWithError:(id *)a3
{
  os_unfair_lock_lock(&self->_lock);
  transactionCounter = self->_transactionCounter;
  self->_transactionCounter = transactionCounter - 1;
  if (transactionCounter <= 0)
  {
    __assert_rtn("[KGDegasGraphStore commitTransactionWithError:]", "KGDegasGraphStore.m", 1349, "_transactionCounter >= 0");
  }

  v6 = transactionCounter != 1 || [(KGDatabase *)self->_database commitTransactionWithError:a3];
  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (BOOL)beginTransactionWithError:(id *)a3
{
  os_unfair_lock_lock(&self->_lock);
  transactionCounter = self->_transactionCounter;
  if (transactionCounter)
  {
    v6 = 1;
  }

  else
  {
    v6 = [(KGDatabase *)self->_database beginTransactionWithError:a3];
    transactionCounter = self->_transactionCounter;
  }

  self->_transactionCounter = transactionCounter + 1;
  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (BOOL)updateEdgeForIdentifier:(unint64_t)a3 withProperties:(id)a4 error:(id *)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = a4;
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  v9 = [(KGDatabase *)self->_database setEdgeProperties:v8 forIdentifier:a3 error:a5];

  if (!v9)
  {
    v10 = KGLoggingConnection();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = *a5;
      v14 = 138412290;
      v15 = v13;
      _os_log_error_impl(&dword_255870000, v10, OS_LOG_TYPE_ERROR, "edge update failed: %@", &v14, 0xCu);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)updateNodeForIdentifier:(unint64_t)a3 withProperties:(id)a4 error:(id *)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = a4;
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  v9 = [(KGDatabase *)self->_database setNodeProperties:v8 forIdentifier:a3 error:a5];

  if (!v9)
  {
    v10 = KGLoggingConnection();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = *a5;
      v14 = 138412290;
      v15 = v13;
      _os_log_error_impl(&dword_255870000, v10, OS_LOG_TYPE_ERROR, "node update failed: %@", &v14, 0xCu);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)removeEdgesForIdentifiers:(id)a3 error:(id *)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  LOBYTE(a4) = [(KGDatabase *)self->_database removeEdges:v6 error:a4];

  os_unfair_lock_unlock(&self->_lock);
  return a4;
}

- (BOOL)removeNodesForIdentifiers:(id)a3 error:(id *)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  LOBYTE(a4) = [(KGDatabase *)self->_database removeNodes:v6 error:a4];

  os_unfair_lock_unlock(&self->_lock);
  return a4;
}

- (BOOL)removeEdgeForIdentifier:(unint64_t)a3 error:(id *)a4
{
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  LOBYTE(a4) = [(KGDatabase *)self->_database removeEdge:a3 error:a4];
  os_unfair_lock_unlock(&self->_lock);
  return a4;
}

- (BOOL)removeNodeForIdentifier:(unint64_t)a3 error:(id *)a4
{
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  LOBYTE(a4) = [(KGDatabase *)self->_database removeNode:a3 error:a4];
  os_unfair_lock_unlock(&self->_lock);
  return a4;
}

- (id)labelsOfEdgesForIdentifiers:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  v5 = [(KGDatabase *)self->_database labelsOfEdgesForIdentifiers:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)labelsOfNodesForIdentifiers:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  v5 = [(KGDatabase *)self->_database labelsOfNodesForIdentifiers:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)edgeLabels
{
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  v3 = [(KGDatabase *)self->_database edgeLabels];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)nodeLabels
{
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  v3 = [(KGDatabase *)self->_database nodeLabels];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)propertiesForEdgesWithIdentifiers:(id)a3 propertyName:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  v9 = objc_alloc_init(KGMutablePropertyValueArray);
  database = self->_database;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__KGDegasGraphStore_propertiesForEdgesWithIdentifiers_propertyName_error___block_invoke;
  v13[3] = &unk_2797FDD50;
  v11 = v9;
  v14 = v11;
  [(KGDatabase *)database enumeratePropertyValuesForEdgesWithIdentifiers:v8 propertyName:v7 withBlock:v13];

  os_unfair_lock_unlock(&self->_lock);

  return v11;
}

- (id)propertiesForNodesWithIdentifiers:(id)a3 propertyName:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  v9 = objc_alloc_init(KGMutablePropertyValueArray);
  database = self->_database;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__KGDegasGraphStore_propertiesForNodesWithIdentifiers_propertyName_error___block_invoke;
  v13[3] = &unk_2797FDD50;
  v11 = v9;
  v14 = v11;
  [(KGDatabase *)database enumeratePropertyValuesForNodesWithIdentifiers:v8 propertyName:v7 withBlock:v13];

  os_unfair_lock_unlock(&self->_lock);

  return v11;
}

- (id)sourcesByTargetWithEdgeIdentifiers:(id)a3 error:(id *)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(KGDegasGraphStore *)self _lock_sourcesByTargetWithEdgeIdentifiers:v6 error:a4];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)targetsBySourceWithEdgeIdentifiers:(id)a3 error:(id *)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(KGDegasGraphStore *)self _lock_targetsBySourceWithEdgeIdentifiers:v6 error:a4];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)_lock_sourcesByTargetWithEdgeIdentifiers:(id)a3 error:(id *)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  database = self->_database;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __68__KGDegasGraphStore__lock_sourcesByTargetWithEdgeIdentifiers_error___block_invoke;
  v23[3] = &unk_2797FDD28;
  v8 = v6;
  v24 = v8;
  [(KGDatabase *)database enumerateSourceAndTargetIdentifiersWithEdgeIdentifiers:v5 block:v23];
  v9 = objc_alloc_init(KGMutableDirectedBinaryAdjacency);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = [v10 objectForKeyedSubscript:{v15, v19}];
        -[KGMutableDirectedBinaryAdjacency setTargets:forSource:](v9, "setTargets:forSource:", v16, [v15 unsignedIntegerValue]);
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v9;
}

void __68__KGDegasGraphStore__lock_sourcesByTargetWithEdgeIdentifiers_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v6 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (!v6)
  {
    v6 = objc_alloc_init(KGMutableElementIdentifierSet);
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
  }

  [(KGMutableElementIdentifierSet *)v6 addIdentifier:a3];
}

- (id)_lock_targetsBySourceWithEdgeIdentifiers:(id)a3 error:(id *)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  database = self->_database;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __68__KGDegasGraphStore__lock_targetsBySourceWithEdgeIdentifiers_error___block_invoke;
  v23[3] = &unk_2797FDD28;
  v8 = v6;
  v24 = v8;
  [(KGDatabase *)database enumerateSourceAndTargetIdentifiersWithEdgeIdentifiers:v5 block:v23];
  v9 = objc_alloc_init(KGMutableDirectedBinaryAdjacency);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = [v10 objectForKeyedSubscript:{v15, v19}];
        -[KGMutableDirectedBinaryAdjacency setTargets:forSource:](v9, "setTargets:forSource:", v16, [v15 unsignedIntegerValue]);
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v9;
}

void __68__KGDegasGraphStore__lock_targetsBySourceWithEdgeIdentifiers_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v6 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (!v6)
  {
    v6 = objc_alloc_init(KGMutableElementIdentifierSet);
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
  }

  [(KGMutableElementIdentifierSet *)v6 addIdentifier:a4];
}

- (id)nodeIdentifiersOfEdgesWithIdentifiers:(id)a3 edgeDirection:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  os_unfair_lock_lock(&self->_lock);
  v9 = [(KGDegasGraphStore *)self _lock_nodeIdentifiersOfEdgesWithIdentifiers:v8 edgeDirection:a4 error:a5];

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (id)_lock_nodeIdentifiersOfEdgesWithIdentifiers:(id)a3 edgeDirection:(unint64_t)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  if (![v8 count])
  {
    v10 = objc_alloc_init(KGElementIdentifierSet);
    goto LABEL_14;
  }

  v9 = objc_alloc_init(KGMutableElementIdentifierSet);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    if ([(KGDatabase *)self->_database appendNodeIdentifiersOfEdgesWithIdentifiers:v8 sourceNodeIdentifiers:v9 targetNodeIdentifiers:0 error:a5])
    {
      goto LABEL_11;
    }

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  v11 = [(KGDatabase *)self->_database appendNodeIdentifiersOfEdgesWithIdentifiers:v8 sourceNodeIdentifiers:0 targetNodeIdentifiers:v9 error:a5];
  if ((v6 & 2) != 0)
  {
    if (!v11)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_11:
  v10 = v9;
LABEL_13:

LABEL_14:

  return v10;
}

- (id)transitiveClosureNeighborNodeIdentifiersWithStartNodeIdentifiers:(id)a3 edgeDirection:(unint64_t)a4 edgeFilter:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  if ([v10 count])
  {
    os_unfair_lock_lock(&self->_lock);
    CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
    v12 = [(KGDatabase *)self->_database transitiveClosureNeighborNodeIdentifiersWithStartNodeIdentifiers:v10 edgeDirection:a4 edgeFilter:v11 error:a6];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v12 = objc_alloc_init(KGElementIdentifierSet);
  }

  return v12;
}

- (id)neighborNodeIdentifiersWithStartNodeIdentifiers:(id)a3 edgeDirection:(unint64_t)a4 edgeFilter:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a3;
  os_unfair_lock_lock(&self->_lock);
  v12 = [(KGDegasGraphStore *)self _lock_neighborNodeIdentifiersWithStartNodeIdentifiers:v11 edgeDirection:a4 edgeFilter:v10 error:a6];

  os_unfair_lock_unlock(&self->_lock);

  return v12;
}

- (id)_lock_neighborNodeIdentifiersWithStartNodeIdentifiers:(id)a3 edgeDirection:(unint64_t)a4 edgeFilter:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  os_unfair_lock_assert_owner(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  if ([v10 count])
  {
    v12 = [(KGDatabase *)self->_database neighborNodeIdentifiersWithStartNodeIdentifiers:v10 edgeDirection:a4 edgeFilter:v11 error:a6];
  }

  else
  {
    v12 = objc_alloc_init(KGElementIdentifierSet);
  }

  v13 = v12;

  return v13;
}

- (id)edgeIdentifiersForNodeIdentifier:(unint64_t)a3 withLabels:(id)a4 edgeDirection:(unint64_t)a5 error:(id *)a6
{
  v10 = a4;
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  v11 = [(KGDatabase *)self->_database edgeIdentifiersWithLabels:v10 direction:a5 forNodeIdentifier:a3 error:a6];

  os_unfair_lock_unlock(&self->_lock);

  return v11;
}

- (id)edgeIdentifiersBetween:(id)a3 endNodeIdentifiers:(id)a4 edgeFilter:(id)a5 edgeDirection:(unint64_t)a6 error:(id *)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  if ((v8 & 2) != 0)
  {
    v15 = [(KGDatabase *)self->_database filterEdgeIdentifiersBetween:v12 targetNodeIdentifiers:v13 filterEdgeIdentifiers:0 error:a7];
    if (!v15)
    {
      os_unfair_lock_unlock(&self->_lock);
LABEL_13:
      v19 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v15 = 0;
  }

  if ((v8 & 1) == 0)
  {
    v16 = 0;
    if (!v15)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  v17 = [(KGDatabase *)self->_database filterEdgeIdentifiersBetween:v13 targetNodeIdentifiers:v12 filterEdgeIdentifiers:0 error:a7];
  if (!v17)
  {
    os_unfair_lock_unlock(&self->_lock);

    goto LABEL_13;
  }

  v16 = v17;
  if (!v15)
  {
    v16 = v17;
    v15 = v16;
    goto LABEL_15;
  }

  v18 = [v15 identifierSetByFormingUnion:v17];

  v15 = v18;
  if (v18)
  {
LABEL_15:
    v19 = [(KGDegasGraphStore *)self _lock_edgeIdentifiersMatchingFilter:v14 intersectingIdentifiers:v15 error:a7];
    goto LABEL_16;
  }

LABEL_10:
  v19 = 0;
LABEL_16:
  os_unfair_lock_unlock(&self->_lock);

LABEL_17:

  return v19;
}

- (id)edgeIdentifiersWithStartNodeIdentifiers:(id)a3 intersectingEdgeIdentifiers:(id)a4 edgeDirection:(unint64_t)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a3;
  os_unfair_lock_lock(&self->_lock);
  v12 = [(KGDegasGraphStore *)self _lock_edgeIdentifiersWithStartNodeIdentifiers:v11 intersectingEdgeIdentifiers:v10 edgeDirection:a5 error:a6];

  os_unfair_lock_unlock(&self->_lock);

  return v12;
}

- (id)_lock_edgeIdentifiersWithStartNodeIdentifiers:(id)a3 intersectingEdgeIdentifiers:(id)a4 edgeDirection:(unint64_t)a5 error:(id *)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  v12 = objc_alloc_init(KGElementIdentifierSet);
  v13 = objc_alloc_init(KGElementIdentifierSet);
  v14 = v11;
  v15 = v14;
  if ((v7 & 1) == 0)
  {
    v16 = v14;
    if ((v7 & 2) != 0)
    {
      goto LABEL_10;
    }

LABEL_7:
    v16 = v15;
    goto LABEL_12;
  }

  v17 = [(KGDatabase *)self->_database filterInEdgeIdentifiersOfNodesWithIdentifiers:v10 filterEdgeIdentifiers:v14 error:a6];

  if (!v17)
  {
    v18 = 0;
    v12 = 0;
    v16 = v15;
    goto LABEL_18;
  }

  if ((v7 & 2) == 0)
  {
    v12 = v17;
    goto LABEL_7;
  }

  v16 = [(KGElementIdentifierSet *)v17 identifierSetByIntersectingIdentifierSet:v15];

  v12 = v17;
LABEL_10:
  v18 = [(KGDatabase *)self->_database filterOutEdgeIdentifiersOfNodesWithIdentifiers:v10 filterEdgeIdentifiers:v16 error:a6];

  if (!v18)
  {
    v13 = 0;
    goto LABEL_18;
  }

  v13 = v18;
LABEL_12:
  if ([(KGElementIdentifierSet *)v12 isEmpty])
  {
    v18 = v13;
    v13 = v18;
  }

  else if ([(KGElementIdentifierSet *)v13 isEmpty])
  {
    v18 = v12;
    v12 = v18;
  }

  else
  {
    v18 = [(KGElementIdentifierSet *)v12 identifierSetByFormingUnion:v13];
  }

LABEL_18:

  return v18;
}

- (id)edgeIdentifiersWithStartNodeIdentifiers:(id)a3 edgeDirection:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  os_unfair_lock_lock(&self->_lock);
  v9 = [(KGDegasGraphStore *)self _lock_edgeIdentifiersWithStartNodeIdentifiers:v8 edgeDirection:a4 error:a5];

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (id)_lock_edgeIdentifiersWithStartNodeIdentifiers:(id)a3 edgeDirection:(unint64_t)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  v9 = objc_alloc_init(KGElementIdentifierSet);
  v10 = objc_alloc_init(KGElementIdentifierSet);
  if ((v6 & 1) != 0 && ([(KGDatabase *)self->_database inEdgeIdentifiersOfNodesWithIdentifiers:v8 error:a5], v11 = objc_claimAutoreleasedReturnValue(), v9, (v9 = v11) == 0))
  {
    v12 = 0;
  }

  else if ((v6 & 2) == 0 || ([(KGDatabase *)self->_database outEdgeIdentifiersOfNodesWithIdentifiers:v8 error:a5], v12 = objc_claimAutoreleasedReturnValue(), v10, (v10 = v12) != 0))
  {
    if ([(KGElementIdentifierSet *)v9 isEmpty])
    {
      v12 = v10;
      v10 = v12;
    }

    else if ([(KGElementIdentifierSet *)v10 isEmpty])
    {
      v12 = v9;
      v9 = v12;
    }

    else
    {
      v12 = [(KGElementIdentifierSet *)v9 identifierSetByFormingUnion:v10];
    }
  }

  return v12;
}

- (id)edgeIdentifiersMatchingFilter:(id)a3 intersectingIdentifiers:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  os_unfair_lock_lock(&self->_lock);
  v10 = [(KGDegasGraphStore *)self _lock_edgeIdentifiersMatchingFilter:v9 intersectingIdentifiers:v8 error:a5];

  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (id)_lock_edgeIdentifiersMatchingFilter:(id)a3 intersectingIdentifiers:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  v10 = v9;
  v30 = v10;
  v11 = objc_autoreleasePoolPush();
  if ([v8 noLabelsOrProperties])
  {
    if (v10)
    {
      v12 = 0;
LABEL_9:

      objc_autoreleasePoolPop(v11);
      v12 = 0;
      goto LABEL_13;
    }

    database = self->_database;
    v29 = 0;
    v21 = [(KGDatabase *)database allEdgesWithError:&v29];
    v12 = v29;
    v30 = v21;
    if (v21)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = [v8 requiredLabels];
    v28 = 0;
    v14 = -[KGDegasGraphStore _lock_filterEdgesWithRequiredLabels:includeTombstones:edgeIdentifiers:error:](self, "_lock_filterEdgesWithRequiredLabels:includeTombstones:edgeIdentifiers:error:", v13, [v8 includeTombstones], &v30, &v28);
    v12 = v28;

    if (v14)
    {
      v15 = [v8 optionalLabels];
      v27 = v12;
      v16 = -[KGDegasGraphStore _lock_filterEdgesWithOptionalLabels:includeTombstones:edgeIdentifiers:error:](self, "_lock_filterEdgesWithOptionalLabels:includeTombstones:edgeIdentifiers:error:", v15, [v8 includeTombstones], &v30, &v27);
      v17 = v27;

      if (v16)
      {
        v18 = [v8 properties];
        v26 = v17;
        v19 = -[KGDegasGraphStore _lock_filterEdgesWithProperties:includeTombstones:edgeIdentifiers:error:](self, "_lock_filterEdgesWithProperties:includeTombstones:edgeIdentifiers:error:", v18, [v8 includeTombstones], &v30, &v26);
        v12 = v26;

        if (v19)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v12 = v17;
      }
    }
  }

  v22 = v30;
  v30 = 0;

  objc_autoreleasePoolPop(v11);
  if (a5)
  {
    v23 = v12;
    *a5 = v12;
  }

LABEL_13:
  v24 = v30;

  return v24;
}

- (BOOL)_lock_filterEdgesWithProperties:(id)a3 includeTombstones:(BOOL)a4 edgeIdentifiers:(id *)a5 error:(id *)a6
{
  v46 = a4;
  v54 = *MEMORY[0x277D85DE8];
  v9 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if ([v9 count])
  {
    v10 = *a5;
    v11 = v10;
    if (v10 && ([v10 isEmpty] & 1) != 0)
    {
      LOBYTE(a5) = 1;
LABEL_44:

      goto LABEL_45;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v9;
    v45 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (!v45)
    {
LABEL_40:

      if (v11)
      {
        v11 = v11;
        obj = *a5;
        *a5 = v11;
        LOBYTE(a5) = 1;
LABEL_42:
      }

      else
      {
        LOBYTE(a5) = 0;
      }

      goto LABEL_44;
    }

    v12 = *v50;
    v43 = *v50;
    v44 = a6;
    v41 = a5;
    v42 = v9;
LABEL_7:
    v13 = 0;
    while (1)
    {
      if (*v50 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v49 + 1) + 8 * v13);
      v15 = [obj objectForKeyedSubscript:v14];
      v48 = 1;
      v16 = [(KGDegasGraphStore *)self _resolvedPropertyValue:v15 isScalar:&v48];

      if (!v16)
      {
        v35 = objc_alloc_init(KGMutableElementIdentifierSet);
        v36 = *v41;
        *v41 = v35;

        LOBYTE(a5) = 1;
LABEL_38:
        v9 = v42;
        goto LABEL_42;
      }

      if ((v48 & 1) == 0)
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
        database = self->_database;
        v19 = [v17 value];
        -[KGDatabase filterEdgeIdentifiersForPropertyName:value:comparator:edgeIdentifiers:error:](database, "filterEdgeIdentifiersForPropertyName:value:comparator:edgeIdentifiers:error:", v14, v19, [v17 comparator], v11, a6);
        v21 = v20 = a6;

        if (v46)
        {
          v22 = self->_database;
          v23 = [v17 value];
          a5 = -[KGDatabase filterTombstoneEdgeIdentifiersForPropertyName:value:comparator:edgeIdentifiers:error:](v22, "filterTombstoneEdgeIdentifiersForPropertyName:value:comparator:edgeIdentifiers:error:", v14, v23, [v17 comparator], v11, v20);

          v24 = [v21 identifierSetByFormingUnion:a5];

          v21 = v24;
          goto LABEL_20;
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          a5 = [(KGDatabase *)self->_database filterEdgeIdentifiersForPropertyName:v14 value:v16 comparator:1 edgeIdentifiers:v11 error:a6];
          if (!v46)
          {
            goto LABEL_27;
          }

          v25 = [(KGDatabase *)self->_database filterTombstoneEdgeIdentifiersForPropertyName:v14 value:v16 comparator:1 edgeIdentifiers:v11 error:a6];
          goto LABEL_24;
        }

        v17 = v16;
        v26 = self->_database;
        v27 = [v17 value1];
        v28 = [v17 value2];
        -[KGDatabase filterEdgeIdentifiersForPropertyName:rangeValue1:rangeValue2:comparator:edgeIdentifiers:error:](v26, "filterEdgeIdentifiersForPropertyName:rangeValue1:rangeValue2:comparator:edgeIdentifiers:error:", v14, v27, v28, [v17 comparator], v11, a6);
        v21 = v29 = a6;

        if (v46)
        {
          v40 = self->_database;
          v30 = [v17 value1];
          v31 = [v17 value2];
          a5 = -[KGDatabase filterTombstoneEdgeIdentifiersForPropertyName:rangeValue1:rangeValue2:comparator:edgeIdentifiers:error:](v40, "filterTombstoneEdgeIdentifiersForPropertyName:rangeValue1:rangeValue2:comparator:edgeIdentifiers:error:", v14, v30, v31, [v17 comparator], v11, v29);

          v32 = [v21 identifierSetByFormingUnion:a5];

          v21 = v32;
LABEL_20:
          v12 = v43;
LABEL_25:

          goto LABEL_26;
        }
      }

      v12 = v43;
LABEL_26:

      a5 = v21;
      a6 = v44;
LABEL_27:
      if (!a5)
      {
        v37 = *v41;
        *v41 = 0;

        goto LABEL_38;
      }

      if (v11)
      {
        v33 = [v11 identifierSetByIntersectingIdentifierSet:a5];

        v11 = v33;
      }

      else
      {
        v11 = a5;
      }

      v34 = [v11 isEmpty];

      if (v34)
      {
        a5 = v41;
        v9 = v42;
        goto LABEL_40;
      }

      if (v45 == ++v13)
      {
        a5 = v41;
        v9 = v42;
        v45 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
        if (v45)
        {
          goto LABEL_7;
        }

        goto LABEL_40;
      }
    }

    a5 = [(KGDatabase *)self->_database filterEdgeIdentifiersForPropertyName:v14 values:v16 comparator:1 edgeIdentifiers:v11 error:a6];
    if (!v46)
    {
      goto LABEL_27;
    }

    v25 = [(KGDatabase *)self->_database filterTombstoneEdgeIdentifiersForPropertyName:v14 values:v16 comparator:1 edgeIdentifiers:v11 error:a6];
LABEL_24:
    v17 = v25;
    v21 = [a5 identifierSetByFormingUnion:v25];
    goto LABEL_25;
  }

  LOBYTE(a5) = 1;
LABEL_45:

  v38 = *MEMORY[0x277D85DE8];
  return a5;
}

- (BOOL)_lock_filterEdgesWithOptionalLabels:(id)a3 includeTombstones:(BOOL)a4 edgeIdentifiers:(id *)a5 error:(id *)a6
{
  v8 = a4;
  v10 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  if ([v10 count])
  {
    v11 = *a5;
    v12 = v11;
    if (v11 && ![v11 count])
    {
      v16 = 1;
    }

    else
    {
      v13 = [(KGDatabase *)self->_database unionOfEdgesWithLabels:v10 filterEdgeIdentifiers:v12 error:a6];
      if (v8)
      {
        v14 = [(KGDatabase *)self->_database unionOfTombstoneEdgesWithLabels:v10 filterEdgeIdentifiers:v12 error:a6];
        v15 = [v13 identifierSetByFormingUnion:v14];

        v13 = v15;
      }

      v16 = v13 != 0;
      if (v13)
      {
        objc_storeStrong(a5, v13);
      }
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (BOOL)_lock_filterEdgesWithRequiredLabels:(id)a3 includeTombstones:(BOOL)a4 edgeIdentifiers:(id *)a5 error:(id *)a6
{
  v8 = a4;
  v10 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  if ([v10 count])
  {
    v11 = *a5;
    v12 = v11;
    if (v11 && ![v11 count])
    {
      v16 = 1;
    }

    else
    {
      v13 = [(KGDatabase *)self->_database intersectionOfEdgesWithLabels:v10 filterEdgeIdentifiers:v12 error:a6];
      if (v8)
      {
        v14 = [(KGDatabase *)self->_database intersectionOfTombstoneEdgesWithLabels:v10 filterEdgeIdentifiers:v12 error:a6];
        v15 = [v13 identifierSetByFormingUnion:v14];

        v13 = v15;
      }

      v16 = v13 != 0;
      if (v13)
      {
        objc_storeStrong(a5, v13);
      }
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (id)nodeIdentifiersMatchingFilter:(id)a3 intersectingIdentifiers:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  os_unfair_lock_lock(&self->_lock);
  v10 = [(KGDegasGraphStore *)self _lock_nodeIdentifiersMatchingFilter:v9 intersectingIdentifiers:v8 error:a5];

  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (id)_lock_nodeIdentifiersMatchingFilter:(id)a3 intersectingIdentifiers:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  v10 = v9;
  v47 = v10;
  v11 = objc_autoreleasePoolPush();
  if (![v8 whereNoInAndOutEdges])
  {
    if ([v8 whereNoInEdges])
    {
      database = self->_database;
      v45 = 0;
      v17 = [(KGDatabase *)database nodeIdentifiersWhereNoInEdgesWithError:&v45];
      v14 = v45;
      if (v17)
      {
        if (v10)
        {
          v18 = [v10 identifierSetByIntersectingIdentifierSet:v17];
          v47 = v18;
        }

        else
        {
          v18 = v17;
          v47 = v18;
        }

        if (([v8 whereNoOutEdges] & 1) == 0)
        {
          v15 = v18;
          goto LABEL_14;
        }

        v19 = 1;
        goto LABEL_31;
      }

      if (([v8 whereNoOutEdges] & 1) == 0)
      {
        goto LABEL_37;
      }

      v19 = 0;
    }

    else
    {
      v14 = 0;
      if (![v8 whereNoOutEdges])
      {
        v15 = v10;
        goto LABEL_14;
      }

      v19 = 1;
    }

    v18 = v10;
LABEL_31:
    v31 = v14;
    v32 = self->_database;
    v44 = v14;
    v15 = [(KGDatabase *)v32 nodeIdentifiersWhereNoOutEdgesWithError:&v44];
    v14 = v44;

    if (!v15)
    {
      goto LABEL_37;
    }

    if (v18)
    {
      v33 = [v18 identifierSetByIntersectingIdentifierSet:v15];
      v34 = v47;
      v47 = v33;

      v15 = v33;
      if (!v19)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v47 = v15;
      if ((v19 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    goto LABEL_14;
  }

  v12 = self->_database;
  v46 = 0;
  v13 = [(KGDatabase *)v12 nodeIdentifiersWhereNoEdgesWithError:&v46];
  v14 = v46;
  if (!v13)
  {
    goto LABEL_37;
  }

  if (v10)
  {
    v15 = [v10 identifierSetByIntersectingIdentifierSet:v13];
    v47 = v15;
  }

  else
  {
    v15 = v13;
    v47 = v15;
  }

LABEL_14:
  if (![v8 noLabelsOrProperties])
  {
    v21 = [v8 requiredLabels];
    v42 = v14;
    v22 = -[KGDegasGraphStore _lock_filterNodesWithRequiredLabels:includeTombstones:nodeIdentifiers:error:](self, "_lock_filterNodesWithRequiredLabels:includeTombstones:nodeIdentifiers:error:", v21, [v8 includeTombstones], &v47, &v42);
    v23 = v42;

    if (!v22)
    {
LABEL_23:
      v14 = v23;
      goto LABEL_37;
    }

    v24 = [v8 optionalLabels];
    v41 = v23;
    v25 = -[KGDegasGraphStore _lock_filterNodesWithOptionalLabels:includeTombstones:nodeIdentifiers:error:](self, "_lock_filterNodesWithOptionalLabels:includeTombstones:nodeIdentifiers:error:", v24, [v8 includeTombstones], &v47, &v41);
    v26 = v41;

    if (v25)
    {
      v27 = [v8 properties];
      v40 = v26;
      v28 = -[KGDegasGraphStore _lock_filterNodesWithProperties:includeTombstones:nodeIdentifiers:error:](self, "_lock_filterNodesWithProperties:includeTombstones:nodeIdentifiers:error:", v27, [v8 includeTombstones], &v47, &v40);
      v14 = v40;

      if (v28)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v14 = v26;
    }

LABEL_37:
    v14 = v14;
    v35 = v47;
    v47 = 0;

    v20 = v14;
    goto LABEL_38;
  }

  if (!v15)
  {
    v29 = self->_database;
    v43 = v14;
    v30 = [(KGDatabase *)v29 allNodesWithError:&v43];
    v23 = v43;

    v47 = v30;
    if (v30)
    {
      v20 = 0;
      v14 = v23;
      goto LABEL_38;
    }

    goto LABEL_23;
  }

LABEL_16:
  v20 = 0;
LABEL_38:

  objc_autoreleasePoolPop(v11);
  v36 = v47;
  if (a5 && !v47)
  {
    v37 = v20;
    *a5 = v20;
    v36 = v47;
  }

  v38 = v36;

  return v38;
}

- (BOOL)_lock_filterNodesWithProperties:(id)a3 includeTombstones:(BOOL)a4 nodeIdentifiers:(id *)a5 error:(id *)a6
{
  v46 = a4;
  v54 = *MEMORY[0x277D85DE8];
  v9 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  if ([v9 count])
  {
    v10 = *a5;
    v11 = v10;
    if (v10 && ([v10 isEmpty] & 1) != 0)
    {
      LOBYTE(a5) = 1;
LABEL_44:

      goto LABEL_45;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v9;
    v45 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (!v45)
    {
LABEL_40:

      if (v11)
      {
        v11 = v11;
        obj = *a5;
        *a5 = v11;
        LOBYTE(a5) = 1;
LABEL_42:
      }

      else
      {
        LOBYTE(a5) = 0;
      }

      goto LABEL_44;
    }

    v12 = *v50;
    v43 = *v50;
    v44 = a6;
    v41 = a5;
    v42 = v9;
LABEL_7:
    v13 = 0;
    while (1)
    {
      if (*v50 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v49 + 1) + 8 * v13);
      v15 = [obj objectForKeyedSubscript:v14];
      v48 = 1;
      v16 = [(KGDegasGraphStore *)self _resolvedPropertyValue:v15 isScalar:&v48];

      if (!v16)
      {
        v35 = objc_alloc_init(KGMutableElementIdentifierSet);
        v36 = *v41;
        *v41 = v35;

        LOBYTE(a5) = 1;
LABEL_38:
        v9 = v42;
        goto LABEL_42;
      }

      if ((v48 & 1) == 0)
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
        database = self->_database;
        v19 = [v17 value];
        -[KGDatabase filterNodeIdentifiersForPropertyName:value:comparator:nodeIdentifiers:error:](database, "filterNodeIdentifiersForPropertyName:value:comparator:nodeIdentifiers:error:", v14, v19, [v17 comparator], v11, a6);
        v21 = v20 = a6;

        if (v46)
        {
          v22 = self->_database;
          v23 = [v17 value];
          a5 = -[KGDatabase filterTombstoneNodeIdentifiersForPropertyName:value:comparator:nodeIdentifiers:error:](v22, "filterTombstoneNodeIdentifiersForPropertyName:value:comparator:nodeIdentifiers:error:", v14, v23, [v17 comparator], v11, v20);

          v24 = [v21 identifierSetByFormingUnion:a5];

          v21 = v24;
          goto LABEL_20;
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          a5 = [(KGDatabase *)self->_database filterNodeIdentifiersForPropertyName:v14 value:v16 comparator:1 nodeIdentifiers:v11 error:a6];
          if (!v46)
          {
            goto LABEL_27;
          }

          v25 = [(KGDatabase *)self->_database filterTombstoneNodeIdentifiersForPropertyName:v14 value:v16 comparator:1 nodeIdentifiers:v11 error:a6];
          goto LABEL_24;
        }

        v17 = v16;
        v26 = self->_database;
        v27 = [v17 value1];
        v28 = [v17 value2];
        -[KGDatabase filterNodeIdentifiersForPropertyName:rangeValue1:rangeValue2:comparator:nodeIdentifiers:error:](v26, "filterNodeIdentifiersForPropertyName:rangeValue1:rangeValue2:comparator:nodeIdentifiers:error:", v14, v27, v28, [v17 comparator], v11, a6);
        v21 = v29 = a6;

        if (v46)
        {
          v40 = self->_database;
          v30 = [v17 value1];
          v31 = [v17 value2];
          a5 = -[KGDatabase filterTombstoneNodeIdentifiersForPropertyName:rangeValue1:rangeValue2:comparator:nodeIdentifiers:error:](v40, "filterTombstoneNodeIdentifiersForPropertyName:rangeValue1:rangeValue2:comparator:nodeIdentifiers:error:", v14, v30, v31, [v17 comparator], v11, v29);

          v32 = [v21 identifierSetByFormingUnion:a5];

          v21 = v32;
LABEL_20:
          v12 = v43;
LABEL_25:

          goto LABEL_26;
        }
      }

      v12 = v43;
LABEL_26:

      a5 = v21;
      a6 = v44;
LABEL_27:
      if (!a5)
      {
        v37 = *v41;
        *v41 = 0;

        goto LABEL_38;
      }

      if (v11)
      {
        v33 = [v11 identifierSetByIntersectingIdentifierSet:a5];

        v11 = v33;
      }

      else
      {
        v11 = a5;
      }

      v34 = [v11 count];

      if (!v34)
      {
        a5 = v41;
        v9 = v42;
        goto LABEL_40;
      }

      if (v45 == ++v13)
      {
        a5 = v41;
        v9 = v42;
        v45 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
        if (v45)
        {
          goto LABEL_7;
        }

        goto LABEL_40;
      }
    }

    a5 = [(KGDatabase *)self->_database filterNodeIdentifiersForPropertyName:v14 values:v16 comparator:1 nodeIdentifiers:v11 error:a6];
    if (!v46)
    {
      goto LABEL_27;
    }

    v25 = [(KGDatabase *)self->_database filterTombstoneNodeIdentifiersForPropertyName:v14 values:v16 comparator:1 nodeIdentifiers:v11 error:a6];
LABEL_24:
    v17 = v25;
    v21 = [a5 identifierSetByFormingUnion:v25];
    goto LABEL_25;
  }

  LOBYTE(a5) = 1;
LABEL_45:

  v38 = *MEMORY[0x277D85DE8];
  return a5;
}

- (id)_resolvedPropertyValue:(id)a3 isScalar:(BOOL *)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 count];
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = [v5 firstObject];
LABEL_9:
        v9 = v7;
        goto LABEL_11;
      }

      goto LABEL_18;
    }

LABEL_10:
    v9 = 0;
LABEL_11:

    v10 = 1;
    v5 = v9;
    if (!a4)
    {
      goto LABEL_15;
    }

LABEL_14:
    *a4 = v10;
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 1;
    if (!a4)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v8 = [v5 count];
  if (!v8)
  {
    goto LABEL_10;
  }

  if (v8 == 1)
  {
    v7 = [v5 anyObject];
    goto LABEL_9;
  }

LABEL_18:
  v10 = 0;
  if (a4)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v5;
}

- (BOOL)_lock_filterNodesWithOptionalLabels:(id)a3 includeTombstones:(BOOL)a4 nodeIdentifiers:(id *)a5 error:(id *)a6
{
  v8 = a4;
  v10 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  if ([v10 count])
  {
    v11 = *a5;
    v12 = v11;
    if (v11 && ![v11 count])
    {
      v16 = 1;
    }

    else
    {
      v13 = [(KGDatabase *)self->_database unionOfNodesWithLabels:v10 filterNodeIdentifiers:v12 error:a6];
      if (v8)
      {
        v14 = [(KGDatabase *)self->_database unionOfTombstoneNodesWithLabels:v10 filterNodeIdentifiers:v12 error:a6];
        v15 = [v13 identifierSetByFormingUnion:v14];

        v13 = v15;
      }

      v16 = v13 != 0;
      if (v13)
      {
        objc_storeStrong(a5, v13);
      }
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (BOOL)_lock_filterNodesWithRequiredLabels:(id)a3 includeTombstones:(BOOL)a4 nodeIdentifiers:(id *)a5 error:(id *)a6
{
  v8 = a4;
  v10 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  if ([v10 count])
  {
    v11 = *a5;
    v12 = v11;
    if (v11 && ![v11 count])
    {
      v16 = 1;
    }

    else
    {
      v13 = [(KGDatabase *)self->_database intersectionOfNodesWithLabels:v10 filterNodeIdentifiers:v12 error:a6];
      if (v8)
      {
        v14 = [(KGDatabase *)self->_database intersectionOfTombstoneNodesWithLabels:v10 filterNodeIdentifiers:v12 error:a6];
        v15 = [v13 identifierSetByFormingUnion:v14];

        v13 = v15;
      }

      v16 = v13 != 0;
      if (v13)
      {
        objc_storeStrong(a5, v13);
      }
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (id)edgeForIdentifier:(unint64_t)a3 entityFactory:(id)a4 error:(id *)a5
{
  v8 = a4;
  os_unfair_lock_lock(&self->_lock);
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__714;
  v17 = __Block_byref_object_dispose__715;
  v18 = 0;
  v9 = [[KGElementIdentifierSet alloc] initWithElementIdentifier:a3];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__KGDegasGraphStore_edgeForIdentifier_entityFactory_error___block_invoke;
  v12[3] = &unk_2797FDD00;
  v12[4] = &v13;
  [(KGDegasGraphStore *)self _lock_enumerateEdgesWithIdentifiers:v9 entityFactory:v8 error:a5 block:v12];
  os_unfair_lock_unlock(&self->_lock);
  v10 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v10;
}

- (id)orderedArrayOfEdgesWithIdentifiers:(id)a3 entityFactory:(id)a4 error:(id *)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  os_unfair_lock_lock(&self->_lock);
  v10 = [[KGElementIdentifierSet alloc] initWithIndexArray:v8];
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[KGElementIdentifierSet count](v10, "count")}];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __76__KGDegasGraphStore_orderedArrayOfEdgesWithIdentifiers_entityFactory_error___block_invoke;
  v40[3] = &unk_2797FDCD8;
  v13 = v12;
  v41 = v13;
  v30 = self;
  v31 = v9;
  [(KGDegasGraphStore *)self _lock_enumerateEdgesWithIdentifiers:v10 entityFactory:v9 error:a5 block:v40];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v37;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v36 + 1) + 8 * i);
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v19, "identifier")}];
        [v11 setObject:v19 forKeyedSubscript:v20];
      }

      v16 = [v14 countByEnumeratingWithState:&v36 objects:v43 count:16];
    }

    while (v16);
  }

  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v22 = v8;
  v23 = [v22 countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v33;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [v11 objectForKeyedSubscript:*(*(&v32 + 1) + 8 * j)];
        if (v27)
        {
          [v21 addObject:v27];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v24);
  }

  os_unfair_lock_unlock(&v30->_lock);
  v28 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)arrayOfEdgesWithIdentifiers:(id)a3 entityFactory:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  os_unfair_lock_lock(&self->_lock);
  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__KGDegasGraphStore_arrayOfEdgesWithIdentifiers_entityFactory_error___block_invoke;
  v13[3] = &unk_2797FDCD8;
  v11 = v10;
  v14 = v11;
  [(KGDegasGraphStore *)self _lock_enumerateEdgesWithIdentifiers:v9 entityFactory:v8 error:a5 block:v13];

  os_unfair_lock_unlock(&self->_lock);

  return v11;
}

- (BOOL)_lock_enumerateEdgesWithIdentifiers:(id)a3 entityFactory:(id)a4 error:(id *)a5 block:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  os_unfair_lock_assert_owner(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  v13 = [(KGDatabase *)self->_database allNodeIdentifiersOfEdgesWithIdentifiers:v10 error:a5];
  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __83__KGDegasGraphStore__lock_enumerateEdgesWithIdentifiers_entityFactory_error_block___block_invoke;
    v29[3] = &unk_2797FDC60;
    v15 = v14;
    v30 = v15;
    [(KGDegasGraphStore *)self _lock_enumerateNodesWithIdentifiers:v13 entityFactory:v11 block:v29];
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 1;
    database = self->_database;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __83__KGDegasGraphStore__lock_enumerateEdgesWithIdentifiers_entityFactory_error_block___block_invoke_2;
    v20[3] = &unk_2797FDCB0;
    v17 = v15;
    v21 = v17;
    v22 = v11;
    v24 = &v25;
    v23 = v12;
    [(KGDatabase *)database enumerateEdgesWithIdentifiers:v10 block:v20];
    v18 = *(v26 + 24);

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

void __83__KGDegasGraphStore__lock_enumerateEdgesWithIdentifiers_entityFactory_error_block___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "identifier")}];
  [v3 setObject:v5 forKeyedSubscript:v6];
}

void __83__KGDegasGraphStore__lock_enumerateEdgesWithIdentifiers_entityFactory_error_block___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, _BYTE *a7)
{
  v23 = a3;
  v13 = a6;
  v14 = *(a1 + 32);
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v16 = [v14 objectForKeyedSubscript:v15];

  v17 = *(a1 + 32);
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v19 = [v17 objectForKeyedSubscript:v18];

  if (v16)
  {
    v20 = v19 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    *a7 = 1;
  }

  else
  {
    v21 = [*(a1 + 40) edgeWithIdentifier:a2 labels:v23 properties:v13 sourceNode:v16 targetNode:v19];
    v22 = v21;
    if (v21)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
      *a7 = 1;
    }
  }
}

- (id)nodeForIdentifier:(unint64_t)a3 entityFactory:(id)a4 error:(id *)a5
{
  v8 = a4;
  os_unfair_lock_lock(&self->_lock);
  v9 = [(KGDegasGraphStore *)self _lock_nodeForIdentifier:a3 entityFactory:v8 error:a5];

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (id)_lock_nodeForIdentifier:(unint64_t)a3 entityFactory:(id)a4 error:(id *)a5
{
  v7 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__714;
  v16 = __Block_byref_object_dispose__715;
  v17 = 0;
  v8 = [[KGElementIdentifierSet alloc] initWithElementIdentifier:a3];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__KGDegasGraphStore__lock_nodeForIdentifier_entityFactory_error___block_invoke;
  v11[3] = &unk_2797FDC88;
  v11[4] = &v12;
  [(KGDegasGraphStore *)self _lock_enumerateNodesWithIdentifiers:v8 entityFactory:v7 block:v11];
  v9 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v9;
}

- (id)orderedArrayOfNodesWithIdentifiers:(id)a3 entityFactory:(id)a4 error:(id *)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  os_unfair_lock_lock(&self->_lock);
  v9 = [[KGElementIdentifierSet alloc] initWithIndexArray:v7];
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[KGElementIdentifierSet count](v9, "count")}];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __76__KGDegasGraphStore_orderedArrayOfNodesWithIdentifiers_entityFactory_error___block_invoke;
  v39[3] = &unk_2797FDC60;
  v12 = v11;
  v40 = v12;
  v29 = self;
  v30 = v8;
  [(KGDegasGraphStore *)self _lock_enumerateNodesWithIdentifiers:v9 entityFactory:v8 block:v39];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v36;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v35 + 1) + 8 * i);
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v18, "identifier")}];
        [v10 setObject:v18 forKeyedSubscript:v19];
      }

      v15 = [v13 countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v15);
  }

  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = v7;
  v22 = [v21 countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v32;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [v10 objectForKeyedSubscript:*(*(&v31 + 1) + 8 * j)];
        if (v26)
        {
          [v20 addObject:v26];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v31 objects:v41 count:16];
    }

    while (v23);
  }

  os_unfair_lock_unlock(&v29->_lock);
  v27 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)arrayOfNodesWithIdentifiers:(id)a3 entityFactory:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  os_unfair_lock_lock(&self->_lock);
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__KGDegasGraphStore_arrayOfNodesWithIdentifiers_entityFactory_error___block_invoke;
  v12[3] = &unk_2797FDC60;
  v10 = v9;
  v13 = v10;
  [(KGDegasGraphStore *)self _lock_enumerateNodesWithIdentifiers:v8 entityFactory:v7 block:v12];

  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (void)_lock_enumerateNodesWithIdentifiers:(id)a3 entityFactory:(id)a4 block:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  database = self->_database;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__KGDegasGraphStore__lock_enumerateNodesWithIdentifiers_entityFactory_block___block_invoke;
  v14[3] = &unk_2797FDC38;
  v15 = v8;
  v16 = v9;
  v12 = v9;
  v13 = v8;
  [(KGDatabase *)database enumerateNodesWithIdentifiers:v10 block:v14];
}

uint64_t __77__KGDegasGraphStore__lock_enumerateNodesWithIdentifiers_entityFactory_block___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(a1 + 32) nodeWithIdentifier:a2 labels:a3 properties:a4];
  if (objc_claimAutoreleasedReturnValue())
  {
    (*(*(a1 + 40) + 16))();
  }

  return MEMORY[0x2821F9730]();
}

- (BOOL)addEdges:(id)a3 error:(id *)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  LOBYTE(a4) = [(KGDatabase *)self->_database addEdges:v6 error:a4];

  os_unfair_lock_unlock(&self->_lock);
  return a4;
}

- (BOOL)addNodes:(id)a3 error:(id *)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  LOBYTE(a4) = [(KGDatabase *)self->_database addNodes:v6 error:a4];

  os_unfair_lock_unlock(&self->_lock);
  return a4;
}

- (NSUUID)graphIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  v3 = [(KGDegasGraphStore *)self _lock_graphIdentifier];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_lock_graphIdentifier
{
  os_unfair_lock_assert_owner(&self->_lock);
  database = self->_database;

  return [(KGDatabase *)database graphIdentifier];
}

- (void)setGraphVersion:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  [(KGDatabase *)self->_database setGraphVersion:a3];

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)graphVersion
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(KGDatabase *)self->_database graphVersion];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (KGDegasGraphStore)initWithURL:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = KGDegasGraphStore;
  v6 = [(KGDegasGraphStore *)&v12 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  if (v5)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_url, a3);
LABEL_4:
    v8 = v7;
    goto LABEL_8;
  }

  v9 = KGLoggingConnection();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v11 = 0;
    _os_log_error_impl(&dword_255870000, v9, OS_LOG_TYPE_ERROR, "Failed to instantiate graph store, url is nil", v11, 2u);
  }

  v8 = 0;
LABEL_8:

  return v8;
}

@end
@interface KGDegasGraphStore
- (BOOL)_lock_enumerateEdgesWithIdentifiers:(id)identifiers entityFactory:(id)factory error:(id *)error block:(id)block;
- (BOOL)_lock_filterEdgesWithOptionalLabels:(id)labels includeTombstones:(BOOL)tombstones edgeIdentifiers:(id *)identifiers error:(id *)error;
- (BOOL)_lock_filterEdgesWithProperties:(id)properties includeTombstones:(BOOL)tombstones edgeIdentifiers:(id *)identifiers error:(id *)error;
- (BOOL)_lock_filterEdgesWithRequiredLabels:(id)labels includeTombstones:(BOOL)tombstones edgeIdentifiers:(id *)identifiers error:(id *)error;
- (BOOL)_lock_filterNodesWithOptionalLabels:(id)labels includeTombstones:(BOOL)tombstones nodeIdentifiers:(id *)identifiers error:(id *)error;
- (BOOL)_lock_filterNodesWithProperties:(id)properties includeTombstones:(BOOL)tombstones nodeIdentifiers:(id *)identifiers error:(id *)error;
- (BOOL)_lock_filterNodesWithRequiredLabels:(id)labels includeTombstones:(BOOL)tombstones nodeIdentifiers:(id *)identifiers error:(id *)error;
- (BOOL)addEdges:(id)edges error:(id *)error;
- (BOOL)addNodes:(id)nodes error:(id *)error;
- (BOOL)beginTransactionWithError:(id *)error;
- (BOOL)commitTransactionWithError:(id *)error;
- (BOOL)copyToURL:(id)l error:(id *)error;
- (BOOL)openWithMode:(unint64_t)mode error:(id *)error;
- (BOOL)removeEdgeForIdentifier:(unint64_t)identifier error:(id *)error;
- (BOOL)removeEdgesForIdentifiers:(id)identifiers error:(id *)error;
- (BOOL)removeNodeForIdentifier:(unint64_t)identifier error:(id *)error;
- (BOOL)removeNodesForIdentifiers:(id)identifiers error:(id *)error;
- (BOOL)rollbackTransactionWithError:(id *)error;
- (BOOL)updateEdgeForIdentifier:(unint64_t)identifier withProperties:(id)properties error:(id *)error;
- (BOOL)updateNodeForIdentifier:(unint64_t)identifier withProperties:(id)properties error:(id *)error;
- (KGDegasGraphStore)initWithURL:(id)l;
- (NSUUID)graphIdentifier;
- (id)_lock_edgeIdentifiersMatchingFilter:(id)filter intersectingIdentifiers:(id)identifiers error:(id *)error;
- (id)_lock_edgeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction error:(id *)error;
- (id)_lock_edgeIdentifiersWithStartNodeIdentifiers:(id)identifiers intersectingEdgeIdentifiers:(id)edgeIdentifiers edgeDirection:(unint64_t)direction error:(id *)error;
- (id)_lock_graphIdentifier;
- (id)_lock_neighborNodeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction edgeFilter:(id)filter error:(id *)error;
- (id)_lock_nodeForIdentifier:(unint64_t)identifier entityFactory:(id)factory error:(id *)error;
- (id)_lock_nodeIdentifiersMatchingFilter:(id)filter intersectingIdentifiers:(id)identifiers error:(id *)error;
- (id)_lock_nodeIdentifiersOfEdgesWithIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction error:(id *)error;
- (id)_lock_sourcesByTargetWithEdgeIdentifiers:(id)identifiers error:(id *)error;
- (id)_lock_targetsBySourceWithEdgeIdentifiers:(id)identifiers error:(id *)error;
- (id)_resolvedPropertyValue:(id)value isScalar:(BOOL *)scalar;
- (id)arrayOfEdgesWithIdentifiers:(id)identifiers entityFactory:(id)factory error:(id *)error;
- (id)arrayOfNodesWithIdentifiers:(id)identifiers entityFactory:(id)factory error:(id *)error;
- (id)changesAfterToken:(id)token transactionLimit:(int64_t)limit error:(id *)error;
- (id)edgeChangesAfterToken:(id)token transactionLimit:(int64_t)limit edgeFilter:(id)filter error:(id *)error;
- (id)edgeForIdentifier:(unint64_t)identifier entityFactory:(id)factory error:(id *)error;
- (id)edgeIdentifiersBetween:(id)between endNodeIdentifiers:(id)identifiers edgeFilter:(id)filter edgeDirection:(unint64_t)direction error:(id *)error;
- (id)edgeIdentifiersForNodeIdentifier:(unint64_t)identifier withLabels:(id)labels edgeDirection:(unint64_t)direction error:(id *)error;
- (id)edgeIdentifiersMatchingFilter:(id)filter intersectingIdentifiers:(id)identifiers error:(id *)error;
- (id)edgeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction error:(id *)error;
- (id)edgeIdentifiersWithStartNodeIdentifiers:(id)identifiers intersectingEdgeIdentifiers:(id)edgeIdentifiers edgeDirection:(unint64_t)direction error:(id *)error;
- (id)edgeLabels;
- (id)labelsOfEdgesForIdentifiers:(id)identifiers;
- (id)labelsOfNodesForIdentifiers:(id)identifiers;
- (id)neighborNodeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction edgeFilter:(id)filter error:(id *)error;
- (id)nodeChangesAfterToken:(id)token transactionLimit:(int64_t)limit nodeFilter:(id)filter error:(id *)error;
- (id)nodeForIdentifier:(unint64_t)identifier entityFactory:(id)factory error:(id *)error;
- (id)nodeIdentifiersMatchingFilter:(id)filter intersectingIdentifiers:(id)identifiers error:(id *)error;
- (id)nodeIdentifiersOfEdgesWithIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction error:(id *)error;
- (id)nodeLabels;
- (id)orderedArrayOfEdgesWithIdentifiers:(id)identifiers entityFactory:(id)factory error:(id *)error;
- (id)orderedArrayOfNodesWithIdentifiers:(id)identifiers entityFactory:(id)factory error:(id *)error;
- (id)propertiesForEdgesWithIdentifiers:(id)identifiers propertyName:(id)name error:(id *)error;
- (id)propertiesForNodesWithIdentifiers:(id)identifiers propertyName:(id)name error:(id *)error;
- (id)sourcesByTargetWithEdgeIdentifiers:(id)identifiers error:(id *)error;
- (id)targetsBySourceWithEdgeIdentifiers:(id)identifiers error:(id *)error;
- (id)transitiveClosureNeighborNodeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction edgeFilter:(id)filter error:(id *)error;
- (unint64_t)graphVersion;
- (void)_lock_enumerateNodesWithIdentifiers:(id)identifiers entityFactory:(id)factory block:(id)block;
- (void)close;
- (void)setGraphVersion:(unint64_t)version;
@end

@implementation KGDegasGraphStore

- (id)edgeChangesAfterToken:(id)token transactionLimit:(int64_t)limit edgeFilter:(id)filter error:(id *)error
{
  filterCopy = filter;
  tokenCopy = token;
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  transactionSequenceNumber = [tokenCopy transactionSequenceNumber];

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [filterCopy setIncludeTombstones:1];
  v14 = [(KGDegasGraphStore *)self edgeIdentifiersMatchingFilter:filterCopy intersectingIdentifiers:0 error:error];
  if (v14)
  {
    [filterCopy setIncludeTombstones:0];
    database = self->_database;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __77__KGDegasGraphStore_edgeChangesAfterToken_transactionLimit_edgeFilter_error___block_invoke;
    v19[3] = &unk_2797FDDA0;
    v19[4] = self;
    v20 = v14;
    v16 = v13;
    v21 = v16;
    [(KGDatabase *)database transactionChangesAfterTransactionId:transactionSequenceNumber limit:limit block:v19];
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

- (id)nodeChangesAfterToken:(id)token transactionLimit:(int64_t)limit nodeFilter:(id)filter error:(id *)error
{
  filterCopy = filter;
  tokenCopy = token;
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  transactionSequenceNumber = [tokenCopy transactionSequenceNumber];

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [filterCopy setIncludeTombstones:1];
  v14 = [(KGDegasGraphStore *)self nodeIdentifiersMatchingFilter:filterCopy intersectingIdentifiers:0 error:error];
  if (v14)
  {
    [filterCopy setIncludeTombstones:0];
    database = self->_database;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __77__KGDegasGraphStore_nodeChangesAfterToken_transactionLimit_nodeFilter_error___block_invoke;
    v19[3] = &unk_2797FDDA0;
    v19[4] = self;
    v20 = v14;
    v16 = v13;
    v21 = v16;
    [(KGDatabase *)database transactionChangesAfterTransactionId:transactionSequenceNumber limit:limit block:v19];
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

- (id)changesAfterToken:(id)token transactionLimit:(int64_t)limit error:(id *)error
{
  tokenCopy = token;
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  transactionSequenceNumber = [tokenCopy transactionSequenceNumber];

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  database = self->_database;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__KGDegasGraphStore_changesAfterToken_transactionLimit_error___block_invoke;
  v15[3] = &unk_2797FDD78;
  v15[4] = self;
  v11 = v9;
  v16 = v11;
  [(KGDatabase *)database transactionChangesAfterTransactionId:transactionSequenceNumber limit:limit block:v15];
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

- (BOOL)copyToURL:(id)l error:(id *)error
{
  lCopy = l;
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  LOBYTE(error) = [(KGDatabase *)self->_database copyToURL:lCopy error:error];

  os_unfair_lock_unlock(&self->_lock);
  return error;
}

- (void)close
{
  [(KGDatabase *)self->_database close];
  database = self->_database;
  self->_database = 0;
}

- (BOOL)openWithMode:(unint64_t)mode error:(id *)error
{
  if (self->_url)
  {
    v7 = [[KGDatabase alloc] initWithURL:self->_url];
    database = self->_database;
    self->_database = v7;

    if (mode)
    {
      modeCopy = mode;
    }

    else
    {
      modeCopy = 6;
    }

    if (modeCopy)
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

  else if (error)
  {
    v11 = kg_errorWithCode(5004);
    v12 = v11;
    result = 0;
    *error = v11;
    return result;
  }

  return 0;
}

- (BOOL)rollbackTransactionWithError:(id *)error
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

  v7 = [(KGDatabase *)self->_database rollbackTransactionWithError:error];
  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (BOOL)commitTransactionWithError:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  transactionCounter = self->_transactionCounter;
  self->_transactionCounter = transactionCounter - 1;
  if (transactionCounter <= 0)
  {
    __assert_rtn("[KGDegasGraphStore commitTransactionWithError:]", "KGDegasGraphStore.m", 1349, "_transactionCounter >= 0");
  }

  v6 = transactionCounter != 1 || [(KGDatabase *)self->_database commitTransactionWithError:error];
  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (BOOL)beginTransactionWithError:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  transactionCounter = self->_transactionCounter;
  if (transactionCounter)
  {
    v6 = 1;
  }

  else
  {
    v6 = [(KGDatabase *)self->_database beginTransactionWithError:error];
    transactionCounter = self->_transactionCounter;
  }

  self->_transactionCounter = transactionCounter + 1;
  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (BOOL)updateEdgeForIdentifier:(unint64_t)identifier withProperties:(id)properties error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  v9 = [(KGDatabase *)self->_database setEdgeProperties:propertiesCopy forIdentifier:identifier error:error];

  if (!v9)
  {
    v10 = KGLoggingConnection();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = *error;
      v14 = 138412290;
      v15 = v13;
      _os_log_error_impl(&dword_255870000, v10, OS_LOG_TYPE_ERROR, "edge update failed: %@", &v14, 0xCu);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)updateNodeForIdentifier:(unint64_t)identifier withProperties:(id)properties error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  v9 = [(KGDatabase *)self->_database setNodeProperties:propertiesCopy forIdentifier:identifier error:error];

  if (!v9)
  {
    v10 = KGLoggingConnection();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = *error;
      v14 = 138412290;
      v15 = v13;
      _os_log_error_impl(&dword_255870000, v10, OS_LOG_TYPE_ERROR, "node update failed: %@", &v14, 0xCu);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)removeEdgesForIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  LOBYTE(error) = [(KGDatabase *)self->_database removeEdges:identifiersCopy error:error];

  os_unfair_lock_unlock(&self->_lock);
  return error;
}

- (BOOL)removeNodesForIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  LOBYTE(error) = [(KGDatabase *)self->_database removeNodes:identifiersCopy error:error];

  os_unfair_lock_unlock(&self->_lock);
  return error;
}

- (BOOL)removeEdgeForIdentifier:(unint64_t)identifier error:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  LOBYTE(error) = [(KGDatabase *)self->_database removeEdge:identifier error:error];
  os_unfair_lock_unlock(&self->_lock);
  return error;
}

- (BOOL)removeNodeForIdentifier:(unint64_t)identifier error:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  LOBYTE(error) = [(KGDatabase *)self->_database removeNode:identifier error:error];
  os_unfair_lock_unlock(&self->_lock);
  return error;
}

- (id)labelsOfEdgesForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  v5 = [(KGDatabase *)self->_database labelsOfEdgesForIdentifiers:identifiersCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)labelsOfNodesForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  v5 = [(KGDatabase *)self->_database labelsOfNodesForIdentifiers:identifiersCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)edgeLabels
{
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  edgeLabels = [(KGDatabase *)self->_database edgeLabels];
  os_unfair_lock_unlock(&self->_lock);

  return edgeLabels;
}

- (id)nodeLabels
{
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  nodeLabels = [(KGDatabase *)self->_database nodeLabels];
  os_unfair_lock_unlock(&self->_lock);

  return nodeLabels;
}

- (id)propertiesForEdgesWithIdentifiers:(id)identifiers propertyName:(id)name error:(id *)error
{
  nameCopy = name;
  identifiersCopy = identifiers;
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
  [(KGDatabase *)database enumeratePropertyValuesForEdgesWithIdentifiers:identifiersCopy propertyName:nameCopy withBlock:v13];

  os_unfair_lock_unlock(&self->_lock);

  return v11;
}

- (id)propertiesForNodesWithIdentifiers:(id)identifiers propertyName:(id)name error:(id *)error
{
  nameCopy = name;
  identifiersCopy = identifiers;
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
  [(KGDatabase *)database enumeratePropertyValuesForNodesWithIdentifiers:identifiersCopy propertyName:nameCopy withBlock:v13];

  os_unfair_lock_unlock(&self->_lock);

  return v11;
}

- (id)sourcesByTargetWithEdgeIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(KGDegasGraphStore *)self _lock_sourcesByTargetWithEdgeIdentifiers:identifiersCopy error:error];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)targetsBySourceWithEdgeIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(KGDegasGraphStore *)self _lock_targetsBySourceWithEdgeIdentifiers:identifiersCopy error:error];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)_lock_sourcesByTargetWithEdgeIdentifiers:(id)identifiers error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
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
  [(KGDatabase *)database enumerateSourceAndTargetIdentifiersWithEdgeIdentifiers:identifiersCopy block:v23];
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

- (id)_lock_targetsBySourceWithEdgeIdentifiers:(id)identifiers error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
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
  [(KGDatabase *)database enumerateSourceAndTargetIdentifiersWithEdgeIdentifiers:identifiersCopy block:v23];
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

- (id)nodeIdentifiersOfEdgesWithIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction error:(id *)error
{
  identifiersCopy = identifiers;
  os_unfair_lock_lock(&self->_lock);
  v9 = [(KGDegasGraphStore *)self _lock_nodeIdentifiersOfEdgesWithIdentifiers:identifiersCopy edgeDirection:direction error:error];

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (id)_lock_nodeIdentifiersOfEdgesWithIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction error:(id *)error
{
  directionCopy = direction;
  identifiersCopy = identifiers;
  os_unfair_lock_assert_owner(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  if (![identifiersCopy count])
  {
    v10 = objc_alloc_init(KGElementIdentifierSet);
    goto LABEL_14;
  }

  v9 = objc_alloc_init(KGMutableElementIdentifierSet);
  if ((directionCopy & 1) == 0)
  {
    if ((directionCopy & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    if ([(KGDatabase *)self->_database appendNodeIdentifiersOfEdgesWithIdentifiers:identifiersCopy sourceNodeIdentifiers:v9 targetNodeIdentifiers:0 error:error])
    {
      goto LABEL_11;
    }

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  v11 = [(KGDatabase *)self->_database appendNodeIdentifiersOfEdgesWithIdentifiers:identifiersCopy sourceNodeIdentifiers:0 targetNodeIdentifiers:v9 error:error];
  if ((directionCopy & 2) != 0)
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

- (id)transitiveClosureNeighborNodeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction edgeFilter:(id)filter error:(id *)error
{
  identifiersCopy = identifiers;
  filterCopy = filter;
  if ([identifiersCopy count])
  {
    os_unfair_lock_lock(&self->_lock);
    CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
    v12 = [(KGDatabase *)self->_database transitiveClosureNeighborNodeIdentifiersWithStartNodeIdentifiers:identifiersCopy edgeDirection:direction edgeFilter:filterCopy error:error];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v12 = objc_alloc_init(KGElementIdentifierSet);
  }

  return v12;
}

- (id)neighborNodeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction edgeFilter:(id)filter error:(id *)error
{
  filterCopy = filter;
  identifiersCopy = identifiers;
  os_unfair_lock_lock(&self->_lock);
  v12 = [(KGDegasGraphStore *)self _lock_neighborNodeIdentifiersWithStartNodeIdentifiers:identifiersCopy edgeDirection:direction edgeFilter:filterCopy error:error];

  os_unfair_lock_unlock(&self->_lock);

  return v12;
}

- (id)_lock_neighborNodeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction edgeFilter:(id)filter error:(id *)error
{
  identifiersCopy = identifiers;
  filterCopy = filter;
  os_unfair_lock_assert_owner(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  if ([identifiersCopy count])
  {
    v12 = [(KGDatabase *)self->_database neighborNodeIdentifiersWithStartNodeIdentifiers:identifiersCopy edgeDirection:direction edgeFilter:filterCopy error:error];
  }

  else
  {
    v12 = objc_alloc_init(KGElementIdentifierSet);
  }

  v13 = v12;

  return v13;
}

- (id)edgeIdentifiersForNodeIdentifier:(unint64_t)identifier withLabels:(id)labels edgeDirection:(unint64_t)direction error:(id *)error
{
  labelsCopy = labels;
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  v11 = [(KGDatabase *)self->_database edgeIdentifiersWithLabels:labelsCopy direction:direction forNodeIdentifier:identifier error:error];

  os_unfair_lock_unlock(&self->_lock);

  return v11;
}

- (id)edgeIdentifiersBetween:(id)between endNodeIdentifiers:(id)identifiers edgeFilter:(id)filter edgeDirection:(unint64_t)direction error:(id *)error
{
  directionCopy = direction;
  betweenCopy = between;
  identifiersCopy = identifiers;
  filterCopy = filter;
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  if ((directionCopy & 2) != 0)
  {
    v15 = [(KGDatabase *)self->_database filterEdgeIdentifiersBetween:betweenCopy targetNodeIdentifiers:identifiersCopy filterEdgeIdentifiers:0 error:error];
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

  if ((directionCopy & 1) == 0)
  {
    v16 = 0;
    if (!v15)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  v17 = [(KGDatabase *)self->_database filterEdgeIdentifiersBetween:identifiersCopy targetNodeIdentifiers:betweenCopy filterEdgeIdentifiers:0 error:error];
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
    v19 = [(KGDegasGraphStore *)self _lock_edgeIdentifiersMatchingFilter:filterCopy intersectingIdentifiers:v15 error:error];
    goto LABEL_16;
  }

LABEL_10:
  v19 = 0;
LABEL_16:
  os_unfair_lock_unlock(&self->_lock);

LABEL_17:

  return v19;
}

- (id)edgeIdentifiersWithStartNodeIdentifiers:(id)identifiers intersectingEdgeIdentifiers:(id)edgeIdentifiers edgeDirection:(unint64_t)direction error:(id *)error
{
  edgeIdentifiersCopy = edgeIdentifiers;
  identifiersCopy = identifiers;
  os_unfair_lock_lock(&self->_lock);
  v12 = [(KGDegasGraphStore *)self _lock_edgeIdentifiersWithStartNodeIdentifiers:identifiersCopy intersectingEdgeIdentifiers:edgeIdentifiersCopy edgeDirection:direction error:error];

  os_unfair_lock_unlock(&self->_lock);

  return v12;
}

- (id)_lock_edgeIdentifiersWithStartNodeIdentifiers:(id)identifiers intersectingEdgeIdentifiers:(id)edgeIdentifiers edgeDirection:(unint64_t)direction error:(id *)error
{
  directionCopy = direction;
  identifiersCopy = identifiers;
  edgeIdentifiersCopy = edgeIdentifiers;
  os_unfair_lock_assert_owner(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  v12 = objc_alloc_init(KGElementIdentifierSet);
  v13 = objc_alloc_init(KGElementIdentifierSet);
  v14 = edgeIdentifiersCopy;
  v15 = v14;
  if ((directionCopy & 1) == 0)
  {
    v16 = v14;
    if ((directionCopy & 2) != 0)
    {
      goto LABEL_10;
    }

LABEL_7:
    v16 = v15;
    goto LABEL_12;
  }

  v17 = [(KGDatabase *)self->_database filterInEdgeIdentifiersOfNodesWithIdentifiers:identifiersCopy filterEdgeIdentifiers:v14 error:error];

  if (!v17)
  {
    v18 = 0;
    v12 = 0;
    v16 = v15;
    goto LABEL_18;
  }

  if ((directionCopy & 2) == 0)
  {
    v12 = v17;
    goto LABEL_7;
  }

  v16 = [(KGElementIdentifierSet *)v17 identifierSetByIntersectingIdentifierSet:v15];

  v12 = v17;
LABEL_10:
  v18 = [(KGDatabase *)self->_database filterOutEdgeIdentifiersOfNodesWithIdentifiers:identifiersCopy filterEdgeIdentifiers:v16 error:error];

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

- (id)edgeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction error:(id *)error
{
  identifiersCopy = identifiers;
  os_unfair_lock_lock(&self->_lock);
  v9 = [(KGDegasGraphStore *)self _lock_edgeIdentifiersWithStartNodeIdentifiers:identifiersCopy edgeDirection:direction error:error];

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (id)_lock_edgeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction error:(id *)error
{
  directionCopy = direction;
  identifiersCopy = identifiers;
  os_unfair_lock_assert_owner(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  v9 = objc_alloc_init(KGElementIdentifierSet);
  v10 = objc_alloc_init(KGElementIdentifierSet);
  if ((directionCopy & 1) != 0 && ([(KGDatabase *)self->_database inEdgeIdentifiersOfNodesWithIdentifiers:identifiersCopy error:error], v11 = objc_claimAutoreleasedReturnValue(), v9, (v9 = v11) == 0))
  {
    v12 = 0;
  }

  else if ((directionCopy & 2) == 0 || ([(KGDatabase *)self->_database outEdgeIdentifiersOfNodesWithIdentifiers:identifiersCopy error:error], v12 = objc_claimAutoreleasedReturnValue(), v10, (v10 = v12) != 0))
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

- (id)edgeIdentifiersMatchingFilter:(id)filter intersectingIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  filterCopy = filter;
  os_unfair_lock_lock(&self->_lock);
  v10 = [(KGDegasGraphStore *)self _lock_edgeIdentifiersMatchingFilter:filterCopy intersectingIdentifiers:identifiersCopy error:error];

  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (id)_lock_edgeIdentifiersMatchingFilter:(id)filter intersectingIdentifiers:(id)identifiers error:(id *)error
{
  filterCopy = filter;
  identifiersCopy = identifiers;
  os_unfair_lock_assert_owner(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  v10 = identifiersCopy;
  v30 = v10;
  v11 = objc_autoreleasePoolPush();
  if ([filterCopy noLabelsOrProperties])
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
    requiredLabels = [filterCopy requiredLabels];
    v28 = 0;
    v14 = -[KGDegasGraphStore _lock_filterEdgesWithRequiredLabels:includeTombstones:edgeIdentifiers:error:](self, "_lock_filterEdgesWithRequiredLabels:includeTombstones:edgeIdentifiers:error:", requiredLabels, [filterCopy includeTombstones], &v30, &v28);
    v12 = v28;

    if (v14)
    {
      optionalLabels = [filterCopy optionalLabels];
      v27 = v12;
      v16 = -[KGDegasGraphStore _lock_filterEdgesWithOptionalLabels:includeTombstones:edgeIdentifiers:error:](self, "_lock_filterEdgesWithOptionalLabels:includeTombstones:edgeIdentifiers:error:", optionalLabels, [filterCopy includeTombstones], &v30, &v27);
      v17 = v27;

      if (v16)
      {
        properties = [filterCopy properties];
        v26 = v17;
        v19 = -[KGDegasGraphStore _lock_filterEdgesWithProperties:includeTombstones:edgeIdentifiers:error:](self, "_lock_filterEdgesWithProperties:includeTombstones:edgeIdentifiers:error:", properties, [filterCopy includeTombstones], &v30, &v26);
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
  if (error)
  {
    v23 = v12;
    *error = v12;
  }

LABEL_13:
  v24 = v30;

  return v24;
}

- (BOOL)_lock_filterEdgesWithProperties:(id)properties includeTombstones:(BOOL)tombstones edgeIdentifiers:(id *)identifiers error:(id *)error
{
  tombstonesCopy = tombstones;
  v54 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  os_unfair_lock_assert_owner(&self->_lock);
  if ([propertiesCopy count])
  {
    v10 = *identifiers;
    identifiersCopy2 = v10;
    if (v10 && ([v10 isEmpty] & 1) != 0)
    {
      LOBYTE(identifiers) = 1;
LABEL_44:

      goto LABEL_45;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = propertiesCopy;
    v45 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (!v45)
    {
LABEL_40:

      if (identifiersCopy2)
      {
        identifiersCopy2 = identifiersCopy2;
        obj = *identifiers;
        *identifiers = identifiersCopy2;
        LOBYTE(identifiers) = 1;
LABEL_42:
      }

      else
      {
        LOBYTE(identifiers) = 0;
      }

      goto LABEL_44;
    }

    v12 = *v50;
    v43 = *v50;
    errorCopy = error;
    identifiersCopy = identifiers;
    v42 = propertiesCopy;
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
        v36 = *identifiersCopy;
        *identifiersCopy = v35;

        LOBYTE(identifiers) = 1;
LABEL_38:
        propertiesCopy = v42;
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
        value = [v17 value];
        -[KGDatabase filterEdgeIdentifiersForPropertyName:value:comparator:edgeIdentifiers:error:](database, "filterEdgeIdentifiersForPropertyName:value:comparator:edgeIdentifiers:error:", v14, value, [v17 comparator], identifiersCopy2, error);
        v21 = v20 = error;

        if (tombstonesCopy)
        {
          v22 = self->_database;
          value2 = [v17 value];
          identifiers = -[KGDatabase filterTombstoneEdgeIdentifiersForPropertyName:value:comparator:edgeIdentifiers:error:](v22, "filterTombstoneEdgeIdentifiersForPropertyName:value:comparator:edgeIdentifiers:error:", v14, value2, [v17 comparator], identifiersCopy2, v20);

          v24 = [v21 identifierSetByFormingUnion:identifiers];

          v21 = v24;
          goto LABEL_20;
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          identifiers = [(KGDatabase *)self->_database filterEdgeIdentifiersForPropertyName:v14 value:v16 comparator:1 edgeIdentifiers:identifiersCopy2 error:error];
          if (!tombstonesCopy)
          {
            goto LABEL_27;
          }

          v25 = [(KGDatabase *)self->_database filterTombstoneEdgeIdentifiersForPropertyName:v14 value:v16 comparator:1 edgeIdentifiers:identifiersCopy2 error:error];
          goto LABEL_24;
        }

        v17 = v16;
        v26 = self->_database;
        value1 = [v17 value1];
        value22 = [v17 value2];
        -[KGDatabase filterEdgeIdentifiersForPropertyName:rangeValue1:rangeValue2:comparator:edgeIdentifiers:error:](v26, "filterEdgeIdentifiersForPropertyName:rangeValue1:rangeValue2:comparator:edgeIdentifiers:error:", v14, value1, value22, [v17 comparator], identifiersCopy2, error);
        v21 = v29 = error;

        if (tombstonesCopy)
        {
          v40 = self->_database;
          value12 = [v17 value1];
          value23 = [v17 value2];
          identifiers = -[KGDatabase filterTombstoneEdgeIdentifiersForPropertyName:rangeValue1:rangeValue2:comparator:edgeIdentifiers:error:](v40, "filterTombstoneEdgeIdentifiersForPropertyName:rangeValue1:rangeValue2:comparator:edgeIdentifiers:error:", v14, value12, value23, [v17 comparator], identifiersCopy2, v29);

          v32 = [v21 identifierSetByFormingUnion:identifiers];

          v21 = v32;
LABEL_20:
          v12 = v43;
LABEL_25:

          goto LABEL_26;
        }
      }

      v12 = v43;
LABEL_26:

      identifiers = v21;
      error = errorCopy;
LABEL_27:
      if (!identifiers)
      {
        v37 = *identifiersCopy;
        *identifiersCopy = 0;

        goto LABEL_38;
      }

      if (identifiersCopy2)
      {
        v33 = [identifiersCopy2 identifierSetByIntersectingIdentifierSet:identifiers];

        identifiersCopy2 = v33;
      }

      else
      {
        identifiersCopy2 = identifiers;
      }

      isEmpty = [identifiersCopy2 isEmpty];

      if (isEmpty)
      {
        identifiers = identifiersCopy;
        propertiesCopy = v42;
        goto LABEL_40;
      }

      if (v45 == ++v13)
      {
        identifiers = identifiersCopy;
        propertiesCopy = v42;
        v45 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
        if (v45)
        {
          goto LABEL_7;
        }

        goto LABEL_40;
      }
    }

    identifiers = [(KGDatabase *)self->_database filterEdgeIdentifiersForPropertyName:v14 values:v16 comparator:1 edgeIdentifiers:identifiersCopy2 error:error];
    if (!tombstonesCopy)
    {
      goto LABEL_27;
    }

    v25 = [(KGDatabase *)self->_database filterTombstoneEdgeIdentifiersForPropertyName:v14 values:v16 comparator:1 edgeIdentifiers:identifiersCopy2 error:error];
LABEL_24:
    v17 = v25;
    v21 = [identifiers identifierSetByFormingUnion:v25];
    goto LABEL_25;
  }

  LOBYTE(identifiers) = 1;
LABEL_45:

  v38 = *MEMORY[0x277D85DE8];
  return identifiers;
}

- (BOOL)_lock_filterEdgesWithOptionalLabels:(id)labels includeTombstones:(BOOL)tombstones edgeIdentifiers:(id *)identifiers error:(id *)error
{
  tombstonesCopy = tombstones;
  labelsCopy = labels;
  os_unfair_lock_assert_owner(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  if ([labelsCopy count])
  {
    v11 = *identifiers;
    v12 = v11;
    if (v11 && ![v11 count])
    {
      v16 = 1;
    }

    else
    {
      v13 = [(KGDatabase *)self->_database unionOfEdgesWithLabels:labelsCopy filterEdgeIdentifiers:v12 error:error];
      if (tombstonesCopy)
      {
        v14 = [(KGDatabase *)self->_database unionOfTombstoneEdgesWithLabels:labelsCopy filterEdgeIdentifiers:v12 error:error];
        v15 = [v13 identifierSetByFormingUnion:v14];

        v13 = v15;
      }

      v16 = v13 != 0;
      if (v13)
      {
        objc_storeStrong(identifiers, v13);
      }
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (BOOL)_lock_filterEdgesWithRequiredLabels:(id)labels includeTombstones:(BOOL)tombstones edgeIdentifiers:(id *)identifiers error:(id *)error
{
  tombstonesCopy = tombstones;
  labelsCopy = labels;
  os_unfair_lock_assert_owner(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  if ([labelsCopy count])
  {
    v11 = *identifiers;
    v12 = v11;
    if (v11 && ![v11 count])
    {
      v16 = 1;
    }

    else
    {
      v13 = [(KGDatabase *)self->_database intersectionOfEdgesWithLabels:labelsCopy filterEdgeIdentifiers:v12 error:error];
      if (tombstonesCopy)
      {
        v14 = [(KGDatabase *)self->_database intersectionOfTombstoneEdgesWithLabels:labelsCopy filterEdgeIdentifiers:v12 error:error];
        v15 = [v13 identifierSetByFormingUnion:v14];

        v13 = v15;
      }

      v16 = v13 != 0;
      if (v13)
      {
        objc_storeStrong(identifiers, v13);
      }
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (id)nodeIdentifiersMatchingFilter:(id)filter intersectingIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  filterCopy = filter;
  os_unfair_lock_lock(&self->_lock);
  v10 = [(KGDegasGraphStore *)self _lock_nodeIdentifiersMatchingFilter:filterCopy intersectingIdentifiers:identifiersCopy error:error];

  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (id)_lock_nodeIdentifiersMatchingFilter:(id)filter intersectingIdentifiers:(id)identifiers error:(id *)error
{
  filterCopy = filter;
  identifiersCopy = identifiers;
  os_unfair_lock_assert_owner(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  v10 = identifiersCopy;
  v47 = v10;
  v11 = objc_autoreleasePoolPush();
  if (![filterCopy whereNoInAndOutEdges])
  {
    if ([filterCopy whereNoInEdges])
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

        if (([filterCopy whereNoOutEdges] & 1) == 0)
        {
          v15 = v18;
          goto LABEL_14;
        }

        v19 = 1;
        goto LABEL_31;
      }

      if (([filterCopy whereNoOutEdges] & 1) == 0)
      {
        goto LABEL_37;
      }

      v19 = 0;
    }

    else
    {
      v14 = 0;
      if (![filterCopy whereNoOutEdges])
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
  if (![filterCopy noLabelsOrProperties])
  {
    requiredLabels = [filterCopy requiredLabels];
    v42 = v14;
    v22 = -[KGDegasGraphStore _lock_filterNodesWithRequiredLabels:includeTombstones:nodeIdentifiers:error:](self, "_lock_filterNodesWithRequiredLabels:includeTombstones:nodeIdentifiers:error:", requiredLabels, [filterCopy includeTombstones], &v47, &v42);
    v23 = v42;

    if (!v22)
    {
LABEL_23:
      v14 = v23;
      goto LABEL_37;
    }

    optionalLabels = [filterCopy optionalLabels];
    v41 = v23;
    v25 = -[KGDegasGraphStore _lock_filterNodesWithOptionalLabels:includeTombstones:nodeIdentifiers:error:](self, "_lock_filterNodesWithOptionalLabels:includeTombstones:nodeIdentifiers:error:", optionalLabels, [filterCopy includeTombstones], &v47, &v41);
    v26 = v41;

    if (v25)
    {
      properties = [filterCopy properties];
      v40 = v26;
      v28 = -[KGDegasGraphStore _lock_filterNodesWithProperties:includeTombstones:nodeIdentifiers:error:](self, "_lock_filterNodesWithProperties:includeTombstones:nodeIdentifiers:error:", properties, [filterCopy includeTombstones], &v47, &v40);
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
  if (error && !v47)
  {
    v37 = v20;
    *error = v20;
    v36 = v47;
  }

  v38 = v36;

  return v38;
}

- (BOOL)_lock_filterNodesWithProperties:(id)properties includeTombstones:(BOOL)tombstones nodeIdentifiers:(id *)identifiers error:(id *)error
{
  tombstonesCopy = tombstones;
  v54 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  os_unfair_lock_assert_owner(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  if ([propertiesCopy count])
  {
    v10 = *identifiers;
    identifiersCopy2 = v10;
    if (v10 && ([v10 isEmpty] & 1) != 0)
    {
      LOBYTE(identifiers) = 1;
LABEL_44:

      goto LABEL_45;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = propertiesCopy;
    v45 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (!v45)
    {
LABEL_40:

      if (identifiersCopy2)
      {
        identifiersCopy2 = identifiersCopy2;
        obj = *identifiers;
        *identifiers = identifiersCopy2;
        LOBYTE(identifiers) = 1;
LABEL_42:
      }

      else
      {
        LOBYTE(identifiers) = 0;
      }

      goto LABEL_44;
    }

    v12 = *v50;
    v43 = *v50;
    errorCopy = error;
    identifiersCopy = identifiers;
    v42 = propertiesCopy;
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
        v36 = *identifiersCopy;
        *identifiersCopy = v35;

        LOBYTE(identifiers) = 1;
LABEL_38:
        propertiesCopy = v42;
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
        value = [v17 value];
        -[KGDatabase filterNodeIdentifiersForPropertyName:value:comparator:nodeIdentifiers:error:](database, "filterNodeIdentifiersForPropertyName:value:comparator:nodeIdentifiers:error:", v14, value, [v17 comparator], identifiersCopy2, error);
        v21 = v20 = error;

        if (tombstonesCopy)
        {
          v22 = self->_database;
          value2 = [v17 value];
          identifiers = -[KGDatabase filterTombstoneNodeIdentifiersForPropertyName:value:comparator:nodeIdentifiers:error:](v22, "filterTombstoneNodeIdentifiersForPropertyName:value:comparator:nodeIdentifiers:error:", v14, value2, [v17 comparator], identifiersCopy2, v20);

          v24 = [v21 identifierSetByFormingUnion:identifiers];

          v21 = v24;
          goto LABEL_20;
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          identifiers = [(KGDatabase *)self->_database filterNodeIdentifiersForPropertyName:v14 value:v16 comparator:1 nodeIdentifiers:identifiersCopy2 error:error];
          if (!tombstonesCopy)
          {
            goto LABEL_27;
          }

          v25 = [(KGDatabase *)self->_database filterTombstoneNodeIdentifiersForPropertyName:v14 value:v16 comparator:1 nodeIdentifiers:identifiersCopy2 error:error];
          goto LABEL_24;
        }

        v17 = v16;
        v26 = self->_database;
        value1 = [v17 value1];
        value22 = [v17 value2];
        -[KGDatabase filterNodeIdentifiersForPropertyName:rangeValue1:rangeValue2:comparator:nodeIdentifiers:error:](v26, "filterNodeIdentifiersForPropertyName:rangeValue1:rangeValue2:comparator:nodeIdentifiers:error:", v14, value1, value22, [v17 comparator], identifiersCopy2, error);
        v21 = v29 = error;

        if (tombstonesCopy)
        {
          v40 = self->_database;
          value12 = [v17 value1];
          value23 = [v17 value2];
          identifiers = -[KGDatabase filterTombstoneNodeIdentifiersForPropertyName:rangeValue1:rangeValue2:comparator:nodeIdentifiers:error:](v40, "filterTombstoneNodeIdentifiersForPropertyName:rangeValue1:rangeValue2:comparator:nodeIdentifiers:error:", v14, value12, value23, [v17 comparator], identifiersCopy2, v29);

          v32 = [v21 identifierSetByFormingUnion:identifiers];

          v21 = v32;
LABEL_20:
          v12 = v43;
LABEL_25:

          goto LABEL_26;
        }
      }

      v12 = v43;
LABEL_26:

      identifiers = v21;
      error = errorCopy;
LABEL_27:
      if (!identifiers)
      {
        v37 = *identifiersCopy;
        *identifiersCopy = 0;

        goto LABEL_38;
      }

      if (identifiersCopy2)
      {
        v33 = [identifiersCopy2 identifierSetByIntersectingIdentifierSet:identifiers];

        identifiersCopy2 = v33;
      }

      else
      {
        identifiersCopy2 = identifiers;
      }

      v34 = [identifiersCopy2 count];

      if (!v34)
      {
        identifiers = identifiersCopy;
        propertiesCopy = v42;
        goto LABEL_40;
      }

      if (v45 == ++v13)
      {
        identifiers = identifiersCopy;
        propertiesCopy = v42;
        v45 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
        if (v45)
        {
          goto LABEL_7;
        }

        goto LABEL_40;
      }
    }

    identifiers = [(KGDatabase *)self->_database filterNodeIdentifiersForPropertyName:v14 values:v16 comparator:1 nodeIdentifiers:identifiersCopy2 error:error];
    if (!tombstonesCopy)
    {
      goto LABEL_27;
    }

    v25 = [(KGDatabase *)self->_database filterTombstoneNodeIdentifiersForPropertyName:v14 values:v16 comparator:1 nodeIdentifiers:identifiersCopy2 error:error];
LABEL_24:
    v17 = v25;
    v21 = [identifiers identifierSetByFormingUnion:v25];
    goto LABEL_25;
  }

  LOBYTE(identifiers) = 1;
LABEL_45:

  v38 = *MEMORY[0x277D85DE8];
  return identifiers;
}

- (id)_resolvedPropertyValue:(id)value isScalar:(BOOL *)scalar
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [valueCopy count];
    if (v6)
    {
      if (v6 == 1)
      {
        firstObject = [valueCopy firstObject];
LABEL_9:
        v9 = firstObject;
        goto LABEL_11;
      }

      goto LABEL_18;
    }

LABEL_10:
    v9 = 0;
LABEL_11:

    v10 = 1;
    valueCopy = v9;
    if (!scalar)
    {
      goto LABEL_15;
    }

LABEL_14:
    *scalar = v10;
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 1;
    if (!scalar)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v8 = [valueCopy count];
  if (!v8)
  {
    goto LABEL_10;
  }

  if (v8 == 1)
  {
    firstObject = [valueCopy anyObject];
    goto LABEL_9;
  }

LABEL_18:
  v10 = 0;
  if (scalar)
  {
    goto LABEL_14;
  }

LABEL_15:

  return valueCopy;
}

- (BOOL)_lock_filterNodesWithOptionalLabels:(id)labels includeTombstones:(BOOL)tombstones nodeIdentifiers:(id *)identifiers error:(id *)error
{
  tombstonesCopy = tombstones;
  labelsCopy = labels;
  os_unfair_lock_assert_owner(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  if ([labelsCopy count])
  {
    v11 = *identifiers;
    v12 = v11;
    if (v11 && ![v11 count])
    {
      v16 = 1;
    }

    else
    {
      v13 = [(KGDatabase *)self->_database unionOfNodesWithLabels:labelsCopy filterNodeIdentifiers:v12 error:error];
      if (tombstonesCopy)
      {
        v14 = [(KGDatabase *)self->_database unionOfTombstoneNodesWithLabels:labelsCopy filterNodeIdentifiers:v12 error:error];
        v15 = [v13 identifierSetByFormingUnion:v14];

        v13 = v15;
      }

      v16 = v13 != 0;
      if (v13)
      {
        objc_storeStrong(identifiers, v13);
      }
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (BOOL)_lock_filterNodesWithRequiredLabels:(id)labels includeTombstones:(BOOL)tombstones nodeIdentifiers:(id *)identifiers error:(id *)error
{
  tombstonesCopy = tombstones;
  labelsCopy = labels;
  os_unfair_lock_assert_owner(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  if ([labelsCopy count])
  {
    v11 = *identifiers;
    v12 = v11;
    if (v11 && ![v11 count])
    {
      v16 = 1;
    }

    else
    {
      v13 = [(KGDatabase *)self->_database intersectionOfNodesWithLabels:labelsCopy filterNodeIdentifiers:v12 error:error];
      if (tombstonesCopy)
      {
        v14 = [(KGDatabase *)self->_database intersectionOfTombstoneNodesWithLabels:labelsCopy filterNodeIdentifiers:v12 error:error];
        v15 = [v13 identifierSetByFormingUnion:v14];

        v13 = v15;
      }

      v16 = v13 != 0;
      if (v13)
      {
        objc_storeStrong(identifiers, v13);
      }
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (id)edgeForIdentifier:(unint64_t)identifier entityFactory:(id)factory error:(id *)error
{
  factoryCopy = factory;
  os_unfair_lock_lock(&self->_lock);
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__714;
  v17 = __Block_byref_object_dispose__715;
  v18 = 0;
  v9 = [[KGElementIdentifierSet alloc] initWithElementIdentifier:identifier];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__KGDegasGraphStore_edgeForIdentifier_entityFactory_error___block_invoke;
  v12[3] = &unk_2797FDD00;
  v12[4] = &v13;
  [(KGDegasGraphStore *)self _lock_enumerateEdgesWithIdentifiers:v9 entityFactory:factoryCopy error:error block:v12];
  os_unfair_lock_unlock(&self->_lock);
  v10 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v10;
}

- (id)orderedArrayOfEdgesWithIdentifiers:(id)identifiers entityFactory:(id)factory error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  factoryCopy = factory;
  os_unfair_lock_lock(&self->_lock);
  v10 = [[KGElementIdentifierSet alloc] initWithIndexArray:identifiersCopy];
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[KGElementIdentifierSet count](v10, "count")}];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __76__KGDegasGraphStore_orderedArrayOfEdgesWithIdentifiers_entityFactory_error___block_invoke;
  v40[3] = &unk_2797FDCD8;
  v13 = v12;
  v41 = v13;
  selfCopy = self;
  v31 = factoryCopy;
  [(KGDegasGraphStore *)self _lock_enumerateEdgesWithIdentifiers:v10 entityFactory:factoryCopy error:error block:v40];
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
  v22 = identifiersCopy;
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

  os_unfair_lock_unlock(&selfCopy->_lock);
  v28 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)arrayOfEdgesWithIdentifiers:(id)identifiers entityFactory:(id)factory error:(id *)error
{
  factoryCopy = factory;
  identifiersCopy = identifiers;
  os_unfair_lock_lock(&self->_lock);
  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__KGDegasGraphStore_arrayOfEdgesWithIdentifiers_entityFactory_error___block_invoke;
  v13[3] = &unk_2797FDCD8;
  v11 = v10;
  v14 = v11;
  [(KGDegasGraphStore *)self _lock_enumerateEdgesWithIdentifiers:identifiersCopy entityFactory:factoryCopy error:error block:v13];

  os_unfair_lock_unlock(&self->_lock);

  return v11;
}

- (BOOL)_lock_enumerateEdgesWithIdentifiers:(id)identifiers entityFactory:(id)factory error:(id *)error block:(id)block
{
  identifiersCopy = identifiers;
  factoryCopy = factory;
  blockCopy = block;
  os_unfair_lock_assert_owner(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  v13 = [(KGDatabase *)self->_database allNodeIdentifiersOfEdgesWithIdentifiers:identifiersCopy error:error];
  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __83__KGDegasGraphStore__lock_enumerateEdgesWithIdentifiers_entityFactory_error_block___block_invoke;
    v29[3] = &unk_2797FDC60;
    v15 = v14;
    v30 = v15;
    [(KGDegasGraphStore *)self _lock_enumerateNodesWithIdentifiers:v13 entityFactory:factoryCopy block:v29];
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
    v22 = factoryCopy;
    v24 = &v25;
    v23 = blockCopy;
    [(KGDatabase *)database enumerateEdgesWithIdentifiers:identifiersCopy block:v20];
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

- (id)nodeForIdentifier:(unint64_t)identifier entityFactory:(id)factory error:(id *)error
{
  factoryCopy = factory;
  os_unfair_lock_lock(&self->_lock);
  v9 = [(KGDegasGraphStore *)self _lock_nodeForIdentifier:identifier entityFactory:factoryCopy error:error];

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (id)_lock_nodeForIdentifier:(unint64_t)identifier entityFactory:(id)factory error:(id *)error
{
  factoryCopy = factory;
  os_unfair_lock_assert_owner(&self->_lock);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__714;
  v16 = __Block_byref_object_dispose__715;
  v17 = 0;
  v8 = [[KGElementIdentifierSet alloc] initWithElementIdentifier:identifier];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__KGDegasGraphStore__lock_nodeForIdentifier_entityFactory_error___block_invoke;
  v11[3] = &unk_2797FDC88;
  v11[4] = &v12;
  [(KGDegasGraphStore *)self _lock_enumerateNodesWithIdentifiers:v8 entityFactory:factoryCopy block:v11];
  v9 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v9;
}

- (id)orderedArrayOfNodesWithIdentifiers:(id)identifiers entityFactory:(id)factory error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  factoryCopy = factory;
  os_unfair_lock_lock(&self->_lock);
  v9 = [[KGElementIdentifierSet alloc] initWithIndexArray:identifiersCopy];
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[KGElementIdentifierSet count](v9, "count")}];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __76__KGDegasGraphStore_orderedArrayOfNodesWithIdentifiers_entityFactory_error___block_invoke;
  v39[3] = &unk_2797FDC60;
  v12 = v11;
  v40 = v12;
  selfCopy = self;
  v30 = factoryCopy;
  [(KGDegasGraphStore *)self _lock_enumerateNodesWithIdentifiers:v9 entityFactory:factoryCopy block:v39];
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
  v21 = identifiersCopy;
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

  os_unfair_lock_unlock(&selfCopy->_lock);
  v27 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)arrayOfNodesWithIdentifiers:(id)identifiers entityFactory:(id)factory error:(id *)error
{
  factoryCopy = factory;
  identifiersCopy = identifiers;
  os_unfair_lock_lock(&self->_lock);
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__KGDegasGraphStore_arrayOfNodesWithIdentifiers_entityFactory_error___block_invoke;
  v12[3] = &unk_2797FDC60;
  v10 = v9;
  v13 = v10;
  [(KGDegasGraphStore *)self _lock_enumerateNodesWithIdentifiers:identifiersCopy entityFactory:factoryCopy block:v12];

  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (void)_lock_enumerateNodesWithIdentifiers:(id)identifiers entityFactory:(id)factory block:(id)block
{
  factoryCopy = factory;
  blockCopy = block;
  identifiersCopy = identifiers;
  os_unfair_lock_assert_owner(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  database = self->_database;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__KGDegasGraphStore__lock_enumerateNodesWithIdentifiers_entityFactory_block___block_invoke;
  v14[3] = &unk_2797FDC38;
  v15 = factoryCopy;
  v16 = blockCopy;
  v12 = blockCopy;
  v13 = factoryCopy;
  [(KGDatabase *)database enumerateNodesWithIdentifiers:identifiersCopy block:v14];
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

- (BOOL)addEdges:(id)edges error:(id *)error
{
  edgesCopy = edges;
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  LOBYTE(error) = [(KGDatabase *)self->_database addEdges:edgesCopy error:error];

  os_unfair_lock_unlock(&self->_lock);
  return error;
}

- (BOOL)addNodes:(id)nodes error:(id *)error
{
  nodesCopy = nodes;
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  LOBYTE(error) = [(KGDatabase *)self->_database addNodes:nodesCopy error:error];

  os_unfair_lock_unlock(&self->_lock);
  return error;
}

- (NSUUID)graphIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  _lock_graphIdentifier = [(KGDegasGraphStore *)self _lock_graphIdentifier];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_graphIdentifier;
}

- (id)_lock_graphIdentifier
{
  os_unfair_lock_assert_owner(&self->_lock);
  database = self->_database;

  return [(KGDatabase *)database graphIdentifier];
}

- (void)setGraphVersion:(unint64_t)version
{
  os_unfair_lock_lock(&self->_lock);
  CheckInTransaction(self->_inTransactionCheckIsEnabled, self->_transactionCounter);
  [(KGDatabase *)self->_database setGraphVersion:version];

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)graphVersion
{
  os_unfair_lock_lock(&self->_lock);
  graphVersion = [(KGDatabase *)self->_database graphVersion];
  os_unfair_lock_unlock(&self->_lock);
  return graphVersion;
}

- (KGDegasGraphStore)initWithURL:(id)l
{
  lCopy = l;
  v12.receiver = self;
  v12.super_class = KGDegasGraphStore;
  v6 = [(KGDegasGraphStore *)&v12 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  if (lCopy)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_url, l);
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
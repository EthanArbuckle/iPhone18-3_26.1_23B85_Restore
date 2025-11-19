@interface HDSourceOrderManager
- (BOOL)_updateOrderedSourceIDsForWrappedSource:(void *)a3 transactionCache:(void *)a4 transaction:(uint64_t)a5 error:;
- (BOOL)_updateSourceOrder:(uint64_t)a1 type:(void *)a2 syncIdentity:(void *)a3 transactionCache:(uint64_t)a4 transaction:(void *)a5 error:(uint64_t)a6;
- (BOOL)addOrderedSource:(id)a3 objectTypes:(id)a4 error:(id *)a5;
- (BOOL)createSourceOrdersWithCodables:(id)a3 error:(id *)a4;
- (BOOL)resetCacheWithError:(id *)a3;
- (BOOL)updateOrderedSources:(id)a3 forObjectType:(id)a4 error:(id *)a5;
- (HDSourceOrderManager)initWithProfile:(id)a3;
- (char)_sourceOrderForCodableSourceOrder:(void *)a3 transactionCache:(void *)a4 transaction:(uint64_t)a5 error:;
- (id)_sourceCacheItemForObjectType:(void *)a3 transactionCache:(void *)a4 transaction:(uint64_t)a5 error:;
- (id)orderedSourceIDsForObjectType:(id)a3 error:(id *)a4;
- (id)orderedSourceIDsWithUnorderedIDs:(id)a3 objectType:(id)a4 error:(id *)a5;
- (id)orderedSourcesForObjectType:(id)a3 error:(id *)a4;
- (uint64_t)_mergedSourceOrderForExistingOrder:incomingOrder:existingSyncIdentity:incomingSyncIdentity:;
- (void)_mergedSourceOrderForExistingOrder:(void *)a3 incomingOrder:(void *)a4 existingSyncIdentity:(void *)a5 incomingSyncIdentity:(void *)a6;
@end

@implementation HDSourceOrderManager

- (HDSourceOrderManager)initWithProfile:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"HDSourceOrderManager.mm" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"profile != nil"}];
  }

  v15.receiver = self;
  v15.super_class = HDSourceOrderManager;
  v6 = [(HDSourceOrderManager *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_profile, v5);
    v8 = [HDDatabaseValueCache alloc];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [(HDDatabaseValueCache *)v8 initWithName:v10];
    sourceOrdersForTypeCache = v7->_sourceOrdersForTypeCache;
    v7->_sourceOrdersForTypeCache = v11;
  }

  return v7;
}

- (BOOL)resetCacheWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained database];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__HDSourceOrderManager_resetCacheWithError___block_invoke;
  v8[3] = &unk_27861CA78;
  v8[4] = self;
  LOBYTE(a3) = [(HDHealthEntity *)HDLogicalSourceOrderEntity performWriteTransactionWithHealthDatabase:v6 error:a3 block:v8];

  return a3;
}

- (BOOL)createSourceOrdersWithCodables:(id)a3 error:(id *)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [WeakRetained database];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__HDSourceOrderManager_createSourceOrdersWithCodables_error___block_invoke;
  v11[3] = &unk_27861CD40;
  v11[4] = self;
  v9 = v6;
  v12 = v9;
  LOBYTE(a4) = [(HDHealthEntity *)HDLogicalSourceOrderEntity performWriteTransactionWithHealthDatabase:v8 error:a4 block:v11];

  return a4;
}

uint64_t __61__HDSourceOrderManager_createSourceOrdersWithCodables_error___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v3 = [_HDSourceOrderTransactionCache alloc];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = [(_HDSourceOrderTransactionCache *)&v3->super.isa initWithProfile:?];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = *(a1 + 40);
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = *v20;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(a1 + 32);
        v16 = *(*(&v19 + 1) + 8 * i);
        v17 = v5;
        v18 = v14;
        v9 = HKWithAutoreleasePool();

        if (!v9)
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

BOOL __61__HDSourceOrderManager_createSourceOrdersWithCodables_error___block_invoke_2(uint64_t a1, uint64_t *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((v5 + 8));
  v8 = *(a1 + 56);
  v9 = v4;
  v45 = v6;
  v10 = WeakRetained;
  v11 = v8;
  if (!v5)
  {
    goto LABEL_19;
  }

  if (([v9 hasSyncIdentity] & 1) == 0)
  {
    v12 = [v10 syncIdentityManager];
    v13 = [v12 legacySyncIdentity];
    v14 = [v13 identity];
    v15 = [v14 codableSyncIdentity];
    [v9 setSyncIdentity:v15];
  }

  v16 = v9;
  if (![v16 hasObjectType] || !objc_msgSend(v16, "hasUserOrdered") || !objc_msgSend(v16, "hasSourceUUIDs") || (objc_msgSend(v16, "hasSyncIdentity") & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a2 code:3 format:{@"Invalid codable source order %@", v16}];

LABEL_19:
    v22 = 0;
LABEL_20:

    goto LABEL_21;
  }

  [v16 decodedDataTypeCode];
  if ((_HKValidDataTypeCode() & 1) == 0)
  {
    _HKInitializeLogging();
    v33 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [v16 objectType];
      _os_log_error_impl(&dword_228986000, v33, OS_LOG_TYPE_ERROR, "Ignoring source order for invalid data type code %lld", &buf, 0xCu);
    }

    v22 = 2;
    goto LABEL_20;
  }

  v17 = [MEMORY[0x277CCD720] dataTypeWithCode:{objc_msgSend(v16, "decodedDataTypeCode")}];
  if (!v17)
  {
    _HKInitializeLogging();
    log = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [v16 objectType];
      _os_log_error_impl(&dword_228986000, log, OS_LOG_TYPE_ERROR, "Ignoring source order for unknown data type code %lld", &buf, 0xCu);
    }

    v22 = 2;
    goto LABEL_39;
  }

  log = [(HDSourceOrderManager *)v5 _sourceCacheItemForObjectType:v17 transactionCache:v45 transaction:v11 error:a2];
  if (log)
  {
    v43 = [HDLogicalSourceOrderEntity syncIdentityForType:v17 profile:v10 transaction:v11 error:a2];
    if (!v43)
    {
      v18 = v17;
      v19 = objc_loadWeakRetained((v5 + 8));
      v20 = [v19 syncIdentityManager];
      v43 = [v20 currentSyncIdentity];

      v17 = v18;
    }

    v21 = [(HDSourceOrderManager *)v5 _sourceOrderForCodableSourceOrder:v16 transactionCache:v45 transaction:v11 error:a2];
    v22 = 0;
    v42 = v21;
    if (v21 && v21 != log)
    {
      v23 = [v16 syncIdentity];
      v24 = [HDSyncIdentity syncIdentityWithCodable:v23 error:a2];

      v41 = v24;
      if (v24)
      {
        v39 = objc_loadWeakRetained((v5 + 8));
        v25 = [v39 syncIdentityManager];
        v26 = [v25 concreteIdentityForIdentity:v24 shouldCreate:1 transaction:v11 error:a2];

        v38 = v26;
        if (v26)
        {
          [(HDSourceOrderManager *)&buf _mergedSourceOrderForExistingOrder:v5 incomingOrder:log existingSyncIdentity:v42 incomingSyncIdentity:v43, v26];
          v27 = buf;
          v40 = *(&buf + 1);
          v28 = [v40 entity];
          v29 = -[HDSourceOrderManager _updateSourceOrder:type:syncIdentity:transactionCache:transaction:error:](v5, v27, v17, [v28 persistentID], v11, a2);

          v22 = v29;
          v30 = v38;
        }

        else
        {
          _HKInitializeLogging();
          v35 = *MEMORY[0x277CCC2A0];
          v30 = 0;
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
          {
            v37 = *a2;
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v37;
            _os_log_fault_impl(&dword_228986000, v35, OS_LOG_TYPE_FAULT, "ConcreteSyncIdentity from received codable is nil %{public}@", &buf, 0xCu);
          }

          v22 = 0;
        }
      }

      else
      {
        _HKInitializeLogging();
        v34 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
        {
          v36 = *a2;
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v36;
          _os_log_fault_impl(&dword_228986000, v34, OS_LOG_TYPE_FAULT, "SyncIdentity from received codable is nil %{public}@", &buf, 0xCu);
        }

        v22 = 0;
      }
    }

LABEL_39:
    goto LABEL_40;
  }

  v22 = 0;

LABEL_40:
  if ((v22 | 2) == 2)
  {
    goto LABEL_22;
  }

  v10 = [MEMORY[0x277CCD720] dataTypeWithCode:{objc_msgSend(*(a1 + 40), "decodedDataTypeCode")}];
  if (v10)
  {
    [*(*(a1 + 32) + 16) removeObjectForKey:v10 transaction:*(a1 + 56)];
  }

LABEL_21:

LABEL_22:
  result = v22 != 0;
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)orderedSourcesForObjectType:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (self)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__65;
    v21 = __Block_byref_object_dispose__65;
    v22 = 0;
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v8 = [WeakRetained database];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__HDSourceOrderManager__sourceCacheItemForObjectType_error___block_invoke;
    v14[3] = &unk_27861CE58;
    v14[4] = self;
    v16 = &v17;
    v15 = v6;
    v9 = [(HDHealthEntity *)HDLogicalSourceOrderEntity performReadTransactionWithHealthDatabase:v8 error:a4 block:v14];

    if (v9)
    {
      v10 = v18[5];
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v11 = 0;
  }

  v12 = [(_HDCachedSourceOrder *)v11 sources];

  return v12;
}

- (id)orderedSourceIDsForObjectType:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__65;
  v19 = __Block_byref_object_dispose__65;
  v20 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [WeakRetained database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__HDSourceOrderManager_orderedSourceIDsForObjectType_error___block_invoke;
  v12[3] = &unk_27861CD68;
  v14 = &v15;
  v9 = v6;
  v13 = v9;
  [(HDHealthEntity *)HDLogicalSourceOrderEntity performReadTransactionWithHealthDatabase:v8 error:a4 block:v12];

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

BOOL __60__HDSourceOrderManager_orderedSourceIDsForObjectType_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [HDLogicalSourceOrderEntity sourceIDsWithDataType:*(a1 + 32) transaction:v5 error:a3];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(*(a1 + 40) + 8) + 40) != 0;
  return v9;
}

- (id)orderedSourceIDsWithUnorderedIDs:(id)a3 objectType:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__65;
  v24 = __Block_byref_object_dispose__65;
  v25 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [WeakRetained database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__HDSourceOrderManager_orderedSourceIDsWithUnorderedIDs_objectType_error___block_invoke;
  v16[3] = &unk_27861CD90;
  v19 = &v20;
  v12 = v9;
  v17 = v12;
  v13 = v8;
  v18 = v13;
  [(HDHealthEntity *)HDLogicalSourceOrderEntity performReadTransactionWithHealthDatabase:v11 error:a5 block:v16];

  v14 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v14;
}

BOOL __74__HDSourceOrderManager_orderedSourceIDsWithUnorderedIDs_objectType_error___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [HDLogicalSourceOrderEntity sourceIDsWithDataType:a1[4] unorderedIDs:a1[5] transaction:v5 error:a3];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1[6] + 8) + 40) != 0;
  return v9;
}

- (BOOL)updateOrderedSources:(id)a3 forObjectType:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [WeakRetained database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__HDSourceOrderManager_updateOrderedSources_forObjectType_error___block_invoke;
  v15[3] = &unk_27861CA28;
  v15[4] = self;
  v12 = v8;
  v16 = v12;
  v13 = v9;
  v17 = v13;
  LOBYTE(a5) = [(HDHealthEntity *)HDLogicalSourceOrderEntity performWriteTransactionWithHealthDatabase:v11 error:a5 block:v15];

  return a5;
}

BOOL __65__HDSourceOrderManager_updateOrderedSources_forObjectType_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v19 = a2;
  v5 = [_HDSourceOrderTransactionCache alloc];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v21 = [(_HDSourceOrderTransactionCache *)&v5->super.isa initWithProfile:?];

  v31 = 0;
  v32 = &v31;
  v33 = 0x4812000000;
  v34 = __Block_byref_object_copy__307;
  v35 = __Block_byref_object_dispose__308;
  v36 = &unk_22929BC4D;
  memset(v37, 0, sizeof(v37));
  std::vector<_HDWrappedSource>::reserve(v37, [*(a1 + 40) count]);
  v7 = [v19 databaseForEntityClass:objc_opt_class()];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *(a1 + 40);
  v8 = [obj countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v8)
  {
    v9 = *v28;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v22[3] = MEMORY[0x277D85DD0];
        v22[4] = 3221225472;
        v22[5] = __65__HDSourceOrderManager_updateOrderedSources_forObjectType_error___block_invoke_309;
        v22[6] = &unk_27861CDB8;
        v23 = v21;
        v24 = v11;
        v25 = v7;
        v26 = &v31;
        LODWORD(v11) = HKWithAutoreleasePool();

        if (!v11)
        {
          v16 = 0;
          goto LABEL_11;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v27 objects:v39 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = [_HDCachedSourceOrder alloc];
  memset(v22, 0, 24);
  std::vector<_HDWrappedSource>::__init_with_size[abi:ne200100]<_HDWrappedSource*,_HDWrappedSource*>(v22, v32[6], v32[7], 0xAAAAAAAAAAAAAAABLL * ((v32[7] - v32[6]) >> 3));
  obj = [(_HDCachedSourceOrder *)v12 initWithSources:v22 userOrdered:1 isDefaultOrder:0];
  v38 = v22;
  std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](&v38);
  v13 = *(a1 + 32);
  v14 = *(a1 + 48);
  v15 = objc_loadWeakRetained((v13 + 8));
  v16 = -[HDSourceOrderManager _updateSourceOrder:type:syncIdentity:transactionCache:transaction:error:](v13, obj, v14, [v15 currentSyncIdentityPersistentID], v19, a3);

LABEL_11:
  _Block_object_dispose(&v31, 8);
  v38 = v37;
  std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](&v38);

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

BOOL __65__HDSourceOrderManager_updateOrderedSources_forObjectType_error___block_invoke_309(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) bundleIdentifier];
  v6 = [(_HDSourceOrderTransactionCache *)v4 orderedSourceIDsForBundleIdentifier:v5 database:*(a1 + 48) error:a2];

  if (v6)
  {
    v7 = *(a1 + 40);
    v9[0] = v7;
    v9[1] = CFAbsoluteTimeGetCurrent();
    v10 = 1;
    std::vector<_HDWrappedSource>::push_back[abi:ne200100]((*(*(a1 + 56) + 8) + 48), v9);
  }

  return v6 != 0;
}

- (BOOL)_updateSourceOrder:(uint64_t)a1 type:(void *)a2 syncIdentity:(void *)a3 transactionCache:(uint64_t)a4 transaction:(void *)a5 error:(uint64_t)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a5;
  if (a1)
  {
    v14 = [*(a1 + 16) objectForKey:v12];
    if ([v14 isEqual:v11])
    {
      v15 = 1;
    }

    else
    {
      [*(a1 + 16) setObject:v11 forKey:v12 transaction:v13];
      _HKInitializeLogging();
      v16 = MEMORY[0x277CCC2A0];
      v17 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
      {
        v18 = v17;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v22 = [(_HDCachedSourceOrder *)v11 sources];
          v23 = [v22 componentsJoinedByString:{@", "}];
          *buf = 138412546;
          v29 = v12;
          v30 = 2112;
          v31 = v23;
          _os_log_debug_impl(&dword_228986000, v18, OS_LOG_TYPE_DEBUG, "Updating source order for type %@ sources (%@)", buf, 0x16u);
        }
      }

      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __96__HDSourceOrderManager__updateSourceOrder_type_syncIdentity_transactionCache_transaction_error___block_invoke;
      v24[3] = &unk_27861CE30;
      v25 = v11;
      v26 = v13;
      v27 = a4;
      v15 = [HDLogicalSourceOrderEntity updateOrderedLogicalSourcesForType:v12 transaction:v26 error:a6 updateHandler:v24];
      if (!v15)
      {
        _HKInitializeLogging();
        v19 = *v16;
        if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v29 = v12;
          v30 = 2114;
          v31 = 0;
          _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "Failed to update source order for type %@: %{public}@.", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v15;
}

- (char)_sourceOrderForCodableSourceOrder:(void *)a3 transactionCache:(void *)a4 transaction:(uint64_t)a5 error:
{
  v55 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v28 = a3;
  v29 = a4;
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = [v9 sourceUUIDs];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __93__HDSourceOrderManager__sourceOrderForCodableSourceOrder_transactionCache_transaction_error___block_invoke;
  v49[3] = &unk_27861CDE0;
  v23 = v9;
  v50 = v23;
  v27 = v21;
  v51 = v27;
  v24 = v22;
  v52 = v24;
  v11 = [HDSourceEntity enumerateBundleIdentifiersForSourcesForUUIDData:v10 transaction:v29 error:a5 enumerationHandler:v49];

  if (v11)
  {
    v42 = 0;
    v43 = &v42;
    v44 = 0x4812000000;
    v45 = __Block_byref_object_copy__307;
    v46 = __Block_byref_object_dispose__308;
    v47 = &unk_22929BC4D;
    memset(v48, 0, sizeof(v48));
    std::vector<_HDWrappedSource>::reserve(v48, [v24 count]);
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v26 = [WeakRetained sourceManager];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v24;
    v13 = [obj countByEnumeratingWithState:&v38 objects:v54 count:16];
    if (v13)
    {
      v14 = *v39;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v39 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v38 + 1) + 8 * i);
          v30[3] = MEMORY[0x277D85DD0];
          v30[4] = 3221225472;
          v30[5] = __93__HDSourceOrderManager__sourceOrderForCodableSourceOrder_transactionCache_transaction_error___block_invoke_2;
          v30[6] = &unk_27861CE08;
          v31 = v26;
          v32 = v16;
          v33 = v27;
          v34 = a1;
          v35 = v28;
          v36 = v29;
          v37 = &v42;
          LODWORD(v16) = HKWithAutoreleasePool();

          if (!v16)
          {

            v18 = 0;
            goto LABEL_13;
          }
        }

        v13 = [obj countByEnumeratingWithState:&v38 objects:v54 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v17 = [_HDCachedSourceOrder alloc];
    memset(v30, 0, 24);
    std::vector<_HDWrappedSource>::__init_with_size[abi:ne200100]<_HDWrappedSource*,_HDWrappedSource*>(v30, v43[6], v43[7], 0xAAAAAAAAAAAAAAABLL * ((v43[7] - v43[6]) >> 3));
    v18 = -[_HDCachedSourceOrder initWithSources:userOrdered:isDefaultOrder:](v17, v30, [v23 userOrdered], 0);
    v53 = v30;
    std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](&v53);
LABEL_13:

    _Block_object_dispose(&v42, 8);
    v53 = v48;
    std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](&v53);
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void __93__HDSourceOrderManager__sourceOrderForCodableSourceOrder_transactionCache_transaction_error___block_invoke(id *a1, unint64_t a2, void *a3)
{
  v12 = a3;
  v5 = 0.0;
  if ([a1[4] modificationDatesCount] > a2)
  {
    v5 = *([a1[4] modificationDates] + 8 * a2);
  }

  v6 = [a1[5] objectForKeyedSubscript:v12];
  v7 = v6;
  v8 = MEMORY[0x277CCABB0];
  if (v6)
  {
    [v6 doubleValue];
    if (v9 < v5)
    {
      v9 = v5;
    }

    v10 = [v8 numberWithDouble:v9];
    [a1[5] setObject:v10 forKeyedSubscript:v12];
  }

  else
  {
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
    [a1[5] setObject:v11 forKeyedSubscript:v12];

    [a1[6] addObject:v12];
  }
}

BOOL __93__HDSourceOrderManager__sourceOrderForCodableSourceOrder_transactionCache_transaction_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) clientSourceForBundleIdentifier:*(a1 + 40) error:a2];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v11[0] = v6;
    v7 = [*(a1 + 48) objectForKeyedSubscript:*(a1 + 40)];
    [v7 doubleValue];
    v11[1] = v8;

    v12 = 1;
    v9 = [(HDSourceOrderManager *)*(a1 + 56) _updateOrderedSourceIDsForWrappedSource:v11 transactionCache:*(a1 + 64) transaction:*(a1 + 72) error:a2];
    if (v9)
    {
      std::vector<_HDWrappedSource>::push_back[abi:ne200100]((*(*(a1 + 80) + 8) + 48), v11);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_updateOrderedSourceIDsForWrappedSource:(void *)a3 transactionCache:(void *)a4 transaction:(uint64_t)a5 error:
{
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v11 = [*a2 bundleIdentifier];
    v12 = [v10 databaseForEntityClass:objc_opt_class()];
    v13 = [(_HDSourceOrderTransactionCache *)v9 orderedSourceIDsForBundleIdentifier:v11 database:v12 error:a5];

    v14 = v13 != 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_mergedSourceOrderForExistingOrder:(void *)a3 incomingOrder:(void *)a4 existingSyncIdentity:(void *)a5 incomingSyncIdentity:(void *)a6
{
  v11 = a3;
  v12 = a4;
  v79[0] = a5;
  v78 = a6;
  WeakRetained = objc_loadWeakRetained((a2 + 8));
  v14 = [WeakRetained syncIdentityManager];
  v15 = [v14 currentSyncIdentity];
  location = v15;

  *a1 = 0;
  a1[1] = 0;
  if (v11[9] == 1)
  {
    *a1 = v12;
    a1[1] = v78;
    goto LABEL_52;
  }

  v16 = v11[8];
  v48 = v12;
  if (v16 == v12[8])
  {
    v17 = objc_loadWeakRetained((a2 + 8));
    v18 = [v17 syncIdentityManager];
    v72 = [v18 currentSyncIdentity];

    v71 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v74 = 0;
    v75 = 0;
    v76 = 0;
    [(_HDCachedSourceOrder *)v70 orderedSources];
    [(_HDCachedSourceOrder *)&v68 orderedSources];
    v19 = v70[0];
    v66 = v68;
    for (i = v70[0]; ; v19 = i)
    {
      if (v19 == v70[1])
      {
        if (v66 == v69)
        {
          v44 = [_HDCachedSourceOrder alloc];
          memset(v49, 0, sizeof(v49));
          std::vector<_HDWrappedSource>::__init_with_size[abi:ne200100]<_HDWrappedSource*,_HDWrappedSource*>(v49, v74, v75, 0xAAAAAAAAAAAAAAABLL * ((v75 - v74) >> 3));
          v45 = [(_HDCachedSourceOrder *)v44 initWithSources:v49 userOrdered:v11[8] isDefaultOrder:0];
          p_i = v49;
          std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](&p_i);
          *a1 = v45;
          a1[1] = location;
          p_i = &v68;
          std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](&p_i);
          p_i = v70;
          std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](&p_i);
          p_i = &v74;
          std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](&p_i);

          v43 = v72;
          goto LABEL_51;
        }

        if (([v71 containsObject:*v66] & 1) == 0)
        {
          std::vector<_HDWrappedSource>::push_back[abi:ne200100](&v74, v66);
          [v71 addObject:*v66];
          if (location == v78)
          {
            v22 = v78;
          }

          else
          {
            v22 = v72;
          }

          objc_storeStrong(&location, v22);
        }

LABEL_18:
        v66 += 3;
        continue;
      }

      v20 = *v19;
      if (v66 == v69)
      {
        if (([v71 containsObject:v20] & 1) == 0)
        {
          std::vector<_HDWrappedSource>::push_back[abi:ne200100](&v74, i);
          [v71 addObject:*i];
          if (location == v79[0])
          {
            v23 = v79[0];
          }

          else
          {
            v23 = v72;
          }

          objc_storeStrong(&location, v23);
        }

LABEL_24:
        i += 3;
        continue;
      }

      if ([v71 containsObject:v20])
      {
        goto LABEL_24;
      }

      if ([v71 containsObject:*v66])
      {
        goto LABEL_18;
      }

      p_i = &i;
      v59 = &v66;
      v60 = &v71;
      v61 = &v74;
      p_location = &location;
      v63 = v79;
      v64 = &v72;
      v65 = &v78;
      p_p_i = &i;
      v51 = &v66;
      v52 = &v71;
      v53 = &v74;
      v54 = &location;
      v55 = v79;
      v56 = &v72;
      v57 = &v78;
      if (v11[8] == 1)
      {
        if ([HDSourceOrderManager _mergedSourceOrderForExistingOrder:incomingOrder:existingSyncIdentity:incomingSyncIdentity:]::$_2::operator()(&p_i))
        {
          continue;
        }

        v21 = [HDSourceOrderManager _mergedSourceOrderForExistingOrder:incomingOrder:existingSyncIdentity:incomingSyncIdentity:]::$_3::operator()(&p_p_i);
      }

      else
      {
        if ([HDSourceOrderManager _mergedSourceOrderForExistingOrder:incomingOrder:existingSyncIdentity:incomingSyncIdentity:]::$_3::operator()(&p_p_i))
        {
          continue;
        }

        v21 = [HDSourceOrderManager _mergedSourceOrderForExistingOrder:incomingOrder:existingSyncIdentity:incomingSyncIdentity:]::$_2::operator()(&p_i);
      }

      if ((v21 & 1) == 0)
      {
        [v71 addObject:*i];
        std::vector<_HDWrappedSource>::push_back[abi:ne200100](&v74, i);
        i += 3;
        if (location == v79[0])
        {
          v24 = v79[0];
        }

        else
        {
          v24 = v72;
        }

        objc_storeStrong(&location, v24);
      }
    }
  }

  v25 = v16 == 0;
  if (v11[8])
  {
    v26 = v11;
  }

  else
  {
    v26 = v12;
  }

  if (v25)
  {
    v12 = v11;
  }

  if (v25)
  {
    v27 = &v78;
  }

  else
  {
    v27 = v79;
  }

  v28 = v26;
  v47 = v12;
  location = *v27;

  p_i = 0;
  v59 = 0;
  v60 = 0;
  v46 = v28;
  std::vector<_HDWrappedSource>::__init_with_size[abi:ne200100]<_HDWrappedSource*,_HDWrappedSource*>(&p_i, v28[2], v28[3], 0xAAAAAAAAAAAAAAABLL * ((v28[3] - v28[2]) >> 3));
  v29 = objc_alloc(MEMORY[0x277CBEB58]);
  v30 = [v29 initWithCapacity:0xAAAAAAAAAAAAAAABLL * ((v59 - p_i) >> 3)];
  v31 = p_i;
  v32 = v59;
  while (v31 != v32)
  {
    v33 = *v31;
    [v30 addObject:v33];

    v31 += 3;
  }

  [(_HDCachedSourceOrder *)&p_p_i orderedSources];
  v34 = p_p_i;
  for (j = v51; v34 != j; v34 += 3)
  {
    v36 = *v34;
    v74 = v36;
    v75 = v34[1];
    LOBYTE(v76) = *(v34 + 16);
    if (([v30 containsObject:v36] & 1) == 0)
    {
      v37 = objc_loadWeakRetained((a2 + 8));
      v38 = [v37 syncIdentityManager];
      v39 = [v38 currentSyncIdentity];
      v40 = location;
      location = v39;

      std::vector<_HDWrappedSource>::push_back[abi:ne200100](&p_i, &v74);
    }
  }

  v74 = &p_p_i;
  std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](&v74);
  v41 = [_HDCachedSourceOrder alloc];
  memset(v73, 0, sizeof(v73));
  std::vector<_HDWrappedSource>::__init_with_size[abi:ne200100]<_HDWrappedSource*,_HDWrappedSource*>(v73, p_i, v59, 0xAAAAAAAAAAAAAAABLL * ((v59 - p_i) >> 3));
  v42 = [(_HDCachedSourceOrder *)v41 initWithSources:v73 userOrdered:1 isDefaultOrder:0];
  p_p_i = v73;
  std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](&p_p_i);
  *a1 = v42;
  a1[1] = location;

  p_p_i = &p_i;
  std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](&p_p_i);

  v43 = v46;
LABEL_51:

  v12 = v48;
LABEL_52:
}

- (uint64_t)_mergedSourceOrderForExistingOrder:incomingOrder:existingSyncIdentity:incomingSyncIdentity:
{
  v2 = _HDDefaultSourceOrderCompare(***a1, **a1[1]);
  if (!v2)
  {
    v3 = [(HKSource *)***a1 bundleIdentifier];
    v4 = [(HKSource *)**a1[1] bundleIdentifier];
    v2 = [v3 compare:v4];
  }

  if (v2 == 1)
  {
    [*a1[2] addObject:**a1[1]];
    std::vector<_HDWrappedSource>::push_back[abi:ne200100](a1[3], *a1[1]);
    *a1[1] += 3;
    v6 = a1[4];
    v7 = *v6;
    v5 = a1[7];
  }

  else
  {
    if (v2 != -1)
    {
      return 0;
    }

    [*a1[2] addObject:***a1];
    std::vector<_HDWrappedSource>::push_back[abi:ne200100](a1[3], **a1);
    **a1 += 3;
    v6 = a1[4];
    v5 = a1[5];
    v7 = *v6;
  }

  v8 = *v5;
  if (v7 != v8)
  {
    v8 = *a1[6];
  }

  v9 = v8;
  v10 = *v6;
  *v6 = v9;

  return 1;
}

- (id)_sourceCacheItemForObjectType:(void *)a3 transactionCache:(void *)a4 transaction:(uint64_t)a5 error:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (a1)
  {
    v12 = *(a1 + 16);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __89__HDSourceOrderManager__sourceCacheItemForObjectType_transactionCache_transaction_error___block_invoke;
    v15[3] = &unk_27861CE80;
    v15[4] = a1;
    v16 = v9;
    v17 = v10;
    v13 = [v12 fetchObjectForKey:v16 transaction:v11 error:a5 faultHandler:v15];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

BOOL __54__HDSourceOrderManager__updateSourceOrder_type_error___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [_HDSourceOrderTransactionCache alloc];
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  v8 = [(_HDSourceOrderTransactionCache *)&v6->super.isa initWithProfile:?];

  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v12 = objc_loadWeakRetained((v9 + 8));
  v13 = -[HDSourceOrderManager _updateSourceOrder:type:syncIdentity:transactionCache:transaction:error:](v9, v10, v11, [v12 currentSyncIdentityPersistentID], v5, a3);

  return v13;
}

void __96__HDSourceOrderManager__updateSourceOrder_type_syncIdentity_transactionCache_transaction_error___block_invoke(uint64_t *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [(_HDCachedSourceOrder *)&v16 orderedSources];
  v4 = v16;
  v5 = v17;
  if (v16 == v17)
  {
    goto LABEL_12;
  }

  while (*(v4 + 16) != 1)
  {
LABEL_7:
    v4 += 24;
    if (v4 == v5)
    {
      goto LABEL_12;
    }
  }

  v6 = [*v4 bundleIdentifier];
  v7 = a1[5];
  v15 = 0;
  v8 = [HDLogicalSourceEntity logicalSourceIDForBundleIdentifier:v6 transaction:v7 error:&v15];
  v9 = v15;

  if (v8)
  {
    v10 = [v8 longLongValue];
    v11 = a1[4];
    if (v11)
    {
      LOBYTE(v11) = *(v11 + 8);
    }

    v3[2](v3, v10, v11 & 1, 0, a1[6], *(v4 + 8));

    goto LABEL_7;
  }

  _HKInitializeLogging();
  v12 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v14 = [*v4 bundleIdentifier];
    *buf = 138412546;
    *&buf[4] = v14;
    v19 = 2114;
    v20 = v9;
    _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "Failed to fetch logical source ID for bundle ID %@, %{public}@.", buf, 0x16u);
  }

LABEL_12:
  *buf = &v16;
  std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](buf);

  v13 = *MEMORY[0x277D85DE8];
}

BOOL __60__HDSourceOrderManager__sourceCacheItemForObjectType_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [_HDSourceOrderTransactionCache alloc];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v8 = [(_HDSourceOrderTransactionCache *)&v6->super.isa initWithProfile:?];

  v9 = [(HDSourceOrderManager *)*(a1 + 32) _sourceCacheItemForObjectType:v8 transactionCache:v5 transaction:a3 error:?];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *(*(*(a1 + 48) + 8) + 40) != 0;
  return v12;
}

char *__89__HDSourceOrderManager__sourceCacheItemForObjectType_transactionCache_transaction_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v87 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v39 = *(a1 + 40);
  v38 = v6;
  v7 = a2;
  v37 = v7;
  if (v5)
  {
    v8 = v7;
    WeakRetained = objc_loadWeakRetained((v5 + 8));
    v10 = [WeakRetained sourceManager];

    v60 = 0;
    v61 = &v60;
    v62 = 0x4812000000;
    v63 = __Block_byref_object_copy__325;
    v64 = __Block_byref_object_dispose__326;
    v65 = &unk_22929BC4D;
    memset(v66, 0, sizeof(v66));
    v52 = 0;
    v53 = &v52;
    v54 = 0x5812000000;
    v55 = __Block_byref_object_copy__328;
    v56 = __Block_byref_object_dispose__329;
    v57 = &unk_22929BC4D;
    memset(v58, 0, sizeof(v58));
    v59 = 1065353216;
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __94__HDSourceOrderManager__fetchSourceCacheItemForObjectType_transactionCache_transaction_error___block_invoke;
    v42[3] = &unk_27861CED0;
    v45 = &v48;
    v43 = v10;
    v11 = v8;
    v44 = v11;
    v46 = &v52;
    v47 = &v60;
    v36 = v43;
    if (![HDLogicalSourceOrderEntity enumerateOrderedSourceIDsForType:v39 transaction:v11 error:a3 block:v42])
    {
      v17 = 0;
LABEL_27:

      _Block_object_dispose(&v48, 8);
      _Block_object_dispose(&v52, 8);
      std::__hash_table<std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>,std::__unordered_map_hasher<HKSource * {__strong},std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>,HDNSObjectHash,HDNSObjectEqual,true>,std::__unordered_map_equal<HKSource * {__strong},std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>,HDNSObjectEqual,HDNSObjectHash,true>,std::allocator<std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>>>::~__hash_table(v58);
      _Block_object_dispose(&v60, 8);
      v84 = v66;
      std::vector<HKSource * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v84);

      goto LABEL_28;
    }

    v12 = v61[7] - v61[6];
    if (v12)
    {
      v84 = 0;
      v85 = 0;
      v86 = 0;
      std::vector<_HDWrappedSource>::reserve(&v84, v12 >> 3);
      v13 = v61[6];
      for (i = v61[7]; v13 != i; ++v13)
      {
        *&v72 = *v13;
        v76 = &v72;
        v15 = std::__hash_table<std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>,std::__unordered_map_hasher<HKSource * {__strong},std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>,HDNSObjectHash,HDNSObjectEqual,true>,std::__unordered_map_equal<HKSource * {__strong},std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>,HDNSObjectEqual,HDNSObjectHash,true>,std::allocator<std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>>>::__emplace_unique_key_args<HKSource * {__strong},std::piecewise_construct_t const&,std::tuple<HKSource * const {__strong}&>,std::tuple<>>(v53 + 6, &v72);
        std::vector<_HDWrappedSource>::push_back[abi:ne200100](&v84, (v15 + 3));
      }

      v16 = [_HDCachedSourceOrder alloc];
      v76 = 0;
      v77 = 0;
      v78 = 0;
      std::vector<_HDWrappedSource>::__init_with_size[abi:ne200100]<_HDWrappedSource*,_HDWrappedSource*>(&v76, v84, v85, 0xAAAAAAAAAAAAAAABLL * ((v85 - v84) >> 3));
      v17 = [(_HDCachedSourceOrder *)v16 initWithSources:*(v49 + 24) userOrdered:0 isDefaultOrder:?];
      *&v72 = &v76;
      std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](&v72);
      *&v72 = &v84;
      std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](&v72);
      goto LABEL_27;
    }

    v18 = [v11 databaseForEntityClass:objc_opt_class()];
    v19 = v38;
    v40 = v19;
    v41 = v18;
    if (v19)
    {
      v20 = v19[2];
      if (v20)
      {
        v35 = v20;

LABEL_15:
        v76 = 0;
        v77 = &v76;
        v78 = 0x4812000000;
        v79 = __Block_byref_object_copy__307;
        v80 = __Block_byref_object_dispose__308;
        v81 = &unk_22929BC4D;
        memset(v82, 0, sizeof(v82));
        std::vector<_HDWrappedSource>::reserve(v82, [v35 count]);
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v27 = v35;
        v28 = [v27 countByEnumeratingWithState:&v72 objects:&v84 count:16];
        if (v28)
        {
          v29 = *v73;
          while (2)
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v73 != v29)
              {
                objc_enumerationMutation(v27);
              }

              v31 = *(*(&v72 + 1) + 8 * j);
              v67[3] = MEMORY[0x277D85DD0];
              v67[4] = 3221225472;
              v67[5] = __83__HDSourceOrderManager__defaultSourceCacheItemWithTransactionCache_database_error___block_invoke;
              v67[6] = &unk_27861CDB8;
              v68 = v40;
              v69 = v31;
              v70 = v41;
              v71 = &v76;
              LODWORD(v31) = HKWithAutoreleasePool();

              if (!v31)
              {

                v17 = 0;
                goto LABEL_25;
              }
            }

            v28 = [v27 countByEnumeratingWithState:&v72 objects:&v84 count:16];
            if (v28)
            {
              continue;
            }

            break;
          }
        }

        v32 = [_HDCachedSourceOrder alloc];
        memset(v67, 0, 24);
        std::vector<_HDWrappedSource>::__init_with_size[abi:ne200100]<_HDWrappedSource*,_HDWrappedSource*>(v67, v77[6], v77[7], 0xAAAAAAAAAAAAAAABLL * ((v77[7] - v77[6]) >> 3));
        v17 = [(_HDCachedSourceOrder *)v32 initWithSources:v67 userOrdered:0 isDefaultOrder:1];
        v83 = v67;
        std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](&v83);
LABEL_25:
        _Block_object_dispose(&v76, 8);
        v83 = v82;
        std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](&v83);
        goto LABEL_26;
      }

      v21 = objc_loadWeakRetained(v19 + 1);
      v22 = [v21 sourceManager];
      v23 = [v22 allSourcesWithError:a3];

      if (v23)
      {
        v24 = v23;
        objc_opt_self();
        v25 = [v24 sortedArrayWithOptions:16 usingComparator:&__block_literal_global_68];

        v26 = v19[2];
        v19[2] = v25;

        v35 = v19[2];
      }

      else
      {
        v35 = 0;
      }

      if (v35)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    v27 = 0;
    v17 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v17 = 0;
LABEL_28:

  v33 = *MEMORY[0x277D85DE8];

  return v17;
}

uint64_t __94__HDSourceOrderManager__fetchSourceCacheItemForObjectType_transactionCache_transaction_error___block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  v17 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 48) + 8) + 24) = a3;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 56);
  v5 = HKWithAutoreleasePool();
  v6 = 0;
  if ((v5 & 1) == 0)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v14 = a2;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_INFO, "Failed to lookup source order information for %lld: %{public}@", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

BOOL __94__HDSourceOrderManager__fetchSourceCacheItemForObjectType_transactionCache_transaction_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 64)];
  v6 = [v4 uncachedClientSourceForPersistentID:v5 transaction:*(a1 + 40) error:a2];
  obj[0] = v6;

  if (v6)
  {
    v7 = *(*(a1 + 48) + 8);
    obj[1] = obj;
    v8 = std::__hash_table<std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>,std::__unordered_map_hasher<HKSource * {__strong},std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>,HDNSObjectHash,HDNSObjectEqual,true>,std::__unordered_map_equal<HKSource * {__strong},std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>,HDNSObjectEqual,HDNSObjectHash,true>,std::allocator<std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>>>::__emplace_unique_key_args<HKSource * {__strong},std::piecewise_construct_t const&,std::tuple<HKSource * const {__strong}&>,std::tuple<>>((v7 + 48), obj);
    v9 = v8;
    v10 = (v8 + 3);
    if (v8[3])
    {
      v11 = *(v8 + 4);
      v12 = *(a1 + 72);
    }

    else
    {
      v13 = *(*(a1 + 56) + 8);
      v15 = v13[7];
      v14 = v13[8];
      if (v15 >= v14)
      {
        v17 = v13[6];
        v18 = (v15 - v17) >> 3;
        if ((v18 + 1) >> 61)
        {
          std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
        }

        v19 = v14 - v17;
        v20 = v19 >> 2;
        if (v19 >> 2 <= (v18 + 1))
        {
          v20 = v18 + 1;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          if (!(v21 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v22 = (8 * v18);
        *v22 = obj[0];
        v16 = 8 * v18 + 8;
        v23 = v13[6];
        v24 = v13[7];
        v25 = (v22 + v23 - v24);
        if (v24 != v23)
        {
          v26 = v13[6];
          v27 = v25;
          do
          {
            v28 = *v26;
            *v26++ = 0;
            *v27++ = v28;
          }

          while (v26 != v24);
          do
          {
            v29 = *v23++;
          }

          while (v23 != v24);
          v23 = v13[6];
        }

        v13[6] = v25;
        v13[7] = v16;
        v13[8] = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v15 = obj[0];
        v16 = (v15 + 1);
      }

      v13[7] = v16;
      objc_storeStrong(v10, obj[0]);
      v12 = *(a1 + 72);
      *(v9 + 4) = v12;
      *(v9 + 40) = 1;
      v11 = v12;
    }

    if (v11 >= v12)
    {
      v12 = v11;
    }

    *(v9 + 4) = v12;
  }

  return v6 != 0;
}

BOOL __83__HDSourceOrderManager__defaultSourceCacheItemWithTransactionCache_database_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) bundleIdentifier];
  v6 = [(_HDSourceOrderTransactionCache *)v4 orderedSourceIDsForBundleIdentifier:v5 database:*(a1 + 48) error:a2];

  if (v6)
  {
    v7 = *(a1 + 40);
    v9[0] = v7;
    v9[1] = 0;
    std::vector<_HDWrappedSource>::push_back[abi:ne200100]((*(*(a1 + 56) + 8) + 48), v9);
  }

  return v6 != 0;
}

- (BOOL)addOrderedSource:(id)a3 objectTypes:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [WeakRetained database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__HDSourceOrderManager_addOrderedSource_objectTypes_error___block_invoke;
  v15[3] = &unk_27861CA28;
  v15[4] = self;
  v12 = v9;
  v16 = v12;
  v13 = v8;
  v17 = v13;
  LOBYTE(a5) = [(HDHealthEntity *)HDLogicalSourceOrderEntity performWriteTransactionWithHealthDatabase:v11 error:a5 block:v15];

  return a5;
}

uint64_t __59__HDSourceOrderManager_addOrderedSource_objectTypes_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v132 = *MEMORY[0x277D85DE8];
  v102 = a2;
  v4 = [_HDSourceOrderTransactionCache alloc];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v103 = [(_HDSourceOrderTransactionCache *)&v4->super.isa initWithProfile:?];

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  obj = *(a1 + 40);
  v6 = [obj countByEnumeratingWithState:&v108 objects:v126 count:16];
  v96 = 1;
  if (!v6)
  {
    goto LABEL_116;
  }

  v99 = a1;
  v100 = *v109;
  while (2)
  {
    v7 = 0;
    v98 = v6;
    do
    {
      if (*v109 != v100)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v108 + 1) + 8 * v7);
      v9 = *(v99 + 32);
      v10 = *(v99 + 48);
      v11 = v8;
      v12 = v103;
      v13 = v102;
      if (!v9)
      {

LABEL_115:
        v96 = 0;
        goto LABEL_116;
      }

      v119 = 0;
      v104 = v11;
      v105 = v12;
      v106 = v13;
      v14 = [(HDSourceOrderManager *)v9 _sourceCacheItemForObjectType:v11 transactionCache:v12 transaction:v13 error:&v119];
      v15 = v119;
      v16 = v15;
      v107 = v14;
      if (v14)
      {
        v118 = 0;
        v117 = 0uLL;
        if ((*(v14 + 9) & 1) == 0)
        {
          memset(buf, 0, sizeof(buf));
          std::vector<_HDWrappedSource>::__init_with_size[abi:ne200100]<_HDWrappedSource*,_HDWrappedSource*>(buf, *(v14 + 16), *(v14 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(v14 + 24) - *(v14 + 16)) >> 3));
          std::vector<_HDWrappedSource>::__vdeallocate(&v117);
          v117 = *buf;
          v118 = *&buf[16];
          memset(buf, 0, sizeof(buf));
          v121 = buf;
          std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](&v121);
          v24 = *(&v117 + 1);
          v25 = v117;
          if (v117 == *(&v117 + 1))
          {
            v36 = v117;
          }

          else
          {
            v26 = (v117 + 24);
            while (*(v26 - 8) == 1)
            {
              v27 = v26 == *(&v117 + 1);
              v26 += 3;
              if (v27)
              {
                goto LABEL_49;
              }
            }

            v36 = v26 - 3;
            if (v26 - 3 != *(&v117 + 1) && v26 != *(&v117 + 1))
            {
              do
              {
                if (*(v26 + 16) == 1)
                {
                  v37 = *v26;
                  *v26 = 0;
                  v38 = *v36;
                  *v36 = v37;

                  v39 = v26[1];
                  *(v36 + 16) = *(v26 + 16);
                  v36[1] = v39;
                  v36 += 3;
                }

                v26 += 3;
              }

              while (v26 != v24);
              v24 = *(&v117 + 1);
              v25 = v117;
            }
          }

          if (v36 == v24)
          {
LABEL_49:
            v36 = v24;
            goto LABEL_51;
          }

          while (v24 != v36)
          {
            v40 = *(v24 - 3);
            v24 -= 3;
          }

          *(&v117 + 1) = v36;
          v25 = v117;
LABEL_51:
          while (v25 != v36)
          {
            if ([*v25 isEqual:v10])
            {
              v19 = v16;
              goto LABEL_104;
            }

            v25 += 3;
          }
        }

        v17 = v10;
        v114 = v17;
        Current = CFAbsoluteTimeGetCurrent();
        v116 = 1;
        v113 = v16;
        v18 = [(HDSourceOrderManager *)v9 _updateOrderedSourceIDsForWrappedSource:v105 transactionCache:v106 transaction:&v113 error:?];
        v19 = v113;

        if (v18)
        {
          v21 = *(&v117 + 1);
          v20 = v117;
          if (v117 == *(&v117 + 1))
          {
            v22 = v117;
          }

          else
          {
            while (_HDDefaultSourceOrderCompare(v17, *v20) == 1)
            {
              v20 += 3;
              if (v20 == v21)
              {
                v20 = v21;
                break;
              }
            }

            v22 = v20;
            v21 = *(&v117 + 1);
            v20 = v117;
          }

          if (v21 >= v118)
          {
            v56 = 1 - 0x5555555555555555 * ((v21 - v20) >> 3);
            if (v56 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((v118 - v20) >> 3) > v56)
            {
              v56 = 0x5555555555555556 * ((v118 - v20) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v118 - v20) >> 3) >= 0x555555555555555)
            {
              v57 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v57 = v56;
            }

            v125 = &v117;
            if (v57)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<_HDWrappedSource>>(v57);
            }

            v59 = v22 - v20;
            v60 = 8 * ((v22 - v20) >> 3);
            v121 = 0;
            v122 = v60;
            v123 = v60;
            v124 = 0;
            if (!(0xAAAAAAAAAAAAAAABLL * ((v22 - v20) >> 3)))
            {
              if (v59 < 1)
              {
                if (v20 == v22)
                {
                  v61 = 1;
                }

                else
                {
                  v61 = 0x5555555555555556 * ((v22 - v20) >> 3);
                }

                v129 = &v117;
                std::__allocate_at_least[abi:ne200100]<std::allocator<_HDWrappedSource>>(v61);
              }

              v60 -= 24 * ((0xAAAAAAAAAAAAAAABLL * (v59 >> 3) + 1) >> 1);
              v122 = v60;
              v123 = v60;
            }

            *v60 = v17;
            v62 = v116;
            *(v60 + 8) = Current;
            *(v60 + 16) = v62;
            v63 = v123 + 24;
            v123 += 24;
            v64 = *(&v117 + 1);
            if (*(&v117 + 1) == v22)
            {
              v70 = v122;
              v69 = v22;
            }

            else
            {
              v65 = v22;
              do
              {
                v66 = *v65;
                *v65 = 0;
                *v63 = v66;
                v67 = *(v65 + 8);
                *(v63 + 16) = *(v65 + 16);
                *(v63 + 8) = v67;
                v65 += 24;
                v63 += 24;
              }

              while (v65 != v64);
              v68 = v22;
              do
              {

                v68 += 3;
              }

              while (v68 != v64);
              v69 = *(&v117 + 1);
              v70 = v122;
              v63 = v123;
            }

            v71 = v63 + v69 - v22;
            v123 = v71;
            *(&v117 + 1) = v22;
            v72 = v117;
            v73 = v70 + v117 - v22;
            if (v117 != v22)
            {
              v74 = v117;
              v75 = v70 + v117 - v22;
              do
              {
                v76 = *v74;
                *v74 = 0;
                *v75 = v76;
                v77 = v74[1];
                *(v75 + 16) = *(v74 + 16);
                *(v75 + 8) = v77;
                v74 += 3;
                v75 += 24;
              }

              while (v74 != v22);
              do
              {

                v72 += 3;
              }

              while (v72 != v22);
              v72 = v117;
              v71 = v123;
            }

            *&v117 = v73;
            *(&v117 + 1) = v71;
            v78 = v118;
            v118 = v124;
            v123 = v72;
            v124 = v78;
            v121 = v72;
            v122 = v72;
            std::__split_buffer<_HDWrappedSource>::~__split_buffer(&v121);
          }

          else if (v22 == v21)
          {
            *v21 = v17;
            v58 = Current;
            *(v21 + 16) = v116;
            *(v21 + 8) = v58;
            *(&v117 + 1) = v21 + 24;
          }

          else
          {
            v41 = (v21 - 24);
            v42 = v21;
            if (v21 >= 0x18)
            {
              v42 = v21 + 24;
              v43 = *v41;
              *v41 = 0;
              *v21 = v43;
              v44 = *(v21 - 16);
              *(v21 + 16) = *(v21 - 8);
              *(v21 + 8) = v44;
            }

            *(&v117 + 1) = v42;
            if (v21 != v22 + 24)
            {
              v45 = v21 - 24;
              v46 = v41;
              do
              {
                v47 = *(v46 - 3);
                v46 -= 3;
                *v46 = 0;
                v48 = *v45;
                *v45 = v47;

                v49 = *(v41 - 2);
                *(v45 + 16) = *(v41 - 8);
                *(v45 + 8) = v49;
                v45 -= 24;
                v41 = v46;
              }

              while (v46 != v22);
              v42 = *(&v117 + 1);
            }

            v50 = v22 <= &v114;
            v51 = v42 > &v114;
            v52 = v50 && v51;
            v27 = !v50 || !v51;
            v53 = 3;
            if (v27)
            {
              v53 = 0;
            }

            objc_storeStrong(v22, (&v114)[v53]);
            p_Current = &Current;
            if (v52)
            {
              p_Current = &v117 + 1;
            }

            v55 = *p_Current;
            *(v22 + 16) = *(p_Current + 8);
            *(v22 + 8) = v55;
          }

LABEL_104:
          v79 = v107;
          _HKInitializeLogging();
          v80 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
          {
            v81 = v80;
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
            {
              v92 = [v10 bundleIdentifier];
              *buf = 138412546;
              *&buf[4] = v92;
              *&buf[12] = 2112;
              *&buf[14] = v104;
              _os_log_debug_impl(&dword_228986000, v81, OS_LOG_TYPE_DEBUG, "Will add ordered source %@ for type %@", buf, 0x16u);
            }

            v79 = v107;
          }

          v82 = [_HDCachedSourceOrder alloc];
          memset(v112, 0, sizeof(v112));
          std::vector<_HDWrappedSource>::__init_with_size[abi:ne200100]<_HDWrappedSource*,_HDWrappedSource*>(v112, v117, *(&v117 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v117 + 1) - v117) >> 3));
          v83 = [(_HDCachedSourceOrder *)v82 initWithSources:v112 userOrdered:v79[8] isDefaultOrder:0];
          *buf = v112;
          std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](buf);
          v84 = v83;
          v85 = v104;
          v86 = objc_loadWeakRetained((v9 + 8));
          v87 = [v86 database];
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __54__HDSourceOrderManager__updateSourceOrder_type_error___block_invoke;
          v128 = &unk_27861CA28;
          v129 = v9;
          v88 = v84;
          v130 = v88;
          v89 = v85;
          v131 = v89;
          v90 = [(HDHealthEntity *)HDLogicalSourceOrderEntity performWriteTransactionWithHealthDatabase:v87 error:a3 block:buf];

          v120 = v90;
          goto LABEL_109;
        }

        if ([v19 hk_isDatabaseAccessibilityError])
        {
          _HKInitializeLogging();
          v28 = *MEMORY[0x277CCC2A0];
          if (!os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
          {
LABEL_36:
            v34 = v19;
            v19 = v34;
            if (v34)
            {
              if (a3)
              {
                v35 = v34;
                *a3 = v19;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            v120 = 0;
LABEL_109:
            *buf = &v117;
            std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](buf);
            goto LABEL_110;
          }

          v29 = v28;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            v30 = [(HKSource *)v17 bundleIdentifier];
            *buf = 138543618;
            *&buf[4] = v30;
            *&buf[12] = 2114;
            *&buf[14] = v19;
            _os_log_debug_impl(&dword_228986000, v29, OS_LOG_TYPE_DEBUG, "Failed to update ordered source IDs for bundle identifier %{public}@: %{public}@", buf, 0x16u);
          }
        }

        else
        {
          _HKInitializeLogging();
          v29 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v93 = [(HKSource *)v17 bundleIdentifier];
            *buf = 138543618;
            *&buf[4] = v93;
            *&buf[12] = 2114;
            *&buf[14] = v19;
            _os_log_error_impl(&dword_228986000, v29, OS_LOG_TYPE_ERROR, "Failed to update ordered source IDs for bundle identifier %{public}@: %{public}@", buf, 0x16u);
          }
        }

        goto LABEL_36;
      }

      if ([v15 hk_isDatabaseAccessibilityError])
      {
        _HKInitializeLogging();
        v23 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          *&buf[4] = v104;
          *&buf[12] = 2114;
          *&buf[14] = v16;
          _os_log_debug_impl(&dword_228986000, v23, OS_LOG_TYPE_DEBUG, "Failed to fetch ordered sources for type %@: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        _HKInitializeLogging();
        v31 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = v104;
          *&buf[12] = 2114;
          *&buf[14] = v16;
          _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "Failed to fetch ordered sources for type %@: %{public}@", buf, 0x16u);
        }
      }

      v32 = v16;
      v19 = v32;
      if (v32)
      {
        if (a3)
        {
          v33 = v32;
          *a3 = v19;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v120 = 0;
LABEL_110:

      v91 = v120;
      if (!v91)
      {
        goto LABEL_115;
      }

      ++v7;
    }

    while (v7 != v98);
    v6 = [obj countByEnumeratingWithState:&v108 objects:v126 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

  v96 = 1;
LABEL_116:

  v94 = *MEMORY[0x277D85DE8];
  return v96;
}

@end
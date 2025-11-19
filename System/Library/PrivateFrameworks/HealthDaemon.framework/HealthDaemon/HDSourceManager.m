@interface HDSourceManager
+ (uint64_t)_isLocalDeviceBundleIdentifier:(uint64_t)a1;
- (BOOL)_deleteSourcesWithUUIDs:(id)a3 localSourceEntityCacheKey:(id)a4 syncIdentity:(id)a5 deleteSamples:(BOOL)a6 transaction:(id)a7 error:(id *)a8;
- (BOOL)createSourcesWithCodables:(id)a3 provenance:(int64_t)a4 error:(id *)a5;
- (BOOL)deleteSourceWithBundleIdentifier:(id)a3 error:(id *)a4;
- (BOOL)setLocalDeviceSourceUUID:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5;
- (BOOL)updateCurrentDeviceNameWithError:(id *)a3;
- (HDSourceManager)init;
- (HDSourceManager)initWithProfile:(id)a3;
- (id)_clientSourcesWithPredicate:(uint64_t)a3 error:;
- (id)_createSourceEntityForBundleIdentifier:(void *)a3 owningAppBundleIdentifier:(void *)a4 name:(uint64_t)a5 options:(uint64_t)a6 isCurrentDevice:(void *)a7 productType:(uint64_t)a8 error:;
- (id)_createSourceEntityForLocalDeviceWithError:(id *)a3;
- (id)_sourceForBundleIdentifier:(void *)a3 createSourceBlock:(void *)a4 modifySourceBlock:(uint64_t)a5 error:;
- (id)_sourceFromEphemeralSource:(uint64_t)a3 provenance:(int)a4 createOrUpdateIfNecessary:(uint64_t)a5 error:;
- (id)_sourceUUIDsForBundleIdentifier:(uint64_t)a3 error:;
- (id)allSourcesForBundleIdentifier:(id)a3 error:(id *)a4;
- (id)allWatchSourcesWithError:(id *)a3;
- (id)clientSourceForBundleIdentifier:(id)a3 error:(id *)a4;
- (id)clientSourceForPersistentID:(id)a3 error:(id *)a4;
- (id)clientSourceForSourceEntities:(id)a3 error:(id *)a4;
- (id)clientSourceForSourceEntity:(id)a3 error:(id *)a4;
- (id)clientSourceForUUID:(id)a3 error:(id *)a4;
- (id)clientSourcesForSourceIDs:(id)a3 error:(id *)a4;
- (id)createOrUpdateSourceForClient:(id)a3 error:(id *)a4;
- (id)insertCodableSource:(id)a3 provenance:(int64_t)a4 profile:(id)a5 error:(id *)a6;
- (id)insertSourceWithBundleIdentifier:(id)a3 owningAppBundleIdentifier:(id)a4 UUID:(id)a5 name:(id)a6 options:(unint64_t)a7 isCurrentDevice:(BOOL)a8 productType:(id)a9 modificationDate:(id)a10 provenance:(int64_t)a11 error:(id *)a12;
- (id)localDeviceSourceWithError:(id *)a3;
- (id)localSourceForBundleIdentifier:(id)a3 copyIfNecessary:(BOOL)a4 error:(id *)a5;
- (id)localSourceForSourceID:(id)a3 copyIfNecessary:(BOOL)a4 error:(id *)a5;
- (id)privateSourceForClinicalAccountIdentifier:(id)a3 provenance:(int64_t)a4 createOrUpdateIfNecessary:(BOOL)a5 nameOnCreateOrUpdate:(id)a6 error:(id *)a7;
- (id)publicSourceForClinicalExternalIdentifier:(id)a3 provenance:(int64_t)a4 createOrUpdateIfNecessary:(BOOL)a5 nameOnCreateOrUpdate:(id)a6 error:(id *)a7;
- (id)sourceEntityForClientSource:(id)a3 createOrUpdateIfNecessary:(BOOL)a4 error:(id *)a5;
- (id)sourceForAppleDeviceWithUUID:(id)a3 identifier:(id)a4 name:(id)a5 productType:(id)a6 createIfNecessary:(BOOL)a7 error:(id *)a8;
- (id)sourceForClient:(id)a3 error:(id *)a4;
- (id)sourceForCodableSource:(id)a3 provenance:(int64_t)a4 createIfNecessary:(BOOL)a5 isDeleted:(BOOL *)a6 error:(id *)a7;
- (id)sourceUUIDForBundleIdentifier:(id)a3 error:(id *)a4;
- (id)uncachedClientSourceForPersistentID:(id)a3 transaction:(id)a4 error:(id *)a5;
- (uint64_t)_createSourcesWithCodables:(uint64_t)a3 provenance:(void *)a4 sourceUUIDSToDelete:(unsigned int)a5 deleteSamples:(void *)a6 transaction:(uint64_t)a7 error:;
- (void)_applicationsUninstalledNotification:(id)a3;
- (void)invalidateAndWait;
- (void)profileDidBecomeReady:(id)a3;
@end

@implementation HDSourceManager

- (HDSourceManager)initWithProfile:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v29 = [MEMORY[0x277CCA890] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"HDSourceManager.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"profile != nil"}];
  }

  v30.receiver = self;
  v30.super_class = HDSourceManager;
  v6 = [(HDSourceManager *)&v30 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_profile, v5);
    v8 = HKCreateSerialDispatchQueue();
    queue = v7->_queue;
    v7->_queue = v8;

    v10 = [HDDatabaseValueCache alloc];
    v11 = [(HDSourceManager *)v7 hk_classNameWithTag:@"entities"];
    v12 = [(HDDatabaseValueCache *)v10 initWithName:v11 cacheScope:2];
    sourceEntityByBundleIdentifierCache = v7->_sourceEntityByBundleIdentifierCache;
    v7->_sourceEntityByBundleIdentifierCache = v12;

    v14 = [HDDatabaseValueCache alloc];
    v15 = [(HDSourceManager *)v7 hk_classNameWithTag:@"client-sources"];
    v16 = [(HDDatabaseValueCache *)v14 initWithName:v15 cacheScope:2];
    clientSourceCache = v7->_clientSourceCache;
    v7->_clientSourceCache = v16;

    v18 = [HDDatabaseValueCache alloc];
    v19 = [(HDSourceManager *)v7 hk_classNameWithTag:@"local-entities"];
    v20 = [(HDDatabaseValueCache *)v18 initWithName:v19 cacheScope:2];
    localSourceForBundleIdentifierCache = v7->_localSourceForBundleIdentifierCache;
    v7->_localSourceForBundleIdentifierCache = v20;

    v22 = [HDDatabaseValueCache alloc];
    v23 = [(HDSourceManager *)v7 hk_classNameWithTag:@"local-entities-by-id"];
    v24 = [(HDDatabaseValueCache *)v22 initWithName:v23 cacheScope:1];
    localSourceForSourceID = v7->_localSourceForSourceID;
    v7->_localSourceForSourceID = v24;

    v26 = [MEMORY[0x277CCAB98] defaultCenter];
    [v26 addObserver:v7 selector:sel__applicationsUninstalledNotification_ name:@"HDHealthDaemonApplicationsUninstalledNotification" object:0];

    WeakRetained = objc_loadWeakRetained(&v7->_profile);
    [WeakRetained registerProfileReadyObserver:v7 queue:v7->_queue];
  }

  return v7;
}

- (HDSourceManager)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Use the designated initializer"];

  return 0;
}

- (void)invalidateAndWait
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"HDHealthDaemonApplicationsUninstalledNotification" object:0];
}

- (BOOL)updateCurrentDeviceNameWithError:(id *)a3
{
  v45 = *MEMORY[0x277D85DE8];
  if (HKIsUnitTesting())
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      *buf = 138412546;
      v42 = objc_opt_class();
      v43 = 2048;
      v44 = self;
      v7 = v42;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "<%@:%p> updateCurrentDeviceNameWithError: started", buf, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v9 = [WeakRetained profileType];

  if (v9 == 2)
  {
    v10 = 1;
  }

  else
  {
    v11 = objc_loadWeakRetained(&self->_profile);
    v12 = [v11 daemon];
    v13 = [v12 behavior];
    v14 = [v13 currentDeviceDisplayName];

    v15 = [HDKeyValueDomain alloc];
    v16 = objc_loadWeakRetained(&self->_profile);
    v17 = [(HDKeyValueDomain *)v15 initWithCategory:0 domainName:@"source-manager" profile:v16];

    v40 = 0;
    v18 = [(HDKeyValueDomain *)v17 stringForKey:@"HKSourceLastObservedDeviceName" error:&v40];
    v19 = v40;
    v20 = v19;
    if (v18 || !v19)
    {
      if (v18 && ([v14 isEqualToString:v18] & 1) != 0)
      {
        v10 = 1;
      }

      else
      {
        v22 = HKIsUnitTesting();
        v23 = MEMORY[0x277CCC2B0];
        if (v22)
        {
          _HKInitializeLogging();
          v24 = *v23;
          if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
          {
            v25 = v24;
            v26 = objc_opt_class();
            *buf = 138412546;
            v42 = v26;
            v43 = 2048;
            v44 = self;
            v27 = v26;
            _os_log_impl(&dword_228986000, v25, OS_LOG_TYPE_DEFAULT, "<%@:%p> updateCurrentDeviceNameWithError: mid", buf, 0x16u);
          }
        }

        v28 = objc_loadWeakRetained(&self->_profile);
        v29 = [v28 database];

        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __52__HDSourceManager_updateCurrentDeviceNameWithError___block_invoke;
        v36[3] = &unk_278615D40;
        v37 = v14;
        v38 = self;
        v39 = v17;
        v10 = [(HDHealthEntity *)HDSourceEntity performWriteTransactionWithHealthDatabase:v29 error:a3 block:v36];
        if (HKIsUnitTesting())
        {
          _HKInitializeLogging();
          v30 = *v23;
          if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
          {
            v31 = v30;
            v32 = objc_opt_class();
            *buf = 138412546;
            v42 = v32;
            v43 = 2048;
            v44 = self;
            v33 = v32;
            _os_log_impl(&dword_228986000, v31, OS_LOG_TYPE_DEFAULT, "<%@:%p> updateCurrentDeviceNameWithError: ended", buf, 0x16u);
          }
        }
      }
    }

    else if (a3)
    {
      v21 = v19;
      v10 = 0;
      *a3 = v20;
    }

    else
    {
      _HKLogDroppedError();
      v10 = 0;
    }
  }

  v34 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __52__HDSourceManager_updateCurrentDeviceNameWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];
  v17 = 0;
  v7 = [HDSourceEntity sourceForLocalDeviceWithDatabase:v6 error:&v17];
  v8 = v17;
  v9 = v8;
  if (!v7)
  {
    v13 = v8;
    if (v13)
    {
      if (a3)
      {
        v15 = v13;
        v12 = 0;
        *a3 = v13;
      }

      else
      {
        _HKLogDroppedError();
        v12 = 0;
      }

      goto LABEL_11;
    }

LABEL_8:
    v12 = 1;
LABEL_11:

    goto LABEL_12;
  }

  v10 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v12 = [v7 setName:v10 profile:WeakRetained error:a3];

  if (v12)
  {
    if ([*(a1 + 48) setString:*(a1 + 32) forKey:@"HKSourceLastObservedDeviceName" error:a3])
    {
      [*(*(a1 + 40) + 32) removeAllObjectsWithTransaction:v5];
      [*(*(a1 + 40) + 24) removeAllObjectsWithTransaction:v5];
      [*(*(a1 + 40) + 40) removeAllObjectsWithTransaction:v5];
      v13 = objc_loadWeakRetained((*(a1 + 40) + 8));
      v14 = [v13 sourceOrderManager];
      [v14 resetCacheWithTransaction:v5];

      goto LABEL_8;
    }

    v12 = 0;
  }

LABEL_12:

  return v12;
}

- (BOOL)setLocalDeviceSourceUUID:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!v9)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"HDSourceManager.m" lineNumber:186 description:{@"Invalid parameter not satisfying: %@", @"UUID != nil"}];

    if (v11)
    {
      goto LABEL_3;
    }

LABEL_5:
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"HDSourceManager.m" lineNumber:187 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier != nil"}];

    goto LABEL_3;
  }

  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v13 = [WeakRetained database];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __67__HDSourceManager_setLocalDeviceSourceUUID_bundleIdentifier_error___block_invoke;
  v20[3] = &unk_278615D40;
  v21 = v9;
  v22 = self;
  v23 = v11;
  v14 = v11;
  v15 = v9;
  v16 = [(HDHealthEntity *)HDSourceEntity performWriteTransactionWithHealthDatabase:v13 error:a5 block:v20];

  return v16;
}

uint64_t __67__HDSourceManager_setLocalDeviceSourceUUID_bundleIdentifier_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = HDSourceEntityPredicateForSourceWithUUID(*(a1 + 32), 1);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v8 = [HDSourceEntity sourcesWithPredicate:v6 includeDeleted:1 profile:WeakRetained error:a3];

  if (v8)
  {
    [*(*(a1 + 40) + 24) removeAllObjectsWithTransaction:v5];
    [*(*(a1 + 40) + 40) removeAllObjectsWithTransaction:v5];
    v9 = objc_loadWeakRetained((*(a1 + 40) + 8));
    v10 = [v9 daemon];
    v11 = [v10 behavior];
    v32 = [v11 currentDeviceProductType];

    v12 = objc_loadWeakRetained((*(a1 + 40) + 8));
    v13 = [v12 daemon];
    v14 = [v13 behavior];
    v31 = [v14 currentDeviceDisplayName];

    v15 = [HDLogicalSourceEntity lookUpOrCreateLogicalSourceWithBundleIdentifier:*(a1 + 48) owningAppBundleIdentifier:0 transaction:v5 error:a3];
    v16 = [v8 firstObject];
    v17 = v16;
    if (v16)
    {
      v18 = *(*(a1 + 40) + 32);
      v19 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v16, "persistentID")}];
      [v18 removeObjectForKey:v19 transaction:v5];

      v20 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v15, "persistentID")}];
      v21 = *(a1 + 32);
      v22 = objc_loadWeakRetained((*(a1 + 40) + 8));
      v23 = v21;
      v25 = v31;
      v24 = v32;
      v26 = [v17 adoptAsLocalSourceWithLogicalSourceID:v20 UUID:v23 name:v31 productType:v32 profile:v22 error:a3];
    }

    else
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __67__HDSourceManager_setLocalDeviceSourceUUID_bundleIdentifier_error___block_invoke_2;
      aBlock[3] = &unk_2786200F8;
      aBlock[4] = *(a1 + 40);
      v30 = _Block_copy(aBlock);
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __67__HDSourceManager_setLocalDeviceSourceUUID_bundleIdentifier_error___block_invoke_3;
      v33[3] = &unk_278620120;
      v33[4] = *(a1 + 40);
      v34 = v15;
      v35 = *(a1 + 32);
      v25 = v31;
      v36 = v31;
      v24 = v32;
      v37 = v32;
      v27 = _Block_copy(v33);
      v28 = [(HDSourceManager *)*(a1 + 40) _sourceForBundleIdentifier:v30 createSourceBlock:v27 modifySourceBlock:a3 error:?];
      v26 = v28 != 0;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

uint64_t __67__HDSourceManager_setLocalDeviceSourceUUID_bundleIdentifier_error___block_invoke_3(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(*(a1 + 32) + 32);
  v8 = MEMORY[0x277CCABB0];
  v9 = a3;
  v10 = a2;
  v11 = [v8 numberWithLongLong:{objc_msgSend(v10, "persistentID")}];
  [v7 removeObjectForKey:v11 transaction:v9];

  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 40), "persistentID")}];
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v17 = [v10 adoptAsLocalSourceWithLogicalSourceID:v12 UUID:v13 name:v14 productType:v15 profile:WeakRetained error:a4];

  return v17;
}

- (id)_sourceForBundleIdentifier:(void *)a3 createSourceBlock:(void *)a4 modifySourceBlock:(uint64_t)a5 error:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = 0;
  if (a1 && v9)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__86;
    v31 = __Block_byref_object_dispose__86;
    v32 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __88__HDSourceManager__sourceForBundleIdentifier_createSourceBlock_modifySourceBlock_error___block_invoke;
    aBlock[3] = &unk_2786202B0;
    v26 = &v27;
    aBlock[4] = a1;
    v23 = v9;
    v13 = v10;
    v24 = v13;
    v14 = v11;
    v25 = v14;
    v15 = _Block_copy(aBlock);
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v17 = WeakRetained;
    if (v13 | v14)
    {
      v18 = [WeakRetained database];
      v19 = [(HDHealthEntity *)HDSourceEntity performWriteTransactionWithHealthDatabase:v18 error:a5 block:v15];

      if (v19)
      {
LABEL_8:
        v12 = v28[5];

        _Block_object_dispose(&v27, 8);
        goto LABEL_9;
      }

      v17 = v28[5];
      v28[5] = 0;
    }

    else
    {
      v20 = [WeakRetained database];
      [(HDHealthEntity *)HDSourceEntity performReadTransactionWithHealthDatabase:v20 error:a5 block:v15];
    }

    goto LABEL_8;
  }

LABEL_9:

  return v12;
}

- (id)allSourcesForBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__86;
  v19 = __Block_byref_object_dispose__86;
  v20 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [WeakRetained database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__HDSourceManager_allSourcesForBundleIdentifier_error___block_invoke;
  v12[3] = &unk_278615F88;
  v12[4] = self;
  v9 = v6;
  v13 = v9;
  v14 = &v15;
  LODWORD(a4) = [(HDHealthEntity *)HDLogicalSourceEntity performReadTransactionWithHealthDatabase:v8 error:a4 block:v12];

  if (a4)
  {
    v10 = [MEMORY[0x277CBEB98] setWithArray:v16[5]];
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v15, 8);

  return v10;
}

BOOL __55__HDSourceManager_allSourcesForBundleIdentifier_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v5)
  {
    if ([HDSourceManager _isLocalDeviceBundleIdentifier:v6])
    {
      HDSourceEntityPredicateForLocalDeviceSource();
    }

    else
    {
      HDSourceEntityPredicateForSourceWithBundleIdentifier(v6);
    }
    v5 = ;
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v8 = [HDSourceEntity sourcesWithPredicate:v5 includeDeleted:0 profile:WeakRetained error:a3];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(*(*(a1 + 48) + 8) + 40) != 0;
  return v11;
}

- (id)localSourceForBundleIdentifier:(id)a3 copyIfNecessary:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__86;
  v32 = __Block_byref_object_dispose__86;
  v33 = 0;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __72__HDSourceManager_localSourceForBundleIdentifier_copyIfNecessary_error___block_invoke;
  v23 = &unk_278620170;
  v26 = &v28;
  v24 = self;
  v9 = v8;
  v25 = v9;
  v27 = v6;
  v10 = _Block_copy(&v20);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v12 = WeakRetained;
  if (v6)
  {
    v13 = [WeakRetained database];
    v14 = [(HDHealthEntity *)HDSourceEntity performWriteTransactionWithHealthDatabase:v13 error:a5 block:v10];

    if (!v14)
    {
LABEL_3:
      v15 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v16 = [WeakRetained database];
    v17 = [(HDHealthEntity *)HDSourceEntity performReadTransactionWithHealthDatabase:v16 error:a5 block:v10];

    if (!v17)
    {
      goto LABEL_3;
    }
  }

  v15 = v29[5];
LABEL_6:
  v18 = v15;

  _Block_object_dispose(&v28, 8);

  return v18;
}

BOOL __72__HDSourceManager_localSourceForBundleIdentifier_copyIfNecessary_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 40);
  v22 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __72__HDSourceManager_localSourceForBundleIdentifier_copyIfNecessary_error___block_invoke_2;
  v18[3] = &unk_278620148;
  v8 = v6;
  v21 = *(a1 + 56);
  v9 = *(a1 + 32);
  v19 = v8;
  v20 = v9;
  v10 = [v7 fetchObjectForKey:v8 transaction:a2 error:&v22 faultHandler:v18];
  v11 = v22;
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v10;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v14 = 1;
  }

  else
  {
    v15 = v11;
    v14 = v15 == 0;
    if (v15)
    {
      if (a3)
      {
        v16 = v15;
        *a3 = v15;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v14;
}

id __72__HDSourceManager_localSourceForBundleIdentifier_copyIfNecessary_error___block_invoke_2(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v34 = 0;
  v7 = [HDLogicalSourceEntity logicalSourceIDForBundleIdentifier:v6 transaction:v5 error:&v34];
  v8 = v34;
  v9 = v8;
  if (!v7)
  {
    v13 = v8;
    if (!v13)
    {
LABEL_21:

      goto LABEL_22;
    }

    if (!a3)
    {
LABEL_20:
      _HKLogDroppedError();
      goto LABEL_21;
    }

LABEL_10:
    v29 = v13;
    *a3 = v13;
    goto LABEL_21;
  }

  v10 = *MEMORY[0x277CCE4A8];
  v11 = [*(a1 + 32) isEqualToString:*MEMORY[0x277CCE4A8]];
  v33 = v9;
  v12 = [HDSourceEntity sourceForLogicalSourceID:v7 localDeviceBundleIdentifier:v11 localOnly:1 transaction:v5 error:&v33];
  v13 = v33;

  if (!(v12 | v13))
  {
    if (*(a1 + 48) != 1)
    {
      v13 = 0;
      goto LABEL_22;
    }

    v15 = *(a1 + 32);
    v14 = *(a1 + 40);
    v32 = 0;
    v16 = objc_loadWeakRetained(v14 + 1);
    if (v14)
    {
      v17 = v5;
      v18 = v7;
      v19 = +[HDSourceEntity sourceForLogicalSourceID:localDeviceBundleIdentifier:localOnly:transaction:error:](HDSourceEntity, "sourceForLogicalSourceID:localDeviceBundleIdentifier:localOnly:transaction:error:", v18, [v15 isEqualToString:v10], 0, v17, &v32);

      if (v19)
      {
        WeakRetained = objc_loadWeakRetained(v14 + 1);
        v21 = [v19 codableSourceWithProfile:WeakRetained error:&v32];

        if (v21)
        {
          v22 = [v16 syncIdentityManager];
          v23 = [v22 currentSyncIdentity];
          v24 = [v23 identity];
          [v24 codableSyncIdentity];
          v25 = v31 = v16;
          [v21 setSyncIdentity:v25];

          v26 = [MEMORY[0x277CCAD78] UUID];
          v27 = [v26 hk_dataForUUIDBytes];
          [v21 setUuid:v27];

          v28 = objc_loadWeakRetained(v14 + 1);
          v12 = [v14 insertCodableSource:v21 provenance:0 profile:v28 error:&v32];

          v16 = v31;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v32;
  }

  if (v12)
  {
    goto LABEL_23;
  }

  v13 = v13;
  if (v13)
  {
    if (!a3)
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

LABEL_22:
  v12 = 0;
LABEL_23:

  return v12;
}

- (id)insertCodableSource:(id)a3 provenance:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  v11 = [v9 decodedUUID];
  if (v11)
  {
    if ([v9 hasOptions])
    {
      v12 = [v9 options];
    }

    else
    {
      v12 = 0;
    }

    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__86;
    v29 = __Block_byref_object_dispose__86;
    v30 = 0;
    v14 = [v10 database];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __64__HDSourceManager_insertCodableSource_provenance_profile_error___block_invoke;
    v18[3] = &unk_27861F578;
    v19 = v9;
    v20 = v10;
    v22 = &v25;
    v21 = v11;
    v23 = v12;
    v24 = a4;
    v15 = [(HDHealthEntity *)HDSourceEntity performWriteTransactionWithHealthDatabase:v14 error:a6 block:v18];

    if (v15)
    {
      v16 = v26[5];
    }

    else
    {
      v16 = 0;
    }

    v13 = v16;

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a6 code:3 description:@"missing source UUID during decoding"];
    v13 = 0;
  }

  return v13;
}

BOOL __64__HDSourceManager_insertCodableSource_provenance_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([*(a1 + 32) deleted])
  {
    v6 = &stru_283BF39C8;
  }

  else
  {
    v6 = [*(a1 + 32) bundleIdentifier];
  }

  if ([*(a1 + 32) deleted])
  {
    v7 = 0;
  }

  else
  {
    v7 = [*(a1 + 32) owningAppBundleIdentifier];
  }

  v8 = [HDLogicalSourceEntity lookUpOrCreateLogicalSourceWithBundleIdentifier:v6 owningAppBundleIdentifier:v7 transaction:v5 error:a3];
  v9 = [*(a1 + 40) syncIdentityManager];
  v10 = [v9 legacySyncIdentity];

  if (![*(a1 + 32) hasSyncIdentity])
  {
    v49 = v5;
    v51 = a3;
    v47 = v7;
    v48 = v6;
    v52 = 0;
    goto LABEL_12;
  }

  v11 = v10;
  v12 = [*(a1 + 32) syncIdentity];
  v54 = 0;
  v13 = [HDSyncIdentity syncIdentityWithCodable:v12 error:&v54];
  v14 = v54;

  if (!v13)
  {
    v50 = 0;
    _HKInitializeLogging();
    v33 = *MEMORY[0x277CCC2A0];
    v30 = v11;
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v56 = v14;
      _os_log_fault_impl(&dword_228986000, v33, OS_LOG_TYPE_FAULT, "SyncIdentity from received codable is nil %{public}@", buf, 0xCu);
    }

    v34 = v14;
    v32 = v34;
    if (!v34)
    {
      v26 = v8;
      goto LABEL_29;
    }

    if (!a3)
    {
      v26 = v8;
      _HKLogDroppedError();
      goto LABEL_29;
    }

    v35 = a3;
    v26 = v8;
    v36 = v34;
LABEL_23:
    *v35 = v32;
LABEL_29:

    v31 = 0;
    goto LABEL_30;
  }

  v51 = a3;
  v15 = [*(a1 + 40) syncIdentityManager];
  v53 = v14;
  [v15 concreteIdentityForIdentity:v13 shouldCreate:1 transaction:v5 error:&v53];
  v17 = v16 = v13;
  v52 = v53;

  if (!v17)
  {
    v50 = v16;
    v37 = v7;
    _HKInitializeLogging();
    v38 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v56 = v52;
      _os_log_fault_impl(&dword_228986000, v38, OS_LOG_TYPE_FAULT, "ConcreteSyncIdentity from received codable is nil %{public}@", buf, 0xCu);
    }

    v39 = v52;
    v32 = v39;
    v7 = v37;
    if (v39)
    {
      if (v51)
      {
        v35 = v51;
        v26 = v8;
        v40 = v39;
        v30 = 0;
        goto LABEL_23;
      }

      v26 = v8;
      _HKLogDroppedError();
    }

    else
    {
      v26 = v8;
    }

    v30 = 0;
    goto LABEL_29;
  }

  v47 = v7;
  v48 = v6;
  v49 = v5;

  v10 = v17;
LABEL_12:
  v46 = *(a1 + 48);
  v45 = [v8 persistentID];
  v18 = [*(a1 + 32) name];
  v19 = *(a1 + 64);
  v20 = [*(a1 + 32) productType];
  v21 = [*(a1 + 32) deleted];
  v22 = [*(a1 + 32) decodedModificationDate];
  v23 = *(a1 + 72);
  [v10 entity];
  v25 = v24 = v10;
  v44 = v23;
  v26 = v8;
  LOBYTE(v43) = v21;
  v5 = v49;
  v27 = +[HDSourceEntity insertSourceWithUUID:logicalSourceID:name:options:isCurrentDevice:productType:deleted:modificationDate:provenance:syncIdentity:transaction:error:](HDSourceEntity, "insertSourceWithUUID:logicalSourceID:name:options:isCurrentDevice:productType:deleted:modificationDate:provenance:syncIdentity:transaction:error:", v46, v45, v18, v19, 0, v20, v43, v22, v44, [v25 persistentID], v49, v51);
  v28 = *(*(a1 + 56) + 8);
  v29 = *(v28 + 40);
  *(v28 + 40) = v27;

  v30 = v24;
  v31 = *(*(*(a1 + 56) + 8) + 40) != 0;
  v7 = v47;
  v6 = v48;
  v32 = v52;
LABEL_30:

  v41 = *MEMORY[0x277D85DE8];
  return v31;
}

- (id)localSourceForSourceID:(id)a3 copyIfNecessary:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__86;
  v32 = __Block_byref_object_dispose__86;
  v33 = 0;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __64__HDSourceManager_localSourceForSourceID_copyIfNecessary_error___block_invoke;
  v23 = &unk_278620170;
  v26 = &v28;
  v24 = self;
  v9 = v8;
  v25 = v9;
  v27 = v6;
  v10 = _Block_copy(&v20);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v12 = WeakRetained;
  if (v6)
  {
    v13 = [WeakRetained database];
    v14 = [(HDHealthEntity *)HDSourceEntity performWriteTransactionWithHealthDatabase:v13 error:a5 block:v10];

    if (!v14)
    {
LABEL_3:
      v15 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v16 = [WeakRetained database];
    v17 = [(HDHealthEntity *)HDSourceEntity performReadTransactionWithHealthDatabase:v16 error:a5 block:v10];

    if (!v17)
    {
      goto LABEL_3;
    }
  }

  v15 = v29[5];
LABEL_6:
  v18 = v15;

  _Block_object_dispose(&v28, 8);

  return v18;
}

BOOL __64__HDSourceManager_localSourceForSourceID_copyIfNecessary_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 48);
  v22 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __64__HDSourceManager_localSourceForSourceID_copyIfNecessary_error___block_invoke_2;
  v18[3] = &unk_278620148;
  v8 = v6;
  v9 = *(a1 + 32);
  v19 = v8;
  v20 = v9;
  v21 = *(a1 + 56);
  v10 = [v7 fetchObjectForKey:v8 transaction:a2 error:&v22 faultHandler:v18];
  v11 = v22;
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v10;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v14 = 1;
  }

  else
  {
    v15 = v11;
    v14 = v15 == 0;
    if (v15)
    {
      if (a3)
      {
        v16 = v15;
        *a3 = v15;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v14;
}

id __64__HDSourceManager_localSourceForSourceID_copyIfNecessary_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = -[HDSQLiteEntity initWithPersistentID:]([HDSourceEntity alloc], "initWithPersistentID:", [*(a1 + 32) longLongValue]);
  v7 = [v5 databaseForEntityClass:objc_opt_class()];

  v8 = [(HDSourceEntity *)v6 sourceBundleIdentifierInDatabase:v7 error:a3];
  if (v8)
  {
    v9 = [*(a1 + 40) localSourceForBundleIdentifier:v8 copyIfNecessary:*(a1 + 48) error:a3];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (uint64_t)_isLocalDeviceBundleIdentifier:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 isEqualToString:*MEMORY[0x277CCE4A8]];

  return v3;
}

- (id)localDeviceSourceWithError:(id *)a3
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__86;
  v23 = __Block_byref_object_dispose__86;
  v24 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__HDSourceManager_localDeviceSourceWithError___block_invoke;
  aBlock[3] = &unk_278618610;
  aBlock[4] = &v19;
  v5 = _Block_copy(aBlock);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = [WeakRetained database];
  v8 = [(HDHealthEntity *)HDSourceEntity performReadTransactionWithHealthDatabase:v7 error:a3 block:v5];

  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = v20[5];
  if (v9)
  {
    goto LABEL_6;
  }

  v10 = objc_loadWeakRetained(&self->_profile);
  v11 = [v10 database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __46__HDSourceManager_localDeviceSourceWithError___block_invoke_2;
  v15[3] = &unk_278620198;
  v16 = v5;
  v17 = &v19;
  v15[4] = self;
  v12 = [(HDHealthEntity *)HDSourceEntity performWriteTransactionWithHealthDatabase:v11 error:a3 block:v15];

  if (v12)
  {
    v9 = v20[5];
  }

  else
  {
LABEL_5:
    v9 = 0;
  }

LABEL_6:
  v13 = v9;

  _Block_object_dispose(&v19, 8);

  return v13;
}

BOOL __46__HDSourceManager_localDeviceSourceWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];

  v13 = 0;
  v7 = [HDSourceEntity sourceForLocalDeviceWithDatabase:v6 error:&v13];
  v8 = v13;
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;

  if (v8)
  {
    if (a3)
    {
      v11 = v8;
      *a3 = v8;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v8 == 0;
}

BOOL __46__HDSourceManager_localDeviceSourceWithError___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*(a1 + 40) + 16))() && !*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = [*(a1 + 32) _createSourceEntityForLocalDeviceWithError:a3];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  return *(*(*(a1 + 48) + 8) + 40) != 0;
}

- (id)privateSourceForClinicalAccountIdentifier:(id)a3 provenance:(int64_t)a4 createOrUpdateIfNecessary:(BOOL)a5 nameOnCreateOrUpdate:(id)a6 error:(id *)a7
{
  v8 = a5;
  v11 = [MEMORY[0x277CCDA00] _privateSourceForClinicalAccountIdentifier:a3 name:a6];
  v12 = [(HDSourceManager *)self _sourceFromEphemeralSource:v11 provenance:a4 createOrUpdateIfNecessary:v8 error:a7];

  return v12;
}

- (id)_sourceFromEphemeralSource:(uint64_t)a3 provenance:(int)a4 createOrUpdateIfNecessary:(uint64_t)a5 error:
{
  v9 = a2;
  v10 = v9;
  if (a1)
  {
    if (a4)
    {
      v11 = [v9 name];

      if (!v11)
      {
        v18 = [MEMORY[0x277CCA890] currentHandler];
        [v18 handleFailureInMethod:sel__sourceFromEphemeralSource_provenance_createOrUpdateIfNecessary_error_ object:a1 file:@"HDSourceManager.m" lineNumber:523 description:{@"Invalid parameter not satisfying: %@", @"source.name"}];
      }

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __89__HDSourceManager__sourceFromEphemeralSource_provenance_createOrUpdateIfNecessary_error___block_invoke;
      aBlock[3] = &unk_2786201C0;
      aBlock[4] = a1;
      v12 = v10;
      v23 = v12;
      v24 = a3;
      v13 = _Block_copy(aBlock);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __89__HDSourceManager__sourceFromEphemeralSource_provenance_createOrUpdateIfNecessary_error___block_invoke_2;
      v19[3] = &unk_2786201E8;
      v20 = v12;
      v21 = a1;
      v14 = _Block_copy(v19);
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v15 = [v10 bundleIdentifier];
    v16 = [(HDSourceManager *)a1 _sourceForBundleIdentifier:v15 createSourceBlock:v13 modifySourceBlock:v14 error:a5];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)publicSourceForClinicalExternalIdentifier:(id)a3 provenance:(int64_t)a4 createOrUpdateIfNecessary:(BOOL)a5 nameOnCreateOrUpdate:(id)a6 error:(id *)a7
{
  v8 = a5;
  v11 = [MEMORY[0x277CCDA00] _publicSourceForClinicalExternalIdentifier:a3 name:a6];
  v12 = [(HDSourceManager *)self _sourceFromEphemeralSource:v11 provenance:a4 createOrUpdateIfNecessary:v8 error:a7];

  return v12;
}

id __89__HDSourceManager__sourceFromEphemeralSource_provenance_createOrUpdateIfNecessary_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) bundleIdentifier];
  v7 = [*(a1 + 40) _owningAppBundleIdentifier];
  v8 = [MEMORY[0x277CCAD78] UUID];
  v9 = [*(a1 + 40) name];
  v10 = [*(a1 + 40) _options];
  v11 = [*(a1 + 40) _productType];
  v12 = [MEMORY[0x277CBEAA8] date];
  v13 = [v5 insertSourceWithBundleIdentifier:v6 owningAppBundleIdentifier:v7 UUID:v8 name:v9 options:v10 isCurrentDevice:0 productType:v11 modificationDate:v12 provenance:*(a1 + 48) error:a3];

  return v13;
}

uint64_t __89__HDSourceManager__sourceFromEphemeralSource_provenance_createOrUpdateIfNecessary_error___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) name];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v11 = [v7 setName:v9 profile:WeakRetained error:a4];

  if (v11)
  {
    v12 = *(*(a1 + 40) + 32);
    v13 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v7, "persistentID")}];
    [v12 removeObjectForKey:v13 transaction:v8];
  }

  return v11;
}

- (id)sourceForClient:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 sourceBundleIdentifier];
  if (v7)
  {
    v8 = [MEMORY[0x277CCDA00] hd_sourceForClient:v6 bundleIdentifier:0];
    v9 = [(HDSourceManager *)self sourceEntityForClientSource:v8 createOrUpdateIfNecessary:0 error:a4];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:4 description:@"Missing application-identifier entitlement"];
    v9 = 0;
  }

  return v9;
}

- (id)createOrUpdateSourceForClient:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 sourceBundleIdentifier];
  if (v7)
  {
    v8 = [MEMORY[0x277CCDA00] hd_sourceForClient:v6 bundleIdentifier:0];
    v13 = 0;
    v9 = [(HDSourceManager *)self sourceEntityForClientSource:v8 createOrUpdateIfNecessary:1 error:&v13];
    v10 = v13;

    if (!(v9 | v10))
    {
      v10 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Failed to create source for client %@", v7}];
    }

    if (a4)
    {
      v11 = v10;
      *a4 = v10;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:4 description:@"Missing application-identifier entitlement"];
    v9 = 0;
  }

  return v9;
}

- (id)sourceEntityForClientSource:(id)a3 createOrUpdateIfNecessary:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v9 = a3;
  v10 = [v9 bundleIdentifier];
  if (v10)
  {
    if (v6)
    {
LABEL_3:
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __79__HDSourceManager_sourceEntityForClientSource_createOrUpdateIfNecessary_error___block_invoke;
      aBlock[3] = &unk_278620210;
      v21 = v10;
      v22 = self;
      v11 = v9;
      v23 = v11;
      v12 = _Block_copy(aBlock);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __79__HDSourceManager_sourceEntityForClientSource_createOrUpdateIfNecessary_error___block_invoke_2;
      v17[3] = &unk_2786201E8;
      v18 = v11;
      v19 = self;
      v13 = _Block_copy(v17);

      goto LABEL_6;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"HDSourceManager.m" lineNumber:616 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier != nil"}];

    if (v6)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v13 = 0;
LABEL_6:
  v15 = [(HDSourceManager *)self _sourceForBundleIdentifier:v10 createSourceBlock:v12 modifySourceBlock:v13 error:a5];

  return v15;
}

id __79__HDSourceManager_sourceEntityForClientSource_createOrUpdateIfNecessary_error___block_invoke(void **a1, uint64_t a2, uint64_t a3)
{
  if ([HDSourceManager _isLocalDeviceBundleIdentifier:?])
  {
    v5 = [a1[5] _createSourceEntityForLocalDeviceWithError:a3];
  }

  else if ([MEMORY[0x277CCDA00] hd_isSpartanDeviceBundleIdentifier:a1[4]])
  {
    v6 = a1[5];
    if (v6)
    {
      v7 = [MEMORY[0x277CCDA00] _connectedGymSource];
      v8 = [v7 bundleIdentifier];
      v9 = [v7 _owningAppBundleIdentifier];
      v10 = [v7 name];
      v11 = [v7 _options];
      v12 = [v7 _productType];
      v5 = [(HDSourceManager *)v6 _createSourceEntityForBundleIdentifier:v8 owningAppBundleIdentifier:v9 name:v10 options:v11 isCurrentDevice:0 productType:v12 error:a3];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v13 = [a1[6] name];
    if (!v13)
    {
      v13 = [MEMORY[0x277CCDA00] hd_getNameForSource:a1[6]];
    }

    v15 = a1[4];
    v14 = a1[5];
    v16 = [a1[6] _owningAppBundleIdentifier];
    v17 = [a1[6] _options];
    v18 = [a1[6] _isLocalDevice];
    v19 = [a1[6] _productType];
    v5 = [(HDSourceManager *)v14 _createSourceEntityForBundleIdentifier:v15 owningAppBundleIdentifier:v16 name:v13 options:v17 isCurrentDevice:v18 productType:v19 error:a3];
  }

  return v5;
}

- (id)_createSourceEntityForBundleIdentifier:(void *)a3 owningAppBundleIdentifier:(void *)a4 name:(uint64_t)a5 options:(uint64_t)a6 isCurrentDevice:(void *)a7 productType:(uint64_t)a8 error:
{
  if (a1)
  {
    v15 = MEMORY[0x277CCAD78];
    v16 = a7;
    v17 = a4;
    v18 = a3;
    v19 = a2;
    v20 = [v15 UUID];
    v21 = [MEMORY[0x277CBEAA8] date];
    v22 = [a1 insertSourceWithBundleIdentifier:v19 owningAppBundleIdentifier:v18 UUID:v20 name:v17 options:a5 isCurrentDevice:a6 productType:v16 modificationDate:v21 provenance:0 error:a8];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

uint64_t __79__HDSourceManager_sourceEntityForClientSource_createOrUpdateIfNecessary_error___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v15 = 0;
  v9 = [*(a1 + 32) _options];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v11 = [v7 setOptions:v9 profile:WeakRetained didUpdate:&v15 error:a4];

  if (v11 && v15 == 1)
  {
    v12 = *(*(a1 + 40) + 32);
    v13 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v7, "persistentID")}];
    [v12 removeObjectForKey:v13 transaction:v8];
  }

  return v11;
}

- (id)sourceForAppleDeviceWithUUID:(id)a3 identifier:(id)a4 name:(id)a5 productType:(id)a6 createIfNecessary:(BOOL)a7 error:(id *)a8
{
  v9 = a7;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  if (v9)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __100__HDSourceManager_sourceForAppleDeviceWithUUID_identifier_name_productType_createIfNecessary_error___block_invoke;
    aBlock[3] = &unk_278620238;
    aBlock[4] = self;
    v22 = v15;
    v23 = v14;
    v24 = v16;
    v25 = v17;
    v18 = _Block_copy(aBlock);
  }

  else
  {
    v18 = 0;
  }

  v19 = [(HDSourceManager *)self _sourceForBundleIdentifier:v15 createSourceBlock:v18 modifySourceBlock:0 error:a8];

  return v19;
}

id __100__HDSourceManager_sourceForAppleDeviceWithUUID_identifier_name_productType_createIfNecessary_error___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = HKSourceOptionsForAppleDevice();
  v10 = a1[8];
  v11 = [MEMORY[0x277CBEAA8] date];
  v21 = 0;
  v12 = [v5 insertSourceWithBundleIdentifier:v6 owningAppBundleIdentifier:0 UUID:v7 name:v8 options:v9 isCurrentDevice:0 productType:v10 modificationDate:v11 provenance:0 error:&v21];
  v13 = v21;

  if (!v12)
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v19 = a1[5];
      v20 = a1[6];
      *buf = 138412802;
      v23 = v19;
      v24 = 2112;
      v25 = v20;
      v26 = 2114;
      v27 = v13;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "Failed to insert local source for %@ %@: %{public}@", buf, 0x20u);
    }

    v15 = v13;
    if (v15)
    {
      if (a3)
      {
        v16 = v15;
        *a3 = v15;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)sourceForCodableSource:(id)a3 provenance:(int64_t)a4 createIfNecessary:(BOOL)a5 isDeleted:(BOOL *)a6 error:(id *)a7
{
  v9 = a5;
  v12 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__86;
  v31 = __Block_byref_object_dispose__86;
  v32 = 0;
  v13 = [v12 decodedUUID];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v15 = [WeakRetained database];

  if (v13)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __87__HDSourceManager_sourceForCodableSource_provenance_createIfNecessary_isDeleted_error___block_invoke;
    aBlock[3] = &unk_278620260;
    v23 = &v27;
    v24 = a6;
    v26 = v9;
    v20 = v13;
    v21 = self;
    v22 = v12;
    v25 = a4;
    v16 = _Block_copy(aBlock);
    if (v9)
    {
      [(HDHealthEntity *)HDSourceEntity performWriteTransactionWithHealthDatabase:v15 error:a7 block:v16];
    }

    else
    {
      [(HDHealthEntity *)HDSourceEntity performReadTransactionWithHealthDatabase:v15 error:a7 block:v16];
    }

    v17 = v28[5];
  }

  else
  {
    v17 = 0;
  }

  _Block_object_dispose(&v27, 8);

  return v17;
}

BOOL __87__HDSourceManager_sourceForCodableSource_provenance_createIfNecessary_isDeleted_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];

  v7 = HDSourceEntityPredicateForSourceWithUUID(*(a1 + 32), 1);
  v23 = 0;
  v8 = [HDSourceEntity firstSourceWithPredicate:v7 database:v6 error:&v23];
  v9 = v23;
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;

  v12 = *(*(*(a1 + 56) + 8) + 40);
  if (v12)
  {
    if (*(a1 + 64))
    {
      **(a1 + 64) = [v12 BOOLeanForProperty:@"deleted" database:v6];
    }

    goto LABEL_4;
  }

  v13 = v9 == 0;
  if (v9)
  {
    v14 = v9;
    if (a3)
    {
      *a3 = v14;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_13;
  }

  if (!*(a1 + 80))
  {
LABEL_13:

    goto LABEL_14;
  }

  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 72);
  WeakRetained = objc_loadWeakRetained(v15 + 1);
  v19 = [v15 insertCodableSource:v16 provenance:v17 profile:WeakRetained error:a3];
  v20 = *(*(a1 + 56) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v13 = 0;
    goto LABEL_14;
  }

  if (*(a1 + 64))
  {
    **(a1 + 64) = [*(a1 + 48) deleted];
    v13 = *(*(*(a1 + 56) + 8) + 40) != 0;
    goto LABEL_14;
  }

LABEL_4:
  v13 = 1;
LABEL_14:

  return v13;
}

uint64_t __88__HDSourceManager__sourceForBundleIdentifier_createSourceBlock_modifySourceBlock_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];
  v7 = *(a1 + 40);
  v8 = *(*(a1 + 32) + 24);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __88__HDSourceManager__sourceForBundleIdentifier_createSourceBlock_modifySourceBlock_error___block_invoke_2;
  v22[3] = &unk_278620288;
  v23 = v7;
  v9 = v6;
  v10 = *(a1 + 32);
  v24 = v9;
  v25 = v10;
  v26 = *(a1 + 48);
  v11 = [v8 fetchObjectForKey:v23 transaction:v5 error:a3 faultHandler:v22];
  v12 = *(*(a1 + 64) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v17 = *(*(*(a1 + 64) + 8) + 40);
  if (v17)
  {
    v18 = *(a1 + 56);
    if (v18)
    {
      if (((*(v18 + 16))(v18, v17, v5, a3, v14, v15, v16) & 1) == 0)
      {
        v19 = *(*(a1 + 64) + 8);
        v20 = *(v19 + 40);
        *(v19 + 40) = 0;
      }
    }
  }

  return 1;
}

id __88__HDSourceManager__sourceForBundleIdentifier_createSourceBlock_modifySourceBlock_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([HDSourceManager _isLocalDeviceBundleIdentifier:?])
  {
    [HDSourceEntity sourceForLocalDeviceWithDatabase:*(a1 + 40) error:a3];
  }

  else
  {
    [*(a1 + 48) localSourceForBundleIdentifier:*(a1 + 32) error:a3];
  }
  v6 = ;
  if (!v6)
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      v6 = (*(v7 + 16))(v7, v5, a3);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)clientSourceForBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v27 = 0;
  v7 = [(HDSourceManager *)self localSourceForBundleIdentifier:v6 error:&v27];
  v8 = v27;
  v9 = v8;
  if (v7)
  {
    goto LABEL_2;
  }

  if (!v8)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__86;
    v25 = __Block_byref_object_dispose__86;
    v26 = 0;
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v16 = [WeakRetained database];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __57__HDSourceManager_clientSourceForBundleIdentifier_error___block_invoke;
    v18[3] = &unk_278614110;
    v19 = v6;
    v20 = &v21;
    v17 = [(HDHealthEntity *)HDSourceEntity performReadTransactionWithHealthDatabase:v16 error:a4 block:v18];

    if (v17)
    {
      v7 = v22[5];
    }

    else
    {
      v7 = 0;
    }

    _Block_object_dispose(&v21, 8);
    if (!v7)
    {
      v11 = 0;
      goto LABEL_3;
    }

LABEL_2:
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v7, "persistentID")}];
    v11 = [(HDSourceManager *)self clientSourceForPersistentID:v10 error:a4];

LABEL_3:
    v12 = v11;

    goto LABEL_4;
  }

  if (a4)
  {
    v14 = v8;
    v12 = 0;
    *a4 = v9;
  }

  else
  {
    _HKLogDroppedError();
    v12 = 0;
  }

LABEL_4:

  return v12;
}

uint64_t __57__HDSourceManager_clientSourceForBundleIdentifier_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [HDLogicalSourceEntity logicalSourceIDForBundleIdentifier:v5 transaction:v6 error:a3];
  v8 = +[HDSourceEntity sourceForLogicalSourceID:localDeviceBundleIdentifier:localOnly:transaction:error:](HDSourceEntity, "sourceForLogicalSourceID:localDeviceBundleIdentifier:localOnly:transaction:error:", v7, [*(a1 + 32) isEqualToString:*MEMORY[0x277CCE4A8]], 0, v6, a3);

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return 1;
}

- (id)uncachedClientSourceForPersistentID:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(HDDatabaseValueCache *)self->_clientSourceCache fetchObjectForKey:v8 transaction:a4 error:a5 faultHandler:&__block_literal_global_92];
  if (!v9)
  {
    v10 = -[HDSQLiteEntity initWithPersistentID:]([HDSourceEntity alloc], "initWithPersistentID:", [v8 longLongValue]);
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v9 = [(HDSourceEntity *)v10 sourceWithProfile:WeakRetained error:a5];
  }

  return v9;
}

- (id)clientSourceForPersistentID:(id)a3 error:(id *)a4
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v13 = a3;
    v6 = MEMORY[0x277CBEA60];
    v7 = a3;
    v8 = [v6 arrayWithObjects:&v13 count:1];

    v9 = [(HDSourceManager *)self clientSourcesForSourceIDs:v8 error:a4, v13, v14];
    v10 = [v9 anyObject];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)clientSourceForSourceEntities:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 count])
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = [v6 anyObject];
    v9 = [v7 numberWithLongLong:{objc_msgSend(v8, "persistentID")}];
    v10 = [(HDSourceManager *)self clientSourceForPersistentID:v9 error:a4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)clientSourceForSourceEntity:(id)a3 error:(id *)a4
{
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(a3, "persistentID")}];
  v7 = [(HDSourceManager *)self clientSourceForPersistentID:v6 error:a4];

  return v7;
}

- (id)sourceUUIDForBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = [(HDSourceManager *)self localSourceForBundleIdentifier:a3 error:?];
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v8 = [v6 sourceUUIDWithProfile:WeakRetained error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)clientSourcesForSourceIDs:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v6, "count")}];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v9 = [WeakRetained database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__HDSourceManager_clientSourcesForSourceIDs_error___block_invoke;
  v15[3] = &unk_278615D40;
  v16 = v6;
  v17 = self;
  v18 = v7;
  v10 = v7;
  v11 = v6;
  LODWORD(a4) = [(HDHealthEntity *)HDSourceEntity performReadTransactionWithHealthDatabase:v9 error:a4 block:v15];

  if (a4)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

uint64_t __51__HDSourceManager_clientSourcesForSourceIDs_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v24 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v23 + 1) + 8 * v10);
      v12 = *(a1 + 40);
      v13 = *(v12 + 32);
      v21[5] = v11;
      v22 = 0;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __51__HDSourceManager_clientSourcesForSourceIDs_error___block_invoke_2;
      v21[3] = &unk_2786202F8;
      v21[4] = v12;
      v14 = [v13 fetchObjectForKey:v11 transaction:v5 error:&v22 faultHandler:v21];
      v15 = v22;
      v16 = v15;
      if (v14)
      {
        [*(a1 + 48) addObject:v14];
      }

      else
      {
        if (v15)
        {
          v16 = v15;
LABEL_11:
          if (a3)
          {
            v17 = v16;
            *a3 = v16;
          }

          else
          {
            _HKLogDroppedError();
          }

          goto LABEL_15;
        }

        v16 = [MEMORY[0x277CCA9B8] hk_error:118 format:{@"No source for %@", v11}];
        if (v16)
        {
          goto LABEL_11;
        }
      }

LABEL_15:

      if (!v14)
      {
        v18 = 0;
        goto LABEL_20;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v18 = 1;
LABEL_20:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

id __51__HDSourceManager_clientSourcesForSourceIDs_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = [(HDSQLiteEntity *)HDSourceEntity entityWithPersistentID:*(a1 + 40)];
    if (v5)
    {
      WeakRetained = objc_loadWeakRetained((v3 + 8));
      v7 = [v5 sourceWithProfile:WeakRetained error:a3];

      if ([v7 _isApplication] & 1) != 0 || (objc_msgSend(v7, "_isConnectedGymSource"))
      {
        v8 = 0;
        if (!v7)
        {
          goto LABEL_16;
        }

LABEL_9:
        if ((v8 & 1) == 0)
        {
          v9 = [MEMORY[0x277CCDA00] hd_getNameForSource:v7];
          if ([v9 length])
          {
            v10 = [v7 name];
            v11 = [v10 isEqualToString:v9];

            if ((v11 & 1) == 0)
            {
              _HKInitializeLogging();
              v12 = *MEMORY[0x277CCC2A0];
              if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
              {
                *v16 = 138412546;
                *&v16[4] = v9;
                *&v16[12] = 2112;
                *&v16[14] = v7;
                _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "Updating name to %@ for source %@", v16, 0x16u);
              }

              [v7 _setName:v9];
              v13 = *(v3 + 16);
              *v16 = MEMORY[0x277D85DD0];
              *&v16[8] = 3221225472;
              *&v16[16] = __59__HDSourceManager__fetchClientSourceForPersistentID_error___block_invoke;
              v17 = &unk_278616D68;
              v18 = v5;
              v19 = v9;
              v20 = v3;
              v21 = v7;
              dispatch_async(v13, v16);
            }
          }
        }

        goto LABEL_16;
      }

      v8 = [v7 _isResearchStudy] ^ 1;
      if (v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a3 code:118 format:@"No source entity for specified persistent ID."];
      v7 = 0;
    }

LABEL_16:

    goto LABEL_17;
  }

  v7 = 0;
LABEL_17:
  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)clientSourceForUUID:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (!v7)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"HDSourceManager.m" lineNumber:915 description:{@"Invalid parameter not satisfying: %@", @"sourceUUID != nil"}];
  }

  v8 = HDSourceEntityPredicateForSourceWithUUID(v7, 0);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v10 = [HDSourceEntity firstSourceWithPredicate:v8 profile:WeakRetained error:a4];

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_profile);
    v12 = [v10 sourceWithProfile:v11 error:a4];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_clientSourcesWithPredicate:(uint64_t)a3 error:
{
  v5 = a2;
  if (a1)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v8 = [WeakRetained database];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __53__HDSourceManager__clientSourcesWithPredicate_error___block_invoke;
    v13[3] = &unk_278615D40;
    v14 = v5;
    v15 = a1;
    v9 = v6;
    v16 = v9;
    v10 = [(HDHealthEntity *)HDSourceEntity performReadTransactionWithHealthDatabase:v8 error:a3 block:v13];

    if (v10)
    {
      v11 = [v9 copy];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)allWatchSourcesWithError:(id *)a3
{
  v5 = HDSourceEntityPredicateForAppleWatchSources();
  v6 = [(HDSourceManager *)self _clientSourcesWithPredicate:v5 error:a3];

  return v6;
}

BOOL __53__HDSourceManager__clientSourcesWithPredicate_error___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__HDSourceManager__clientSourcesWithPredicate_error___block_invoke_2;
  v11[3] = &unk_278620320;
  v7 = a1[4];
  v8 = a1[6];
  v11[4] = a1[5];
  v12 = v8;
  v9 = [HDSourceEntity enumerateBundleIdentifiersForSourcesWithPredicate:v7 database:v6 error:a3 enumerationHandler:v11];

  return v9;
}

BOOL __53__HDSourceManager__clientSourcesWithPredicate_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) clientSourceForBundleIdentifier:a2 error:a3];
  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }

  return v4 != 0;
}

- (void)profileDidBecomeReady:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = HKIsUnitTesting();
  v5 = MEMORY[0x277CCC2B0];
  if (v4)
  {
    _HKInitializeLogging();
    v6 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      *buf = 138412546;
      v22 = objc_opt_class();
      v23 = 2048;
      v24 = self;
      v8 = v22;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "<%@:%p> profileDidBecomeReady: started", buf, 0x16u);
    }
  }

  dispatch_assert_queue_V2(self->_queue);
  v20 = 0;
  v9 = [(HDSourceManager *)self updateCurrentDeviceNameWithError:&v20];
  v10 = v20;
  if (!v9)
  {
    _HKInitializeLogging();
    v11 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v17 = v11;
      WeakRetained = objc_loadWeakRetained(&self->_profile);
      v19 = [WeakRetained profileIdentifier];
      *buf = 138543618;
      v22 = v19;
      v23 = 2114;
      v24 = v10;
      _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "Current device source name update failed for profile with identifier %{public}@: %{public}@", buf, 0x16u);
    }
  }

  if (HKIsUnitTesting())
  {
    _HKInitializeLogging();
    v12 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = objc_opt_class();
      *buf = 138412546;
      v22 = v14;
      v23 = 2048;
      v24 = self;
      v15 = v14;
      _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "<%@:%p> profileDidBecomeReady: ended", buf, 0x16u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)insertSourceWithBundleIdentifier:(id)a3 owningAppBundleIdentifier:(id)a4 UUID:(id)a5 name:(id)a6 options:(unint64_t)a7 isCurrentDevice:(BOOL)a8 productType:(id)a9 modificationDate:(id)a10 provenance:(int64_t)a11 error:(id *)a12
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a9;
  v33 = a10;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__86;
  v52 = __Block_byref_object_dispose__86;
  v53 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v22 = [WeakRetained database];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __158__HDSourceManager_insertSourceWithBundleIdentifier_owningAppBundleIdentifier_UUID_name_options_isCurrentDevice_productType_modificationDate_provenance_error___block_invoke;
  v36[3] = &unk_278620348;
  v23 = v16;
  v37 = v23;
  v24 = v17;
  v38 = v24;
  v39 = self;
  v44 = &v48;
  v25 = v18;
  v40 = v25;
  v26 = v19;
  v41 = v26;
  v45 = a7;
  v47 = a8;
  v27 = v20;
  v42 = v27;
  v28 = v33;
  v43 = v28;
  v46 = a11;
  v29 = [(HDHealthEntity *)HDLogicalSourceEntity performWriteTransactionWithHealthDatabase:v22 error:a12 block:v36];

  if (v29)
  {
    v30 = v49[5];
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;

  _Block_object_dispose(&v48, 8);

  return v31;
}

BOOL __158__HDSourceManager_insertSourceWithBundleIdentifier_owningAppBundleIdentifier_UUID_name_options_isCurrentDevice_productType_modificationDate_provenance_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [HDLogicalSourceEntity lookUpOrCreateLogicalSourceWithBundleIdentifier:*(a1 + 32) owningAppBundleIdentifier:*(a1 + 40) transaction:v5 error:a3];
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 8));
    v8 = [WeakRetained syncIdentityManager];
    v9 = [v8 currentSyncIdentity];
    v10 = [v9 entity];
    v11 = [v10 persistentID];

    LOBYTE(v17) = 0;
    v12 = +[HDSourceEntity insertSourceWithUUID:logicalSourceID:name:options:isCurrentDevice:productType:deleted:modificationDate:provenance:syncIdentity:transaction:error:](HDSourceEntity, "insertSourceWithUUID:logicalSourceID:name:options:isCurrentDevice:productType:deleted:modificationDate:provenance:syncIdentity:transaction:error:", *(a1 + 56), [v6 persistentID], *(a1 + 64), *(a1 + 96), *(a1 + 112), *(a1 + 72), v17, *(a1 + 80), *(a1 + 104), v11, v5, a3);
    v13 = *(*(a1 + 88) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = *(*(*(a1 + 88) + 8) + 40) != 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)createSourcesWithCodables:(id)a3 provenance:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [v8 hk_mapToSet:&__block_literal_global_377];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [WeakRetained database];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __62__HDSourceManager_createSourcesWithCodables_provenance_error___block_invoke_2;
  v20[3] = &unk_278613550;
  v20[4] = self;
  v21 = v8;
  v23 = a4;
  v22 = v9;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__HDSourceManager_createSourcesWithCodables_provenance_error___block_invoke_3;
  v15[3] = &unk_278620390;
  v16 = v22;
  v17 = self;
  v18 = v21;
  v19 = a4;
  v12 = v21;
  v13 = v22;
  LOBYTE(a5) = [(HDHealthEntity *)HDSampleEntity performWriteTransactionWithHealthDatabase:v11 error:a5 block:v20 inaccessibilityHandler:v15];

  return a5;
}

id __62__HDSourceManager_createSourcesWithCodables_provenance_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 deleted])
  {
    v3 = [v2 decodedUUID];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)_createSourcesWithCodables:(uint64_t)a3 provenance:(void *)a4 sourceUUIDSToDelete:(unsigned int)a5 deleteSamples:(void *)a6 transaction:(uint64_t)a7 error:
{
  v33 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v24 = a4;
  v12 = a6;
  v25 = v11;
  if (a1)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v26 = *(*(&v28 + 1) + 8 * i);
          v27 = v12;
          v18 = HKWithAutoreleasePool();

          if ((v18 & 1) == 0)
          {

            goto LABEL_12;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v19 = v24;
    v20 = [a1 _deleteSourcesWithUUIDs:v24 localSourceEntityCacheKey:0 syncIdentity:0 deleteSamples:a5 transaction:v12 error:a7];
  }

  else
  {
LABEL_12:
    v20 = 0;
    v19 = v24;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

BOOL __62__HDSourceManager_createSourcesWithCodables_provenance_error___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (![*(a1 + 32) count])
  {
    goto LABEL_3;
  }

  v5 = [[_HDDeleteSourcesWithUUIDsEntry alloc] initWithUUIDs:*(a1 + 32) bundleIdentifier:0];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v7 = [WeakRetained database];
  v8 = [v7 addJournalEntry:v5 error:a3];

  if (!v8)
  {
    return 0;
  }

LABEL_3:
  v9 = objc_loadWeakRetained((*(a1 + 40) + 8));
  v10 = [v9 database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__HDSourceManager_createSourcesWithCodables_provenance_error___block_invoke_4;
  v16[3] = &unk_278613550;
  v11 = *(a1 + 48);
  v16[4] = *(a1 + 40);
  v12 = v11;
  v13 = *(a1 + 56);
  v17 = v12;
  v19 = v13;
  v18 = *(a1 + 32);
  v14 = [(HDHealthEntity *)HDSourceEntity performWriteTransactionWithHealthDatabase:v10 error:a3 block:v16];

  return v14;
}

uint64_t __109__HDSourceManager__createSourcesWithCodables_provenance_sourceUUIDSToDelete_deleteSamples_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) decodedUUID];
  v5 = 1;
  v6 = HDSourceEntityPredicateForSourceWithUUID(v4, 1);
  v7 = [*(a1 + 40) databaseForEntityClass:objc_opt_class()];
  v8 = [HDSourceEntity firstSourceWithPredicate:v6 database:v7 error:a2];
  if (!v8)
  {
    v8 = [*(a1 + 48) sourceForCodableSource:*(a1 + 32) provenance:*(a1 + 56) createIfNecessary:1 isDeleted:0 error:a2];
    if (!v8)
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 32);
        v13 = 138543618;
        v14 = v4;
        v15 = 2112;
        v16 = v12;
        _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "Failed to create source %{public}@ with codable source %@", &v13, 0x16u);
      }

      v8 = 0;
      v5 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)deleteSourceWithBundleIdentifier:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (!v7)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HDSourceManager.m" lineNumber:1115 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier != nil"}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v9 = [WeakRetained database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__HDSourceManager_deleteSourceWithBundleIdentifier_error___block_invoke;
  v16[3] = &unk_278613218;
  v16[4] = self;
  v17 = v7;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__HDSourceManager_deleteSourceWithBundleIdentifier_error___block_invoke_2;
  v14[3] = &unk_278616F88;
  v14[4] = self;
  v15 = v17;
  v10 = v17;
  v11 = [(HDHealthEntity *)HDSampleEntity performWriteTransactionWithHealthDatabase:v9 error:a4 block:v16 inaccessibilityHandler:v14];

  return v11;
}

uint64_t __58__HDSourceManager_deleteSourceWithBundleIdentifier_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [(HDSourceManager *)*(a1 + 32) _sourceUUIDsForBundleIdentifier:a3 error:?];
  if (v6)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    WeakRetained = objc_loadWeakRetained(v8 + 1);
    v10 = [WeakRetained syncIdentityManager];
    v11 = [v10 currentSyncIdentity];
    v12 = [v8 _deleteSourcesWithUUIDs:v6 localSourceEntityCacheKey:v7 syncIdentity:v11 deleteSamples:1 transaction:v5 error:a3];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_sourceUUIDsForBundleIdentifier:(uint64_t)a3 error:
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a1)
  {
    v6 = [a1 allSourcesForBundleIdentifier:v5 error:a3];
    v7 = v6;
    if (v6)
    {
      if ([v6 count])
      {
        v20 = v5;
        v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v9 = v7;
        v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v22;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v22 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v21 + 1) + 8 * i);
              WeakRetained = objc_loadWeakRetained(a1 + 1);
              v16 = [v14 sourceUUIDWithProfile:WeakRetained error:a3];

              if (!v16)
              {

                v17 = 0;
                goto LABEL_14;
              }

              [v8 addObject:v16];
            }

            v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v17 = v8;
LABEL_14:

        v5 = v20;
        goto LABEL_17;
      }

      [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:{@"No sources with bundle identifier %@", v5}];
    }

    v17 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v17 = 0;
LABEL_18:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

BOOL __58__HDSourceManager_deleteSourceWithBundleIdentifier_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v6 = [WeakRetained database];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__HDSourceManager_deleteSourceWithBundleIdentifier_error___block_invoke_3;
  v10[3] = &unk_278613218;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v7;
  v8 = [(HDHealthEntity *)HDSourceEntity performWriteTransactionWithHealthDatabase:v6 error:a3 block:v10];

  return v8;
}

uint64_t __58__HDSourceManager_deleteSourceWithBundleIdentifier_error___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [(HDSourceManager *)*(a1 + 32) _sourceUUIDsForBundleIdentifier:a3 error:?];
  if (v6)
  {
    v7 = [[_HDDeleteSourcesWithUUIDsEntry alloc] initWithUUIDs:v6 bundleIdentifier:*(a1 + 40)];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v9 = [WeakRetained database];
    v10 = [v9 addJournalEntry:v7 error:a3];

    if (v10)
    {
      v12 = *(a1 + 32);
      v11 = *(a1 + 40);
      v13 = objc_loadWeakRetained(v12 + 1);
      v14 = [v13 syncIdentityManager];
      v15 = [v14 currentSyncIdentity];
      v16 = [v12 _deleteSourcesWithUUIDs:v6 localSourceEntityCacheKey:v11 syncIdentity:v15 deleteSamples:0 transaction:v5 error:a3];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)_deleteSourcesWithUUIDs:(id)a3 localSourceEntityCacheKey:(id)a4 syncIdentity:(id)a5 deleteSamples:(BOOL)a6 transaction:(id)a7 error:(id *)a8
{
  v10 = a6;
  v64 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v42 = a4;
  v15 = a5;
  v16 = a7;
  v44 = v14;
  if ([v14 count])
  {
    v40 = self;
    v45 = v16;
    v17 = [v16 databaseForEntityClass:objc_opt_class()];
    v41 = HDSourceEntityPredicateForSourcesWithUUIDs(v44);
    v18 = MEMORY[0x277CBEB98];
    v19 = [HDSourceEntity sourcesWithPredicate:v41 includeDeleted:1 database:v17 error:a8];
    v20 = [v18 setWithArray:v19];

    v21 = v20;
    if (v20)
    {
      if ([v20 count])
      {
        if (!v10)
        {
          goto LABEL_9;
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v61 = __Block_byref_object_copy__86;
        v62 = __Block_byref_object_dispose__86;
        v63 = 0;
        v50 = MEMORY[0x277D85DD0];
        v51 = 3221225472;
        v52 = __114__HDSourceManager__deleteSourcesWithUUIDs_localSourceEntityCacheKey_syncIdentity_deleteSamples_transaction_error___block_invoke;
        v53 = &unk_2786203B8;
        v54 = v40;
        v55 = v41;
        v56 = v17;
        v20 = v20;
        v57 = v20;
        v58 = buf;
        v22 = HKWithAutoreleasePool();
        if ((v22 & 1) != 0 && [*(*&buf[8] + 40) count])
        {
          v23 = [v20 setByAddingObjectsFromArray:*(*&buf[8] + 40)];

          v20 = v23;
        }

        _Block_object_dispose(buf, 8);
        if (!v22)
        {
          v21 = v20;
        }

        else
        {
LABEL_9:
          v24 = [HDLogicalSourceEntity lookUpOrCreateLogicalSourceWithBundleIdentifier:&stru_283BF39C8 owningAppBundleIdentifier:0 transaction:v45 error:a8];
          _HKInitializeLogging();
          v25 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
          {
            v26 = v25;
            v27 = [v20 count];
            *buf = 138543618;
            *&buf[4] = v44;
            *&buf[12] = 2048;
            *&buf[14] = v27;
            _os_log_impl(&dword_228986000, v26, OS_LOG_TYPE_DEFAULT, "Deleting sources with UUIDs %{public}@ (%lu entities)", buf, 0x16u);
          }

          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          obj = v20;
          v28 = [obj countByEnumeratingWithState:&v46 objects:v59 count:16];
          if (v28)
          {
            v29 = *v47;
            while (2)
            {
              for (i = 0; i != v28; ++i)
              {
                if (*v47 != v29)
                {
                  objc_enumerationMutation(obj);
                }

                v31 = *(*(&v46 + 1) + 8 * i);
                if (v15)
                {
                  v32 = [v15 entity];
                  v33 = [v32 persistentID];
                }

                else
                {
                  v32 = [*(*(&v46 + 1) + 8 * i) valueForProperty:@"sync_identity" database:v17];
                  v33 = [v32 integerValue];
                }

                v34 = v33;

                if (![v31 deleteSourceWithTombstoneLogicalSourceID:objc_msgSend(v24 syncIdentity:"persistentID") database:v34 transaction:v17 error:{v45, a8}])
                {
                  LOBYTE(v22) = 0;
                  WeakRetained = obj;
                  goto LABEL_33;
                }
              }

              v28 = [obj countByEnumeratingWithState:&v46 objects:v59 count:16];
              if (v28)
              {
                continue;
              }

              break;
            }
          }

          if ([HDLogicalSourceEntity deleteLogicalSourceEntitiesIfNecessaryWithTransaction:v45 error:a8])
          {
            sourceEntityByBundleIdentifierCache = v40->_sourceEntityByBundleIdentifierCache;
            if (v42)
            {
              [(HDDatabaseValueCache *)sourceEntityByBundleIdentifierCache removeObjectForKey:v42 transaction:v45];
            }

            else
            {
              [(HDDatabaseValueCache *)sourceEntityByBundleIdentifierCache removeAllObjectsWithTransaction:v45];
            }

            [(HDDatabaseValueCache *)v40->_clientSourceCache removeAllObjectsWithTransaction:v45];
            [(HDDatabaseValueCache *)v40->_localSourceForBundleIdentifierCache removeAllObjectsWithTransaction:v45];
            WeakRetained = objc_loadWeakRetained(&v40->_profile);
            v37 = [WeakRetained sourceOrderManager];
            [v37 resetCacheWithTransaction:v45];

            LOBYTE(v22) = 1;
LABEL_33:
          }

          else
          {
            LOBYTE(v22) = 0;
          }

          v21 = obj;
        }

        goto LABEL_35;
      }

      [MEMORY[0x277CCA9B8] hk_assignError:a8 code:3 format:{@"No sources with UUIDs %@", v44}];
    }

    LOBYTE(v22) = 0;
LABEL_35:

    v16 = v45;
    goto LABEL_36;
  }

  LOBYTE(v22) = 1;
LABEL_36:

  v38 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t __114__HDSourceManager__deleteSourcesWithUUIDs_localSourceEntityCacheKey_syncIdentity_deleteSamples_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  v6 = v5;
  if (!v3)
  {

LABEL_13:
    v18 = 0;
LABEL_14:
    v29 = 0;
    goto LABEL_15;
  }

  v7 = MEMORY[0x277D10B18];
  v8 = v4;
  v31 = [v7 predicateWithProperty:@"deleted" notEqualToValue:MEMORY[0x277CBEC38]];
  v9 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v6 otherPredicate:v31];

  v10 = MEMORY[0x277CCACA8];
  v11 = +[(HDSQLiteSchemaEntity *)HDSourceEntity];
  v12 = [v9 SQLForEntityClass:objc_opt_class()];
  v13 = +[(HDSQLiteSchemaEntity *)HDSourceEntity];
  v14 = [(HDSQLiteSchemaEntity *)HDSourceEntity disambiguatedSQLForProperty:@"logical_source_id"];
  v15 = [v10 stringWithFormat:@"SELECT DISTINCT %@ FROM %@ WHERE %@ AND NOT EXISTS (SELECT 1 FROM %@ s WHERE s.%@=%@ AND NOT s.%@ AND s.%@=?)", @"logical_source_id", v11, v12, v13, @"logical_source_id", v14, @"deleted", @"provenance"];

  v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __93__HDSourceManager__logicalSourceIDsWithoutLocalSourceForSourcesWithPredicate_database_error___block_invoke;
  v35[3] = &unk_278614860;
  v17 = v9;
  v36 = v17;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __93__HDSourceManager__logicalSourceIDsWithoutLocalSourceForSourcesWithPredicate_database_error___block_invoke_2;
  v33[3] = &unk_278614098;
  v34 = v16;
  v18 = v16;
  LODWORD(v16) = [v8 executeUncachedSQL:v15 error:a2 bindingHandler:v35 enumerationHandler:v33];

  if (v16)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  if (!v20)
  {
    goto LABEL_13;
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v22 = [WeakRetained dataManager];
  v23 = [v22 deleteSamplesWithSourceEntities:*(a1 + 56) error:a2];

  if (!v23)
  {
    goto LABEL_14;
  }

  if ([v20 count])
  {
    if (*(a1 + 32))
    {
      v24 = *(a1 + 48);
      v25 = HDSourceEntityPredicateForLocalSourcesWithLogicalSourceIDs(v20);
      v26 = [HDSourceEntity sourcesWithPredicate:v25 includeDeleted:0 database:v24 error:a2];
    }

    else
    {
      v26 = 0;
    }

    v27 = *(*(a1 + 64) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;

    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      goto LABEL_14;
    }
  }

  v29 = 1;
LABEL_15:

  return v29;
}

uint64_t __93__HDSourceManager__logicalSourceIDsWithoutLocalSourceForSourcesWithPredicate_database_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v5 = 1;
  [*(a1 + 32) bindToStatement:a2 bindingIndex:&v5];
  v3 = v5++;
  return sqlite3_bind_int64(a2, v3, 0);
}

uint64_t __93__HDSourceManager__logicalSourceIDsWithoutLocalSourceForSourcesWithPredicate_database_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C80](a2, 0);
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return 1;
}

void __59__HDSourceManager__fetchClientSourceForPersistentID_error___block_invoke(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  WeakRetained = objc_loadWeakRetained((a1[6] + 8));
  v10 = 0;
  LOBYTE(v3) = [v2 setName:v3 profile:WeakRetained error:&v10];
  v5 = v10;

  if ((v3 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v8 = a1[5];
      v9 = a1[7];
      *buf = 138412802;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2114;
      v16 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "Failed to set name %@ for source %@: %{public}@", buf, 0x20u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_createSourceEntityForLocalDeviceWithError:(id *)a3
{
  v5 = [MEMORY[0x277CCDA00] _generateIdentifierForAppleDevice];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = [WeakRetained daemon];
  v8 = [v7 behavior];
  v9 = [v8 currentDeviceProductType];

  v10 = [MEMORY[0x277CCDA00] hd_currentDeviceSourceName];
  v11 = HKSourceOptionsForAppleDevice();
  v12 = [(HDSourceManager *)self _createSourceEntityForBundleIdentifier:v5 owningAppBundleIdentifier:0 name:v10 options:v11 isCurrentDevice:1 productType:v9 error:a3];

  return v12;
}

- (void)_applicationsUninstalledNotification:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"HDHealthDaemonApplicationsUninstalledBundleIdentifiersKey"];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithArray:v5];
    v7 = HDSourceEntityPredicateForSourcesWithBundleIdentifiers(v6);
    v8 = HDSourceEntityPredicateForSourcesWithOwnerBundleIdentifiers(v6);
    v9 = [MEMORY[0x277D10B70] disjunctionWithPredicate:v7 otherPredicate:v8];
    v45 = 0;
    v10 = [(HDSourceManager *)self _clientSourcesWithPredicate:v9 error:&v45];
    v11 = v45;
    if (v10)
    {
      if (![v10 count])
      {
        goto LABEL_32;
      }

      v33 = v11;
      v34 = v9;
      v35 = v8;
      v36 = v7;
      v37 = v6;
      v38 = v5;
      v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v32 = v10;
      obj = v10;
      v12 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
      if (!v12)
      {
        goto LABEL_24;
      }

      v13 = v12;
      v14 = *v42;
      while (1)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v42 != v14)
          {
            objc_enumerationMutation(obj);
          }

          if (self)
          {
            v16 = *(*(&v41 + 1) + 8 * i);
            v17 = [v16 bundleIdentifier];
            WeakRetained = objc_loadWeakRetained(&self->_profile);
            v19 = [WeakRetained dataManager];
            v47 = 0;
            v20 = [v19 hasSampleWithBundleIdentifier:v17 error:&v47];
            v21 = v47;

            if (v20 == 1)
            {
              goto LABEL_21;
            }

            if (!v20)
            {
              _HKInitializeLogging();
              v22 = *MEMORY[0x277CCC2A0];
              if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v50 = v17;
                v51 = 2114;
                v52 = v21;
                _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "Error while checking if application %{public}@ has samples: %{public}@", buf, 0x16u);
              }

LABEL_21:

              continue;
            }

            v46 = 0;
            v23 = [(HDSourceManager *)self deleteSourceWithBundleIdentifier:v17 error:&v46];
            v24 = v46;
            _HKInitializeLogging();
            v25 = *MEMORY[0x277CCC2A0];
            v26 = *MEMORY[0x277CCC2A0];
            if (!v23)
            {
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v50 = v17;
                v51 = 2114;
                v52 = v24;
                _os_log_error_impl(&dword_228986000, v25, OS_LOG_TYPE_ERROR, "Failed to delete source without data for uninstalled application %{public}@: %{public}@", buf, 0x16u);
              }

              goto LABEL_21;
            }

            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v50 = v17;
              _os_log_impl(&dword_228986000, v25, OS_LOG_TYPE_DEFAULT, "Successfully deleted source without data for uninstalled application %{public}@", buf, 0xCu);
            }

            v27 = [v16 bundleIdentifier];
            [v39 addObject:v27];
          }
        }

        v13 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
        if (!v13)
        {
LABEL_24:

          _HKInitializeLogging();
          v28 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v50 = v39;
            _os_log_impl(&dword_228986000, v28, OS_LOG_TYPE_DEFAULT, "Application(s) uninstalled, deleted sources without data: %{public}@", buf, 0xCu);
          }

          v6 = v37;
          v5 = v38;
          v8 = v35;
          v7 = v36;
          v11 = v33;
          v9 = v34;
          v10 = v32;
          goto LABEL_32;
        }
      }
    }

    if ((HKIsUnitTesting() & 1) == 0)
    {
      _HKInitializeLogging();
      v30 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v50 = v11;
        _os_log_error_impl(&dword_228986000, v30, OS_LOG_TYPE_ERROR, "Failed to look up sources to delete for uninstalled applications: %{public}@", buf, 0xCu);
      }
    }

LABEL_32:
  }

  else
  {
    _HKInitializeLogging();
    v29 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_228986000, v29, OS_LOG_TYPE_DEFAULT, "Application uninstallation notification missing bundle identifiers", buf, 2u);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

@end
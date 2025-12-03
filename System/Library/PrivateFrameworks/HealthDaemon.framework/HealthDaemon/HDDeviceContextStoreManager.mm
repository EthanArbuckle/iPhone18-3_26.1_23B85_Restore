@interface HDDeviceContextStoreManager
+ (HDDeviceContextStoreManager)new;
- (BOOL)deleteDeviceContext:(id)context transaction:(id)transaction error:(id *)error;
- (BOOL)enumerateAllEntriesWithError:(id *)error handler:(id)handler;
- (BOOL)ingestRemoteDeviceContexts:(id)contexts transaction:(id)transaction error:(id *)error;
- (BOOL)insertOrUpdateDeviceContext:(id)context transaction:(id)transaction error:(id *)error;
- (BOOL)updateSoftwareVersionForCurrentSyncIdentityWithError:(id *)error;
- (HDDeviceContextStoreManager)init;
- (HDDeviceContextStoreManager)initWithProfile:(id)profile;
- (HDProfile)profile;
- (id)fetchAllEntriesWithError:(id *)error;
- (id)lookupOrCreateLocalDeviceContextWithError:(id *)error;
- (id)numberOfDeviceContextsPerDeviceType:(id *)type;
@end

@implementation HDDeviceContextStoreManager

- (HDDeviceContextStoreManager)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (HDDeviceContextStoreManager)new
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"The -%@ method is not available on %@", v4, objc_opt_class()}];

  return 0;
}

- (HDDeviceContextStoreManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v8.receiver = self;
  v8.super_class = HDDeviceContextStoreManager;
  v5 = [(HDDeviceContextStoreManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
  }

  return v6;
}

- (id)numberOfDeviceContextsPerDeviceType:(id *)type
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [(HDDeviceContextStoreManager *)self fetchAllEntriesWithError:type];
  v7 = v6;
  if (v6)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      obj = v7;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = MEMORY[0x277CCABB0];
          v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "type")}];
          v15 = [v5 objectForKeyedSubscript:v14];
          v16 = [v13 numberWithInt:{objc_msgSend(v15, "intValue") + 1}];
          v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "type")}];
          [v5 setObject:v16 forKeyedSubscript:v17];
        }

        v7 = obj;
        v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    v18 = v5;
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (BOOL)enumerateAllEntriesWithError:(id *)error handler:(id)handler
{
  handlerCopy = handler;
  profile = [(HDDeviceContextStoreManager *)self profile];
  database = [profile database];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__HDDeviceContextStoreManager_enumerateAllEntriesWithError_handler___block_invoke;
  v11[3] = &unk_27861A528;
  v12 = handlerCopy;
  v9 = handlerCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDDeviceContextEntity performReadTransactionWithHealthDatabase:database error:error block:v11];

  return error;
}

BOOL __68__HDDeviceContextStoreManager_enumerateAllEntriesWithError_handler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HDDeviceContextStoreManager_enumerateAllEntriesWithError_handler___block_invoke_2;
  v7[3] = &unk_27861D3B8;
  v8 = *(a1 + 32);
  v5 = [HDDeviceContextEntity enumerateDeviceContextWithTransaction:a2 error:a3 enumerationHandler:v7];

  return v5;
}

- (id)fetchAllEntriesWithError:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__67;
  v12 = __Block_byref_object_dispose__67;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HDDeviceContextStoreManager_fetchAllEntriesWithError___block_invoke;
  v7[3] = &unk_27861D3E0;
  v7[4] = &v8;
  if ([(HDDeviceContextStoreManager *)self enumerateAllEntriesWithError:error handler:v7])
  {
    v5 = v9[5];
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)lookupOrCreateLocalDeviceContextWithError:(id *)error
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__67;
  v14 = __Block_byref_object_dispose__67;
  v15 = 0;
  profile = [(HDDeviceContextStoreManager *)self profile];
  database = [profile database];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__HDDeviceContextStoreManager_lookupOrCreateLocalDeviceContextWithError___block_invoke;
  v9[3] = &unk_278619398;
  v9[4] = self;
  v9[5] = &v10;
  LOBYTE(error) = [(HDHealthEntity *)HDDeviceContextEntity performWriteTransactionWithHealthDatabase:database error:error block:v9];

  if (error)
  {
    v7 = v11[5];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v10, 8);

  return v7;
}

BOOL __73__HDDeviceContextStoreManager_lookupOrCreateLocalDeviceContextWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 profile];
  v8 = [HDDeviceContextEntity lookupOrCreateDeviceContextForLocalSyncIdentityWithProfile:v7 transaction:v6 error:a3];

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (BOOL)updateSoftwareVersionForCurrentSyncIdentityWithError:(id *)error
{
  profile = [(HDDeviceContextStoreManager *)self profile];
  database = [profile database];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__HDDeviceContextStoreManager_updateSoftwareVersionForCurrentSyncIdentityWithError___block_invoke;
  v8[3] = &unk_278616048;
  v8[4] = self;
  LOBYTE(error) = [(HDHealthEntity *)HDDeviceContextEntity performWriteTransactionWithHealthDatabase:database error:error block:v8];

  return error;
}

BOOL __84__HDDeviceContextStoreManager_updateSoftwareVersionForCurrentSyncIdentityWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) profile];
  v7 = [HDDeviceContextEntity deviceContextForLocalSyncIdentityWithProfile:v6 transaction:v5 error:a3];

  if (v7)
  {
    v8 = [HDDeviceContextEntity updateSoftwareVersionForDeviceContext:v7 transaction:v5 error:a3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)insertOrUpdateDeviceContext:(id)context transaction:(id)transaction error:(id *)error
{
  contextCopy = context;
  transactionCopy = transaction;
  v17 = 0;
  v9 = [HDDeviceContextEntity lookupDeviceContext:contextCopy transaction:transactionCopy error:&v17];
  v10 = v17;
  v11 = v10;
  if (v9)
  {
    v12 = 1;
  }

  else
  {
    v12 = v10 == 0;
  }

  if (v12)
  {
    if (v9)
    {
      v13 = [HDDeviceContextEntity updateDeviceContext:contextCopy transaction:transactionCopy error:error];
    }

    else
    {
      v15 = [HDDeviceContextEntity insertDeviceContext:contextCopy transaction:transactionCopy error:error];
      v13 = v15 != 0;
    }
  }

  else if (error)
  {
    v14 = v10;
    v13 = 0;
    *error = v11;
  }

  else
  {
    _HKLogDroppedError();
    v13 = 0;
  }

  return v13;
}

- (BOOL)deleteDeviceContext:(id)context transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  contextCopy = context;
  profile = [(HDDeviceContextStoreManager *)self profile];
  syncIdentityManager = [profile syncIdentityManager];
  syncIdentity = [contextCopy syncIdentity];

  v13 = [syncIdentityManager concreteIdentityForIdentity:syncIdentity shouldCreate:0 transaction:transactionCopy error:error];

  if (v13)
  {
    entity = [v13 entity];
    persistentID = [entity persistentID];
    profile2 = [(HDDeviceContextStoreManager *)self profile];
    v17 = [HDDeviceContextEntity deleteDeviceContextWithSyncIdentity:persistentID profile:profile2 error:error];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)ingestRemoteDeviceContexts:(id)contexts transaction:(id)transaction error:(id *)error
{
  v69 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  contextsCopy = contexts;
  selfCopy = self;
  profile = [(HDDeviceContextStoreManager *)self profile];
  syncIdentityManager = [profile syncIdentityManager];
  currentSyncIdentity = [syncIdentityManager currentSyncIdentity];
  identity = [currentSyncIdentity identity];

  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __76__HDDeviceContextStoreManager_ingestRemoteDeviceContexts_transaction_error___block_invoke;
  v56[3] = &unk_27861D408;
  v57 = identity;
  v49 = identity;
  v13 = [contextsCopy hk_filter:v56];

  v14 = v13;
  v15 = transactionCopy;
  v48 = v15;
  if (!selfCopy)
  {

    v51 = 0;
    goto LABEL_43;
  }

  *&v59 = 0;
  *(&v59 + 1) = &v59;
  *&v60 = 0x3032000000;
  *(&v60 + 1) = __Block_byref_object_copy__67;
  *&v61 = __Block_byref_object_dispose__67;
  *(&v61 + 1) = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v64 = 1;
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __79__HDDeviceContextStoreManager__insertOrUpdateDeviceContexts_transaction_error___block_invoke;
  v65[3] = &unk_27861D430;
  v67 = buf;
  v65[4] = selfCopy;
  v16 = v15;
  v66 = v16;
  v68 = &v59;
  v50 = v14;
  [v14 enumerateObjectsUsingBlock:v65];
  v17 = *(*&buf[8] + 24);
  if ((v17 & 1) == 0)
  {
    v18 = *(*(&v59 + 1) + 40);
    v19 = v18;
    if (v18)
    {
      if (error)
      {
        v20 = v18;
        *error = v19;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v17 = *(*&buf[8] + 24);
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v59, 8);

  if ((v17 & 1) == 0)
  {
    v51 = 0;
    goto LABEL_42;
  }

  v55 = v14;
  v52 = v16;
  profile2 = [(HDDeviceContextStoreManager *)selfCopy profile];
  deviceContextManager = [profile2 deviceContextManager];
  v47 = [deviceContextManager fetchAllEntriesWithError:error];

  if (!v47)
  {
    v51 = 0;
    goto LABEL_41;
  }

  profile3 = [(HDDeviceContextStoreManager *)selfCopy profile];
  syncIdentityManager2 = [profile3 syncIdentityManager];
  currentSyncIdentity2 = [syncIdentityManager2 currentSyncIdentity];
  identity2 = [currentSyncIdentity2 identity];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v27 = v47;
  v28 = [v27 countByEnumeratingWithState:&v59 objects:v65 count:16];
  if (!v28)
  {
    v51 = 1;
    goto LABEL_40;
  }

  v29 = *v60;
  v51 = 1;
  do
  {
    for (i = 0; i != v28; ++i)
    {
      if (*v60 != v29)
      {
        objc_enumerationMutation(v27);
      }

      v31 = *(*(&v59 + 1) + 8 * i);
      syncIdentity = [v31 syncIdentity];
      v33 = [syncIdentity isEqual:identity2];

      if ((v33 & 1) == 0 && ([v55 containsObject:v31] & 1) == 0)
      {
        v58 = 0;
        v34 = [(HDDeviceContextStoreManager *)selfCopy deleteDeviceContext:v31 transaction:v52 error:&v58];
        v35 = v58;
        _HKInitializeLogging();
        v36 = *MEMORY[0x277CCC328];
        v37 = *MEMORY[0x277CCC328];
        if (v34)
        {
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = v36;
            v39 = [v31 description];
            *buf = 138412290;
            *&buf[4] = v39;
            _os_log_impl(&dword_228986000, v38, OS_LOG_TYPE_DEFAULT, "Successfully deleted local context record %@", buf, 0xCu);
          }

          profile4 = [(HDDeviceContextStoreManager *)selfCopy profile];
          deviceKeyValueStoreManager = [profile4 deviceKeyValueStoreManager];
          v42 = [deviceKeyValueStoreManager deleteProtectedKVEntriesForDeviceContext:v31 error:error];

          if ((v42 & 1) == 0)
          {
            _HKInitializeLogging();
            v43 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              *&buf[4] = selfCopy;
              *&buf[12] = 2114;
              *&buf[14] = v35;
              _os_log_error_impl(&dword_228986000, v43, OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete protected device key value pairs for record: %{public}@", buf, 0x16u);
            }

            v44 = v35;
            if (v44)
            {
              if (error)
              {
LABEL_30:
                *error = v44;
                goto LABEL_32;
              }

LABEL_31:
              _HKLogDroppedError();
            }

            goto LABEL_32;
          }
        }

        else
        {
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            *&buf[4] = selfCopy;
            *&buf[12] = 2114;
            *&buf[14] = v35;
            _os_log_error_impl(&dword_228986000, v36, OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete local context record: %{public}@", buf, 0x16u);
          }

          v44 = v35;
          if (v44)
          {
            if (error)
            {
              goto LABEL_30;
            }

            goto LABEL_31;
          }

LABEL_32:

          v51 = 0;
        }

        continue;
      }
    }

    v28 = [v27 countByEnumeratingWithState:&v59 objects:v65 count:16];
  }

  while (v28);
LABEL_40:

LABEL_41:
LABEL_42:
  v14 = v50;
LABEL_43:

  v45 = *MEMORY[0x277D85DE8];
  return v51 & 1;
}

uint64_t __76__HDDeviceContextStoreManager_ingestRemoteDeviceContexts_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 syncIdentity];
  LODWORD(a1) = [v3 isEqual:*(a1 + 32)];

  return a1 ^ 1;
}

void __79__HDDeviceContextStoreManager__insertOrUpdateDeviceContexts_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) profile];
  v5 = [v4 deviceContextManager];
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 56) + 8);
  obj = *(v7 + 40);
  v8 = [v5 insertOrUpdateDeviceContext:v3 transaction:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v8;

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138543874;
      v15 = v11;
      v16 = 2114;
      v17 = v3;
      v18 = 2114;
      v19 = v12;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Failed to insert %{public}@ error: %{public}@", buf, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end
@interface HDCloudSyncOwnerIdentifierManager
- (HDCloudSyncOwnerIdentifierManager)initWithCloudSyncManager:(id)a3;
- (id)cachedOwnerIdentifierForContainer:(id)a3;
- (void)cacheOwnerIdentifiersForContainers:(id)a3 completion:(id)a4;
- (void)discardCachedIdentifiers;
- (void)fetchOwnerIdentifierForContainer:(id)a3 completion:(id)a4;
- (void)rollOwnerDifferentiatorForReason:(id)a3 completion:(id)a4;
@end

@implementation HDCloudSyncOwnerIdentifierManager

- (HDCloudSyncOwnerIdentifierManager)initWithCloudSyncManager:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HDCloudSyncOwnerIdentifierManager;
  v5 = [(HDCloudSyncOwnerIdentifierManager *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_cloudSyncManager, v4);
    v6->_lock._os_unfair_lock_opaque = 0;
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    lock_deviceIDsByContainerIdentifier = v6->_lock_deviceIDsByContainerIdentifier;
    v6->_lock_deviceIDsByContainerIdentifier = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    lock_cachedOwnerIdentifiersByContainerIdentifier = v6->_lock_cachedOwnerIdentifiersByContainerIdentifier;
    v6->_lock_cachedOwnerIdentifiersByContainerIdentifier = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    lock_containersByIdentifier = v6->_lock_containersByIdentifier;
    v6->_lock_containersByIdentifier = v11;

    v13 = HKCreateSerialDispatchQueue();
    writeQueue = v6->_writeQueue;
    v6->_writeQueue = v13;
  }

  return v6;
}

uint64_t __77__HDCloudSyncOwnerIdentifierManager__fetchDatabaseIdentifiersWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((v5 + 8));
    v7 = [WeakRetained profile];

    v8 = HDCloudSyncKeyValueDomainWithProfile(v7);
    v33 = 0;
    v9 = [v8 dataForKey:@"HDCloudSyncDatabaseIdentifier" error:&v33];
    v10 = v33;
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
        v13 = [MEMORY[0x277CCAD78] hk_UUIDWithData:v9];
        v16 = v13;
        if (v13)
        {
          v14 = v13;
          v17 = 0;
        }

        else
        {
          v18 = [MEMORY[0x277CCA9B8] hk_error:129 format:{@"Unable to get cloudSyncDatabaseIdentifier from databaseIdentifierData %@", v9}];
          v17 = v18;
          if (v18)
          {
            v19 = v18;
          }
        }
      }

      else
      {
        v17 = 0;
        v16 = 0;
      }
    }

    else
    {
      v15 = v10;
      v16 = 0;
      v17 = v11;
    }
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  v20 = v17;
  v21 = *(*(a1 + 48) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v16;

  if (*(*(*(a1 + 48) + 8) + 40))
  {

    v23 = HDCloudSyncKeyValueDomainWithProfile(*(a1 + 40));
    v32 = 0;
    v24 = [v23 stringForKey:@"OwnerDifferentiator" error:&v32];
    v20 = v32;
    v25 = *(*(a1 + 56) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;

    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v27 = 1;
    }

    else
    {
      v27 = v20 == 0;
    }

    v28 = v27;
    if (!v27)
    {
      if (a3)
      {
        v29 = v20;
        *a3 = v20;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_32;
  }

  if (v20)
  {
    if (a3)
    {
      v30 = v20;
      v28 = 0;
      *a3 = v20;
    }

    else
    {
      _HKLogDroppedError();
      v28 = 0;
    }

LABEL_32:

    return v28;
  }

  return 1;
}

void __77__HDCloudSyncOwnerIdentifierManager__fetchDatabaseIdentifiersWithCompletion___block_invoke_2(uint64_t a1)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__13;
  v26 = __Block_byref_object_dispose__13;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__13;
  v20 = __Block_byref_object_dispose__13;
  v21 = 0;
  v2 = [*(a1 + 32) database];
  v3 = +[HDDatabaseTransactionContext contextForWriting];
  v15 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__HDCloudSyncOwnerIdentifierManager__fetchDatabaseIdentifiersWithCompletion___block_invoke_3;
  v11[3] = &unk_278615230;
  v13 = &v22;
  v10 = *(a1 + 32);
  v4 = v10.i64[0];
  v12 = vextq_s8(v10, v10, 8uLL);
  v14 = &v16;
  v5 = [v2 performTransactionWithContext:v3 error:&v15 block:v11 inaccessibilityHandler:0];
  v6 = v15;

  if (v5)
  {
    v7 = 0;
    v8 = v23[5];
    v9 = v17[5];
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = v6;
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v8, v9, v7);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
}

uint64_t __77__HDCloudSyncOwnerIdentifierManager__fetchDatabaseIdentifiersWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((v5 + 8));
    v7 = [WeakRetained profile];

    v8 = HDCloudSyncKeyValueDomainWithProfile(v7);
    v39 = 0;
    v9 = [(HDKeyValueEntity *)HDUnprotectedKeyValueEntity retrieveDatabaseIdentifierFromProfile:v7 error:&v39];
    v10 = v39;
    v11 = v10;
    if (v9)
    {
      v12 = 1;
    }

    else
    {
      v12 = v10 == 0;
    }

    if (!v12)
    {
      if (a3)
      {
        v19 = v10;
        v14 = 0;
        *a3 = v11;
LABEL_31:

        goto LABEL_32;
      }

      _HKLogDroppedError();
LABEL_30:
      v14 = 0;
      goto LABEL_31;
    }

    if (v9)
    {
      v13 = [MEMORY[0x277CCAD78] hk_UUIDWithData:v9];
      if (!v13)
      {
        v14 = [MEMORY[0x277CCA9B8] hk_error:129 format:{@"Unable to get databaseIdentifier from databaseIdentifierData %@", v9}];
        if (v14)
        {
          if (a3)
          {
            v25 = v14;
            *a3 = v14;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

LABEL_29:
        goto LABEL_30;
      }

      v14 = v13;
      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
      {
        *buf = 138543874;
        *&buf[4] = v5;
        v41 = 2114;
        v42 = v14;
        v43 = 2114;
        v44 = @"HDCloudSyncDatabaseIdentifier";
        v16 = "%{public}@: Copy database UUID %{public}@ to %{public}@";
        v17 = v15;
        v18 = 32;
LABEL_15:
        _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_INFO, v16, buf, v18);
      }
    }

    else
    {
      v14 = [MEMORY[0x277CCAD78] UUID];
      _HKInitializeLogging();
      v20 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        *&buf[4] = v5;
        v41 = 2114;
        v42 = v14;
        v16 = "%{public}@: No database UUID present yet; healthd has not yet launched while the device is unlocked on this device. Create a cloud sync database identifier: %{public}@";
        v17 = v20;
        v18 = 22;
        goto LABEL_15;
      }
    }

    v21 = [v14 hk_dataForUUIDBytes];
    *buf = v11;
    v22 = [v8 setData:v21 forKey:@"HDCloudSyncDatabaseIdentifier" error:buf];
    v23 = *buf;

    if (v22)
    {
      v11 = v23;
      goto LABEL_31;
    }

    v11 = v23;
    if (v11)
    {
      if (a3)
      {
        v24 = v11;
        *a3 = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_29;
  }

  v14 = 0;
LABEL_32:
  v26 = *(*(a1 + 48) + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = v14;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v28 = HDCloudSyncKeyValueDomainWithProfile(*(a1 + 40));
    v38 = 0;
    v29 = [v28 stringForKey:@"OwnerDifferentiator" error:&v38];
    v30 = v38;
    v31 = *(*(a1 + 56) + 8);
    v32 = *(v31 + 40);
    *(v31 + 40) = v29;

    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v33 = 1;
    }

    else
    {
      v33 = v30 == 0;
    }

    v34 = v33;
    if (!v33)
    {
      if (a3)
      {
        v35 = v30;
        *a3 = v30;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  else
  {
    v34 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v34;
}

- (void)fetchOwnerIdentifierForContainer:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __81__HDCloudSyncOwnerIdentifierManager_fetchOwnerIdentifierForContainer_completion___block_invoke;
  v23 = &unk_278615280;
  v25 = v6;
  v26 = v7;
  v24 = self;
  v8 = v6;
  v9 = v7;
  v10 = &v20;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_cloudSyncManager);
    v12 = [WeakRetained profile];

    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__13;
    v46 = __Block_byref_object_dispose__13;
    v47 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__13;
    v40 = __Block_byref_object_dispose__13;
    v41 = 0;
    v13 = [v12 database];
    v14 = +[HDDatabaseTransactionContext contextForReading];
    v35 = 0;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __77__HDCloudSyncOwnerIdentifierManager__fetchDatabaseIdentifiersWithCompletion___block_invoke;
    v31[3] = &unk_278615230;
    v33 = &v42;
    v31[4] = self;
    v15 = v12;
    v32 = v15;
    v34 = &v36;
    v16 = [v13 performTransactionWithContext:v14 error:&v35 block:v31 inaccessibilityHandler:0];
    v17 = v35;

    if (v16)
    {
      v18 = v43[5];
      if (v18)
      {
        (v22)(v10, v18, v37[5], 0);
      }

      else
      {
        writeQueue = self->_writeQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __77__HDCloudSyncOwnerIdentifierManager__fetchDatabaseIdentifiersWithCompletion___block_invoke_2;
        block[3] = &unk_278614160;
        v28 = v15;
        v29 = self;
        v30 = v10;
        dispatch_async(writeQueue, block);
      }
    }

    else
    {
      (v22)(v10, 0, 0, v17);
    }

    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(&v42, 8);
  }
}

void __81__HDCloudSyncOwnerIdentifierManager_fetchOwnerIdentifierForContainer_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v18 = __81__HDCloudSyncOwnerIdentifierManager_fetchOwnerIdentifierForContainer_completion___block_invoke_2;
    v19 = &unk_278615258;
    v22 = *(a1 + 48);
    v20 = v5;
    v21 = v6;
    v9 = v7;
    v10 = v17;
    if (v8)
    {
      os_unfair_lock_lock((v8 + 16));
      v11 = *(v8 + 32);
      v12 = [v9 containerIdentifier];
      v13 = [v11 objectForKeyedSubscript:v12];

      v14 = *(v8 + 24);
      os_unfair_lock_unlock((v8 + 16));
      if (v13)
      {
        (v18)(v10, v13, 0);
      }

      else
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __75__HDCloudSyncOwnerIdentifierManager__fetchDeviceIDForContainer_completion___block_invoke;
        v23[3] = &unk_2786152F8;
        v15 = v9;
        v24 = v15;
        v16 = v10;
        v25 = v8;
        v26 = v16;
        v27 = v14;
        [v15 fetchCurrentDeviceIDWithCompletionHandler:v23];
      }
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __81__HDCloudSyncOwnerIdentifierManager_fetchOwnerIdentifierForContainer_completion___block_invoke_2(void *a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[HDCloudSyncOwnerIdentifier alloc] _initWithDatabaseIdentifer:a1[4] deviceIdentifier:v4 ownerDifferentiator:a1[5]];
    (*(a1[6] + 16))();
  }

  else
  {
    (*(a1[6] + 16))();
  }
}

- (void)cacheOwnerIdentifiersForContainers:(id)a3 completion:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v38;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(v8);
        }

        lock_cachedOwnerIdentifiersByContainerIdentifier = self->_lock_cachedOwnerIdentifiersByContainerIdentifier;
        v14 = [*(*(&v37 + 1) + 8 * v12) containerIdentifier];
        v15 = [(NSMutableDictionary *)lock_cachedOwnerIdentifiersByContainerIdentifier objectForKeyedSubscript:v14];

        if (!v15)
        {
          v16 = 1;
          goto LABEL_11;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_11:

  lock_fetchEpoch = self->_lock_fetchEpoch;
  os_unfair_lock_unlock(&self->_lock);
  if (v16)
  {
    v18 = objc_alloc_init(MEMORY[0x277D10BB0]);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __83__HDCloudSyncOwnerIdentifierManager_cacheOwnerIdentifiersForContainers_completion___block_invoke;
    v35[3] = &unk_2786152A8;
    v26 = v7;
    v36 = v7;
    [v18 setDidFinish:v35];
    [v18 beginTask];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v25 = v8;
    obj = v8;
    v19 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v32;
      do
      {
        v22 = 0;
        do
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v31 + 1) + 8 * v22);
          [v18 beginTask];
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __83__HDCloudSyncOwnerIdentifierManager_cacheOwnerIdentifiersForContainers_completion___block_invoke_2;
          v28[3] = &unk_2786152D0;
          v30 = lock_fetchEpoch;
          v28[4] = self;
          v28[5] = v23;
          v29 = v18;
          [(HDCloudSyncOwnerIdentifierManager *)self fetchOwnerIdentifierForContainer:v23 completion:v28];

          ++v22;
        }

        while (v20 != v22);
        v20 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v20);
    }

    [v18 finishTask];
    v8 = v25;
    v7 = v26;
  }

  else
  {
    (*(v7 + 2))(v7, 1, 0);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __83__HDCloudSyncOwnerIdentifierManager_cacheOwnerIdentifiersForContainers_completion___block_invoke(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = *(v4 + 16);
    v6 = *(a1 + 32);

    v5(v6, 1, 0);
  }

  else
  {
    v7 = [a4 firstObject];
    (*(v4 + 16))(v4, 0, v7);
  }
}

void __83__HDCloudSyncOwnerIdentifierManager_cacheOwnerIdentifiersForContainers_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v6 = *(a1 + 32);
  if (v12 && *(a1 + 56) == *(v6 + 24))
  {
    v7 = *(v6 + 40);
    v8 = [*(a1 + 40) containerIdentifier];
    [v7 setObject:v12 forKeyedSubscript:v8];

    v9 = *(a1 + 40);
    v10 = *(*(a1 + 32) + 48);
    v11 = [v9 containerIdentifier];
    [v10 setObject:v9 forKeyedSubscript:v11];

    os_unfair_lock_unlock((*(a1 + 32) + 16));
    [*(a1 + 48) finishTask];
  }

  else
  {
    os_unfair_lock_unlock((v6 + 16));
    if (!v5)
    {
      v5 = [MEMORY[0x277CCA9B8] hk_error:128 format:@"Epoch mismatch owner identifier has changed since fetch began."];;
    }

    [*(a1 + 48) failTaskWithError:v5];
  }
}

- (id)cachedOwnerIdentifierForContainer:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_cachedOwnerIdentifiersByContainerIdentifier = self->_lock_cachedOwnerIdentifiersByContainerIdentifier;
  v7 = [v5 containerIdentifier];

  v8 = [(NSMutableDictionary *)lock_cachedOwnerIdentifiersByContainerIdentifier objectForKeyedSubscript:v7];

  os_unfair_lock_unlock(&self->_lock);
  if (lock_cachedOwnerIdentifiersByContainerIdentifier)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HDCloudSyncOwnerIdentifierManager.m" lineNumber:230 description:{@"Invalid parameter not satisfying: %@", @"hasFetched"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x277CCA890] currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"HDCloudSyncOwnerIdentifierManager.m" lineNumber:231 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

LABEL_3:

  return v8;
}

void __75__HDCloudSyncOwnerIdentifierManager__fetchDeviceIDForContainer_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = v5;
    os_unfair_lock_lock((*(a1 + 40) + 16));
    v8 = *(a1 + 40);
    if (*(a1 + 56) == *(v8 + 24))
    {
      v9 = *(v8 + 32);
      v10 = [*(a1 + 32) containerIdentifier];
      [v9 setObject:v7 forKeyedSubscript:v10];
    }

    else
    {

      [MEMORY[0x277CCA9B8] hk_error:128 format:@"Epoch mismatch; account information has changed since fetch began."];
      v7 = 0;
      v6 = v10 = v6;
    }

    os_unfair_lock_unlock((*(a1 + 40) + 16));
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = 138543618;
      v15 = v13;
      v16 = 2114;
      v17 = v6;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "Failed to retrieve device identifier for %{public}@: %{public}@", &v14, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)discardCachedIdentifiers
{
  os_unfair_lock_lock(&self->_lock);
  lock_deviceIDsByContainerIdentifier = self->_lock_deviceIDsByContainerIdentifier;
  ++self->_lock_fetchEpoch;
  [(NSMutableDictionary *)lock_deviceIDsByContainerIdentifier removeAllObjects];
  [(NSMutableDictionary *)self->_lock_cachedOwnerIdentifiersByContainerIdentifier removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)rollOwnerDifferentiatorForReason:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_cloudSyncManager);
  v9 = [WeakRetained profile];

  v10 = [v9 daemon];
  v11 = [v10 analyticsSubmissionCoordinator];
  [v11 cloudSync_reportOwnershipChangeForProfile:v9 reason:v6];

  _HKInitializeLogging();
  v12 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v24 = self;
    v25 = 2114;
    v26 = v6;
    _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: ownership change required: %{public}@", buf, 0x16u);
  }

  v13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v13 hk_removeObjectsForKeysWithPrefix:@"HDLastLongTimeWithoutSuccessfulCloudSyncReportDate"];

  v14 = HDCloudSyncKeyValueDomainWithProfile(v9);
  v15 = [MEMORY[0x277CCAD78] UUID];
  v16 = [v15 UUIDString];
  v22 = 0;
  v17 = [v14 setString:v16 forKey:@"OwnerDifferentiator" error:&v22];
  v18 = v22;

  if (v17)
  {
    [(HDCloudSyncOwnerIdentifierManager *)self discardCachedIdentifiers];
    if (self)
    {
      v19 = v7;
      os_unfair_lock_lock(&self->_lock);
      v20 = [(NSMutableDictionary *)self->_lock_containersByIdentifier allValues];
      os_unfair_lock_unlock(&self->_lock);
      [(HDCloudSyncOwnerIdentifierManager *)self cacheOwnerIdentifiersForContainers:v20 completion:v19];
    }
  }

  else
  {
    (*(v7 + 2))(v7, 0, v18);
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end
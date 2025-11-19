@interface HDCloudSyncPreparePushZoneForStoreOperation
+ (id)operationTagDependencies;
- (HDCloudSyncPreparePushZoneForStoreOperation)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (HDCloudSyncPreparePushZoneForStoreOperation)initWithConfiguration:(id)a3 cloudState:(id)a4 store:(id)a5;
- (void)_finishWithZone:(uint64_t)a1;
- (void)main;
@end

@implementation HDCloudSyncPreparePushZoneForStoreOperation

+ (id)operationTagDependencies
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"compute-push-targets";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (HDCloudSyncPreparePushZoneForStoreOperation)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncPreparePushZoneForStoreOperation)initWithConfiguration:(id)a3 cloudState:(id)a4 store:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = HDCloudSyncPreparePushZoneForStoreOperation;
  v10 = [(HDCloudSyncOperation *)&v13 initWithConfiguration:a3 cloudState:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_store, a5);
  }

  return v11;
}

- (void)main
{
  v83[1] = *MEMORY[0x277D85DE8];
  v3 = [(HDCloudSyncOperation *)self configuration];
  v4 = [v3 repository];
  v5 = [v4 primaryCKContainer];
  v6 = [v5 containerIdentifier];

  v7 = [(HDCloudSyncStore *)self->_store containerIdentifier];
  LOBYTE(v4) = [v7 isEqualToString:v6];

  if (v4)
  {
    v8 = [(HDCloudSyncOperation *)self configuration];
    v9 = [v8 repository];
    v10 = [v9 shouldPushToUnifiedZone];

    v11 = MEMORY[0x277CBC5F8];
    v12 = [(HDCloudSyncOperation *)self configuration];
    v13 = [v12 syncContainerPrefix];
    v62 = v10;
    v65 = v6;
    if (v10)
    {
      v64 = [v11 hd_unifiedSyncZoneIDForSyncCircleIdentifier:v13];
    }

    else
    {
      v15 = [(HDCloudSyncStore *)self->_store storeIdentifier];
      v64 = [v11 hd_individualSyncZoneIDWithSyncCircleIdentifier:v13 storeIdentifier:v15];
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v16 = [(HDCloudSyncOperation *)self configuration];
    v17 = [v16 computedState];
    v18 = [v17 targets];

    v19 = [v18 countByEnumeratingWithState:&v70 objects:v75 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v71;
      obj = v18;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v71 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v70 + 1) + 8 * i);
          v24 = [v23 store];
          v25 = [v24 storeIdentifier];
          v26 = [(HDCloudSyncStore *)self->_store storeIdentifier];
          v27 = [v25 isEqual:v26];

          if (v27)
          {
            objc_storeStrong(&self->_pushTarget, v23);
            [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
            v33 = v64;
            v6 = v65;
            goto LABEL_33;
          }
        }

        v18 = obj;
        v20 = [obj countByEnumeratingWithState:&v70 objects:v75 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v28 = [(HDCloudSyncOperation *)self configuration];
    v29 = [v28 cachedCloudState];
    v69 = 0;
    v30 = [v29 zonesByIdentifierWithError:&v69];
    v31 = v69;

    obj = v31;
    if (v30 || !v31)
    {
      v33 = v64;
      v6 = v65;
      if (!v30)
      {
        _HKInitializeLogging();
        v34 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *&buf[4] = self;
          _os_log_debug_impl(&dword_228986000, v34, OS_LOG_TYPE_DEBUG, "%{public}@ No cached zones found.", buf, 0xCu);
        }
      }

      v35 = [v30 allValues];
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __51__HDCloudSyncPreparePushZoneForStoreOperation_main__block_invoke;
      v67[3] = &unk_278615DB8;
      v68 = v62;
      v67[4] = v65;
      v67[5] = v64;
      v36 = [v35 hk_firstObjectPassingTest:v67];

      if (v36)
      {
        [(HDCloudSyncPreparePushZoneForStoreOperation *)self _finishWithZone:v36];
      }

      else
      {
        v37 = [(HDCloudSyncStore *)self->_store storeIdentifier];
        v63 = v64;
        v61 = v37;
        v38 = [(HDCloudSyncOperation *)self configuration];
        v39 = [v38 repository];
        v40 = [v39 primaryCKContainer];

        v41 = [(HDCloudSyncOperation *)self configuration];
        v42 = [v41 repository];
        v43 = [v42 profileIdentifier];
        v60 = v40;
        v44 = HDDatabaseForContainer(v40, v43);

        if ([v44 databaseScope] == 2)
        {
          v59 = v44;
          _HKInitializeLogging();
          v45 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            store = self->_store;
            v47 = v45;
            v48 = [(HDCloudSyncStore *)store storeIdentifier];
            *buf = 138543874;
            *&buf[4] = self;
            *&buf[12] = 2114;
            *&buf[14] = v48;
            *&buf[22] = 2114;
            v77 = v63;
            _os_log_impl(&dword_228986000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@: No zone found for store %{public}@; creating zone %{public}@", buf, 0x20u);
          }

          v49 = v63;
          v50 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:v63];
          v51 = [HDCloudSyncModifyRecordZonesOperation alloc];
          v52 = [(HDCloudSyncOperation *)self configuration];
          v83[0] = v50;
          v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:1];
          v54 = v51;
          v55 = v60;
          v56 = [(HDCloudSyncModifyRecordZonesOperation *)v54 initWithConfiguration:v52 container:v60 recordZonesToSave:v53 recordZoneIDsToDelete:0];

          v74[0] = MEMORY[0x277D85DD0];
          v74[1] = 3221225472;
          v74[2] = __84__HDCloudSyncPreparePushZoneForStoreOperation__createZoneWithIdentifier_forStoreId___block_invoke;
          v74[3] = &unk_278613088;
          v74[4] = self;
          [(HDCloudSyncOperation *)v56 setOnError:v74];
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __84__HDCloudSyncPreparePushZoneForStoreOperation__createZoneWithIdentifier_forStoreId___block_invoke_308;
          v77 = &unk_278615DE0;
          v78 = self;
          v57 = v61;
          v79 = v61;
          v80 = v63;
          v81 = v60;
          v44 = v59;
          v82 = v59;
          [(HDCloudSyncOperation *)v56 setOnSuccess:buf];
          [(HDCloudSyncOperation *)v56 start];

          v36 = 0;
        }

        else
        {
          v50 = [MEMORY[0x277CCA9B8] hk_error:712 format:@"Unable to create zones in a non-private database."];
          [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v50];
          v57 = v61;
          v49 = v63;
          v55 = v60;
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v32 = *MEMORY[0x277CCC328];
      v33 = v64;
      v6 = v65;
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = obj;
        _os_log_error_impl(&dword_228986000, v32, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve cached zone identifiers, %{public}@", buf, 0x16u);
      }

      [(HDCloudSyncOperation *)self finishWithSuccess:0 error:obj];
    }

LABEL_33:
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] hk_error:712 format:@"Unable to create push zones in a non-primary container."];
    [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v14];
  }

  v58 = *MEMORY[0x277D85DE8];
}

uint64_t __51__HDCloudSyncPreparePushZoneForStoreOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 zoneIdentifier];
  v5 = [v4 containerIdentifier];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    if (*(a1 + 48) == 1 && [v3 zoneType] == 2)
    {
      v7 = 1;
    }

    else
    {
      v8 = [v3 zoneIdentifier];
      v7 = [v8 isEquivalentToZone:*(a1 + 40) container:*(a1 + 32)];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_finishWithZone:(uint64_t)a1
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v51 = 0;
    v52 = &v51;
    v53 = 0x3032000000;
    v54 = __Block_byref_object_copy__20;
    v55 = __Block_byref_object_dispose__20;
    v56 = 0;
    v4 = objc_opt_class();
    v49[5] = &v51;
    v50 = 0;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __63__HDCloudSyncPreparePushZoneForStoreOperation__finishWithZone___block_invoke;
    v49[3] = &unk_278615E08;
    v49[4] = a1;
    v5 = [v3 recordsForClass:v4 epoch:0 error:&v50 enumerationHandler:v49];
    v47 = v50;
    if (v5)
    {
      if (!v52[5])
      {
        v6 = [a1 configuration];
        v7 = [v6 repository];
        v8 = [a1 configuration];
        v9 = [v8 repository];
        v10 = [v9 primaryCKContainer];
        v11 = [v7 cachedOwnerIdentifierForContainer:v10];
        v46 = [v11 string];

        v12 = [a1 configuration];
        v13 = [v12 repository];
        v14 = [v13 profile];
        v15 = [v14 cloudSyncManager];
        v42 = [v15 isChild];

        v41 = [HDCloudSyncStoreRecord alloc];
        v45 = [a1 configuration];
        v44 = [v45 syncContainerPrefix];
        v43 = [*(a1 + 104) storeIdentifier];
        v16 = [a1 configuration];
        v17 = [v16 repository];
        v18 = [v17 syncIdentityManager];
        v19 = [v18 currentSyncIdentity];
        v20 = [v19 identity];
        v21 = [v3 zoneIdentifier];
        v22 = [v21 zoneIdentifier];
        v23 = [(HDCloudSyncStoreRecord *)v41 initInSyncCircle:v44 ownerIdentifier:v46 storeIdentifier:v43 syncIdentity:v20 isChild:v42 zoneID:v22];
        v24 = v52[5];
        v52[5] = v23;

        v25 = v52[5];
        v48 = 0;
        LOBYTE(v22) = [v25 validateWithError:&v48];
        v26 = v48;
        if ((v22 & 1) == 0)
        {
          _HKInitializeLogging();
          v27 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v59 = v26;
            _os_log_fault_impl(&dword_228986000, v27, OS_LOG_TYPE_FAULT, "Failed to validate store record after creation: %{public}@", buf, 0xCu);
          }

          [a1 finishWithSuccess:0 error:v26];
        }
      }

      v28 = [HDCloudSyncTarget alloc];
      v29 = [a1 configuration];
      v30 = [v29 repository];
      v31 = [v30 primaryCKContainer];
      v32 = [v3 zoneIdentifier];
      v33 = [(HDCloudSyncTarget *)v28 initWithPurpose:0 container:v31 zoneIdentifier:v32 storeRecord:v52[5] store:*(a1 + 104) options:0];
      v34 = *(a1 + 112);
      *(a1 + 112) = v33;

      v35 = [a1 configuration];
      v36 = [v35 computedState];
      v57 = *(a1 + 112);
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
      [v36 replaceTargets:v37];

      v38 = 0;
    }

    else
    {
      _HKInitializeLogging();
      v35 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v40 = [v3 zoneIdentifier];
        *buf = 138543874;
        v59 = a1;
        v60 = 2114;
        v61 = v40;
        v62 = 2114;
        v63 = v47;
        _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get store records for %{public}@, %{public}@", buf, 0x20u);
      }

      v38 = v47;
    }

    [a1 finishWithSuccess:v5 error:v38];
    _Block_object_dispose(&v51, 8);
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __84__HDCloudSyncPreparePushZoneForStoreOperation__createZoneWithIdentifier_forStoreId___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 104);
    v9 = v5;
    v10 = [v8 storeIdentifier];
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v10;
    v15 = 2114;
    v16 = v4;
    _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create zone for store: %{public}@: %{public}@", &v11, 0x20u);
  }

  [*(a1 + 32) finishWithSuccess:0 error:v4];

  v6 = *MEMORY[0x277D85DE8];
}

void __84__HDCloudSyncPreparePushZoneForStoreOperation__createZoneWithIdentifier_forStoreId___block_invoke_308(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v16 = 138543618;
    v17 = v3;
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully created zone for store: %{public}@", &v16, 0x16u);
  }

  v5 = [HDCloudSyncZoneIdentifier alloc];
  v6 = *(a1 + 48);
  v7 = [*(a1 + 56) containerIdentifier];
  v8 = -[HDCloudSyncZoneIdentifier initForZone:container:scope:](v5, "initForZone:container:scope:", v6, v7, [*(a1 + 64) databaseScope]);

  v9 = [HDCloudSyncCachedZone alloc];
  v10 = [*(a1 + 32) configuration];
  v11 = [v10 repository];
  v12 = [*(a1 + 32) configuration];
  v13 = [v12 accessibilityAssertion];
  v14 = [(HDCloudSyncCachedZone *)v9 initForZoneIdentifier:v8 repository:v11 accessibilityAssertion:v13];

  [(HDCloudSyncPreparePushZoneForStoreOperation *)*(a1 + 32) _finishWithZone:v14];
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __63__HDCloudSyncPreparePushZoneForStoreOperation__finishWithZone___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 storeIdentifier];
  v6 = [*(*(a1 + 32) + 104) storeIdentifier];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  return v7 ^ 1u;
}

@end
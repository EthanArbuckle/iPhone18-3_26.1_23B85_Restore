@interface HDCloudSyncCreateZonesOperation
- (HDCloudSyncCreateZonesOperation)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (HDCloudSyncCreateZonesOperation)initWithConfiguration:(id)a3 cloudState:(id)a4 zones:(id)a5 container:(id)a6;
- (void)main;
@end

@implementation HDCloudSyncCreateZonesOperation

- (HDCloudSyncCreateZonesOperation)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncCreateZonesOperation)initWithConfiguration:(id)a3 cloudState:(id)a4 zones:(id)a5 container:(id)a6
{
  v10 = a5;
  v11 = a6;
  v17.receiver = self;
  v17.super_class = HDCloudSyncCreateZonesOperation;
  v12 = [(HDCloudSyncOperation *)&v17 initWithConfiguration:a3 cloudState:a4];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_container, a6);
    v14 = [v10 copy];
    zones = v13->_zones;
    v13->_zones = v14;
  }

  return v13;
}

- (void)main
{
  v38 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = MEMORY[0x277CCC328];
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    zones = self->_zones;
    v6 = v4;
    v7 = [(NSArray *)zones hk_map:&__block_literal_global_51];
    v8 = [v7 componentsJoinedByString:{@", "}];
    *buf = 138543618;
    v35 = self;
    v36 = 2114;
    v37 = v8;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Verifying existence of zones: %{public}@", buf, 0x16u);
  }

  v9 = [(HDCloudSyncOperation *)self configuration];
  v10 = [v9 cachedCloudState];
  v33 = 0;
  v11 = [v10 zonesByIdentifierWithError:&v33];
  v12 = v33;

  if (v11 || !v12)
  {
    if (!v11 || ![v11 count])
    {
      _HKInitializeLogging();
      v14 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v35 = self;
        _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ No cached zones found while verifying existence of zones.", buf, 0xCu);
      }
    }

    v15 = self->_zones;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __39__HDCloudSyncCreateZonesOperation_main__block_invoke_299;
    v30[3] = &unk_27861A4B0;
    v31 = v11;
    v32 = self;
    v16 = [(NSArray *)v15 hk_filter:v30];
    if ([v16 count])
    {
      container = self->_container;
      v18 = [(HDCloudSyncOperation *)self configuration];
      v19 = [v18 repository];
      v20 = [v19 profileIdentifier];
      v21 = HDDatabaseForContainer(container, v20);

      if ([v21 databaseScope] == 2)
      {
        _HKInitializeLogging();
        v22 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v22;
          v24 = [v16 hk_map:&__block_literal_global_306];
          v25 = [v24 componentsJoinedByString:{@", "}];
          *buf = 138543618;
          v35 = self;
          v36 = 2114;
          v37 = v25;
          _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: Creating zones: %{public}@", buf, 0x16u);
        }

        v26 = [HDCloudSyncModifyRecordZonesOperation alloc];
        v27 = [(HDCloudSyncOperation *)self configuration];
        v28 = [(HDCloudSyncModifyRecordZonesOperation *)v26 initWithConfiguration:v27 container:self->_container recordZonesToSave:v16 recordZoneIDsToDelete:0];

        [(HDCloudSyncOperation *)self delegateToOperation:v28];
      }

      else
      {
        v28 = [MEMORY[0x277CCA9B8] hk_error:712 format:@"Unable to create zones in a non-private database."];
        [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v28];
      }
    }

    else
    {
      [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
    }
  }

  else
  {
    _HKInitializeLogging();
    v13 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v35 = self;
      v36 = 2114;
      v37 = v12;
      _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve cached zone identifiers while generating pull targets, %{public}@", buf, 0x16u);
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v12];
  }

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __39__HDCloudSyncCreateZonesOperation_main__block_invoke_299(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [*(a1 + 32) allKeys];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = [v3 zoneID];
        v11 = [*(*(a1 + 40) + 104) containerIdentifier];
        LOBYTE(v9) = [v9 isEquivalentIgnoringOwnerToZone:v10 container:v11];

        if (v9)
        {
          v12 = 0;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

@end
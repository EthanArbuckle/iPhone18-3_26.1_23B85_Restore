@interface HDCloudSyncPrepareForSharingOperation
- (void)main;
@end

@implementation HDCloudSyncPrepareForSharingOperation

- (void)main
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = [(HDCloudSyncOperation *)self configuration];
  v4 = [v3 repository];
  v5 = [v4 primaryCKContainer];

  v6 = [(HDCloudSyncOperation *)self configuration];
  v7 = [v6 cachedCloudState];
  v44 = 0;
  v8 = [v7 zonesByIdentifierWithError:&v44];
  v9 = v44;

  if (v8 || !v9)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v11 = [v8 allKeys];
    v12 = [v11 countByEnumeratingWithState:&v40 objects:v52 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v41;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v41 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v40 + 1) + 8 * i);
          v17 = [v16 containerIdentifier];
          v18 = [v5 containerIdentifier];
          v19 = [v17 isEqualToString:v18];

          if (v19)
          {
            _HKInitializeLogging();
            v32 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              v33 = v32;
              v34 = [v5 containerIdentifier];
              *buf = 138543874;
              v47 = self;
              v48 = 2114;
              v49 = v16;
              v50 = 2114;
              v51 = v34;
              _os_log_impl(&dword_228986000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@: Found existing zone %{public}@ in primary container %{public}@; ready for sharing.", buf, 0x20u);
            }

            [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
            goto LABEL_20;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v40 objects:v52 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = [v5 containerIdentifier];
      *buf = 138543618;
      v47 = self;
      v48 = 2114;
      v49 = v22;
      _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: No existing zones found in primary contaienr %{public}@; creating master zone.", buf, 0x16u);
    }

    v23 = objc_alloc(MEMORY[0x277CBC5E8]);
    v24 = MEMORY[0x277CBC5F8];
    v25 = [(HDCloudSyncOperation *)self configuration];
    v26 = [v25 syncContainerPrefix];
    v27 = [v24 hd_masterZoneIDForSyncCircleIdentifier:v26];
    v11 = [v23 initWithZoneID:v27];

    v28 = [HDCloudSyncModifyRecordZonesOperation alloc];
    v29 = [(HDCloudSyncOperation *)self configuration];
    v45 = v11;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
    v31 = [(HDCloudSyncModifyRecordZonesOperation *)v28 initWithConfiguration:v29 container:v5 recordZonesToSave:v30 recordZoneIDsToDelete:0];

    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __45__HDCloudSyncPrepareForSharingOperation_main__block_invoke;
    v39[3] = &unk_278613088;
    v39[4] = self;
    [(HDCloudSyncOperation *)v31 setOnError:v39];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __45__HDCloudSyncPrepareForSharingOperation_main__block_invoke_296;
    v38[3] = &unk_278613060;
    v38[4] = self;
    [(HDCloudSyncOperation *)v31 setOnSuccess:v38];
    [(HDCloudSyncOperation *)v31 start];

LABEL_20:
    v9 = v36;
    v8 = v37;
  }

  else
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v47 = self;
      v48 = 2114;
      v49 = v9;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get cached zones, %{public}@", buf, 0x16u);
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v9];
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __45__HDCloudSyncPrepareForSharingOperation_main__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = v4;
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create master zone for sharing preparation: %{public}@", &v8, 0x16u);
  }

  [*(a1 + 32) finishWithSuccess:0 error:v4];

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __45__HDCloudSyncPrepareForSharingOperation_main__block_invoke_296(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully created master zone for sharing preparation.", &v6, 0xCu);
  }

  result = [*(a1 + 32) finishWithSuccess:1 error:0];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

@end
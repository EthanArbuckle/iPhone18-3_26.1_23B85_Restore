@interface HDCloudSyncRepairRegistryRecordsOperation
- (HDCloudSyncRepairRegistryRecordsOperation)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (void)main;
@end

@implementation HDCloudSyncRepairRegistryRecordsOperation

- (HDCloudSyncRepairRegistryRecordsOperation)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v8.receiver = self;
  v8.super_class = HDCloudSyncRepairRegistryRecordsOperation;
  v4 = [(HDCloudSyncOperation *)&v8 initWithConfiguration:a3 cloudState:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = v4->_taskGroup;
    v4->_taskGroup = v5;

    [(HDSynchronousTaskGroup *)v4->_taskGroup setDelegate:v4];
  }

  return v4;
}

- (void)main
{
  v59 = *MEMORY[0x277D85DE8];
  [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v3 = [(HDCloudSyncOperation *)self configuration];
  v4 = [v3 repository];
  v5 = [v4 allCKContainers];

  obj = v5;
  v47 = [v5 countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v47)
  {
    v46 = *v49;
    *&v6 = 138543618;
    v44 = v6;
    do
    {
      v7 = 0;
      do
      {
        if (*v49 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v48 + 1) + 8 * v7);
        [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
        v9 = v8;
        v10 = [(HDCloudSyncOperation *)self configuration];
        v11 = [v10 cachedCloudState];
        v12 = [v9 containerIdentifier];

        v53[0] = 0;
        v13 = [v11 unifiedSyncZoneForContainerID:v12 error:v53];
        v14 = v53[0];

        if (v13)
        {
          v15 = objc_opt_class();
          v52 = v14;
          v16 = [v13 recordsForClass:v15 error:&v52];
          v17 = v52;

          if (v16)
          {
            if ([v16 count] >= 2)
            {
              _HKInitializeLogging();
              v18 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
              {
                v39 = v18;
                v40 = [v13 zoneIdentifier];
                *buf = 138543874;
                *&buf[4] = self;
                *&buf[12] = 2114;
                *&buf[14] = v40;
                *&buf[22] = 2114;
                v57 = v17;
                _os_log_fault_impl(&dword_228986000, v39, OS_LOG_TYPE_FAULT, "%{public}@ Retrieved multiple registry records for %{public}@, %{public}@", buf, 0x20u);
              }
            }

            if ([v16 count] == 1)
            {
              v19 = [v16 firstObject];
              v14 = 0;
LABEL_22:

              goto LABEL_27;
            }
          }

          else if (v17)
          {
            _HKInitializeLogging();
            v23 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              v41 = v23;
              v42 = [v13 zoneIdentifier];
              *buf = 138543874;
              *&buf[4] = self;
              *&buf[12] = 2114;
              *&buf[14] = v42;
              *&buf[22] = 2114;
              v57 = v17;
              _os_log_error_impl(&dword_228986000, v41, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get registry records for %{public}@, %{public}@", buf, 0x20u);
            }

            v24 = v17;
            v19 = 0;
            v14 = v17;
            goto LABEL_22;
          }

          v14 = 0;
          v19 = 0;
          goto LABEL_22;
        }

        _HKInitializeLogging();
        v20 = *MEMORY[0x277CCC328];
        v21 = *MEMORY[0x277CCC328];
        if (v14)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = v44;
            *&buf[4] = self;
            *&buf[12] = 2114;
            *&buf[14] = v14;
            _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get unified zone %{public}@", buf, 0x16u);
          }

          v22 = v14;
        }

        else
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = self;
            _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Unified zone does not exist.", buf, 0xCu);
          }

          v14 = 0;
        }

        v19 = 0;
LABEL_27:

        v25 = v14;
        if (!v19)
        {
          taskGroup = self->_taskGroup;
          if (v25)
          {
            [(HDSynchronousTaskGroup *)taskGroup failTaskWithError:v25];
            goto LABEL_34;
          }

          goto LABEL_32;
        }

        v26 = [v19 sharedProfileIdentifier];
        v27 = [v26 type];

        if (v27 == 3)
        {
          taskGroup = self->_taskGroup;
LABEL_32:
          [(HDSynchronousTaskGroup *)taskGroup finishTask];
          goto LABEL_34;
        }

        v29 = MEMORY[0x277CCD7C8];
        v30 = [MEMORY[0x277CCAD78] UUID];
        v31 = [v29 _profileWithUUID:v30 type:3];
        [v19 setSharedProfileIdentifier:v31];

        v32 = [v19 record];
        v54 = v32;
        v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
        v34 = v9;
        v35 = v33;
        v36 = [HDCloudSyncModifyRecordsOperation alloc];
        v37 = [(HDCloudSyncOperation *)self configuration];
        v38 = [(HDCloudSyncModifyRecordsOperation *)v36 initWithConfiguration:v37 container:v34 recordsToSave:v35 recordIDsToDelete:0];

        [(HDCloudSyncModifyRecordsOperation *)v38 setTreatAnyErrorAsFatal:1];
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __79__HDCloudSyncRepairRegistryRecordsOperation__modifyRecordsAndFinish_container___block_invoke;
        v57 = &unk_278613088;
        v58 = self;
        [(HDCloudSyncOperation *)v38 setOnError:buf];
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __79__HDCloudSyncRepairRegistryRecordsOperation__modifyRecordsAndFinish_container___block_invoke_298;
        v53[3] = &unk_278613060;
        v53[4] = self;
        [(HDCloudSyncOperation *)v38 setOnSuccess:v53];
        [(HDCloudSyncOperation *)v38 start];

LABEL_34:
        ++v7;
      }

      while (v47 != v7);
      v47 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v47);
  }

  [(HDSynchronousTaskGroup *)self->_taskGroup finishTask];
  v43 = *MEMORY[0x277D85DE8];
}

void __79__HDCloudSyncRepairRegistryRecordsOperation__modifyRecordsAndFinish_container___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update registry records: %{public}@", &v8, 0x16u);
  }

  [*(*(a1 + 32) + 104) failTaskWithError:v4];

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __79__HDCloudSyncRepairRegistryRecordsOperation__modifyRecordsAndFinish_container___block_invoke_298(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully updated registry records", &v6, 0xCu);
  }

  result = [*(*(a1 + 32) + 104) finishTask];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

@end
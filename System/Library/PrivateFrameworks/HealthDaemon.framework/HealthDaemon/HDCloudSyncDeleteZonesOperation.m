@interface HDCloudSyncDeleteZonesOperation
- (HDCloudSyncDeleteZonesOperation)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (NSArray)zonesToDelete;
- (void)main;
- (void)setZonesToDelete:(id)a3;
@end

@implementation HDCloudSyncDeleteZonesOperation

- (HDCloudSyncDeleteZonesOperation)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v10.receiver = self;
  v10.super_class = HDCloudSyncDeleteZonesOperation;
  v4 = [(HDCloudSyncOperation *)&v10 initWithConfiguration:a3 cloudState:a4];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    v6 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = v5->_taskGroup;
    v5->_taskGroup = v6;

    [(HDSynchronousTaskGroup *)v5->_taskGroup setDelegate:v5];
    zonesToDelete = v5->_zonesToDelete;
    v5->_zonesToDelete = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (NSArray)zonesToDelete
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_zonesToDelete;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setZonesToDelete:(id)a3
{
  v5 = a3;
  if ([(HDCloudSyncOperation *)self status])
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"HDCloudSyncDeleteZonesOperation.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"self.status == HDCloudSyncOperationStatusPending"}];
  }

  os_unfair_lock_lock(&self->_lock);
  v6 = [v5 copy];

  zonesToDelete = self->_zonesToDelete;
  self->_zonesToDelete = v6;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)main
{
  v49 = *MEMORY[0x277D85DE8];
  v29 = [(HDCloudSyncDeleteZonesOperation *)self zonesToDelete];
  [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = [(HDCloudSyncOperation *)self configuration];
  v4 = [v3 repository];
  v5 = [v4 allCKContainers];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v6)
  {
    v8 = v6;
    v28 = *v32;
    *&v7 = 138544130;
    v26 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __39__HDCloudSyncDeleteZonesOperation_main__block_invoke;
        v30[3] = &unk_278616300;
        v30[4] = v10;
        v11 = [v29 hk_filter:{v30, v26}];
        if ([v11 count])
        {
          v12 = v11;
          v13 = v10;
          [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
          v14 = [v12 hk_map:&__block_literal_global_25];
          _HKInitializeLogging();
          v15 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            v16 = v15;
            v17 = [v12 count];
            v18 = [v13 containerIdentifier];
            *buf = v26;
            v42 = self;
            v43 = 2048;
            v44 = v17;
            v45 = 2114;
            v46 = v18;
            v47 = 2114;
            v48 = v14;
            _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Deleting %ld zones in %{public}@: %{public}@", buf, 0x2Au);
          }

          v19 = [HDCloudSyncModifyRecordZonesOperation alloc];
          v20 = [(HDCloudSyncOperation *)self configuration];
          v21 = [(HDCloudSyncModifyRecordZonesOperation *)v19 initWithConfiguration:v20 container:v13 recordZonesToSave:0 recordZoneIDsToDelete:v14];

          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __58__HDCloudSyncDeleteZonesOperation__deleteZones_container___block_invoke_305;
          v38[3] = &unk_278616348;
          v38[4] = self;
          v22 = v13;
          v39 = v22;
          [(HDCloudSyncOperation *)v21 setOnError:v38];
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __58__HDCloudSyncDeleteZonesOperation__deleteZones_container___block_invoke_307;
          v35[3] = &unk_278616370;
          v35[4] = self;
          v36 = v14;
          v23 = v22;
          v37 = v23;
          v24 = v14;
          [(HDCloudSyncOperation *)v21 setOnSuccess:v35];
          [(HDCloudSyncOperation *)v21 start];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v8);
  }

  [(HDSynchronousTaskGroup *)self->_taskGroup finishTask];
  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __39__HDCloudSyncDeleteZonesOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 containerIdentifier];
  v4 = [*(a1 + 32) containerIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void __58__HDCloudSyncDeleteZonesOperation__deleteZones_container___block_invoke_305(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = v5;
    v10 = [v7 containerIdentifier];
    v11 = 138543874;
    v12 = v8;
    v13 = 2114;
    v14 = v10;
    v15 = 2114;
    v16 = v4;
    _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete zones in %{public}@: %{public}@", &v11, 0x20u);
  }

  [*(*(a1 + 32) + 112) failTaskWithError:v4];

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __58__HDCloudSyncDeleteZonesOperation__deleteZones_container___block_invoke_307(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 count];
    v7 = [*(a1 + 48) containerIdentifier];
    v10 = 138543874;
    v11 = v4;
    v12 = 2048;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Deleted %ld zones in %{public}@", &v10, 0x20u);
  }

  result = [*(*(a1 + 32) + 112) finishTask];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

@end
@interface HDCloudSyncDeleteRecordsOperation
- (HDCloudSyncDeleteRecordsOperation)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (NSArray)recordIDsToDelete;
- (void)main;
- (void)setRecordIDsToDelete:(id)a3;
@end

@implementation HDCloudSyncDeleteRecordsOperation

- (HDCloudSyncDeleteRecordsOperation)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v10.receiver = self;
  v10.super_class = HDCloudSyncDeleteRecordsOperation;
  v4 = [(HDCloudSyncOperation *)&v10 initWithConfiguration:a3 cloudState:a4];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    v6 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = v5->_taskGroup;
    v5->_taskGroup = v6;

    [(HDSynchronousTaskGroup *)v5->_taskGroup setDelegate:v5];
    recordIDsToDelete = v5->_recordIDsToDelete;
    v5->_recordIDsToDelete = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (NSArray)recordIDsToDelete
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_recordIDsToDelete;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setRecordIDsToDelete:(id)a3
{
  v5 = a3;
  if ([(HDCloudSyncOperation *)self status])
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"HDCloudSyncDeleteRecordsOperation.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"self.status == HDCloudSyncOperationStatusPending"}];
  }

  os_unfair_lock_lock(&self->_lock);
  v6 = [v5 copy];

  recordIDsToDelete = self->_recordIDsToDelete;
  self->_recordIDsToDelete = v6;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)main
{
  v2 = self;
  v59 = *MEMORY[0x277D85DE8];
  v3 = [(HDCloudSyncDeleteRecordsOperation *)self recordIDsToDelete];
  if ([v3 count])
  {
    [(HDSynchronousTaskGroup *)v2->_taskGroup beginTask];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v4 = [(HDCloudSyncOperation *)v2 configuration];
    [v4 repository];
    v5 = v36 = v3;
    v6 = [v5 allCKContainers];

    v3 = v36;
    obj = v6;
    v39 = [v6 countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v39)
    {
      v38 = *v45;
      *&v7 = 138543618;
      v35 = v7;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v45 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v44 + 1) + 8 * v8);
          v10 = [(HDCloudSyncOperation *)v2 configuration];
          v11 = [v10 cachedCloudState];
          v12 = [v9 containerIdentifier];
          v43 = 0;
          v13 = [v11 zonesForContainerID:v12 error:&v43];
          v14 = v43;

          if (v13)
          {
            v15 = 1;
          }

          else
          {
            v15 = v14 == 0;
          }

          if (!v15)
          {
            _HKInitializeLogging();
            v16 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              *buf = v35;
              v52 = v2;
              v53 = 2114;
              v54 = v14;
              _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get cached zones, %{public}@", buf, 0x16u);
            }

            v17 = [(HDCloudSyncOperation *)v2 configuration];
            v18 = [v17 repository];
            v19 = [v18 primaryCKContainer];

            if (v9 == v19)
            {
              [(HDCloudSyncOperation *)v2 finishWithSuccess:0 error:v14];

              goto LABEL_25;
            }
          }

          v20 = [v13 hk_mapToSet:&__block_literal_global_45];
          v41[0] = MEMORY[0x277D85DD0];
          v41[1] = 3221225472;
          v41[2] = __41__HDCloudSyncDeleteRecordsOperation_main__block_invoke_2;
          v41[3] = &unk_2786167F8;
          v21 = v20;
          v42 = v21;
          v22 = [v3 hk_filter:v41];
          if ([v22 count])
          {
            v40 = v14;
            v23 = v22;
            v24 = v9;
            [(HDSynchronousTaskGroup *)v2->_taskGroup beginTask];
            _HKInitializeLogging();
            v25 = *MEMORY[0x277CCC328];
            v26 = v2;
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              v27 = v25;
              v28 = [v23 count];
              v29 = [v24 containerIdentifier];
              *buf = 138544130;
              v52 = v26;
              v53 = 2048;
              v54 = v28;
              v55 = 2114;
              v56 = v29;
              v57 = 2114;
              v58 = v23;
              _os_log_impl(&dword_228986000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: Deleting %ld records in %{public}@: %{public}@", buf, 0x2Au);

              v3 = v36;
            }

            v30 = [HDCloudSyncModifyRecordsOperation alloc];
            v31 = [(HDCloudSyncOperation *)v26 configuration];
            v32 = [(HDCloudSyncModifyRecordsOperation *)v30 initWithConfiguration:v31 container:v24 recordsToSave:0 recordIDsToDelete:v23];

            v49[0] = MEMORY[0x277D85DD0];
            v49[1] = 3221225472;
            v49[2] = __62__HDCloudSyncDeleteRecordsOperation__deleteRecords_container___block_invoke;
            v49[3] = &unk_278613088;
            v49[4] = v26;
            [(HDCloudSyncOperation *)v32 setOnError:v49];
            v48[0] = MEMORY[0x277D85DD0];
            v48[1] = 3221225472;
            v48[2] = __62__HDCloudSyncDeleteRecordsOperation__deleteRecords_container___block_invoke_2;
            v48[3] = &unk_278613060;
            v48[4] = v26;
            [(HDCloudSyncOperation *)v32 setOnSuccess:v48];
            [(HDCloudSyncOperation *)v32 start];

            v2 = v26;
            v14 = v40;
          }

          ++v8;
        }

        while (v39 != v8);
        v39 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
        if (v39)
        {
          continue;
        }

        break;
      }
    }

    [(HDSynchronousTaskGroup *)v2->_taskGroup finishTask];
  }

  else
  {
    _HKInitializeLogging();
    v33 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v52 = v2;
      _os_log_impl(&dword_228986000, v33, OS_LOG_TYPE_INFO, "%{public}@: Nothing to delete.", buf, 0xCu);
    }

    [(HDCloudSyncOperation *)v2 finishWithSuccess:1 error:0];
  }

LABEL_25:

  v34 = *MEMORY[0x277D85DE8];
}

id __41__HDCloudSyncDeleteRecordsOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 zoneIdentifier];
  v3 = [v2 zoneIdentifier];

  return v3;
}

uint64_t __41__HDCloudSyncDeleteRecordsOperation_main__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 zoneID];
  v4 = [v2 containsObject:v3];

  return v4;
}

@end
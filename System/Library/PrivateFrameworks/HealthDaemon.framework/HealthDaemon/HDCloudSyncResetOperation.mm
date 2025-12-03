@interface HDCloudSyncResetOperation
- (HDCloudSyncResetOperation)initWithConfiguration:(id)configuration cloudState:(id)state container:(id)container;
- (void)main;
@end

@implementation HDCloudSyncResetOperation

- (HDCloudSyncResetOperation)initWithConfiguration:(id)configuration cloudState:(id)state container:(id)container
{
  containerCopy = container;
  v13.receiver = self;
  v13.super_class = HDCloudSyncResetOperation;
  v10 = [(HDCloudSyncOperation *)&v13 initWithConfiguration:configuration cloudState:state];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_container, container);
  }

  return v11;
}

- (void)main
{
  v27 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    container = self->_container;
    v5 = v3;
    configuration = [(HDCloudSyncOperation *)self configuration];
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = container;
    *&buf[22] = 2114;
    v24 = configuration;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning reset for container (%{public}@) with configuration %{public}@", buf, 0x20u);

LABEL_4:
    v7 = [objc_alloc(MEMORY[0x277CBC388]) initWithPreviousServerChangeToken:0];
    [v7 setFetchAllChanges:1];
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __50__HDCloudSyncResetOperation__fetchDatabaseChanges__block_invoke;
    v21[3] = &unk_278627050;
    v9 = v8;
    v22 = v9;
    [v7 setRecordZoneWithIDChangedBlock:v21];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __50__HDCloudSyncResetOperation__fetchDatabaseChanges__block_invoke_2;
    v19[3] = &unk_278627050;
    v10 = v9;
    v20 = v10;
    [v7 setRecordZoneWithIDWasPurgedBlock:v19];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __50__HDCloudSyncResetOperation__fetchDatabaseChanges__block_invoke_3;
    v17[3] = &unk_278627050;
    v11 = v10;
    v18 = v11;
    [v7 setRecordZoneWithIDWasDeletedBlock:v17];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __50__HDCloudSyncResetOperation__fetchDatabaseChanges__block_invoke_4;
    v24 = &unk_278627078;
    selfCopy = self;
    v26 = v11;
    v12 = v11;
    [v7 setFetchDatabaseChangesCompletionBlock:buf];
    configuration2 = [(HDCloudSyncOperation *)self configuration];
    operationGroup = [configuration2 operationGroup];
    [v7 setGroup:operationGroup];

    privateCloudDatabase = [(CKContainer *)self->_container privateCloudDatabase];
    [privateCloudDatabase addOperation:v7];

    goto LABEL_5;
  }

  if (self)
  {
    goto LABEL_4;
  }

LABEL_5:
  v16 = *MEMORY[0x277D85DE8];
}

void __53__HDCloudSyncResetOperation__deleteZonesWithZoneIDs___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete zones: %{public}@", &v8, 0x16u);
  }

  [*(a1 + 32) finishWithSuccess:0 error:v4];

  v6 = *MEMORY[0x277D85DE8];
}

void __53__HDCloudSyncResetOperation__deleteZonesWithZoneIDs___block_invoke_293(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v3 recordZoneIDsToDelete];
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully deleted zones %{public}@", &v9, 0x16u);
  }

  [*(a1 + 32) finishWithSuccess:1 error:0];

  v8 = *MEMORY[0x277D85DE8];
}

void __50__HDCloudSyncResetOperation__fetchDatabaseChanges__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a4;
  _HKInitializeLogging();
  v6 = MEMORY[0x277CCC328];
  v7 = *MEMORY[0x277CCC328];
  v8 = *MEMORY[0x277CCC328];
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 32);
      v27 = *(v26 + 104);
      *buf = 138543874;
      *&buf[4] = v26;
      *&buf[12] = 2114;
      *&buf[14] = v27;
      *&buf[22] = 2114;
      v30 = v5;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch record zones in %{public}@ with error: %{public}@", buf, 0x20u);
    }

    [*(a1 + 32) finishWithSuccess:0 error:v5];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      *buf = 138543618;
      *&buf[4] = v9;
      *&buf[12] = 2114;
      *&buf[14] = v10;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetched record zones %{public}@", buf, 0x16u);
    }

    v11 = [MEMORY[0x277CBEB58] setWithArray:*(a1 + 40)];
    v12 = [MEMORY[0x277CBC5E8] defaultRecordZone];
    v13 = [v12 zoneID];
    [v11 removeObject:v13];

    if ([v11 count])
    {
      v14 = *(a1 + 32);
      v15 = [v11 allObjects];
      v16 = v15;
      if (v14)
      {
        v17 = v15;
        v18 = [HDCloudSyncModifyRecordZonesOperation alloc];
        v19 = [v14 configuration];
        v20 = v14[13];
        v21 = [v20 privateCloudDatabase];
        v22 = -[HDCloudSyncModifyRecordZonesOperation initWithConfiguration:container:scope:recordZonesToSave:recordZoneIDsToDelete:](v18, "initWithConfiguration:container:scope:recordZonesToSave:recordZoneIDsToDelete:", v19, v20, [v21 databaseScope], 0, v17);

        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __53__HDCloudSyncResetOperation__deleteZonesWithZoneIDs___block_invoke;
        v30 = &unk_278627000;
        v31 = v14;
        [(HDCloudSyncOperation *)v22 setOnError:buf];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __53__HDCloudSyncResetOperation__deleteZonesWithZoneIDs___block_invoke_293;
        v28[3] = &unk_278627028;
        v28[4] = v14;
        [(HDCloudSyncOperation *)v22 setOnSuccess:v28];
        [(HDCloudSyncOperation *)v22 start];
      }
    }

    else
    {
      _HKInitializeLogging();
      v23 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 32);
        *buf = 138543362;
        *&buf[4] = v24;
        _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: No record zones available to delete", buf, 0xCu);
      }

      [*(a1 + 32) finishWithSuccess:1 error:0];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

@end
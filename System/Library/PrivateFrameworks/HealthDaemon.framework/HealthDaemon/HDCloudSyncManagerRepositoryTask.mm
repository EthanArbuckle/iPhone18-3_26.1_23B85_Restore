@interface HDCloudSyncManagerRepositoryTask
- (HDCloudSyncManager)manager;
- (HDCloudSyncManagerRepositoryTask)initWithManager:(id)manager context:(id)context;
- (void)main;
- (void)mainWithRepositories:(id)repositories error:(id)error;
@end

@implementation HDCloudSyncManagerRepositoryTask

- (HDCloudSyncManagerRepositoryTask)initWithManager:(id)manager context:(id)context
{
  managerCopy = manager;
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = HDCloudSyncManagerRepositoryTask;
  v8 = [(HDCloudSyncManagerTask *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_manager, managerCopy);
    v10 = [contextCopy copy];
    context = v9->_context;
    v9->_context = v10;
  }

  return v9;
}

- (void)main
{
  manager = [(HDCloudSyncManagerRepositoryTask *)self manager];
  if (!manager)
  {
    v6 = [MEMORY[0x277CCA9B8] hk_error:100 format:@"Manager has gone nil before starting task."];
    goto LABEL_7;
  }

  if (![(HDCloudSyncManagerRepositoryTask *)self runWhenSyncProhibited])
  {
    v9 = 0;
    v4 = [manager canPerformCloudSyncWithError:&v9];
    v5 = v9;
    v6 = v5;
    if (v4)
    {

      goto LABEL_5;
    }

LABEL_7:
    [(HDCloudSyncManagerRepositoryTask *)self mainWithRepositories:0 error:v6];

    goto LABEL_8;
  }

LABEL_5:
  client = self->_client;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__HDCloudSyncManagerRepositoryTask_main__block_invoke;
  v8[3] = &unk_27861BB60;
  v8[4] = self;
  [manager cloudSyncRepositoriesForClient:client completion:v8];
LABEL_8:
}

void __40__HDCloudSyncManagerRepositoryTask_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v11 = 138543618;
    v12 = v8;
    v13 = 2048;
    v14 = [v5 count];
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetched %ld repositories.", &v11, 0x16u);
  }

  [*(a1 + 32) mainWithRepositories:v5 error:v6];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)mainWithRepositories:(id)repositories error:(id)error
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (HDCloudSyncManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

@end
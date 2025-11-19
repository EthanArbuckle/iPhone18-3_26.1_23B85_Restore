@interface MTSyncServiceManager
- (MTSyncDataModel)syncDataModel;
- (MTSyncServiceManager)initWithSyncService:(id)a3 syncStatusProvider:(id)a4 syncDataModel:(id)a5 syncMetrics:(id)a6;
- (MTSyncServiceManager)initWithSyncService:(id)a3 syncStatusProvider:(id)a4 syncDataModel:(id)a5 syncMetrics:(id)a6 syncChangeStore:(id)a7;
- (id)gatherDiagnostics;
- (id)requestSync:(unint64_t)a3;
- (void)applyChange:(id)a3;
- (void)checkForPendingChanges;
- (void)pendingChangesSent:(id)a3;
- (void)printDiagnostics;
- (void)resetDataStore;
- (void)startSyncService;
- (void)stopSyncService;
- (void)syncChange:(id)a3;
- (void)syncStatusProvider:(id)a3 didChangeSyncStatus:(unint64_t)a4;
@end

@implementation MTSyncServiceManager

- (MTSyncServiceManager)initWithSyncService:(id)a3 syncStatusProvider:(id)a4 syncDataModel:(id)a5 syncMetrics:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [MTSyncChangeStore persistentStoreForDataModel:v11];
  v15 = [(MTSyncServiceManager *)self initWithSyncService:v13 syncStatusProvider:v12 syncDataModel:v11 syncMetrics:v10 syncChangeStore:v14];

  return v15;
}

- (MTSyncServiceManager)initWithSyncService:(id)a3 syncStatusProvider:(id)a4 syncDataModel:(id)a5 syncMetrics:(id)a6 syncChangeStore:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v24.receiver = self;
  v24.super_class = MTSyncServiceManager;
  v18 = [(MTSyncServiceManager *)&v24 init];
  if (v18)
  {
    v19 = +[MTScheduler serialSchedulerWithName:priority:](MTScheduler, "serialSchedulerWithName:priority:", @"com.apple.MTSyncServiceManager.serialqueue", +[MTScheduler defaultPriority]);
    serializer = v18->_serializer;
    v18->_serializer = v19;

    objc_storeStrong(&v18->_syncService, a3);
    [v13 setDelegate:v18];
    objc_storeStrong(&v18->_syncStatusProvider, a4);
    [(MTSyncStatusProvider *)v18->_syncStatusProvider setSyncStatusProviderDelegate:v18];
    objc_storeWeak(&v18->_syncDataModel, v15);
    v21 = [[MTSyncChangeQueue alloc] initWithChangeStore:v17];
    syncChangeQueue = v18->_syncChangeQueue;
    v18->_syncChangeQueue = v21;

    [(MTSyncChangeQueue *)v18->_syncChangeQueue loadChanges];
    objc_storeStrong(&v18->_syncMetrics, a6);
  }

  return v18;
}

- (void)startSyncService
{
  serializer = self->_serializer;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__MTSyncServiceManager_startSyncService__block_invoke;
  v3[3] = &unk_1E7B0C9D8;
  v3[4] = self;
  [(NAScheduler *)serializer performBlock:v3];
}

uint64_t __40__MTSyncServiceManager_startSyncService__block_invoke(uint64_t result)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(result + 32);
  if ((*(v1 + 8) & 1) == 0)
  {
    v2 = result;
    if ([*(v1 + 24) syncStatus] == 3)
    {
      v3 = MTLogForCategory(6);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(v2 + 32);
        v8 = 138543362;
        v9 = v4;
        _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ sync currently disabled, not starting, and removing any pending changes.", &v8, 0xCu);
      }

      result = [*(*(v2 + 32) + 40) removePendingChanges];
    }

    else
    {
      *(*(v2 + 32) + 8) = 1;
      v5 = MTLogForCategory(6);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(v2 + 32);
        v8 = 138543362;
        v9 = v6;
        _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ resuming sync service", &v8, 0xCu);
      }

      [*(*(v2 + 32) + 16) resume:0];
      result = [*(v2 + 32) checkForPendingChanges];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)stopSyncService
{
  serializer = self->_serializer;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__MTSyncServiceManager_stopSyncService__block_invoke;
  v3[3] = &unk_1E7B0C9D8;
  v3[4] = self;
  [(NAScheduler *)serializer performBlock:v3];
}

uint64_t __39__MTSyncServiceManager_stopSyncService__block_invoke(uint64_t result)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 8) == 1)
  {
    v1 = result;
    v2 = MTLogForCategory(6);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(v1 + 32);
      v7 = 138543362;
      v8 = v3;
      _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ stopping sync service", &v7, 0xCu);
    }

    [*(*(v1 + 32) + 16) suspend];
    v4 = MTLogForCategory(6);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v1 + 32);
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ removing pending changes", &v7, 0xCu);
    }

    result = [*(*(v1 + 32) + 40) removePendingChanges];
    *(*(v1 + 32) + 8) = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)checkForPendingChanges
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [(MTSyncChangeQueue *)self->_syncChangeQueue hasPendingChanges];
  v4 = MTLogForCategory(6);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 138543362;
      v9 = self;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ still has changes", &v8, 0xCu);
    }

    v6 = [(MTSyncServiceManager *)self requestSync:0];
  }

  else
  {
    if (v5)
    {
      v8 = 138543362;
      v9 = self;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ no pending changes", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)syncChange:(id)a3
{
  v4 = a3;
  serializer = self->_serializer;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__MTSyncServiceManager_syncChange___block_invoke;
  v7[3] = &unk_1E7B0C928;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NAScheduler *)serializer performBlock:v7];
}

void __35__MTSyncServiceManager_syncChange___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  v3 = MTLogForCategory(6);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v10 = 138543618;
      v11 = v5;
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ syncing %{public}@", &v10, 0x16u);
    }

    [*(*(a1 + 32) + 40) enqueueChange:*(a1 + 40)];
    v7 = [*(a1 + 32) requestSync:0];
  }

  else
  {
    if (v4)
    {
      v8 = *(a1 + 32);
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ ignoring sync because we're not started", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)applyChange:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [(MTSyncChangeQueue *)self->_syncChangeQueue resolveChange:a3];
  v5 = MTLogForCategory(6);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v8 = 138543618;
      v9 = self;
      v10 = 2114;
      v11 = v4;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ applying change %{public}@", &v8, 0x16u);
    }

    v5 = [(MTSyncServiceManager *)self syncDataModel];
    [v5 applyChange:v4];
  }

  else if (v6)
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ nothing to apply", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)resetDataStore
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(6);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ resetting data store", &v6, 0xCu);
  }

  [(MTSyncChangeQueue *)self->_syncChangeQueue removePendingChanges];
  v4 = [(MTSyncServiceManager *)self syncDataModel];
  [v4 resetDataStore];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)pendingChangesSent:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(6);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = self;
    v9 = 2048;
    v10 = [v4 count];
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully sent %lu changes", &v7, 0x16u);
  }

  [(MTSyncChangeQueue *)self->_syncChangeQueue dequeueChanges:v4];
  [(MTSyncServiceManager *)self checkForPendingChanges];

  v6 = *MEMORY[0x1E69E9840];
}

- (id)requestSync:(unint64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v5 = MTLogForCategory(6);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = self;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ incremental sync requested", buf, 0xCu);
    }
  }

  v6 = [(MTSyncService *)self->_syncService requestSync:a3];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__MTSyncServiceManager_requestSync___block_invoke;
  v9[3] = &unk_1E7B0D658;
  v9[4] = self;
  [v6 addCompletionBlock:v9];
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

uint64_t __36__MTSyncServiceManager_requestSync___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 48);
  if (a2)
  {
    return [v2 logSyncFailedWithError:a2];
  }

  else
  {
    return [v2 logSyncCompleted];
  }
}

- (void)syncStatusProvider:(id)a3 didChangeSyncStatus:(unint64_t)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = MTLogForCategory(6);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a4 == 3)
  {
    if (v7)
    {
      v9 = 138543362;
      v10 = self;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ sync is disabled.", &v9, 0xCu);
    }

    [(MTSyncServiceManager *)self stopSyncService];
  }

  else
  {
    if (v7)
    {
      v9 = 138543362;
      v10 = self;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ sync isn't disabled.", &v9, 0xCu);
    }

    [(MTSyncServiceManager *)self startSyncService];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)printDiagnostics
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MTSyncServiceManager *)self syncService];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v15 = 138412290;
    v16 = v6;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "Sync Service: %@", &v15, 0xCu);
  }

  v7 = MTLogForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(MTSyncServiceManager *)self syncStatusProvider];
    v9 = [v8 syncStatus];
    v15 = 134217984;
    v16 = v9;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "Sync Status: %lu", &v15, 0xCu);
  }

  v10 = MTLogForCategory(1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(MTSyncServiceManager *)self syncChangeQueue];
    v12 = [v11 pendingChanges];
    v13 = [v12 count];
    v15 = 134217984;
    v16 = v13;
    _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "Pending Changes: %lu", &v15, 0xCu);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)gatherDiagnostics
{
  v17[3] = *MEMORY[0x1E69E9840];
  v16[0] = @"Sync Service";
  v3 = [(MTSyncServiceManager *)self syncService];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v17[0] = v5;
  v16[1] = @"Sync Status";
  v6 = MEMORY[0x1E696AD98];
  v7 = [(MTSyncServiceManager *)self syncStatusProvider];
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(v7, "syncStatus")}];
  v17[1] = v8;
  v16[2] = @"Pending Changes";
  v9 = MEMORY[0x1E696AD98];
  v10 = [(MTSyncServiceManager *)self syncChangeQueue];
  v11 = [v10 pendingChanges];
  v12 = [v9 numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
  v17[2] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (MTSyncDataModel)syncDataModel
{
  WeakRetained = objc_loadWeakRetained(&self->_syncDataModel);

  return WeakRetained;
}

@end
@interface CPLEngineForceSyncTask
- (CPLEngineForceSyncTask)initWithScopeIdentifiers:(id)identifiers engineLibrary:(id)library filter:(id)filter delegate:(id)delegate;
- (CPLEngineForceSyncTaskDelegate)delegate;
- (NSError)discardedError;
- (NSString)description;
- (NSString)simpleDescription;
- (id)_currentTask;
- (id)_phaseDescription;
- (int64_t)forcedTaskPriority;
- (void)_dispatchNextSyncTask;
- (void)_dispatchSyncTask:(id)task;
- (void)_dropCurrentTask;
- (void)_finishWithError:(id)error;
- (void)cancelTask;
- (void)dealloc;
- (void)launchTask;
- (void)reallyCancel;
- (void)reallyLaunch;
- (void)task:(id)task didFinishWithError:(id)error;
@end

@implementation CPLEngineForceSyncTask

- (CPLEngineForceSyncTaskDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSString)description
{
  _phaseDescription = [(CPLEngineForceSyncTask *)self _phaseDescription];
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = objc_opt_class();
  taskIdentifier = [(CPLForceSyncTask *)self taskIdentifier];
  scopeIdentifiers = [(CPLForceSyncTask *)self scopeIdentifiers];
  v8 = [scopeIdentifiers componentsJoinedByString:{@", "}];
  v9 = v8;
  if (_phaseDescription)
  {
    v10 = [v4 initWithFormat:@"<%@ %@ (%@) (%@)>", v5, taskIdentifier, v8, _phaseDescription];
  }

  else
  {
    v10 = [v4 initWithFormat:@"<%@ %@ (%@)>", v5, taskIdentifier, v8, v13];
  }

  v11 = v10;

  return v11;
}

- (id)_phaseDescription
{
  os_unfair_lock_lock(&self->_currentTaskLock);
  phaseDescription = [(CPLEngineSyncTask *)self->_currentTask phaseDescription];
  if (phaseDescription)
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    currentTask = self->_currentTask;
    v6 = [v4 initWithFormat:@"%@ %@", objc_opt_class(), phaseDescription];
  }

  else
  {
    v7 = self->_currentTask;
    v6 = [objc_opt_class() description];
  }

  v8 = v6;
  os_unfair_lock_unlock(&self->_currentTaskLock);

  return v8;
}

- (void)task:(id)task didFinishWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__CPLEngineForceSyncTask_task_didFinishWithError___block_invoke;
  v14[3] = &unk_1E861B1C8;
  v14[4] = self;
  v15 = taskCopy;
  v16 = errorCopy;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_18567;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = errorCopy;
  v12 = taskCopy;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __50__CPLEngineForceSyncTask_task_didFinishWithError___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _currentTask];
  if (v2 == *(a1 + 40))
  {
    [*(a1 + 32) _dropCurrentTask];
    v3 = *(a1 + 48);
    if (v3)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v4 = __CPLForceSyncOSLogDomain();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v5 = *(a1 + 32);
          v6 = *(a1 + 40);
          v7 = *(a1 + 48);
          v14 = 138543874;
          v15 = v5;
          v16 = 2114;
          v17 = v6;
          v18 = 2112;
          v19 = v7;
          _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_ERROR, "%{public}@ failed during %{public}@: %@", &v14, 0x20u);
        }

        v3 = *(a1 + 48);
      }

      [*(a1 + 32) _finishWithError:v3];
    }

    else
    {
      v8 = *(a1 + 32);
      if (v8[45] == 1)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v9 = __CPLForceSyncOSLogDomain();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = *(a1 + 32);
            v11 = *(a1 + 40);
            v14 = 138543618;
            v15 = v10;
            v16 = 2114;
            v17 = v11;
            _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ has been cancelled during %{public}@", &v14, 0x16u);
          }

          v8 = *(a1 + 32);
        }

        v12 = +[CPLErrors operationCancelledError];
        [v8 _finishWithError:v12];
      }

      else
      {
        [*(a1 + 32) _dispatchNextSyncTask];
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)reallyCancel
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__CPLEngineForceSyncTask_reallyCancel__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_18567;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __38__CPLEngineForceSyncTask_reallyCancel__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 45) = 1;
  v2 = *(a1 + 32);
  if (v2[44] == 1)
  {
    v3 = [v2 _currentTask];
    v6 = v3;
    if (v3)
    {
      [v3 cancel];
    }

    else
    {
      v4 = *(a1 + 32);
      v5 = +[CPLErrors operationCancelledError];
      [v4 _finishWithError:v5];
    }
  }
}

- (void)reallyLaunch
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__CPLEngineForceSyncTask_reallyLaunch__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_18567;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __38__CPLEngineForceSyncTask_reallyLaunch__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) scheduler];
  [v2 willRunEngineElement:CPLEngineElementStartForceSync];

  *(*(a1 + 32) + 44) = 1;
  [CPLTransaction beginTransactionWithIdentifier:@"cpl.forcesync" description:@"executing forced sync" keepPower:0];
  [*(*(a1 + 32) + 56) sessionWillStart];
  v3 = *(a1 + 32);
  if (v3[45] == 1)
  {
    v16 = +[CPLErrors operationCancelledError];
    [v3 _finishWithError:?];
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = [(CPLEngineSyncTask *)[CPLCleanupTask alloc] initWithEngineLibrary:*(*(a1 + 32) + 112) session:*(*(a1 + 32) + 56)];
    [v16 addObject:v4];

    v5 = [(CPLEngineMultiscopeSyncTask *)[CPLTransportUpdateTask alloc] initWithEngineLibrary:*(*(a1 + 32) + 112) session:*(*(a1 + 32) + 56)];
    [v16 addObject:v5];

    v6 = [[CPLPullScopesTask alloc] initWithEngineLibrary:*(*(a1 + 32) + 112) session:*(*(a1 + 32) + 56)];
    [v16 addObject:v6];

    v7 = [(CPLEngineMultiscopeSyncTask *)[CPLScopeUpdateTask alloc] initWithEngineLibrary:*(*(a1 + 32) + 112) session:*(*(a1 + 32) + 56)];
    [v16 addObject:v7];

    v8 = [(CPLEngineMultiscopeSyncTask *)[CPLProcessStagedScopesTask alloc] initWithEngineLibrary:*(*(a1 + 32) + 112) session:*(*(a1 + 32) + 56)];
    [v16 addObject:v8];

    if (([*(a1 + 32) forcingProcessedStagedScopes] & 1) == 0)
    {
      if (([*(a1 + 32) forDownload] & 1) == 0)
      {
        v9 = [(CPLEngineMultiscopeSyncTask *)[CPLPushToTransportTask alloc] initWithEngineLibrary:*(*(a1 + 32) + 112) session:*(*(a1 + 32) + 56)];
        [v16 addObject:v9];
        [(CPLPushToTransportTask *)v9 setHighPriority:1];

        v10 = [(CPLEngineMultiscopeSyncTask *)[CPLPushToTransportTask alloc] initWithEngineLibrary:*(*(a1 + 32) + 112) session:*(*(a1 + 32) + 56)];
        [v16 addObject:v10];
      }

      if (([*(a1 + 32) forBackup] & 1) == 0)
      {
        v11 = [(CPLEngineMultiscopeSyncTask *)[CPLPullFromTransportTask alloc] initWithEngineLibrary:*(*(a1 + 32) + 112) session:*(*(a1 + 32) + 56)];
        [v16 addObject:v11];

        v12 = [(CPLEngineMultiscopeSyncTask *)[CPLMingleChangesTask alloc] initWithEngineLibrary:*(*(a1 + 32) + 112) session:*(*(a1 + 32) + 56)];
        [v16 addObject:v12];
      }
    }

    v13 = [v16 objectEnumerator];
    v14 = *(a1 + 32);
    v15 = *(v14 + 64);
    *(v14 + 64) = v13;

    [*(a1 + 32) _dispatchNextSyncTask];
  }
}

- (void)launchTask
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained forceSyncTaskHasBeenLaunched:self];
}

- (void)_finishWithError:(id)error
{
  errorCopy = error;
  taskDidFinishWithErrorBlock = [(CPLEngineForceSyncTask *)self taskDidFinishWithErrorBlock];
  (taskDidFinishWithErrorBlock)[2](taskDidFinishWithErrorBlock, self, errorCopy);

  self->_reallyLaunched = 0;
  [(CPLSyncSession *)self->_fakeSession sessionIsDone];
  fakeSession = self->_fakeSession;
  self->_fakeSession = 0;

  [CPLTransaction endTransactionWithIdentifier:@"cpl.forcesync"];
}

- (void)_dispatchNextSyncTask
{
  v11 = *MEMORY[0x1E69E9840];
  nextObject = [(NSEnumerator *)self->_syncTaskEnumerator nextObject];
  if (nextObject)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLForceSyncOSLogDomain();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        taskIdentifier = [nextObject taskIdentifier];
        v7 = 138543618;
        selfCopy = self;
        v9 = 2114;
        v10 = taskIdentifier;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: launching %{public}@", &v7, 0x16u);
      }
    }

    [(CPLEngineForceSyncTask *)self _dispatchSyncTask:nextObject];
  }

  else
  {
    [(CPLEngineForceSyncTask *)self _finishWithError:0];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_dropCurrentTask
{
  os_unfair_lock_lock(&self->_currentTaskLock);
  currentTask = self->_currentTask;
  self->_currentTask = 0;

  os_unfair_lock_unlock(&self->_currentTaskLock);
}

- (id)_currentTask
{
  os_unfair_lock_lock(&self->_currentTaskLock);
  v3 = self->_currentTask;
  os_unfair_lock_unlock(&self->_currentTaskLock);

  return v3;
}

- (void)_dispatchSyncTask:(id)task
{
  taskCopy = task;
  os_unfair_lock_lock(&self->_currentTaskLock);
  currentTask = self->_currentTask;
  self->_currentTask = taskCopy;
  v6 = taskCopy;

  [(CPLEngineSyncTask *)v6 setTransportUserIdentifier:self->_transportUserIdentifier];
  [(CPLEngineSyncTask *)v6 setForceSync:1];
  [(CPLEngineSyncTask *)v6 setForeground:1];
  [(CPLEngineSyncTask *)v6 setDelegate:self];
  [(CPLEngineSyncTask *)v6 launch];

  os_unfair_lock_unlock(&self->_currentTaskLock);
}

- (void)cancelTask
{
  v4.receiver = self;
  v4.super_class = CPLEngineForceSyncTask;
  [(CPLForceSyncTask *)&v4 cancelTask];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained forceSyncTaskHasBeenCancelled:self];
}

- (void)dealloc
{
  fakeSession = self->_fakeSession;
  if (fakeSession)
  {
    [(CPLSyncSession *)fakeSession sessionWontHappen];
  }

  v4.receiver = self;
  v4.super_class = CPLEngineForceSyncTask;
  [(CPLEngineForceSyncTask *)&v4 dealloc];
}

- (CPLEngineForceSyncTask)initWithScopeIdentifiers:(id)identifiers engineLibrary:(id)library filter:(id)filter delegate:(id)delegate
{
  libraryCopy = library;
  filterCopy = filter;
  delegateCopy = delegate;
  v26.receiver = self;
  v26.super_class = CPLEngineForceSyncTask;
  v14 = [(CPLForceSyncTask *)&v26 initWithScopeIdentifiers:identifiers];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_engineLibrary, library);
    objc_storeStrong(&v15->_filter, filter);
    objc_storeWeak(&v15->_delegate, delegateCopy);
    v16 = dispatch_queue_create("com.apple.cpl.forcesync", 0);
    queue = v15->_queue;
    v15->_queue = v16;

    v15->_currentTaskLock._os_unfair_lock_opaque = 0;
    configuration = [libraryCopy configuration];
    configuration = v15->_configuration;
    v15->_configuration = configuration;

    scheduler = [(CPLEngineLibrary *)v15->_engineLibrary scheduler];
    v21 = [CPLSyncSession detachedSyncSessionWithScheduler:scheduler configuration:v15 scopeFilter:filterCopy];
    fakeSession = v15->_fakeSession;
    v15->_fakeSession = v21;

    date = [MEMORY[0x1E695DF00] date];
    creationDate = v15->_creationDate;
    v15->_creationDate = date;
  }

  return v15;
}

- (NSString)simpleDescription
{
  filter = [(CPLEngineForceSyncTask *)self filter];
  simpleDescription = [filter simpleDescription];

  return simpleDescription;
}

- (int64_t)forcedTaskPriority
{
  if (![(CPLEngineForceSyncTask *)self bypassForceSyncLimitations])
  {
    return 300;
  }

  if ([(CPLEngineForceSyncTask *)self forBackup])
  {
    return 201;
  }

  return 200;
}

- (NSError)discardedError
{
  scopeIdentifiers = [(CPLForceSyncTask *)self scopeIdentifiers];
  v3 = [scopeIdentifiers componentsJoinedByString:{@", "}];
  v4 = [CPLErrors cplErrorWithCode:10 description:@"Will download %@ in background", v3];

  return v4;
}

@end
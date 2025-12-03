@interface CPLBackgroundDownloadsTask
- (BOOL)_isErrorCountingForARetry:(id)retry;
- (CPLBackgroundDownloadsTask)initWithEngineLibrary:(id)library session:(id)session;
- (id)description;
- (unint64_t)_activeTransferTaskCount;
- (unint64_t)_transportTaskCount;
- (void)_completeBackgroundDownloadForResource:(id)resource error:(id)error withTransaction:(id)transaction;
- (void)_downloadTask:(id)task didFinishWithErrorLocked:(id)locked;
- (void)_enqueueTasksLocked;
- (void)_finishTaskLocked;
- (void)_getResourceTypesToDownload:(const unint64_t *)download;
- (void)_launchNecessaryDownloadTasksWithTransaction:(id)transaction;
- (void)_reportDownloadedTasks;
- (void)_transportTaskDidFinish:(id)finish;
- (void)_updateActiveDownloadTaskCount;
- (void)cancel;
- (void)launch;
- (void)taskDidFinishWithError:(id)error;
@end

@implementation CPLBackgroundDownloadsTask

- (void)launch
{
  [(CPLBackgroundDownloadsTask *)self hash];
  kdebug_trace();
  v8.receiver = self;
  v8.super_class = CPLBackgroundDownloadsTask;
  [(CPLEngineSyncTask *)&v8 launch];
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__CPLBackgroundDownloadsTask_launch__block_invoke;
  v7[3] = &unk_1E861A940;
  v7[4] = self;
  v4 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_14534;
  block[3] = &unk_1E861B4E0;
  v10 = v4;
  v5 = lock;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v5, v6);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  taskIdentifier = [(CPLBackgroundDownloadsTask *)self taskIdentifier];
  v6 = [v3 stringWithFormat:@"<%@ %@ [%lu resources using %lu tasks]>", v4, taskIdentifier, -[CPLBackgroundDownloadsTask _activeTransferTaskCount](self, "_activeTransferTaskCount"), -[CPLBackgroundDownloadsTask _transportTaskCount](self, "_transportTaskCount")];

  return v6;
}

- (void)cancel
{
  v8.receiver = self;
  v8.super_class = CPLBackgroundDownloadsTask;
  [(CPLEngineSyncTask *)&v8 cancel];
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__CPLBackgroundDownloadsTask_cancel__block_invoke;
  v7[3] = &unk_1E861A940;
  v7[4] = self;
  v4 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_14534;
  block[3] = &unk_1E861B4E0;
  v10 = v4;
  v5 = lock;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v5, v6);
}

void __36__CPLBackgroundDownloadsTask_cancel__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!*(v2 + 120))
  {
    v3 = +[CPLErrors operationCancelledError];
    v4 = *(a1 + 32);
    v5 = *(v4 + 120);
    *(v4 + 120) = v3;

    v2 = *(a1 + 32);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(v2 + 96);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) cancel];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  *(*(a1 + 32) + 104) = 1;
  v11 = *MEMORY[0x1E69E9840];
}

- (void)taskDidFinishWithError:(id)error
{
  errorCopy = error;
  [(CPLBackgroundDownloadsTask *)self hash];
  kdebug_trace();
  lock = self->_lock;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__CPLBackgroundDownloadsTask_taskDidFinishWithError___block_invoke;
  v10[3] = &unk_1E861B290;
  v10[4] = self;
  v11 = errorCopy;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_14534;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = lock;
  v8 = errorCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

id __53__CPLBackgroundDownloadsTask_taskDidFinishWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 160))
  {
    dispatch_source_cancel(*(v2 + 160));
    v3 = *(a1 + 32);
    v4 = *(v3 + 160);
    *(v3 + 160) = 0;

    v2 = *(a1 + 32);
  }

  if (*(v2 + 152))
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__CPLBackgroundDownloadsTask_taskDidFinishWithError___block_invoke_2;
    v8[3] = &unk_1E8620848;
    v8[4] = v2;
    [v2 withThroughputReporter:v8];
    *(*(a1 + 32) + 152) = 0;
    v2 = *(a1 + 32);
  }

  v5 = *(a1 + 40);
  v7.receiver = v2;
  v7.super_class = CPLBackgroundDownloadsTask;
  return objc_msgSendSuper2(&v7, sel_taskDidFinishWithError_, v5);
}

- (void)_transportTaskDidFinish:(id)finish
{
  v18 = *MEMORY[0x1E69E9840];
  finishCopy = finish;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLTaskOSLogDomain_14541();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = finishCopy;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "Transport task %@ did finish", &buf, 0xCu);
    }
  }

  lock = self->_lock;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__CPLBackgroundDownloadsTask__transportTaskDidFinish___block_invoke;
  v12[3] = &unk_1E861B290;
  v12[4] = self;
  v13 = finishCopy;
  v7 = v12;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v15 = __cpl_dispatch_async_block_invoke_14534;
  v16 = &unk_1E861B4E0;
  v17 = v7;
  v8 = lock;
  v9 = finishCopy;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &buf);
  dispatch_async(v8, v10);

  v11 = *MEMORY[0x1E69E9840];
}

void __54__CPLBackgroundDownloadsTask__transportTaskDidFinish___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) engineLibrary];
  v3 = [v2 store];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__CPLBackgroundDownloadsTask__transportTaskDidFinish___block_invoke_2;
  v5[3] = &unk_1E861B290;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 performBatchedWriteTransactionBarrierWithCompletionBlock:v5];
}

void __54__CPLBackgroundDownloadsTask__transportTaskDidFinish___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 88);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__CPLBackgroundDownloadsTask__transportTaskDidFinish___block_invoke_3;
  v7[3] = &unk_1E861B290;
  v7[4] = v2;
  v8 = v1;
  v4 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_14534;
  block[3] = &unk_1E861B4E0;
  v10 = v4;
  v5 = v3;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v5, v6);
}

unint64_t __54__CPLBackgroundDownloadsTask__transportTaskDidFinish___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 96) removeObject:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 96) count];
  v3 = *(a1 + 32);
  if (!v2 && ((v5 = [v3 isCancelled], v3 = *(a1 + 32), (v5 & 1) != 0) || *(v3 + 104) == 1))
  {

    return [v3 _finishTaskLocked];
  }

  else
  {
    result = [*(v3 + 96) count];
    if (result <= 2)
    {
      result = [*(a1 + 32) isCancelled];
      if ((result & 1) == 0)
      {
        result = *(a1 + 32);
        if ((*(result + 104) & 1) == 0)
        {

          return [result _enqueueTasksLocked];
        }
      }
    }
  }

  return result;
}

- (void)_downloadTask:(id)task didFinishWithErrorLocked:(id)locked
{
  v28 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  lockedCopy = locked;
  ++self->_countOfFinishedDownloadTasksSinceLastReport;
  [(CPLBackgroundDownloadsTask *)self _reportDownloadedTasks];
  shouldStop = self->_shouldStop;
  if (lockedCopy)
  {
    if ([lockedCopy isCPLOperationCancelledError])
    {
      if (!self->_stopError)
      {
        v9 = +[CPLErrors operationCancelledError];
        stopError = self->_stopError;
        self->_stopError = v9;
      }

      goto LABEL_18;
    }

    if ([lockedCopy isCPLOperationDeferredError])
    {
      if (!self->_stopError)
      {
        p_stopError = &self->_stopError;
LABEL_17:
        objc_storeStrong(p_stopError, locked);
        goto LABEL_18;
      }

      goto LABEL_18;
    }

    v13 = [lockedCopy isCPLErrorWithCode:1000];
    badError = self->_badError;
    if (v13)
    {
      if (!badError)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v15 = __CPLTaskOSLogDomain_14541();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            resource = [taskCopy resource];
            v24 = 138412290;
            v25 = resource;
            _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_ERROR, "Downloading %@ in background failed because server is unavailable", &v24, 0xCu);
          }
        }

        p_stopError = &self->_badError;
        goto LABEL_17;
      }

LABEL_18:
      self->_shouldStop = 1;
      goto LABEL_19;
    }

    if (!badError)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v21 = __CPLTaskOSLogDomain_14541();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          resource2 = [taskCopy resource];
          v24 = 138412546;
          v25 = resource2;
          v26 = 2112;
          v27 = lockedCopy;
          _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_ERROR, "Downloading %@ in background failed with error: %@", &v24, 0x16u);
        }
      }

      objc_storeStrong(&self->_badError, locked);
    }

    if ([lockedCopy isCPLThrottlingError] && !self->_prioritizeNonDerivatives)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v23 = __CPLTaskOSLogDomain_14541();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&dword_1DC05A000, v23, OS_LOG_TYPE_DEFAULT, "Downloads have been throttled, prioritizing non-derivatives", &v24, 2u);
        }
      }

      self->_prioritizeNonDerivatives = 1;
    }

    v11 = 144;
  }

  else
  {
    v11 = 136;
  }

  ++*(&self->super.super.isa + v11);
LABEL_19:
  [(CPLBackgroundDownloadsTask *)self _updateActiveDownloadTaskCount];
  if (!shouldStop && self->_shouldStop)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = __CPLTaskOSLogDomain_14541();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(NSMutableArray *)self->_transportTasks count];
        _activeTransferTaskCount = [(CPLBackgroundDownloadsTask *)self _activeTransferTaskCount];
        v24 = 134218240;
        v25 = v18;
        v26 = 2048;
        v27 = _activeTransferTaskCount;
        _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_DEFAULT, "Background downloads have been interrupted, waiting for %lu transport task groups to finish (%lu tasks total)", &v24, 0x16u);
      }
    }

    [(NSMutableArray *)self->_transportTasks makeObjectsPerformSelector:sel_cancel];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_reportDownloadedTasks
{
  dispatch_assert_queue_V2(self->_lock);
  if (!self->_reportTimer)
  {
    v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_lock);
    reportTimer = self->_reportTimer;
    self->_reportTimer = v3;

    v5 = self->_reportTimer;
    v6 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v7 = self->_reportTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __52__CPLBackgroundDownloadsTask__reportDownloadedTasks__block_invoke;
    handler[3] = &unk_1E861A940;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_activate(self->_reportTimer);
  }
}

void __52__CPLBackgroundDownloadsTask__reportDownloadedTasks__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[20])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __52__CPLBackgroundDownloadsTask__reportDownloadedTasks__block_invoke_2;
    v5[3] = &unk_1E8620848;
    v5[4] = v2;
    [v2 withThroughputReporter:v5];
    *(*(a1 + 32) + 152) = 0;
    v3 = *(a1 + 32);
    v4 = *(v3 + 160);
    *(v3 + 160) = 0;
  }
}

- (unint64_t)_transportTaskCount
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __49__CPLBackgroundDownloadsTask__transportTaskCount__block_invoke;
  v8 = &unk_1E861A850;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_taskCountLock);
  v7(v3);
  os_unfair_lock_unlock(&self->_taskCountLock);

  v4 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v4;
}

- (unint64_t)_activeTransferTaskCount
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __54__CPLBackgroundDownloadsTask__activeTransferTaskCount__block_invoke;
  v8 = &unk_1E861A850;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_taskCountLock);
  v7(v3);
  os_unfair_lock_unlock(&self->_taskCountLock);

  v4 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v4;
}

- (void)_updateActiveDownloadTaskCount
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = self->_transportTasks;
  v4 = 0;
  v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        downloadTasks = [*(*(&v17 + 1) + 8 * v7) downloadTasks];
        v9 = [downloadTasks count];

        v4 += v9;
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v13 = __60__CPLBackgroundDownloadsTask__updateActiveDownloadTaskCount__block_invoke;
  v14 = &unk_1E861B100;
  selfCopy = self;
  v16 = v4;
  v10 = v12;
  os_unfair_lock_lock(&self->_taskCountLock);
  v13(v10);
  os_unfair_lock_unlock(&self->_taskCountLock);

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __60__CPLBackgroundDownloadsTask__updateActiveDownloadTaskCount__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 168) = *(a1 + 40);
  result = [*(*(a1 + 32) + 96) count];
  *(*(a1 + 32) + 176) = result;
  return result;
}

- (void)_enqueueTasksLocked
{
  v14 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_lock);
  if ([(CPLEngineSyncTask *)self diskPressureState])
  {
    self->_shouldStop = 1;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLTaskOSLogDomain_14541();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "System had not enough disk space to continue %@", buf, 0xCu);
      }
    }

    if (![(NSMutableArray *)self->_transportTasks count])
    {
      [(CPLBackgroundDownloadsTask *)self _finishTaskLocked];
    }
  }

  else
  {
    dispatch_suspend(self->_lock);
    engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
    store = [engineLibrary store];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49__CPLBackgroundDownloadsTask__enqueueTasksLocked__block_invoke;
    v10[3] = &unk_1E86205B8;
    v10[4] = self;
    v11 = store;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__CPLBackgroundDownloadsTask__enqueueTasksLocked__block_invoke_36;
    v9[3] = &unk_1E86205E0;
    v9[4] = self;
    v6 = store;
    v7 = [v6 performWriteTransactionWithBlock:v10 completionHandler:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __49__CPLBackgroundDownloadsTask__enqueueTasksLocked__block_invoke(uint64_t a1, void *a2)
{
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __49__CPLBackgroundDownloadsTask__enqueueTasksLocked__block_invoke_2;
  v9 = &unk_1E8620940;
  v4 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = v4;
  v5 = a2;
  [v5 do:&v6];
  [*(a1 + 32) _launchNecessaryDownloadTasksWithTransaction:{v5, v6, v7, v8, v9, v10}];
}

void __49__CPLBackgroundDownloadsTask__enqueueTasksLocked__block_invoke_36(uint64_t a1)
{
  if (![*(*(a1 + 32) + 96) count])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLTaskOSLogDomain_14541();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        *v3 = 0;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "No more available background downloads", v3, 2u);
      }
    }

    [*(a1 + 32) _finishTaskLocked];
  }

  dispatch_resume(*(*(a1 + 32) + 88));
}

uint64_t __49__CPLBackgroundDownloadsTask__enqueueTasksLocked__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 32) + 129))
  {
    return 1;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLTaskOSLogDomain_14541();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "Resetting all dequeued tasks", v8, 2u);
    }
  }

  v6 = [*(a1 + 40) downloadQueue];
  v2 = [v6 resetDequeuedBackgroundDownloadTasksWithError:a2];

  *(*(a1 + 32) + 129) = 1;
  return v2;
}

- (void)_completeBackgroundDownloadForResource:(id)resource error:(id)error withTransaction:(id)transaction
{
  resourceCopy = resource;
  errorCopy = error;
  transactionCopy = transaction;
  engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
  store = [engineLibrary store];
  downloadQueue = [store downloadQueue];
  if (errorCopy)
  {
    if ([CPLEngineResourceDownloadQueue shouldRetryDownloadOnError:errorCopy])
    {
      v14 = [(CPLBackgroundDownloadsTask *)self _isErrorCountingForARetry:errorCopy];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __91__CPLBackgroundDownloadsTask__completeBackgroundDownloadForResource_error_withTransaction___block_invoke;
      v30[3] = &unk_1E861E010;
      v31 = downloadQueue;
      v32 = resourceCopy;
      v35 = v14;
      v33 = errorCopy;
      v34 = engineLibrary;
      [transactionCopy do:v30];

      v15 = v31;
    }

    else
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __91__CPLBackgroundDownloadsTask__completeBackgroundDownloadForResource_error_withTransaction___block_invoke_35;
      v26[3] = &unk_1E861FF88;
      v27 = downloadQueue;
      v28 = resourceCopy;
      v29 = engineLibrary;
      [transactionCopy do:v26];

      v15 = v27;
    }
  }

  else
  {
    resourceStorage = [store resourceStorage];
    identity = [resourceCopy identity];
    fileURL = [identity fileURL];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __91__CPLBackgroundDownloadsTask__completeBackgroundDownloadForResource_error_withTransaction___block_invoke_2;
    v20[3] = &unk_1E8620030;
    v21 = downloadQueue;
    v22 = resourceCopy;
    v23 = resourceStorage;
    v24 = fileURL;
    v25 = engineLibrary;
    v19 = fileURL;
    v15 = resourceStorage;
    [transactionCopy do:v20];
  }
}

uint64_t __91__CPLBackgroundDownloadsTask__completeBackgroundDownloadForResource_error_withTransaction___block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v3 = [*(a1 + 32) reenqueueBackgroundDownloadTaskForResource:*(a1 + 40) bumpRetryCount:*(a1 + 64) didDiscard:&v11 error:a2];
  if (v3)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLTaskOSLogDomain_14541();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        if (v11)
        {
          v5 = @"Discarded";
        }

        else if (*(a1 + 64))
        {
          v5 = @"Bumped retry count";
        }

        else
        {
          v5 = @"Reenqueued";
        }

        v6 = *(a1 + 40);
        v7 = *(a1 + 48);
        *buf = 138412802;
        v13 = v5;
        v14 = 2112;
        v15 = v6;
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "%@ %@ for background download (error: %@)", buf, 0x20u);
      }
    }

    if (v11 == 1)
    {
      v8 = [*(a1 + 40) identity];
      [v8 setFileURL:0];

      [*(a1 + 56) notifyAttachedObjectsResourceDidFailBackgroundDownloadOfResource:*(a1 + 40)];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t __91__CPLBackgroundDownloadsTask__completeBackgroundDownloadForResource_error_withTransaction___block_invoke_35(id *a1, uint64_t a2)
{
  v3 = [a1[4] removeBackgroundDownloadTaskForResource:a1[5] error:a2];
  if (v3)
  {
    v4 = [a1[5] identity];
    [v4 setFileURL:0];

    [a1[6] notifyAttachedObjectsResourceDidFailBackgroundDownloadOfResource:a1[5]];
  }

  return v3;
}

uint64_t __91__CPLBackgroundDownloadsTask__completeBackgroundDownloadForResource_error_withTransaction___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) markBackgroundDownloadTaskForResourceAsSuceeded:*(a1 + 40) error:a2];
  if (result)
  {
    result = [*(a1 + 48) storeDownloadedResource:*(a1 + 40) atURL:*(a1 + 56) error:a2];
    if (result)
    {
      v5 = [*(a1 + 40) identity];
      [v5 setFileURL:0];

      [*(a1 + 64) notifyAttachedObjectsResourceDidDownloadInBackground:*(a1 + 40)];
      return 1;
    }
  }

  return result;
}

- (BOOL)_isErrorCountingForARetry:(id)retry
{
  retryCopy = retry;
  if ([retryCopy isCPLOperationCancelledError] & 1) != 0 || (objc_msgSend(retryCopy, "isCPLErrorWithCode:", 81) & 1) != 0 || (objc_msgSend(retryCopy, "isCPLOperationDeferredError"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [retryCopy isCPLThrottlingError] ^ 1;
  }

  return v4;
}

- (void)_launchNecessaryDownloadTasksWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  if (![(CPLEngineSyncTask *)self isCancelled]&& !self->_shouldStop)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __75__CPLBackgroundDownloadsTask__launchNecessaryDownloadTasksWithTransaction___block_invoke;
    v5[3] = &unk_1E8620478;
    v5[4] = self;
    [transactionCopy do:v5];
    [(CPLBackgroundDownloadsTask *)self _updateActiveDownloadTaskCount];
  }
}

uint64_t __75__CPLBackgroundDownloadsTask__launchNecessaryDownloadTasksWithTransaction___block_invoke(uint64_t a1, uint64_t *a2)
{
  v102 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v55 = [*(a1 + 32) engineLibrary];
  v61 = [v55 store];
  v69 = [v61 downloadQueue];
  v53 = [v55 transport];
  v65 = [v61 resourceStorage];
  v59 = [v55 scheduler];
  v58 = [MEMORY[0x1E696AC08] defaultManager];
  v98 = 0;
  [*v2 _getResourceTypesToDownload:&v98];
  v96[0] = 0;
  v96[1] = v96;
  v96[2] = 0x2020000000;
  v97 = 0;
  v71 = [v61 transactionTransportScopeMapping];
  v51 = 0;
  v52 = 0;
  while (2)
  {
    if ([*(*(a1 + 32) + 96) count] > 2)
    {
      goto LABEL_67;
    }

    v54 = [CPLEngineResourceDownloadTask maximumResourceDownloadSizeForResourceType:*v98];
    v57 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{0, objc_msgSend(*(*(a1 + 32) + 192), "count")}];
    v3 = *(*(a1 + 32) + 200);
LABEL_4:
    if (-[NSObject count](v57, "count") && [*(*(a1 + 32) + 96) count] <= 2)
    {
      v4 = [*(*(a1 + 32) + 192) objectAtIndexedSubscript:v3];
      v64 = [v4 unsignedIntegerValue];

      v5 = [v69 dequeueNextBackgroundDownloadTasksForResourceType:*v98 andIntent:v64 maximumSize:v54 maximumCount:200 error:a2];
      v60 = v5;
      if (!v5)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v43 = __CPLTaskOSLogDomain_14541();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v44 = [CPLResource shortDescriptionForResourceType:*v98];
            v45 = *a2;
            *buf = 138412546;
            *&buf[4] = v44;
            *&buf[12] = 2112;
            *&buf[14] = v45;
            _os_log_impl(&dword_1DC05A000, v43, OS_LOG_TYPE_ERROR, "Failed to dequeue resources to download in background for %@: %@", buf, 0x16u);
          }
        }

        obj = 0;
LABEL_59:

        v46 = 0;
LABEL_60:

        goto LABEL_61;
      }

      if (![v5 count])
      {
        v36 = [v57 indexGreaterThanIndex:v3];
        [v57 removeIndex:v3];
        v3 = v36;
        goto LABEL_39;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v6 = __CPLTaskOSLogDomain_14541();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v7 = [v60 count];
          v8 = [CPLResource shortDescriptionForResourceType:*v98];
          *buf = 134218242;
          *&buf[4] = v7;
          *&buf[12] = 2112;
          *&buf[14] = v8;
          _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEBUG, "Dequeued %lu resources (%@) to download in background", buf, 0x16u);
        }
      }

      v95[0] = MEMORY[0x1E69E9820];
      v95[1] = 3221225472;
      v95[2] = __75__CPLBackgroundDownloadsTask__launchNecessaryDownloadTasksWithTransaction___block_invoke_8;
      v95[3] = &unk_1E861DF00;
      v95[4] = *(a1 + 32);
      v56 = [v53 resourcesDownloadTaskWithCompletionHandler:v95];
      v63 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      obj = v60;
      v9 = 0;
      v10 = [obj countByEnumeratingWithState:&v91 objects:v101 count:16];
      if (!v10)
      {
        goto LABEL_28;
      }

      v67 = *v92;
      while (1)
      {
        v11 = 0;
        v66 = v10;
        do
        {
          if (*v92 != v67)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v91 + 1) + 8 * v11);
          v90 = 0;
          v13 = v12;
          v14 = [v65 createTempDestinationURLForResource:v13 error:a2];
          if (!v14)
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v37 = __CPLTaskOSLogDomain_14541();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                v38 = *a2;
                *buf = 138412546;
                *&buf[4] = v13;
                *&buf[12] = 2112;
                *&buf[14] = v38;
                _os_log_impl(&dword_1DC05A000, v37, OS_LOG_TYPE_ERROR, "Unable to create a temporary URL for background download for %@: %@", buf, 0x16u);
              }
            }

LABEL_37:
            v35 = 0;
            goto LABEL_38;
          }

          v15 = [v13 identity];
          [v15 setFileURL:v14];

          v89 = v13;
          v88 = 0;
          v87 = 0;
          v86 = 0;
          v74 = [v69 cloudResourceForLocalResource:&v89 cloudRecord:&v88 target:&v87 shouldNotTrustCaches:&v90 allowUnsafeClientCache:0 transportScopeMapping:v71 error:&v86];
          v16 = v89;

          v72 = v88;
          v73 = v87;
          v17 = v86;
          if (v74)
          {
            v18 = [v16 identity];
            v19 = [v18 fileSize];

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            v100 = 0;
            v20 = [CPLEngineResourceDownloadTask alloc];
            v21 = [MEMORY[0x1E696AFB0] UUID];
            v22 = [v21 UUIDString];
            v83[0] = MEMORY[0x1E69E9820];
            v83[1] = 3221225472;
            v83[2] = __75__CPLBackgroundDownloadsTask__launchNecessaryDownloadTasksWithTransaction___block_invoke_3;
            v83[3] = &unk_1E861DF48;
            v85 = v96;
            v84 = v59;
            v82[0] = MEMORY[0x1E69E9820];
            v82[1] = 3221225472;
            v82[2] = __75__CPLBackgroundDownloadsTask__launchNecessaryDownloadTasksWithTransaction___block_invoke_4;
            v82[3] = &unk_1E861DF70;
            v23 = *(a1 + 32);
            v82[5] = buf;
            v82[6] = v19;
            v82[4] = v23;
            v75[0] = MEMORY[0x1E69E9820];
            v75[1] = 3221225472;
            v75[2] = __75__CPLBackgroundDownloadsTask__launchNecessaryDownloadTasksWithTransaction___block_invoke_6;
            v75[3] = &unk_1E861DFE8;
            v80 = buf;
            v81 = v19;
            v75[4] = v23;
            v76 = v61;
            v24 = v16;
            v77 = v24;
            v78 = v58;
            v79 = v14;
            v25 = [(CPLEngineResourceDownloadTask *)v20 initWithResource:v24 taskIdentifier:v22 target:v73 launchHandler:&__block_literal_global_14578 cancelHandler:&__block_literal_global_14_14579 didStartHandler:v83 progressHandler:v82 completionHandler:v75];

            [(CPLEngineResourceDownloadTask *)v25 associateCloudResource:v74 ofRecord:v72];
            [(CPLEngineResourceDownloadTask *)v25 setTransportScopeMapping:v71];
            v26 = [[CPLResourceTransferTaskOptions alloc] initWithIntent:v64 priority:2];
            [(CPLResourceTransferTask *)v25 setOptions:v26];
            v27 = [v24 identity];
            v28 = [v27 fileSize];

            [v63 addObject:v25];
            v9 += v28;
            _Block_object_dispose(buf, 8);
LABEL_22:
            v30 = 1;
            goto LABEL_23;
          }

          v29 = [v16 identity];
          [v29 setFileURL:0];

          if ([v69 removeBackgroundDownloadTaskForResource:v13 error:a2])
          {
            [v55 notifyAttachedObjectsResourceDidFailBackgroundDownloadOfResource:v13];
            goto LABEL_22;
          }

          v30 = 0;
LABEL_23:

          if (!v30)
          {
            goto LABEL_37;
          }

          ++v11;
        }

        while (v66 != v11);
        v31 = [obj countByEnumeratingWithState:&v91 objects:v101 count:16];
        v10 = v31;
        if (!v31)
        {
LABEL_28:

          if ([v63 count])
          {
            v32 = [v63 count];
            [v56 setDownloadTasks:v63];
            v33 = v9;
            v34 = [v69 createGroupForBackgroundDownloadsOfResourceType:*v98 transferIntent:v64 transport:v53];
            [v34 setRoughCPLRecordCount:{objc_msgSend(v63, "count")}];
            [v34 setRoughCPLDownloadEstimatedSize:v33];
            [*(*(a1 + 32) + 96) addObject:v56];
            [*(a1 + 32) launchTransportTask:v56 withTransportGroup:v34];

            v51 += v32;
            ++v52;
          }

          v3 = [v57 indexGreaterThanIndex:v3];
          v35 = 1;
LABEL_38:

          if ((v35 & 1) == 0)
          {
            goto LABEL_59;
          }

LABEL_39:
          if (v3 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v3 = [v57 firstIndex];
          }

          goto LABEL_4;
        }
      }
    }

    if ([v57 count])
    {
      *(*(a1 + 32) + 200) = v3;
LABEL_52:

      continue;
    }

    break;
  }

  if (*v98 != -1)
  {
    if (_CPLSilentLogging)
    {
      ++v98;
    }

    else
    {
      v39 = __CPLTaskOSLogDomain_14541();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        v40 = [CPLResource shortDescriptionForResourceType:*v98];
        *buf = 138412290;
        *&buf[4] = v40;
        _os_log_impl(&dword_1DC05A000, v39, OS_LOG_TYPE_DEBUG, "No resources of type '%@' to download in background", buf, 0xCu);
      }

      ++v98;
      if ((_CPLSilentLogging & 1) == 0)
      {
        v41 = __CPLTaskOSLogDomain_14541();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          v42 = [CPLResource shortDescriptionForResourceType:*v98];
          *buf = 138412290;
          *&buf[4] = v42;
          _os_log_impl(&dword_1DC05A000, v41, OS_LOG_TYPE_DEBUG, "Will look for resources of type '%@'", buf, 0xCu);
        }
      }
    }

    goto LABEL_52;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v49 = __CPLTaskOSLogDomain_14541();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1DC05A000, v49, OS_LOG_TYPE_DEBUG, "No more resources to download in background", buf, 2u);
    }
  }

  *(*(a1 + 32) + 200) = 0;

LABEL_67:
  if (v52 && (_CPLSilentLogging & 1) == 0)
  {
    v50 = __CPLTaskOSLogDomain_14541();
    v57 = v50;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = v52;
      *&buf[12] = 2048;
      *&buf[14] = v51;
      _os_log_impl(&dword_1DC05A000, v50, OS_LOG_TYPE_DEFAULT, "Launched %lu background download tasks (%lu resources)", buf, 0x16u);
    }

    v46 = 1;
    goto LABEL_60;
  }

  v46 = 1;
LABEL_61:

  _Block_object_dispose(v96, 8);
  v47 = *MEMORY[0x1E69E9840];
  return v46;
}

uint64_t __75__CPLBackgroundDownloadsTask__launchNecessaryDownloadTasksWithTransaction___block_invoke_3(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return [*(result + 32) willRunEngineElement:CPLEngineElementDownloadResourcesInBackground];
  }

  return result;
}

void *__75__CPLBackgroundDownloadsTask__launchNecessaryDownloadTasksWithTransaction___block_invoke_4(void *result, float a2)
{
  v3 = ((a2 - *(*(result[5] + 8) + 24)) * result[6]);
  if (v3)
  {
    v4 = result;
    v5 = result[4];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __75__CPLBackgroundDownloadsTask__launchNecessaryDownloadTasksWithTransaction___block_invoke_5;
    v6[3] = &__block_descriptor_40_e35_v16__0__CPLSyncThroughputReporter_8l;
    v6[4] = v3;
    result = [v5 withThroughputReporter:v6];
    *(*(v4[5] + 8) + 24) = a2;
  }

  return result;
}

void __75__CPLBackgroundDownloadsTask__launchNecessaryDownloadTasksWithTransaction___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ((1.0 - *(*(*(a1 + 72) + 8) + 24)) * *(a1 + 80));
  if (v7)
  {
    v8 = *(a1 + 32);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __75__CPLBackgroundDownloadsTask__launchNecessaryDownloadTasksWithTransaction___block_invoke_7;
    v27[3] = &__block_descriptor_40_e35_v16__0__CPLSyncThroughputReporter_8l;
    v27[4] = v7;
    [v8 withThroughputReporter:v27];
  }

  v9 = v6;
  v10 = v9;
  if (!v9)
  {
    if ([*(a1 + 32) isCancelled])
    {
      v10 = +[CPLErrors operationCancelledError];
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = *(*(a1 + 32) + 88);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __75__CPLBackgroundDownloadsTask__launchNecessaryDownloadTasksWithTransaction___block_invoke_8;
  v19[3] = &unk_1E861DFC0;
  v12 = *(a1 + 40);
  v13 = *(a1 + 32);
  v20 = v12;
  v21 = v13;
  v22 = *(a1 + 48);
  v23 = v10;
  v24 = v5;
  v25 = *(a1 + 56);
  v26 = *(a1 + 64);
  v14 = v19;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_14534;
  block[3] = &unk_1E861B4E0;
  v29 = v14;
  v15 = v11;
  v16 = v5;
  v17 = v10;
  v18 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v15, v18);
}

void __75__CPLBackgroundDownloadsTask__launchNecessaryDownloadTasksWithTransaction___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 transportTask];
  [v3 cancelDownloadTask:v2];
}

void __75__CPLBackgroundDownloadsTask__launchNecessaryDownloadTasksWithTransaction___block_invoke_8(uint64_t a1)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__CPLBackgroundDownloadsTask__launchNecessaryDownloadTasksWithTransaction___block_invoke_9;
  v9[3] = &unk_1E86200D0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v9[4] = *(a1 + 40);
  v10 = v3;
  v11 = *(a1 + 56);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__CPLBackgroundDownloadsTask__launchNecessaryDownloadTasksWithTransaction___block_invoke_10;
  v4[3] = &unk_1E861DF98;
  v4[4] = *(a1 + 40);
  v5 = *(a1 + 64);
  v6 = *(a1 + 56);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  [v2 performBatchedWriteTransactionWithBlock:v9 completionHandler:v4];
}

void __75__CPLBackgroundDownloadsTask__launchNecessaryDownloadTasksWithTransaction___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 88);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__CPLBackgroundDownloadsTask__launchNecessaryDownloadTasksWithTransaction___block_invoke_11;
  v11[3] = &unk_1E861B2B8;
  v11[4] = v5;
  v12 = v4;
  v13 = v3;
  v14 = *(a1 + 48);
  v7 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_14534;
  block[3] = &unk_1E861B4E0;
  v16 = v7;
  v8 = v6;
  v9 = v3;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);

  [*(a1 + 56) removeItemAtURL:*(a1 + 64) error:0];
}

void __75__CPLBackgroundDownloadsTask__launchNecessaryDownloadTasksWithTransaction___block_invoke_11(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) error];
  v5 = v4;
  if (!v4)
  {
    v4 = *(a1 + 56);
  }

  [v2 _downloadTask:v3 didFinishWithErrorLocked:v4];
}

- (void)_getResourceTypesToDownload:(const unint64_t *)download
{
  if (self->_prioritizeNonDerivatives)
  {
    [CPLResource getAllResourceTypesToDownloadPrioritizeNonDerivatives:download];
  }

  else
  {
    [CPLResource getAllResourceTypesToDownload:download];
  }
}

- (void)_finishTaskLocked
{
  v13 = *MEMORY[0x1E69E9840];
  if ((self->_successfullyDownloadedResourcesCount || self->_failedDownloadedResourcesCount) && (_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLTaskOSLogDomain_14541();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      successfullyDownloadedResourcesCount = self->_successfullyDownloadedResourcesCount;
      failedDownloadedResourcesCount = self->_failedDownloadedResourcesCount;
      v9 = 134218240;
      v10 = successfullyDownloadedResourcesCount;
      v11 = 2048;
      v12 = failedDownloadedResourcesCount;
      _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Successfully downloaded %lu resources in background (%lu failed)", &v9, 0x16u);
    }
  }

  [(NSMutableArray *)self->_transportTasks removeAllObjects];
  badError = self->_badError;
  if (badError || self->_stopError)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLTaskOSLogDomain_14541();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "Some background downloads failed, we will need another pass on background downloads", &v9, 2u);
      }

      badError = self->_badError;
    }

    if (!badError)
    {
      badError = self->_stopError;
    }
  }

  else
  {
    badError = 0;
  }

  [(CPLBackgroundDownloadsTask *)self taskDidFinishWithError:badError];
  v8 = *MEMORY[0x1E69E9840];
}

- (CPLBackgroundDownloadsTask)initWithEngineLibrary:(id)library session:(id)session
{
  v14.receiver = self;
  v14.super_class = CPLBackgroundDownloadsTask;
  v4 = [(CPLEngineSyncTask *)&v14 initWithEngineLibrary:library session:session];
  if (v4)
  {
    v5 = CPLCopyDefaultSerialQueueAttributes();
    v6 = dispatch_queue_create("com.apple.cpl.backgrounddownloads.lock", v5);
    lock = v4->_lock;
    v4->_lock = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    transportTasks = v4->_transportTasks;
    v4->_transportTasks = v8;

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v4->_prioritizeNonDerivatives = [standardUserDefaults BOOLForKey:@"CPLPrioritizeNonDerivativesDownloads"];

    v11 = +[CPLResourceTransferTaskOptions intentsToBackgroundDownload];
    intentsToDownload = v4->_intentsToDownload;
    v4->_intentsToDownload = v11;

    v4->_taskCountLock._os_unfair_lock_opaque = 0;
  }

  return v4;
}

@end
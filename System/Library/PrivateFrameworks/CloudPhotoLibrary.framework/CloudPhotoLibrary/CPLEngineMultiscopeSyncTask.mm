@interface CPLEngineMultiscopeSyncTask
- (BOOL)shouldProcessScope:(id)scope inTransaction:(id)transaction;
- (BOOL)shouldStartTaskInTransaction:(id)transaction;
- (CPLEngineMultiscopeSyncTask)initWithEngineLibrary:(id)library session:(id)session;
- (id)_currentScope;
- (id)_currentTask;
- (id)newScopedTaskWithScope:(id)scope session:(id)session transportScope:(id)transportScope clientCacheIdentifier:(id)identifier;
- (id)phaseDescription;
- (id)phaseDescriptionLastChangeDate:(id *)date;
- (void)_launchTaskForNextScope;
- (void)_setCurrentTask:(id)task;
- (void)cancel;
- (void)dispatchAsyncWithCurrentSubtask:(id)subtask;
- (void)launch;
- (void)setForceSync:(BOOL)sync;
- (void)setForeground:(BOOL)foreground;
- (void)task:(id)task didFinishWithError:(id)error;
@end

@implementation CPLEngineMultiscopeSyncTask

- (id)_currentTask
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__15731;
  v10 = __Block_byref_object_dispose__15732;
  v11 = 0;
  currentTaskQueue = self->_currentTaskQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__CPLEngineMultiscopeSyncTask__currentTask__block_invoke;
  v5[3] = &unk_1E861A850;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(currentTaskQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)launch
{
  v9.receiver = self;
  v9.super_class = CPLEngineMultiscopeSyncTask;
  [(CPLEngineSyncTask *)&v9 launch];
  engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
  store = [engineLibrary store];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__CPLEngineMultiscopeSyncTask_launch__block_invoke;
  v7[3] = &unk_1E86205B8;
  v7[4] = self;
  v8 = store;
  v5 = store;
  v6 = [v5 performReadTransactionWithBlock:v7];
}

void __37__CPLEngineMultiscopeSyncTask_launch__block_invoke(uint64_t a1, void *a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 error];

  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v3 error];
    [v5 taskDidFinishWithError:v6];
LABEL_36:

    goto LABEL_37;
  }

  if ([*(a1 + 32) shouldStartTaskInTransaction:v3])
  {
    v7 = [*(a1 + 40) clientCacheIdentifier];
    v8 = *(a1 + 32);
    v9 = *(v8 + 136);
    *(v8 + 136) = v7;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = *(a1 + 32);
    v12 = *(v11 + 112);
    *(v11 + 112) = v10;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14 = *(a1 + 32);
    v15 = *(v14 + 128);
    *(v14 + 128) = v13;

    v16 = [*(a1 + 32) session];
    v17 = [v16 scopeFilter];
    v18 = *(a1 + 32);
    v19 = *(v18 + 144);
    *(v18 + 144) = v17;

    v20 = [*(a1 + 32) scopeFilterInTransaction:v3];
    v21 = *(a1 + 32);
    v22 = *(v21 + 152);
    *(v21 + 152) = v20;

    v58 = [*(a1 + 32) shouldSkipScopesWithMissingTransportScope];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v23 = [*(a1 + 32) enumerateScopesForTaskInTransaction:v3];
    v24 = [v23 countByEnumeratingWithState:&v62 objects:v66 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v63;
LABEL_6:
      v27 = 0;
      while (1)
      {
        if (*v63 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v62 + 1) + 8 * v27);
        if ([*(a1 + 32) isCancelled])
        {
          goto LABEL_20;
        }

        v29 = [v28 scopeIdentifier];
        v30 = [*(a1 + 32) shouldProcessScope:v28 inTransaction:v3];
        v31 = *(a1 + 32);
        if ((v30 & 1) == 0)
        {
          if (!*(v31 + 120))
          {
            [0 addObject:v28];
          }

          goto LABEL_18;
        }

        v32 = [*(v31 + 160) transportScopeForScope:v28];
        if (v32)
        {
          break;
        }

        if ((v58 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_17:

LABEL_18:
        if (v25 == ++v27)
        {
          v25 = [v23 countByEnumeratingWithState:&v62 objects:v66 count:16];
          if (v25)
          {
            goto LABEL_6;
          }

          goto LABEL_20;
        }
      }

      [*(*(a1 + 32) + 128) setObject:v32 forKeyedSubscript:v29];
LABEL_16:
      [*(*(a1 + 32) + 112) addObject:v28];
      goto LABEL_17;
    }

LABEL_20:

    v33 = [*(a1 + 32) isCancelled];
    v34 = *(a1 + 32);
    if (v33)
    {
      v35 = *(v34 + 88);
      v36 = v61;
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __37__CPLEngineMultiscopeSyncTask_launch__block_invoke_2;
      v61[3] = &unk_1E861A940;
      v61[4] = v34;
LABEL_35:
      v55 = v36;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __cpl_dispatch_async_block_invoke_15717;
      v68 = &unk_1E861B4E0;
      v69 = v55;
      v6 = v35;
      v56 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
      dispatch_async(v6, v56);

      goto LABEL_36;
    }

    v39 = [*(v34 + 112) count];
    v40 = *(a1 + 32);
    if (!v39)
    {
      v35 = *(v40 + 88);
      v36 = v59;
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __37__CPLEngineMultiscopeSyncTask_launch__block_invoke_2_121;
      v59[3] = &unk_1E861A940;
      v59[4] = v40;
      goto LABEL_35;
    }

    if (*(v40 + 120))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v41 = __CPLTaskOSLogDomain_15620();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = *(a1 + 32);
          v43 = objc_opt_class();
          v44 = *(*(a1 + 32) + 112);
          v45 = v43;
          v46 = [v44 count];
          v47 = [*(*(a1 + 32) + 120) count];
          *buf = 138412802;
          *&buf[4] = v43;
          *&buf[12] = 2048;
          *&buf[14] = v46;
          *&buf[22] = 2048;
          v68 = v47;
          v48 = "Launching %@ for %ld scopes (ignored %ld)";
          v49 = v41;
          v50 = 32;
LABEL_32:
          _os_log_impl(&dword_1DC05A000, v49, OS_LOG_TYPE_DEFAULT, v48, buf, v50);

          goto LABEL_33;
        }

        goto LABEL_33;
      }
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v41 = __CPLTaskOSLogDomain_15620();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v51 = *(a1 + 32);
        v52 = objc_opt_class();
        v53 = *(*(a1 + 32) + 112);
        v45 = v52;
        v54 = [v53 count];
        *buf = 138412546;
        *&buf[4] = v52;
        *&buf[12] = 2048;
        *&buf[14] = v54;
        v48 = "Launching %@ for %ld scopes";
        v49 = v41;
        v50 = 22;
        goto LABEL_32;
      }

LABEL_33:

      v40 = *(a1 + 32);
    }

    v35 = *(v40 + 88);
    v36 = v60;
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __37__CPLEngineMultiscopeSyncTask_launch__block_invoke_120;
    v60[3] = &unk_1E861A940;
    v60[4] = v40;
    goto LABEL_35;
  }

  v37 = *(a1 + 32);
  v38 = +[CPLErrors operationCancelledError];
  [v37 taskDidFinishWithError:v38];

LABEL_37:
  v57 = *MEMORY[0x1E69E9840];
}

- (id)phaseDescription
{
  _currentTask = [(CPLEngineMultiscopeSyncTask *)self _currentTask];
  scope = [_currentTask scope];
  scopeIdentifier = [scope scopeIdentifier];

  phaseDescription = [_currentTask phaseDescription];
  v7 = phaseDescription;
  if (scopeIdentifier && phaseDescription)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"for %@ [%@]", scopeIdentifier, phaseDescription];
    phaseDescription2 = LABEL_6:;
    goto LABEL_7;
  }

  if (scopeIdentifier)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"for %@", scopeIdentifier, v11];
    goto LABEL_6;
  }

  if (phaseDescription)
  {
    phaseDescription2 = phaseDescription;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CPLEngineMultiscopeSyncTask;
    phaseDescription2 = [(CPLEngineSyncTask *)&v12 phaseDescription];
  }

LABEL_7:
  v9 = phaseDescription2;

  return v9;
}

- (id)phaseDescriptionLastChangeDate:(id *)date
{
  _currentTask = [(CPLEngineMultiscopeSyncTask *)self _currentTask];
  scope = [_currentTask scope];
  scopeIdentifier = [scope scopeIdentifier];

  v8 = [_currentTask phaseDescriptionLastChangeDate:date];
  v9 = v8;
  if (scopeIdentifier && v8)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"for %@ [%@]", scopeIdentifier, v8];
    v10 = LABEL_6:;
    goto LABEL_7;
  }

  if (scopeIdentifier)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"for %@", scopeIdentifier, v13];
    goto LABEL_6;
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = CPLEngineMultiscopeSyncTask;
    v10 = [(CPLEngineSyncTask *)&v14 phaseDescriptionLastChangeDate:date];
  }

LABEL_7:
  v11 = v10;

  return v11;
}

- (void)task:(id)task didFinishWithError:(id)error
{
  v41 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  errorCopy = error;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __55__CPLEngineMultiscopeSyncTask_task_didFinishWithError___block_invoke;
  v35[3] = &unk_1E861B330;
  v35[4] = self;
  v9 = taskCopy;
  v36 = v9;
  v38 = a2;
  v10 = errorCopy;
  v37 = v10;
  v11 = MEMORY[0x1E128EBA0](v35);
  domain = [v10 domain];
  v13 = [domain isEqualToString:@"CloudPhotoLibraryErrorDomain"];

  if (!v13)
  {
    goto LABEL_17;
  }

  code = [v10 code];
  v15 = code;
  if (code > 0x21 || ((1 << code) & 0x300840000) == 0)
  {
    if (code != 1002)
    {
LABEL_17:
      v11[2](v11);
      goto LABEL_18;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v25 = __CPLTaskOSLogDomain_15620();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        _currentScope = [(CPLEngineMultiscopeSyncTask *)self _currentScope];
        scopeIdentifier = [_currentScope scopeIdentifier];
        *buf = 138412290;
        v40 = scopeIdentifier;
        _os_log_impl(&dword_1DC05A000, v25, OS_LOG_TYPE_DEFAULT, "Detected some feature has been disabled while processing %@ - will update disabled features", buf, 0xCu);
      }
    }

    engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
    scheduler = [engineLibrary scheduler];

    [scheduler noteStoreNeedsToUpdateDisabledFeatures];
LABEL_16:

    goto LABEL_17;
  }

  engineLibrary2 = [(CPLEngineSyncTask *)self engineLibrary];
  scheduler = [engineLibrary2 store];

  scopesForTask = [v9 scopesForTask];
  v19 = [scopesForTask count];
  session = [(CPLEngineSyncTask *)self session];
  v21 = session;
  if (!v19)
  {
    [session requestSyncStateAtEndOfSyncSession:4 reschedule:0];

    goto LABEL_16;
  }

  if (v15 == 23)
  {
    v22 = 4;
  }

  else
  {
    v22 = 5;
  }

  [session requestSyncStateAtEndOfSyncSession:v22 reschedule:0];

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __55__CPLEngineMultiscopeSyncTask_task_didFinishWithError___block_invoke_134;
  v32[3] = &unk_1E86205B8;
  v33 = scopesForTask;
  selfCopy = self;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __55__CPLEngineMultiscopeSyncTask_task_didFinishWithError___block_invoke_137;
  v30[3] = &unk_1E86205B8;
  v30[4] = self;
  v31 = v10;
  v23 = scopesForTask;
  v24 = [scheduler performWriteTransactionWithBlock:v32 completionHandler:v30];

LABEL_18:
  v29 = *MEMORY[0x1E69E9840];
}

void __55__CPLEngineMultiscopeSyncTask_task_didFinishWithError___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 88);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__CPLEngineMultiscopeSyncTask_task_didFinishWithError___block_invoke_2;
  v10[3] = &unk_1E861B330;
  v10[4] = v3;
  v11 = v2;
  v9 = *(a1 + 48);
  v5 = v9;
  v12 = v9;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_15717;
  block[3] = &unk_1E861B4E0;
  v14 = v6;
  v7 = v4;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v8);
}

void __55__CPLEngineMultiscopeSyncTask_task_didFinishWithError___block_invoke_134(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__CPLEngineMultiscopeSyncTask_task_didFinishWithError___block_invoke_2_135;
  v6[3] = &unk_1E8620940;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [a2 do:v6];
}

void __55__CPLEngineMultiscopeSyncTask_task_didFinishWithError___block_invoke_137(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLTaskOSLogDomain_15620();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [v3 error];
        v10 = 138412290;
        v11 = v6;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "Failed to mark scopes as needing update: %@", &v10, 0xCu);
      }
    }

    v7 = *(a1 + 32);
    v8 = [v3 error];
    [v7 taskDidFinishWithError:v8];
  }

  else
  {
    [*(a1 + 32) taskDidFinishWithError:*(a1 + 40)];
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __55__CPLEngineMultiscopeSyncTask_task_didFinishWithError___block_invoke_2_135(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v21;
    while (2)
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v20 + 1) + 8 * v9);
        if ((_CPLSilentLogging & 1) == 0)
        {
          v12 = __CPLTaskOSLogDomain_15620();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v25 = v11;
            _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEFAULT, "%@ will need to be updated from the transport", buf, 0xCu);
          }
        }

        v13 = *(*(a1 + 40) + 160);
        v19 = v10;
        v14 = [v13 setScopeNeedsUpdateFromTransport:v11 error:&v19];
        v7 = v19;

        if (!v14)
        {

          if (a2)
          {
            v15 = v7;
            v16 = 0;
            *a2 = v7;
          }

          else
          {
            v16 = 0;
          }

          goto LABEL_19;
        }

        ++v9;
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
  }

  v16 = 1;
LABEL_19:

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __55__CPLEngineMultiscopeSyncTask_task_didFinishWithError___block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) withThroughputReporter:&__block_literal_global_127];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _currentTask];

  if (v2 != v3)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLTaskOSLogDomain_15620();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        v12 = *(a1 + 40);
        v14 = NSStringFromSelector(*(a1 + 56));
        *buf = 138412802;
        v23 = v12;
        v24 = 2112;
        v25 = v13;
        v26 = 2112;
        v27 = v14;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "Unknown %@ called [%@ %@]", buf, 0x20u);
      }
    }

    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = *(a1 + 56);
    v17 = *(a1 + 32);
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineSyncTask.m"];
    v20 = *(a1 + 32);
    v19 = *(a1 + 40);
    v21 = NSStringFromSelector(*(a1 + 56));
    [v15 handleFailureInMethod:v16 object:v17 file:v18 lineNumber:414 description:{@"Unknown %@ called -[%@ %@]", v19, v20, v21}];

    abort();
  }

  v4 = *(a1 + 48);
  if (v4 && ([*(a1 + 32) shouldContinueAfterError:v4 fromTask:*(a1 + 40)] & 1) == 0)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v10 = *MEMORY[0x1E69E9840];

    return [v8 taskDidFinishWithError:v9];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *MEMORY[0x1E69E9840];

    return [v5 _launchTaskForNextScope];
  }
}

- (void)cancel
{
  v8.receiver = self;
  v8.super_class = CPLEngineMultiscopeSyncTask;
  [(CPLEngineSyncTask *)&v8 cancel];
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__CPLEngineMultiscopeSyncTask_cancel__block_invoke;
  v7[3] = &unk_1E861A940;
  v7[4] = self;
  v4 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_15717;
  block[3] = &unk_1E861B4E0;
  v10 = v4;
  v5 = queue;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v5, v6);
}

void __37__CPLEngineMultiscopeSyncTask_cancel__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _currentTask];
  if (v1)
  {
    v2 = v1;
    [v1 cancel];
    v1 = v2;
  }
}

- (void)setForeground:(BOOL)foreground
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__CPLEngineMultiscopeSyncTask_setForeground___block_invoke;
  v4[3] = &unk_1E861F7F0;
  foregroundCopy = foreground;
  v4[4] = self;
  dispatch_sync(queue, v4);
}

void __45__CPLEngineMultiscopeSyncTask_setForeground___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = CPLEngineMultiscopeSyncTask;
  objc_msgSendSuper2(&v4, sel_setForeground_, v2);
  v3 = [*(a1 + 32) _currentTask];
  [v3 setForeground:*(a1 + 40)];
}

- (void)setForceSync:(BOOL)sync
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__CPLEngineMultiscopeSyncTask_setForceSync___block_invoke;
  v4[3] = &unk_1E861F7F0;
  syncCopy = sync;
  v4[4] = self;
  dispatch_sync(queue, v4);
}

void __44__CPLEngineMultiscopeSyncTask_setForceSync___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = CPLEngineMultiscopeSyncTask;
  objc_msgSendSuper2(&v4, sel_setForceSync_, v2);
  v3 = [*(a1 + 32) _currentTask];
  [v3 setForceSync:*(a1 + 40)];
}

void __37__CPLEngineMultiscopeSyncTask_launch__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[CPLErrors operationCancelledError];
  [v1 taskDidFinishWithError:v2];
}

- (void)_launchTaskForNextScope
{
  v29 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  session = [(CPLEngineSyncTask *)self session];
  shouldDefer = [session shouldDefer];

  if (shouldDefer)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLTaskOSLogDomain_15620();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = objc_opt_class();
        v6 = *(&buf + 4);
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Session for %@ has been deferred", &buf, 0xCu);
      }
    }

    [(CPLEngineMultiscopeSyncTask *)self _setCurrentTask:0];
    v7 = +[CPLErrors sessionHasBeenDeferredError];
    [(CPLEngineSyncTask *)self taskDidFinishWithError:v7];

LABEL_19:
    v19 = *MEMORY[0x1E69E9840];
    return;
  }

  if (![(CPLEngineSyncTask *)self isCancelled])
  {
    firstObject = [(NSMutableArray *)self->_coveredScopes firstObject];
    v10 = firstObject;
    if (firstObject)
    {
      scopeIdentifier = [firstObject scopeIdentifier];
      v12 = [(NSMutableDictionary *)self->_transportScopes objectForKeyedSubscript:scopeIdentifier];
      [(NSMutableArray *)self->_coveredScopes removeObjectAtIndex:0];
      [(NSMutableDictionary *)self->_transportScopes removeObjectForKey:scopeIdentifier];
      session2 = [(CPLEngineSyncTask *)self session];
      v14 = [(CPLEngineMultiscopeSyncTask *)self newScopedTaskWithScope:v10 session:session2 transportScope:v12 clientCacheIdentifier:self->_clientCacheIdentifier];

      [v14 setForeground:{-[CPLEngineSyncTask foreground](self, "foreground")}];
      [v14 setForceSync:{-[CPLEngineSyncTask forceSync](self, "forceSync")}];
      transportUserIdentifier = [(CPLEngineSyncTask *)self transportUserIdentifier];
      [v14 setTransportUserIdentifier:transportUserIdentifier];

      [(CPLEngineMultiscopeSyncTask *)self _setCurrentTask:v14];
      [v14 setDelegate:self];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v25 = 0x3032000000;
      v26 = __Block_byref_object_copy__15731;
      v27 = __Block_byref_object_dispose__15732;
      v28 = 0;
      scopeType = [v10 scopeType];
      if (scopeType == 1 && ([scopeIdentifier hasPrefix:@"PrimarySync"] & 1) != 0)
      {
        v17 = @"system-library";
      }

      else
      {
        v17 = [CPLScopeChange descriptionForScopeType:scopeType];
      }

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __54__CPLEngineMultiscopeSyncTask__launchTaskForNextScope__block_invoke;
      v21[3] = &unk_1E861E240;
      p_buf = &buf;
      v18 = v17;
      v22 = v18;
      [(CPLEngineSyncTask *)self withThroughputReporter:v21];
      [v14 setThroughputReporter:*(*(&buf + 1) + 40)];
      [v14 launch];

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      [(CPLEngineMultiscopeSyncTask *)self _setCurrentTask:0];
      [(CPLEngineSyncTask *)self taskDidFinishWithError:0];
    }

    goto LABEL_19;
  }

  [(CPLEngineMultiscopeSyncTask *)self _setCurrentTask:0];
  v20 = +[CPLErrors operationCancelledError];
  [(CPLEngineSyncTask *)self taskDidFinishWithError:v20];
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __54__CPLEngineMultiscopeSyncTask__launchTaskForNextScope__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 makeChildReportForCategory:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

- (BOOL)shouldProcessScope:(id)scope inTransaction:(id)transaction
{
  scopeIdentifier = [scope scopeIdentifier];
  baseScopeFilter = self->_baseScopeFilter;
  if (baseScopeFilter && ![(CPLScopeFilter *)baseScopeFilter filterOnScopeIdentifier:scopeIdentifier])
  {
    v8 = 0;
  }

  else
  {
    additionalScopeFilter = self->_additionalScopeFilter;
    if (additionalScopeFilter)
    {
      v8 = [(CPLScopeFilter *)additionalScopeFilter filterOnScopeIdentifier:scopeIdentifier];
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (id)newScopedTaskWithScope:(id)scope session:(id)session transportScope:(id)transportScope clientCacheIdentifier:(id)identifier
{
  scopeCopy = scope;
  sessionCopy = session;
  transportScopeCopy = transportScope;
  identifierCopy = identifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineSyncTask.m"];
  v17 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v16 lineNumber:247 description:{@"%@ should be overridden by %@", v17, objc_opt_class()}];

  abort();
}

- (BOOL)shouldStartTaskInTransaction:(id)transaction
{
  engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
  store = [engineLibrary store];
  isClientInSyncWithClientCache = [store isClientInSyncWithClientCache];

  return isClientInSyncWithClientCache;
}

- (void)dispatchAsyncWithCurrentSubtask:(id)subtask
{
  subtaskCopy = subtask;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__CPLEngineMultiscopeSyncTask_dispatchAsyncWithCurrentSubtask___block_invoke;
  v10[3] = &unk_1E861ECD0;
  v10[4] = self;
  v11 = subtaskCopy;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_15717;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = subtaskCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __63__CPLEngineMultiscopeSyncTask_dispatchAsyncWithCurrentSubtask___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _currentTask];
  (*(v1 + 16))(v1, v2);
}

- (id)_currentScope
{
  _currentTask = [(CPLEngineMultiscopeSyncTask *)self _currentTask];
  scope = [_currentTask scope];

  return scope;
}

- (void)_setCurrentTask:(id)task
{
  taskCopy = task;
  currentTaskQueue = self->_currentTaskQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__CPLEngineMultiscopeSyncTask__setCurrentTask___block_invoke;
  v7[3] = &unk_1E861B290;
  v7[4] = self;
  v8 = taskCopy;
  v6 = taskCopy;
  dispatch_async(currentTaskQueue, v7);
}

- (CPLEngineMultiscopeSyncTask)initWithEngineLibrary:(id)library session:(id)session
{
  v16.receiver = self;
  v16.super_class = CPLEngineMultiscopeSyncTask;
  v4 = [(CPLEngineSyncTask *)&v16 initWithEngineLibrary:library session:session];
  if (v4)
  {
    v5 = CPLCopyDefaultSerialQueueAttributes();
    v6 = dispatch_queue_create("com.apple.cpl.multiscopetask", v5);
    queue = v4->_queue;
    v4->_queue = v6;

    v8 = CPLCopyDefaultSerialQueueAttributes();
    v9 = dispatch_queue_create("com.apple.cpl.multiscopetask.currenttask", v8);
    currentTaskQueue = v4->_currentTaskQueue;
    v4->_currentTaskQueue = v9;

    engineLibrary = [(CPLEngineSyncTask *)v4 engineLibrary];
    store = [engineLibrary store];
    scopes = [store scopes];
    scopes = v4->_scopes;
    v4->_scopes = scopes;
  }

  return v4;
}

@end
@interface CPLPushToTransportScopeTask
- (BOOL)_shouldNotTrustCloudCacheAfterError:(id)a3;
- (BOOL)_shouldUploadBatchesWithDropReason:(id *)a3 shouldQuarantineRecords:(BOOL *)a4 inTransaction:(id)a5;
- (BOOL)checkScopeIsValidInTransaction:(id)a3;
- (BOOL)task:(id)a3 shouldRetryImmediatelyInTransaction:(id)a4;
- (CPLPushToTransportScopeTask)initWithEngineLibrary:(id)a3 session:(id)a4 clientCacheIdentifier:(id)a5 scope:(id)a6 transportScope:(id)a7;
- (CPLUploadPushedChangesTask)currentSubtask;
- (id)_contributorsUpdatesInTransaction:(id)a3;
- (id)phaseDescription;
- (id)phaseDescriptionLastChangeDate:(id *)a3;
- (id)scopesForTask;
- (id)taskIdentifier;
- (void)_acknowledgeContributorUpdatesAndContinue:(id)a3;
- (void)_didStartTaskWithKey:(id)a3 recordCount:(unint64_t)a4;
- (void)_discardCurrentSubtask;
- (void)_excludeScopeFromMingling;
- (void)_includeScopeInMingling;
- (void)_launch;
- (void)_launchSubTask:(id)a3 subIdentifier:(id)a4;
- (void)_noteSuccessfulUpdateInTransaction:(id)a3;
- (void)_prepareTransportGroupForOneBatch;
- (void)_pushTaskDidFinishWithError:(id)a3;
- (void)_resetPriority;
- (void)_updateContributors:(id)a3;
- (void)_updateQuotaStrategyAfterSuccessInTransaction:(id)a3;
- (void)_uploadChangesWithPriority:(unint64_t)a3 maxBatchSize:(unint64_t)a4;
- (void)_uploadTask:(id)a3 didFinishWithError:(id)a4;
- (void)cancel:(BOOL)a3;
- (void)launch;
- (void)task:(id)a3 didFinishWithError:(id)a4;
@end

@implementation CPLPushToTransportScopeTask

- (BOOL)task:(id)a3 shouldRetryImmediatelyInTransaction:(id)a4
{
  if (self->_retryImmediately)
  {
    return 1;
  }

  pushRepository = self->_pushRepository;
  scopeIdentifier = self->_scopeIdentifier;
  v7 = a3;
  v8 = [(CPLEnginePushRepository *)pushRepository minimumPriorityForChangesInScopeWithIdentifier:scopeIdentifier];
  v9 = [v7 pushRepositoryPriority];

  return v8 < v9;
}

- (void)task:(id)a3 didFinishWithError:(id)a4
{
  v11 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"finishing subtask %@", objc_opt_class()];
  [(CPLEngineSyncTask *)self setPhaseDescription:v8];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLPushToTransportTask.m"];
    [v9 handleFailureInMethod:a2 object:self file:v10 lineNumber:893 description:{@"Received completion for unknown %@", v11}];

    abort();
  }

  [(CPLPushToTransportScopeTask *)self _uploadTask:v11 didFinishWithError:v7];
}

- (void)_uploadTask:(id)a3 didFinishWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  lock = self->_lock;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__CPLPushToTransportScopeTask__uploadTask_didFinishWithError___block_invoke;
  v14[3] = &unk_1E861B1C8;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_11524;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = lock;
  v11 = v7;
  v12 = v6;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __62__CPLPushToTransportScopeTask__uploadTask_didFinishWithError___block_invoke(id *a1)
{
  [a1[4] _discardCurrentSubtask];
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v36 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v32[3] = [a1[5] maxBatchSize];
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v31[3] = [a1[5] pushRepositoryPriority];
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __62__CPLPushToTransportScopeTask__uploadTask_didFinishWithError___block_invoke_2;
  v28[3] = &unk_1E861F818;
  v28[4] = a1[4];
  v28[5] = v29;
  v2 = MEMORY[0x1E128EBA0](v28);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __62__CPLPushToTransportScopeTask__uploadTask_didFinishWithError___block_invoke_3;
  v27[3] = &unk_1E861B528;
  v27[4] = v35;
  v3 = MEMORY[0x1E128EBA0](v27);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __62__CPLPushToTransportScopeTask__uploadTask_didFinishWithError___block_invoke_4;
  v26[3] = &unk_1E861D488;
  v26[4] = a1[4];
  v26[5] = v31;
  v26[6] = v32;
  v26[7] = v35;
  v26[8] = v33;
  v4 = MEMORY[0x1E128EBA0](v26);
  v5 = [a1[4] store];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __62__CPLPushToTransportScopeTask__uploadTask_didFinishWithError___block_invoke_118;
  v17[3] = &unk_1E861D4B8;
  v17[4] = a1[4];
  v18 = a1[6];
  v6 = v4;
  v20 = v6;
  v23 = v32;
  v7 = v2;
  v21 = v7;
  v8 = v3;
  v22 = v8;
  v19 = a1[5];
  v24 = v31;
  v25 = v35;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__CPLPushToTransportScopeTask__uploadTask_didFinishWithError___block_invoke_2_121;
  v10[3] = &unk_1E861D4E0;
  v10[4] = a1[4];
  v12 = v33;
  v13 = v35;
  v14 = v31;
  v15 = v32;
  v16 = v29;
  v11 = a1[6];
  v9 = [v5 performWriteTransactionWithBlock:v17 completionHandler:v10];

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v33, 8);
  _Block_object_dispose(v35, 8);
}

void __62__CPLPushToTransportScopeTask__uploadTask_didFinishWithError___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _excludeScopeFromMingling];
  v2 = [*(a1 + 32) session];
  if ([*(a1 + 32) highPriority])
  {
    v3 = 7;
  }

  else
  {
    v3 = 8;
  }

  [v2 requestSyncStateAtEndOfSyncSession:v3 reschedule:0];

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

BOOL __62__CPLPushToTransportScopeTask__uploadTask_didFinishWithError___block_invoke_4(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 160) minimumPriorityForChangesInScopeWithIdentifier:*(a1[4] + 136)];
  v3 = v2;
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 24);
  if (v2 < v5)
  {
    *(v4 + 24) = v2;
    *(*(a1[6] + 8) + 24) = 0;
    *(*(a1[7] + 8) + 24) = 1;
    *(*(a1[8] + 8) + 24) = v2 < +[CPLRecordPushContext minimumPriorityForLocalConflictResolution];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLTaskOSLogDomain_11528();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1[4] + 136);
        if (*(*(a1[8] + 8) + 24))
        {
          v8 = @" after resetting priority";
        }

        else
        {
          v8 = &stru_1F57BD298;
        }

        v11 = 138543618;
        v12 = v7;
        v13 = 2112;
        v14 = v8;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEFAULT, "Changes have been pushed by client for %{public}@ - restarting uploads%@", &v11, 0x16u);
      }
    }
  }

  result = v3 < v5;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void __62__CPLPushToTransportScopeTask__uploadTask_didFinishWithError___block_invoke_118(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (![*(a1 + 32) checkScopeIsValidInTransaction:v3])
  {
    goto LABEL_46;
  }

  if ([*(a1 + 40) isCPLErrorWithCode:1012])
  {
    if (((*(*(a1 + 56) + 16))() & 1) == 0)
    {
      v4 = *(*(*(a1 + 80) + 8) + 24);
      if (v4 <= +[CPLBatchExtractionStrategy minimumRecordCountPerBatch])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v15 = __CPLTaskOSLogDomain_11528();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = *(*(a1 + 32) + 136);
            v17 = *(*(*(a1 + 80) + 8) + 24);
            *buf = 138543618;
            v31 = v16;
            v32 = 2048;
            v33 = v17;
            _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_ERROR, "Upload for %{public}@ failed because server finds that a batch size of %lu records is still too large. Will still continue synchronizing other scopes", buf, 0x16u);
          }
        }

        v9 = *(a1 + 64);
      }

      else
      {
        v5 = *(*(*(a1 + 80) + 8) + 24) >> 1;
        if (v5 < +[CPLBatchExtractionStrategy minimumRecordCountPerBatch])
        {
          v5 = +[CPLBatchExtractionStrategy minimumRecordCountPerBatch];
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v6 = __CPLTaskOSLogDomain_11528();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            v7 = *(*(*(a1 + 80) + 8) + 24);
            v8 = [*(a1 + 32) scope];
            *buf = 134218498;
            v31 = v7;
            v32 = 2112;
            v33 = v8;
            v34 = 2048;
            v35 = v5;
            _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEFAULT, "Server finds %lu is too large to handle changes for %@, setting maximum batch size to %lu temporarily and retrying", buf, 0x20u);
          }
        }

        v9 = *(a1 + 72);
      }

      (*(v9 + 16))();
    }

    goto LABEL_46;
  }

  if ([*(a1 + 40) isCPLErrorWithCode:30])
  {
    if ((*(*(a1 + 56) + 16))())
    {
      goto LABEL_45;
    }

    if ([*(a1 + 48) didUseOverQuotaStrategy])
    {
      if ([*(a1 + 32) forceSync])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v10 = __CPLTaskOSLogDomain_11528();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = *(*(a1 + 32) + 136);
            *buf = 138543362;
            v31 = v11;
            v12 = "Upload for %{public}@ failed because the scope is over quota. Will stop forced sync";
            v13 = v10;
            v14 = OS_LOG_TYPE_DEFAULT;
LABEL_32:
            _os_log_impl(&dword_1DC05A000, v13, v14, v12, buf, 0xCu);
            goto LABEL_33;
          }

          goto LABEL_33;
        }

        goto LABEL_45;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v19 = __CPLTaskOSLogDomain_11528();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(*(a1 + 32) + 136);
          *buf = 138543362;
          v31 = v20;
          _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_DEFAULT, "Upload for %{public}@ failed because the scope is over quota. Will still continue synchronizing other scopes", buf, 0xCu);
        }
      }

      v21 = *(a1 + 64);
    }

    else
    {
      if (+[CPLPushToTransportTask dontAutoRetry])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v10 = __CPLTaskOSLogDomain_11528();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v18 = *(*(a1 + 32) + 136);
            *buf = 138543362;
            v31 = v18;
            v12 = "Upload for %{public}@ failed because the scope is over quota";
            v13 = v10;
            v14 = OS_LOG_TYPE_ERROR;
            goto LABEL_32;
          }

LABEL_33:
        }

LABEL_45:
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __62__CPLPushToTransportScopeTask__uploadTask_didFinishWithError___block_invoke_120;
        v27[3] = &unk_1E8620940;
        v24 = *(a1 + 40);
        v25 = *(a1 + 32);
        v28 = v24;
        v29 = v25;
        [v3 do:v27];

        goto LABEL_46;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v22 = __CPLTaskOSLogDomain_11528();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(*(a1 + 32) + 136);
          *buf = 138543362;
          v31 = v23;
          _os_log_impl(&dword_1DC05A000, v22, OS_LOG_TYPE_DEFAULT, "Upload for %{public}@ failed because the scope is over quota. Retrying with over-quota strategy", buf, 0xCu);
        }
      }

      v21 = *(a1 + 72);
    }

    (*(v21 + 16))();
    goto LABEL_45;
  }

  if (!*(a1 + 40))
  {
    *(*(*(a1 + 88) + 8) + 24) = [*(*(a1 + 32) + 160) minimumPriorityForChangesInScopeWithIdentifier:*(*(a1 + 32) + 136)];
    if (*(*(*(a1 + 88) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL)
    {
      *(*(*(a1 + 80) + 8) + 24) = 0;
      *(*(*(a1 + 96) + 8) + 24) = 1;
    }
  }

LABEL_46:

  v26 = *MEMORY[0x1E69E9840];
}

void __62__CPLPushToTransportScopeTask__uploadTask_didFinishWithError___block_invoke_2_121(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 error];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v9 error];
    [v4 _pushTaskDidFinishWithError:v5];
  }

  else if ([*(a1 + 32) isCancelled])
  {
    v6 = *(a1 + 32);
    v7 = +[CPLErrors operationCancelledError];
    [v6 _pushTaskDidFinishWithError:v7];
  }

  else if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(a1 + 32) _resetPriority];
  }

  else if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    [*(a1 + 32) _uploadChangesWithPriority:*(*(*(a1 + 64) + 8) + 24) maxBatchSize:*(*(*(a1 + 72) + 8) + 24)];
  }

  else
  {
    if (*(*(*(a1 + 80) + 8) + 24) == 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(a1 + 40);
    }

    [*(a1 + 32) _pushTaskDidFinishWithError:v8];
  }
}

uint64_t __62__CPLPushToTransportScopeTask__uploadTask_didFinishWithError___block_invoke_120(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) userInfo];
  v5 = [v4 objectForKeyedSubscript:@"CPLErrorIsCausedBySharedSync"];
  v6 = [v5 BOOLValue];

  if ((v6 & 1) == 0 || (v7 = *(a1 + 40), (v8 = *(v7 + 176)) == 0) || (result = [*(v7 + 144) setValue:1 forFlag:2 forScope:v8 error:a2], result))
  {
    v10 = *(a1 + 40);
    v11 = v10[18];
    v12 = [v10 scope];
    v13 = [v11 setValue:1 forFlag:2 forScope:v12 error:a2];

    return v13;
  }

  return result;
}

- (id)taskIdentifier
{
  if (self->_highPriority)
  {
    return @"engine.sync.pushtotransport.highpriority";
  }

  else
  {
    return @"engine.sync.pushtotransport";
  }
}

- (id)phaseDescription
{
  v3 = [(CPLPushToTransportScopeTask *)self currentSubtask];
  v4 = [v3 phaseDescription];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CPLPushToTransportScopeTask;
    v6 = [(CPLEngineSyncTask *)&v9 phaseDescription];
  }

  v7 = v6;

  return v7;
}

- (id)phaseDescriptionLastChangeDate:(id *)a3
{
  v5 = [(CPLPushToTransportScopeTask *)self currentSubtask];
  v6 = [v5 phaseDescriptionLastChangeDate:a3];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CPLPushToTransportScopeTask;
    v8 = [(CPLEngineSyncTask *)&v11 phaseDescriptionLastChangeDate:a3];
  }

  v9 = v8;

  return v9;
}

- (void)_pushTaskDidFinishWithError:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(CPLEngineSyncTask *)self setPhaseDescription:@"cleaning"];
  [(CPLPushToTransportScopeTask *)self hash];
  kdebug_trace();
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLTaskOSLogDomain_11528();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "Push to transport finished (error: %@)", &buf, 0xCu);
    }
  }

  v6 = [(CPLEngineScopedTask *)self store];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__11582;
  v19 = __Block_byref_object_dispose__11583;
  v20 = v4;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__CPLPushToTransportScopeTask__pushTaskDidFinishWithError___block_invoke;
  v11[3] = &unk_1E86200A8;
  v11[4] = self;
  v7 = v20;
  v12 = v7;
  v13 = v14;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__CPLPushToTransportScopeTask__pushTaskDidFinishWithError___block_invoke_2_106;
  v10[3] = &unk_1E86209E0;
  v10[4] = self;
  v10[5] = &buf;
  v10[6] = v14;
  v8 = [v6 performWriteTransactionWithBlock:v11 completionHandler:v10];

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&buf, 8);

  v9 = *MEMORY[0x1E69E9840];
}

void __59__CPLPushToTransportScopeTask__pushTaskDidFinishWithError___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[20];
  v6 = [v4 taskIdentifier];
  [v5 removePushObserverWithIdentifier:v6];

  v7 = [*(*(a1 + 32) + 160) hasChangesInScopeWithIdentifier:*(*(a1 + 32) + 136)];
  v8 = *(a1 + 32);
  if (v7)
  {
    if (([v8[20] hasChangesWithPriorityLowerThanPriority:+[CPLRecordPushContext minimumPriorityForLocalConflictResolution](CPLRecordPushContext inScopeWithIdentifier:{"minimumPriorityForLocalConflictResolution"), *(*(a1 + 32) + 136)}] & 1) == 0)
    {
      if (_CPLSilentLogging)
      {
LABEL_16:
        [*(a1 + 32) _includeScopeInMingling];
        goto LABEL_17;
      }

      v13 = __CPLTaskOSLogDomain_11528();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
LABEL_15:

        goto LABEL_16;
      }

      v17 = *(*(a1 + 32) + 136);
      *buf = 138543362;
      v36 = v17;
      v15 = "Push repository for %{public}@ only contains changes allowing local conflict resolution. Will allow mingling.";
LABEL_14:
      _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
      goto LABEL_15;
    }

    if (*(a1 + 40))
    {
      goto LABEL_17;
    }

    v9 = [*(a1 + 32) session];
    if ([v9 allowsLocalConflictResolutionWhenOverQuota])
    {
      v10 = *(a1 + 32);
      v11 = v10[18];
      v12 = [v10 scope];
      LODWORD(v11) = [v11 valueForFlag:2 forScope:v12];

      if (!v11)
      {
        goto LABEL_17;
      }

      if (_CPLSilentLogging)
      {
        goto LABEL_16;
      }

      v13 = __CPLTaskOSLogDomain_11528();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v14 = *(*(a1 + 32) + 136);
      *buf = 138543362;
      v36 = v14;
      v15 = "Push repository for %{public}@ contains changes but we are allowing local conflict resolution when over-quota. Will allow mingling.";
      goto LABEL_14;
    }
  }

  else
  {
    [v8 _updateQuotaStrategyAfterSuccessInTransaction:v3];
    [*(a1 + 32) _includeScopeInMingling];
    v16 = *(a1 + 32);
    if (*(v16 + 224) != -1)
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __59__CPLPushToTransportScopeTask__pushTaskDidFinishWithError___block_invoke_2;
      v34[3] = &unk_1E8620478;
      v34[4] = v16;
      [v3 do:v34];
    }
  }

LABEL_17:
  if ([*(a1 + 40) isCPLErrorWithCode:35])
  {
    v18 = [*(a1 + 40) userInfo];
    v19 = [v18 objectForKeyedSubscript:@"CPLErrorScopeBusy"];

    if (v19)
    {
      v20 = [v19 integerValue];
    }

    else
    {
      v20 = 1;
    }

    if ([*(a1 + 32) forceSync])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v21 = __CPLTaskOSLogDomain_11528();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(*(a1 + 32) + 136);
          v23 = [CPLScopeChange descriptionForBusyState:v20];
          *buf = 138543618;
          v36 = v22;
          v37 = 2112;
          v38 = v23;
          _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_DEFAULT, "Upload for %{public}@ failed because the scope is busy (%@). Will stop forced sync", buf, 0x16u);
        }

LABEL_34:
      }
    }

    else
    {
      v24 = [MEMORY[0x1E695E000] standardUserDefaults];
      v25 = [v24 BOOLForKey:@"CPLFailSyncSessionOnScopeBusy"];

      if ((v25 & 1) == 0)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v26 = __CPLTaskOSLogDomain_11528();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = *(*(a1 + 32) + 136);
            v28 = [CPLScopeChange descriptionForBusyState:v20];
            *buf = 138543618;
            v36 = v27;
            v37 = 2112;
            v38 = v28;
            _os_log_impl(&dword_1DC05A000, v26, OS_LOG_TYPE_DEFAULT, "Upload for %{public}@ failed because the scope is busy (%@). Will still continue synchronizing other scopes", buf, 0x16u);
          }
        }

        [*(a1 + 32) _excludeScopeFromMingling];
        v29 = [*(a1 + 40) userInfo];
        v21 = [v29 objectForKeyedSubscript:@"CPLErrorRetryAfterDate"];

        v30 = [*(a1 + 32) session];
        if ([*(a1 + 32) highPriority])
        {
          v31 = 7;
        }

        else
        {
          v31 = 8;
        }

        [v30 requestSyncStateAtEndOfSyncSession:v31 reschedule:v21 != 0 proposedRescheduleDate:v21];

        *(*(*(a1 + 48) + 8) + 24) = 1;
        goto LABEL_34;
      }
    }

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __59__CPLPushToTransportScopeTask__pushTaskDidFinishWithError___block_invoke_105;
    v33[3] = &unk_1E861D460;
    v33[4] = *(a1 + 32);
    v33[5] = v20;
    [v3 do:v33];
  }

  v32 = *MEMORY[0x1E69E9840];
}

void __59__CPLPushToTransportScopeTask__pushTaskDidFinishWithError___block_invoke_2_106(uint64_t a1, void *a2)
{
  v7 = a2;
  if (*(*(*(a1 + 40) + 8) + 40) || ([v7 error], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v3 = 0;
    }

    else
    {
      v3 = *(*(*(a1 + 40) + 8) + 40);
    }

    [*(a1 + 32) taskDidFinishWithError:v3];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [v7 error];
    [v5 taskDidFinishWithError:v6];
  }
}

uint64_t __59__CPLPushToTransportScopeTask__pushTaskDidFinishWithError___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = v4[18];
  v6 = [v4 scope];
  v7 = [v5 setScope:v6 hasCompletedPushToTransportTask:*(*(a1 + 32) + 224) error:a2];

  return v7;
}

uint64_t __59__CPLPushToTransportScopeTask__pushTaskDidFinishWithError___block_invoke_105(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = v4[18];
  v7 = [v4 scope];
  v8 = [v6 storeBusyState:v5 forScope:v7 error:a2];

  v9 = *(a1 + 32);
  if (!*(v9 + 176))
  {
    return v8;
  }

  v10 = *(v9 + 144);
  v11 = *(a1 + 40);

  return [v10 storeBusyState:v11 forScope:? error:?];
}

- (void)_updateQuotaStrategyAfterSuccessInTransaction:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __77__CPLPushToTransportScopeTask__updateQuotaStrategyAfterSuccessInTransaction___block_invoke;
  v3[3] = &unk_1E8620478;
  v3[4] = self;
  [a3 do:v3];
}

uint64_t __77__CPLPushToTransportScopeTask__updateQuotaStrategyAfterSuccessInTransaction___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (*(v4 + 176))
  {
    v5 = [*(v4 + 144) valueForFlag:2 forScope:?];
    v4 = *(a1 + 32);
    if (v5)
    {
      v6 = [*(v4 + 144) setValue:0 forFlag:2 forScope:*(v4 + 176) error:a2];
      result = 0;
      if (!v6)
      {
        return result;
      }

      v4 = *(a1 + 32);
    }
  }

  v8 = *(v4 + 144);
  v9 = [v4 scope];
  LODWORD(v8) = [v8 valueForFlag:2 forScope:v9];

  if (!v8)
  {
    return 1;
  }

  v10 = *(a1 + 32);
  v11 = v10[18];
  v12 = [v10 scope];
  v13 = [v11 setValue:0 forFlag:2 forScope:v12 error:a2];

  return v13;
}

- (BOOL)_shouldNotTrustCloudCacheAfterError:(id)a3
{
  v3 = a3;
  if ([v3 isCPLError])
  {
    v4 = [v3 code];
    v6 = v4 == 25 || v4 == 80;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_includeScopeInMingling
{
  v3 = [(CPLEngineSyncTask *)self session];
  [v3 includeScopeIdentifierInMingling:self->_scopeIdentifier];

  if (self->_sharedScope)
  {
    v5 = [(CPLEngineSyncTask *)self session];
    v4 = [(CPLEngineScope *)self->_sharedScope scopeIdentifier];
    [v5 includeScopeIdentifierInMingling:v4];
  }
}

- (void)_excludeScopeFromMingling
{
  v3 = [(CPLEngineSyncTask *)self session];
  [v3 excludeScopeIdentifierFromMingling:self->_scopeIdentifier];

  if (self->_sharedScope)
  {
    v5 = [(CPLEngineSyncTask *)self session];
    v4 = [(CPLEngineScope *)self->_sharedScope scopeIdentifier];
    [v5 excludeScopeIdentifierFromMingling:v4];
  }
}

- (void)cancel:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = CPLPushToTransportScopeTask;
  [(CPLEngineSyncTask *)&v11 cancel];
  lock = self->_lock;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__CPLPushToTransportScopeTask_cancel___block_invoke;
  v9[3] = &unk_1E861F7F0;
  v9[4] = self;
  v10 = a3;
  v6 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_11524;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = lock;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v8);
}

void __38__CPLPushToTransportScopeTask_cancel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentSubtask];
  if (objc_opt_respondsToSelector())
  {
    [v2 cancel:*(a1 + 40)];
  }

  else
  {
    [v2 cancel];
  }

  [*(*(a1 + 32) + 200) cancel];
}

- (void)launch
{
  [(CPLPushToTransportScopeTask *)self hash];
  kdebug_trace();
  v3.receiver = self;
  v3.super_class = CPLPushToTransportScopeTask;
  [(CPLEngineSyncTask *)&v3 launch];
  [(CPLPushToTransportScopeTask *)self _launch];
}

- (void)_launch
{
  [(CPLEngineSyncTask *)self setPhaseDescription:@"launching"];
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__CPLPushToTransportScopeTask__launch__block_invoke;
  v7[3] = &unk_1E861A940;
  v7[4] = self;
  v4 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_11524;
  block[3] = &unk_1E861B4E0;
  v9 = v4;
  v5 = lock;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v5, v6);
}

void __38__CPLPushToTransportScopeTask__launch__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) engineLibrary];
  v3 = [v2 store];
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__11582;
  v17[4] = __Block_byref_object_dispose__11583;
  v18 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__CPLPushToTransportScopeTask__launch__block_invoke_2;
  v8[3] = &unk_1E861D428;
  v8[4] = *(a1 + 32);
  v4 = v3;
  v9 = v4;
  v5 = v2;
  v10 = v5;
  v11 = v17;
  v12 = v15;
  v13 = v14;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__CPLPushToTransportScopeTask__launch__block_invoke_2_93;
  v7[3] = &unk_1E861D3D8;
  v7[4] = *(a1 + 32);
  v7[5] = v17;
  v7[6] = v15;
  v7[7] = v14;
  v6 = [v4 performWriteTransactionWithBlock:v8 completionHandler:v7];

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);
}

void __38__CPLPushToTransportScopeTask__launch__block_invoke_2(uint64_t a1, void *a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) checkScopeIsValidInTransaction:v3])
  {
    v4 = [*(a1 + 32) scope];
    *(*(a1 + 32) + 224) = [*(*(a1 + 32) + 144) pushToTransportTaskForScope:v4];
    v5 = *(a1 + 32);
    v6 = v5[18];
    v7 = [v5 scope];
    v8 = [v6 uploadTransportGroupForScope:v7];
    v9 = *(a1 + 32);
    v10 = *(v9 + 208);
    *(v9 + 208) = v8;

    if (([*(*(a1 + 32) + 144) hasFinishedInitialSyncForScope:v4] & 1) == 0)
    {
      *(*(a1 + 32) + 184) |= 1uLL;
    }

    if (([*(*(a1 + 32) + 144) hasFinishedAFullSyncForScope:v4] & 1) == 0)
    {
      *(*(a1 + 32) + 184) |= 2uLL;
    }

    if ([*(a1 + 40) hasPendingResetSync])
    {
      *(*(a1 + 32) + 184) |= 4uLL;
    }

    v11 = [CPLTransportScopeMapping alloc];
    v12 = [*(a1 + 48) transport];
    v13 = [(CPLTransportScopeMapping *)v11 initWithTranslator:v12];
    v14 = *(a1 + 32);
    v15 = *(v14 + 192);
    *(v14 + 192) = v13;

    v16 = *(a1 + 32);
    v17 = v16[24];
    v18 = [v16 transportScope];
    [v17 addTransportScope:v18 forScope:v4];

    v19 = *(*(a1 + 32) + 192);
    v20 = [v4 scopeIdentifier];
    v21 = [v19 objectForKeyedSubscript:v20];

    if (!v21)
    {
      v40 = [*(a1 + 32) transportScope];

      if (v40)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v41 = __CPLTaskOSLogDomain_11528();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = [*(a1 + 32) transportScope];
            *buf = 138412546;
            v58 = v4;
            v59 = 2112;
            v60 = v42;
            _os_log_impl(&dword_1DC05A000, v41, OS_LOG_TYPE_ERROR, "Failed to create concrete scope of %@ from %@", buf, 0x16u);
          }
        }

        v22 = +[CPLErrors unknownError];
        [v3 setError:v22];
LABEL_55:

        goto LABEL_56;
      }
    }

    v22 = [*(a1 + 40) scopes];
    v23 = [v22 sharingScopeForScope:v4];
    v24 = *(a1 + 32);
    v25 = *(v24 + 176);
    *(v24 + 176) = v23;

    v26 = *(a1 + 32);
    if (!*(v26 + 176))
    {
      goto LABEL_27;
    }

    v27 = [v22 flagsForScope:?];
    if ([v27 valueForFlag:36] && (objc_msgSend(v27, "valueForFlag:", 64) & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v28 = __CPLTaskOSLogDomain_11528();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = *(*(a1 + 32) + 176);
          *buf = 138412290;
          v58 = v29;
          _os_log_impl(&dword_1DC05A000, v28, OS_LOG_TYPE_DEFAULT, "%@ is deleted - ignoring it", buf, 0xCu);
        }
      }

      v30 = *(a1 + 32);
      v31 = *(v30 + 176);
      *(v30 + 176) = 0;
    }

    v26 = *(a1 + 32);
    if (*(v26 + 176))
    {
      v32 = [*(v26 + 144) transportScopeForScope:?];
      if (v32)
      {
        [*(*(a1 + 32) + 192) addTransportScope:v32 forScope:*(*(a1 + 32) + 176)];
      }

      v33 = *(a1 + 32);
      v34 = *(v33 + 192);
      v35 = [*(v33 + 176) scopeIdentifier];
      v36 = [v34 objectForKeyedSubscript:v35];

      if (v32 && !v36)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v37 = __CPLTaskOSLogDomain_11528();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v38 = *(*(a1 + 32) + 176);
            *buf = 138412546;
            v58 = v38;
            v59 = 2112;
            v60 = v32;
            _os_log_impl(&dword_1DC05A000, v37, OS_LOG_TYPE_ERROR, "Failed to create concrete scope of %@ from %@", buf, 0x16u);
          }
        }

        v39 = +[CPLErrors unknownError];
        [v3 setError:v39];

        goto LABEL_55;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v43 = __CPLTaskOSLogDomain_11528();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = *(*(a1 + 32) + 176);
          *buf = 138413058;
          v58 = v4;
          v59 = 2112;
          v60 = v44;
          v61 = 2112;
          v62 = v21;
          v63 = 2112;
          v64 = v36;
          _os_log_impl(&dword_1DC05A000, v43, OS_LOG_TYPE_DEFAULT, "Will upload to %@/%@ concrete scopes: %@/%@", buf, 0x2Au);
        }
      }
    }

    else
    {
LABEL_27:
      if (_CPLSilentLogging)
      {
        goto LABEL_42;
      }

      v32 = __CPLTaskOSLogDomain_11528();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v58 = v4;
        v59 = 2112;
        v60 = v21;
        _os_log_impl(&dword_1DC05A000, v32, OS_LOG_TYPE_DEFAULT, "Will upload to %@ concrete scope: %@", buf, 0x16u);
      }
    }

    v26 = *(a1 + 32);
LABEL_42:
    v45 = [*(v26 + 144) busyStateForScope:v4];
    v46 = v45;
    v47 = *(a1 + 32);
    if (*(v47 + 176) && !v45)
    {
      v46 = [*(v47 + 144) busyStateForScope:?];
    }

    if (v46)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v48 = __CPLTaskOSLogDomain_11528();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v49 = [CPLScopeChange descriptionForBusyState:v46];
          *buf = 138412546;
          v58 = v4;
          v59 = 2112;
          v60 = v49;
          _os_log_impl(&dword_1DC05A000, v48, OS_LOG_TYPE_DEFAULT, "Previous push-to-transport attempt for %@ failed because the scope was busy (%@)", buf, 0x16u);
        }
      }

      *(*(a1 + 32) + 257) = 1;
    }

    v50 = *(a1 + 32);
    if (v50[22])
    {
      v51 = [v50 _contributorsUpdatesInTransaction:v3];
      v52 = *(*(a1 + 56) + 8);
      v53 = *(v52 + 40);
      *(v52 + 40) = v51;
    }

    if (![*(*(*(a1 + 56) + 8) + 40) count])
    {
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __38__CPLPushToTransportScopeTask__launch__block_invoke_91;
      v55[3] = &unk_1E861D338;
      v55[4] = *(a1 + 32);
      v56 = *(a1 + 64);
      [v3 do:v55];
    }

    goto LABEL_55;
  }

LABEL_56:

  v54 = *MEMORY[0x1E69E9840];
}

void __38__CPLPushToTransportScopeTask__launch__block_invoke_2_93(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 120);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v5 = *(a1 + 48);
  v12 = *(a1 + 32);
  v10[2] = __38__CPLPushToTransportScopeTask__launch__block_invoke_3;
  v10[3] = &unk_1E861D3B0;
  v11 = v3;
  v13 = v5;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_11524;
  block[3] = &unk_1E861B4E0;
  v15 = v6;
  v7 = v4;
  v8 = v3;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __38__CPLPushToTransportScopeTask__launch__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [*(a1 + 32) error];
LABEL_5:
    v6 = v4;
    v15 = v4;
    v7 = v3;
LABEL_6:
    [v7 _pushTaskDidFinishWithError:v6];

    return;
  }

  v5 = [*(a1 + 40) isCancelled];
  v3 = *(a1 + 40);
  if (v5)
  {
    v4 = +[CPLErrors operationCancelledError];
    goto LABEL_5;
  }

  v8 = [*(a1 + 40) session];
  v9 = [v8 shouldDefer];

  if (v9)
  {
    v10 = *(a1 + 40);
    v6 = +[CPLErrors sessionHasBeenDeferredError];
    v15 = v6;
    v7 = v10;
    goto LABEL_6;
  }

  if ([*(*(*(a1 + 48) + 8) + 40) count])
  {
    v11 = *(a1 + 40);
    v12 = *(*(*(a1 + 48) + 8) + 40);

    [v11 _updateContributors:v12];
  }

  else if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v13 = *(a1 + 40);

    [v13 _resetPriority];
  }

  else
  {
    v14 = *(a1 + 40);
    if (*(*(*(a1 + 64) + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL)
    {

      [v14 taskDidFinishWithError:0];
    }

    else
    {

      [v14 _uploadChangesWithPriority:? maxBatchSize:?];
    }
  }
}

uint64_t __38__CPLPushToTransportScopeTask__launch__block_invoke_91(void *a1, uint64_t a2)
{
  if ([*(a1[4] + 160) hasChangesWithPriorityLowerThanPriority:+[CPLRecordPushContext minimumPriorityForLocalConflictResolution](CPLRecordPushContext inScopeWithIdentifier:{"minimumPriorityForLocalConflictResolution"), *(a1[4] + 136)}])
  {
    result = [*(a1[4] + 160) resetPriorityForScopeWithIdentifier:*(a1[4] + 136) maxCount:10000 hasMore:*(a1[5] + 8) + 24 error:a2];
    if (!result)
    {
      return result;
    }

    if ((*(*(a1[5] + 8) + 24) & 1) == 0)
    {
      *(*(a1[6] + 8) + 24) = [*(a1[4] + 160) minimumPriorityForChangesInScopeWithIdentifier:*(a1[4] + 136)];
    }
  }

  return 1;
}

- (id)_contributorsUpdatesInTransaction:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v18 = 0;
  v4 = [(CPLPushToTransportScopeTask *)self _shouldUploadBatchesWithDropReason:&v18 shouldQuarantineRecords:&v19 inTransaction:a3];
  v5 = v18;
  if (v4)
  {
    v6 = [(CPLEngineScopedTask *)self scope];
    v7 = [v6 scopeIdentifier];

    v8 = [(CPLEnginePushRepository *)self->_pushRepository contributorsUpdatesForScopeWithIdentifier:v7 maxCount:+[CPLBatchExtractionStrategy maximumRecordCountPerBatch]];
    if (![v8 count])
    {
      pushRepository = self->_pushRepository;
      v15 = MEMORY[0x1E69E9820];
      v7 = v7;
      v16 = v7;
      v17 = self;
      v10 = [(CPLPushToTransportScopeTask *)self taskIdentifier:v15];
      [(CPLEnginePushRepository *)pushRepository addPushObserver:&v15 withIdentifier:v10];
    }

LABEL_8:

    goto LABEL_9;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLTaskOSLogDomain_11528();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(CPLEngineScopedTask *)self scope];
      v12 = [v11 scopeIdentifier];
      *buf = 138543618;
      v21 = v12;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Won't try to update contributors because %{public}@ is read-only: %@", buf, 0x16u);
    }

    v8 = 0;
    goto LABEL_8;
  }

  v8 = 0;
LABEL_9:

  v13 = *MEMORY[0x1E69E9840];

  return v8;
}

void __65__CPLPushToTransportScopeTask__contributorsUpdatesInTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 updateSharingContributorUserIdentifiers];
  if ([v4 count])
  {
    v5 = [v3 scopedIdentifier];
    v6 = [v5 scopeIdentifier];
    v7 = [v6 isEqualToString:*(a1 + 32)];

    if (v7)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v8 = __CPLTaskOSLogDomain_11528();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "Client pushed contributors updates while uploading records - will retry immediately", v9, 2u);
        }
      }

      *(*(a1 + 40) + 259) = 1;
    }
  }

  else
  {
  }
}

- (void)_acknowledgeContributorUpdatesAndContinue:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_lock);
  v5 = [(CPLEngineSyncTask *)self engineLibrary];
  v6 = [v5 store];
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__11582;
  v18[4] = __Block_byref_object_dispose__11583;
  v19 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__CPLPushToTransportScopeTask__acknowledgeContributorUpdatesAndContinue___block_invoke;
  v10[3] = &unk_1E861D388;
  v10[4] = self;
  v7 = v4;
  v11 = v7;
  v12 = v18;
  v13 = v16;
  v14 = v15;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__CPLPushToTransportScopeTask__acknowledgeContributorUpdatesAndContinue___block_invoke_4;
  v9[3] = &unk_1E861D3D8;
  v9[4] = self;
  v9[5] = v18;
  v9[6] = v16;
  v9[7] = v15;
  v8 = [v6 performWriteTransactionWithBlock:v10 completionHandler:v9];

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v18, 8);
}

void __73__CPLPushToTransportScopeTask__acknowledgeContributorUpdatesAndContinue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) checkScopeIsValidInTransaction:v3])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __73__CPLPushToTransportScopeTask__acknowledgeContributorUpdatesAndContinue___block_invoke_2;
    v10[3] = &unk_1E86206C8;
    v4 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v5 = v4;
    v6 = *(a1 + 48);
    v11 = v5;
    v13 = v6;
    v7 = v3;
    v12 = v7;
    [v7 do:v10];
    if (![*(*(*(a1 + 48) + 8) + 40) count])
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __73__CPLPushToTransportScopeTask__acknowledgeContributorUpdatesAndContinue___block_invoke_3;
      v8[3] = &unk_1E861D338;
      v8[4] = *(a1 + 32);
      v9 = *(a1 + 56);
      [v7 do:v8];
    }
  }
}

void __73__CPLPushToTransportScopeTask__acknowledgeContributorUpdatesAndContinue___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 120);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v5 = *(a1 + 48);
  v12 = *(a1 + 32);
  v10[2] = __73__CPLPushToTransportScopeTask__acknowledgeContributorUpdatesAndContinue___block_invoke_5;
  v10[3] = &unk_1E861D3B0;
  v11 = v3;
  v13 = v5;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_11524;
  block[3] = &unk_1E861B4E0;
  v15 = v6;
  v7 = v4;
  v8 = v3;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __73__CPLPushToTransportScopeTask__acknowledgeContributorUpdatesAndContinue___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [*(a1 + 32) error];
LABEL_5:
    v6 = v4;
    v15 = v4;
    v7 = v3;
LABEL_6:
    [v7 _pushTaskDidFinishWithError:v6];

    return;
  }

  v5 = [*(a1 + 40) isCancelled];
  v3 = *(a1 + 40);
  if (v5)
  {
    v4 = +[CPLErrors operationCancelledError];
    goto LABEL_5;
  }

  v8 = [*(a1 + 40) session];
  v9 = [v8 shouldDefer];

  if (v9)
  {
    v10 = *(a1 + 40);
    v6 = +[CPLErrors sessionHasBeenDeferredError];
    v15 = v6;
    v7 = v10;
    goto LABEL_6;
  }

  if ([*(*(*(a1 + 48) + 8) + 40) count])
  {
    v11 = *(a1 + 40);
    v12 = *(*(*(a1 + 48) + 8) + 40);

    [v11 _updateContributors:v12];
  }

  else if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v13 = *(a1 + 40);

    [v13 _resetPriority];
  }

  else
  {
    v14 = *(a1 + 40);
    if (*(*(*(a1 + 64) + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL)
    {

      [v14 taskDidFinishWithError:0];
    }

    else
    {

      [v14 _uploadChangesWithPriority:? maxBatchSize:?];
    }
  }
}

uint64_t __73__CPLPushToTransportScopeTask__acknowledgeContributorUpdatesAndContinue___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 160) acknowledgeContributorsUpdates:*(a1 + 40) error:a2];
  if (v3)
  {
    v4 = [*(a1 + 32) _contributorsUpdatesInTransaction:*(a1 + 48)];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  return v3;
}

uint64_t __73__CPLPushToTransportScopeTask__acknowledgeContributorUpdatesAndContinue___block_invoke_3(void *a1, uint64_t a2)
{
  v3 = [*(a1[4] + 160) resetPriorityForScopeWithIdentifier:*(a1[4] + 136) maxCount:10000 hasMore:*(a1[5] + 8) + 24 error:a2];
  if (v3 && (*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    *(*(a1[6] + 8) + 24) = [*(a1[4] + 160) minimumPriorityForChangesInScopeWithIdentifier:*(a1[4] + 136)];
  }

  return v3;
}

- (void)_updateContributors:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_lock);
  [(CPLEngineSyncTask *)self setPhaseDescription:@"updating contributors"];
  [(CPLPushToTransportScopeTask *)self _prepareTransportGroupForOneBatch];
  -[CPLPushToTransportScopeTask _didStartTaskWithKey:recordCount:](self, "_didStartTaskWithKey:recordCount:", @"update-contributors", [v4 count]);
  transport = self->_transport;
  sharedScope = self->_sharedScope;
  transportScopeMapping = self->_transportScopeMapping;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __51__CPLPushToTransportScopeTask__updateContributors___block_invoke;
  v14 = &unk_1E86204A0;
  v15 = self;
  v8 = v4;
  v16 = v8;
  v9 = [(CPLEngineTransport *)transport updateContributorsTaskWithSharedScope:sharedScope contributorsUpdates:v8 transportScopeMapping:transportScopeMapping completionHandler:&v11];
  updateContributorsTask = self->_updateContributorsTask;
  self->_updateContributorsTask = v9;

  if (self->_highPriority)
  {
    [(CPLEngineTransportUpdateContributorsTask *)self->_updateContributorsTask setHighPriorityBackground:1, v11, v12, v13, v14, v15];
  }

  [(CPLEngineSyncTask *)self launchTransportTask:self->_updateContributorsTask withTransportGroup:self->_transportGroup, v11, v12, v13, v14, v15];
}

void __51__CPLPushToTransportScopeTask__updateContributors___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 120);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__CPLPushToTransportScopeTask__updateContributors___block_invoke_2;
  v11[3] = &unk_1E861B1C8;
  v11[4] = v5;
  v12 = v3;
  v13 = v4;
  v7 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_11524;
  block[3] = &unk_1E861B4E0;
  v15 = v7;
  v8 = v6;
  v9 = v3;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

void __51__CPLPushToTransportScopeTask__updateContributors___block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 200);
  *(v2 + 200) = 0;

  v4 = *(a1 + 40);
  if (v4)
  {
    if ([v4 isCPLOperationCancelledError])
    {
      v5 = 0;
      v6 = 1;
    }

    else
    {
      v5 = 1;
      v6 = 0;
    }

    [*(a1 + 32) _didFinishTaskWithKey:@"update-contributors" error:v5 cancelled:v6];
    v10 = *(a1 + 40);
    if ([v10 isCPLErrorWithCode:18])
    {
      v11 = [v10 userInfo];
      v12 = [v11 objectForKeyedSubscript:@"CPLErrorRejectedRecordIdentifiersAndReasons"];

      if ((_CPLSilentLogging & 1) == 0)
      {
        v13 = __CPLTaskOSLogDomain_11528();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v12;
          _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_ERROR, "Failed to update contributors: %{public}@", &buf, 0xCu);
        }
      }

      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 0;
      *&buf = 0;
      *(&buf + 1) = &buf;
      v26 = 0x3032000000;
      v27 = __Block_byref_object_copy__11582;
      v28 = __Block_byref_object_dispose__11583;
      v29 = 0;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __51__CPLPushToTransportScopeTask__updateContributors___block_invoke_70;
      v20[3] = &unk_1E861D360;
      v20[4] = &v21;
      v20[5] = &buf;
      [v12 enumerateKeysAndObjectsUsingBlock:v20];
      v14 = [*(a1 + 40) cplUnderlyingError];
      v15 = v14;
      if (!v14)
      {
        v15 = *(a1 + 40);
      }

      v16 = v15;

      if (*(v22 + 24) == 1)
      {
        v17 = [CPLErrors cplErrorWithCode:255 description:@"Server does not support contributors updates yet"];
      }

      else
      {
        if (*(*(&buf + 1) + 40))
        {
          [CPLErrors cplErrorWithCode:150 description:@"%@", *(*(&buf + 1) + 40)];
        }

        else
        {
          [CPLErrors cplErrorWithCode:150 underlyingError:v16 description:@"Server rejected contributors updates with no particular reason"];
        }
        v17 = ;
      }

      v18 = v17;

      _Block_object_dispose(&buf, 8);
      _Block_object_dispose(&v21, 8);
    }

    else
    {
      v18 = v10;
    }

    [*(a1 + 32) _pushTaskDidFinishWithError:v18];

    v19 = *MEMORY[0x1E69E9840];
  }

  else
  {
    [*(a1 + 32) _didFinishTaskWithKey:@"update-contributors" error:0 cancelled:0];
    [*(*(a1 + 32) + 168) resetBackoffInterval];
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v9 = *MEMORY[0x1E69E9840];

    [v7 _acknowledgeContributorUpdatesAndContinue:v8];
  }
}

void __51__CPLPushToTransportScopeTask__updateContributors___block_invoke_70(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [v6 hasPrefix:@"Cannot create or modify field"];
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (void)_resetPriority
{
  v3 = [(CPLEngineScopedTask *)self store];
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v9 = 0;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v7[3] = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__CPLPushToTransportScopeTask__resetPriority__block_invoke;
  v6[3] = &unk_1E86209E0;
  v6[4] = self;
  v6[5] = v8;
  v6[6] = v7;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__CPLPushToTransportScopeTask__resetPriority__block_invoke_3;
  v5[3] = &unk_1E86209E0;
  v5[4] = self;
  v5[5] = v8;
  v5[6] = v7;
  v4 = [v3 performWriteTransactionWithBlock:v6 completionHandler:v5];
  _Block_object_dispose(v7, 8);
  _Block_object_dispose(v8, 8);
}

void __45__CPLPushToTransportScopeTask__resetPriority__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) checkScopeIsValidInTransaction:v3])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __45__CPLPushToTransportScopeTask__resetPriority__block_invoke_2;
    v4[3] = &unk_1E861D338;
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    [v3 do:v4];
  }
}

void __45__CPLPushToTransportScopeTask__resetPriority__block_invoke_3(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [v14 error];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v14 error];
LABEL_5:
    v7 = v5;
    [v4 _pushTaskDidFinishWithError:v5];

    goto LABEL_6;
  }

  v6 = [*(a1 + 32) isCancelled];
  v4 = *(a1 + 32);
  if (v6)
  {
    v5 = +[CPLErrors operationCancelledError];
    goto LABEL_5;
  }

  v8 = [*(a1 + 32) session];
  v9 = [v8 shouldDefer];

  if (v9)
  {
    v10 = *(a1 + 32);
    v11 = +[CPLErrors sessionHasBeenDeferredError];
    [v10 _pushTaskDidFinishWithError:v11];
  }

  else if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    [*(a1 + 32) _resetPriority];
  }

  else
  {
    v12 = *(*(*(a1 + 48) + 8) + 24);
    v13 = *(a1 + 32);
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v13 taskDidFinishWithError:0];
    }

    else
    {
      [v13 _uploadChangesWithPriority:v12 maxBatchSize:0];
    }
  }

LABEL_6:
}

uint64_t __45__CPLPushToTransportScopeTask__resetPriority__block_invoke_2(void *a1, uint64_t a2)
{
  v3 = [*(a1[4] + 160) resetPriorityForScopeWithIdentifier:*(a1[4] + 136) maxCount:10000 hasMore:*(a1[5] + 8) + 24 error:a2];
  if (v3 && (*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    *(*(a1[6] + 8) + 24) = [*(a1[4] + 160) minimumPriorityForChangesInScopeWithIdentifier:*(a1[4] + 136)];
  }

  return v3;
}

- (void)_uploadChangesWithPriority:(unint64_t)a3 maxBatchSize:(unint64_t)a4
{
  if (!a4)
  {
    a4 = +[CPLBatchExtractionStrategy maximumRecordCountPerBatch];
  }

  lock = self->_lock;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__CPLPushToTransportScopeTask__uploadChangesWithPriority_maxBatchSize___block_invoke;
  v10[3] = &unk_1E861FEE8;
  v10[4] = self;
  v10[5] = a4;
  v10[6] = a3;
  v7 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_11524;
  block[3] = &unk_1E861B4E0;
  v12 = v7;
  v8 = lock;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v9);
}

void __71__CPLPushToTransportScopeTask__uploadChangesWithPriority_maxBatchSize___block_invoke(uint64_t a1)
{
  v17 = [CPLUploadPushedChangesTask alloc];
  v2 = [*(a1 + 32) engineLibrary];
  v3 = [*(a1 + 32) session];
  v4 = [*(a1 + 32) clientCacheIdentifier];
  v5 = [*(a1 + 32) scope];
  v6 = [*(a1 + 32) transportScope];
  v7 = *(a1 + 32);
  v8 = v7[26];
  v9 = v7[22];
  v10 = v7[24];
  v11 = v7[23];
  v12 = [v7 highPriority];
  v13 = *(a1 + 48);
  LOBYTE(v16) = v12;
  v18 = [(CPLUploadPushedChangesTask *)v17 initWithEngineLibrary:v2 session:v3 clientCacheIdentifier:v4 scope:v5 transportScope:v6 storedTransportGroup:v8 sharedScope:v9 transportScopeMapping:v10 ruleGroup:v11 highPriority:v16 maxBatchSize:*(a1 + 40) pushRepositoryPriority:v13 pushRepository:*(*(a1 + 32) + 160)];

  v14 = *(a1 + 32);
  v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lu", *(a1 + 48)];
  [v14 _launchSubTask:v18 subIdentifier:v15];
}

- (void)_noteSuccessfulUpdateInTransaction:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_wasBusy)
  {
    v5 = [(CPLEngineScopedTask *)self scope];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLTaskOSLogDomain_11528();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = v5;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEFAULT, "It seems like %@ is not busy any more", buf, 0xCu);
      }
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__CPLPushToTransportScopeTask__noteSuccessfulUpdateInTransaction___block_invoke;
    v9[3] = &unk_1E8620940;
    v9[4] = self;
    v10 = v5;
    v7 = v5;
    [v4 do:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __66__CPLPushToTransportScopeTask__noteSuccessfulUpdateInTransaction___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(*(a1 + 32) + 144) storeBusyState:0 forScope:*(a1 + 40) error:a2];
  if (result)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 176);
    if (v6)
    {
      result = [*(v5 + 144) storeBusyState:0 forScope:v6 error:a2];
      if (!result)
      {
        return result;
      }

      v5 = *(a1 + 32);
    }

    *(v5 + 257) = 0;
    return 1;
  }

  return result;
}

- (void)_prepareTransportGroupForOneBatch
{
  storedTransportGroup = self->_storedTransportGroup;
  if (storedTransportGroup)
  {
    v4 = storedTransportGroup;
  }

  else
  {
    v4 = [(CPLEngineTransport *)self->_transport createGroupForChangeUpload];
  }

  transportGroup = self->_transportGroup;
  self->_transportGroup = v4;

  MEMORY[0x1EEE66BB8](v4, transportGroup);
}

- (BOOL)_shouldUploadBatchesWithDropReason:(id *)a3 shouldQuarantineRecords:(BOOL *)a4 inTransaction:(id)a5
{
  v5 = a4;
  scopes = self->_scopes;
  v8 = [(CPLEngineScopedTask *)self scope:a3];
  LOBYTE(v5) = [(CPLEngineScopeStorage *)scopes shouldDropAllUploadsForScope:v8 dropReason:a3 shouldQuarantineRecords:v5];

  return v5 ^ 1;
}

- (void)_didStartTaskWithKey:(id)a3 recordCount:(unint64_t)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (self->_currentTaskKey)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLTaskOSLogDomain_11528();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        *buf = 138412290;
        v18 = v13;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "%@ called too many times", buf, 0xCu);
      }
    }

    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLPushToTransportTask.m"];
    v16 = NSStringFromSelector(a2);
    [v14 handleFailureInMethod:a2 object:self file:v15 lineNumber:285 description:{@"%@ called too many times", v16}];

    abort();
  }

  self->_currentTaskKey = v7;
  v8 = v7;
  v9 = [MEMORY[0x1E695DF00] date];
  taskStartDate = self->_taskStartDate;
  self->_taskStartDate = v9;

  self->_recordCount = a4;
  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)checkScopeIsValidInTransaction:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = CPLPushToTransportScopeTask;
  v4 = [(CPLEngineScopedTask *)&v18 checkScopeIsValidInTransaction:a3];
  if (v4)
  {
    if (self->_sharedScope)
    {
      v5 = [(CPLEngineScopedTask *)self store];
      v6 = [v5 scopes];
      v7 = [v6 validLocalScopeIndexes];
      v8 = [v7 containsIndex:{-[CPLEngineScope localIndex](self->_sharedScope, "localIndex")}];

      if ((v8 & 1) == 0)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v12 = __CPLTaskOSLogDomain_11528();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            sharedScope = self->_sharedScope;
            v14 = objc_opt_class();
            *buf = 138412546;
            v20 = sharedScope;
            v21 = 2112;
            v22 = v14;
            v15 = v14;
            _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEFAULT, "Scope %@ is invalid, stopping %@ now", buf, 0x16u);
          }

          goto LABEL_12;
        }

LABEL_13:
        [(CPLPushToTransportScopeTask *)self cancel];
        LOBYTE(v4) = 0;
        goto LABEL_14;
      }
    }

    v9 = [(CPLEngineScopedTask *)self store];
    v10 = [v9 cleanupTasks];
    v11 = [v10 hasCleanupTasks];

    if (v11)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v12 = __CPLTaskOSLogDomain_11528();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEFAULT, "Can't upload records until cleanup tasks have been done", buf, 2u);
        }

LABEL_12:

        goto LABEL_13;
      }

      goto LABEL_13;
    }

    LOBYTE(v4) = 1;
  }

LABEL_14:
  v16 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)scopesForTask
{
  if (self->_sharedScope)
  {
    v7.receiver = self;
    v7.super_class = CPLPushToTransportScopeTask;
    v3 = [(CPLEngineScopedTask *)&v7 scopesForTask];
    v4 = [v3 arrayByAddingObject:self->_sharedScope];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CPLPushToTransportScopeTask;
    v4 = [(CPLEngineScopedTask *)&v6 scopesForTask];
  }

  return v4;
}

- (void)_discardCurrentSubtask
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v5 = __53__CPLPushToTransportScopeTask__discardCurrentSubtask__block_invoke;
  v6 = &unk_1E861A940;
  v7 = self;
  v3 = v4;
  os_unfair_lock_lock(&self->_currentSubtaskLock);
  v5(v3);
  os_unfair_lock_unlock(&self->_currentSubtaskLock);
}

void __53__CPLPushToTransportScopeTask__discardCurrentSubtask__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 264);
  *(v1 + 264) = 0;
}

- (void)_launchSubTask:(id)a3 subIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_lock);
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__11582;
  v23[4] = __Block_byref_object_dispose__11583;
  v24 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __60__CPLPushToTransportScopeTask__launchSubTask_subIdentifier___block_invoke;
  v20[3] = &unk_1E861E240;
  v22 = v23;
  v8 = v7;
  v21 = v8;
  [(CPLEngineSyncTask *)self withThroughputReporter:v20];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __60__CPLPushToTransportScopeTask__launchSubTask_subIdentifier___block_invoke_2;
  v16 = &unk_1E861F868;
  v17 = self;
  v9 = v6;
  v18 = v9;
  v19 = v23;
  v10 = &v13;
  os_unfair_lock_lock(&self->_currentSubtaskLock);
  v15(v10);
  os_unfair_lock_unlock(&self->_currentSubtaskLock);

  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = [v11 initWithFormat:@"launching subtask %@", objc_opt_class(), v13, v14];
  [(CPLEngineSyncTask *)self setPhaseDescription:v12];

  if ([(CPLEngineSyncTask *)self isCancelled])
  {
    [(CPLUploadPushedChangesTask *)self->_currentSubtask cancel];
  }

  _Block_object_dispose(v23, 8);
}

uint64_t __60__CPLPushToTransportScopeTask__launchSubTask_subIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 makeChildReportForCategory:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

uint64_t __60__CPLPushToTransportScopeTask__launchSubTask_subIdentifier___block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 264), *(a1 + 40));
  [*(*(a1 + 32) + 264) setForeground:{objc_msgSend(*(a1 + 32), "foreground")}];
  [*(*(a1 + 32) + 264) setForceSync:{objc_msgSend(*(a1 + 32), "forceSync")}];
  [*(*(a1 + 32) + 264) setDelegate:?];
  v2 = [*(a1 + 32) transportUserIdentifier];
  [*(*(a1 + 32) + 264) setTransportUserIdentifier:v2];

  [*(*(a1 + 32) + 264) setThroughputReporter:*(*(*(a1 + 48) + 8) + 40)];
  v3 = *(*(a1 + 32) + 264);

  return [v3 launch];
}

- (CPLUploadPushedChangesTask)currentSubtask
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__11582;
  v15 = __Block_byref_object_dispose__11583;
  v16 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __45__CPLPushToTransportScopeTask_currentSubtask__block_invoke;
  v8 = &unk_1E861A850;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_currentSubtaskLock);
  v7(v3);
  os_unfair_lock_unlock(&self->_currentSubtaskLock);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (CPLPushToTransportScopeTask)initWithEngineLibrary:(id)a3 session:(id)a4 clientCacheIdentifier:(id)a5 scope:(id)a6 transportScope:(id)a7
{
  v12 = a3;
  v13 = a6;
  v34.receiver = self;
  v34.super_class = CPLPushToTransportScopeTask;
  v14 = [(CPLEngineScopedTask *)&v34 initWithEngineLibrary:v12 session:a4 clientCacheIdentifier:a5 scope:v13 transportScope:a7];
  if (v14)
  {
    v15 = CPLCopyDefaultSerialQueueAttributes();
    v16 = dispatch_queue_create("com.apple.cpl.pushtotransport", v15);
    lock = v14->_lock;
    v14->_lock = v16;

    v14->_currentSubtaskLock._os_unfair_lock_opaque = 0;
    v18 = [(CPLEngineSyncTask *)v14 engineLibrary];
    v19 = [v18 transport];
    transport = v14->_transport;
    v14->_transport = v19;

    v21 = [(CPLEngineSyncTask *)v14 engineLibrary];
    v22 = [v21 store];
    v23 = [v22 pushRepository];
    pushRepository = v14->_pushRepository;
    v14->_pushRepository = v23;

    v25 = [(CPLEngineSyncTask *)v14 engineLibrary];
    v26 = [v25 store];
    v27 = [v26 scopes];
    scopes = v14->_scopes;
    v14->_scopes = v27;

    v29 = [v12 scheduler];
    scheduler = v14->_scheduler;
    v14->_scheduler = v29;

    v14->_taskItem = -1;
    v31 = [v13 scopeIdentifier];
    scopeIdentifier = v14->_scopeIdentifier;
    v14->_scopeIdentifier = v31;
  }

  return v14;
}

@end
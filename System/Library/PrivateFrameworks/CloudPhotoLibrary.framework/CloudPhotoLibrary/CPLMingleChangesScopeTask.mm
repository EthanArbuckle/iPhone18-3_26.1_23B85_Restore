@interface CPLMingleChangesScopeTask
- (BOOL)_shouldStashMasterRecords;
- (BOOL)checkScopeIsValidInTransaction:(id)transaction;
- (CPLMingleChangesScopeTask)initWithEngineLibrary:(id)library session:(id)session clientCacheIdentifier:(id)identifier scope:(id)scope transportScope:(id)transportScope;
- (id)_filteredBatchByStashingRecordsIfNecessary:(id)necessary error:(id *)error;
- (void)_acknownledgeFixUpTasks:(id)tasks;
- (void)_finishMingling;
- (void)_fixUpPrivateRecordsPointingToRemappedSharedRecords:(id)records;
- (void)_mingleOtherChanges;
- (void)_mingleRemappings;
- (void)_mingleSharedRemappings;
- (void)_noteBatchWasAddedInPullQueue:(id)queue fromBatch:(id)batch transaction:(id)transaction;
- (void)_notifySchedulerPullQueueIsFullInTransaction:(id)transaction;
- (void)_notifySchedulerPullQueueIsFullNowIfNecessary;
- (void)_reallyNotifySchedulerPullQueueIsFull;
- (void)_unstashRecordsForScope:(id)scope;
- (void)cancel;
- (void)launch;
- (void)taskDidFinishWithError:(id)error;
- (void)transientRepository:(id)repository didResetMingledRecordsForScopesWithFiler:(id)filer;
@end

@implementation CPLMingleChangesScopeTask

- (void)transientRepository:(id)repository didResetMingledRecordsForScopesWithFiler:(id)filer
{
  v19 = *MEMORY[0x1E69E9840];
  repositoryCopy = repository;
  filerCopy = filer;
  if (!self->_minglingHasBeenReset)
  {
    scope = [(CPLEngineScopedTask *)self scope];
    scopeIdentifier = [scope scopeIdentifier];
    v10 = [filerCopy filterOnScopeIdentifier:scopeIdentifier];

    if ((v10 & 1) != 0 || (sharedScope = self->_sharedScope) != 0 && (-[CPLEngineScope scopeIdentifier](sharedScope, "scopeIdentifier"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [filerCopy filterOnScopeIdentifier:v12], v12, v13))
    {
      self->_minglingHasBeenReset = 1;
    }

    if (self->_minglingHasBeenReset)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v14 = __CPLTaskOSLogDomain_14068();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          scope2 = [(CPLEngineScopedTask *)self scope];
          v17 = 138412290;
          v18 = scope2;
          _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEFAULT, "Mingling has been reset for %@ - will need to restart", &v17, 0xCu);
        }
      }

      [(CPLMingleChangesScopeTask *)self cancel];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)cancel
{
  v8.receiver = self;
  v8.super_class = CPLMingleChangesScopeTask;
  [(CPLEngineSyncTask *)&v8 cancel];
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__CPLMingleChangesScopeTask_cancel__block_invoke;
  v7[3] = &unk_1E861A940;
  v7[4] = self;
  v4 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_14080;
  block[3] = &unk_1E861B4E0;
  v10 = v4;
  v5 = lock;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v5, v6);
}

- (void)launch
{
  v23.receiver = self;
  v23.super_class = CPLMingleChangesScopeTask;
  [(CPLEngineSyncTask *)&v23 launch];
  engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
  scheduler = [engineLibrary scheduler];
  [scheduler willRunEngineElement:CPLEngineElementMingling];

  store = [(CPLEngineScopedTask *)self store];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  scope = [(CPLEngineScopedTask *)self scope];
  transientPullRepository = [store transientPullRepository];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __35__CPLMingleChangesScopeTask_launch__block_invoke;
  v15[3] = &unk_1E8620058;
  v8 = transientPullRepository;
  v16 = v8;
  selfCopy = self;
  v9 = store;
  v18 = v9;
  v19 = scope;
  v20 = v21;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __35__CPLMingleChangesScopeTask_launch__block_invoke_3;
  v12[3] = &unk_1E86200A8;
  v12[4] = self;
  v14 = v21;
  v10 = v19;
  v13 = v10;
  v11 = [v9 performWriteTransactionWithBlock:v15 completionHandler:v12];

  _Block_object_dispose(v21, 8);
}

void __35__CPLMingleChangesScopeTask_launch__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) addObserver:*(a1 + 40)];
  if ([*(a1 + 40) checkScopeIsValidInTransaction:v3])
  {
    v4 = [*(a1 + 48) scopes];
    v5 = [v4 sharingScopeForScope:*(a1 + 56)];
    v6 = *(a1 + 40);
    v7 = *(v6 + 144);
    *(v6 + 144) = v5;

    v8 = *(a1 + 40);
    if (*(v8 + 144))
    {
      v9 = [v4 valueForFlag:36 forScope:?];
      v8 = *(a1 + 40);
      if (v9)
      {
        v10 = *(v8 + 144);
        *(v8 + 144) = 0;

        v8 = *(a1 + 40);
      }
    }

    if (*(v8 + 144) && !*(v8 + 152))
    {
      v11 = [CPLTransportScopeMapping alloc];
      v12 = [*(a1 + 40) engineLibrary];
      v13 = [v12 transport];
      v14 = [(CPLTransportScopeMapping *)v11 initWithTranslator:v13];
      v15 = *(a1 + 40);
      v16 = *(v15 + 152);
      *(v15 + 152) = v14;

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __35__CPLMingleChangesScopeTask_launch__block_invoke_2;
      v23[3] = &unk_1E861FF88;
      v23[4] = *(a1 + 40);
      v24 = *(a1 + 56);
      v25 = *(a1 + 48);
      [v3 do:v23];
    }

    v17 = *(a1 + 32);
    v18 = [*(a1 + 56) scopeIdentifier];
    *(*(*(a1 + 64) + 8) + 24) = [v17 hasStashedChangesForScopeWithIdentifier:v18];

    if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
    {
      v19 = *(*(a1 + 40) + 144);
      if (v19)
      {
        v20 = *(a1 + 32);
        v21 = [v19 scopeIdentifier];
        *(*(*(a1 + 64) + 8) + 24) = [v20 hasStashedChangesForScopeWithIdentifier:v21];
      }
    }

    if ([v4 shouldTrackAdditionalInitialSyncDatesForScope:*(a1 + 56)])
    {
      v22 = [v4 initialMingleDateForScope:*(a1 + 56)];
      *(*(a1 + 40) + 200) = v22 == 0;
    }
  }
}

void __35__CPLMingleChangesScopeTask_launch__block_invoke_3(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 error];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v9 error];
    [v4 taskDidFinishWithError:v5];
  }

  else if ([*(a1 + 32) isCancelled])
  {
    v6 = *(a1 + 32);
    v7 = +[CPLErrors operationCancelledError];
    [v6 taskDidFinishWithError:v7];
  }

  else
  {
    v8 = *(a1 + 32);
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      [v8 _unstashRecordsForScope:*(a1 + 40)];
    }

    else
    {
      [v8 _mingleRemappings];
    }
  }
}

uint64_t __35__CPLMingleChangesScopeTask_launch__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 152);
  v5 = [*(a1 + 48) scopes];
  v6 = [v4 addTransportScopeForScope:v3 scopes:v5 allowsTentativeTransportScope:0 useStagingScopeIfNecessary:0 error:a2];

  return v6;
}

- (void)_unstashRecordsForScope:(id)scope
{
  scopeCopy = scope;
  store = [(CPLEngineScopedTask *)self store];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__CPLMingleChangesScopeTask__unstashRecordsForScope___block_invoke;
  v11[3] = &unk_1E86200A8;
  v11[4] = self;
  v12 = scopeCopy;
  v13 = v14;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__CPLMingleChangesScopeTask__unstashRecordsForScope___block_invoke_5;
  v8[3] = &unk_1E86200A8;
  v8[4] = self;
  v10 = v14;
  v6 = v12;
  v9 = v6;
  v7 = [store performWriteTransactionWithBlock:v11 completionHandler:v8];

  _Block_object_dispose(v14, 8);
}

void __53__CPLMingleChangesScopeTask__unstashRecordsForScope___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) checkScopeIsValidInTransaction:v3])
  {
    v4 = [*(a1 + 32) store];
    v5 = [v4 transientPullRepository];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__CPLMingleChangesScopeTask__unstashRecordsForScope___block_invoke_2;
    v11[3] = &unk_1E861DE18;
    v12 = v5;
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v13 = v6;
    v16 = v7;
    v8 = v3;
    v9 = *(a1 + 32);
    v14 = v8;
    v15 = v9;
    v10 = v5;
    [v8 do:v11];
  }
}

void __53__CPLMingleChangesScopeTask__unstashRecordsForScope___block_invoke_5(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 error];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v13 error];
    [v4 taskDidFinishWithError:v5];

    goto LABEL_11;
  }

  if ([*(a1 + 32) isCancelled])
  {
    v6 = *(a1 + 32);
    v7 = +[CPLErrors operationCancelledError];
    [v6 taskDidFinishWithError:v7];

    goto LABEL_11;
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
LABEL_7:
    [v8 _unstashRecordsForScope:v9];
    goto LABEL_11;
  }

  v10 = *(a1 + 40);
  v11 = [*(a1 + 32) scope];
  if (v10 == v11)
  {
    v12 = *(*(a1 + 32) + 144);

    if (v12)
    {
      v8 = *(a1 + 32);
      v9 = v8[18];
      goto LABEL_7;
    }
  }

  else
  {
  }

  [*(a1 + 32) _mingleRemappings];
LABEL_11:
}

uint64_t __53__CPLMingleChangesScopeTask__unstashRecordsForScope___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) scopeIdentifier];
  v6 = [v4 unstashRecordsForScopeWithIdentifier:v5 maxCount:1000 hasMore:*(*(a1 + 64) + 8) + 24 unstashedCount:&v11 error:a2];

  if (v6)
  {
    v7 = v11 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__CPLMingleChangesScopeTask__unstashRecordsForScope___block_invoke_3;
    v10[3] = &unk_1E861FB48;
    v8 = *(a1 + 48);
    v10[4] = *(a1 + 56);
    v10[5] = v11;
    [v8 addCleanupBlock:v10];
  }

  return v6;
}

uint64_t __53__CPLMingleChangesScopeTask__unstashRecordsForScope___block_invoke_3(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    v5[5] = v2;
    v5[6] = v3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __53__CPLMingleChangesScopeTask__unstashRecordsForScope___block_invoke_4;
    v5[3] = &__block_descriptor_40_e35_v16__0__CPLSyncThroughputReporter_8l;
    v4 = *(result + 32);
    v5[4] = *(result + 40);
    return [v4 withThroughputReporter:v5];
  }

  return result;
}

- (void)_mingleRemappings
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(CPLEngineSyncTask *)self diskPressureState]== 2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLTaskOSLogDomain_14068();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = self;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "System had not enough disk space to continue %@", &buf, 0xCu);
      }
    }

    v4 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E696A578];
    v16 = @"Not enough disk space";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v6 = [v4 initWithDomain:*MEMORY[0x1E696A250] code:640 userInfo:v5];

    [(CPLMingleChangesScopeTask *)self taskDidFinishWithError:v6];
  }

  else
  {
    engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
    store = [engineLibrary store];

    *&buf = 0;
    *(&buf + 1) = &buf;
    v18 = 0x2020000000;
    v19 = 1;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__CPLMingleChangesScopeTask__mingleRemappings__block_invoke;
    v12[3] = &unk_1E86200A8;
    v12[4] = self;
    v6 = store;
    v13 = v6;
    p_buf = &buf;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __46__CPLMingleChangesScopeTask__mingleRemappings__block_invoke_6;
    v11[3] = &unk_1E8620A60;
    v11[4] = self;
    v11[5] = &buf;
    v9 = [v6 performWriteTransactionWithBlock:v12 completionHandler:v11];

    _Block_object_dispose(&buf, 8);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __46__CPLMingleChangesScopeTask__mingleRemappings__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) checkScopeIsValidInTransaction:v3])
  {
    v4 = [*(a1 + 32) store];
    v5 = [v4 transientPullRepository];

    v6 = [*(a1 + 32) scope];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__CPLMingleChangesScopeTask__mingleRemappings__block_invoke_2;
    v12[3] = &unk_1E861DDF0;
    v13 = v5;
    v14 = v6;
    v7 = *(a1 + 40);
    v15 = *(a1 + 32);
    v16 = v7;
    v8 = v3;
    v9 = *(a1 + 48);
    v17 = v8;
    v18 = v9;
    v10 = v6;
    v11 = v5;
    [v8 do:v12];
  }
}

void __46__CPLMingleChangesScopeTask__mingleRemappings__block_invoke_6(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    v3 = *(a1 + 32);
    v4 = +[CPLErrors operationCancelledError];
LABEL_5:
    v6 = v4;
    [v3 taskDidFinishWithError:v4];

    goto LABEL_6;
  }

  v5 = [v8 error];

  if (v5)
  {
    v3 = *(a1 + 32);
    v4 = [v8 error];
    goto LABEL_5;
  }

  v7 = *(a1 + 32);
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    [v7 _mingleRemappings];
  }

  else if (v7[18])
  {
    [v7 _mingleSharedRemappings];
  }

  else
  {
    [v7 _mingleOtherChanges];
  }

LABEL_6:
}

BOOL __46__CPLMingleChangesScopeTask__mingleRemappings__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) nextBatchOfRemappedRecordsInScope:*(a1 + 40) maximumCount:{objc_msgSend(*(a1 + 32), "maximumCountOfRecordsInBatches")}];
  if ([v4 count])
  {
    *(*(a1 + 48) + 192) += [v4 count];
    v5 = *(a1 + 56);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __46__CPLMingleChangesScopeTask__mingleRemappings__block_invoke_3;
    v13[3] = &unk_1E861DD78;
    v6 = *(a1 + 40);
    v13[4] = *(a1 + 48);
    v7 = v4;
    v14 = v7;
    v15 = *(a1 + 64);
    v8 = [CPLMingleUtility mingleRemappedBatch:v7 scope:v6 forStore:v5 onPutBatchInPullQueue:v13 error:a2];
    if (v8)
    {
      v9 = *(a1 + 64);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __46__CPLMingleChangesScopeTask__mingleRemappings__block_invoke_4;
      v11[3] = &unk_1E86204A0;
      v11[4] = *(a1 + 48);
      v12 = v7;
      [v9 addCleanupBlock:v11];
    }
  }

  else
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
    v8 = 1;
  }

  return v8;
}

void __46__CPLMingleChangesScopeTask__mingleRemappings__block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v7 = v2;
    v8 = v3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __46__CPLMingleChangesScopeTask__mingleRemappings__block_invoke_5;
    v5[3] = &unk_1E8620848;
    v4 = *(a1 + 32);
    v6 = *(a1 + 40);
    [v4 withThroughputReporter:v5];
  }
}

void __46__CPLMingleChangesScopeTask__mingleRemappings__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 addCompletedWorkItemCount:objc_msgSend(v2 kindOfWork:{"count"), @"records"}];
}

- (void)_mingleSharedRemappings
{
  v25 = *MEMORY[0x1E69E9840];
  if ([(CPLEngineSyncTask *)self diskPressureState]== 2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLTaskOSLogDomain_14068();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = self;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "System had not enough disk space to continue %@", &buf, 0xCu);
      }
    }

    v4 = objc_alloc(MEMORY[0x1E696ABC0]);
    v18 = *MEMORY[0x1E696A578];
    v19 = @"Not enough disk space";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v6 = [v4 initWithDomain:*MEMORY[0x1E696A250] code:640 userInfo:v5];

    [(CPLMingleChangesScopeTask *)self taskDidFinishWithError:v6];
  }

  else
  {
    engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
    store = [engineLibrary store];

    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v17 = 1;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__14099;
    v23 = __Block_byref_object_dispose__14100;
    v24 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __52__CPLMingleChangesScopeTask__mingleSharedRemappings__block_invoke;
    v12[3] = &unk_1E8620260;
    v12[4] = self;
    v6 = store;
    v13 = v6;
    p_buf = &buf;
    v15 = v16;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52__CPLMingleChangesScopeTask__mingleSharedRemappings__block_invoke_4;
    v11[3] = &unk_1E86209E0;
    v11[4] = self;
    v11[5] = &buf;
    v11[6] = v16;
    v9 = [v6 performWriteTransactionWithBlock:v12 completionHandler:v11];

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(v16, 8);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __52__CPLMingleChangesScopeTask__mingleSharedRemappings__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) checkScopeIsValidInTransaction:v3])
  {
    v4 = [*(a1 + 32) store];
    v5 = [v4 transientPullRepository];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__CPLMingleChangesScopeTask__mingleSharedRemappings__block_invoke_2;
    v9[3] = &unk_1E861DDC8;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v10 = v5;
    v11 = v6;
    v12 = v7;
    v13 = v3;
    v14 = *(a1 + 48);
    v8 = v5;
    [v13 do:v9];
  }
}

void __52__CPLMingleChangesScopeTask__mingleSharedRemappings__block_invoke_4(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    v3 = *(a1 + 32);
    v4 = +[CPLErrors operationCancelledError];
LABEL_5:
    v6 = v4;
    [v3 taskDidFinishWithError:v4];

    goto LABEL_6;
  }

  v5 = [v8 error];

  if (v5)
  {
    v3 = *(a1 + 32);
    v4 = [v8 error];
    goto LABEL_5;
  }

  if ([*(*(*(a1 + 40) + 8) + 40) count])
  {
    [*(a1 + 32) _fixUpPrivateRecordsPointingToRemappedSharedRecords:*(*(*(a1 + 40) + 8) + 40)];
  }

  else
  {
    v7 = *(a1 + 32);
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      [v7 _mingleSharedRemappings];
    }

    else
    {
      [v7 _mingleOtherChanges];
    }
  }

LABEL_6:
}

BOOL __52__CPLMingleChangesScopeTask__mingleSharedRemappings__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) nextBatchOfRemappedRecordsInScope:*(*(a1 + 40) + 144) maximumCount:{objc_msgSend(*(a1 + 32), "maximumCountOfRecordsInBatches")}];
  if ([v4 count])
  {
    *(*(a1 + 40) + 192) += [v4 count];
    v5 = [*(a1 + 40) scope];
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(v6 + 144);
    v16 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__CPLMingleChangesScopeTask__mingleSharedRemappings__block_invoke_3;
    v13[3] = &unk_1E861DD78;
    v13[4] = v6;
    v14 = v4;
    v15 = *(a1 + 56);
    v9 = [CPLMingleUtility mingleSharedRemappedBatch:v14 scope:v5 sharedScope:v8 forStore:v7 fixUpTasks:&v16 onPutBatchInPullQueue:v13 error:a2];
    v10 = v16;
    v11 = v16;

    if (v9)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v10);
    }
  }

  else
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
    v9 = 1;
  }

  return v9;
}

- (void)_fixUpPrivateRecordsPointingToRemappedSharedRecords:(id)records
{
  recordsCopy = records;
  lock = self->_lock;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__CPLMingleChangesScopeTask__fixUpPrivateRecordsPointingToRemappedSharedRecords___block_invoke;
  v10[3] = &unk_1E861B290;
  v10[4] = self;
  v11 = recordsCopy;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_14080;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = lock;
  v8 = recordsCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __81__CPLMingleChangesScopeTask__fixUpPrivateRecordsPointingToRemappedSharedRecords___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) engineLibrary];
  v3 = [v2 transport];

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 152);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __81__CPLMingleChangesScopeTask__fixUpPrivateRecordsPointingToRemappedSharedRecords___block_invoke_2;
  v16 = &unk_1E86204A0;
  v17 = v5;
  v18 = v4;
  v7 = [v3 fixUpSparseRecordsTaskWithTasks:v18 transportScopeMapping:v6 completionHandler:&v13];
  v8 = *(a1 + 32);
  v9 = *(v8 + 160);
  *(v8 + 160) = v7;

  v10 = *(a1 + 32);
  v11 = v10[20];
  v12 = [v3 createGroupForFixUpTasks];
  [v10 launchTransportTask:v11 withTransportGroup:v12];
}

void __81__CPLMingleChangesScopeTask__fixUpPrivateRecordsPointingToRemappedSharedRecords___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) engineLibrary];
  v5 = [v4 scheduler];
  [v5 noteServerHasChanges];

  if (v3)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLTaskOSLogDomain_14068();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 40);
        v9 = 138412546;
        v10 = v7;
        v11 = 2112;
        v12 = v3;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Failed to fix %@: %@", &v9, 0x16u);
      }
    }

    [*(a1 + 32) taskDidFinishWithError:v3];
  }

  else
  {
    [*(a1 + 32) _acknownledgeFixUpTasks:*(a1 + 40)];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_acknownledgeFixUpTasks:(id)tasks
{
  v22 = *MEMORY[0x1E69E9840];
  tasksCopy = tasks;
  if ([(CPLEngineSyncTask *)self diskPressureState]== 2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLTaskOSLogDomain_14068();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "System had not enough disk space to continue %@", buf, 0xCu);
      }
    }

    v6 = objc_alloc(MEMORY[0x1E696ABC0]);
    v7 = *MEMORY[0x1E696A250];
    v18 = *MEMORY[0x1E696A578];
    v19 = @"Not enough disk space";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v9 = [v6 initWithDomain:v7 code:640 userInfo:v8];

    [(CPLMingleChangesScopeTask *)self taskDidFinishWithError:v9];
  }

  else
  {
    engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
    store = [engineLibrary store];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__CPLMingleChangesScopeTask__acknownledgeFixUpTasks___block_invoke;
    v15[3] = &unk_1E86200D0;
    v15[4] = self;
    v16 = tasksCopy;
    v17 = store;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __53__CPLMingleChangesScopeTask__acknownledgeFixUpTasks___block_invoke_4;
    v14[3] = &unk_1E86205E0;
    v14[4] = self;
    v9 = store;
    v12 = [v9 performWriteTransactionWithBlock:v15 completionHandler:v14];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __53__CPLMingleChangesScopeTask__acknownledgeFixUpTasks___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if ([a1[4] checkScopeIsValidInTransaction:v3])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __53__CPLMingleChangesScopeTask__acknownledgeFixUpTasks___block_invoke_2;
    v6[3] = &unk_1E8620968;
    v4 = a1[5];
    v5 = a1[4];
    v7 = v4;
    v8 = v5;
    v9 = a1[6];
    v10 = v3;
    [v10 do:v6];
  }
}

void __53__CPLMingleChangesScopeTask__acknownledgeFixUpTasks___block_invoke_4(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    v3 = *(a1 + 32);
    v4 = +[CPLErrors operationCancelledError];
LABEL_5:
    v6 = v4;
    [v3 taskDidFinishWithError:v4];

    goto LABEL_6;
  }

  v5 = [v7 error];

  v3 = *(a1 + 32);
  if (v5)
  {
    v4 = [v7 error];
    goto LABEL_5;
  }

  [v3 _mingleSharedRemappings];
LABEL_6:
}

BOOL __53__CPLMingleChangesScopeTask__acknownledgeFixUpTasks___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) scope];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__CPLMingleChangesScopeTask__acknownledgeFixUpTasks___block_invoke_3;
  v9[3] = &unk_1E861DDA0;
  v6 = *(a1 + 48);
  v9[4] = *(a1 + 40);
  v10 = *(a1 + 56);
  v7 = [CPLMingleUtility applyShareRemapFixUpTasks:v4 scope:v5 store:v6 onPutBatchInPullQueue:v9 error:a2];

  return v7;
}

- (void)_mingleOtherChanges
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(CPLEngineSyncTask *)self diskPressureState]== 2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLTaskOSLogDomain_14068();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = self;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "System had not enough disk space to continue %@", &buf, 0xCu);
      }
    }

    v4 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E696A578];
    v16 = @"Not enough disk space";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v6 = [v4 initWithDomain:*MEMORY[0x1E696A250] code:640 userInfo:v5];

    [(CPLMingleChangesScopeTask *)self taskDidFinishWithError:v6];
  }

  else
  {
    engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
    store = [engineLibrary store];

    *&buf = 0;
    *(&buf + 1) = &buf;
    v18 = 0x2020000000;
    v19 = 1;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__CPLMingleChangesScopeTask__mingleOtherChanges__block_invoke;
    v12[3] = &unk_1E86200A8;
    v12[4] = self;
    p_buf = &buf;
    v6 = store;
    v13 = v6;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __48__CPLMingleChangesScopeTask__mingleOtherChanges__block_invoke_76;
    v11[3] = &unk_1E8620A60;
    v11[4] = self;
    v11[5] = &buf;
    v9 = [v6 performWriteTransactionWithBlock:v12 completionHandler:v11];

    _Block_object_dispose(&buf, 8);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __48__CPLMingleChangesScopeTask__mingleOtherChanges__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) checkScopeIsValidInTransaction:v3])
  {
    v4 = [*(a1 + 32) scope];
    v5 = *(a1 + 32);
    if (!v5[17])
    {
      v6 = [v5 store];
      v7 = [v6 transientPullRepository];

      v8 = [v7 batchStorageForScope:v4];
      v9 = *(a1 + 32);
      v10 = *(v9 + 128);
      *(v9 + 128) = v8;

      v11 = *(*(a1 + 32) + 128);
      v12 = [v4 scopeIdentifier];
      v13 = +[CPLBatchExtractionStrategy minglingStrategyWithStorage:coveringScopeIdentifier:maximumBatchSize:](CPLBatchExtractionStrategy, "minglingStrategyWithStorage:coveringScopeIdentifier:maximumBatchSize:", v11, v12, [v7 maximumCountOfRecordsInBatches]);
      v14 = *(a1 + 32);
      v15 = *(v14 + 136);
      *(v14 + 136) = v13;

      v5 = *(a1 + 32);
    }

    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x3032000000;
    v33[3] = __Block_byref_object_copy__14099;
    v33[4] = __Block_byref_object_dispose__14100;
    v34 = 0;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __48__CPLMingleChangesScopeTask__mingleOtherChanges__block_invoke_2;
    v27[3] = &unk_1E861DDC8;
    v27[4] = v5;
    v31 = v33;
    v32 = *(a1 + 48);
    v16 = v4;
    v28 = v16;
    v29 = *(a1 + 40);
    v17 = v3;
    v30 = v17;
    [v17 do:v27];
    v18 = [v17 error];
    if (!v18)
    {
      if (*(*(a1 + 32) + 144) && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
      {
        v19 = [MEMORY[0x1E695E000] standardUserDefaults];
        v20 = [v19 BOOLForKey:@"CPLDisableAutomaticReshare"];

        if (v20)
        {
          goto LABEL_9;
        }

        v18 = +[CPLReshareTask cutoffDate];
        v21 = [*(a1 + 40) ignoredRecords];
        v22 = [*(*(a1 + 32) + 144) scopeIdentifier];
        v23 = [v21 scopeIdentifier:v22 hasIgnoredRecordsBeforeDate:v18];

        if (v23)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v24 = __CPLTaskOSLogDomain_14068();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *v26 = 0;
              _os_log_impl(&dword_1DC05A000, v24, OS_LOG_TYPE_DEFAULT, "It seems some ignored records will need to be reshared after mingling", v26, 2u);
            }
          }

          v25 = [*(a1 + 32) session];
          [v25 requestSyncStateAtEndOfSyncSession:9 reschedule:1];
        }
      }

      else
      {
        v18 = 0;
      }
    }

LABEL_9:
    _Block_object_dispose(v33, 8);
  }
}

void __48__CPLMingleChangesScopeTask__mingleOtherChanges__block_invoke_76(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    v3 = *(a1 + 32);
    v4 = +[CPLErrors operationCancelledError];
LABEL_5:
    v6 = v4;
    [v3 taskDidFinishWithError:v4];

    goto LABEL_6;
  }

  v5 = [v8 error];

  if (v5)
  {
    v3 = *(a1 + 32);
    v4 = [v8 error];
    goto LABEL_5;
  }

  v7 = *(a1 + 32);
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    [v7 _mingleOtherChanges];
  }

  else
  {
    [v7 _finishMingling];
  }

LABEL_6:
}

BOOL __48__CPLMingleChangesScopeTask__mingleOtherChanges__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 136);
  v5 = *(*(a1 + 64) + 8);
  v20 = 0;
  v6 = [v4 extractBatch:&v20 maximumResourceSize:-1 error:a2];
  objc_storeStrong((v5 + 40), v20);
  if (!v6)
  {
    return 0;
  }

  v7 = [*(*(*(a1 + 64) + 8) + 40) batch];
  *(*(*(a1 + 72) + 8) + 24) = [v7 count] != 0;
  if (v7 && (v8 = *(a1 + 32), v8[168] == 1) && ([v8 _filteredBatchByStashingRecordsIfNecessary:v7 error:a2], v9 = objc_claimAutoreleasedReturnValue(), v7, (v7 = v9) == 0))
  {
    v12 = 0;
  }

  else if ([v7 count])
  {
    *(*(a1 + 32) + 192) += [v7 count];
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __48__CPLMingleChangesScopeTask__mingleOtherChanges__block_invoke_3;
    v17[3] = &unk_1E861DD78;
    v17[4] = *(a1 + 32);
    v7 = v7;
    v18 = v7;
    v19 = *(a1 + 56);
    v12 = [CPLMingleUtility mingleChangeBatch:v7 scope:v10 forStore:v11 onPutBatchInPullQueue:v17 error:a2];
    if (v12)
    {
      v13 = *(a1 + 56);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __48__CPLMingleChangesScopeTask__mingleOtherChanges__block_invoke_4;
      v15[3] = &unk_1E86204A0;
      v15[4] = *(a1 + 32);
      v16 = v7;
      [v13 addCleanupBlock:v15];
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

void __48__CPLMingleChangesScopeTask__mingleOtherChanges__block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v7 = v2;
    v8 = v3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __48__CPLMingleChangesScopeTask__mingleOtherChanges__block_invoke_5;
    v5[3] = &unk_1E8620848;
    v4 = *(a1 + 32);
    v6 = *(a1 + 40);
    [v4 withThroughputReporter:v5];
  }
}

void __48__CPLMingleChangesScopeTask__mingleOtherChanges__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 addCompletedWorkItemCount:objc_msgSend(v2 kindOfWork:{"count"), @"records"}];
}

- (id)_filteredBatchByStashingRecordsIfNecessary:(id)necessary error:(id *)error
{
  v104 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  selfCopy = self;
  store = [(CPLEngineScopedTask *)self store];
  pushRepository = [store pushRepository];
  cloudCache = [store cloudCache];
  idMapping = [store idMapping];
  scope = [(CPLEngineScopedTask *)self scope];
  localIndex = [scope localIndex];
  v92 = 0;
  v93 = &v92;
  v94 = 0x3032000000;
  v95 = __Block_byref_object_copy__14099;
  v96 = __Block_byref_object_dispose__14100;
  v97 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = __Block_byref_object_copy__14099;
  v90 = __Block_byref_object_dispose__14100;
  v47 = necessaryCopy;
  v91 = v47;
  v7 = objc_alloc(MEMORY[0x1E695DF90]);
  v52 = [v7 initWithCapacity:{objc_msgSend(v87[5], "count")}];
  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = __Block_byref_object_copy__14099;
  v84 = __Block_byref_object_dispose__14100;
  v85 = 0;
  do
  {
    v8 = v87[5];
    if (!v8 || ![v8 count])
    {
      break;
    }

    v9 = objc_autoreleasePoolPush();
    records = [v87[5] records];
    v11 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __78__CPLMingleChangesScopeTask__filteredBatchByStashingRecordsIfNecessary_error___block_invoke;
    v68[3] = &unk_1E861DD00;
    v69 = idMapping;
    v78 = localIndex;
    v70 = pushRepository;
    v71 = cloudCache;
    v72 = v52;
    v73 = selfCopy;
    v75 = &v86;
    v12 = v11;
    v74 = v12;
    v79 = a2;
    v76 = &v80;
    v77 = &v92;
    [records enumerateObjectsUsingBlock:v68];
    v13 = v87[5];
    if (v13 && [v12 count])
    {
      v14 = [records mutableCopy];
      [v14 removeObjectsAtIndexes:v12];
      v15 = [v14 count];
      v16 = [v12 count];
      if (v16 + v15 != [records count])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v35 = __CPLTaskOSLogDomain_14068();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v36 = [v12 count];
            v37 = [records count];
            v38 = [v14 count];
            *buf = 134218496;
            v99 = v36;
            v100 = 2048;
            v101 = v37;
            v102 = 2048;
            v103 = v38;
            _os_log_impl(&dword_1DC05A000, v35, OS_LOG_TYPE_ERROR, "Trying to remove objects at %lu indexes from an array of %lu elements returned %lu elements", buf, 0x20u);
          }
        }

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLMingleChangesTask.m"];
        [currentHandler handleFailureInMethod:a2 object:selfCopy file:v40 lineNumber:459 description:{@"Trying to remove objects at %lu indexes from an array of %lu elements returned %lu elements", objc_msgSend(v12, "count"), objc_msgSend(records, "count"), objc_msgSend(v14, "count")}];

LABEL_32:
        abort();
      }

      [v87[5] _setRecords:v14];

      v17 = 0;
    }

    else
    {
      v17 = 1;
    }

    objc_autoreleasePoolPop(v9);
    v18 = v17 ^ 1;
    if (!v13)
    {
      v18 = 0;
    }
  }

  while ((v18 & 1) != 0);
  if (v87[5] && [v81[5] count])
  {
    v19 = objc_alloc(MEMORY[0x1E695DF90]);
    v20 = [v19 initWithCapacity:{objc_msgSend(v81[5], "count")}];
    v21 = objc_alloc(MEMORY[0x1E695DF90]);
    v22 = [v21 initWithCapacity:{objc_msgSend(v81[5], "count")}];
    records2 = [v87[5] records];
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __78__CPLMingleChangesScopeTask__filteredBatchByStashingRecordsIfNecessary_error___block_invoke_59;
    v64[3] = &unk_1E861DD28;
    v67 = &v80;
    v24 = v20;
    v65 = v24;
    v25 = v22;
    v66 = v25;
    [records2 enumerateObjectsUsingBlock:v64];
    if ([v24 count])
    {
      v26 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __78__CPLMingleChangesScopeTask__filteredBatchByStashingRecordsIfNecessary_error___block_invoke_2;
      v57[3] = &unk_1E861DD50;
      v27 = v26;
      v58 = v27;
      v59 = v25;
      v60 = selfCopy;
      v61 = &v92;
      v62 = &v86;
      v63 = a2;
      [v24 enumerateKeysAndObjectsUsingBlock:v57];
      if (v87[5] && v27)
      {
        v28 = [records2 mutableCopy];
        [v28 removeObjectsAtIndexes:v27];
        v29 = [v28 count];
        v30 = [v27 count];
        if (v30 + v29 != [records2 count])
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v41 = __CPLTaskOSLogDomain_14068();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              v42 = [v27 count];
              v43 = [records2 count];
              v44 = [v28 count];
              *buf = 134218496;
              v99 = v42;
              v100 = 2048;
              v101 = v43;
              v102 = 2048;
              v103 = v44;
              _os_log_impl(&dword_1DC05A000, v41, OS_LOG_TYPE_ERROR, "Trying to remove objects at %lu indexes from an array of %lu elements returned %lu elements", buf, 0x20u);
            }
          }

          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLMingleChangesTask.m"];
          [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:v46 lineNumber:508 description:{@"Trying to remove objects at %lu indexes from an array of %lu elements returned %lu elements", objc_msgSend(v27, "count"), objc_msgSend(records2, "count"), objc_msgSend(v28, "count")}];

          goto LABEL_32;
        }

        [v87[5] _setRecords:v28];
      }
    }
  }

  v31 = v87[5];
  if (error && !v31)
  {
    *error = v93[5];
    v31 = v87[5];
  }

  v32 = v31;
  _Block_object_dispose(&v80, 8);

  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(&v92, 8);

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

void __78__CPLMingleChangesScopeTask__filteredBatchByStashingRecordsIfNecessary_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v79 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [v7 scopedIdentifier];
  v73 = 0;
  v9 = [*(a1 + 32) localScopedIdentifierForCloudScopedIdentifier:v8 isFinal:&v73];
  if (!v9)
  {
    v9 = [v8 copy];
  }

  [v9 setScopeIndex:*(a1 + 104)];
  if ([v7 isDelete])
  {
    if ([v7 isMasterChange])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v10 = __CPLTaskOSLogDomain_14068();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_67;
        }

        *buf = 138412290;
        v76 = v7;
        v11 = "%@ is a master delete - stashing change";
        v12 = v10;
        v13 = 12;
LABEL_12:
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
        goto LABEL_67;
      }

      goto LABEL_102;
    }

    v14 = [*(a1 + 40) changeWithScopedIdentifier:v9];
    v10 = v14;
    if (v14)
    {
      if (([v14 isDelete]& 1) == 0)
      {
        if (([v7 isFullRecord] & 1) == 0)
        {
          if (_CPLSilentLogging)
          {
            LOBYTE(v28) = 0;
            v29 = 0;
            goto LABEL_68;
          }

          v15 = __CPLTaskOSLogDomain_14068();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v76 = v7;
            v77 = 2112;
            v78 = v9;
            _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_DEFAULT, "%@ conflicts with update on change %@ in push repository - deleting the local change", buf, 0x16u);
          }

          v28 = 0;
LABEL_56:

          v29 = v28;
          goto LABEL_68;
        }

        if (_CPLSilentLogging)
        {
          goto LABEL_67;
        }

        v15 = __CPLTaskOSLogDomain_14068();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
LABEL_43:
          v28 = 1;
          goto LABEL_56;
        }

        *buf = 138412546;
        v76 = v7;
        v77 = 2112;
        v78 = v9;
        v16 = "%@ conflicts with non-delete change %@ in push repository - stashing change";
        v17 = v15;
        v18 = 22;
LABEL_42:
        _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
        goto LABEL_43;
      }
    }

    else
    {
      if (([*(a1 + 48) hasAnyRecordWithRelatedScopedIdentifier:v8] & 1) != 0 || objc_msgSend(*(a1 + 40), "hasAnyChangeWithRelatedScopedIdentifier:", v9))
      {
        if (_CPLSilentLogging)
        {
          v10 = 0;
          goto LABEL_67;
        }

        v15 = __CPLTaskOSLogDomain_14068();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_43;
        }

        *buf = 138412290;
        v76 = v7;
        v16 = "%@ has a conflicting change pointing to that record in the cloud cache or push repository - stashing change";
        v17 = v15;
        v18 = 12;
        goto LABEL_42;
      }

      v10 = 0;
    }

    v29 = 0;
    LOBYTE(v28) = 1;
    goto LABEL_68;
  }

  if ([*(a1 + 40) hasSomeChangeWithScopedIdentifier:v9])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLTaskOSLogDomain_14068();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_67;
      }

      *buf = 138412546;
      v76 = v7;
      v77 = 2112;
      v78 = v9;
      v11 = "%@ conflicts with change %@ in push repository - stashing change";
      v12 = v10;
      v13 = 22;
      goto LABEL_12;
    }

LABEL_102:
    LOBYTE(v28) = 1;
    goto LABEL_69;
  }

  v66 = v9;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v10 = [v7 scopedIdentifiersForMapping];
  v19 = [v10 countByEnumeratingWithState:&v69 objects:v74 count:16];
  if (!v19)
  {
    v29 = 0;
    LOBYTE(v28) = 1;
    goto LABEL_68;
  }

  v20 = v19;
  v64 = a3;
  v65 = a4;
  v21 = *v70;
LABEL_21:
  v22 = 0;
  while (1)
  {
    if (*v70 != v21)
    {
      objc_enumerationMutation(v10);
    }

    v23 = *(*(&v69 + 1) + 8 * v22);
    if (([v23 isEqual:v8]& 1) != 0)
    {
      goto LABEL_33;
    }

    v24 = [*(a1 + 56) objectForKeyedSubscript:v23];

    if (v24)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v25 = __CPLTaskOSLogDomain_14068();
        a4 = v65;
        v9 = v66;
        a3 = v64;
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_66;
        }

        *buf = 138412546;
        v76 = v7;
        v77 = 2112;
        v78 = v23;
        v30 = "%@ points to %@ which has been stashed in the same batch - stashing change";
LABEL_51:
        _os_log_impl(&dword_1DC05A000, v25, OS_LOG_TYPE_DEFAULT, v30, buf, 0x16u);
        goto LABEL_66;
      }

LABEL_108:
      LOBYTE(v28) = 1;
      v29 = 1;
LABEL_36:
      a4 = v65;
      v9 = v66;
      a3 = v64;
      goto LABEL_68;
    }

    if ([*(*(a1 + 64) + 128) isRecordWithScopedIdentifierStashed:v23])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v25 = __CPLTaskOSLogDomain_14068();
        a4 = v65;
        v9 = v66;
        a3 = v64;
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_66;
        }

        *buf = 138412546;
        v76 = v7;
        v77 = 2112;
        v78 = v23;
        v30 = "%@ points to %@ which has been stashed - stashing change";
        goto LABEL_51;
      }

      goto LABEL_108;
    }

    v25 = [*(a1 + 32) localScopedIdentifierForCloudScopedIdentifierIncludeRemappedRecords:v23];
    if (!v25)
    {
      v25 = [v23 copy];
    }

    [v25 setScopeIndex:*(a1 + 104)];
    v26 = [*(a1 + 40) changeWithScopedIdentifier:v25];
    v27 = v26;
    if (v26)
    {
      break;
    }

LABEL_32:

LABEL_33:
    if (v20 == ++v22)
    {
      v20 = [v10 countByEnumeratingWithState:&v69 objects:v74 count:16];
      LOBYTE(v28) = 1;
      if (v20)
      {
        goto LABEL_21;
      }

      v29 = 0;
      goto LABEL_36;
    }
  }

  if (![v26 isDelete])
  {
    if (([*(a1 + 48) hasRecordWithScopedIdentifier:v23] & 1) == 0)
    {
      a3 = v64;
      a4 = v65;
      if ((_CPLSilentLogging & 1) == 0)
      {
        v31 = __CPLTaskOSLogDomain_14068();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v76 = v7;
          v77 = 2112;
          v78 = v27;
          v32 = "%@ points to %@ which is in push repository and has not yet been uploaded - stashing change";
LABEL_63:
          _os_log_impl(&dword_1DC05A000, v31, OS_LOG_TYPE_DEFAULT, v32, buf, 0x16u);
        }

        goto LABEL_64;
      }

      goto LABEL_65;
    }

    goto LABEL_32;
  }

  a3 = v64;
  a4 = v65;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v31 = __CPLTaskOSLogDomain_14068();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v76 = v7;
      v77 = 2112;
      v78 = v25;
      v32 = "%@ points to a deleted %@ in push repository - stashing change";
      goto LABEL_63;
    }

LABEL_64:
  }

LABEL_65:

  v9 = v66;
LABEL_66:

LABEL_67:
  LOBYTE(v28) = 1;
  v29 = 1;
LABEL_68:

  if (v29)
  {
LABEL_69:
    if (*(*(*(a1 + 80) + 8) + 40))
    {
      [*(a1 + 56) setObject:v7 forKeyedSubscript:v8];
      [*(a1 + 72) addIndex:a3];
      if (![*(a1 + 72) count])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v59 = __CPLTaskOSLogDomain_14068();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            v76 = a3;
            _os_log_impl(&dword_1DC05A000, v59, OS_LOG_TYPE_ERROR, "Adding %lu to index set failed", buf, 0xCu);
          }
        }

        v60 = [MEMORY[0x1E696AAA8] currentHandler];
        v61 = *(a1 + 112);
        v62 = *(a1 + 64);
        v63 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLMingleChangesTask.m"];
        [v60 handleFailureInMethod:v61 object:v62 file:v63 lineNumber:426 description:{@"Adding %lu to index set failed", a3}];

        abort();
      }

      if ([v7 isAssetChange])
      {
        if (([v7 isDelete] & 1) == 0)
        {
          v33 = [v7 relatedIdentifier];
          if (v33)
          {
            v34 = v33;
            v35 = [*(a1 + 64) _shouldStashMasterRecords];

            if (v35)
            {
              v36 = [v7 relatedScopedIdentifier];
              if (([*(*(*(a1 + 88) + 8) + 40) containsObject:v36] & 1) == 0)
              {
                v37 = [*(a1 + 56) objectForKeyedSubscript:v36];

                if (!v37)
                {
                  v38 = *(*(*(a1 + 88) + 8) + 40);
                  if (!v38)
                  {
                    v39 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                    v40 = *(*(a1 + 88) + 8);
                    v41 = *(v40 + 40);
                    *(v40 + 40) = v39;

                    v38 = *(*(*(a1 + 88) + 8) + 40);
                  }

                  [v38 addObject:v36];
                }
              }
            }
          }
        }
      }

      v42 = *(*(a1 + 64) + 128);
      v43 = *(*(a1 + 96) + 8);
      obj = *(v43 + 40);
      v44 = [v42 stashChange:v7 error:&obj];
      objc_storeStrong((v43 + 40), obj);
      if ((v44 & 1) == 0)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v45 = __CPLTaskOSLogDomain_14068();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            v46 = *(*(*(a1 + 96) + 8) + 40);
            *buf = 138412546;
            v76 = v7;
            v77 = 2112;
            v78 = v46;
            _os_log_impl(&dword_1DC05A000, v45, OS_LOG_TYPE_ERROR, "Failed to stash %@ : %@", buf, 0x16u);
          }
        }

        v47 = *(*(a1 + 80) + 8);
        v48 = *(v47 + 40);
        *(v47 + 40) = 0;
      }
    }
  }

  if (*(*(*(a1 + 80) + 8) + 40))
  {
    v49 = v28;
  }

  else
  {
    v49 = 1;
  }

  if ((v49 & 1) == 0)
  {
    v50 = *(a1 + 40);
    v51 = *(*(a1 + 96) + 8);
    v67 = *(v51 + 40);
    v52 = [v50 discardChangeWithScopedIdentifier:v9 error:&v67];
    objc_storeStrong((v51 + 40), v67);
    if ((v52 & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v53 = __CPLTaskOSLogDomain_14068();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v54 = objc_opt_class();
          *buf = 138412546;
          v76 = v54;
          v77 = 2112;
          v78 = v9;
          v55 = v54;
          _os_log_impl(&dword_1DC05A000, v53, OS_LOG_TYPE_ERROR, "Failed to discard local change <%@ %@>", buf, 0x16u);
        }
      }

      v56 = *(*(a1 + 80) + 8);
      v57 = *(v56 + 40);
      *(v56 + 40) = 0;
    }
  }

  if (!*(*(*(a1 + 80) + 8) + 40))
  {
    *a4 = 1;
  }

  v58 = *MEMORY[0x1E69E9840];
}

uint64_t __78__CPLMingleChangesScopeTask__filteredBatchByStashingRecordsIfNecessary_error___block_invoke_59(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = [v12 isDelete];
  v6 = v12;
  if ((v5 & 1) == 0)
  {
    v7 = [v12 scopedIdentifier];
    if ([*(*(*(a1 + 48) + 8) + 40) containsObject:v7])
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];

      [*(a1 + 40) setObject:v12 forKeyedSubscript:v7];
    }

    else
    {
      v9 = [v12 relatedIdentifier];

      if (v9)
      {
        v10 = [v12 relatedScopedIdentifier];
        if ([*(*(*(a1 + 48) + 8) + 40) containsObject:v10])
        {
          [*(*(*(a1 + 48) + 8) + 40) removeObject:v10];
          [*(a1 + 32) removeObjectForKey:v10];
          [*(a1 + 40) removeObjectForKey:v10];
        }
      }
    }

    v6 = v12;
  }

  return MEMORY[0x1EEE66BB8](v5, v6);
}

void __78__CPLMingleChangesScopeTask__filteredBatchByStashingRecordsIfNecessary_error___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  [*(a1 + 32) addIndex:{objc_msgSend(v8, "unsignedIntegerValue")}];
  v9 = [*(a1 + 40) objectForKeyedSubscript:v7];
  if (!v9)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v20 = __CPLTaskOSLogDomain_14068();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v7;
        _os_log_impl(&dword_1DC05A000, v20, OS_LOG_TYPE_ERROR, "Unable to find master %@ to stash", buf, 0xCu);
      }
    }

    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = *(a1 + 72);
    v23 = *(a1 + 48);
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLMingleChangesTask.m"];
    [v21 handleFailureInMethod:v22 object:v23 file:v24 lineNumber:496 description:{@"Unable to find master %@ to stash", v7}];

    abort();
  }

  v10 = v9;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = __CPLTaskOSLogDomain_14068();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v10;
      _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "Asset for %@ has been stashed - stashing changes", buf, 0xCu);
    }
  }

  v12 = *(*(a1 + 48) + 128);
  v13 = *(*(a1 + 56) + 8);
  obj = *(v13 + 40);
  v14 = [v12 stashChange:v10 error:&obj];
  objc_storeStrong((v13 + 40), obj);
  if ((v14 & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v15 = __CPLTaskOSLogDomain_14068();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 138412546;
        v27 = v10;
        v28 = 2112;
        v29 = v16;
        _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_ERROR, "Failed to stash %@ : %@", buf, 0x16u);
      }
    }

    v17 = *(*(a1 + 64) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = 0;

    *a4 = 1;
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldStashMasterRecords
{
  v10 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_content())
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [standardUserDefaults BOOLForKey:@"CPLMingleDisableStashMaster"];

    if (v4 && !self->_didLogShouldStashMasterRecords)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v5 = __CPLTaskOSLogDomain_14068();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 138412290;
          selfCopy = self;
          _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "CPLMingleDisableStashMaster user default set to override stash master on mingle: %@", &v8, 0xCu);
        }
      }

      self->_didLogShouldStashMasterRecords = 1;
    }

    result = v4 ^ 1;
  }

  else
  {
    result = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_finishMingling
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(CPLEngineSyncTask *)self diskPressureState]== 2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLTaskOSLogDomain_14068();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "System had not enough disk space to continue %@", buf, 0xCu);
      }
    }

    v4 = objc_alloc(MEMORY[0x1E696ABC0]);
    v5 = *MEMORY[0x1E696A250];
    v15 = *MEMORY[0x1E696A578];
    v16 = @"Not enough disk space";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v7 = [v4 initWithDomain:v5 code:640 userInfo:v6];

    [(CPLMingleChangesScopeTask *)self taskDidFinishWithError:v7];
  }

  else
  {
    engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
    store = [engineLibrary store];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __44__CPLMingleChangesScopeTask__finishMingling__block_invoke;
    v13[3] = &unk_1E86205B8;
    v13[4] = self;
    v14 = store;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__CPLMingleChangesScopeTask__finishMingling__block_invoke_34;
    v12[3] = &unk_1E86205E0;
    v12[4] = self;
    v7 = store;
    v10 = [v7 performWriteTransactionWithBlock:v13 completionHandler:v12];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __44__CPLMingleChangesScopeTask__finishMingling__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) checkScopeIsValidInTransaction:v3])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __44__CPLMingleChangesScopeTask__finishMingling__block_invoke_2;
    v6[3] = &unk_1E8620940;
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    v7 = v4;
    v8 = v5;
    [v3 do:v6];
  }
}

void __44__CPLMingleChangesScopeTask__finishMingling__block_invoke_34(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    v3 = *(a1 + 32);
    v4 = +[CPLErrors operationCancelledError];
LABEL_5:
    v6 = v4;
    [v3 taskDidFinishWithError:v4];

    goto LABEL_6;
  }

  v5 = [v7 error];

  v3 = *(a1 + 32);
  if (v5)
  {
    v4 = [v7 error];
    goto LABEL_5;
  }

  [v3 taskDidFinishWithError:0];
LABEL_6:
}

uint64_t __44__CPLMingleChangesScopeTask__finishMingling__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) scopes];
  v5 = [*(a1 + 40) scope];
  v6 = [v4 transientSyncAnchorForScope:v5];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLTaskOSLogDomain_14068();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 cplSyncAnchorDescription];
      v16 = 138412546;
      v17 = v5;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "New sync anchor for %@: %@", &v16, 0x16u);
    }
  }

  if (!v6)
  {
    goto LABEL_13;
  }

  if (![v4 setSyncAnchor:v6 forScope:v5 error:a2])
  {
    goto LABEL_14;
  }

  if ([v4 hasStagedSyncAnchorForScope:v5])
  {
    goto LABEL_13;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLTaskOSLogDomain_14068();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 scopeIdentifier];
      v16 = 138412290;
      v17 = v10;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "No changes or staged sync anchor for %@ after mingling - discarding transient sync anchor", &v16, 0xCu);
    }
  }

  if ([v4 storeTransientSyncAnchor:0 forScope:v5 error:a2])
  {
LABEL_13:
    v11 = [*(a1 + 32) idMapping];
    v12 = [v5 scopeIdentifier];
    v13 = [v11 markAllPendingIdentifiersForScopeWithIdentifier:v12 asFinalWithError:a2];
  }

  else
  {
LABEL_14:
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)_noteBatchWasAddedInPullQueue:(id)queue fromBatch:(id)batch transaction:(id)transaction
{
  v19 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  batchCopy = batch;
  transactionCopy = transaction;
  if ([queueCopy count])
  {
    if (batchCopy)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v11 = __CPLTaskOSLogDomain_14068();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          summaryDescription = [queueCopy summaryDescription];
          summaryDescription2 = [batchCopy summaryDescription];
          v15 = 138543618;
          v16 = summaryDescription;
          v17 = 2114;
          v18 = summaryDescription2;
          _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "Adding %{public}@ to pull queue from %{public}@", &v15, 0x16u);

LABEL_9:
          goto LABEL_10;
        }

        goto LABEL_10;
      }
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLTaskOSLogDomain_14068();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        summaryDescription = [queueCopy summaryDescription];
        v15 = 138412290;
        v16 = summaryDescription;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "Adding %@ to pull queue", &v15, 0xCu);
        goto LABEL_9;
      }

LABEL_10:
    }

    [(CPLMingleChangesScopeTask *)self _notifySchedulerPullQueueIsFullInTransaction:transactionCopy];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)taskDidFinishWithError:(id)error
{
  v27 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLTaskOSLogDomain_14068();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      minglingCount = self->_minglingCount;
      scope = [(CPLEngineScopedTask *)self scope];
      *buf = 134218242;
      v24 = minglingCount;
      v25 = 2112;
      v26 = scope;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Mingled %lu changes for %@", buf, 0x16u);
    }
  }

  [(CPLMingleChangesScopeTask *)self _notifySchedulerPullQueueIsFullNowIfNecessary];
  scope2 = [(CPLEngineScopedTask *)self scope];
  store = [(CPLEngineScopedTask *)self store];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __52__CPLMingleChangesScopeTask_taskDidFinishWithError___block_invoke;
  v18[3] = &unk_1E861F1D0;
  v19 = store;
  selfCopy = self;
  v21 = errorCopy;
  v22 = scope2;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__CPLMingleChangesScopeTask_taskDidFinishWithError___block_invoke_33;
  v15[3] = &unk_1E86205B8;
  v16 = v21;
  selfCopy2 = self;
  v10 = v21;
  v11 = scope2;
  v12 = store;
  v13 = [v12 performWriteTransactionWithBlock:v18 completionHandler:v15];

  v14 = *MEMORY[0x1E69E9840];
}

void __52__CPLMingleChangesScopeTask_taskDidFinishWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) transientPullRepository];
  [v4 removeObserver:*(a1 + 40)];

  if (!*(a1 + 48))
  {
    v5 = *(a1 + 40);
    if (v5[200] == 1)
    {
      if ([v5 isScopeValidInTransaction:v3])
      {
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 3221225472;
        v6[2] = __52__CPLMingleChangesScopeTask_taskDidFinishWithError___block_invoke_2;
        v6[3] = &unk_1E861FF88;
        v7 = *(a1 + 32);
        v8 = *(a1 + 56);
        v9 = v3;
        [v9 do:v6];
      }
    }
  }
}

void __52__CPLMingleChangesScopeTask_taskDidFinishWithError___block_invoke_33(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = v5;
  if (!v5)
  {
    v7 = [v3 error];
  }

  v8.receiver = v6;
  v8.super_class = CPLMingleChangesScopeTask;
  objc_msgSendSuper2(&v8, sel_taskDidFinishWithError_, v7);
  if (!v5)
  {
  }
}

uint64_t __52__CPLMingleChangesScopeTask_taskDidFinishWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) scopes];
  v5 = *(a1 + 40);
  v16 = 0;
  v6 = [v4 setScope:v5 hasCompletedInitialMinglingWithError:&v16];
  v7 = v16;

  if (v6)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLTaskOSLogDomain_14068();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 40);
        *buf = 138412290;
        v18 = v9;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "Stored initial mingling date for %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLTaskOSLogDomain_14068();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 40);
        v12 = [*(a1 + 48) error];
        *buf = 138412546;
        v18 = v11;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Failed to store initial mingling date for %@: %@", buf, 0x16u);
      }
    }

    if (a2)
    {
      v13 = v7;
      *a2 = v7;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)_notifySchedulerPullQueueIsFullNowIfNecessary
{
  notifyQueue = self->_notifyQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__CPLMingleChangesScopeTask__notifySchedulerPullQueueIsFullNowIfNecessary__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_14080;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = notifyQueue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __74__CPLMingleChangesScopeTask__notifySchedulerPullQueueIsFullNowIfNecessary__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 185) == 1)
  {
    v2 = objc_autoreleasePoolPush();
    *(*(a1 + 32) + 185) = 0;
    [*(a1 + 32) _reallyNotifySchedulerPullQueueIsFull];

    objc_autoreleasePoolPop(v2);
  }
}

- (void)_notifySchedulerPullQueueIsFullInTransaction:(id)transaction
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74__CPLMingleChangesScopeTask__notifySchedulerPullQueueIsFullInTransaction___block_invoke;
  v3[3] = &unk_1E8620A88;
  v3[4] = self;
  [transaction addCleanupBlock:v3];
}

void __74__CPLMingleChangesScopeTask__notifySchedulerPullQueueIsFullInTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = *(a1 + 32);
    if (*(v4 + 184))
    {
      v5 = *(v4 + 176);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __74__CPLMingleChangesScopeTask__notifySchedulerPullQueueIsFullInTransaction___block_invoke_2;
      v9[3] = &unk_1E861A940;
      v9[4] = v4;
      v6 = v9;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __cpl_dispatch_async_block_invoke_14080;
      block[3] = &unk_1E861B4E0;
      v11 = v6;
      v7 = v5;
      v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      dispatch_async(v7, v8);
    }

    else
    {
      [v4 _reallyNotifySchedulerPullQueueIsFull];
      *(*(a1 + 32) + 184) = 1;
    }
  }
}

void __74__CPLMingleChangesScopeTask__notifySchedulerPullQueueIsFullInTransaction___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 185) & 1) == 0)
  {
    *(v1 + 185) = 1;
    v3 = [*(a1 + 32) session];
    [v3 resetNoteClientNeedsToPull];

    v4 = dispatch_time(0, 10000000000);
    v5 = *(a1 + 32);
    v6 = *(v5 + 176);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__CPLMingleChangesScopeTask__notifySchedulerPullQueueIsFullInTransaction___block_invoke_3;
    block[3] = &unk_1E861A940;
    block[4] = v5;
    dispatch_after(v4, v6, block);
  }
}

void __74__CPLMingleChangesScopeTask__notifySchedulerPullQueueIsFullInTransaction___block_invoke_3(uint64_t a1)
{
  if (*(*(a1 + 32) + 185) == 1)
  {
    v2 = objc_autoreleasePoolPush();
    *(*(a1 + 32) + 185) = 0;
    [*(a1 + 32) _reallyNotifySchedulerPullQueueIsFull];

    objc_autoreleasePoolPop(v2);
  }
}

- (void)_reallyNotifySchedulerPullQueueIsFull
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLTaskOSLogDomain_14068();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Notifying scheduler that there is some change in the pull queue", v5, 2u);
    }
  }

  session = [(CPLEngineSyncTask *)self session];
  [session noteClientNeedsToPullIfNecessary];
}

- (BOOL)checkScopeIsValidInTransaction:(id)transaction
{
  v32 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = CPLMingleChangesScopeTask;
  if (![(CPLEngineScopedTask *)&v27 checkScopeIsValidInTransaction:transaction]|| self->_minglingHasBeenReset)
  {
LABEL_14:
    v15 = 0;
    goto LABEL_15;
  }

  if (self->_sharedScope)
  {
    store = [(CPLEngineScopedTask *)self store];
    scopes = [store scopes];
    validLocalScopeIndexes = [scopes validLocalScopeIndexes];
    v7 = [validLocalScopeIndexes containsIndex:{-[CPLEngineScope localIndex](self->_sharedScope, "localIndex")}];

    if ((v7 & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v16 = __CPLTaskOSLogDomain_14068();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          sharedScope = self->_sharedScope;
          v18 = objc_opt_class();
          *buf = 138412546;
          v29 = sharedScope;
          v30 = 2112;
          v31 = v18;
          v19 = v18;
          _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_DEFAULT, "Scope %@ is invalid, stopping %@ now", buf, 0x16u);
        }
      }

      [(CPLMingleChangesScopeTask *)self cancel];
      goto LABEL_14;
    }
  }

  store2 = [(CPLEngineScopedTask *)self store];
  pushRepository = [store2 pushRepository];
  scope = [(CPLEngineScopedTask *)self scope];
  scopeIdentifier = [scope scopeIdentifier];
  v12 = [pushRepository minimumPriorityForChangesInScopeWithIdentifier:scopeIdentifier];
  if (v12 >= +[CPLRecordPushContext minimumPriorityForLocalConflictResolution])
  {
    goto LABEL_7;
  }

  session = [(CPLEngineSyncTask *)self session];
  allowsLocalConflictResolution = [session allowsLocalConflictResolution];

  if (allowsLocalConflictResolution)
  {
    goto LABEL_7;
  }

  session2 = [(CPLEngineSyncTask *)self session];
  allowsLocalConflictResolutionWhenOverQuota = [session2 allowsLocalConflictResolutionWhenOverQuota];

  if (!allowsLocalConflictResolutionWhenOverQuota)
  {
    goto LABEL_19;
  }

  scopes2 = [store2 scopes];
  v25 = [scopes2 valueForFlag:2 forScope:scope];

  if (v25)
  {
LABEL_7:
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      self->_shouldStashRecordsIfNecessary = 0;
      v15 = 1;
    }

    else
    {
      v15 = 1;
      self->_shouldStashRecordsIfNecessary = 1;
    }
  }

  else
  {
LABEL_19:
    if ((_CPLSilentLogging & 1) == 0)
    {
      v26 = __CPLTaskOSLogDomain_14068();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = scopeIdentifier;
        _os_log_impl(&dword_1DC05A000, v26, OS_LOG_TYPE_DEFAULT, "Push repository contains changes for %@, stopping mingle now", buf, 0xCu);
      }
    }

    [(CPLMingleChangesScopeTask *)self cancel];
    v15 = 0;
  }

LABEL_15:
  v20 = *MEMORY[0x1E69E9840];
  return v15;
}

- (CPLMingleChangesScopeTask)initWithEngineLibrary:(id)library session:(id)session clientCacheIdentifier:(id)identifier scope:(id)scope transportScope:(id)transportScope
{
  v15.receiver = self;
  v15.super_class = CPLMingleChangesScopeTask;
  v7 = [(CPLEngineScopedTask *)&v15 initWithEngineLibrary:library session:session clientCacheIdentifier:identifier scope:scope transportScope:transportScope];
  if (v7)
  {
    v8 = CPLCopyDefaultSerialQueueAttributes();
    v9 = dispatch_queue_create("com.apple.cpl.mingling.lock", v8);
    lock = v7->_lock;
    v7->_lock = v9;

    v11 = CPLCopyDefaultSerialQueueAttributes();
    v12 = dispatch_queue_create("com.apple.cpl.mingling.notify", v11);
    notifyQueue = v7->_notifyQueue;
    v7->_notifyQueue = v12;
  }

  return v7;
}

@end
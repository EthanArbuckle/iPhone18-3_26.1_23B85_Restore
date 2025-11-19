@interface CPLEngineScheduler
+ (BOOL)shouldShowBackgroundSchedulingStatusInTransport;
+ (id)platformImplementationProtocol;
+ (id)validElements;
- (BOOL)_allowsJustInCaseSessions;
- (BOOL)_justInCaseSessionIsPossible;
- (BOOL)hasAScheduledSyncSession;
- (BOOL)isClientInForeground;
- (BOOL)isMinglingEnabled;
- (BOOL)isSynchronizationDisabledWithReasonError:(id *)a3;
- (BOOL)waitForEngineElementToBeBlocked:(id)a3 timeout:(double)a4;
- (CPLEngineLibrary)engineLibrary;
- (CPLEngineScheduler)initWithEngineLibrary:(id)a3;
- (CPLSyncSessionConfiguration)configuration;
- (id)_minimalDateForFirstSync;
- (id)_pathToFirstSynchronizationMarker;
- (id)componentName;
- (unint64_t)requiredState;
- (void)_backOff;
- (void)_disableFastRelaunchProtection;
- (void)_disableRetryAfterLocked;
- (void)_disableSynchronizationBecauseContainerHasBeenWipedLocked;
- (void)_disableSynchronizationWithReasonLocked:(id)a3;
- (void)_enableSynchronizationWithReasonLocked:(id)a3;
- (void)_handleResetAnchorWithError:(id)a3 completionHandler:(id)a4;
- (void)_handleResetClientCacheWithError:(id)a3 completionHandler:(id)a4;
- (void)_handleResetCloudCacheWithError:(id)a3 completionHandler:(id)a4;
- (void)_handleResetGlobalAnchorWithError:(id)a3 completionHandler:(id)a4;
- (void)_keepSessionInformation:(id)a3;
- (void)_noteServerIsUnavailableWithErrorLocked:(id)a3 reason:(id)a4;
- (void)_noteSignificantEvent;
- (void)_noteSyncSession:(id)a3 failedDuringPhase:(unint64_t)a4 withError:(id)a5;
- (void)_noteSyncSessionNeededFromState:(unint64_t)a3 minimumDelay:(double)intervalForRetry;
- (void)_noteSyncSessionNeededFromState:(unint64_t)a3 proposedScheduleDate:(id)a4;
- (void)_noteSyncSessionNeededFromStateDontRewindImmediately:(unint64_t)a3;
- (void)_prepareFirstSession;
- (void)_reallyNoteServerHasChangesLocked;
- (void)_reallyStartSyncSession:(id)a3;
- (void)_reallyUnscheduleSession;
- (void)_resetFirstSynchronizationMarker;
- (void)_scheduleNextSyncSession;
- (void)_setRequiredFirstState:(unint64_t)requiredFirstState;
- (void)_startRequiredSyncSession:(id)a3;
- (void)_stopPreparingFirstSession;
- (void)_unscheduleNextSyncSession;
- (void)_updateLastSyncDateIfNecessaryLocked;
- (void)_updateOverridingForeground;
- (void)_writeFirstSynchronizationMarker;
- (void)blockAllSyncSessionsWithReason:(id)a3 onlyIfBlocked:(BOOL)a4 block:(id)a5;
- (void)blockEngineElement:(id)a3;
- (void)closeAndDeactivate:(BOOL)a3 completionHandler:(id)a4;
- (void)disableMingling;
- (void)disableSynchronizationIfBlockedWithReason:(id)a3 completionHandler:(id)a4;
- (void)disableSynchronizationWithReason:(id)a3;
- (void)enableMingling;
- (void)enableSynchronizationWithReason:(id)a3;
- (void)forceStartSyncSession:(id)a3 withMinimalPhase:(unint64_t)a4;
- (void)getCurrentRequiredStateWithCompletionHandler:(id)a3;
- (void)getStatusDictionaryWithCompletionHandler:(id)a3;
- (void)getStatusWithCompletionHandler:(id)a3;
- (void)kickOffSyncSession;
- (void)noteBlockedStateHasChanged:(id)a3;
- (void)noteClientIsBeginningSignificantWork;
- (void)noteClientIsEndingSignificantWork;
- (void)noteClientIsInBackground;
- (void)noteClientIsInForegroundQuietly:(BOOL)a3;
- (void)noteClientIsInSyncWithClientCache;
- (void)noteClientIsNotInSyncWithClientCache;
- (void)noteClientNeedsToPull;
- (void)noteContainerHasBeenWiped;
- (void)noteNetworkStateDidChange;
- (void)noteQuotaHasChanged;
- (void)noteResourceDownloadQueueIsFull;
- (void)noteScopeListNeedsUpdate;
- (void)noteScopeNeedsToPullFromTransport;
- (void)noteScopeNeedsToPushHighPriorityToTransport;
- (void)noteScopeNeedsToPushToTransportWithChangeTypes:(unint64_t)a3;
- (void)noteScopeNeedsToUploadComputeState;
- (void)noteScopeNeedsUpdate;
- (void)noteServerHasChanges;
- (void)noteServerIsUnavailableWithError:(id)a3;
- (void)noteServerMightBeAvailableNow;
- (void)noteStoreNeedsCleanup;
- (void)noteStoreNeedsSetup;
- (void)noteStoreNeedsToUpdateDisabledFeatures;
- (void)noteSyncSession:(id)a3 failedDuringPhase:(unint64_t)a4 withError:(id)a5;
- (void)noteSyncSession:(id)a3 stateWillBeAttempted:(unint64_t)a4;
- (void)noteSyncSessionSucceeded:(id)a3;
- (void)noteTransportNeedsUpdate;
- (void)openWithCompletionHandler:(id)a3;
- (void)resetBackoffInterval;
- (void)startRequiredSyncSessionNow:(id)a3;
- (void)testKey:(id)a3 value:(id)a4 completionHandler:(id)a5;
- (void)unblockEngineElement:(id)a3;
- (void)unblockEngineElementOnce:(id)a3;
- (void)willRunEngineElement:(id)a3;
@end

@implementation CPLEngineScheduler

- (void)_updateLastSyncDateIfNecessaryLocked
{
  if (self->_requiredFirstState >= self->_pendingRequiredFirstState)
  {
    pendingRequiredFirstState = self->_pendingRequiredFirstState;
  }

  else
  {
    pendingRequiredFirstState = self->_requiredFirstState;
  }

  currentSession = self->_currentSession;
  if (currentSession)
  {
    v5 = [(CPLSyncSession *)currentSession requiredStateAtEndOfSyncSession];
    if (pendingRequiredFirstState >= v5)
    {
      pendingRequiredFirstState = v5;
    }
  }

  if (pendingRequiredFirstState >= 0xC && self->_needsToUpdateLastSyncDate)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEFAULT, "Updating last successful sync date", v9, 2u);
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_engineLibrary);
    v8 = [MEMORY[0x1E695DF00] date];
    [WeakRetained updateLastSuccessfullSyncDate:v8];

    self->_needsToUpdateLastSyncDate = 0;
  }
}

- (BOOL)isClientInForeground
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__CPLEngineScheduler_isClientInForeground__block_invoke;
  v5[3] = &unk_1E861A850;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (CPLEngineLibrary)engineLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_engineLibrary);

  return WeakRetained;
}

- (void)testKey:(id)a3 value:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([a3 isEqualToString:@"server-unavailable"])
  {
    queue = self->_queue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__CPLEngineScheduler_testKey_value_completionHandler___block_invoke;
    v14[3] = &unk_1E861B3D0;
    v14[4] = self;
    v15 = v8;
    v16 = v9;
    v11 = v14;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cpl_dispatch_async_block_invoke_7513;
    block[3] = &unk_1E861B4E0;
    v18 = v11;
    v12 = queue;
    v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v12, v13);
  }

  else
  {
    (*(v9 + 2))(v9, 0, 0, 0);
  }
}

uint64_t __54__CPLEngineScheduler_testKey_value_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = +[CPLErrors unknownError];
  [v2 _noteServerIsUnavailableWithErrorLocked:v3 reason:a1[5]];

  v4 = *(a1[6] + 16);

  return v4();
}

- (BOOL)hasAScheduledSyncSession
{
  v2 = self;
  dispatch_sync(self->_queue, &__block_literal_global_310);
  v3 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_DEFAULT, 0, &__block_literal_global_312_7517);
  v4 = [(CPLEngineScheduler *)v2 engineLibrary];
  v5 = [v4 store];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __46__CPLEngineScheduler_hasAScheduledSyncSession__block_invoke_3;
  v15[3] = &unk_1E861C660;
  v16 = v3;
  v6 = v3;
  v7 = [v5 performReadTransactionWithBlock:v15];

  dispatch_block_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = v2->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CPLEngineScheduler_hasAScheduledSyncSession__block_invoke_4;
  block[3] = &unk_1E861A850;
  block[4] = v2;
  block[5] = &v11;
  dispatch_sync(queue, block);
  LOBYTE(v2) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v2;
}

uint64_t __46__CPLEngineScheduler_hasAScheduledSyncSession__block_invoke_4(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 48))
  {
    v2 = *(v1 + 104) != 0;
  }

  else
  {
    v2 = 0;
  }

  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

- (unint64_t)requiredState
{
  dispatch_sync(self->_queue, &__block_literal_global_306);
  v3 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_DEFAULT, 0, &__block_literal_global_308);
  v4 = [(CPLEngineScheduler *)self engineLibrary];
  v5 = [v4 store];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __35__CPLEngineScheduler_requiredState__block_invoke_3;
  v16[3] = &unk_1E861C660;
  v17 = v3;
  v6 = v3;
  v7 = [v5 performReadTransactionWithBlock:v16];

  dispatch_block_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 14;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__CPLEngineScheduler_requiredState__block_invoke_4;
  block[3] = &unk_1E861A850;
  block[4] = self;
  block[5] = &v12;
  dispatch_sync(queue, block);
  v9 = v13[3];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (void)_resetFirstSynchronizationMarker
{
  if (self->_didWriteFirstSyncMarker)
  {
    v3 = [MEMORY[0x1E696AC08] defaultManager];
    v4 = [(CPLEngineScheduler *)self _pathToFirstSynchronizationMarker];
    [v3 removeItemAtURL:v4 error:0];

    self->_didWriteFirstSyncMarker = 0;
  }
}

- (id)_minimalDateForFirstSync
{
  v3 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = [(CPLEngineScheduler *)self _pathToFirstSynchronizationMarker];
  v5 = [v3 initWithContentsOfURL:v4];

  if (v5)
  {
    self->_didWriteFirstSyncMarker = 1;
  }

  v6 = [v5 objectForKey:@"date"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v6 timeIntervalSinceNow], v7 > 0.0))
  {
    v8 = 0;
LABEL_6:

    goto LABEL_7;
  }

  if (v6)
  {
    v8 = [v6 dateByAddingTimeInterval:600.0];
    goto LABEL_6;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (void)_writeFirstSynchronizationMarker
{
  v8[1] = *MEMORY[0x1E69E9840];
  self->_didWriteFirstSyncMarker = 1;
  v3 = [MEMORY[0x1E695DF00] date];
  v7 = @"date";
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [(CPLEngineScheduler *)self _pathToFirstSynchronizationMarker];
  [v4 writeToURL:v5 atomically:1];

  v6 = *MEMORY[0x1E69E9840];
}

- (id)_pathToFirstSynchronizationMarker
{
  v2 = [(CPLEngineScheduler *)self engineLibrary];
  v3 = [v2 clientLibraryBaseURL];
  v4 = [v3 URLByAppendingPathComponent:@"lastsyncafterlaunch.plist" isDirectory:0];

  return v4;
}

- (void)getStatusDictionaryWithCompletionHandler:(id)a3
{
  v4 = a3;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __63__CPLEngineScheduler_getStatusDictionaryWithCompletionHandler___block_invoke;
  v19[3] = &unk_1E861C638;
  v19[4] = self;
  v5 = v4;
  v20 = v5;
  v6 = MEMORY[0x1E128EBA0](v19);
  v7 = [(CPLEngineScheduler *)self platformObject];
  if (objc_opt_respondsToSelector())
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __63__CPLEngineScheduler_getStatusDictionaryWithCompletionHandler___block_invoke_4;
    v17[3] = &unk_1E861C610;
    v17[4] = self;
    v18 = v6;
    v8 = v6;
    [v7 getStatusDictionaryWithCompletionHandler:v17];
    v9 = v18;
  }

  else
  {
    queue = self->_queue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __63__CPLEngineScheduler_getStatusDictionaryWithCompletionHandler___block_invoke_6;
    v15[3] = &unk_1E861B4E0;
    v16 = v6;
    v11 = v15;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cpl_dispatch_async_block_invoke_7513;
    block[3] = &unk_1E861B4E0;
    v22 = v11;
    v12 = queue;
    v13 = v6;
    v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v12, v14);

    v9 = v16;
  }
}

void __63__CPLEngineScheduler_getStatusDictionaryWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = *(a1 + 32);
  if (*(v5 + 120) || [*(v5 + 144) count])
  {
    v6 = @"disabled";
LABEL_4:
    [v4 setObject:v6 forKeyedSubscript:@"state"];
    goto LABEL_5;
  }

  v12 = *(a1 + 32);
  if (*(v12 + 80) <= 0xDuLL)
  {
    v6 = @"syncing";
    goto LABEL_4;
  }

  if (*(v12 + 16) > 0xDuLL)
  {
    v6 = @"quiet";
    goto LABEL_4;
  }

  [v4 setObject:@"scheduler" forKeyedSubscript:@"state"];
  v13 = [CPLEngineSyncManager descriptionForState:*(*(a1 + 32) + 16)];
  [v4 setObject:v13 forKeyedSubscript:@"requiredState"];

  v14 = MEMORY[0x1E696AD98];
  v15 = [*(*(a1 + 32) + 48) expectedDate];
  v16 = v15;
  if (!v15)
  {
    v16 = [MEMORY[0x1E695DF00] distantFuture];
  }

  [v16 timeIntervalSinceNow];
  v17 = [v14 numberWithDouble:?];
  [v4 setObject:v17 forKeyedSubscript:@"date"];

  if (!v15)
  {
  }

LABEL_5:
  v7 = *(a1 + 32);
  v8 = *(v7 + 184);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__CPLEngineScheduler_getStatusDictionaryWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E861B290;
  block[4] = v7;
  v9 = v4;
  v22 = v9;
  dispatch_sync(v8, block);
  if (v3)
  {
    [v9 addEntriesFromDictionary:v3];
  }

  if (+[CPLEngineScheduler shouldShowBackgroundSchedulingStatusInTransport])
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10 = [*(a1 + 32) engineLibrary];
    v11 = [v10 transport];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __63__CPLEngineScheduler_getStatusDictionaryWithCompletionHandler___block_invoke_3;
    v18[3] = &unk_1E861C610;
    v19 = v9;
    v20 = *(a1 + 40);
    [v11 getBackgroundSchedulingStatusDictionaryWithCompletionHandler:v18];
  }
}

void __63__CPLEngineScheduler_getStatusDictionaryWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 72);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__CPLEngineScheduler_getStatusDictionaryWithCompletionHandler___block_invoke_5;
  v10[3] = &unk_1E861ECD0;
  v5 = *(a1 + 40);
  v11 = v3;
  v12 = v5;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v14 = v6;
  v7 = v4;
  v8 = v3;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __63__CPLEngineScheduler_getStatusDictionaryWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 152) count])
  {
    v2 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:*(*(a1 + 32) + 152)];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = [*(*(a1 + 32) + 160) allKeys];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [v2 removeObject:*(*(&v11 + 1) + 8 * v7++)];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    if ([v2 count])
    {
      v8 = [v2 allObjects];
      [*(a1 + 40) setObject:v8 forKeyedSubscript:@"blocking"];
    }

    if ([*(*(a1 + 32) + 160) count])
    {
      v9 = [*(*(a1 + 32) + 160) allKeys];
      [*(a1 + 40) setObject:v9 forKeyedSubscript:@"blocked"];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __63__CPLEngineScheduler_getStatusDictionaryWithCompletionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addEntriesFromDictionary:a2];
    v3 = *(a1 + 32);
  }

  else
  {
    v5 = *(a1 + 40);
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)getStatusWithCompletionHandler:(id)a3
{
  v4 = a3;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __53__CPLEngineScheduler_getStatusWithCompletionHandler___block_invoke;
  v19[3] = &unk_1E861C5E8;
  v19[4] = self;
  v5 = v4;
  v20 = v5;
  v6 = MEMORY[0x1E128EBA0](v19);
  v7 = [(CPLEngineScheduler *)self platformObject];
  if (objc_opt_respondsToSelector())
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __53__CPLEngineScheduler_getStatusWithCompletionHandler___block_invoke_4;
    v17[3] = &unk_1E861C5C0;
    v17[4] = self;
    v18 = v6;
    v8 = v6;
    [v7 getStatusWithCompletionHandler:v17];
    v9 = v18;
  }

  else
  {
    queue = self->_queue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__CPLEngineScheduler_getStatusWithCompletionHandler___block_invoke_6;
    v15[3] = &unk_1E861B4E0;
    v16 = v6;
    v11 = v15;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cpl_dispatch_async_block_invoke_7513;
    block[3] = &unk_1E861B4E0;
    v22 = v11;
    v12 = queue;
    v13 = v6;
    v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v12, v14);

    v9 = v16;
  }
}

void __53__CPLEngineScheduler_getStatusWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  if (!v5)
  {
    v10 = *(v4 + 120);
    if (v10)
    {
      v11 = *(v4 + 128);
      v12 = MEMORY[0x1E696AD60];
      [v10 timeIntervalSinceNow];
      v14 = fmax(v13, 0.0);
      if (v11 == 0.0)
      {
        v77 = v14;
        v15 = @"Synchronization is disabled because server is unavailable for %.0fs";
      }

      else
      {
        v78 = v14;
        v77 = v11;
        v15 = @"Synchronization is disabled - %@ (for %.0fs)";
      }

      [v12 stringWithFormat:v15, *&v77, *&v78];
      v17 = LABEL_17:;
      goto LABEL_18;
    }

    v18 = [*(v4 + 144) count];
    v19 = *(a1 + 32);
    v20 = *(v19 + 16);
    if (v18)
    {
      v21 = MEMORY[0x1E696AD60];
      if (v20 > 0xD)
      {
        v8 = [*(v19 + 144) allObjects];
        v22 = [v8 componentsJoinedByString:{@", "}];
        v9 = [v21 stringWithFormat:@"Synchronization is disabled because of: %@", v22];
        goto LABEL_24;
      }

      v8 = [CPLEngineSyncManager shortDescriptionForState:?];
      v22 = [*(*(a1 + 32) + 144) allObjects];
      v23 = [v22 componentsJoinedByString:{@", "}];
      [v21 stringWithFormat:@"Needs to start a sync session from %@ but synchronization is disabled because of: %@", v8, v23, v79, v80];
    }

    else
    {
      if (v20 > 0xD)
      {
        if (*(v19 + 80) <= 0xDuLL)
        {
          v46 = MEMORY[0x1E696AD60];
          v47 = *(v19 + 104);
          v8 = [CPLEngineSyncManager shortDescriptionForState:?];
          [v46 stringWithFormat:@"Currently in %@ %@", v47, v8];
          goto LABEL_4;
        }

        v48 = [v19 engineLibrary];
        v49 = [v48 store];
        v50 = [v49 isClientInSyncWithClientCache];

        if (v50)
        {
          v16 = @"No action is required. No sync session is scheduled";
        }

        else
        {
          v16 = @"Waiting for client to push or pull at least one batch. No sync session is scheduled";
        }

        goto LABEL_9;
      }

      v24 = *(v19 + 48);
      if (!v24)
      {
        if (*(v19 + 80) > 0xDuLL)
        {
          v61 = [v19 engineLibrary];
          v62 = [v61 systemMonitor];
          v63 = [v62 isNetworkConnected];

          if (!v63)
          {
            v69 = MEMORY[0x1E696AD60];
            v8 = [CPLEngineSyncManager shortDescriptionForState:*(*(a1 + 32) + 16)];
            [v69 stringWithFormat:@"Needs to start a sync session from %@, at least, but network is unreachable", v8, *&v78];
            goto LABEL_4;
          }

          v64 = *(a1 + 32);
          if (*(v64 + 16) >= 7uLL)
          {
            v65 = [v64 engineLibrary];
            v66 = [v65 store];
            v67 = [v66 isClientInSyncWithClientCache];

            v64 = *(a1 + 32);
            if ((v67 & 1) == 0)
            {
              v75 = MEMORY[0x1E696AD60];
              v8 = [CPLEngineSyncManager shortDescriptionForState:*(v64 + 16)];
              [v75 stringWithFormat:@"Needs to start a sync session from %@, at least, waiting for client to push or pull at least one batch", v8, *&v78];
              goto LABEL_4;
            }
          }

          v68 = *(v64 + 104);
          if (!v68)
          {
            v70 = *(v64 + 16);
            if (v70 == 8)
            {
              WeakRetained = objc_loadWeakRetained((v64 + 272));
              v72 = [WeakRetained isExceedingQuota];

              v73 = *(a1 + 32);
              if (v72)
              {
                v74 = MEMORY[0x1E696AD60];
                v8 = [CPLEngineSyncManager shortDescriptionForState:*(v73 + 16)];
                [v74 stringWithFormat:@"Needs to start a sync session from %@, at least, but user is over-quota", v8, *&v78];
                goto LABEL_4;
              }

              v70 = *(v73 + 16);
            }

            v76 = MEMORY[0x1E696AD60];
            v8 = [CPLEngineSyncManager shortDescriptionForState:v70];
            [v76 stringWithFormat:@"Needs to start a sync session from %@, at least, but there is no session scheduled yet", v8, *&v78];
            goto LABEL_4;
          }

          [MEMORY[0x1E696AD60] stringWithFormat:@"%@ just started", v68, *&v78];
          goto LABEL_17;
        }

        v51 = MEMORY[0x1E696AD60];
        v52 = *(v19 + 104);
        v53 = [CPLEngineSyncManager shortDescriptionForState:?];
        v54 = [CPLEngineSyncManager shortDescriptionForState:*(*(a1 + 32) + 16)];
        v9 = [v51 stringWithFormat:@"Currently in %@ - %@ (required phase is %@)", v52, v53, v54];

        v8 = [*(*(a1 + 32) + 104) currentSessionInformation];
        if (![v8 count])
        {
          goto LABEL_25;
        }

        v22 = [v8 componentsJoinedByString:@"\n\t"];
        [v9 appendFormat:@"\nCurrent session info:\n\t%@", v22];
LABEL_24:

        goto LABEL_25;
      }

      v25 = *(v19 + 216);
      if (v25)
      {
        v26 = MEMORY[0x1E696AD60];
        v27 = [CPLDateFormatter stringFromDateAgo:v25 now:0];
        v28 = [CPLEngineSyncManager shortDescriptionForState:*(*(a1 + 32) + 16)];
        v9 = [v26 stringWithFormat:@"%@ has been deferred %@ (will resume from %@)", v24, v27, v28];

        goto LABEL_26;
      }

      v8 = [*(v19 + 48) expectedDate];
      v55 = MEMORY[0x1E696AD60];
      v56 = *(a1 + 32);
      v57 = *(v56 + 48);
      v22 = [CPLEngineSyncManager shortDescriptionForState:*(v56 + 16)];
      v58 = [*(*(a1 + 32) + 48) whenItWillStartDescription];
      v23 = v58;
      if (*(*(a1 + 32) + 226))
      {
        v59 = @", delayed because of fast relaunch";
      }

      else
      {
        v59 = &stru_1F57BD298;
      }

      if (v8)
      {
        v60 = [CPLDateFormatter stringFromDate:v8];
        v9 = [v55 stringWithFormat:@"Will start %@ from %@, at least, %@%@ (%@)", v57, v22, v23, v59, v60];

        goto LABEL_14;
      }

      [v55 stringWithFormat:@"Will start %@ from %@, at least, %@%@", v57, v22, v58, v59];
    }
    v9 = ;
LABEL_14:

    goto LABEL_24;
  }

  [v5 timeIntervalSinceNow];
  if (v6 >= -1.0)
  {
    v16 = @"Preparing first sync session";
LABEL_9:
    v17 = [(__CFString *)v16 mutableCopy];
LABEL_18:
    v9 = v17;
    goto LABEL_26;
  }

  v7 = MEMORY[0x1E696AD60];
  v8 = [CPLDateFormatter stringFromDateAgo:*(*(a1 + 32) + 8) now:0];
  [v7 stringWithFormat:@"Preparing first sync session (started %@)", v8, *&v78];
  v9 = LABEL_4:;
LABEL_25:

LABEL_26:
  v29 = *(a1 + 32);
  if (*(v29 + 88) <= 0xDuLL)
  {
    v30 = [CPLEngineSyncManager shortDescriptionForState:?];
    v31 = [CPLEngineSyncManager shortDescriptionForState:11];
    [v9 appendFormat:@" - should also rewind to %@ once %@ is done", v30, v31];

    v29 = *(a1 + 32);
  }

  v32 = [*(v29 + 280) currentPrediction];
  v33 = [v32 descriptionWithNow:0];

  if (v33)
  {
    v34 = *(a1 + 32);
    if (*(v34 + 104))
    {
      v35 = @"current";
    }

    else
    {
      v35 = @"next";
    }

    v36 = [*(v34 + 280) currentPrediction];
    [v9 appendFormat:@"\nPrediction for %@ session:\n  %@", v35, v36];
  }

  if (v3)
  {
    [v9 appendFormat:@"\n%@", v3];
  }

  v37 = *(a1 + 32);
  v38 = *(v37 + 184);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CPLEngineScheduler_getStatusWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E861B290;
  block[4] = v37;
  v39 = v9;
  v85 = v39;
  dispatch_sync(v38, block);
  if ([*(*(a1 + 32) + 240) count])
  {
    v40 = [*(*(a1 + 32) + 240) componentsJoinedByString:@"\n\t"];
    [v39 appendFormat:@"\nLast session info:\n\t%@", v40];
  }

  if ([*(*(a1 + 32) + 248) count])
  {
    v41 = [*(*(a1 + 32) + 248) componentsJoinedByString:{@", "}];
    [v39 appendFormat:@"\nScopes excluded from push-to-transport: %@", v41];
  }

  if ([*(*(a1 + 32) + 256) count])
  {
    v42 = [*(*(a1 + 32) + 256) componentsJoinedByString:{@", "}];
    [v39 appendFormat:@"\nScopes excluded from mingling: %@", v42];
  }

  v43 = *(a1 + 32);
  if (v43[25])
  {
    [v39 appendString:@"\nMingling is disabled: waiting for client to finish pushing everything before starting pulling changes"];
    v43 = *(a1 + 32);
  }

  if (v43[17])
  {
    [v39 appendString:@"\nRunning in foreground mode"];
    v43 = *(a1 + 32);
  }

  if (v43[24])
  {
    [v39 appendString:@"\nSignificant work in progress"];
  }

  if (+[CPLEngineScheduler shouldShowBackgroundSchedulingStatusInTransport])
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v44 = [*(a1 + 32) engineLibrary];
    v45 = [v44 transport];
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = __53__CPLEngineScheduler_getStatusWithCompletionHandler___block_invoke_3;
    v81[3] = &unk_1E861C5C0;
    v82 = v39;
    v83 = *(a1 + 40);
    [v45 getBackgroundSchedulingStatusWithCompletionHandler:v81];
  }
}

void __53__CPLEngineScheduler_getStatusWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 72);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__CPLEngineScheduler_getStatusWithCompletionHandler___block_invoke_5;
  v10[3] = &unk_1E861ECD0;
  v5 = *(a1 + 40);
  v11 = v3;
  v12 = v5;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v14 = v6;
  v7 = v4;
  v8 = v3;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __53__CPLEngineScheduler_getStatusWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 152) count])
  {
    v2 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:*(*(a1 + 32) + 152)];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = [*(*(a1 + 32) + 160) allKeys];
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      do
      {
        v7 = 0;
        do
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [v2 removeObject:*(*(&v15 + 1) + 8 * v7++)];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v5);
    }

    if ([v2 count])
    {
      v8 = *(a1 + 40);
      v9 = [v2 allObjects];
      v10 = [v9 componentsJoinedByString:{@", "}];
      [v8 appendFormat:@"\nBlocking elements: %@", v10];
    }

    if ([*(*(a1 + 32) + 160) count])
    {
      v11 = *(a1 + 40);
      v12 = [*(*(a1 + 32) + 160) allKeys];
      v13 = [v12 componentsJoinedByString:{@", "}];
      [v11 appendFormat:@"\nBlocked elements: %@", v13];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __53__CPLEngineScheduler_getStatusWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9)
  {
    if ([v9 length])
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@\n%@", *(a1 + 32), v9];
      (*(*(a1 + 40) + 16))();

      goto LABEL_7;
    }

    v8 = *(a1 + 32);
    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    v7 = *(*(a1 + 40) + 16);
  }

  v7();
LABEL_7:
}

- (id)componentName
{
  v2 = [(CPLEngineScheduler *)self platformObject];
  v3 = [v2 componentName];

  return v3;
}

- (void)closeAndDeactivate:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__CPLEngineScheduler_closeAndDeactivate_completionHandler___block_invoke;
  v12[3] = &unk_1E861F2E8;
  v14 = a3;
  v12[4] = self;
  v13 = v6;
  v8 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v16 = v8;
  v9 = queue;
  v10 = v6;
  v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v9, v11);
}

void __59__CPLEngineScheduler_closeAndDeactivate_completionHandler___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 112) = 0;
  v2 = [*(a1 + 32) platformObject];
  [v2 closeAndDeactivate:*(a1 + 48) completionHandler:*(a1 + 40)];
}

- (void)_stopPreparingFirstSession
{
  dispatch_assert_queue_V2(self->_queue);
  preparingFirstSessionStartDate = self->_preparingFirstSessionStartDate;
  if (preparingFirstSessionStartDate)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "Ignoring normal first sync session because it has been superseded", v6, 2u);
      }

      preparingFirstSessionStartDate = self->_preparingFirstSessionStartDate;
    }

    self->_preparingFirstSessionStartDate = 0;

    v5 = [(CPLEngineScheduler *)self platformObject];
    [v5 unschedulePersistedSyncSession];
  }
}

- (void)_prepareFirstSession
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_preparingFirstSessionStartDate)
  {
    v3 = [MEMORY[0x1E695DF00] date];
    preparingFirstSessionStartDate = self->_preparingFirstSessionStartDate;
    self->_preparingFirstSessionStartDate = v3;

    v5 = [(CPLEngineScheduler *)self platformObject];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42__CPLEngineScheduler__prepareFirstSession__block_invoke;
    v6[3] = &unk_1E861C598;
    v6[4] = self;
    [v5 schedulePersistedSyncSessionIfAvailableWithCompletionHandler:v6];
  }
}

void __42__CPLEngineScheduler__prepareFirstSession__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 72);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__CPLEngineScheduler__prepareFirstSession__block_invoke_2;
  v10[3] = &unk_1E861B290;
  v10[4] = v4;
  v11 = v3;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = v5;
  v8 = v3;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __42__CPLEngineScheduler__prepareFirstSession__block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v2 + 8))
  {
    objc_storeStrong((v2 + 48), v3);
    v4 = *(a1 + 32);
    if (*(v4 + 48))
    {
      if (_CPLSilentLogging)
      {
        goto LABEL_34;
      }

      v5 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(*(a1 + 32) + 48);
        *buf = 138543362;
        v27 = v6;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Found persisted %{public}@", buf, 0xCu);
      }

      v4 = *(a1 + 32);
      if (*(v4 + 48))
      {
LABEL_34:
        if ([*(v4 + 144) count])
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v7 = __CPLSchedulerOSLogDomain_7603();
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              v8 = [*(*(a1 + 32) + 144) allObjects];
              v9 = [v8 componentsJoinedByString:{@", "}];
              *buf = 138543362;
              v27 = v9;
              _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Unscheduling persisted sync session. Reasons: %{public}@", buf, 0xCu);
            }
          }

          [*(a1 + 32) _unscheduleNextSyncSession];
        }
      }
    }

    v10 = [*(a1 + 32) engineLibrary];
    v11 = [v10 store];

    if ([v11 isClientInSyncWithClientCache])
    {
      v12 = *(a1 + 32);
      v13 = *(v12 + 8);
      *(v12 + 8) = 0;

      v14 = *(a1 + 32);
      if (v14[6])
      {
        v14[2] = 1;
      }

      else
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v19 = __CPLSchedulerOSLogDomain_7603();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_DEFAULT, "Scheduler is ready, requesting a full session soon", buf, 2u);
          }

          v14 = *(a1 + 32);
        }

        v20 = [v14 engineLibrary];
        v21 = [v20 isSystemLibrary];

        if (v21)
        {
          *(*(a1 + 32) + 227) = [*(a1 + 32) _justInCaseSessionIsPossible];
        }

        *(*(a1 + 32) + 56) = 0x4014000000000000;
        [*(a1 + 32) _noteSyncSessionNeededFromState:1 proposedScheduleDate:0];
        *(*(a1 + 32) + 56) = 0x3FB99999A0000000;
      }
    }

    else
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __42__CPLEngineScheduler__prepareFirstSession__block_invoke_153;
      v23[3] = &unk_1E86205B8;
      v11 = v11;
      v17 = *(a1 + 32);
      v24 = v11;
      v25 = v17;
      v18 = [v11 performReadTransactionWithBlock:v23];
    }

LABEL_30:

    goto LABEL_31;
  }

  if (v3)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v15 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 40);
        *buf = 138412290;
        v27 = v16;
        _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_DEFAULT, "Ignoring persisted sync session %@", buf, 0xCu);
      }

      v2 = *(a1 + 32);
    }

    v11 = [v2 platformObject];
    [v11 unscheduleSyncSession:*(a1 + 40)];
    goto LABEL_30;
  }

LABEL_31:
  v22 = *MEMORY[0x1E69E9840];
}

void __42__CPLEngineScheduler__prepareFirstSession__block_invoke_153(uint64_t a1)
{
  v2 = [*(a1 + 32) cleanupTasks];
  if ([v2 hasCleanupTasks])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Store has clean tasks to do, requesting a full session soon", buf, 2u);
      }
    }

    v4 = *(a1 + 40);
    v5 = *(v4 + 72);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __42__CPLEngineScheduler__prepareFirstSession__block_invoke_154;
    v17[3] = &unk_1E861A940;
    v17[4] = v4;
    v6 = v17;
    *buf = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __cpl_dispatch_async_block_invoke_7513;
    v21 = &unk_1E861B4E0;
    v22 = v6;
    v7 = v5;
    v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
    dispatch_async(v7, v8);
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(v10 + 72);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __42__CPLEngineScheduler__prepareFirstSession__block_invoke_2_155;
    v15[3] = &unk_1E861B290;
    v15[4] = v10;
    v16 = v9;
    v12 = v15;
    *buf = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __cpl_dispatch_async_block_invoke_7513;
    v21 = &unk_1E861B4E0;
    v22 = v12;
    v13 = v11;
    v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
    dispatch_async(v13, v14);
  }
}

uint64_t __42__CPLEngineScheduler__prepareFirstSession__block_invoke_154(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = result;
    *(v1 + 8) = 0;

    *(*(v3 + 32) + 227) = [*(v3 + 32) _justInCaseSessionIsPossible];
    v4 = *(v3 + 32);
    if (v4[6])
    {
      [v4 _unscheduleNextSyncSession];
      v4 = *(v3 + 32);
    }

    v4[7] = 0x4014000000000000;
    result = [*(v3 + 32) _noteSyncSessionNeededFromState:2 proposedScheduleDate:0];
    *(*(v3 + 32) + 56) = 0x3FB99999A0000000;
  }

  return result;
}

void __42__CPLEngineScheduler__prepareFirstSession__block_invoke_2_155(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  if (v2)
  {
    *(v1 + 8) = 0;

    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "Client is not in sync with client cache. Waiting before dispatching the first sync session", v5, 2u);
      }
    }

    if (*(*(a1 + 32) + 48))
    {
      if (([*(a1 + 40) isClientInSyncWithClientCache] & 1) == 0)
      {
        [*(a1 + 32) _unscheduleNextSyncSession];
      }
    }
  }
}

- (void)openWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineScheduler *)self platformObject];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__CPLEngineScheduler_openWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E861B618;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 openWithCompletionHandler:v7];
}

void __48__CPLEngineScheduler_openWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 72);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__CPLEngineScheduler_openWithCompletionHandler___block_invoke_2;
  v11[3] = &unk_1E861B3D0;
  v12 = v3;
  v13 = v5;
  v14 = v4;
  v7 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v16 = v7;
  v8 = v6;
  v9 = v3;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

uint64_t __48__CPLEngineScheduler_openWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 48);
    v3 = *(*(a1 + 48) + 16);
  }

  else
  {
    *(*(a1 + 40) + 112) = 1;
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 272));
    v5 = [WeakRetained containerHasBeenWiped];

    v6 = *(a1 + 40);
    if (v5)
    {
      v7 = [v6 platformObject];
      [v7 unschedulePersistedSyncSession];

      [*(a1 + 40) _disableSynchronizationBecauseContainerHasBeenWipedLocked];
    }

    else
    {
      [v6 _prepareFirstSession];
    }

    v3 = *(*(a1 + 48) + 16);
  }

  return v3();
}

- (void)getCurrentRequiredStateWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__CPLEngineScheduler_getCurrentRequiredStateWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E861ECD0;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (CPLSyncSessionConfiguration)configuration
{
  WeakRetained = objc_loadWeakRetained(&self->_engineLibrary);
  v3 = [WeakRetained configuration];

  return v3;
}

- (void)resetBackoffInterval
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__CPLEngineScheduler_resetBackoffInterval__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

uint64_t __42__CPLEngineScheduler_resetBackoffInterval__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 120))
  {
    [*(result + 120) timeIntervalSinceNow];
    result = *(a1 + 32);
    if (v3 < 0.0)
    {
      [result _disableRetryAfterLocked];
      result = *(a1 + 32);
    }
  }

  if (*(result + 56) > 0.100000001)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *v5 = 0;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Resetting back-off interval", v5, 2u);
      }

      result = *(a1 + 32);
    }

    *(result + 56) = 0x3FB99999A0000000;
  }

  return result;
}

- (void)noteQuotaHasChanged
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  v3 = [(CPLEngineScheduler *)self engineLibrary];
  v4 = [v3 store];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__CPLEngineScheduler_noteQuotaHasChanged__block_invoke;
  v8[3] = &unk_1E8620A60;
  v5 = v4;
  v9 = v5;
  v10 = v11;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__CPLEngineScheduler_noteQuotaHasChanged__block_invoke_3;
  v7[3] = &unk_1E8620A60;
  v7[4] = self;
  v7[5] = v11;
  v6 = [v5 performWriteTransactionWithBlock:v8 completionHandler:v7];

  _Block_object_dispose(v11, 8);
}

void __41__CPLEngineScheduler_noteQuotaHasChanged__block_invoke(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__CPLEngineScheduler_noteQuotaHasChanged__block_invoke_2;
  v6[3] = &unk_1E8620568;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [a2 do:v6];
}

void __41__CPLEngineScheduler_noteQuotaHasChanged__block_invoke_3(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 error];

  if (!v4)
  {
    if (*(*(*(a1 + 40) + 8) + 24) != 1)
    {
      goto LABEL_10;
    }

    v8 = *(a1 + 32);
    v9 = *(v8 + 72);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __41__CPLEngineScheduler_noteQuotaHasChanged__block_invoke_151;
    v13[3] = &unk_1E861A940;
    v13[4] = v8;
    v10 = v13;
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v15 = __cpl_dispatch_async_block_invoke_7513;
    v16 = &unk_1E861B4E0;
    v17 = v10;
    v5 = v9;
    v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &buf);
    dispatch_async(v5, v11);

LABEL_9:
    goto LABEL_10;
  }

  v5 = [*(a1 + 32) engineLibrary];
  if (([v5 libraryIsCorrupted]& 1) != 0)
  {
    goto LABEL_9;
  }

  v6 = [v3 isLibraryClosed];

  if ((v6 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLSchedulerOSLogDomain_7603();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [v3 error];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "Quota change transaction error: %@", &buf, 0xCu);
    }

    goto LABEL_9;
  }

LABEL_10:

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __41__CPLEngineScheduler_noteQuotaHasChanged__block_invoke_151(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  if (v2)
  {
    [v2 timeIntervalSinceNow];
    if (v3 < 0.0)
    {
      [*(a1 + 32) _disableRetryAfterLocked];
    }
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLSchedulerOSLogDomain_7603();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "Quota has changed and some scopes were marked as being over quota. Requesting to push", v6, 2u);
    }
  }

  return [*(a1 + 32) _noteSyncSessionNeededFromState:7 proposedScheduleDate:0];
}

uint64_t __41__CPLEngineScheduler_noteQuotaHasChanged__block_invoke_2(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) scopes];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [v4 enumeratorForScopesIncludeInactive:0];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v20 = a2;
    v8 = 0;
    v9 = *v23;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        if (v11)
        {
          v12 = [v4 flagsForScope:*(*(&v22 + 1) + 8 * i)];
          if ([v12 valueForFlag:2])
          {
            [v12 setValue:0 forFlag:2];
            v21 = v8;
            v13 = [v4 updateFlags:v12 forScope:v11 error:&v21];
            v14 = v21;

            if (*(*(*(a1 + 40) + 8) + 24))
            {

              if (!v13)
              {
                goto LABEL_17;
              }
            }

            else
            {
              v15 = [*(a1 + 32) pushRepository];
              *(*(*(a1 + 40) + 8) + 24) = [v15 isEmpty] ^ 1;

              if ((v13 & 1) == 0)
              {
LABEL_17:

                if (v20)
                {
                  v16 = v14;
                  v17 = 0;
                  *v20 = v14;
                }

                else
                {
                  v17 = 0;
                }

                goto LABEL_22;
              }
            }

            v8 = v14;
          }

          else
          {
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

  v17 = 1;
  v14 = v8;
LABEL_22:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)noteBlockedStateHasChanged:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__CPLEngineScheduler_noteBlockedStateHasChanged___block_invoke;
  v10[3] = &unk_1E861B290;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __49__CPLEngineScheduler_noteBlockedStateHasChanged___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 112) == 1)
  {
    v3 = *(v1 + 104);
    if (v3)
    {
      v4 = [v3 rescheduler];
      v5 = [*(a1 + 40) rescheduler];

      if (v4 == v5)
      {
        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 272));
        v6 = [*(a1 + 40) isBlocked];
        v7 = [*(a1 + 40) syncHasBeenRequested];
        v8 = [*(a1 + 40) runtimeCharacteristics];
        [WeakRetained updateBlockedMetrics:v6 syncRequested:v7 runtimeCharacteristics:v8];
      }
    }
  }
}

- (void)noteSyncSession:(id)a3 failedDuringPhase:(unint64_t)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v9 isCPLOperationDeferredError] && objc_msgSend(v8, "shouldConsiderRequestingMoreTime"))
  {
    v10 = [(CPLEngineScheduler *)self engineLibrary];
    v11 = [v10 store];

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __66__CPLEngineScheduler_noteSyncSession_failedDuringPhase_withError___block_invoke;
    v14[3] = &unk_1E861C570;
    v15 = v11;
    v16 = v8;
    v17 = self;
    v19 = a4;
    v18 = v9;
    v12 = v11;
    v13 = [v12 performReadTransactionWithBlock:v14];
  }

  else
  {
    [(CPLEngineScheduler *)self _noteSyncSession:v8 failedDuringPhase:a4 withError:v9];
  }
}

uint64_t __66__CPLEngineScheduler_noteSyncSession_failedDuringPhase_withError___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) syncSessionShouldRequestMoreTime])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = *(a1 + 40);
        v6 = 138412290;
        v7 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEFAULT, "%@ has been deferred and should request more time", &v6, 0xCu);
      }
    }

    [*(a1 + 40) noteSyncSessionInformation:@"Session should likely have requested more time to avoid deferral"];
    [*(a1 + 40) setShouldHaveRequestedMoreTime:1];
  }

  result = [*(a1 + 48) _noteSyncSession:*(a1 + 40) failedDuringPhase:*(a1 + 64) withError:*(a1 + 56)];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_noteSyncSession:(id)a3 failedDuringPhase:(unint64_t)a4 withError:(id)a5
{
  v9 = a3;
  v10 = a5;
  queue = self->_queue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__CPLEngineScheduler__noteSyncSession_failedDuringPhase_withError___block_invoke;
  v17[3] = &unk_1E861C548;
  v17[4] = self;
  v18 = v9;
  v19 = v10;
  v20 = a2;
  v21 = a4;
  v12 = v17;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v23 = v12;
  v13 = queue;
  v14 = v10;
  v15 = v9;
  v16 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v13, v16);
}

void __67__CPLEngineScheduler__noteSyncSession_failedDuringPhase_withError___block_invoke(uint64_t a1)
{
  v102 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 104) == *(a1 + 40))
  {
    v6 = *(a1 + 48);
    if (![v6 isCPLOperationDeferredError])
    {
      *(*(a1 + 32) + 42) = 0;
      *(*(a1 + 32) + 41) = 0;
      goto LABEL_31;
    }

    v7 = [*(a1 + 40) shouldConsiderRequestingMoreTime];
    v8 = *(a1 + 40);
    if (v7)
    {
      if ([v8 shouldRequestMoreTime])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v9 = __CPLSchedulerOSLogDomain_7603();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = *(a1 + 40);
            *buf = 138412290;
            *&buf[4] = v10;
            _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "%@ has been deferred again and should request even more time", buf, 0xCu);
          }
        }

        [*(a1 + 40) noteSyncSessionInformation:@"Session should likely request even more time to avoid more deferrals"];
        [*(a1 + 40) setShouldHaveRequestedMoreTime:1];
      }

      else
      {
        v13 = *(a1 + 32);
        if (*(v13 + 42) != 1)
        {
          if (_CPLSilentLogging)
          {
            v16 = 1;
            goto LABEL_27;
          }

          v41 = __CPLSchedulerOSLogDomain_7603();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = *(a1 + 40);
            *buf = 138412290;
            *&buf[4] = v42;
            _os_log_impl(&dword_1DC05A000, v41, OS_LOG_TYPE_DEFAULT, "%@ has been deferred and should request more time if deferred again", buf, 0xCu);
          }

          v16 = 1;
LABEL_26:
          v13 = *(a1 + 32);
LABEL_27:
          *(v13 + 42) = v16;
          v17 = [*(a1 + 40) shouldHaveRequestedMoreTime];
          v18 = *(a1 + 32);
          if (v17)
          {
            *(v18 + 41) = 1;
            v19 = [CPLErrors cplErrorWithCode:258 underlyingError:v6 description:@"Sync session should have requested more time"];

            v6 = v19;
          }

          else
          {
            *(v18 + 41) = 0;
            [*(a1 + 40) setShouldRequestMoreTime:0];
          }

          WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 272));
          v21 = [*(a1 + 40) runtimeCharacteristics];
          [WeakRetained updateBlockedMetrics:1 syncRequested:0 runtimeCharacteristics:v21];

LABEL_31:
          v22 = a1 + 32;
          [*(a1 + 32) _keepSessionInformation:*(a1 + 40)];
          v23 = *(*(a1 + 32) + 232);
          *(*v22 + 232) = 0;

          v24 = objc_loadWeakRetained((*(a1 + 32) + 272));
          [v24 reportUnsuccessfulSync];

          *(*v22 + 80) = 14;
          if ((_CPLSilentLogging & 1) == 0)
          {
            v25 = __CPLSchedulerOSLogDomain_7603();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              v26 = *(a1 + 40);
              v27 = [CPLEngineSyncManager shortDescriptionForState:*(a1 + 64)];
              *buf = 138412802;
              *&buf[4] = v26;
              *&buf[12] = 2112;
              *&buf[14] = v27;
              *&buf[22] = 2112;
              v101 = v6;
              _os_log_impl(&dword_1DC05A000, v25, OS_LOG_TYPE_DEBUG, "%@ failed %@: %@", buf, 0x20u);
            }
          }

          [*(a1 + 40) setIsJustInCaseSession:0];
          v28 = objc_loadWeakRetained((*(a1 + 32) + 272));
          v29 = [v28 systemMonitor];
          [v29 updateDiskPressureState];

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          LOBYTE(v101) = 1;
          v94[0] = MEMORY[0x1E69E9820];
          v94[1] = 3221225472;
          v94[2] = __67__CPLEngineScheduler__noteSyncSession_failedDuringPhase_withError___block_invoke_133;
          v94[3] = &unk_1E861C520;
          v94[4] = *(a1 + 32);
          v95 = *(a1 + 40);
          v2 = v6;
          v96 = v2;
          v97 = buf;
          v30 = MEMORY[0x1E128EBA0](v94);
          if (![v2 isCPLError])
          {
            v32 = 0;
            v33 = 1;
            goto LABEL_105;
          }

          v31 = [v2 code];
          v32 = 0;
          v33 = 1;
          if (v31 <= 256)
          {
            if (v31 <= 23)
            {
              if (v31 <= 20)
              {
                if (v31 == 18)
                {
                  v32 = 0;
                  v33 = (*(a1 + 64) - 9) < 0xFFFFFFFFFFFFFFFELL;
                }

                else if (v31 == 20)
                {
                  v34 = *(a1 + 32);
                  v91[0] = MEMORY[0x1E69E9820];
                  v91[1] = 3221225472;
                  v91[2] = __67__CPLEngineScheduler__noteSyncSession_failedDuringPhase_withError___block_invoke_134;
                  v91[3] = &unk_1E861B1C8;
                  v91[4] = v34;
                  v92 = *(a1 + 40);
                  v93 = v2;
                  [v34 _handleResetClientCacheWithError:v93 completionHandler:v91];
                  v35 = *(a1 + 32);
                  v36 = *(v35 + 104);
                  *(v35 + 104) = 0;

                  *(*&buf[8] + 24) = 0;
LABEL_145:
                  v32 = 1;
                  goto LABEL_105;
                }

                goto LABEL_105;
              }

              if (v31 == 21)
              {
                v54 = *(a1 + 32);
                v78 = MEMORY[0x1E69E9820];
                v79 = 3221225472;
                v80 = __67__CPLEngineScheduler__noteSyncSession_failedDuringPhase_withError___block_invoke_2;
                v81 = &unk_1E861B1C8;
                v82 = v54;
                v83 = *(a1 + 40);
                v84 = v2;
                [v54 _handleResetCloudCacheWithError:v84 completionHandler:&v78];
                v55 = *(a1 + 32);
                v56 = *(v55 + 104);
                *(v55 + 104) = 0;

                *(*&buf[8] + 24) = 0;
                goto LABEL_145;
              }

              if (v31 != 22)
              {
LABEL_105:
                v57 = *(a1 + 32);
                v58 = *(v57 + 88);
                v59 = *(v57 + 16);
                v60 = [*(a1 + 40) requiredStateAtEndOfSyncSession];
                if (v58 >= v59)
                {
                  v61 = v59;
                }

                else
                {
                  v61 = v58;
                }

                if (v61 >= v60)
                {
                  v61 = v60;
                }

                *(*(a1 + 32) + 16) = v61;
                if (*(*&buf[8] + 24) == 1)
                {
                  v62 = [*(a1 + 32) platformObject];
                  [v62 noteSyncSession:*(a1 + 40) failedWithError:v2];

                  v63 = *(a1 + 32);
                  v64 = *(v63 + 104);
                  *(v63 + 104) = 0;

                  v65 = *(a1 + 32);
                  if (*(v65 + 24) == *(v65 + 32) && (v66 = *(a1 + 64), v66 <= 0xD))
                  {
                    if (v33)
                    {
                      [v65 _backOff];
                      v65 = *(a1 + 32);
                    }

                    v67 = *(v65 + 296);
                    if (v67)
                    {
                      if (*(v65 + 56) > 5.0)
                      {
                        v68 = (*(v67 + 16))(*(v65 + 296));
                        v65 = *(a1 + 32);
                        if ((v68 & 1) == 0)
                        {
                          v69 = *(v65 + 288);
                          if (v69)
                          {
                            (*(v69 + 16))(*(v65 + 288), 14);
                            v65 = *(a1 + 32);
                          }

                          v66 = 14;
                        }
                      }
                    }

                    [v65 _noteSyncSessionNeededFromState:v66 proposedScheduleDate:0];
                  }

                  else
                  {
                    if (v33)
                    {
                      [v65 _backOff];
                      v65 = *(a1 + 32);
                    }

                    v70 = *(v65 + 296);
                    if (v70)
                    {
                      if (*(v65 + 56) > 5.0)
                      {
                        v71 = (*(v70 + 16))(*(v65 + 296));
                        v65 = *(a1 + 32);
                        if ((v71 & 1) == 0)
                        {
                          v72 = *(v65 + 288);
                          if (v72)
                          {
                            (*(v72 + 16))(*(v65 + 288), 14);
                            v65 = *(a1 + 32);
                          }

                          [v65 _noteSyncSessionNeededFromState:14 proposedScheduleDate:0];
                          v65 = *(a1 + 32);
                        }
                      }
                    }

                    [v65 _scheduleNextSyncSession];
                  }

                  [*(a1 + 40) noteClientNeedsToPullIfNecessary];
                }

                else if (v32)
                {
                  [*(a1 + 32) _noteSyncSessionNeededFromState:14 proposedScheduleDate:0];
                }

                if ((*(*&buf[8] + 24) & 1) == 0 && ([*(a1 + 48) isCPLOperationCancelledError] & 1) == 0)
                {
                  [*(*(a1 + 32) + 280) removePredictedValueForType:@"lastEvent"];
                }

                [*(a1 + 32) _updateOverridingForeground];

                _Block_object_dispose(buf, 8);
                goto LABEL_138;
              }

              if (*(a1 + 64) != 4)
              {
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v74 = __CPLSchedulerOSLogDomain_7603();
                  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
                  {
                    *v98 = 0;
                    _os_log_impl(&dword_1DC05A000, v74, OS_LOG_TYPE_DEFAULT, "Sync anchor expired, we can't trust the cloud cache anymore", v98, 2u);
                  }
                }

                v75 = *(a1 + 32);
                v85[0] = MEMORY[0x1E69E9820];
                v85[1] = 3221225472;
                v85[2] = __67__CPLEngineScheduler__noteSyncSession_failedDuringPhase_withError___block_invoke_136;
                v85[3] = &unk_1E861B1C8;
                v85[4] = v75;
                v86 = *(a1 + 40);
                v87 = v2;
                [v75 _handleResetCloudCacheWithError:v87 completionHandler:v85];
                v76 = *(a1 + 32);
                v77 = *(v76 + 104);
                *(v76 + 104) = 0;

                *(*&buf[8] + 24) = 0;
                goto LABEL_145;
              }

              if ((_CPLSilentLogging & 1) == 0)
              {
                v43 = __CPLSchedulerOSLogDomain_7603();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  *v98 = 0;
                  _os_log_impl(&dword_1DC05A000, v43, OS_LOG_TYPE_DEFAULT, "Glboal sync anchor expired, will pull all scopes from the beginning", v98, 2u);
                }
              }

              v44 = *(a1 + 32);
              v88[0] = MEMORY[0x1E69E9820];
              v88[1] = 3221225472;
              v88[2] = __67__CPLEngineScheduler__noteSyncSession_failedDuringPhase_withError___block_invoke_135;
              v88[3] = &unk_1E861B1C8;
              v88[4] = v44;
              v89 = *(a1 + 40);
              v90 = v2;
              [v44 _handleResetGlobalAnchorWithError:v90 completionHandler:v88];
              v45 = *(a1 + 32);
              v46 = *(v45 + 104);
              *(v45 + 104) = 0;

LABEL_104:
              v32 = 0;
              goto LABEL_105;
            }

            if (v31 <= 40)
            {
              if (v31 == 24)
              {
                [*(a1 + 32) _handleResetAnchorWithError:v2 completionHandler:&__block_literal_global_138];
                goto LABEL_104;
              }

              if (v31 != 40)
              {
                goto LABEL_105;
              }

              goto LABEL_86;
            }

            if (v31 != 41)
            {
              if (v31 != 82)
              {
                goto LABEL_105;
              }

              goto LABEL_103;
            }

LABEL_86:
            v33 = 0;
            goto LABEL_104;
          }

          if (v31 > 1003)
          {
            if (v31 > 1009)
            {
              if (v31 != 1010)
              {
                if (v31 != 10000)
                {
                  goto LABEL_105;
                }

                if (_CPLSilentLogging)
                {
                  goto LABEL_86;
                }

                v37 = __CPLSchedulerOSLogDomain_7603();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                {
                  *v98 = 0;
                  _os_log_impl(&dword_1DC05A000, v37, OS_LOG_TYPE_DEFAULT, "Scheduler has been asked to retry sync session immediately", v98, 2u);
                }

                goto LABEL_85;
              }

              if (_CPLSilentLogging)
              {
                v40 = @"waiting for encryption keys";
                goto LABEL_102;
              }

              v39 = __CPLSchedulerOSLogDomain_7603();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                *v98 = 0;
                _os_log_impl(&dword_1DC05A000, v39, OS_LOG_TYPE_DEFAULT, "Encryption keys are not available yet - disabling synchronization temporarily", v98, 2u);
              }

              v40 = @"waiting for encryption keys";
            }

            else
            {
              if (v31 == 1004)
              {
                if (*(*(a1 + 32) + 16) >= *(a1 + 64))
                {
                  v50 = [v2 userInfo];
                  v51 = [v50 objectForKeyedSubscript:@"CPLErrorRetryAfterDate"];

                  if (v51)
                  {
                    [v51 timeIntervalSinceNow];
                    v53 = fmin(v52, 86400.0);
                    if (v53 > 5.0)
                    {
                      v33 = 0;
                      *(*(a1 + 32) + 56) = v53;
                    }
                  }
                }

                goto LABEL_104;
              }

              if (v31 != 1009)
              {
                goto LABEL_105;
              }

              if (_CPLSilentLogging)
              {
                v40 = @"encryption keys are invalid";
                goto LABEL_102;
              }

              v39 = __CPLSchedulerOSLogDomain_7603();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                *v98 = 0;
                _os_log_impl(&dword_1DC05A000, v39, OS_LOG_TYPE_ERROR, "Encryption keys are invalid - disabling synchronization temporarily", v98, 2u);
              }

              v40 = @"encryption keys are invalid";
            }
          }

          else
          {
            if (v31 <= 999)
            {
              if (v31 != 257)
              {
                if (v31 != 258)
                {
                  goto LABEL_105;
                }

                if (_CPLSilentLogging)
                {
                  goto LABEL_86;
                }

                v37 = __CPLSchedulerOSLogDomain_7603();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                {
                  v38 = *(a1 + 40);
                  *v98 = 138412290;
                  v99 = v38;
                  _os_log_impl(&dword_1DC05A000, v37, OS_LOG_TYPE_DEFAULT, "%@ has been deferred and should have requested more time - retrying immediately", v98, 0xCu);
                }

LABEL_85:

                goto LABEL_86;
              }

              objc_storeStrong((*(a1 + 32) + 48), *(*(a1 + 32) + 104));
              v47 = [MEMORY[0x1E695DF00] date];
              v48 = *(a1 + 32);
              v49 = *(v48 + 216);
              *(v48 + 216) = v47;

              [*(*(a1 + 32) + 48) dropExpectedDate];
LABEL_103:
              v30[2](v30);
              goto LABEL_104;
            }

            if (v31 == 1000)
            {
              [*(a1 + 32) _noteServerIsUnavailableWithErrorLocked:v2 reason:0];
              goto LABEL_103;
            }

            if (v31 != 1001)
            {
              goto LABEL_105;
            }

            v39 = objc_loadWeakRetained((*(a1 + 32) + 272));
            [v39 setICloudLibraryClientVersionTooOld:1];
            v40 = @"client is too old";
          }

LABEL_102:
          [*(a1 + 32) _noteServerIsUnavailableWithErrorLocked:v2 reason:v40];
          goto LABEL_103;
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v14 = __CPLSchedulerOSLogDomain_7603();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = *(a1 + 40);
            *buf = 138412290;
            *&buf[4] = v15;
            _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEFAULT, "%@ has been deferred twice in a row and should request more time", buf, 0xCu);
          }
        }

        [*(a1 + 40) noteSyncSessionInformation:@"Session should likely request more time to avoid more deferrals"];
        [*(a1 + 40) setShouldHaveRequestedMoreTime:1];
      }
    }

    else if (([v8 shouldHaveRequestedMoreTime] & 1) == 0 && (_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        *buf = 138412290;
        *&buf[4] = v12;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "%@ has been deferred for external reasons", buf, 0xCu);
      }
    }

    v16 = 0;
    goto LABEL_26;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLSchedulerOSLogDomain_7603();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      v4 = *(a1 + 40);
      v5 = *(*(a1 + 32) + 104);
      *buf = 138412802;
      *&buf[4] = v3;
      *&buf[12] = 2114;
      *&buf[14] = v4;
      *&buf[22] = 2114;
      v101 = v5;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEFAULT, "%@: ignoring %{public}@ - current session is %{public}@", buf, 0x20u);
    }

LABEL_138:
  }

  v73 = *MEMORY[0x1E69E9840];
}

void __67__CPLEngineScheduler__noteSyncSession_failedDuringPhase_withError___block_invoke_133(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 noteSyncSession:*(a1 + 40) failedWithError:*(a1 + 48)];

  v3 = *(a1 + 32);
  v4 = *(v3 + 104);
  *(v3 + 104) = 0;

  *(*(*(a1 + 56) + 8) + 24) = 0;
}

void __67__CPLEngineScheduler__noteSyncSession_failedDuringPhase_withError___block_invoke_134(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 noteSyncSession:*(a1 + 40) failedWithError:*(a1 + 48)];
}

void __67__CPLEngineScheduler__noteSyncSession_failedDuringPhase_withError___block_invoke_135(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 noteSyncSession:*(a1 + 40) failedWithError:*(a1 + 48)];
}

void __67__CPLEngineScheduler__noteSyncSession_failedDuringPhase_withError___block_invoke_136(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 noteSyncSession:*(a1 + 40) failedWithError:*(a1 + 48)];
}

void __67__CPLEngineScheduler__noteSyncSession_failedDuringPhase_withError___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 noteSyncSession:*(a1 + 40) failedWithError:*(a1 + 48)];
}

- (void)_handleResetGlobalAnchorWithError:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v8 = [a3 userInfo];
  v9 = [v8 objectForKeyedSubscript:@"CPLErrorResetReason"];
  v10 = v9;
  v11 = @"needs refresh";
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = [(CPLEngineScheduler *)self engineLibrary];
  v14 = [v13 store];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __74__CPLEngineScheduler__handleResetGlobalAnchorWithError_completionHandler___block_invoke;
  v22[3] = &unk_1E86205B8;
  v23 = v14;
  v24 = v12;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __74__CPLEngineScheduler__handleResetGlobalAnchorWithError_completionHandler___block_invoke_123;
  v19[3] = &unk_1E861C4F8;
  v20 = v7;
  v21 = a2;
  v19[4] = self;
  v15 = v7;
  v16 = v12;
  v17 = v14;
  v18 = [v17 performWriteTransactionWithBlock:v22 completionHandler:v19];
}

void __74__CPLEngineScheduler__handleResetGlobalAnchorWithError_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __74__CPLEngineScheduler__handleResetGlobalAnchorWithError_completionHandler___block_invoke_2;
  v4[3] = &unk_1E8620940;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [a2 do:v4];
}

void __74__CPLEngineScheduler__handleResetGlobalAnchorWithError_completionHandler___block_invoke_123(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 error];

  if (v3)
  {
    v4 = [*(a1 + 32) engineLibrary];
    if ([v4 libraryIsCorrupted])
    {
    }

    else
    {
      v5 = [v10 isLibraryClosed];

      if ((v5 & 1) == 0)
      {
        v6 = [MEMORY[0x1E696AAA8] currentHandler];
        v7 = *(a1 + 48);
        v8 = *(a1 + 32);
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineScheduler.m"];
        [v6 handleFailureInMethod:v7 object:v8 file:v9 lineNumber:1518 description:@"Store is in a very bad state."];

        abort();
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __74__CPLEngineScheduler__handleResetGlobalAnchorWithError_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLSchedulerOSLogDomain_7603();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "Resetting global sync anchor", v8, 2u);
    }
  }

  v5 = [*(a1 + 32) scopes];
  v6 = [v5 storeScopeListSyncAnchor:0 error:a2];

  if (v6)
  {
    [*(a1 + 32) noteOtherResetEvent:@"globalAnchor" cause:*(a1 + 40)];
  }

  return v6;
}

- (void)_handleResetAnchorWithError:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v8 = [a3 userInfo];
  v9 = [v8 objectForKeyedSubscript:@"CPLErrorResetReason"];
  v10 = v9;
  v11 = @"needs refresh";
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = [v8 objectForKeyedSubscript:@"CPLErrorScopeIdentifiers"];
  v14 = [(CPLEngineScheduler *)self engineLibrary];
  v15 = [v14 store];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __68__CPLEngineScheduler__handleResetAnchorWithError_completionHandler___block_invoke;
  v24[3] = &unk_1E861F1D0;
  v25 = v13;
  v26 = v15;
  v27 = v12;
  v28 = self;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __68__CPLEngineScheduler__handleResetAnchorWithError_completionHandler___block_invoke_119;
  v21[3] = &unk_1E861C4F8;
  v22 = v7;
  v23 = a2;
  v21[4] = self;
  v16 = v7;
  v17 = v12;
  v18 = v15;
  v19 = v13;
  v20 = [v18 performWriteTransactionWithBlock:v24 completionHandler:v21];
}

void __68__CPLEngineScheduler__handleResetAnchorWithError_completionHandler___block_invoke(id *a1, void *a2)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__CPLEngineScheduler__handleResetAnchorWithError_completionHandler___block_invoke_2;
  v9[3] = &unk_1E8620968;
  v4 = a1 + 7;
  v5 = a1[4];
  v6 = a1[5];
  *&v7 = a1[6];
  *(&v7 + 1) = *v4;
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [a2 do:v9];
}

void __68__CPLEngineScheduler__handleResetAnchorWithError_completionHandler___block_invoke_119(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 error];

  if (v3)
  {
    v4 = [*(a1 + 32) engineLibrary];
    if ([v4 libraryIsCorrupted])
    {
    }

    else
    {
      v5 = [v10 isLibraryClosed];

      if ((v5 & 1) == 0)
      {
        v6 = [MEMORY[0x1E696AAA8] currentHandler];
        v7 = *(a1 + 48);
        v8 = *(a1 + 32);
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineScheduler.m"];
        [v6 handleFailureInMethod:v7 object:v8 file:v9 lineNumber:1494 description:@"Store is in a very bad state."];

        abort();
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __68__CPLEngineScheduler__handleResetAnchorWithError_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) count])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v15 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 48);
        *buf = 138543362;
        v24 = v16;
        _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_DEFAULT, "Reset sync anchor for all scopes with reason '%{public}@'", buf, 0xCu);
      }
    }

    v4 = [*(a1 + 56) engineLibrary];
    v5 = [v4 store];
    v7 = [v5 resetSyncAnchorWithCause:*(a1 + 48) error:a2];
    goto LABEL_25;
  }

  v4 = [*(a1 + 40) scopes];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
  v7 = v6 == 0;
  if (!v6)
  {
LABEL_25:

    goto LABEL_26;
  }

  v8 = v6;
  v9 = 0;
  v10 = *v20;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v12 = [v4 scopeWithIdentifier:{*(*(&v19 + 1) + 8 * i), v19}];
      if (v12)
      {
        if (([v4 resetSyncAnchorForScope:v12 error:a2] & 1) == 0)
        {

          goto LABEL_25;
        }

        ++v9;
      }
    }

    v8 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

  if (v9)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [*(a1 + 32) componentsJoinedByString:{@", "}];
        *buf = 134218242;
        v24 = v9;
        v25 = 2112;
        v26 = v14;
        _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "Reset sync anchor for %lu scopes of %@", buf, 0x16u);
      }
    }

    [*(a1 + 40) noteOtherResetEvent:@"anchor" cause:*(a1 + 48)];
  }

  v7 = 1;
LABEL_26:

  v17 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)_handleResetCloudCacheWithError:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v8 = [a3 userInfo];
  v9 = [v8 objectForKey:@"CPLErrorResetReason"];

  v10 = [(CPLEngineScheduler *)self engineLibrary];
  v11 = [v10 store];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__CPLEngineScheduler__handleResetCloudCacheWithError_completionHandler___block_invoke;
  v18[3] = &unk_1E86205B8;
  v18[4] = self;
  v19 = v9;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__CPLEngineScheduler__handleResetCloudCacheWithError_completionHandler___block_invoke_3;
  v15[3] = &unk_1E861C4F8;
  v16 = v7;
  v17 = a2;
  v15[4] = self;
  v12 = v7;
  v13 = v9;
  v14 = [v11 performWriteTransactionWithBlock:v18 completionHandler:v15];
}

void __72__CPLEngineScheduler__handleResetCloudCacheWithError_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__CPLEngineScheduler__handleResetCloudCacheWithError_completionHandler___block_invoke_2;
  v4[3] = &unk_1E8620940;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 do:v4];
}

void __72__CPLEngineScheduler__handleResetCloudCacheWithError_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 error];

  v4 = [*(a1 + 32) engineLibrary];
  v5 = v4;
  if (!v3)
  {
    v11 = [v4 syncManager];
    [v11 resetTransportUserIdentifier];

    goto LABEL_6;
  }

  if ([v4 libraryIsCorrupted])
  {
LABEL_6:

    goto LABEL_7;
  }

  v6 = [v12 isLibraryClosed];

  if ((v6 & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = *(a1 + 48);
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineScheduler.m"];
    [v7 handleFailureInMethod:v8 object:v9 file:v10 lineNumber:1447 description:@"Store is in a very bad state."];

    abort();
  }

LABEL_7:
  (*(*(a1 + 40) + 16))();
}

uint64_t __72__CPLEngineScheduler__handleResetCloudCacheWithError_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) engineLibrary];
  v5 = [v4 store];
  v6 = v5;
  if (*(a1 + 40))
  {
    v7 = *(a1 + 40);
  }

  else
  {
    v7 = @"cloud cache invalid";
  }

  v8 = [v5 resetCompleteSyncStateWithCause:v7 error:a2];

  return v8;
}

- (void)_handleResetClientCacheWithError:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v8 = [a3 userInfo];
  v9 = [v8 objectForKey:@"CPLErrorResetReason"];

  v10 = [(CPLEngineScheduler *)self engineLibrary];
  v11 = [v10 store];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __73__CPLEngineScheduler__handleResetClientCacheWithError_completionHandler___block_invoke;
  v18[3] = &unk_1E86205B8;
  v18[4] = self;
  v19 = v9;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__CPLEngineScheduler__handleResetClientCacheWithError_completionHandler___block_invoke_3;
  v15[3] = &unk_1E861C4F8;
  v16 = v7;
  v17 = a2;
  v15[4] = self;
  v12 = v7;
  v13 = v9;
  v14 = [v11 performWriteTransactionWithBlock:v18 completionHandler:v15];
}

void __73__CPLEngineScheduler__handleResetClientCacheWithError_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__CPLEngineScheduler__handleResetClientCacheWithError_completionHandler___block_invoke_2;
  v4[3] = &unk_1E8620940;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 do:v4];
}

void __73__CPLEngineScheduler__handleResetClientCacheWithError_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 error];

  if (v3)
  {
    v4 = [*(a1 + 32) engineLibrary];
    if ([v4 libraryIsCorrupted])
    {
    }

    else
    {
      v5 = [v10 isLibraryClosed];

      if ((v5 & 1) == 0)
      {
        v6 = [MEMORY[0x1E696AAA8] currentHandler];
        v7 = *(a1 + 48);
        v8 = *(a1 + 32);
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineScheduler.m"];
        [v6 handleFailureInMethod:v7 object:v8 file:v9 lineNumber:1429 description:@"Store is in a very bad state."];

        abort();
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __73__CPLEngineScheduler__handleResetClientCacheWithError_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) engineLibrary];
  v5 = [v4 store];
  v6 = v5;
  if (*(a1 + 40))
  {
    v7 = *(a1 + 40);
  }

  else
  {
    v7 = @"Client cache invalid";
  }

  v8 = [v5 resetLocalSyncStateWithCause:v7 error:a2];

  return v8;
}

- (void)noteSyncSessionSucceeded:(id)a3
{
  v5 = a3;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__CPLEngineScheduler_noteSyncSessionSucceeded___block_invoke;
  v11[3] = &unk_1E861B128;
  v11[4] = self;
  v12 = v5;
  v13 = a2;
  v7 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v15 = v7;
  v8 = queue;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

void __47__CPLEngineScheduler_noteSyncSessionSucceeded___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 104) == v2)
  {
    if ([v2 shouldRequestMoreTime] && (_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 40);
        v35 = 138412290;
        v36 = v9;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "%@ with extended running time succeeded", &v35, 0xCu);
      }
    }

    *(*(a1 + 32) + 42) = 0;
    *(*(a1 + 32) + 41) = 0;
    [*(a1 + 32) _keepSessionInformation:*(a1 + 40)];
    [*(a1 + 40) setIsJustInCaseSession:0];
    v10 = [MEMORY[0x1E695DF00] date];
    v11 = *(a1 + 32);
    v12 = *(v11 + 232);
    *(v11 + 232) = v10;

    [*(a1 + 32) _resetFirstSynchronizationMarker];
    v4 = [*(a1 + 32) engineLibrary];
    [v4 requestAttachedLibrary];
    v13 = [v4 systemMonitor];
    [v13 updateDiskPressureState];

    v14 = *(a1 + 32);
    v15 = *(v14 + 120);
    *(v14 + 120) = 0;

    v16 = *(a1 + 32);
    v17 = *(v16 + 128);
    *(v16 + 128) = 0;

    *(*(a1 + 32) + 80) = 14;
    *(*(a1 + 32) + 56) = 0x3FB99999A0000000;
    v18 = *(a1 + 32);
    if (v18[4] == v18[3])
    {
      v19 = [v18 platformObject];
      [v19 noteSyncSessionSucceeded:*(a1 + 40)];

      v20 = *(a1 + 32);
      v21 = *(v20 + 104);
      *(v20 + 104) = 0;

      [*(a1 + 32) _setRequiredFirstState:14];
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v22 = __CPLSchedulerOSLogDomain_7603();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(a1 + 40);
          v24 = [CPLEngineSyncManager shortDescriptionForState:*(*(a1 + 32) + 16)];
          v35 = 138543618;
          v36 = v23;
          v37 = 2114;
          v38 = v24;
          _os_log_impl(&dword_1DC05A000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ did succeed but we were asked to do %{public}@ meanwhile. Restarting immediately", &v35, 0x16u);
        }

        v18 = *(a1 + 32);
      }

      [v18 _startRequiredSyncSession:*(a1 + 40)];
    }

    [*(a1 + 40) noteClientNeedsToPullIfNecessary];
    v25 = [*(a1 + 40) requiredStateAtEndOfSyncSession];
    v26 = v25;
    v27 = *(a1 + 32);
    v28 = *(v27 + 88);
    if (v28 == 14 && v25 <= 0xD)
    {
      v29 = [*(a1 + 40) shouldRescheduleASyncSession];
      v30 = *(a1 + 32);
      if (v29)
      {
        v31 = [*(a1 + 40) proposedRescheduleDate];
        [v30 _noteSyncSessionNeededFromState:v26 proposedScheduleDate:v31];
      }

      else
      {
        [*(a1 + 32) _setRequiredFirstState:v26];
      }
    }

    else
    {
      if (v28 >= v25)
      {
        v28 = v25;
      }

      *(v27 + 88) = v28;
    }

    v32 = *(a1 + 32);
    if (v32[11] <= 0xDuLL)
    {
      [v32 _noteSyncSessionNeededFromState:? proposedScheduleDate:?];
      v32 = *(a1 + 32);
    }

    [v32 _updateLastSyncDateIfNecessaryLocked];
    [*(a1 + 32) _updateOverridingForeground];
    v33 = *(a1 + 32);
    if (*(v33 + 16) == 14)
    {
      [*(v33 + 280) removePredictedValueForType:@"lastEvent"];
    }

    goto LABEL_29;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLSchedulerOSLogDomain_7603();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = NSStringFromSelector(*(a1 + 48));
      v6 = *(a1 + 40);
      v7 = *(*(a1 + 32) + 104);
      v35 = 138412802;
      v36 = v5;
      v37 = 2114;
      v38 = v6;
      v39 = 2114;
      v40 = v7;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "%@: ignoring %{public}@ - current session is %{public}@", &v35, 0x20u);
    }

LABEL_29:
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)_keepSessionInformation:(id)a3
{
  v4 = a3;
  v5 = [v4 popSessionInformation];
  lastSessionInformation = self->_lastSessionInformation;
  self->_lastSessionInformation = v5;

  v7 = [v4 scopeIdentifiersExcludedFromMingling];
  v8 = [v7 allObjects];
  lastScopeIdentifiersExludedFromMingling = self->_lastScopeIdentifiersExludedFromMingling;
  self->_lastScopeIdentifiersExludedFromMingling = v8;

  v12 = [v4 scopeIdentifiersExcludedFromPushToTransport];

  v10 = [v12 allObjects];
  lastScopeIdentifiersExcludedFromPushToTransport = self->_lastScopeIdentifiersExcludedFromPushToTransport;
  self->_lastScopeIdentifiersExcludedFromPushToTransport = v10;
}

- (void)noteSyncSession:(id)a3 stateWillBeAttempted:(unint64_t)a4
{
  v7 = a3;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__CPLEngineScheduler_noteSyncSession_stateWillBeAttempted___block_invoke;
  v13[3] = &unk_1E861C4D0;
  v13[4] = self;
  v14 = v7;
  v15 = a2;
  v16 = a4;
  v9 = v13;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = v7;
  v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v12);
}

void __59__CPLEngineScheduler_noteSyncSession_stateWillBeAttempted___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 104) != *(a1 + 40))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = NSStringFromSelector(*(a1 + 48));
        v5 = *(a1 + 40);
        v6 = *(*(a1 + 32) + 104);
        v22 = 138412802;
        v23 = v4;
        v24 = 2112;
        v25 = v5;
        v26 = 2112;
        v27 = v6;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "%@: ignoring %@ - current session is %@", &v22, 0x20u);
      }

LABEL_5:

      goto LABEL_6;
    }

    goto LABEL_6;
  }

  if (*(v2 + 120))
  {
    [*(v2 + 120) timeIntervalSinceNow];
    v2 = *(a1 + 32);
    if (v8 < 0.0)
    {
      [v2 _disableRetryAfterLocked];
      v2 = *(a1 + 32);
    }
  }

  if (*(v2 + 88) > 0xDuLL || *(a1 + 56) < 0xCuLL)
  {
    v10 = *(v2 + 80);
    if (v10 <= *(v2 + 16) && *(a1 + 56) > v10 && *(v2 + 24) == *(v2 + 32))
    {
      [v2 _setRequiredFirstState:?];
      v2 = *(a1 + 32);
    }

    *(v2 + 80) = *(a1 + 56);
    [*(a1 + 32) _updateLastSyncDateIfNecessaryLocked];
    v11 = [MEMORY[0x1E695DF00] date];
    v12 = *(a1 + 32);
    v13 = *(v12 + 232);
    *(v12 + 232) = v11;

    v14 = *(a1 + 56);
    if (v14 <= 0xD)
    {
      v15 = *(a1 + 32);
      v16 = v15[4];
      if (v15[3] < v16 && v14 <= v15[2])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v17 = __CPLSchedulerOSLogDomain_7603();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v18 = [CPLEngineSyncManager shortDescriptionForState:*(a1 + 56)];
            v19 = [CPLEngineSyncManager shortDescriptionForState:*(*(a1 + 32) + 16)];
            v22 = 138412546;
            v23 = v18;
            v24 = 2112;
            v25 = v19;
            _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_DEBUG, "Sync manager is attempting %@ so we don't need to schedule %@", &v22, 0x16u);
          }

          v15 = *(a1 + 32);
          v16 = v15[4];
        }

        v15[3] = v16;
      }

      goto LABEL_6;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 40);
        v21 = [CPLEngineSyncManager shortDescriptionForState:*(a1 + 56)];
        v22 = 138543618;
        v23 = v20;
        v24 = 2114;
        v25 = v21;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ has reached %{public}@", &v22, 0x16u);
      }

      goto LABEL_5;
    }

LABEL_6:
    v7 = *MEMORY[0x1E69E9840];
    return;
  }

  v9 = *MEMORY[0x1E69E9840];

  [v2 _noteSyncSessionNeededFromState:? proposedScheduleDate:?];
}

- (void)noteNetworkStateDidChange
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__CPLEngineScheduler_noteNetworkStateDidChange__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void *__47__CPLEngineScheduler_noteNetworkStateDidChange__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 56) = 0x3FB99999A0000000;
  result = *(a1 + 32);
  if (result[2] <= 0xDuLL && result[10] == 14 && !result[6] && !result[13])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Notified that network state did change. Attempting to relaunch a sync session", v4, 2u);
      }

      result = *(a1 + 32);
    }

    return [result _scheduleNextSyncSession];
  }

  return result;
}

- (void)noteContainerHasBeenWiped
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__CPLEngineScheduler_noteContainerHasBeenWiped__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

- (void)noteServerMightBeAvailableNow
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__CPLEngineScheduler_noteServerMightBeAvailableNow__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

- (void)noteServerIsUnavailableWithError:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__CPLEngineScheduler_noteServerIsUnavailableWithError___block_invoke;
  v10[3] = &unk_1E861B290;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)_noteServerIsUnavailableWithErrorLocked:(id)a3 reason:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  unavailabilityLimitDate = self->_unavailabilityLimitDate;
  if (!unavailabilityLimitDate)
  {
    goto LABEL_8;
  }

  [(NSDate *)unavailabilityLimitDate timeIntervalSinceNow];
  if (v9 < 0.0)
  {
    [(CPLEngineScheduler *)self _disableRetryAfterLocked];
  }

  if (!self->_unavailabilityLimitDate)
  {
LABEL_8:
    v11 = [(CPLEngineScheduler *)self engineLibrary];
    v12 = [v11 syncManager];
    [v12 cancelCurrentSyncSession];

    v13 = [v6 userInfo];
    v10 = [v13 objectForKey:@"CPLErrorRetryAfterDate"];

    if (v10)
    {
      [v10 timeIntervalSinceNow];
      if (v14 <= 86400.0)
      {
        v16 = v10;
        goto LABEL_14;
      }

      v15 = MEMORY[0x1E695DF00];
    }

    else
    {
      v15 = MEMORY[0x1E695DF00];
    }

    v16 = [v15 dateWithTimeIntervalSinceNow:?];
LABEL_14:
    v17 = self->_unavailabilityLimitDate;
    self->_unavailabilityLimitDate = v16;

    [(CPLEngineScheduler *)self _backOff];
    [(NSDate *)self->_unavailabilityLimitDate timeIntervalSinceNow];
    v19 = fmax(v18, 2.0);
    if ((_CPLSilentLogging & 1) == 0)
    {
      v20 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v30 = v19;
        _os_log_impl(&dword_1DC05A000, v20, OS_LOG_TYPE_DEFAULT, "Server will be unavailable for %llds", buf, 0xCu);
      }
    }

    if (v7)
    {
      v21 = v7;
      unavailabilityReason = self->_unavailabilityReason;
      self->_unavailabilityReason = v21;
    }

    else
    {
      unavailabilityReason = [v6 userInfo];
      v23 = [unavailabilityReason objectForKeyedSubscript:@"CPLErrorRetryAfterReason"];
      v24 = self->_unavailabilityReason;
      self->_unavailabilityReason = v23;
    }

    v25 = dispatch_walltime(0, 1000000000 * v19);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__CPLEngineScheduler__noteServerIsUnavailableWithErrorLocked_reason___block_invoke;
    block[3] = &unk_1E861A940;
    block[4] = self;
    dispatch_after(v25, queue, block);
    goto LABEL_22;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = __CPLSchedulerOSLogDomain_7603();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEBUG, "Ignoring spurious server unavailability error", buf, 2u);
    }

LABEL_22:
  }

  v27 = *MEMORY[0x1E69E9840];
}

uint64_t __69__CPLEngineScheduler__noteServerIsUnavailableWithErrorLocked_reason___block_invoke(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLSchedulerOSLogDomain_7603();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "End of server unavailability reached", v4, 2u);
    }
  }

  return [*(a1 + 32) _disableRetryAfterLocked];
}

- (void)_disableRetryAfterLocked
{
  v11 = *MEMORY[0x1E69E9840];
  unavailabilityLimitDate = self->_unavailabilityLimitDate;
  if (unavailabilityLimitDate)
  {
    self->_unavailabilityLimitDate = 0;

    unavailabilityReason = self->_unavailabilityReason;
    self->_unavailabilityReason = 0;

    if (self->_requiredFirstState > 0xD)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v7 = __CPLSchedulerOSLogDomain_7603();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v9) = 0;
          _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Server should be available now", &v9, 2u);
        }
      }
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v5 = __CPLSchedulerOSLogDomain_7603();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = [CPLEngineSyncManager shortDescriptionForState:self->_requiredFirstState];
          v9 = 138412290;
          v10 = v6;
          _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Server should be available now. Rescheduling a sync session from at least %@", &v9, 0xCu);
        }
      }

      [(CPLEngineScheduler *)self _unscheduleNextSyncSession];
      [(CPLEngineScheduler *)self _scheduleNextSyncSession];
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)isSynchronizationDisabledWithReasonError:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__7661;
  v12 = __Block_byref_object_dispose__7662;
  v13 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__CPLEngineScheduler_isSynchronizationDisabledWithReasonError___block_invoke;
  block[3] = &unk_1E8620288;
  block[4] = self;
  block[5] = &v14;
  block[6] = &v8;
  dispatch_sync(queue, block);
  v5 = *(v15 + 24);
  if (a3 && (v15[3] & 1) != 0)
  {
    *a3 = v9[5];
    v5 = *(v15 + 24);
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
  return v5 & 1;
}

uint64_t __63__CPLEngineScheduler_isSynchronizationDisabledWithReasonError___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2[15])
  {
    [v2[15] timeIntervalSinceNow];
    v2 = a1[4];
    if (v3 < 0.0)
    {
      [v2 _disableRetryAfterLocked];
      v2 = a1[4];
    }
  }

  if (v2[15])
  {
    *(*(a1[5] + 8) + 24) = 1;
    v4 = a1[4];
    if (*(v4 + 128))
    {
      [CPLErrors cplErrorWithCode:1000 description:@"%@", *(v4 + 128), v14];
    }

    else
    {
      [*(v4 + 120) timeIntervalSinceNow];
      [CPLErrors cplErrorWithCode:1000 description:@"Server is unavailable for %.0fs (%@)", fmax(v12, 0.0), *(a1[4] + 120)];
    }
    v10 = ;
    v13 = *(a1[6] + 8);
    v11 = *(v13 + 40);
    *(v13 + 40) = v10;
  }

  else
  {
    result = [v2[18] count];
    *(*(a1[5] + 8) + 24) = result != 0;
    if (*(*(a1[5] + 8) + 24) != 1)
    {
      return result;
    }

    v15 = [*(a1[4] + 144) allObjects];
    v6 = [v15 componentsJoinedByString:{@", "}];
    v7 = [CPLErrors cplErrorWithCode:256 description:@"Synchronization is disabled because of: %@", v6];
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v11 = v15;
  }

  return MEMORY[0x1EEE66BB8](v10, v11);
}

- (BOOL)isMinglingEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__CPLEngineScheduler_isMinglingEnabled__block_invoke;
  v5[3] = &unk_1E861A850;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)enableMingling
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__CPLEngineScheduler_enableMingling__block_invoke;
  v6[3] = &unk_1E861B100;
  v6[4] = self;
  v6[5] = a2;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void *__36__CPLEngineScheduler_enableMingling__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 120))
  {
    [*(v2 + 120) timeIntervalSinceNow];
    v2 = *(a1 + 32);
    if (v3 < 0.0)
    {
      [v2 _disableRetryAfterLocked];
      v2 = *(a1 + 32);
    }
  }

  v4 = *(v2 + 200);
  if (!v4)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = NSStringFromSelector(*(a1 + 40));
        *buf = 138412290;
        v16 = v9;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_ERROR, "%@ has been called too many times", buf, 0xCu);
      }
    }

    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineScheduler.m"];
    v14 = NSStringFromSelector(*(a1 + 40));
    [v10 handleFailureInMethod:v11 object:v12 file:v13 lineNumber:1158 description:{@"%@ has been called too many times", v14}];

    abort();
  }

  *(v2 + 200) = v4 - 1;
  result = *(a1 + 32);
  if (!result[25])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEFAULT, "Reenabling mingling", buf, 2u);
      }

      result = *(a1 + 32);
    }

    result = [result _noteSyncSessionNeededFromState:10 proposedScheduleDate:0];
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)disableMingling
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__CPLEngineScheduler_disableMingling__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __37__CPLEngineScheduler_disableMingling__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 120))
  {
    [*(v2 + 120) timeIntervalSinceNow];
    v2 = *(a1 + 32);
    if (v3 < 0.0)
    {
      [v2 _disableRetryAfterLocked];
      v2 = *(a1 + 32);
    }
  }

  ++*(v2 + 200);
  v4 = *(a1 + 32);
  if (v4[25] == 1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Disabling mingling", v10, 2u);
      }

      v4 = *(a1 + 32);
    }

    v6 = v4[10];
    if (v6 >= 0xA && v6 != 14)
    {
      v8 = [v4 engineLibrary];
      v9 = [v8 syncManager];
      [v9 cancelCurrentSyncSession];
    }
  }
}

- (void)noteClientIsEndingSignificantWork
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__CPLEngineScheduler_noteClientIsEndingSignificantWork__block_invoke;
  v6[3] = &unk_1E861B100;
  v6[4] = self;
  v6[5] = a2;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __55__CPLEngineScheduler_noteClientIsEndingSignificantWork__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 192);
  if (!v3)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(*(a1 + 40));
        *buf = 138412290;
        v17 = v10;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "%@ has been called too many times", buf, 0xCu);
      }
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineScheduler.m"];
    v15 = NSStringFromSelector(*(a1 + 40));
    [v11 handleFailureInMethod:v12 object:v13 file:v14 lineNumber:1133 description:{@"%@ has been called too many times", v15}];

    abort();
  }

  *(v2 + 192) = v3 - 1;
  v4 = *(a1 + 32);
  if (!v4[24])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Informing transport of significant work ending", buf, 2u);
      }

      v4 = *(a1 + 32);
    }

    v6 = [v4 engineLibrary];
    v7 = [v6 transport];
    [v7 noteClientIsEndingSignificantWork];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)noteClientIsBeginningSignificantWork
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__CPLEngineScheduler_noteClientIsBeginningSignificantWork__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __58__CPLEngineScheduler_noteClientIsBeginningSignificantWork__block_invoke(uint64_t a1)
{
  ++*(*(a1 + 32) + 192);
  v2 = *(a1 + 32);
  if (v2[24] == 1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Informing transport of significant work beginning", v6, 2u);
      }

      v2 = *(a1 + 32);
    }

    v4 = [v2 engineLibrary];
    v5 = [v4 transport];
    [v5 noteClientIsBeginningSignificantWork];
  }
}

- (void)unblockEngineElementOnce:(id)a3
{
  v4 = a3;
  blockingLock = self->_blockingLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__CPLEngineScheduler_unblockEngineElementOnce___block_invoke;
  v7[3] = &unk_1E861B290;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(blockingLock, v7);
}

void __47__CPLEngineScheduler_unblockEngineElementOnce___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 176) addObject:*(a1 + 40)];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(*(a1 + 32) + 160) objectForKeyedSubscript:{*(a1 + 40), 0}];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) signal];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)waitForEngineElementToBeBlocked:(id)a3 timeout:(double)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v19 = [MEMORY[0x1E695DF00] date];
  if (a4 <= 0.0)
  {
    [MEMORY[0x1E695DF00] distantFuture];
  }

  else
  {
    [v19 dateByAddingTimeInterval:a4];
  }
  v7 = ;
  v20 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__7661;
  v33 = __Block_byref_object_dispose__7662;
  v34 = 0;
  *&v8 = 138412546;
  v18 = v8;
  do
  {
    [v7 timeIntervalSinceNow];
    if (v9 <= 0.0)
    {
      break;
    }

    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    blockingLock = self->_blockingLock;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__CPLEngineScheduler_waitForEngineElementToBeBlocked_timeout___block_invoke;
    block[3] = &unk_1E86209B8;
    block[4] = self;
    v22 = v6;
    v23 = &v25;
    v24 = &v29;
    dispatch_sync(blockingLock, block);
    v11 = *(v26 + 24);
    if (v11 == 1)
    {
      if (_CPLSilentLogging)
      {
        v20 = 1;
        goto LABEL_13;
      }

      v12 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        [v19 timeIntervalSinceNow];
        *buf = v18;
        v36 = v6;
        v37 = 2048;
        v38 = -v13;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEFAULT, "Engine is blocked on %@ - waited for %.2fs", buf, 0x16u);
      }

      v20 = 1;
    }

    else
    {
      v14 = v30[5];
      v12 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:10.0];
      v15 = [v12 earlierDate:v7];
      [v14 waitUntilDate:v15];
    }

LABEL_13:
    _Block_object_dispose(&v25, 8);
  }

  while ((v11 & 1) == 0);
  _Block_object_dispose(&v29, 8);

  v16 = *MEMORY[0x1E69E9840];
  return v20 & 1;
}

void __62__CPLEngineScheduler_waitForEngineElementToBeBlocked_timeout___block_invoke(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 160) objectForKeyedSubscript:a1[5]];
  if (v2 && (v3 = v2, v4 = [*(a1[4] + 176) containsObject:a1[5]], v3, (v4 & 1) == 0))
  {
    *(*(a1[6] + 8) + 24) = 1;
    if (!*(*(a1[7] + 8) + 40))
    {
LABEL_12:
      v10 = *MEMORY[0x1E69E9840];
      return;
    }

    [*(a1[4] + 168) removeObject:?];
    [*(*(a1[7] + 8) + 40) unlock];
    v7 = *(a1[7] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    if (*(*(a1[7] + 8) + 40))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v5 = __CPLSchedulerOSLogDomain_7603();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = a1[5];
          v16 = 138412290;
          v17 = v6;
          _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Still waiting for %@ to be blocked", &v16, 0xCu);
        }
      }

      goto LABEL_12;
    }

    v11 = objc_alloc_init(MEMORY[0x1E696AB30]);
    v12 = *(a1[7] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    [*(a1[4] + 168) addObject:*(*(a1[7] + 8) + 40)];
    v14 = *(*(a1[7] + 8) + 40);
    v15 = *MEMORY[0x1E69E9840];

    [v14 lock];
  }
}

- (void)willRunEngineElement:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__7661;
  v28 = __Block_byref_object_dispose__7662;
  v29 = 0;
  v6 = MEMORY[0x1E69E9820];
  *&v7 = 138412290;
  v15 = v7;
  do
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    blockingLock = self->_blockingLock;
    block[0] = v6;
    block[1] = 3221225472;
    block[2] = __43__CPLEngineScheduler_willRunEngineElement___block_invoke;
    block[3] = &unk_1E86209B8;
    v18 = &v20;
    block[4] = self;
    v9 = v4;
    v17 = v9;
    v19 = &v24;
    dispatch_sync(blockingLock, block);
    v10 = *(v21 + 24);
    if (v10)
    {
      if ((v5 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
      {
        v11 = __CPLSchedulerOSLogDomain_7603();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v15;
          v31 = v4;
          _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "Blocked engine for %@", buf, 0xCu);
        }
      }

      v12 = v25[5];
      v13 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:{3.0, v15}];
      [v12 waitUntilDate:v13];
      goto LABEL_9;
    }

    if (v5)
    {
      if (_CPLSilentLogging)
      {
        goto LABEL_10;
      }

      v13 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v15;
        v31 = v4;
        _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "Unblocked engine for %@", buf, 0xCu);
      }

LABEL_9:

LABEL_10:
      v5 = 1;
      goto LABEL_16;
    }

    v5 = 0;
LABEL_16:

    _Block_object_dispose(&v20, 8);
  }

  while ((v10 & 1) != 0);
  _Block_object_dispose(&v24, 8);

  v14 = *MEMORY[0x1E69E9840];
}

void __43__CPLEngineScheduler_willRunEngineElement___block_invoke(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  *(*(a1[6] + 8) + 24) = [*(a1[4] + 152) containsObject:a1[5]];
  if (*(*(a1[6] + 8) + 24) == 1 && [*(a1[4] + 176) containsObject:a1[5]])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = a1[5];
        *buf = 138412290;
        v27 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEFAULT, "Unblocking engine once for %@", buf, 0xCu);
      }
    }

    [*(a1[4] + 176) removeObject:a1[5]];
    *(*(a1[6] + 8) + 24) = 0;
  }

  v4 = *(*(a1[7] + 8) + 40);
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    if (!v4)
    {
      v9 = objc_alloc_init(MEMORY[0x1E696AB30]);
      v10 = *(a1[7] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      [*(*(a1[7] + 8) + 40) lock];
      v5 = [*(a1[4] + 160) objectForKeyedSubscript:a1[5]];
      if (!v5)
      {
        v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        [*(a1[4] + 160) setObject:v5 forKeyedSubscript:a1[5]];
      }

      [v5 addObject:*(*(a1[7] + 8) + 40)];
      if ([*(a1[4] + 168) count] && (_CPLSilentLogging & 1) == 0)
      {
        v12 = __CPLSchedulerOSLogDomain_7603();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [*(a1[4] + 168) count];
          v14 = a1[5];
          *buf = 134218242;
          v27 = v13;
          v28 = 2112;
          v29 = v14;
          _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEFAULT, "Informing %lu waiters that %@ is blocked", buf, 0x16u);
        }
      }

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v15 = *(a1[4] + 168);
      v16 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v22;
        do
        {
          v19 = 0;
          do
          {
            if (*v22 != v18)
            {
              objc_enumerationMutation(v15);
            }

            [*(*(&v21 + 1) + 8 * v19++) signal];
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v17);
      }

      goto LABEL_32;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = a1[5];
        *buf = 138412290;
        v27 = v6;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Still blocked on %@", buf, 0xCu);
      }

LABEL_32:
    }
  }

  else if (v4)
  {
    v5 = [*(a1[4] + 160) objectForKeyedSubscript:a1[5]];
    [v5 removeObject:*(*(a1[7] + 8) + 40)];
    if (![v5 count])
    {
      [*(a1[4] + 160) removeObjectForKey:a1[5]];
    }

    [*(*(a1[7] + 8) + 40) unlock];
    v7 = *(a1[7] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;

    goto LABEL_32;
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)unblockEngineElement:(id)a3
{
  v5 = a3;
  blockingLock = self->_blockingLock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CPLEngineScheduler_unblockEngineElement___block_invoke;
  block[3] = &unk_1E861B128;
  block[4] = self;
  v9 = v5;
  v10 = a2;
  v7 = v5;
  dispatch_async(blockingLock, block);
}

void __43__CPLEngineScheduler_unblockEngineElement___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 152) countForObject:*(a1 + 40)])
  {
    [*(*(a1 + 32) + 152) removeObject:*(a1 + 40)];
    if (![*(*(a1 + 32) + 152) countForObject:*(a1 + 40)])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v7 = __CPLSchedulerOSLogDomain_7603();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 40);
          *buf = 138412290;
          v20 = v8;
          _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Unblocking '%@'.", buf, 0xCu);
        }
      }

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v2 = [*(*(a1 + 32) + 160) objectForKeyedSubscript:{*(a1 + 40), 0}];
      v9 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v15;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v15 != v11)
            {
              objc_enumerationMutation(v2);
            }

            [*(*(&v14 + 1) + 8 * i) signal];
          }

          v10 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v10);
      }

      goto LABEL_20;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = *(a1 + 40);
        v4 = [*(*(a1 + 32) + 152) countForObject:v3];
        *buf = 138412546;
        v20 = v3;
        v21 = 2048;
        v22 = v4;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEFAULT, "Unblocking '%@' but it is still blocked by %lu clients.", buf, 0x16u);
      }

LABEL_20:
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLSchedulerOSLogDomain_7603();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(*(a1 + 48));
      v6 = *(a1 + 40);
      *buf = 138412546;
      v20 = v5;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_ERROR, "%@ has been called too many times with element '%@'", buf, 0x16u);
    }

    goto LABEL_20;
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)blockEngineElement:(id)a3
{
  v4 = a3;
  blockingLock = self->_blockingLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__CPLEngineScheduler_blockEngineElement___block_invoke;
  v7[3] = &unk_1E861B290;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(blockingLock, v7);
}

void __41__CPLEngineScheduler_blockEngineElement___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() validElements];
  v4 = [v3 containsObject:*(a1 + 40)];

  if (v4)
  {
    if ([*(*(a1 + 32) + 152) countForObject:*(a1 + 40)])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v5 = __CPLSchedulerOSLogDomain_7603();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 40);
          v7 = [*(*(a1 + 32) + 152) countForObject:v6];
          *v15 = 138412546;
          *&v15[4] = v6;
          *&v15[12] = 2048;
          *&v15[14] = v7 + 1;
          v8 = "Blocking '%@' (%lu clients).";
          v9 = v5;
          v10 = 22;
LABEL_13:
          _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, v8, v15, v10);
          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 40);
        *v15 = 138412290;
        *&v15[4] = v13;
        v8 = "Blocking '%@'.";
        v9 = v5;
        v10 = 12;
        goto LABEL_13;
      }

LABEL_14:
    }

    [*(*(a1 + 32) + 152) addObject:{*(a1 + 40), *v15, *&v15[16], v16}];
    goto LABEL_16;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = __CPLSchedulerOSLogDomain_7603();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      *v15 = 138412290;
      *&v15[4] = v12;
      _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "'%@' is an invalid element to block", v15, 0xCu);
    }
  }

LABEL_16:
  v14 = *MEMORY[0x1E69E9840];
}

- (void)blockAllSyncSessionsWithReason:(id)a3 onlyIfBlocked:(BOOL)a4 block:(id)a5
{
  v8 = a3;
  v9 = a5;
  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__CPLEngineScheduler_blockAllSyncSessionsWithReason_onlyIfBlocked_block___block_invoke;
  v16[3] = &unk_1E861ADE8;
  v19 = a4;
  v17 = v8;
  v18 = v9;
  v16[4] = self;
  v11 = v16;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v21 = v11;
  v12 = queue;
  v13 = v8;
  v14 = v9;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v12, v15);
}

void __73__CPLEngineScheduler_blockAllSyncSessionsWithReason_onlyIfBlocked_block___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1 && (v2 = *(*(a1 + 32) + 104)) != 0 && ([v2 shouldDefer] & 1) == 0 && objc_msgSend(*(*(a1 + 32) + 104), "activityState") == 2)
  {
    v3 = *(a1 + 48);
    v9 = [CPLErrors cplErrorWithCode:10001 description:@"%@ is already actively running", *(*(a1 + 32) + 104)];
    (*(v3 + 16))(v3, 0, v9);
  }

  else
  {
    [*(a1 + 32) _disableSynchronizationWithReasonLocked:*(a1 + 40)];
    v4 = [*(a1 + 32) engineLibrary];
    v5 = [v4 syncManager];
    v6 = *(a1 + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __73__CPLEngineScheduler_blockAllSyncSessionsWithReason_onlyIfBlocked_block___block_invoke_2;
    v10[3] = &unk_1E861B3D0;
    v7 = v6;
    v8 = *(a1 + 32);
    v11 = v7;
    v12 = v8;
    v13 = *(a1 + 48);
    [v5 cancelAndBlockAllSyncSessionsWithReason:v7 block:v10];
  }
}

void __73__CPLEngineScheduler_blockAllSyncSessionsWithReason_onlyIfBlocked_block___block_invoke_2(void *a1)
{
  v2 = [[CPLEngineSchedulerBlocker alloc] initWithReason:a1[4] scheduler:a1[5]];
  (*(a1[6] + 16))();
}

- (void)enableSynchronizationWithReason:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__CPLEngineScheduler_enableSynchronizationWithReason___block_invoke;
  v10[3] = &unk_1E861B290;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

uint64_t __54__CPLEngineScheduler_enableSynchronizationWithReason___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[15])
  {
    [v2[15] timeIntervalSinceNow];
    v2 = *(a1 + 32);
    if (v3 < 0.0)
    {
      [v2 _disableRetryAfterLocked];
      v2 = *(a1 + 32);
    }
  }

  v4 = *(a1 + 40);

  return [v2 _enableSynchronizationWithReasonLocked:v4];
}

- (void)_enableSynchronizationWithReasonLocked:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![(NSCountedSet *)self->_disablingReasons countForObject:v5])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = NSStringFromSelector(a2);
        *buf = 138412546;
        v19 = v14;
        v20 = 2112;
        v21 = v5;
        _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_ERROR, "%@ has been called too many times with reason '%@'", buf, 0x16u);
      }
    }

    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineScheduler.m"];
    v17 = NSStringFromSelector(a2);
    [v15 handleFailureInMethod:a2 object:self file:v16 lineNumber:913 description:{@"%@ has been called too many times with reason '%@'", v17, v5}];

    abort();
  }

  [(NSCountedSet *)self->_disablingReasons removeObject:v5];
  if ([(NSCountedSet *)self->_disablingReasons count])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(NSCountedSet *)self->_disablingReasons allObjects];
        v8 = [v7 componentsJoinedByString:{@", "}];
        *buf = 138543618;
        v19 = v5;
        v20 = 2114;
        v21 = v8;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEFAULT, "Reenabling synchonization for reason '%{public}@'. Synchronization is still disabled for reasons: %{public}@", buf, 0x16u);
      }
    }
  }

  else if (self->_requiredFirstState > 0xD)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v19 = v5;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "Reenabling synchonization for reason '%{public}@'. Synchronization is now fully enabled", buf, 0xCu);
      }
    }
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [CPLEngineSyncManager shortDescriptionForState:self->_requiredFirstState];
        *buf = 138543618;
        v19 = v5;
        v20 = 2114;
        v21 = v10;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Reenabling synchonization for reason '%{public}@'. Synchronization is now fully enabled and should restart soon from at least %{public}@", buf, 0x16u);
      }
    }

    self->_intervalForRetry = 0.100000001;
    if (!self->_currentSession)
    {
      [(CPLEngineScheduler *)self _scheduleNextSyncSession];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)disableSynchronizationIfBlockedWithReason:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__CPLEngineScheduler_disableSynchronizationIfBlockedWithReason_completionHandler___block_invoke;
  v14[3] = &unk_1E861ABE0;
  v15 = v6;
  v16 = v7;
  v14[4] = self;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = v6;
  v12 = v7;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __82__CPLEngineScheduler_disableSynchronizationIfBlockedWithReason_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2[13] && (v3 = [v2[13] shouldDefer], v2 = a1[4], (v3 & 1) == 0) && (v4 = objc_msgSend(v2[13], "activityState"), v2 = a1[4], v4 == 2))
  {
    v5 = a1[6];
    v8 = [CPLErrors cplErrorWithCode:10001 description:@"%@ is already actively running", v2[13]];
    (*(v5 + 16))(v5, v8);
  }

  else
  {
    if (v2[15])
    {
      [v2[15] timeIntervalSinceNow];
      v2 = a1[4];
      if (v6 < 0.0)
      {
        [v2 _disableRetryAfterLocked];
        v2 = a1[4];
      }
    }

    [v2 _disableSynchronizationWithReasonLocked:a1[5]];
    v7 = *(a1[6] + 16);

    v7();
  }
}

- (void)disableSynchronizationWithReason:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__CPLEngineScheduler_disableSynchronizationWithReason___block_invoke;
  v10[3] = &unk_1E861B290;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

uint64_t __55__CPLEngineScheduler_disableSynchronizationWithReason___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[15])
  {
    [v2[15] timeIntervalSinceNow];
    v2 = *(a1 + 32);
    if (v3 < 0.0)
    {
      [v2 _disableRetryAfterLocked];
      v2 = *(a1 + 32);
    }
  }

  v4 = *(a1 + 40);

  return [v2 _disableSynchronizationWithReasonLocked:v4];
}

- (void)_disableSynchronizationWithReasonLocked:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLSchedulerOSLogDomain_7603();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v4;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Disabling synchronization for reason '%{public}@'", &v9, 0xCu);
    }
  }

  [(NSCountedSet *)self->_disablingReasons addObject:v4];
  if (self->_nextSession)
  {
    [(CPLEngineScheduler *)self _unscheduleNextSyncSession];
  }

  v6 = [(CPLEngineScheduler *)self engineLibrary];
  v7 = [v6 syncManager];
  [v7 cancelCurrentSyncSession];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_disableSynchronizationBecauseContainerHasBeenWipedLocked
{
  if (([(NSCountedSet *)self->_disablingReasons containsObject:@"container has been wiped"]& 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Disabling synchronization because container has been wiped - engine and transport must be wiped", v4, 2u);
      }
    }

    [(CPLEngineScheduler *)self _disableSynchronizationWithReasonLocked:@"container has been wiped"];
  }
}

- (void)noteClientIsInBackground
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__CPLEngineScheduler_noteClientIsInBackground__block_invoke;
  v6[3] = &unk_1E861B100;
  v6[4] = self;
  v6[5] = a2;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

uint64_t __46__CPLEngineScheduler_noteClientIsInBackground__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  result = *(a1 + 32);
  if (*(result + 120))
  {
    [*(result + 120) timeIntervalSinceNow];
    result = *(a1 + 32);
    if (v3 < 0.0)
    {
      [result _disableRetryAfterLocked];
      result = *(a1 + 32);
    }
  }

  v4 = *(result + 136);
  if (!v4)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v20 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = NSStringFromSelector(*(a1 + 40));
        *buf = 138412290;
        v28 = v21;
        _os_log_impl(&dword_1DC05A000, v20, OS_LOG_TYPE_ERROR, "%@ has been called too many times", buf, 0xCu);
      }
    }

    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = *(a1 + 32);
    v23 = *(a1 + 40);
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineScheduler.m"];
    v26 = NSStringFromSelector(*(a1 + 40));
    [v22 handleFailureInMethod:v23 object:v24 file:v25 lineNumber:838 description:{@"%@ has been called too many times", v26}];

    abort();
  }

  *(result + 136) = v4 - 1;
  v5 = *(a1 + 32);
  if (!*(v5 + 136))
  {
    WeakRetained = objc_loadWeakRetained((v5 + 272));
    v7 = [WeakRetained syncManager];
    [v7 setSyncSessionShouldBeForeground:0];

    v8 = objc_loadWeakRetained((*(a1 + 32) + 272));
    v9 = [v8 owner];
    v10 = objc_loadWeakRetained((*(a1 + 32) + 272));
    [v9 engineLibrary:v10 noteClientIsInForeground:0];

    v11 = objc_loadWeakRetained((*(a1 + 32) + 272));
    v12 = [v11 transport];
    [v12 noteClientIsInBackground];

    [CPLSyncIndicator setForeground:0];
    *(*(a1 + 32) + 56) = 0x3FB99999A0000000;
    v13 = *(a1 + 32);
    if (!v13[6] && v13[2] <= 0xDuLL && v13[10] == 14)
    {
      v14 = [MEMORY[0x1E695DF00] date];
      v15 = v14;
      if (*(*(a1 + 32) + 208))
      {
        [v14 timeIntervalSinceDate:?];
        if (v16 > 600.0)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v17 = __CPLSchedulerOSLogDomain_7603();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              v18 = [CPLEngineSyncManager shortDescriptionForState:*(*(a1 + 32) + 16)];
              *buf = 138412290;
              v28 = v18;
              _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_DEBUG, "All clients are now in background and we need a sync session, scheduling one now from at least %@", buf, 0xCu);
            }
          }

          objc_storeStrong((*(a1 + 32) + 208), v15);
          [*(a1 + 32) _scheduleNextSyncSession];
        }
      }

      v13 = *(a1 + 32);
    }

    result = [v13 _updateOverridingForeground];
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)noteClientIsInForegroundQuietly:(BOOL)a3
{
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__CPLEngineScheduler_noteClientIsInForegroundQuietly___block_invoke;
  v7[3] = &unk_1E861F7F0;
  v7[4] = self;
  v8 = a3;
  v4 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v10 = v4;
  v5 = queue;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v5, v6);
}

void __54__CPLEngineScheduler_noteClientIsInForegroundQuietly___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 120))
  {
    [*(v2 + 120) timeIntervalSinceNow];
    v2 = *(a1 + 32);
    if (v3 < 0.0)
    {
      [v2 _disableRetryAfterLocked];
      v2 = *(a1 + 32);
    }
  }

  ++*(v2 + 136);
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = *(a1 + 32);
  if (*(v5 + 136) == 1)
  {
    WeakRetained = objc_loadWeakRetained((v5 + 272));
    v7 = [WeakRetained syncManager];
    [v7 setSyncSessionShouldBeForeground:1];

    v8 = objc_loadWeakRetained((*(a1 + 32) + 272));
    v9 = [v8 owner];
    v10 = objc_loadWeakRetained((*(a1 + 32) + 272));
    [v9 engineLibrary:v10 noteClientIsInForeground:1];

    v11 = objc_loadWeakRetained((*(a1 + 32) + 272));
    v12 = [v11 transport];
    [v12 noteClientIsInForeground];

    v13 = objc_loadWeakRetained((*(a1 + 32) + 272));
    v14 = [v13 systemMonitor];

    if ([v14 canBoostOperations])
    {
      v15 = objc_loadWeakRetained((*(a1 + 32) + 272));
      v16 = [v15 systemMonitor];
      v17 = [v16 canBoostBackgroundOperations];

      v18 = objc_loadWeakRetained((*(a1 + 32) + 272));
      v19 = [v18 transport];
      [v19 cancelBlockedTasksIncludingBackground:v17];
    }

    [CPLSyncIndicator setForeground:1];

    v5 = *(a1 + 32);
  }

  v20 = objc_loadWeakRetained((v5 + 272));
  v21 = [v20 supervisor];

  if ((*(a1 + 40) & 1) == 0 && v21 && ([v21 schedulerShouldStartSyncSessionMovingToForeground:*(a1 + 32) currentSession:*(*(a1 + 32) + 104)] & 1) == 0)
  {
    if (_CPLSilentLogging)
    {
      goto LABEL_25;
    }

    v22 = __CPLSchedulerOSLogDomain_7603();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 0;
      v25 = "Some client is in foreground but supervisor asked not to trigger a sync session";
      goto LABEL_22;
    }

LABEL_24:

    goto LABEL_25;
  }

  if (![*(*(a1 + 32) + 144) count])
  {
    if (*(a1 + 40))
    {
      if (_CPLSilentLogging)
      {
        goto LABEL_25;
      }

      v22 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *v37 = 0;
        v25 = "Some client is in foreground but we have been asked not to trigger a sync session";
LABEL_22:
        v26 = v22;
        v27 = 2;
LABEL_23:
        _os_log_impl(&dword_1DC05A000, v26, OS_LOG_TYPE_DEFAULT, v25, v37, v27);
        goto LABEL_24;
      }

      goto LABEL_24;
    }

    *(*(a1 + 32) + 227) = [*(a1 + 32) _justInCaseSessionIsPossible];
    *(*(a1 + 32) + 56) = 0x3FB99999A0000000;
    v29 = *(a1 + 32);
    if (*(v29 + 16) <= 0xDuLL && *(v29 + 80) <= 0xDuLL)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v30 = __CPLSchedulerOSLogDomain_7603();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [CPLEngineSyncManager shortDescriptionForState:*(*(a1 + 32) + 16)];
          *v37 = 138543362;
          *&v37[4] = v31;
          _os_log_impl(&dword_1DC05A000, v30, OS_LOG_TYPE_DEFAULT, "Some client is in foreground, current required state is %{public}@", v37, 0xCu);
        }

        v29 = *(a1 + 32);
      }

      [v29 _disableFastRelaunchProtection];
      goto LABEL_25;
    }

    if (*(v29 + 208))
    {
      [v4 timeIntervalSinceDate:?];
      if (v32 <= 600.0)
      {
        if (_CPLSilentLogging)
        {
          goto LABEL_25;
        }

        v22 = __CPLSchedulerOSLogDomain_7603();
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_24;
        }

        [v4 timeIntervalSinceDate:*(*(a1 + 32) + 208)];
        *v37 = 134217984;
        *&v37[4] = v35;
        v25 = "Some client is in foreground but we already did a sync session for foreground clients %.0fs ago";
LABEL_43:
        v26 = v22;
        v27 = 12;
        goto LABEL_23;
      }

      v29 = *(a1 + 32);
    }

    objc_storeStrong((v29 + 208), v4);
    v33 = *(a1 + 32);
    if (!v33[13])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v36 = __CPLSchedulerOSLogDomain_7603();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *v37 = 0;
          _os_log_impl(&dword_1DC05A000, v36, OS_LOG_TYPE_DEFAULT, "Some client is in foreground. Scheduling a sync session soon", v37, 2u);
        }

        v33 = *(a1 + 32);
      }

      [v33 _noteSyncSessionNeededFromState:2 proposedScheduleDate:0];
      goto LABEL_25;
    }

    if (_CPLSilentLogging)
    {
      goto LABEL_25;
    }

    v22 = __CPLSchedulerOSLogDomain_7603();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v34 = *(*(a1 + 32) + 104);
    *v37 = 138543362;
    *&v37[4] = v34;
    v25 = "Some client is in foreground but we are already in %{public}@";
    goto LABEL_43;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v22 = __CPLSchedulerOSLogDomain_7603();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [*(*(a1 + 32) + 144) allObjects];
      v24 = [v23 componentsJoinedByString:{@", "}];
      *v37 = 138543362;
      *&v37[4] = v24;
      _os_log_impl(&dword_1DC05A000, v22, OS_LOG_TYPE_DEFAULT, "Some client is in foreground but synchronization is disabled because of %{public}@", v37, 0xCu);
    }

    goto LABEL_24;
  }

LABEL_25:
  [*(a1 + 32) _updateOverridingForeground];

  v28 = *MEMORY[0x1E69E9840];
}

- (void)noteResourceDownloadQueueIsFull
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__CPLEngineScheduler_noteResourceDownloadQueueIsFull__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

uint64_t __53__CPLEngineScheduler_noteResourceDownloadQueueIsFull__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  if (v2)
  {
    [v2 timeIntervalSinceNow];
    if (v3 < 0.0)
    {
      [*(a1 + 32) _disableRetryAfterLocked];
    }
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLSchedulerOSLogDomain_7603();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "Notified that Resource Download queue is full", v6, 2u);
    }
  }

  return [*(a1 + 32) _noteSyncSessionNeededFromState:13 proposedScheduleDate:0];
}

- (void)noteServerHasChanges
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__CPLEngineScheduler_noteServerHasChanges__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __42__CPLEngineScheduler_noteServerHasChanges__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _noteSignificantEvent];
  v2 = *(a1 + 32);
  if (*(v2 + 80) <= 0xDuLL && ([v2 platformObject], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "shouldCoalesceServerChangesNotification"), v3, v2 = *(a1 + 32), v4))
  {
    *(v2 + 96) = 1;
    v5 = dispatch_time(0, 2000000000);
    v6 = *(a1 + 32);
    v7 = *(v6 + 72);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__CPLEngineScheduler_noteServerHasChanges__block_invoke_2;
    block[3] = &unk_1E861A940;
    block[4] = v6;
    dispatch_after(v5, v7, block);
  }

  else
  {

    [v2 _reallyNoteServerHasChangesLocked];
  }
}

_BYTE *__42__CPLEngineScheduler_noteServerHasChanges__block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[96] == 1)
  {
    return [result _reallyNoteServerHasChangesLocked];
  }

  return result;
}

- (void)_reallyNoteServerHasChangesLocked
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(CPLEngineScheduler *)self engineLibrary];
  v4 = [v3 store];

  if ([v4 shouldSyncScopeList])
  {
    unavailabilityLimitDate = self->_unavailabilityLimitDate;
    if (unavailabilityLimitDate)
    {
      [(NSDate *)unavailabilityLimitDate timeIntervalSinceNow];
      if (v6 < 0.0)
      {
        [(CPLEngineScheduler *)self _disableRetryAfterLocked];
      }
    }

    [(CPLEngineScheduler *)self _noteSyncSessionNeededFromStateDontRewindImmediately:4];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Notified that Server has changes to be pulled", buf, 2u);
      }
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__CPLEngineScheduler__reallyNoteServerHasChangesLocked__block_invoke;
    v9[3] = &unk_1E86205E0;
    v10 = v4;
    v8 = [v10 performWriteTransactionWithBlock:v9 completionHandler:&__block_literal_global_7727];
  }

  self->_shouldNoteServerHasChanges = 0;
}

void __55__CPLEngineScheduler__reallyNoteServerHasChangesLocked__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__CPLEngineScheduler__reallyNoteServerHasChangesLocked__block_invoke_2;
  v3[3] = &unk_1E8620478;
  v4 = *(a1 + 32);
  [a2 do:v3];
}

uint64_t __55__CPLEngineScheduler__reallyNoteServerHasChangesLocked__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) scopes];
  v4 = [v3 setAllScopesHasChangesToPullFromTransportWithError:a2];

  return v4;
}

- (void)_noteSyncSessionNeededFromStateDontRewindImmediately:(unint64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  currentSyncState = self->_currentSyncState;
  if (currentSyncState <= a3 || currentSyncState > 0xB)
  {
    v7 = *MEMORY[0x1E69E9840];

    [CPLEngineScheduler _noteSyncSessionNeededFromState:"_noteSyncSessionNeededFromState:proposedScheduleDate:" proposedScheduleDate:?];
  }

  else
  {
    if (self->_requiredFirstState > a3 && self->_pendingRequiredFirstState > a3)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v8 = __CPLSchedulerOSLogDomain_7603();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [CPLEngineSyncManager shortDescriptionForState:a3];
          v10 = [CPLEngineSyncManager shortDescriptionForState:self->_currentSyncState];
          v11 = [CPLEngineSyncManager shortDescriptionForState:11];
          v13 = 138543874;
          v14 = v9;
          v15 = 2114;
          v16 = v10;
          v17 = 2114;
          v18 = v11;
          _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "Notified that we need to rewind to %{public}@ but we will wait for %{public}@...%{public}@ to be finished", &v13, 0x20u);
        }
      }

      self->_pendingRequiredFirstState = a3;
    }

    v12 = *MEMORY[0x1E69E9840];
  }
}

- (void)noteClientIsNotInSyncWithClientCache
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__CPLEngineScheduler_noteClientIsNotInSyncWithClientCache__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void *__58__CPLEngineScheduler_noteClientIsNotInSyncWithClientCache__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  result = *(a1 + 32);
  if (result[10] <= 0xDuLL)
  {
    if (_CPLSilentLogging)
    {
      goto LABEL_11;
    }

    v3 = __CPLSchedulerOSLogDomain_7603();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v4 = *(*(a1 + 32) + 104);
    v9 = 138543362;
    v10 = v4;
    v5 = "Stopping %{public}@ until client is in sync with the engine";
    v6 = v3;
    v7 = 12;
    goto LABEL_9;
  }

  if (result[2] <= 0xDuLL && (_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLSchedulerOSLogDomain_7603();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
LABEL_10:

      result = *(a1 + 32);
      goto LABEL_11;
    }

    LOWORD(v9) = 0;
    v5 = "Unscheduling sync session until client is in sync with the engine";
    v6 = v3;
    v7 = 2;
LABEL_9:
    _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEFAULT, v5, &v9, v7);
    goto LABEL_10;
  }

LABEL_11:
  if (result[2] >= 7uLL)
  {
    result = [result _unscheduleNextSyncSession];
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)noteClientIsInSyncWithClientCache
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__CPLEngineScheduler_noteClientIsInSyncWithClientCache__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

uint64_t __55__CPLEngineScheduler_noteClientIsInSyncWithClientCache__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 120))
  {
    [*(v2 + 120) timeIntervalSinceNow];
    v2 = *(a1 + 32);
    if (v3 < 0.0)
    {
      [v2 _disableRetryAfterLocked];
      v2 = *(a1 + 32);
    }
  }

  *(v2 + 56) = 0x3FB99999A0000000;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLSchedulerOSLogDomain_7603();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "Notified that we need to perform an initial sync now that the client is in sync with the engine", v6, 2u);
    }
  }

  return [*(a1 + 32) _noteSyncSessionNeededFromState:8 proposedScheduleDate:0];
}

- (void)noteClientNeedsToPull
{
  v3 = [(CPLEngineScheduler *)self engineLibrary];
  v4 = [v3 store];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__CPLEngineScheduler_noteClientNeedsToPull__block_invoke;
  v8[3] = &unk_1E86200D0;
  v9 = v4;
  v10 = v3;
  v11 = self;
  v5 = v3;
  v6 = v4;
  v7 = [v6 performReadTransactionWithBlock:v8];
}

void __43__CPLEngineScheduler_noteClientNeedsToPull__block_invoke(id *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] scopes];
  if ([v2 hasStagedSyncAnchors])
  {

LABEL_7:
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [a1[5] store];
        v8 = [v7 pullQueue];
        v10 = 134217984;
        v11 = [v8 countOfQueuedBatches];
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEFAULT, "There is %lu batches in the pull queue and staged sync anchors. Notifying who might be interested", &v10, 0xCu);
      }
    }

    [a1[5] notifyAttachedObjectsPullQueueIsFull];
    v5 = [a1[6] platformObject];
    [v5 noteClientNeedsToPull];
LABEL_12:

    goto LABEL_13;
  }

  v3 = [a1[4] pullQueue];
  v4 = [v3 isEmpty];

  if ((v4 & 1) == 0)
  {
    goto LABEL_7;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLSchedulerOSLogDomain_7603();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "There is no changes in the pull queue and no staged sync anchors", &v10, 2u);
    }

    goto LABEL_12;
  }

LABEL_13:
  v9 = *MEMORY[0x1E69E9840];
}

- (void)noteScopeNeedsToUploadComputeState
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__CPLEngineScheduler_noteScopeNeedsToUploadComputeState__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

uint64_t __56__CPLEngineScheduler_noteScopeNeedsToUploadComputeState__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[15])
  {
    [v2[15] timeIntervalSinceNow];
    v2 = *(a1 + 32);
    if (v3 < 0.0)
    {
      [v2 _disableRetryAfterLocked];
      v2 = *(a1 + 32);
    }
  }

  return [v2 _noteSyncSessionNeededFromState:12 proposedScheduleDate:0];
}

- (void)noteScopeNeedsToPullFromTransport
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__CPLEngineScheduler_noteScopeNeedsToPullFromTransport__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __55__CPLEngineScheduler_noteScopeNeedsToPullFromTransport__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[15])
  {
    [v2[15] timeIntervalSinceNow];
    v2 = *(a1 + 32);
    if (v3 < 0.0)
    {
      [v2 _disableRetryAfterLocked];
      v2 = *(a1 + 32);
    }
  }

  [v2 _noteSyncSessionNeededFromState:10 proposedScheduleDate:0];
  v4 = [*(a1 + 32) platformObject];
  [v4 noteServerHasChanges];
}

- (void)noteScopeNeedsToPushToTransportWithChangeTypes:(unint64_t)a3
{
  v3 = 122;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__CPLEngineScheduler_noteScopeNeedsToPushToTransportWithChangeTypes___block_invoke;
  v8[3] = &unk_1E861B100;
  if (a3)
  {
    v3 = a3;
  }

  v8[4] = self;
  v8[5] = v3;
  v5 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v10 = v5;
  v6 = queue;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v6, v7);
}

void __69__CPLEngineScheduler_noteScopeNeedsToPushToTransportWithChangeTypes___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  if (v2)
  {
    [v2 timeIntervalSinceNow];
    if (v3 < 0.0)
    {
      [*(a1 + 32) _disableRetryAfterLocked];
    }
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLSchedulerOSLogDomain_7603();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "Client has put some changes in push repository", v7, 2u);
    }
  }

  [*(a1 + 32) _disableFastRelaunchProtection];
  [*(a1 + 32) _noteSignificantEvent];
  v5 = 60.0;
  if (*(a1 + 40) != 32)
  {
    v5 = 0.0;
  }

  [*(a1 + 32) _noteSyncSessionNeededFromState:8 minimumDelay:v5];
  v6 = [*(a1 + 32) platformObject];
  [v6 noteScopeNeedsToPushToTransport];
}

- (void)noteScopeNeedsToPushHighPriorityToTransport
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__CPLEngineScheduler_noteScopeNeedsToPushHighPriorityToTransport__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __65__CPLEngineScheduler_noteScopeNeedsToPushHighPriorityToTransport__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  if (v2)
  {
    [v2 timeIntervalSinceNow];
    if (v3 < 0.0)
    {
      [*(a1 + 32) _disableRetryAfterLocked];
    }
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLSchedulerOSLogDomain_7603();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "Client has put some high priority changes in push repository", v6, 2u);
    }
  }

  [*(a1 + 32) _disableFastRelaunchProtection];
  [*(a1 + 32) _noteSignificantEvent];
  [*(a1 + 32) _noteSyncSessionNeededFromState:7 proposedScheduleDate:0];
  v5 = [*(a1 + 32) platformObject];
  [v5 noteScopeNeedsToPushToTransport];
}

- (void)_disableFastRelaunchProtection
{
  if (self->_protectAgainstFastRelaunch)
  {
    self->_protectAgainstFastRelaunch = 0;
  }

  if (self->_delayedFirstSyncBecauseOfRapidLaunch)
  {
    self->_delayedFirstSyncBecauseOfRapidLaunch = 0;
    self->_intervalForRetry = 5.0;
    nextSession = self->_nextSession;
    if (nextSession && [(CPLSyncSession *)nextSession isInMoreThanTimeInverval:5.0])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v4 = __CPLSchedulerOSLogDomain_7603();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "Rescheduling sync session soon after disabling fast relaunch protection", buf, 2u);
        }
      }

      [(CPLEngineScheduler *)self _reallyUnscheduleSession];
      [(CPLEngineScheduler *)self _scheduleNextSyncSession];
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Disabling fast relaunch protection", v6, 2u);
      }
    }
  }
}

- (void)noteScopeNeedsUpdate
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__CPLEngineScheduler_noteScopeNeedsUpdate__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

uint64_t __42__CPLEngineScheduler_noteScopeNeedsUpdate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[15])
  {
    [v2[15] timeIntervalSinceNow];
    v2 = *(a1 + 32);
    if (v3 < 0.0)
    {
      [v2 _disableRetryAfterLocked];
      v2 = *(a1 + 32);
    }
  }

  return [v2 _noteSyncSessionNeededFromState:5 proposedScheduleDate:0];
}

- (void)noteScopeListNeedsUpdate
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__CPLEngineScheduler_noteScopeListNeedsUpdate__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

uint64_t __46__CPLEngineScheduler_noteScopeListNeedsUpdate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[15])
  {
    [v2[15] timeIntervalSinceNow];
    v2 = *(a1 + 32);
    if (v3 < 0.0)
    {
      [v2 _disableRetryAfterLocked];
      v2 = *(a1 + 32);
    }
  }

  return [v2 _noteSyncSessionNeededFromState:4 proposedScheduleDate:0];
}

- (void)noteTransportNeedsUpdate
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__CPLEngineScheduler_noteTransportNeedsUpdate__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

uint64_t __46__CPLEngineScheduler_noteTransportNeedsUpdate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[15])
  {
    [v2[15] timeIntervalSinceNow];
    v2 = *(a1 + 32);
    if (v3 < 0.0)
    {
      [v2 _disableRetryAfterLocked];
      v2 = *(a1 + 32);
    }
  }

  [v2 _noteSignificantEvent];
  v4 = *(a1 + 32);

  return [v4 _noteSyncSessionNeededFromState:3 proposedScheduleDate:0];
}

- (void)noteStoreNeedsCleanup
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__CPLEngineScheduler_noteStoreNeedsCleanup__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

uint64_t __43__CPLEngineScheduler_noteStoreNeedsCleanup__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _disableRetryAfterLocked];
  v2 = *(a1 + 32);
  if (*(v2 + 16) >= 3uLL && (_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLSchedulerOSLogDomain_7603();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Will need to cleanup database before next sync session", v5, 2u);
    }

    v2 = *(a1 + 32);
  }

  *(v2 + 56) = 0x3FB99999A0000000;
  return [*(a1 + 32) _noteSyncSessionNeededFromState:2 proposedScheduleDate:0];
}

- (void)noteStoreNeedsToUpdateDisabledFeatures
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__CPLEngineScheduler_noteStoreNeedsToUpdateDisabledFeatures__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

uint64_t __60__CPLEngineScheduler_noteStoreNeedsToUpdateDisabledFeatures__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _disableRetryAfterLocked];
  v2 = *(a1 + 32);
  if (v2[2] >= 2uLL && (_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLSchedulerOSLogDomain_7603();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Will need to update disabled features before next sync session", v7, 2u);
    }

    v2 = *(a1 + 32);
  }

  v4 = [v2 engineLibrary];
  v5 = [v4 syncManager];
  [v5 requestDisabledFeaturesUpdate];

  *(*(a1 + 32) + 56) = 0x3FB99999A0000000;
  return [*(a1 + 32) _noteSyncSessionNeededFromState:1 proposedScheduleDate:0];
}

- (void)noteStoreNeedsSetup
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__CPLEngineScheduler_noteStoreNeedsSetup__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

uint64_t __41__CPLEngineScheduler_noteStoreNeedsSetup__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _disableRetryAfterLocked];
  v2 = *(a1 + 32);
  if (v2[2] >= 2uLL && (_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLSchedulerOSLogDomain_7603();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Will need to setup engine before next sync session", v7, 2u);
    }

    v2 = *(a1 + 32);
  }

  v4 = [v2 engineLibrary];
  v5 = [v4 syncManager];
  [v5 discardTransportUserIdentifier];

  *(*(a1 + 32) + 56) = 0x3FB99999A0000000;
  return [*(a1 + 32) _noteSyncSessionNeededFromState:1 proposedScheduleDate:0];
}

- (void)kickOffSyncSession
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__CPLEngineScheduler_kickOffSyncSession__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

uint64_t __40__CPLEngineScheduler_kickOffSyncSession__block_invoke(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLSchedulerOSLogDomain_7603();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEFAULT, "Forcing a sync session right now", v11, 2u);
    }
  }

  [*(a1 + 32) _resetFirstSynchronizationMarker];
  *(*(a1 + 32) + 226) = 0;
  *(*(a1 + 32) + 56) = 0x3FB99999A0000000;
  v3 = *(a1 + 32);
  v4 = *(v3 + 120);
  *(v3 + 120) = 0;

  v5 = *(a1 + 32);
  v6 = *(v5 + 128);
  *(v5 + 128) = 0;

  v7 = *(a1 + 32);
  v8 = *(v7 + 232);
  *(v7 + 232) = 0;

  v9 = *(a1 + 32);
  if (*(v9 + 48))
  {
    result = [*(v9 + 48) isInMoreThanTimeInverval:*(v9 + 56)];
    if (!result)
    {
      return result;
    }

    v9 = *(a1 + 32);
  }

  [v9 _unscheduleNextSyncSession];
  return [*(a1 + 32) _noteSyncSessionNeededFromState:1 proposedScheduleDate:0];
}

- (void)forceStartSyncSession:(id)a3 withMinimalPhase:(unint64_t)a4
{
  v6 = a3;
  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__CPLEngineScheduler_forceStartSyncSession_withMinimalPhase___block_invoke;
  v12[3] = &unk_1E861B128;
  v12[4] = self;
  v13 = v6;
  v14 = a4;
  v8 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v16 = v8;
  v9 = queue;
  v10 = v6;
  v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v9, v11);
}

uint64_t __61__CPLEngineScheduler_forceStartSyncSession_withMinimalPhase___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _resetFirstSynchronizationMarker];
  *(*(a1 + 32) + 226) = 0;
  *(*(a1 + 32) + 56) = 0x3FB99999A0000000;
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  *(v2 + 120) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 128);
  *(v4 + 128) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 232);
  *(v6 + 232) = 0;

  [*(a1 + 32) _unscheduleNextSyncSession];
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  v8 = *(a1 + 32);
  v9 = *(v8 + 216);
  *(v8 + 216) = 0;

  v10 = *(a1 + 32);
  v11 = *(v10 + 16);
  v12 = *(a1 + 48);
  if (v11 > v12)
  {
    *(v10 + 16) = v12;
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
  }

  if (v11 <= 0xB)
  {
    *(v10 + 40) = 1;
    v10 = *(a1 + 32);
  }

  v13 = *(a1 + 40);

  return [v10 _startRequiredSyncSession:v13];
}

- (void)startRequiredSyncSessionNow:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__CPLEngineScheduler_startRequiredSyncSessionNow___block_invoke;
  v10[3] = &unk_1E861B290;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_7513;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __50__CPLEngineScheduler_startRequiredSyncSessionNow___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 112) != 1)
  {
LABEL_14:
    v9 = *MEMORY[0x1E69E9840];
    return;
  }

  if (*(v2 + 48) == *(a1 + 40))
  {
    v4 = *(v2 + 120);
    if (v4)
    {
      [v4 timeIntervalSinceNow];
      if (v5 < 0.0)
      {
        [*(a1 + 32) _disableRetryAfterLocked];
      }
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(a1 + 40);
        v8 = [CPLEngineSyncManager shortDescriptionForState:*(*(a1 + 32) + 16)];
        *buf = 138412546;
        v12 = v7;
        v13 = 2112;
        v14 = v8;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEBUG, "It's time to start %@ from %@", buf, 0x16u);
      }
    }

    [*(a1 + 32) _startRequiredSyncSession:*(a1 + 40)];
    goto LABEL_14;
  }

  v10 = [v2 platformObject];
  [v10 noteSyncSessionSucceeded:*(a1 + 40)];
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_backOff
{
  v12 = *MEMORY[0x1E69E9840];
  unavailabilityLimitDate = self->_unavailabilityLimitDate;
  if (unavailabilityLimitDate)
  {
    [(NSDate *)unavailabilityLimitDate timeIntervalSinceNow];
    if (v4 < 0.0)
    {
      [(CPLEngineScheduler *)self _disableRetryAfterLocked];
    }
  }

  v5 = self->_intervalForRetry + self->_intervalForRetry;
  self->_intervalForRetry = v5;
  v6 = 5.0;
  if (v5 < 5.0 || (v6 = 3600.0, v5 > 3600.0))
  {
    self->_intervalForRetry = v6;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLSchedulerOSLogDomain_7603();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      intervalForRetry = self->_intervalForRetry;
      v10 = 134217984;
      v11 = intervalForRetry;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Will back-off retry to %.0fs", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_noteSyncSessionNeededFromState:(unint64_t)a3 minimumDelay:(double)intervalForRetry
{
  if (self->_requiredFirstState == 14 && (v6 = intervalForRetry, intervalForRetry = self->_intervalForRetry, intervalForRetry < v6))
  {
    v7 = [MEMORY[0x1E695DF00] date];
    unavailabilityLimitDate = self->_unavailabilityLimitDate;
    if (unavailabilityLimitDate && ([(NSDate *)unavailabilityLimitDate timeIntervalSinceDate:v7], v9 >= v6))
    {
      v11 = 0;
    }

    else
    {
      v11 = [v7 dateByAddingTimeInterval:v6];
    }

    v10 = v11;
  }

  else
  {
    v10 = 0;
  }

  v12 = v10;
  [(CPLEngineScheduler *)self _noteSyncSessionNeededFromState:a3 proposedScheduleDate:v10, intervalForRetry];
}

- (void)_noteSyncSessionNeededFromState:(unint64_t)a3 proposedScheduleDate:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a4;
  unavailabilityLimitDate = self->_unavailabilityLimitDate;
  if (unavailabilityLimitDate)
  {
    [(NSDate *)unavailabilityLimitDate timeIntervalSinceNow];
    if (v9 < 0.0)
    {
      [(CPLEngineScheduler *)self _disableRetryAfterLocked];
    }
  }

  if (self->_opened)
  {
    pendingRequiredFirstState = self->_pendingRequiredFirstState;
    if (pendingRequiredFirstState <= 0xD && pendingRequiredFirstState >= a3)
    {
      self->_pendingRequiredFirstState = 14;
    }

    objc_storeStrong(&self->_proposedScheduleDate, a4);
    requiredFirstState = self->_requiredFirstState;
    if (requiredFirstState > a3 && self->_intervalForRetry > 5.0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v13 = __CPLSchedulerOSLogDomain_7603();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          intervalForRetry = self->_intervalForRetry;
          v15 = [CPLEngineSyncManager shortDescriptionForState:a3];
          v38 = 134218242;
          v39 = intervalForRetry;
          v40 = 2114;
          v41 = v15;
          _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "Resetting backoff interval to %.0fs because we are asked to start from %{public}@", &v38, 0x16u);
        }
      }

      self->_intervalForRetry = 5.0;
      v16 = self->_unavailabilityLimitDate;
      self->_unavailabilityLimitDate = 0;

      unavailabilityReason = self->_unavailabilityReason;
      self->_unavailabilityReason = 0;

      requiredFirstState = self->_requiredFirstState;
    }

    if (requiredFirstState >= a3)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v24 = __CPLSchedulerOSLogDomain_7603();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [CPLEngineSyncManager shortDescriptionForState:a3];
          v38 = 138543362;
          v39 = *&v25;
          _os_log_impl(&dword_1DC05A000, v24, OS_LOG_TYPE_DEFAULT, "We are asked to schedule a sync session from %{public}@", &v38, 0xCu);
        }
      }

      [(CPLEngineScheduler *)self _setRequiredFirstState:a3];
      ++self->_currentRequestGeneration;
      currentSession = self->_currentSession;
      if (currentSession)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v27 = __CPLSchedulerOSLogDomain_7603();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = self->_currentSession;
            v29 = [CPLEngineSyncManager shortDescriptionForState:a3];
            v38 = 138543618;
            v39 = *&v28;
            v40 = 2114;
            v41 = v29;
            _os_log_impl(&dword_1DC05A000, v27, OS_LOG_TYPE_DEFAULT, "We are in the middle of %{public}@. Let's use it and rewind to %{public}@", &v38, 0x16u);
          }

          currentSession = self->_currentSession;
        }

        [(CPLEngineScheduler *)self _reallyStartSyncSession:currentSession];
      }

      else
      {
        [(CPLEngineScheduler *)self _scheduleNextSyncSession];
      }

      goto LABEL_56;
    }

    currentSyncState = self->_currentSyncState;
    if (self->_currentSession && currentSyncState >= a3)
    {
      if (_CPLSilentLogging)
      {
        goto LABEL_56;
      }

      v19 = __CPLSchedulerOSLogDomain_7603();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_55;
      }

      v20 = [CPLEngineSyncManager shortDescriptionForState:self->_currentSyncState];
      v21 = [CPLEngineSyncManager shortDescriptionForState:a3];
      v22 = [CPLEngineSyncManager shortDescriptionForState:self->_requiredFirstState];
      v38 = 138543874;
      v39 = *&v20;
      v40 = 2114;
      v41 = v21;
      v42 = 2114;
      v43 = v22;
      _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_DEFAULT, "We are in the middle of %{public}@ and are requested to rewind to %{public}@ but we will already rewind to %{public}@", &v38, 0x20u);
    }

    else
    {
      if (currentSyncState >= a3)
      {
        nextSession = self->_nextSession;
        if (!nextSession || self->_deferDate || ([(CPLSyncSession *)nextSession expectedDate], v37 = objc_claimAutoreleasedReturnValue(), v37, !v37))
        {
          [(CPLEngineScheduler *)self _scheduleNextSyncSession];
        }

        if (self->_nextSession)
        {
          if (_CPLSilentLogging)
          {
            goto LABEL_56;
          }

          v19 = __CPLSchedulerOSLogDomain_7603();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_55;
          }

          v31 = [CPLEngineSyncManager shortDescriptionForState:a3];
          v32 = [CPLEngineSyncManager shortDescriptionForState:self->_requiredFirstState];
          v33 = [(CPLSyncSession *)self->_nextSession whenItWillStartDescription];
          v38 = 138543874;
          v39 = *&v31;
          v40 = 2114;
          v41 = v32;
          v42 = 2114;
          v43 = v33;
          _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_DEFAULT, "We are asked to schedule a sync session from %{public}@ but we have already been asked to start from %{public}@ (should happen %{public}@)", &v38, 0x20u);
        }

        else
        {
          if (_CPLSilentLogging)
          {
            goto LABEL_56;
          }

          v19 = __CPLSchedulerOSLogDomain_7603();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
LABEL_55:

LABEL_56:
            proposedScheduleDate = self->_proposedScheduleDate;
            self->_proposedScheduleDate = 0;

            if ([(CPLEngineScheduler *)self _allowsJustInCaseSessions])
            {
              v35 = self->_currentSession;
              if (!v35)
              {
                v35 = self->_nextSession;
              }

              [(CPLSyncSession *)v35 setIsJustInCaseSession:self->_nextSessionIsJustInCase];
            }

            goto LABEL_60;
          }

          v31 = [CPLEngineSyncManager shortDescriptionForState:a3];
          v32 = [CPLEngineSyncManager shortDescriptionForState:self->_requiredFirstState];
          v38 = 138543618;
          v39 = *&v31;
          v40 = 2114;
          v41 = v32;
          _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_DEFAULT, "We are asked to schedule a sync session from %{public}@ but we have already been asked to start from %{public}@ (no date scheduled yet)", &v38, 0x16u);
        }

        goto LABEL_55;
      }

      if (_CPLSilentLogging)
      {
        goto LABEL_56;
      }

      v19 = __CPLSchedulerOSLogDomain_7603();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_55;
      }

      v20 = [CPLEngineSyncManager shortDescriptionForState:self->_currentSyncState];
      v21 = [CPLEngineSyncManager shortDescriptionForState:a3];
      v38 = 138543618;
      v39 = *&v20;
      v40 = 2114;
      v41 = v21;
      _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_DEBUG, "We are in the middle of %{public}@ and requested %{public}@ will happen later in the sync session.", &v38, 0x16u);
    }

    goto LABEL_55;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v23 = __CPLSchedulerOSLogDomain_7603();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v38) = 0;
      _os_log_impl(&dword_1DC05A000, v23, OS_LOG_TYPE_DEFAULT, "Not scheduling sync sessions until the scheduler is fully ready", &v38, 2u);
    }
  }

LABEL_60:
  self->_nextSessionIsJustInCase = 0;

  v36 = *MEMORY[0x1E69E9840];
}

- (BOOL)_allowsJustInCaseSessions
{
  v2 = [(CPLEngineScheduler *)self engineLibrary];
  v3 = [v2 isSystemLibrary];

  return v3;
}

- (void)_unscheduleNextSyncSession
{
  if (self->_nextSession)
  {
    [(CPLEngineScheduler *)self _reallyUnscheduleSession];
  }
}

- (void)_reallyUnscheduleSession
{
  if (self->_nextSession)
  {
    v3 = [(CPLEngineScheduler *)self platformObject];
    [v3 unscheduleSyncSession:self->_nextSession];

    nextSession = self->_nextSession;
    self->_nextSession = 0;

    deferDate = self->_deferDate;
    self->_deferDate = 0;

    [(CPLEngineScheduler *)self _updateOverridingForeground];
  }
}

- (void)_scheduleNextSyncSession
{
  v45 = *MEMORY[0x1E69E9840];
  unavailabilityLimitDate = self->_unavailabilityLimitDate;
  if (unavailabilityLimitDate)
  {
    [(NSDate *)unavailabilityLimitDate timeIntervalSinceNow];
    if (v4 < 0.0)
    {
      [(CPLEngineScheduler *)self _disableRetryAfterLocked];
    }
  }

  [(CPLEngineScheduler *)self _stopPreparingFirstSession];
  proposedScheduleDate = self->_proposedScheduleDate;
  if (proposedScheduleDate)
  {
    [(NSDate *)proposedScheduleDate timeIntervalSinceNow];
    if (v6 >= 0.100000001)
    {
      intervalForRetry = v6;
    }

    else
    {
      intervalForRetry = 0.100000001;
    }
  }

  else
  {
    intervalForRetry = self->_intervalForRetry;
  }

  nextSession = self->_nextSession;
  if (nextSession)
  {
    if (self->_deferDate)
    {
      if (_CPLSilentLogging)
      {
LABEL_15:
        [(CPLEngineScheduler *)self _reallyUnscheduleSession];
        goto LABEL_27;
      }

      v9 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = self->_nextSession;
        v11 = [CPLDateFormatter stringForTimeIntervalAgo:self->_deferDate now:0];
        v41 = 138543618;
        v42 = v10;
        v43 = 2114;
        v44 = v11;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ has been deferred %{public}@ - scheduling a new sync session", &v41, 0x16u);
      }

LABEL_14:

      goto LABEL_15;
    }

    v14 = [(CPLSyncSession *)nextSession expectedDate];

    if (!v14)
    {
      if (_CPLSilentLogging)
      {
        goto LABEL_15;
      }

      v9 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v29 = self->_nextSession;
        v41 = 138543362;
        v42 = v29;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ has no expected date - scheduling a new sync session", &v41, 0xCu);
      }

      goto LABEL_14;
    }

    v12 = [(CPLSyncSession *)self->_nextSession expectedDate];
    [v12 timeIntervalSinceNow];
    if (v15 > intervalForRetry)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v16 = __CPLSchedulerOSLogDomain_7603();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = self->_nextSession;
          v41 = 138543362;
          v42 = v17;
          _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@'s expected date is too far away - scheduling a new sync session", &v41, 0xCu);
        }
      }

      [(CPLEngineScheduler *)self _reallyUnscheduleSession];

LABEL_27:
      requiredFirstState = self->_requiredFirstState;
      if (requiredFirstState > 0xD || requiredFirstState >= 7 && (-[CPLEngineScheduler engineLibrary](self, "engineLibrary"), v19 = objc_claimAutoreleasedReturnValue(), [v19 store], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isClientInSyncWithClientCache"), v20, v19, !v21) || !-[CPLEngineScheduler _syncSessionIsPossible](self, "_syncSessionIsPossible"))
      {
LABEL_55:
        [(CPLEngineScheduler *)self _updateOverridingForeground];
        goto LABEL_56;
      }

      v22 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:intervalForRetry];
      lastSuccessfulSyncSessionDate = self->_lastSuccessfulSyncSessionDate;
      v24 = v22;
      v25 = lastSuccessfulSyncSessionDate;
      v26 = v25;
      if (_decentNextSessionDate_onceToken == -1)
      {
        if (!v25)
        {
          goto LABEL_44;
        }
      }

      else
      {
        dispatch_once(&_decentNextSessionDate_onceToken, &__block_literal_global_591);
        if (!v26)
        {
          goto LABEL_44;
        }
      }

      [v24 timeIntervalSinceDate:v26];
      if (v27 < *&_decentNextSessionDate_secondSessionCoalescingInterval)
      {
        v28 = [(NSDate *)v26 dateByAddingTimeInterval:?];
LABEL_45:
        v32 = v28;

        if (self->_protectAgainstFastRelaunch)
        {
          v33 = [(CPLEngineScheduler *)self _minimalDateForFirstSync];
          if (v33 && [v32 compare:v33] == -1)
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v34 = __CPLSchedulerOSLogDomain_7603();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v41) = 0;
                _os_log_impl(&dword_1DC05A000, v34, OS_LOG_TYPE_DEFAULT, "Delaying first sync because we relaunched too fast", &v41, 2u);
              }
            }

            v35 = v33;

            self->_delayedFirstSyncBecauseOfRapidLaunch = 1;
            v32 = v35;
          }
        }

        v36 = [(CPLEngineScheduler *)self platformObject];
        v37 = [v36 scheduleNextSyncSessionAtDate:v32];
        v38 = self->_nextSession;
        self->_nextSession = v37;

        deferDate = self->_deferDate;
        self->_deferDate = 0;

        goto LABEL_55;
      }

LABEL_44:
      v28 = v24;
      goto LABEL_45;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v30 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v31 = [(CPLSyncSession *)self->_nextSession whenItWillStartDescription];
        v41 = 138543362;
        v42 = v31;
        _os_log_impl(&dword_1DC05A000, v30, OS_LOG_TYPE_DEBUG, "No need to reschedule a sync session. A session is expected to start %{public}@", &v41, 0xCu);
      }
    }

    goto LABEL_42;
  }

  if (!self->_currentSession)
  {
    goto LABEL_27;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v12 = __CPLSchedulerOSLogDomain_7603();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      currentSession = self->_currentSession;
      v41 = 138543362;
      v42 = currentSession;
      _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEFAULT, "No need to schedule a sync session as we are already in the middle of %{public}@", &v41, 0xCu);
    }

LABEL_42:
  }

LABEL_56:
  v40 = *MEMORY[0x1E69E9840];
}

- (void)_startRequiredSyncSession:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  unavailabilityLimitDate = self->_unavailabilityLimitDate;
  if (unavailabilityLimitDate)
  {
    [(NSDate *)unavailabilityLimitDate timeIntervalSinceNow];
    if (v6 < 0.0)
    {
      [(CPLEngineScheduler *)self _disableRetryAfterLocked];
    }
  }

  if (self->_opened)
  {
    if (self->_currentSyncState > 0xD)
    {
      nextSession = self->_nextSession;
      if (nextSession)
      {
        if (nextSession == v4)
        {
          if (self->_deferDate && (_CPLSilentLogging & 1) == 0)
          {
            v15 = __CPLSchedulerOSLogDomain_7603();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = 138543362;
              v17 = v4;
              _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_DEFAULT, "Restarting deferred %{public}@", &v16, 0xCu);
            }
          }

          [(CPLEngineScheduler *)self _reallyStartSyncSession:v4];
        }

        else if ((_CPLSilentLogging & 1) == 0)
        {
          v7 = __CPLSchedulerOSLogDomain_7603();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            v12 = self->_nextSession;
            v16 = 138412546;
            v17 = v4;
            v18 = 2112;
            v19 = v12;
            v9 = "Dropping request for sync session %@ from implementation as we scheduled %@";
            goto LABEL_18;
          }

LABEL_19:
        }
      }

      else if ((_CPLSilentLogging & 1) == 0)
      {
        v14 = __CPLSchedulerOSLogDomain_7603();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v16 = 138412290;
          v17 = v4;
          _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEBUG, "Dropping request for sync session %@ from implementation as we cancelled that scheduling", &v16, 0xCu);
        }
      }
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        currentSession = self->_currentSession;
        v16 = 138412546;
        v17 = v4;
        v18 = 2112;
        v19 = currentSession;
        v9 = "Dropping request for sync session %@ from implementation as we are already in the middle of %@";
LABEL_18:
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, v9, &v16, 0x16u);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  else if (self->_requiredFirstState <= 0xD && (_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLSchedulerOSLogDomain_7603();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = [CPLEngineSyncManager shortDescriptionForState:self->_requiredFirstState];
      v16 = 138412290;
      v17 = v10;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "Dropping one request for a sync session from %@ because we are closed", &v16, 0xCu);
    }

    goto LABEL_19;
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_reallyStartSyncSession:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  currentSession = self->_currentSession;
  if (currentSession != v5 && currentSession != 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v21 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = self->_currentSession;
        *buf = 138412546;
        v26 = v5;
        v27 = 2112;
        v28 = v22;
        _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_ERROR, "Trying to start %@ while %@ is already running", buf, 0x16u);
      }
    }

    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineScheduler.m"];
    [v23 handleFailureInMethod:a2 object:self file:v24 lineNumber:274 description:{@"Trying to start %@ while %@ is already running", v5, self->_currentSession}];

    abort();
  }

  unavailabilityLimitDate = self->_unavailabilityLimitDate;
  if (unavailabilityLimitDate)
  {
    [(NSDate *)unavailabilityLimitDate timeIntervalSinceNow];
    if (v9 < 0.0)
    {
      [(CPLEngineScheduler *)self _disableRetryAfterLocked];
    }
  }

  nextSession = self->_nextSession;
  self->_nextSession = 0;

  deferDate = self->_deferDate;
  self->_deferDate = 0;

  if (-[CPLEngineScheduler _syncSessionIsPossible](self, "_syncSessionIsPossible") && (-[CPLEngineScheduler platformObject](self, "platformObject"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 shouldStartSyncSessionFromState:self->_requiredFirstState], v12, v13))
  {
    if (self->_requiredFirstState < 7 || (-[CPLEngineScheduler engineLibrary](self, "engineLibrary"), v14 = objc_claimAutoreleasedReturnValue(), [v14 store], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isClientInSyncWithClientCache"), v15, v14, v16) && self->_requiredFirstState <= 0xD)
    {
      self->_lastRequestGeneration = self->_currentRequestGeneration;
      [CPLEngineScheduler _startSyncSession:"_startSyncSession:withMinimalPhase:rewind:" withMinimalPhase:v5 rewind:?];
    }

    else if (!self->_currentSession)
    {
      v20 = [(CPLEngineScheduler *)self platformObject];
      [v20 noteSyncSessionSucceeded:v5];
    }
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = __CPLSchedulerOSLogDomain_7603();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_DEBUG, "We were prevented to start a required sync session by implementation. Rescheduling", buf, 2u);
      }
    }

    if (!self->_currentSession)
    {
      v18 = [(CPLEngineScheduler *)self platformObject];
      [v18 noteSyncSessionSucceeded:v5];

      [(CPLEngineScheduler *)self _scheduleNextSyncSession];
    }
  }

  [(CPLEngineScheduler *)self _updateOverridingForeground];

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)_justInCaseSessionIsPossible
{
  currentSession = self->_currentSession;
  if (currentSession)
  {
    return [(CPLSyncSession *)currentSession isJustInCaseSession];
  }

  currentSession = self->_nextSession;
  return !currentSession || [(CPLSyncSession *)currentSession isJustInCaseSession];
}

- (void)_setRequiredFirstState:(unint64_t)requiredFirstState
{
  if (self->_requiredFirstState != requiredFirstState)
  {
    self->_requiredFirstState = requiredFirstState;
    requiredStateObserverBlock = self->_requiredStateObserverBlock;
    if (requiredStateObserverBlock)
    {
      requiredStateObserverBlock[2](requiredStateObserverBlock, requiredFirstState);
      requiredFirstState = self->_requiredFirstState;
    }

    if (requiredFirstState <= 0xB)
    {
      self->_needsToUpdateLastSyncDate = 1;
    }
  }
}

- (void)_updateOverridingForeground
{
  foregroundCalls = self->_foregroundCalls;
  if (self->_isOverridingForeground)
  {
    if (!foregroundCalls || !self->_nextSession && !self->_currentSession)
    {
      v4 = [(CPLEngineScheduler *)self engineLibrary];
      v5 = [v4 systemMonitor];
      [v5 stopOverridingSystemBudgets:8 reason:2];
      v6 = 0;
LABEL_9:

      self->_isOverridingForeground = v6;
    }
  }

  else if (foregroundCalls && self->_currentSession)
  {
    v4 = [(CPLEngineScheduler *)self engineLibrary];
    v5 = [v4 systemMonitor];
    [v5 startOverridingSystemBudgets:8 reason:2];
    v6 = 1;
    goto LABEL_9;
  }
}

- (void)_noteSignificantEvent
{
  predictor = self->_predictor;
  v3 = [MEMORY[0x1E695DF00] date];
  [(CPLSyncSessionPredictor *)predictor updatePredictedDate:v3 forType:@"lastEvent"];
}

- (CPLEngineScheduler)initWithEngineLibrary:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v38.receiver = self;
  v38.super_class = CPLEngineScheduler;
  v6 = [(CPLEngineScheduler *)&v38 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_engineLibrary, v5);
    v8 = CPLCopyDefaultSerialQueueAttributes();
    v9 = dispatch_queue_create("com.apple.cpl.scheduler", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    v7->_needsToUpdateLastSyncDate = 1;
    v7->_intervalForRetry = 0.100000001;
    v7->_requiredFirstState = 14;
    *&v7->_currentSyncState = vdupq_n_s64(0xEuLL);
    v11 = objc_alloc_init(MEMORY[0x1E696AB50]);
    disablingReasons = v7->_disablingReasons;
    v7->_disablingReasons = v11;

    v13 = objc_alloc_init(MEMORY[0x1E696AB50]);
    blockingElements = v7->_blockingElements;
    v7->_blockingElements = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    blockedElements = v7->_blockedElements;
    v7->_blockedElements = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    blockWaiters = v7->_blockWaiters;
    v7->_blockWaiters = v17;

    v19 = objc_alloc_init(MEMORY[0x1E696AB50]);
    unblockOnceElements = v7->_unblockOnceElements;
    v7->_unblockOnceElements = v19;

    v21 = dispatch_queue_create("com.apple.cpl.blocking", 0);
    blockingLock = v7->_blockingLock;
    v7->_blockingLock = v21;

    v7->_protectAgainstFastRelaunch = 1;
    v23 = [CPLSyncSessionPredictor alloc];
    WeakRetained = objc_loadWeakRetained(&v7->_engineLibrary);
    v25 = [WeakRetained libraryIdentifier];
    v26 = [(CPLSyncSessionPredictor *)v23 initWithIdentifier:v25];
    predictor = v7->_predictor;
    v7->_predictor = v26;

    v28 = +[CPLPlatform currentPlatform];
    v29 = [v28 newPlatformImplementationForObject:v7];
    platformObject = v7->_platformObject;
    v7->_platformObject = v29;

    if (!v7->_platformObject)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v33 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = objc_opt_class();
          *buf = 138412290;
          v40 = v34;
          v35 = v34;
          _os_log_impl(&dword_1DC05A000, v33, OS_LOG_TYPE_ERROR, "No platform object specified for %@", buf, 0xCu);
        }
      }

      v36 = [MEMORY[0x1E696AAA8] currentHandler];
      v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineScheduler.m"];
      [v36 handleFailureInMethod:a2 object:v7 file:v37 lineNumber:196 description:{@"No platform object specified for %@", objc_opt_class()}];

      abort();
    }
  }

  v31 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)validElements
{
  if (validElements_onceToken != -1)
  {
    dispatch_once(&validElements_onceToken, &__block_literal_global_93_7794);
  }

  v3 = validElements_validElements;

  return v3;
}

uint64_t __35__CPLEngineScheduler_validElements__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = [v0 initWithObjects:{CPLEngineElementUpload, CPLEngineElementSuccessfulUpload, CPLEngineElementEndOfUpload, CPLEngineElementEndOfUploadHighPriority, CPLEngineElementMingling, CPLEngineElementPushSweetSpot, CPLEngineElementClientPullsBatch, CPLEngineElementPullSweetSpot, CPLEngineElementDownloadResource, CPLEngineElementDownloadResourcesInBackground, CPLEngineElementProcessStagedScopes, CPLEngineElementUploadComputeStates, CPLEngineElementStartForceSync, 0}];
  v2 = validElements_validElements;
  validElements_validElements = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)platformImplementationProtocol
{
  v2 = [objc_opt_class() description];
  v3 = [v2 stringByAppendingString:@"Implementation"];
  v4 = NSProtocolFromString(v3);

  return v4;
}

+ (BOOL)shouldShowBackgroundSchedulingStatusInTransport
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"CPLLegacyBackgroundSchedulingStatus"];

  return v3;
}

@end
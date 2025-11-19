@interface CPLEngineStore
+ (NSArray)storageNames;
+ (id)platformImplementationProtocol;
+ (id)stateDescriptionForState:(unint64_t)a3;
- (BOOL)_applyAndDiscardPendingUpdate:(id)a3 error:(id *)a4;
- (BOOL)_applyPendingUpdate:(id)a3 error:(id *)a4;
- (BOOL)_canHaveActivatedScope:(id)a3 libraryOptions:(unint64_t)a4 error:(id *)a5;
- (BOOL)_canRead;
- (BOOL)_canWrite;
- (BOOL)_handleException:(id)a3;
- (BOOL)_resetCompleteSyncStateIncludingIDMappingWithCause:(id)a3 scope:(id)a4 error:(id *)a5;
- (BOOL)_resetCompleteSyncStateWithCause:(id)a3 scope:(id)a4 error:(id *)a5;
- (BOOL)_resetGlobalStateWithError:(id *)a3;
- (BOOL)_resetLocalSyncStateWithCause:(id)a3 scope:(id)a4 date:(id)a5 error:(id *)a6;
- (BOOL)_resetSyncAnchorWithCause:(id)a3 scope:(id)a4 error:(id *)a5;
- (BOOL)_storeChangeSessionUpdate:(id)a3 error:(id *)a4;
- (BOOL)addPushPullGatekeeper:(id)a3 error:(id *)a4;
- (BOOL)applyPreviousChangeSessionUpdateWithExpectedLibraryVersion:(id)a3 error:(id *)a4;
- (BOOL)beginChangeSession:(id)a3 withLibraryVersion:(id)a4 resetTracker:(id)a5 error:(id *)a6;
- (BOOL)canActivateScope:(id)a3 error:(id *)a4;
- (BOOL)checkExpectedLibraryVersion:(id)a3 error:(id *)a4;
- (BOOL)clearAllPushPullGatekeepersWithError:(id *)a3;
- (BOOL)clientCanPushScopeChange:(id)a3;
- (BOOL)createStoragesDynamically:(id)a3 error:(id *)a4;
- (BOOL)deleteDynamicallyCreatedStorages:(id)a3 error:(id *)a4;
- (BOOL)forceApplyPendingChangeSessionUpdateWithError:(id *)a3;
- (BOOL)hasPendingChangeSessionUpdate;
- (BOOL)hasPendingResetSync;
- (BOOL)hasUnacknowledgedChanges;
- (BOOL)isClientInSyncWithClientCache;
- (BOOL)isFeatureDisabled:(id)a3;
- (BOOL)mainScopeSupportsSharingScopeWithIdentifier:(id)a3;
- (BOOL)pushRepositoryIsFull;
- (BOOL)resetCompleteSyncStateIncludingIDMappingWithCause:(id)a3 error:(id *)a4;
- (BOOL)resetCompleteSyncStateWithCause:(id)a3 error:(id *)a4;
- (BOOL)resetLocalSyncStateWithCause:(id)a3 date:(id)a4 error:(id *)a5;
- (BOOL)resetSyncAnchorWithCause:(id)a3 error:(id *)a4;
- (BOOL)setShouldUpdateDisabledFeaturesWithError:(id *)a3;
- (BOOL)shouldSyncScopeList;
- (BOOL)shouldUpdateDisabledFeatures;
- (BOOL)storeChangeSessionUpdate:(id)a3 error:(id *)a4;
- (BOOL)storeClientIsInSyncWithClientCacheWithError:(id *)a3;
- (BOOL)storeDerivativesFilter:(id)a3 error:(id *)a4;
- (BOOL)storeLastQuarantineCountReportDate:(id)a3 error:(id *)a4;
- (BOOL)storeLibraryVersion:(id)a3 withError:(id *)a4;
- (BOOL)storeUserIdentifier:(id)a3 error:(id *)a4;
- (BOOL)storeVersionHasChanged;
- (BOOL)supportsSharingScopeWithIdentifier:(id)a3 forScopeWithIdentifier:(id)a4;
- (BOOL)syncSessionShouldRequestMoreTime;
- (BOOL)updateDisabledFeatures:(id)a3 didReset:(BOOL *)a4 error:(id *)a5;
- (BOOL)updateLibraryOptions:(unint64_t)a3 error:(id *)a4;
- (CPLEngineLibrary)engineLibrary;
- (CPLEngineStore)initWithEngineLibrary:(id)a3;
- (CPLRecordStorageView)transactionClientCacheView;
- (CPLTransportScopeMapping)transactionTransportScopeMapping;
- (NSArray)disabledFeatures;
- (NSArray)pushPullGatekeepers;
- (NSDate)libraryCreationDate;
- (NSString)description;
- (NSString)mainScopeIdentifier;
- (id)_currentTransaction;
- (id)_performWriteTransactionByPassBlocker:(id)a3 WithBlock:(id)a4 completionHandler:(id)a5;
- (id)_resetEventsDescriptions;
- (id)_resetEventsJSON;
- (id)_storedDisabledFeatures;
- (id)clientCacheIdentifier;
- (id)corruptionInfo;
- (id)createNewLibraryVersion;
- (id)derivativesFilter;
- (id)lastQuarantineCountReportDate;
- (id)libraryVersion;
- (id)localResourceForCloudResource:(id)a3 recordClass:(Class *)a4;
- (id)newClientCacheViewUsesPushRepository:(BOOL *)a3;
- (id)performReadTransactionWithBlock:(id)a3;
- (id)unacknowledgedChangeWithLocalScopedIdentifier:(id)a3;
- (id)userIdentifier;
- (unint64_t)libraryOptions;
- (void)_addCleanupBlock:(id)a3;
- (void)_closeAndDeactivate:(BOOL)a3 completionHandler:(id)a4;
- (void)_commitWriteTransaction:(id)a3 commitError:(id)a4;
- (void)_dropTransactionClientCacheView;
- (void)_finishTransaction;
- (void)_forceCloseWithCompletionHandler:(id)a3;
- (void)_loadResetEvents;
- (void)_performBarrierTransaction:(id)a3 withBlock:(id)a4;
- (void)_performTransaction:(id)a3 withBlock:(id)a4;
- (void)_reallyPerformBatchedTransactionsLocked;
- (void)_reallySchedulePendingUpdateApply;
- (void)_reallyUnschedulePendingUpdateApply;
- (void)_removeTransactionOnCurrentThread:(id)a3;
- (void)_scheduleBatchedTransactionsLocked;
- (void)_schedulePendingUpdateApply;
- (void)_setSharingScopeIdentifier:(id)a3;
- (void)_setTransactionOnCurrentThread:(id)a3;
- (void)_storeResetEvent:(id)a3 scopeIdentifier:(id)a4 date:(id)a5 pending:(BOOL)a6 cause:(id)a7;
- (void)_unschedulePendingUpdateApply;
- (void)_updateShouldSyncScopeList:(BOOL)a3;
- (void)assertCanRead;
- (void)assertCanWrite;
- (void)assertNoUnacknowledgedChanges;
- (void)blockWriteTransactionsWithCompletionHandler:(id)a3;
- (void)closeAndDeactivate:(BOOL)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)dropSharingScopeIdentifier:(id)a3;
- (void)dropUnacknowledgedBatch;
- (void)emergencyClose;
- (void)getStatusDictionaryWithCompletionHandler:(id)a3;
- (void)getStatusWithCompletionHandler:(id)a3;
- (void)keepUnacknowledgedBatch:(id)a3;
- (void)markAsCorrupted;
- (void)noteInvalidRecordScopedIdentifiersInPushSession:(id)a3;
- (void)noteOtherResetEvent:(id)a3 cause:(id)a4;
- (void)notePushRepositoryStoredSomeChanges;
- (void)noteResetSyncFinished;
- (void)openWithCompletionHandler:(id)a3;
- (void)performBarrier;
- (void)performBatchedWriteTransactionBarrier;
- (void)performBatchedWriteTransactionBarrierWithCompletionBlock:(id)a3;
- (void)performBatchedWriteTransactionWithBlock:(id)a3 completionHandler:(id)a4;
- (void)predictSyncSessionValue:(id)a3 ofType:(id)a4;
- (void)registerStorage:(id)a3;
- (void)startVacuumWithCompletionHandler:(id)a3;
- (void)stopVacuum;
- (void)testKey:(id)a3 value:(id)a4 completionHandler:(id)a5;
- (void)transactionDidFinish;
- (void)wipeStoreAtNextOpeningWithReason:(id)a3 completionBlock:(id)a4;
- (void)writeTransactionDidFail;
- (void)writeTransactionDidSucceed;
@end

@implementation CPLEngineStore

- (id)clientCacheIdentifier
{
  v2 = [(CPLEngineStore *)self platformObject];
  v3 = [v2 clientCacheIdentifier];

  return v3;
}

- (BOOL)isClientInSyncWithClientCache
{
  v2 = [(CPLEngineStore *)self platformObject];
  v3 = [v2 isClientInSyncWithClientCache];

  return v3;
}

- (BOOL)shouldSyncScopeList
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  shouldSyncScopeListQueue = self->_shouldSyncScopeListQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__CPLEngineStore_shouldSyncScopeList__block_invoke;
  v5[3] = &unk_1E861A850;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(shouldSyncScopeListQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)writeTransactionDidSucceed
{
  if (self->_unschedulePendingUpdateApplyOnWriteSuccess)
  {
    [(CPLEngineStore *)self _reallyUnschedulePendingUpdateApply];
  }

  if (self->_schedulePendingUpdateApplyOnWriteSuccess)
  {
    [(CPLEngineStore *)self _reallySchedulePendingUpdateApply];
  }

  if (self->_shouldEnableScopeListSyncOnWriteSuccess)
  {
    shouldSyncScopeListQueue = self->_shouldSyncScopeListQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__CPLEngineStore_writeTransactionDidSucceed__block_invoke;
    block[3] = &unk_1E861A940;
    block[4] = self;
    dispatch_sync(shouldSyncScopeListQueue, block);
    v4 = [(CPLEngineStore *)self engineLibrary];
    v5 = [v4 scheduler];
    [v5 noteScopeListNeedsUpdate];

    self->_shouldEnableScopeListSyncOnWriteSuccess = 0;
  }

  if (self->_scheduleSetupOnWriteSuccess)
  {
    v6 = [(CPLEngineStore *)self engineLibrary];
    v7 = [v6 scheduler];
    [v7 noteStoreNeedsSetup];

    self->_scheduleSetupOnWriteSuccess = 0;
  }

  if (self->_scheduleDisabledFeatureUpdateOnWriteSuccess)
  {
    v8 = [(CPLEngineStore *)self engineLibrary];
    v9 = [v8 scheduler];
    [v9 noteStoreNeedsToUpdateDisabledFeatures];

    self->_scheduleDisabledFeatureUpdateOnWriteSuccess = 0;
  }

  if (self->_schedulePullFromClient)
  {
    v10 = [(CPLEngineStore *)self engineLibrary];
    [v10 notifyAttachedObjectsPullQueueIsFull];

    self->_schedulePullFromClient = 0;
  }

  self->_discardUnacknowledgedBatchOnTransactionFail = 0;
  self->_pendingUpdateInterval = 0.0;
  self->_hasUpdatedDisabledFeatures = 0;
  if (self->_transactionNewPredictions)
  {
    WeakRetained = objc_loadWeakRetained(&self->_engineLibrary);
    v12 = [WeakRetained scheduler];
    v13 = [v12 predictor];
    [v13 updatePredictionWithValuesAndTypes:self->_transactionNewPredictions];

    transactionNewPredictions = self->_transactionNewPredictions;
    self->_transactionNewPredictions = 0;
  }

  v15 = [(CPLEngineStore *)self platformObject];
  [v15 writeTransactionDidSucceed];
}

- (void)_finishTransaction
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_storages;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) transactionDidFinish];
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(CPLEngineStore *)self transactionDidFinish];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)transactionDidFinish
{
  transactionTransportScopeMapping = self->_transactionTransportScopeMapping;
  self->_transactionTransportScopeMapping = 0;

  [(CPLEngineStore *)self _dropTransactionClientCacheView];
}

- (void)_dropTransactionClientCacheView
{
  if (self->_transactionClientCacheView)
  {
    self->_transactionClientCacheView = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CPLEngineLibrary)engineLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_engineLibrary);

  return WeakRetained;
}

- (void)testKey:(id)a3 value:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__677;
  v24[4] = __Block_byref_object_dispose__678;
  v25 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __50__CPLEngineStore_testKey_value_completionHandler___block_invoke;
  v19[3] = &unk_1E861C170;
  v19[4] = self;
  v11 = v8;
  v20 = v11;
  v12 = v9;
  v21 = v12;
  v22 = v26;
  v23 = v24;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__CPLEngineStore_testKey_value_completionHandler___block_invoke_3;
  v15[3] = &unk_1E861B9E8;
  v17 = v26;
  v13 = v10;
  v16 = v13;
  v18 = v24;
  v14 = [(CPLEngineStore *)self performWriteTransactionWithBlock:v19 completionHandler:v15];

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v26, 8);
}

void __50__CPLEngineStore_testKey_value_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__CPLEngineStore_testKey_value_completionHandler___block_invoke_2;
  v5[3] = &unk_1E861B9C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  [a2 do:v5];
}

void __50__CPLEngineStore_testKey_value_completionHandler___block_invoke_3(void *a1, void *a2)
{
  v2 = a1[4];
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v3 = *(*(a1[6] + 8) + 40);
    v6 = [a2 error];
    (*(v2 + 16))(v2, 1, v3, v6);
  }

  else
  {
    v4 = *(v2 + 16);
    v5 = a1[4];

    v4(v5, 0, 0, 0);
  }
}

uint64_t __50__CPLEngineStore_testKey_value_completionHandler___block_invoke_2(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = *(a1[4] + 8);
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v24;
LABEL_3:
    v9 = 0;
    v10 = v7;
    while (1)
    {
      if (*v24 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v11 = *(*(&v23 + 1) + 8 * v9);
      v12 = a1[5];
      v13 = a1[6];
      v14 = *(a1[7] + 8);
      v15 = *(a1[8] + 8);
      v16 = *(v15 + 40);
      v21 = v10;
      obj = v16;
      v17 = [v11 testKey:v12 value:v13 didHandle:v14 + 24 result:&obj error:&v21];
      objc_storeStrong((v15 + 40), obj);
      v7 = v21;

      if (*(*(a1[7] + 8) + 24))
      {
        break;
      }

      ++v9;
      v10 = v7;
      if (v6 == v9)
      {
        v6 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v7 = 0;
    v17 = 1;
  }

  if (*(*(a1[7] + 8) + 24) == 1)
  {
    if (a2)
    {
      v18 = v7;
      *a2 = v7;
    }
  }

  else
  {
    v17 = 1;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)getStatusDictionaryWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__CPLEngineStore_getStatusDictionaryWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8620308;
  v7[4] = self;
  v8 = v4;
  v5 = v4;
  v6 = [(CPLEngineStore *)self performReadTransactionWithBlock:v7];
}

void __59__CPLEngineStore_getStatusDictionaryWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = [v3 error];
    (*(v5 + 16))(v5, 0, v6);
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = *(*(a1 + 32) + 8);
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v12 name];
          v14 = [v12 statusDictionary];
          if (v14)
          {
            [v6 setObject:v14 forKeyedSubscript:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v15 = [*(a1 + 32) _resetEventsJSON];
    if ([v15 count])
    {
      [v6 setObject:v15 forKeyedSubscript:@"resets"];
    }

    (*(*(a1 + 40) + 16))();
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)getStatusWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__CPLEngineStore_getStatusWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8620308;
  v7[4] = self;
  v8 = v4;
  v5 = v4;
  v6 = [(CPLEngineStore *)self performReadTransactionWithBlock:v7];
}

void __49__CPLEngineStore_getStatusWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v144 = *MEMORY[0x1E69E9840];
  v110 = a2;
  v2 = [v110 error];

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [v110 error];
    (*(v3 + 16))(v3, 0, v4);
  }

  else
  {
    v106 = [*(a1 + 32) userIdentifier];
    if (objc_opt_respondsToSelector())
    {
      [v106 cplShareParticipantUserIdentifier];
    }

    else
    {
      [v106 description];
    }
    v105 = ;
    v109 = [*(a1 + 32) libraryCreationDate];
    v5 = [*(a1 + 32) platformObject];
    v111 = [v5 storedChangeSessionUpdate];

    v112 = [v111 storageForStatusInStore:*(a1 + 32)];
    if (v111)
    {
      v6 = objc_alloc(MEMORY[0x1E696AEC0]);
      v7 = [v111 libraryVersion];
      v104 = [v6 initWithFormat:@" (pending: %@ for %@)", v7, objc_opt_class()];
    }

    else
    {
      v104 = &stru_1F57BD298;
    }

    v8 = objc_alloc(MEMORY[0x1E696AD60]);
    v9 = v109;
    if (v109)
    {
      v10 = [CPLDateFormatter stringFromDate:?];
      v9 = v109;
    }

    else
    {
      v10 = @"unknown";
    }

    v11 = v9 == 0;
    v12 = [*(a1 + 32) libraryVersion];
    v13 = [*(a1 + 32) clientCacheIdentifier];
    v14 = [*(a1 + 32) isClientInSyncWithClientCache];
    v15 = @"out of sync";
    if (v14)
    {
      v15 = @"in sync";
    }

    v16 = [v8 initWithFormat:@"creation date: %@\nlibrary version: %@%@\nclient cache id: %@ (%@)\nuser identifier: %@\n", v10, v12, v104, v13, v15, v105];

    if (!v11)
    {
    }

    v17 = a1;
    if ([*(a1 + 32) shouldSyncScopeList])
    {
      [v16 appendString:@"synchronizing scope list: enabled\n"];
    }

    v18 = *(a1 + 32);
    v19 = v18[20];
    v118 = v16;
    if (!v19)
    {
      v20 = [v18 _storedDisabledFeatures];
      v17 = a1;
      v21 = *(a1 + 32);
      v22 = *(v21 + 160);
      *(v21 + 160) = v20;

      v19 = *(*(a1 + 32) + 160);
    }

    if ([v19 count])
    {
      v23 = [*(*(v17 + 32) + 160) componentsJoinedByString:{@", "}];
      [v16 appendFormat:@"disabled features: %@\n", v23];

      v17 = a1;
    }

    v24 = [*(*(v17 + 32) + 216) primaryScope];
    v25 = @"is NOT enabled";
    if (v24)
    {
      v26 = a1;
      if (![*(*(a1 + 32) + 216) valueForFlag:16 forScope:v24])
      {
        v25 = @"is ENABLED";
      }
    }

    else
    {
      v26 = a1;
    }

    WeakRetained = objc_loadWeakRetained((*(v26 + 32) + 200));
    v28 = [WeakRetained libraryIdentifier];

    if ([v28 hasPrefix:CPLAppLibraryIdentifierPrefix])
    {
      v29 = objc_loadWeakRetained((*(a1 + 32) + 200));
      v30 = [v29 libraryIdentifier];
      v31 = CPLAppBundleIdentifierForLibraryIdentifier(v30);

      v32 = objc_alloc(MEMORY[0x1E696AEC0]);
      v33 = [*(a1 + 32) mainScopeIdentifier];
      v34 = [v32 initWithFormat:@"Synchronizing App Library for %@ with %@", v31, v33];
    }

    else
    {
      v35 = objc_alloc(MEMORY[0x1E696AEC0]);
      v31 = [*(a1 + 32) mainScopeIdentifier];
      v34 = [v35 initWithFormat:@"Synchronizing %@ with %@", v28, v31];
    }

    [v118 appendFormat:@"\n%@ %@", v34, v25];
    if (*(*(a1 + 32) + 16))
    {
      [v118 appendFormat:@"\nSharing is enabled using %@", *(*(a1 + 32) + 16)];
    }

    [v118 appendString:@"\n"];

    v108 = [*(a1 + 32) _resetEventsDescriptions];
    if (v108)
    {
      v36 = [v108 componentsJoinedByString:@"\n\t"];
      [v118 appendFormat:@"\nresets:\n\t%@", v36];
    }

    v37 = [MEMORY[0x1E695E000] standardUserDefaults];
    v38 = [v37 BOOLForKey:@"CPLShowPossibleResets"];

    if (v38)
    {
      v39 = +[CPLResetTracker currentReasonDescriptions];
      if ([v39 count])
      {
        v40 = [v39 componentsJoinedByString:@"\n\t"];
        [v118 appendFormat:@"\nmight reset soon because:\n\t%@", v40];
      }
    }

    v41 = *(a1 + 32);
    if (*(v41 + 104))
    {
      v42 = [*(v41 + 96) count];
      if (v42 < 4)
      {
        v45 = [CPLDateFormatter stringFromDateAgo:*(*(a1 + 32) + 104) now:0];
        v46 = [*(*(a1 + 32) + 96) allObjects];
        v47 = [v46 componentsJoinedByString:{@", "}];
        [v118 appendFormat:@"\nlast invalid records pushed by client %@:\n\t%@", v45, v47, v103];
      }

      else
      {
        v43 = v42;
        v44 = [*(*(a1 + 32) + 96) allObjects];
        v45 = [v44 subarrayWithRange:{0, 3}];

        v46 = [CPLDateFormatter stringFromDateAgo:*(*(a1 + 32) + 104) now:0];
        v47 = [v45 componentsJoinedByString:{@", "}];
        [v118 appendFormat:@"\nlast invalid records pushed by client %@:\n\t%@ + %lu more", v46, v47, v43 - 3];
      }

      v41 = *(a1 + 32);
    }

    v48 = [v41 platformObject];
    v107 = [v48 status];

    if (v107)
    {
      v49 = [v107 componentsSeparatedByString:@"\n"];
      v50 = [v49 componentsJoinedByString:@"\n\t"];
      [v118 appendFormat:@"\n%@", v50];
    }

    v119 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    obj = *(*(a1 + 32) + 8);
    v51 = [obj countByEnumeratingWithState:&v132 objects:v143 count:16];
    if (v51)
    {
      v116 = *v133;
      do
      {
        v52 = 0;
        do
        {
          if (*v133 != v116)
          {
            objc_enumerationMutation(obj);
          }

          v53 = *(*(&v132 + 1) + 8 * v52);
          if ([v53 shouldIncludeInStatus])
          {
            v54 = [v53 name];
            v55 = [v53 status];
            v56 = v55;
            if (v112 == v53)
            {
              v136 = 0;
              v137 = &v136;
              v138 = 0x2020000000;
              LOBYTE(v139) = 0;
              v63 = *(a1 + 32);
              v64 = *(v63 + 120);
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __49__CPLEngineStore_getStatusWithCompletionHandler___block_invoke_2;
              block[3] = &unk_1E861A850;
              block[4] = v63;
              block[5] = &v136;
              dispatch_sync(v64, block);
              v65 = [v111 statusDescription];
              v66 = [v111 queuedDate];
              v67 = [MEMORY[0x1E695DF00] date];
              v68 = *(v137 + 24);
              if (v66)
              {
                if (*(v137 + 24))
                {
                  v69 = [v66 dateByAddingTimeInterval:30.0];
                  [v69 timeIntervalSinceDate:v67];
                  if (v70 >= 0.0)
                  {
                    v75 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v72 = [CPLDateFormatter stringForTimeIntervalAgo:v69 now:v67];
                    v73 = [v75 initWithFormat:@"will auto-apply %@", v72];
                  }

                  else
                  {
                    v71 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v72 = [CPLDateFormatter stringFromDateAgo:v66 now:v67];
                    v73 = [v71 initWithFormat:@"%@ - auto-apply overdue", v72];
                  }

                  v74 = v73;
                }

                else
                {
                  v74 = [CPLDateFormatter stringFromDateAgo:v66 now:0];
                }
              }

              else if (*(v137 + 24))
              {
                v74 = @"no queued date - waiting for auto-apply";
              }

              else
              {
                v74 = @"no queued date";
              }

              if (v56)
              {
                v76 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@\nPending update: %@ - %@", v56, v65, v74];

                v56 = v76;
              }

              else
              {
                v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Pending update: %@ - %@", v65, v74];
              }

              _Block_object_dispose(&v136, 8);
            }

            else
            {
              v57 = *(a1 + 32);
              if (*(v57 + 72) && v53 == *(v57 + 232))
              {
                v58 = v55 == 0;
                v59 = objc_alloc(MEMORY[0x1E696AEC0]);
                v60 = [*(*(a1 + 32) + 72) summaryDescription];
                v61 = v60;
                if (v58)
                {
                  v56 = [v59 initWithFormat:@"Pending update: waiting for ack of %@", v60];
                }

                else
                {
                  v62 = [v59 initWithFormat:@"%@\nPending update: waiting for ack of %@", v56, v60];

                  v56 = v62;
                }
              }
            }

            if (v56)
            {
              [v119 setObject:v56 forKey:v54];
            }
          }

          ++v52;
        }

        while (v51 != v52);
        v77 = [obj countByEnumeratingWithState:&v132 objects:v143 count:16];
        v51 = v77;
      }

      while (v77);
    }

    if ([v119 count])
    {
      [v118 appendString:@"\nstorages:"];
      v78 = *(a1 + 32);
      v117 = [objc_opt_class() storageNames];
      v129 = 0u;
      v130 = 0u;
      v128 = 0u;
      v127 = 0u;
      v79 = [v117 countByEnumeratingWithState:&v127 objects:v142 count:16];
      if (v79)
      {
        v80 = *v128;
        do
        {
          for (i = 0; i != v79; ++i)
          {
            if (*v128 != v80)
            {
              objc_enumerationMutation(v117);
            }

            v82 = *(*(&v127 + 1) + 8 * i);
            v83 = [v119 objectForKeyedSubscript:v82];
            v84 = v83;
            if (v83)
            {
              v85 = [v83 componentsSeparatedByString:@"\n"];
              v86 = [v85 componentsJoinedByString:@"\n\t\t"];
              [v118 appendFormat:@"\n\t%@ = %@", v82, v86];

              [v119 removeObjectForKey:v82];
            }
          }

          v79 = [v117 countByEnumeratingWithState:&v127 objects:v142 count:16];
        }

        while (v79);
      }

      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v87 = [v119 allKeys];
      obja = [v87 sortedArrayUsingSelector:sel_compare_];

      v88 = [obja countByEnumeratingWithState:&v123 objects:v141 count:16];
      if (v88)
      {
        v89 = *v124;
        do
        {
          for (j = 0; j != v88; ++j)
          {
            if (*v124 != v89)
            {
              objc_enumerationMutation(obja);
            }

            v91 = *(*(&v123 + 1) + 8 * j);
            v92 = [v119 objectForKey:v91];
            v93 = [v92 componentsSeparatedByString:@"\n"];
            v94 = [v93 componentsJoinedByString:@"\n\t\t"];
            [v118 appendFormat:@"\n\t%@ = %@", v91, v94];
          }

          v88 = [obja countByEnumeratingWithState:&v123 objects:v141 count:16];
        }

        while (v88);
      }
    }

    v96 = *(a1 + 32);
    v95 = *(a1 + 40);
    v97 = *(v96 + 24);
    v120[0] = MEMORY[0x1E69E9820];
    v120[1] = 3221225472;
    v120[2] = __49__CPLEngineStore_getStatusWithCompletionHandler___block_invoke_3;
    v120[3] = &unk_1E861B3D0;
    v120[4] = v96;
    v121 = v118;
    v122 = v95;
    v98 = v120;
    v136 = MEMORY[0x1E69E9820];
    v137 = 3221225472;
    v138 = __cpl_dispatch_async_block_invoke_682;
    v139 = &unk_1E861B4E0;
    v140 = v98;
    v99 = v118;
    v100 = v97;
    v101 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &v136);
    dispatch_async(v100, v101);
  }

  v102 = *MEMORY[0x1E69E9840];
}

uint64_t __49__CPLEngineStore_getStatusWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) count];
  if (v2)
  {
    [*(a1 + 40) appendFormat:@"\nlow-priority transactions: %lu pending", v2];
  }

  v3 = *(a1 + 40);
  v4 = *(*(a1 + 48) + 16);

  return v4();
}

- (void)assertNoUnacknowledgedChanges
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_unacknowledgedBatch)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        unacknowledgedBatch = self->_unacknowledgedBatch;
        *buf = 138412290;
        v17 = unacknowledgedBatch;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "Store still has an unacknowledged batch %@", buf, 0xCu);
      }
    }

    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStore.m"];
    [v9 handleFailureInMethod:a2 object:self file:v10 lineNumber:2380 description:{@"Store still has an unacknowledged batch %@", self->_unacknowledgedBatch}];
LABEL_14:

    abort();
  }

  v4 = [(CPLEngineStore *)self platformObject];
  v5 = [v4 hasStoredChangeSessionUpdate];

  if (v5)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [(CPLEngineStore *)self platformObject];
        v13 = [v12 storedChangeSessionUpdate];
        *buf = 138412290;
        v17 = v13;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "Store still has an un-applied session update: %@", buf, 0xCu);
      }
    }

    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStore.m"];
    v14 = [(CPLEngineStore *)self platformObject];
    v15 = [v14 storedChangeSessionUpdate];
    [v9 handleFailureInMethod:a2 object:self file:v10 lineNumber:2381 description:{@"Store still has an un-applied session update: %@", v15}];

    goto LABEL_14;
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)assertCanRead
{
  v18 = *MEMORY[0x1E69E9840];
  if (![(CPLEngineStore *)self _canRead])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [MEMORY[0x1E696AF00] currentThread];
        v7 = [(CPLEngineStore *)self _currentTransaction];
        *buf = 134218498;
        v13 = v6;
        v14 = 2112;
        v15 = self;
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "Trying to read on thread %p in %@ outside of a read transaction (current transaction is %@)", buf, 0x20u);
      }
    }

    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStore.m"];
    v10 = [MEMORY[0x1E696AF00] currentThread];
    v11 = [(CPLEngineStore *)self _currentTransaction];
    [v8 handleFailureInMethod:a2 object:self file:v9 lineNumber:2376 description:{@"Trying to read on thread %p in %@ outside of a read transaction (current transaction is %@)", v10, self, v11}];

    abort();
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)assertCanWrite
{
  v18 = *MEMORY[0x1E69E9840];
  if (![(CPLEngineStore *)self _canWrite])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [MEMORY[0x1E696AF00] currentThread];
        v7 = [(CPLEngineStore *)self _currentTransaction];
        *buf = 134218498;
        v13 = v6;
        v14 = 2112;
        v15 = self;
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "Trying to write on thread %p in %@ outside of a write transaction (current transaction is %@)", buf, 0x20u);
      }
    }

    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStore.m"];
    v10 = [MEMORY[0x1E696AF00] currentThread];
    v11 = [(CPLEngineStore *)self _currentTransaction];
    [v8 handleFailureInMethod:a2 object:self file:v9 lineNumber:2372 description:{@"Trying to write on thread %p in %@ outside of a write transaction (current transaction is %@)", v10, self, v11}];

    abort();
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)_canWrite
{
  v2 = [(CPLEngineStore *)self _currentTransaction];
  v3 = [v2 canWrite];

  return v3;
}

- (BOOL)_canRead
{
  v2 = [(CPLEngineStore *)self _currentTransaction];
  v3 = [v2 canRead];

  return v3;
}

- (void)_removeTransactionOnCurrentThread:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = a3;
  [v14 _transactionDidFinish];
  v5 = [MEMORY[0x1E696AF00] currentThread];
  v6 = [v5 threadDictionary];
  v7 = [v6 objectForKey:@"com.apple.cloudphotolibrary.currenttransaction"];

  if (v7 != v14)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v6 objectForKey:@"com.apple.cloudphotolibrary.currenttransaction"];
        *buf = 138412290;
        v16 = v10;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Trying to remove the wrong transaction on thread: %@", buf, 0xCu);
      }
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStore.m"];
    v13 = [v6 objectForKey:@"com.apple.cloudphotolibrary.currenttransaction"];
    [v11 handleFailureInMethod:a2 object:self file:v12 lineNumber:2355 description:{@"Trying to remove the wrong transaction on thread: %@", v13}];

    abort();
  }

  [v6 removeObjectForKey:@"com.apple.cloudphotolibrary.currenttransaction"];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_setTransactionOnCurrentThread:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v5 = [MEMORY[0x1E696AF00] currentThread];
  v6 = [v5 threadDictionary];
  v7 = [v6 objectForKey:@"com.apple.cloudphotolibrary.currenttransaction"];

  if (v7)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v6 objectForKey:@"com.apple.cloudphotolibrary.currenttransaction"];
        *buf = 138412546;
        v16 = v14;
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Trying to setup a transaction %@ on a thread which already has one: %@", buf, 0x16u);
      }
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStore.m"];
    v13 = [v6 objectForKey:@"com.apple.cloudphotolibrary.currenttransaction"];
    [v11 handleFailureInMethod:a2 object:self file:v12 lineNumber:2346 description:{@"Trying to setup a transaction %@ on a thread which already has one: %@", v14, v13}];

    abort();
  }

  [v6 setObject:v14 forKey:@"com.apple.cloudphotolibrary.currenttransaction"];
  [v14 _transactionWillBeginOnThread:v5];

  v8 = *MEMORY[0x1E69E9840];
}

- (id)_currentTransaction
{
  v2 = [MEMORY[0x1E696AF00] currentThread];
  v3 = [v2 threadDictionary];
  v4 = [v3 objectForKey:@"com.apple.cloudphotolibrary.currenttransaction"];

  return v4;
}

- (void)_addCleanupBlock:(id)a3
{
  v10 = a3;
  v5 = [(CPLEngineStore *)self _currentTransaction];
  if (!v5)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "Trying to add a clean-up block while not in a transaction", buf, 2u);
      }
    }

    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStore.m"];
    [v8 handleFailureInMethod:a2 object:self file:v9 lineNumber:2334 description:@"Trying to add a clean-up block while not in a transaction"];

    abort();
  }

  v6 = v5;
  [v5 addCleanupBlock:v10];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CPLEngineStore *)self engineLibrary];
  v6 = [v5 libraryIdentifier];
  v7 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v6];

  return v7;
}

- (void)dropSharingScopeIdentifier:(id)a3
{
  v4 = a3;
  sharingScopeIdentifier = self->_sharingScopeIdentifier;
  v6 = v4;
  if (!v4 || !sharingScopeIdentifier)
  {
    if (v4 | sharingScopeIdentifier)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if ([v4 isEqual:?])
  {
LABEL_6:
    [(CPLEngineStore *)self _setSharingScopeIdentifier:0];
  }

LABEL_7:
}

- (void)_setSharingScopeIdentifier:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5 && ![(CPLEngineStore *)self mainScopeSupportsSharingScopeWithIdentifier:v5])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [(CPLEngineStore *)self mainScopeIdentifier];
        *buf = 138412546;
        v22 = v5;
        v23 = 2112;
        v24 = v14;
        _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_ERROR, "Trying to bind sharing scope %@ with %@", buf, 0x16u);
      }
    }

    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStore.m"];
    v17 = [(CPLEngineStore *)self mainScopeIdentifier];
    [v15 handleFailureInMethod:a2 object:self file:v16 lineNumber:2291 description:{@"Trying to bind sharing scope %@ with %@", v5, v17}];

    abort();
  }

  v6 = self->_sharingScopeIdentifier;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = v5;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Setting sharing scope identifier to %{public}@", buf, 0xCu);
    }
  }

  sharingScopeIdentifier = self->_sharingScopeIdentifier;
  self->_sharingScopeIdentifier = v5;
  v9 = v5;

  if (!self->_sharingScopeIdentifier)
  {
    v10 = [(CPLEngineStore *)self engineLibrary];
    [v10 setEstimatedCountOfRemainingRecordsDuringSharedLibraryExit:0];
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __45__CPLEngineStore__setSharingScopeIdentifier___block_invoke;
  v18[3] = &unk_1E86204A0;
  v19 = v6;
  v20 = self;
  v11 = v6;
  [(CPLEngineStore *)self _addCleanupBlock:v18];

  v12 = *MEMORY[0x1E69E9840];
}

void __45__CPLEngineStore__setSharingScopeIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v7 = 138543362;
        v8 = v5;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "Resetting sharing scope identifier to %{public}@", &v7, 0xCu);
      }
    }

    objc_storeStrong((*(a1 + 40) + 16), *(a1 + 32));
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)markAsCorrupted
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Marking the store as corrupted manually", v5, 2u);
    }
  }

  v4 = [(CPLEngineStore *)self platformObject];
  [v4 markAsCorrupted];
}

- (void)emergencyClose
{
  v2 = [(CPLEngineStore *)self platformObject];
  [v2 emergencyClose];
}

- (void)stopVacuum
{
  v2 = [(CPLEngineStore *)self platformObject];
  [v2 stopVacuum];
}

- (void)startVacuumWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStore *)self platformObject];
  [v5 startVacuumWithCompletionHandler:v4];
}

- (BOOL)storeVersionHasChanged
{
  v2 = [(CPLEngineStore *)self platformObject];
  v3 = [v2 storeVersionHasChanged];

  return v3;
}

- (BOOL)clientCanPushScopeChange:(id)a3
{
  v4 = [a3 scopeType];
  v5 = [(CPLEngineStore *)self libraryOptions];
  if (v4 > 8)
  {
    goto LABEL_7;
  }

  if (((1 << v4) & 0xC) != 0)
  {
    return (v5 >> 2) & 1;
  }

  if (((1 << v4) & 0x30) != 0)
  {
    LODWORD(v5) = (isSharedLibraryFeatureEnabled | ~overridesSharedLibraryFeatureFlag) & (v5 >> 3) & 1;
    return v5;
  }

  if (((1 << v4) & 0x180) != 0)
  {
    LOBYTE(v5) = CPLIsCollectionShareFeatureEnabled() & ((v5 & 0x10) != 0);
  }

  else
  {
LABEL_7:
    LOBYTE(v5) = v4 == 1 && (v5 & 2) != 0;
  }

  return v5;
}

- (BOOL)canActivateScope:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStore *)self libraryOptions];
  if ([(CPLEngineStore *)self _canHaveActivatedScope:v6 libraryOptions:v7 error:a4])
  {
    v8 = +[CPLScopeChange shouldAutoActivateScopeWithType:](CPLScopeChange, "shouldAutoActivateScopeWithType:", [v6 scopeType]);
    v9 = !v8;
    if (a4 && v8)
    {
      v10 = [v6 scopeIdentifier];
      v11 = +[CPLScopeChange descriptionForScopeType:](CPLScopeChange, "descriptionForScopeType:", [v6 scopeType]);
      v12 = [CPLLibraryManager descriptionForLibraryOptions:v7];
      *a4 = [CPLErrors cplErrorWithCode:38 description:@"You are not allowed to activate %@ (%@) with these library options (%@)", v10, v11, v12];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_canHaveActivatedScope:(id)a3 libraryOptions:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [v8 scopeType];
  if (![CPLScopeChange supportsActivationOfScopeWithType:v9])
  {
    if (!a5)
    {
LABEL_23:
      LOBYTE(self) = 0;
      goto LABEL_24;
    }

    v10 = [v8 scopeIdentifier];
    v11 = +[CPLScopeChange descriptionForScopeType:](CPLScopeChange, "descriptionForScopeType:", [v8 scopeType]);
    *a5 = [CPLErrors cplErrorWithCode:38 description:@"%@ (%@) is not supported", v10, v11];
LABEL_22:

    goto LABEL_23;
  }

  if (v9 > 8)
  {
    goto LABEL_12;
  }

  if (((1 << v9) & 0xC) != 0)
  {
    self = ((a4 >> 2) & 1);
    if (!a5)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (((1 << v9) & 0x30) != 0)
  {
    v12 = [v8 scopeIdentifier];
    LOBYTE(self) = [(CPLEngineStore *)self mainScopeSupportsSharingScopeWithIdentifier:v12];

    if (!a5)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (((1 << v9) & 0x180) != 0)
  {
    LODWORD(self) = CPLIsCollectionShareFeatureEnabled() & (a4 >> 4);
    if (!a5)
    {
      goto LABEL_24;
    }
  }

  else
  {
LABEL_12:
    if (v9 == 1)
    {
      v13 = [v8 scopeIdentifier];
      v14 = [(CPLEngineStore *)self mainScopeIdentifier];
      v15 = [v13 isEqualToString:v14];

      if (v15)
      {
        LOBYTE(self) = 1;
        goto LABEL_24;
      }

      self = ((a4 >> 1) & 1);
      if (!a5)
      {
        goto LABEL_24;
      }
    }

    else
    {
      LOBYTE(self) = 0;
      if (!a5)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_20:
  if ((self & 1) == 0)
  {
    v10 = [v8 scopeIdentifier];
    v11 = +[CPLScopeChange descriptionForScopeType:](CPLScopeChange, "descriptionForScopeType:", [v8 scopeType]);
    v16 = [CPLLibraryManager descriptionForLibraryOptions:a4];
    *a5 = [CPLErrors cplErrorWithCode:38 description:@"%@ (%@) can't be active with these library options (%@)", v10, v11, v16];

    goto LABEL_22;
  }

LABEL_24:

  return self;
}

- (CPLTransportScopeMapping)transactionTransportScopeMapping
{
  transactionTransportScopeMapping = self->_transactionTransportScopeMapping;
  if (!transactionTransportScopeMapping)
  {
    v4 = [CPLTransportScopeMapping alloc];
    v5 = [(CPLEngineStore *)self engineLibrary];
    v6 = [v5 transport];
    v7 = [(CPLTransportScopeMapping *)v4 initWithTranslator:v6];
    v8 = self->_transactionTransportScopeMapping;
    self->_transactionTransportScopeMapping = v7;

    transactionTransportScopeMapping = self->_transactionTransportScopeMapping;
  }

  return transactionTransportScopeMapping;
}

- (BOOL)syncSessionShouldRequestMoreTime
{
  v3 = [(CPLEngineScopeStorage *)self->_scopes primaryScope];
  if (v3 && ![(CPLEngineScopeStorage *)self->_scopes valueForFlag:16 forScope:v3])
  {
    if ([(CPLEngineScopeStorage *)self->_scopes hasFinishedInitialDownloadForScope:v3])
    {
      v6 = [(CPLEngineScopeStorage *)self->_scopes sharingScopeForScope:v3];
      if (v6)
      {
        v4 = ![(CPLEngineScopeStorage *)self->_scopes hasFinishedInitialDownloadForScope:v6];
      }

      else
      {
        LOBYTE(v4) = 0;
      }
    }

    else
    {
      LOBYTE(v4) = 1;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)predictSyncSessionValue:(id)a3 ofType:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEBUG, "Updating prediction for %@ to %@", &v13, 0x16u);
    }
  }

  transactionNewPredictions = self->_transactionNewPredictions;
  if (!transactionNewPredictions)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = self->_transactionNewPredictions;
    self->_transactionNewPredictions = v10;

    transactionNewPredictions = self->_transactionNewPredictions;
  }

  [(NSMutableDictionary *)transactionNewPredictions setObject:v6 forKeyedSubscript:v7];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)wipeStoreAtNextOpeningWithReason:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CPLEngineStore *)self platformObject];
  [v8 wipeStoreAtNextOpeningWithReason:v7 completionBlock:v6];
}

- (BOOL)storeDerivativesFilter:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStore *)self platformObject];
  LOBYTE(a4) = [v7 storeDerivativesFilter:v6 error:a4];

  return a4;
}

- (id)derivativesFilter
{
  v2 = [(CPLEngineStore *)self platformObject];
  v3 = [v2 derivativesFilter];

  return v3;
}

- (id)localResourceForCloudResource:(id)a3 recordClass:(Class *)a4
{
  v6 = a3;
  v7 = [v6 itemScopedIdentifier];
  if (v7)
  {
    v12 = 0;
    v8 = [(CPLEngineIDMapping *)self->_idMapping localScopedIdentifierForCloudScopedIdentifier:v7 isFinal:&v12];
    if (v8)
    {
      v9 = [(CPLEngineStore *)self transactionClientCacheView];
      v10 = [v9 resourceOfType:objc_msgSend(v6 forRecordWithScopedIdentifier:"resourceType") recordClass:v8 error:{a4, 0}];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)setShouldUpdateDisabledFeaturesWithError:(id *)a3
{
  v5 = [(CPLEngineStore *)self platformObject];
  v6 = [v5 setShouldUpdateDisabledFeaturesWithError:a3];

  if (v6)
  {
    self->_scheduleDisabledFeatureUpdateOnWriteSuccess = 1;
  }

  return v6;
}

- (BOOL)shouldUpdateDisabledFeatures
{
  v2 = [(CPLEngineStore *)self platformObject];
  v3 = [v2 shouldUpdateDisabledFeatures];

  return v3;
}

- (NSArray)disabledFeatures
{
  disabledFeatures = self->_disabledFeatures;
  if (!disabledFeatures)
  {
    v5 = [(CPLEngineStore *)self _storedDisabledFeatures];
    v6 = self->_disabledFeatures;
    self->_disabledFeatures = v5;

    disabledFeatures = self->_disabledFeatures;
    v2 = vars8;
  }

  if (disabledFeatures)
  {
    v7 = disabledFeatures;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (BOOL)isFeatureDisabled:(id)a3
{
  v4 = a3;
  disabledFeatures = self->_disabledFeatures;
  if (!disabledFeatures)
  {
    v6 = [(CPLEngineStore *)self _storedDisabledFeatures];
    v7 = self->_disabledFeatures;
    self->_disabledFeatures = v6;

    disabledFeatures = self->_disabledFeatures;
  }

  v8 = [(NSArray *)disabledFeatures containsObject:v4];

  return v8;
}

- (BOOL)updateDisabledFeatures:(id)a3 didReset:(BOOL *)a4 error:(id *)a5
{
  v92 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v57 = a4;
  *a4 = 0;
  disabledFeatures = self->_disabledFeatures;
  *&self->_hasUpdatedDisabledFeatures = 257;
  if (!disabledFeatures)
  {
    v10 = [(CPLEngineStore *)self _storedDisabledFeatures];
    v11 = self->_disabledFeatures;
    self->_disabledFeatures = v10;
  }

  v62 = self;
  v12 = MEMORY[0x1E695E0F0];
  if (v8)
  {
    v12 = v8;
  }

  v58 = v12;
  v13 = v12;

  v14 = [v13 mutableCopy];
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  p_disabledFeatures = &self->_disabledFeatures;
  v16 = self->_disabledFeatures;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v83 objects:v91 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v84;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v84 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v83 + 1) + 8 * i);
        v22 = [v14 indexOfObject:v21];
        if (v22 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v15 addObject:v21];
        }

        else
        {
          [v14 removeObjectAtIndex:v22];
        }
      }

      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v83 objects:v91 count:16];
    }

    while (v18);
  }

  v23 = &propertiesForChangeType__facesProperties;
  if (![v15 count] && !objc_msgSend(v14, "count"))
  {
    v27 = 0;
    v68 = 0;
    v69 = 0;
    v24 = v62;
    goto LABEL_75;
  }

  v24 = v62;
  if ([v15 count])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v25 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v15 componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v90 = v26;
        _os_log_impl(&dword_1DC05A000, v25, OS_LOG_TYPE_DEFAULT, "Features re-enabled: %@", buf, 0xCu);

        v24 = v62;
      }
    }

    v60 = a5;
    v61 = v13;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    obj = v15;
    v66 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
    if (v66)
    {
      v68 = 0;
      v69 = 0;
      v27 = 0;
      v64 = *v80;
LABEL_24:
      v28 = 0;
      while (1)
      {
        if (*v80 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v79 + 1) + 8 * v28);
        v30 = objc_autoreleasePoolPush();
        v31 = [CPLFeature featureWithName:v29];
        v32 = v31;
        if (v31)
        {
          v78 = v27;
          v33 = [v31 enableFeatureInStore:v24 error:&v78];
          v34 = v78;

          v27 = v34;
          if (!v33)
          {
            goto LABEL_68;
          }
        }

        if (v24->_shouldTriggerCompleteResetSyncAfterDisabledFeaturesUpdate && v69 == 0)
        {
          v69 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ has been re-enabled", v29];
        }

        if (v24->_shouldTriggerResetSyncAfterDisabledFeaturesUpdate && !v68)
        {
          v68 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ has been re-enabled", v29];
        }

        objc_autoreleasePoolPop(v30);
        if (v66 == ++v28)
        {
          v66 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
          if (v66)
          {
            goto LABEL_24;
          }

          goto LABEL_43;
        }
      }
    }

    v68 = 0;
    v69 = 0;
    v27 = 0;
LABEL_43:

    a5 = v60;
    v13 = v61;
    v23 = &propertiesForChangeType__facesProperties;
  }

  else
  {
    v27 = 0;
    v68 = 0;
    v69 = 0;
  }

  if ([v14 count])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v36 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [v14 componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v90 = v37;
        _os_log_impl(&dword_1DC05A000, v36, OS_LOG_TYPE_DEFAULT, "Features disabled: %@", buf, 0xCu);

        v24 = v62;
      }
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    obj = v14;
    v67 = [obj countByEnumeratingWithState:&v74 objects:v87 count:16];
    if (!v67)
    {
      v43 = 1;
LABEL_70:

      goto LABEL_72;
    }

    v60 = a5;
    v61 = v13;
    v65 = *v75;
LABEL_51:
    v38 = 0;
    while (1)
    {
      if (*v75 != v65)
      {
        objc_enumerationMutation(obj);
      }

      v39 = *(*(&v74 + 1) + 8 * v38);
      v30 = objc_autoreleasePoolPush();
      v40 = [CPLFeature featureWithName:v39];
      v32 = v40;
      if (v40)
      {
        v73 = v27;
        v41 = [v40 disableFeatureInStore:v24 error:&v73];
        v34 = v73;

        v27 = v34;
        if (!v41)
        {
          break;
        }
      }

      if (v24->_shouldTriggerCompleteResetSyncAfterDisabledFeaturesUpdate && v69 == 0)
      {
        v69 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ has been disabled", v39];
      }

      if (v24->_shouldTriggerResetSyncAfterDisabledFeaturesUpdate && !v68)
      {
        v68 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ has been disabled", v39];
      }

      objc_autoreleasePoolPop(v30);
      if (v67 == ++v38)
      {
        v43 = 1;
        v67 = [obj countByEnumeratingWithState:&v74 objects:v87 count:16];
        if (v67)
        {
          goto LABEL_51;
        }

        a5 = v60;
        v13 = v61;
        goto LABEL_69;
      }
    }

LABEL_68:

    objc_autoreleasePoolPop(v30);
    v43 = 0;
    v27 = v34;
    a5 = v60;
    v13 = v61;
    v24 = v62;
LABEL_69:
    v23 = &propertiesForChangeType__facesProperties;
    goto LABEL_70;
  }

  v43 = 1;
LABEL_72:
  v44 = [(CPLEngineStore *)v24 engineLibrary];
  [v44 updateDisabledFeatures:v13];

  if (!v43)
  {
    goto LABEL_83;
  }

LABEL_75:
  v45 = v27;
  v46 = [(CPLEngineStore *)v24 platformObject];
  v72 = v27;
  v47 = v24;
  v48 = [v46 storeDisabledFeatures:v13 error:&v72];
  v27 = v72;

  if (!v48)
  {
    v24 = v47;
LABEL_83:
    v50 = 0;
    v24->_isUpdatingDisabledFeatures = 0;
    goto LABEL_91;
  }

  objc_storeStrong(p_disabledFeatures, v58);
  v47->_isUpdatingDisabledFeatures = 0;
  if (v47->_shouldTriggerCompleteResetSyncAfterDisabledFeaturesUpdate)
  {
    if ((v23[51] & 1) == 0)
    {
      v49 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v90 = v69;
        _os_log_impl(&dword_1DC05A000, v49, OS_LOG_TYPE_ERROR, "Triggering complete reset sync now because %@", buf, 0xCu);
      }
    }

    *v57 = 1;
    v71 = v27;
    v50 = [(CPLEngineStore *)v47 resetCompleteSyncStateWithCause:v69 error:&v71];
    v51 = v71;
  }

  else
  {
    if (!v47->_shouldTriggerResetSyncAfterDisabledFeaturesUpdate)
    {
      *&v47->_shouldTriggerCompleteResetSyncAfterDisabledFeaturesUpdate = 0;
      v50 = 1;
      goto LABEL_94;
    }

    if ((v23[51] & 1) == 0)
    {
      v52 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v90 = v69;
        _os_log_impl(&dword_1DC05A000, v52, OS_LOG_TYPE_ERROR, "Triggering complete reset sync now because %@", buf, 0xCu);
      }
    }

    *v57 = 1;
    v70 = v27;
    v50 = [(CPLEngineStore *)v47 resetLocalSyncStateWithCause:v68 error:&v70];
    v51 = v70;
  }

  v53 = v51;

  v27 = v53;
  v24 = v62;
LABEL_91:
  *&v24->_shouldTriggerCompleteResetSyncAfterDisabledFeaturesUpdate = 0;
  if (a5 && (v50 & 1) == 0)
  {
    v54 = v27;
    v50 = 0;
    *a5 = v27;
  }

LABEL_94:

  v55 = *MEMORY[0x1E69E9840];
  return v50;
}

- (id)_storedDisabledFeatures
{
  v2 = [(CPLEngineStore *)self platformObject];
  v3 = [v2 disabledFeatures];

  return v3;
}

- (BOOL)hasUnacknowledgedChanges
{
  if ([(CPLChangeBatch *)self->_unacknowledgedBatch count])
  {
    return 1;
  }

  v4 = [(CPLEngineStore *)self platformObject];
  v5 = [v4 hasStoredChangeSessionUpdate];

  return v5;
}

- (id)unacknowledgedChangeWithLocalScopedIdentifier:(id)a3
{
  v4 = a3;
  unacknowledgedBatch = self->_unacknowledgedBatch;
  if (unacknowledgedBatch)
  {
    v6 = [(CPLChangeBatch *)unacknowledgedBatch recordWithScopedIdentifier:v4];
  }

  else
  {
    v7 = [(CPLEngineStore *)self platformObject];
    v8 = [v7 storedChangeSessionUpdate];

    if (v8)
    {
      v6 = [v8 pendingRecordChangeForClientCacheWithLocalScopedIdentifier:v4];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)dropUnacknowledgedBatch
{
  unacknowledgedBatch = self->_unacknowledgedBatch;
  self->_unacknowledgedBatch = 0;

  [(CPLEngineStore *)self _dropTransactionClientCacheView];
  self->_discardUnacknowledgedBatchOnTransactionFail = 0;
}

- (void)keepUnacknowledgedBatch:(id)a3
{
  objc_storeStrong(&self->_unacknowledgedBatch, a3);
  [(CPLEngineStore *)self _dropTransactionClientCacheView];
  self->_discardUnacknowledgedBatchOnTransactionFail = 1;
}

- (BOOL)checkExpectedLibraryVersion:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStore *)self libraryVersion];
  v8 = [v7 isEqualToString:v6];

  if (a4 && (v8 & 1) == 0)
  {
    *a4 = [CPLErrors invalidClientCacheErrorWithReason:@"Client cache has been reset during session"];
  }

  return v8;
}

- (BOOL)hasPendingChangeSessionUpdate
{
  v2 = [(CPLEngineStore *)self platformObject];
  v3 = [v2 hasStoredChangeSessionUpdate];

  return v3;
}

- (BOOL)forceApplyPendingChangeSessionUpdateWithError:(id *)a3
{
  if (!self->_applyingChangeSessionUpdate)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [(CPLEngineStore *)self platformObject];
    v8 = [v7 storedChangeSessionUpdate];

    if (v8)
    {
      v13 = 0;
      v9 = [(CPLEngineStore *)self _applyAndDiscardPendingUpdate:v8 error:&v13];
      v10 = v13;
      if (!v9)
      {

        objc_autoreleasePoolPop(v6);
        if (a3)
        {
          v11 = v10;
          v3 = 0;
          *a3 = v10;
        }

        else
        {
          v3 = 0;
        }

        goto LABEL_11;
      }

      [(CPLEngineStore *)self _unschedulePendingUpdateApply];
    }

    else
    {
      v10 = 0;
    }

    objc_autoreleasePoolPop(v6);
    v3 = 1;
LABEL_11:

    return v3;
  }

  return 1;
}

- (BOOL)applyPreviousChangeSessionUpdateWithExpectedLibraryVersion:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (self->_dontDelayChangeSessionUpdate)
  {
    v7 = [(CPLEngineStore *)self checkExpectedLibraryVersion:v6 error:a4];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [(CPLEngineStore *)self platformObject];
    v10 = [v9 storedChangeSessionUpdate];

    if (v10)
    {
      v18 = 0;
      v11 = [(CPLEngineStore *)self _applyAndDiscardPendingUpdate:v10 error:&v18];
      v12 = v18;
      if (v11)
      {
        [(CPLEngineStore *)self _unschedulePendingUpdateApply];
        v17 = v12;
        v7 = [(CPLEngineStore *)self storeClientIsInSyncWithClientCacheWithError:&v17];
        v13 = v17;

        v12 = v13;
      }

      else
      {
        [CPLResetTracker registerLikelyResetReason:@"Failed to apply delayed update (%@) to client cache", objc_opt_class()];
        v7 = 0;
      }
    }

    else
    {
      v16 = 0;
      v7 = [(CPLEngineStore *)self checkExpectedLibraryVersion:v6 error:&v16];
      v12 = v16;
    }

    objc_autoreleasePoolPop(v8);
    if (a4 && !v7)
    {
      v14 = v12;
      *a4 = v12;
    }
  }

  return v7;
}

- (BOOL)beginChangeSession:(id)a3 withLibraryVersion:(id)a4 resetTracker:(id)a5 error:(id *)a6
{
  v92 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (_CPLDontDelayChangeSessionUpdate == 1)
  {
    self->_dontDelayChangeSessionUpdate = _CPLDontDelayChangeSessionUpdate;
  }

  else
  {
    v14 = [MEMORY[0x1E695E000] standardUserDefaults];
    self->_dontDelayChangeSessionUpdate = [v14 BOOLForKey:@"CPLDontDelayChangeSessionUpdate"];
  }

  p_pendingTracker = &self->_pendingTracker;
  pendingTracker = self->_pendingTracker;
  if (pendingTracker)
  {
    v17 = [(CPLResetTracker *)pendingTracker likelyResetDate];
    [v17 timeIntervalSinceNow];
    if (v18 < -60.0)
    {
      v19 = *p_pendingTracker;
      *p_pendingTracker = 0;
    }
  }

  v84 = a2;
  if (v12)
  {
    v20 = [(CPLEngineStore *)self libraryVersion];
    if (!v20)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v74 = __CPLStoreOSLogDomain_3044();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1DC05A000, v74, OS_LOG_TYPE_ERROR, "Library version should be set here", buf, 2u);
        }
      }

      v75 = [MEMORY[0x1E696AAA8] currentHandler];
      v76 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStore.m"];
      [v75 handleFailureInMethod:a2 object:self file:v76 lineNumber:1802 description:@"Library version should be set here"];

      abort();
    }

    v21 = v20;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v22 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v87 = v12;
        v88 = 2112;
        v89 = v21;
        v90 = 2112;
        v91 = v11;
        _os_log_impl(&dword_1DC05A000, v22, OS_LOG_TYPE_DEBUG, "Checking client version %@ against our own version %@ during %@", buf, 0x20u);
      }
    }

    v23 = v11;
    v24 = [v21 isEqualToString:v12];
    v25 = [(CPLEngineStore *)self platformObject];
    v26 = [v25 storedChangeSessionUpdate];

    if (v24)
    {
      v27 = a6;
      if (!v26)
      {
        v42 = v23;
        if ((_CPLSilentLogging & 1) == 0)
        {
          v56 = __CPLStoreOSLogDomain_3044();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v87 = v12;
            v88 = 2112;
            v89 = v23;
            _os_log_impl(&dword_1DC05A000, v56, OS_LOG_TYPE_DEBUG, "Client has the correct version (%@). Starting %@", buf, 0x16u);
          }
        }

        v57 = [(CPLEngineStore *)self storeClientIsInSyncWithClientCacheWithError:a6];

        v40 = 0;
        v41 = 0;
        if (!v57)
        {
          goto LABEL_87;
        }

        goto LABEL_68;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v28 = __CPLStoreOSLogDomain_3044();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = [v26 libraryVersion];
          *buf = 138412802;
          v87 = v12;
          v88 = 2112;
          v89 = v29;
          v90 = 2112;
          v91 = v23;
          _os_log_impl(&dword_1DC05A000, v28, OS_LOG_TYPE_ERROR, "Client has an incorrect version (%@) but it matches the previous version, discarding lost pending update (%@). Recovering %@", buf, 0x20u);

          v27 = a6;
        }
      }

      if ([v26 discardFromStore:self error:v27])
      {
        v30 = [(CPLEngineStore *)self _storeChangeSessionUpdate:0 error:v27];
        [(CPLEngineStore *)self _unschedulePendingUpdateApply];

        if (!v30)
        {
          goto LABEL_76;
        }

        goto LABEL_37;
      }

      goto LABEL_75;
    }

    if (v26)
    {
      v43 = [v26 libraryVersion];
      v44 = [v12 isEqualToString:v43];

      if (v44)
      {
        v27 = a6;
        if ((_CPLSilentLogging & 1) == 0)
        {
          v45 = __CPLStoreOSLogDomain_3044();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v87 = v12;
            v88 = 2112;
            v89 = v23;
            _os_log_impl(&dword_1DC05A000, v45, OS_LOG_TYPE_ERROR, "Client has the correct version (%@) after an unfinished session. Recovering %@", buf, 0x16u);
          }
        }

        if ([(CPLEngineStore *)self _applyAndDiscardPendingUpdate:v26 error:a6])
        {
          [(CPLEngineStore *)self _unschedulePendingUpdateApply];

LABEL_37:
          v46 = [(CPLEngineStore *)self storeClientIsInSyncWithClientCacheWithError:v27];

          v42 = v23;
          if (!v46)
          {
            goto LABEL_77;
          }

          v40 = 1;
          goto LABEL_68;
        }

        [CPLResetTracker registerLikelyResetReason:@"Failed to apply delayed update (%@) to client cache", objc_opt_class()];
LABEL_75:

LABEL_76:
        v42 = v23;
LABEL_77:
        if (v27)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v21 = __CPLStoreOSLogDomain_3044();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v68 = *v27;
              *buf = 138412290;
              v87 = v68;
              v69 = "Failed to recover mismatched session: %@";
              v70 = v21;
              v71 = 12;
LABEL_84:
              _os_log_impl(&dword_1DC05A000, v70, OS_LOG_TYPE_ERROR, v69, buf, v71);
              goto LABEL_85;
            }

            goto LABEL_85;
          }
        }

        else if ((_CPLSilentLogging & 1) == 0)
        {
          v21 = __CPLStoreOSLogDomain_3044();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v69 = "Failed to recover mismatched session";
            v70 = v21;
            v71 = 2;
            goto LABEL_84;
          }

LABEL_85:
          v41 = 0;
LABEL_86:

          goto LABEL_87;
        }

        v41 = 0;
        goto LABEL_87;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v58 = __CPLStoreOSLogDomain_3044();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v59 = [v26 libraryVersion];
          *buf = 138412802;
          v87 = v12;
          v88 = 2112;
          v89 = v21;
          v90 = 2112;
          v91 = v59;
          _os_log_impl(&dword_1DC05A000, v58, OS_LOG_TYPE_ERROR, "Client has an incorrect version (%@) - current version is (%@) and pending version is (%@). Client will have to perform a reset sync", buf, 0x20u);
        }

LABEL_63:
      }
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v58 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v87 = v12;
        v88 = 2112;
        v89 = v21;
        _os_log_impl(&dword_1DC05A000, v58, OS_LOG_TYPE_ERROR, "Client has an incorrect version (%@) - current version is (%@). Client will have to perform a reset sync", buf, 0x16u);
      }

      goto LABEL_63;
    }

    if (a6)
    {
      *a6 = +[CPLErrors versionMismatchError];
    }

    [CPLResetTracker registerLikelyResetReason:@"version mismatch during %@", v23];

    v42 = v23;
    goto LABEL_85;
  }

  v31 = objc_alloc(MEMORY[0x1E696AEC0]);
  v83 = v11;
  v32 = [objc_opt_class() shortDescription];
  v33 = [v31 initWithFormat:@"client library version reset in a %@ session", v32];

  if (([v13 hasReasons] & 1) == 0 && *p_pendingTracker)
  {
    v34 = *p_pendingTracker;

    v13 = v34;
  }

  v35 = [(CPLEngineStore *)self platformObject];
  v36 = [v35 isClientInSyncWithClientCache];

  if (v36)
  {
    v37 = [v13 likelyResetReasonWithImmediateReason:v33];
    v38 = [v13 likelyResetDate];
    v39 = [(CPLEngineStore *)self resetLocalSyncStateWithCause:v37 date:v38 error:a6];

    v40 = 0;
    v41 = 0;
    v42 = v83;
    if (!v39)
    {
      goto LABEL_87;
    }
  }

  else
  {
    v47 = [(CPLEngineStore *)self platformObject];
    v48 = [v47 storedChangeSessionUpdate];

    if (v48)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v49 = __CPLStoreOSLogDomain_3044();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v50 = [v13 likelyResetReasonWithImmediateReason:v33];
          *buf = 138412290;
          v87 = v50;
          _os_log_impl(&dword_1DC05A000, v49, OS_LOG_TYPE_ERROR, "Client is resetting library version but we are already out of sync - we still need to discard a pending update (%@)", buf, 0xCu);
        }
      }

      v85 = 0;
      v51 = [v48 discardFromStore:self error:&v85];
      v52 = v85;
      if ((v51 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
      {
        v53 = __CPLStoreOSLogDomain_3044();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v54 = objc_opt_class();
          *buf = 138412546;
          v87 = v54;
          v88 = 2112;
          v89 = v52;
          v82 = v54;
          _os_log_impl(&dword_1DC05A000, v53, OS_LOG_TYPE_ERROR, "Failed to cleanly discard pending update (%@): %@", buf, 0x16u);
        }
      }

      v55 = [(CPLEngineStore *)self _storeChangeSessionUpdate:0 error:a6];

      v40 = 0;
      v41 = 0;
      v42 = v83;
      if (!v55)
      {
        goto LABEL_87;
      }
    }

    else
    {

      v40 = 0;
      v42 = v83;
    }
  }

LABEL_68:
  v60 = [(CPLEngineStore *)self platformObject];
  v61 = [v60 hasStoredChangeSessionUpdate];

  if (v61)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v77 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        v78 = [objc_opt_class() shortDescription];
        *buf = 138412290;
        v87 = v78;
        _os_log_impl(&dword_1DC05A000, v77, OS_LOG_TYPE_ERROR, "A %@ session should always start with not pending updates", buf, 0xCu);
      }
    }

    v79 = [MEMORY[0x1E696AAA8] currentHandler];
    v80 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStore.m"];
    v81 = [objc_opt_class() shortDescription];
    [v79 handleFailureInMethod:v84 object:self file:v80 lineNumber:1872 description:{@"A %@ session should always start with not pending updates", v81}];

    abort();
  }

  if (v40)
  {
    v62 = objc_alloc(MEMORY[0x1E696AEC0]);
    v63 = v42;
    v64 = [objc_opt_class() shortDescription];
    v21 = [v62 initWithFormat:@"client library version reset in a %@ session", v64];

    v65 = [(CPLEngineStore *)self mainScopeIdentifier];
    v66 = [v13 likelyResetDate];
    v67 = [v13 likelyResetReasonWithImmediateReason:v21];
    [(CPLEngineStore *)self _storeResetEvent:@"recover" scopeIdentifier:v65 date:v66 pending:0 cause:v67];

    if ([v13 hasReasons])
    {
      objc_storeStrong(&self->_pendingTracker, v13);
    }

    v41 = 1;
    v42 = v63;
    goto LABEL_86;
  }

  v41 = 1;
LABEL_87:

  v72 = *MEMORY[0x1E69E9840];
  return v41;
}

- (BOOL)storeChangeSessionUpdate:(id)a3 error:(id *)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (self->_dontDelayChangeSessionUpdate)
  {
    if (![v7 applyToStore:self error:a4])
    {
      v12 = 0;
      goto LABEL_8;
    }

    v9 = [(CPLEngineStore *)self storeClientIsInSyncWithClientCacheWithError:a4];
  }

  else
  {
    v10 = [(CPLEngineStore *)self platformObject];
    v11 = [v10 hasStoredChangeSessionUpdate];

    if (v11)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v15 = __CPLStoreOSLogDomain_3044();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = [(CPLEngineStore *)self platformObject];
          v17 = [v16 storedChangeSessionUpdate];
          *buf = 138412546;
          v23 = v8;
          v24 = 2112;
          v25 = v17;
          _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_ERROR, "Trying to store %@ while %@ is already stored", buf, 0x16u);
        }
      }

      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStore.m"];
      v20 = [(CPLEngineStore *)self platformObject];
      v21 = [v20 storedChangeSessionUpdate];
      [v18 handleFailureInMethod:a2 object:self file:v19 lineNumber:1782 description:{@"Trying to store %@ while %@ is already stored", v8, v21}];

      abort();
    }

    [(CPLEngineStore *)self _schedulePendingUpdateApply];
    v9 = [(CPLEngineStore *)self _storeChangeSessionUpdate:v8 error:a4];
  }

  v12 = v9;
LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)_storeChangeSessionUpdate:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(CPLEngineStore *)self _dropTransactionClientCacheView];
  v7 = [(CPLEngineStore *)self platformObject];
  LOBYTE(a4) = [v7 storeChangeSessionUpdate:v6 error:a4];

  return a4;
}

- (NSArray)pushPullGatekeepers
{
  v2 = [(CPLEngineStore *)self platformObject];
  v3 = [v2 pushPullGatekeepers];

  return v3;
}

- (BOOL)clearAllPushPullGatekeepersWithError:(id *)a3
{
  v4 = [(CPLEngineStore *)self platformObject];
  LOBYTE(a3) = [v4 storePushPullGatekeepers:0 error:a3];

  return a3;
}

- (BOOL)addPushPullGatekeeper:(id)a3 error:(id *)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CPLEngineStore *)self platformObject];
  v8 = [v7 pushPullGatekeepers];

  v9 = [v8 count];
  v10 = [(CPLEngineStore *)self platformObject];
  if (v9)
  {
    v11 = [v8 arrayByAddingObject:v6];
  }

  else
  {
    v16[0] = v6;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  }

  v12 = v11;

  v13 = [v10 storePushPullGatekeepers:v12 error:a4];
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)_unschedulePendingUpdateApply
{
  if (self->_schedulePendingUpdateApplyOnWriteSuccess)
  {
    self->_schedulePendingUpdateApplyOnWriteSuccess = 0;
  }

  self->_unschedulePendingUpdateApplyOnWriteSuccess = 1;
}

- (void)_schedulePendingUpdateApply
{
  if (self->_unschedulePendingUpdateApplyOnWriteSuccess)
  {
    self->_unschedulePendingUpdateApplyOnWriteSuccess = 0;
  }

  self->_schedulePendingUpdateApplyOnWriteSuccess = 1;
}

- (void)_reallyUnschedulePendingUpdateApply
{
  self->_pendingUpdateInterval = 0.0;
  pendingUpdateQueue = self->_pendingUpdateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CPLEngineStore__reallyUnschedulePendingUpdateApply__block_invoke;
  block[3] = &unk_1E861A940;
  block[4] = self;
  dispatch_sync(pendingUpdateQueue, block);
}

void __53__CPLEngineStore__reallyUnschedulePendingUpdateApply__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 112);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 112);
    *(v3 + 112) = 0;
  }
}

- (void)_reallySchedulePendingUpdateApply
{
  pendingUpdateInterval = self->_pendingUpdateInterval;
  v5 = 30.0;
  if (pendingUpdateInterval > 0.0)
  {
    if (pendingUpdateInterval <= 30.0)
    {
      v5 = self->_pendingUpdateInterval;
    }

    self->_pendingUpdateInterval = 0.0;
  }

  v7[6] = v2;
  v7[7] = v3;
  pendingUpdateQueue = self->_pendingUpdateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__CPLEngineStore__reallySchedulePendingUpdateApply__block_invoke;
  v7[3] = &unk_1E861B100;
  v7[4] = self;
  *&v7[5] = v5;
  dispatch_sync(pendingUpdateQueue, v7);
}

void __51__CPLEngineStore__reallySchedulePendingUpdateApply__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v2 = *(a1 + 32);
  }

  v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v2 + 120));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__CPLEngineStore__reallySchedulePendingUpdateApply__block_invoke_2;
  v10[3] = &unk_1E861B290;
  v10[4] = *(a1 + 32);
  v5 = v4;
  v11 = v5;
  dispatch_source_set_event_handler(v5, v10);
  v6 = dispatch_time(0, 1000000000 * *(a1 + 40));
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  dispatch_resume(v5);
  v7 = *(a1 + 32);
  v8 = *(v7 + 112);
  *(v7 + 112) = v5;
  v9 = v5;
}

void __51__CPLEngineStore__reallySchedulePendingUpdateApply__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2[14] == v1)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __51__CPLEngineStore__reallySchedulePendingUpdateApply__block_invoke_3;
    v4[3] = &unk_1E86205B8;
    v4[4] = v2;
    v5 = v1;
    v3 = [v2 performWriteTransactionWithBlock:v4 completionHandler:&__block_literal_global_343];
  }
}

void __51__CPLEngineStore__reallySchedulePendingUpdateApply__block_invoke_3(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 120);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CPLEngineStore__reallySchedulePendingUpdateApply__block_invoke_4;
  block[3] = &unk_1E861F868;
  block[4] = v5;
  v23 = v4;
  v24 = &v25;
  dispatch_sync(v6, block);
  if (*(v26 + 24) == 1)
  {
    v7 = [v3 error];
    v8 = v7 == 0;

    if (v8)
    {
      v9 = [*(a1 + 32) platformObject];
      v10 = [v9 storedChangeSessionUpdate];

      if (v10)
      {
        v11 = *(a1 + 32);
        v21 = 0;
        v12 = [v11 _applyPendingUpdate:v10 error:&v21];
        v13 = v21;
        if (v12)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v14 = __CPLStoreOSLogDomain_3044();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v15 = objc_opt_class();
              *buf = 138412290;
              v30 = v15;
              v16 = v15;
              _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Applied pending update %@ automatically because client did not do it", buf, 0xCu);
            }
          }
        }

        else
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v17 = __CPLStoreOSLogDomain_3044();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = objc_opt_class();
              *buf = 138412546;
              v30 = v18;
              v31 = 2112;
              v32 = v13;
              v19 = v18;
              _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_ERROR, "Failed to apply pending update %@ automatically because client did not do it: %@", buf, 0x16u);
            }
          }

          [v3 setError:v13];
        }
      }
    }
  }

  _Block_object_dispose(&v25, 8);
  v20 = *MEMORY[0x1E69E9840];
}

void __51__CPLEngineStore__reallySchedulePendingUpdateApply__block_invoke_4(void *a1)
{
  v1 = a1[4];
  v2 = *(v1 + 112);
  if (v2 == a1[5])
  {
    *(v1 + 112) = 0;

    *(*(a1[6] + 8) + 24) = 1;
  }
}

- (BOOL)_applyPendingUpdate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v7 = [(CPLEngineStore *)self _applyAndDiscardPendingUpdate:v6 error:&v19];
  v8 = v19;
  v9 = v8;
  if (!v7)
  {
    if ([v8 isCPLErrorWithCode:20] && (objc_msgSend(v9, "userInfo"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKeyedSubscript:", @"CPLErrorResetReason"), v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
    {
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to apply delayed update (%@) to client cache: %@", objc_opt_class(), v11, v18];
    }

    else
    {
      v13 = objc_alloc(MEMORY[0x1E696AEC0]);
      v14 = objc_opt_class();
      v11 = [v9 domain];
      v12 = [v13 initWithFormat:@"Failed to apply delayed update (%@) to client cache (%@/%ld)", v14, v11, objc_msgSend(v9, "code")];
    }

    v15 = v12;

    if (a4)
    {
      v16 = v9;
      *a4 = v9;
    }

    [CPLResetTracker registerLikelyResetReason:@"%@", v15];
  }

  return v7;
}

- (BOOL)_applyAndDiscardPendingUpdate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  LOBYTE(v8) = 1;
  if (!self->_applyingChangeSessionUpdate)
  {
    self->_applyingChangeSessionUpdate = 1;
    v15 = 0;
    v8 = [v6 applyToStore:self error:&v15];
    v9 = v15;
    v10 = v9;
    if (v8)
    {
      v14 = v9;
      LOBYTE(v8) = [(CPLEngineStore *)self _storeChangeSessionUpdate:0 error:&v14];
      v11 = v14;

      v10 = v11;
    }

    if (a4 && (v8 & 1) == 0)
    {
      v12 = v10;
      *a4 = v10;
    }

    self->_applyingChangeSessionUpdate = 0;
  }

  return v8;
}

- (void)notePushRepositoryStoredSomeChanges
{
  if (self->_transactionClientCacheView)
  {
    if (!self->_transactionClientCacheViewHasPushRepository)
    {
      [(CPLEngineStore *)self _dropTransactionClientCacheView];
    }
  }
}

- (CPLRecordStorageView)transactionClientCacheView
{
  transactionClientCacheView = self->_transactionClientCacheView;
  if (!transactionClientCacheView)
  {
    v4 = [(CPLEngineStore *)self newClientCacheViewUsesPushRepository:&self->_transactionClientCacheViewHasPushRepository];
    v5 = self->_transactionClientCacheView;
    self->_transactionClientCacheView = v4;

    transactionClientCacheView = self->_transactionClientCacheView;
  }

  return transactionClientCacheView;
}

- (id)corruptionInfo
{
  v2 = [(CPLEngineStore *)self platformObject];
  v3 = [v2 corruptionInfo];

  return v3;
}

- (NSDate)libraryCreationDate
{
  v2 = [(CPLEngineStore *)self platformObject];
  v3 = [v2 libraryCreationDate];

  return v3;
}

- (BOOL)storeClientIsInSyncWithClientCacheWithError:(id *)a3
{
  v4 = [(CPLEngineStore *)self platformObject];
  LOBYTE(a3) = [v4 storeClientIsInSyncWithClientCacheWithError:a3];

  return a3;
}

- (BOOL)storeLastQuarantineCountReportDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStore *)self platformObject];
  LOBYTE(a4) = [v7 storeLastQuarantineCountReportDate:v6 error:a4];

  return a4;
}

- (id)lastQuarantineCountReportDate
{
  v2 = [(CPLEngineStore *)self platformObject];
  v3 = [v2 lastQuarantineCountReportDate];

  return v3;
}

- (BOOL)storeUserIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStore *)self platformObject];
  v8 = [v7 storeUserIdentifier:v6 error:a4];

  if (!v6 && v8)
  {
    self->_scheduleSetupOnWriteSuccess = 1;
  }

  return v8;
}

- (id)userIdentifier
{
  v2 = [(CPLEngineStore *)self platformObject];
  v3 = [v2 userIdentifier];

  return v3;
}

- (BOOL)pushRepositoryIsFull
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(CPLEngineScopeStorage *)self->_scopes enumeratorForScopesIncludeInactive:0, 0];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        pushRepository = self->_pushRepository;
        v9 = [*(*(&v13 + 1) + 8 * i) scopeIdentifier];
        LOBYTE(pushRepository) = [(CPLEnginePushRepository *)pushRepository hasChangesInScopeWithIdentifier:v9];

        if (pushRepository)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)createNewLibraryVersion
{
  v2 = [(CPLEngineStore *)self platformObject];
  v3 = [v2 createNewLibraryVersion];

  return v3;
}

- (id)libraryVersion
{
  v2 = [(CPLEngineStore *)self platformObject];
  v3 = [v2 libraryVersion];

  return v3;
}

- (void)_updateShouldSyncScopeList:(BOOL)a3
{
  shouldSyncScopeListQueue = self->_shouldSyncScopeListQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__CPLEngineStore__updateShouldSyncScopeList___block_invoke;
  v4[3] = &unk_1E861F7F0;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(shouldSyncScopeListQueue, v4);
}

uint64_t __45__CPLEngineStore__updateShouldSyncScopeList___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 172) & 1) == 0 && *(result + 40) == 1)
  {
    *(v1 + 152) = 1;
  }

  return result;
}

- (BOOL)updateLibraryOptions:(unint64_t)a3 error:(id *)a4
{
  v7 = [(CPLEngineStore *)self platformObject];
  v8 = [v7 updateLibraryOptions:a3 error:a4];

  if (v8)
  {
    [(CPLEngineStore *)self _updateShouldSyncScopeList:[(CPLEngineStore *)self _shouldSyncScopeListWithOptions:a3]];
  }

  return v8;
}

- (unint64_t)libraryOptions
{
  v2 = [(CPLEngineStore *)self platformObject];
  v3 = [v2 libraryOptions];

  return v3;
}

- (BOOL)storeLibraryVersion:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStore *)self platformObject];
  LOBYTE(a4) = [v7 storeLibraryVersion:v6 withError:a4];

  return a4;
}

- (void)closeAndDeactivate:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = v6;
  if (v4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__CPLEngineStore_closeAndDeactivate_completionHandler___block_invoke;
    v8[3] = &unk_1E861F2E8;
    v8[4] = self;
    v10 = 1;
    v9 = v6;
    [(CPLEngineStore *)self wipeStoreAtNextOpeningWithReason:@"wiping database because it has been marked as deactivated" completionBlock:v8];
  }

  else
  {
    [(CPLEngineStore *)self _closeAndDeactivate:0 completionHandler:v6];
  }
}

- (void)_closeAndDeactivate:(BOOL)a3 completionHandler:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ([(CPLEngineStore *)self state]== 2)
  {
    [(CPLEngineStore *)self setState:3];
    v7 = [[CPLEngineStoreTransaction alloc] initForWrite:1 store:self identifier:@"cpl.store.close" description:@"close store"];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = [(CPLEngineStore *)self platformObject];
        *buf = 138412290;
        v18 = v9;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEBUG, "Closing concrete store: %@", buf, 0xCu);
      }
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__CPLEngineStore__closeAndDeactivate_completionHandler___block_invoke;
    v13[3] = &unk_1E861B090;
    v13[4] = self;
    v14 = v7;
    v16 = a3;
    v15 = v6;
    v10 = v7;
    [(CPLEngineStore *)self _performBarrierTransaction:v10 withBlock:v13];
  }

  else
  {
    v11 = [CPLErrors incorrectMachineStateErrorWithReason:@"Library is not open"];
    (*(v6 + 2))(v6, v11);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __56__CPLEngineStore__closeAndDeactivate_completionHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__CPLEngineStore__closeAndDeactivate_completionHandler___block_invoke_2;
  v5[3] = &unk_1E861F360;
  v7 = *(a1 + 56);
  v5[4] = v3;
  v6 = v2;
  [v3 _performTransaction:v6 withBlock:v5];
  [*(a1 + 32) _unschedulePendingUpdateApply];
  [*(a1 + 32) _commitWriteTransaction:*(a1 + 40) commitError:0];
  v4 = [*(a1 + 40) error];
  [*(a1 + 32) setState:0];
  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) _releaseDirty];
}

uint64_t __56__CPLEngineStore__closeAndDeactivate_completionHandler___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = @"Closing";
      if (*(a1 + 48))
      {
        v3 = @"Deactivating";
      }

      v4 = *(*(a1 + 32) + 8);
      *buf = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ all storages: %@", buf, 0x16u);
    }
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__CPLEngineStore__closeAndDeactivate_completionHandler___block_invoke_328;
  v8[3] = &unk_1E861B998;
  v9 = *(a1 + 48);
  v5 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  result = [v5 do:v8];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __56__CPLEngineStore__closeAndDeactivate_completionHandler___block_invoke_328(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) == 1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "Marking database as deactivated", buf, 2u);
      }
    }

    v5 = [*(a1 + 32) platformObject];
    v6 = [v5 markDatabaseAsDeactivatedWithError:a2];
  }

  else
  {
    v6 = 1;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = *(*(a1 + 32) + 8);
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v6 &= [*(*(&v16 + 1) + 8 * i) closeWithError:{a2, v16}];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v9);
  }

  v12 = [*(a1 + 32) platformObject];
  v13 = [v12 closeWithError:a2];

  v14 = *MEMORY[0x1E69E9840];
  return v13 & v6;
}

- (void)performBarrier
{
  [(CPLEngineStore *)self performBatchedWriteTransactionBarrier];
  v3 = [(CPLEngineStore *)self platformObject];
  [v3 performBarrier];
}

- (void)performBatchedWriteTransactionBarrierWithCompletionBlock:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  batchedTransactionsQueue = self->_batchedTransactionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__CPLEngineStore_performBatchedWriteTransactionBarrierWithCompletionBlock___block_invoke;
  block[3] = &unk_1E861A850;
  block[4] = self;
  block[5] = &v15;
  dispatch_sync(batchedTransactionsQueue, block);
  if (*(v16 + 24) == 1)
  {
    v6 = [[CPLEngineStoreTransaction alloc] initForWrite:0 store:self identifier:@"cpl.store.batch.barrier" description:@"barrier for batched write"];
    v7 = [(CPLEngineStore *)self platformObject];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__CPLEngineStore_performBatchedWriteTransactionBarrierWithCompletionBlock___block_invoke_2;
    v11[3] = &unk_1E861ECD0;
    v13 = v4;
    v8 = v6;
    v12 = v8;
    [v7 performBarrierTransaction:v8 withBlock:v11];
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __75__CPLEngineStore_performBatchedWriteTransactionBarrierWithCompletionBlock___block_invoke_4;
    v9[3] = &unk_1E861C660;
    v10 = v4;
    [(CPLEngineStore *)self performBatchedWriteTransactionWithBlock:&__block_literal_global_312 completionHandler:v9];
    v8 = v10;
  }

  _Block_object_dispose(&v15, 8);
}

uint64_t __75__CPLEngineStore_performBatchedWriteTransactionBarrierWithCompletionBlock___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) count];
  *(*(*(a1 + 40) + 8) + 24) = result == 0;
  return result;
}

uint64_t __75__CPLEngineStore_performBatchedWriteTransactionBarrierWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _releaseDirty];
}

- (void)performBatchedWriteTransactionBarrier
{
  batchedTransactionsQueue = self->_batchedTransactionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CPLEngineStore_performBatchedWriteTransactionBarrier__block_invoke;
  block[3] = &unk_1E861A940;
  block[4] = self;
  dispatch_sync(batchedTransactionsQueue, block);
}

- (void)performBatchedWriteTransactionWithBlock:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_dontBatchTransactions == 1)
  {
    v8 = [(CPLEngineStore *)self performWriteTransactionWithBlock:v6 completionHandler:v7];
  }

  else
  {
    batchedTransactionsQueue = self->_batchedTransactionsQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __76__CPLEngineStore_performBatchedWriteTransactionWithBlock_completionHandler___block_invoke;
    v13[3] = &unk_1E861E9A8;
    v14 = v6;
    v15 = v7;
    v13[4] = self;
    v10 = v13;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cpl_dispatch_async_block_invoke_682;
    block[3] = &unk_1E861B4E0;
    v17 = v10;
    v11 = batchedTransactionsQueue;
    v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v11, v12);
  }
}

void __76__CPLEngineStore_performBatchedWriteTransactionWithBlock_completionHandler___block_invoke(void *a1)
{
  v3 = objc_alloc_init(_CPLEngineStoreBatchedTransaction);
  [(_CPLEngineStoreBatchedTransaction *)v3 setBlock:a1[5]];
  [(_CPLEngineStoreBatchedTransaction *)v3 setCompletionHandler:a1[6]];
  [*(a1[4] + 32) addObject:v3];
  v2 = a1[4];
  if ((v2[40] & 1) == 0)
  {
    [v2 _scheduleBatchedTransactionsLocked];
  }
}

- (void)_reallyPerformBatchedTransactionsLocked
{
  if ([(NSMutableArray *)self->_batchedTransactions count])
  {
    v6[0] = 0;
    v6[1] = v6;
    v6[2] = 0x3032000000;
    v6[3] = __Block_byref_object_copy__677;
    v6[4] = __Block_byref_object_dispose__678;
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4[5] = v6;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __57__CPLEngineStore__reallyPerformBatchedTransactionsLocked__block_invoke;
    v5[3] = &unk_1E8620A60;
    v5[4] = self;
    v5[5] = v6;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __57__CPLEngineStore__reallyPerformBatchedTransactionsLocked__block_invoke_3;
    v4[3] = &unk_1E8620A60;
    v4[4] = self;
    v3 = [(CPLEngineStore *)self performWriteTransactionWithBlock:v5 completionHandler:v4];
    _Block_object_dispose(v6, 8);
  }
}

void __57__CPLEngineStore__reallyPerformBatchedTransactionsLocked__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  Current = CFAbsoluteTimeGetCurrent();
  v5 = MEMORY[0x1E69E9820];
  while (1)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__677;
    v15 = __Block_byref_object_dispose__678;
    v16 = 0;
    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    v10[0] = v5;
    v10[1] = 3221225472;
    v10[2] = __57__CPLEngineStore__reallyPerformBatchedTransactionsLocked__block_invoke_2;
    v10[3] = &unk_1E861A850;
    v10[4] = v6;
    v10[5] = &v11;
    dispatch_sync(v7, v10);
    if (!v12[5])
    {
      break;
    }

    [*(*(*(a1 + 40) + 8) + 40) addObject:?];
    v8 = [v12[5] block];
    (v8)[2](v8, v3);

    v9 = [v3 error];

    if (v9 || CFAbsoluteTimeGetCurrent() - Current > 2.0)
    {
      break;
    }

    _Block_object_dispose(&v11, 8);
  }

  _Block_object_dispose(&v11, 8);
}

void __57__CPLEngineStore__reallyPerformBatchedTransactionsLocked__block_invoke_3(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 completionHandler];
        (v10)[2](v10, v3);

        [v9 _releaseDirty];
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v6);
  }

  v11 = *(a1 + 32);
  v12 = *(v11 + 24);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57__CPLEngineStore__reallyPerformBatchedTransactionsLocked__block_invoke_4;
  v17[3] = &unk_1E861A940;
  v17[4] = v11;
  v13 = v17;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_682;
  block[3] = &unk_1E861B4E0;
  v23 = v13;
  v14 = v12;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v14, v15);

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __57__CPLEngineStore__reallyPerformBatchedTransactionsLocked__block_invoke_4(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 40) & 1) == 0)
  {
    v2 = result;
    result = [*(v1 + 32) count];
    if (result)
    {
      v3 = *(v2 + 32);

      return [v3 _scheduleBatchedTransactionsLocked];
    }
  }

  return result;
}

void __57__CPLEngineStore__reallyPerformBatchedTransactionsLocked__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) firstObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = *(*(a1 + 32) + 32);

    [v5 removeObjectAtIndex:0];
  }
}

- (void)_scheduleBatchedTransactionsLocked
{
  self->_batchedTransactionDequeueIsScheduled = 1;
  v3 = dispatch_walltime(0, 1000000000);
  batchedTransactionsQueue = self->_batchedTransactionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__CPLEngineStore__scheduleBatchedTransactionsLocked__block_invoke;
  block[3] = &unk_1E861A940;
  block[4] = self;
  dispatch_after(v3, batchedTransactionsQueue, block);
}

void __52__CPLEngineStore__scheduleBatchedTransactionsLocked__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(a1 + 32) + 40) = 0;
  [*(a1 + 32) _reallyPerformBatchedTransactionsLocked];

  objc_autoreleasePoolPop(v2);
}

- (void)blockWriteTransactionsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStore *)self platformObject];
  [v5 blockWriteTransactionsWithCompletionHandler:v4];
}

- (id)_performWriteTransactionByPassBlocker:(id)a3 WithBlock:(id)a4 completionHandler:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[CPLEngineStoreTransaction alloc] initForWrite:1 store:self identifier:@"cpl.store.write" description:@"write store"];
  [v11 setBlocker:v8];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v12 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v11;
      _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEBUG, "Will write store with %@", &buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_engineLibrary);
  v14 = [WeakRetained hasChangesToProcess];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v34 = 0x2020000000;
  v35 = v14;
  v15 = [(CPLEngineStore *)self platformObject];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __84__CPLEngineStore__performWriteTransactionByPassBlocker_WithBlock_completionHandler___block_invoke;
  v29[3] = &unk_1E861EAC8;
  v29[4] = self;
  v30 = v11;
  v16 = v9;
  v31 = v16;
  p_buf = &buf;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __84__CPLEngineStore__performWriteTransactionByPassBlocker_WithBlock_completionHandler___block_invoke_302;
  v23[3] = &unk_1E861B970;
  v17 = v30;
  v24 = v17;
  v25 = self;
  v27 = &buf;
  v28 = v14;
  v18 = v10;
  v26 = v18;
  [v15 performWriteTransaction:v17 withBlock:v29 completionHandler:v23];

  v19 = v26;
  v20 = v17;

  _Block_object_dispose(&buf, 8);
  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

void __84__CPLEngineStore__performWriteTransactionByPassBlocker_WithBlock_completionHandler___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__CPLEngineStore__performWriteTransactionByPassBlocker_WithBlock_completionHandler___block_invoke_2;
  v8[3] = &unk_1E861EAC8;
  v3 = (a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = *v3;
  *&v7 = v5;
  *(&v7 + 1) = *v2;
  v9 = v7;
  v10 = v6;
  [v4 _performTransaction:v5 withBlock:v8];
}

void __84__CPLEngineStore__performWriteTransactionByPassBlocker_WithBlock_completionHandler___block_invoke_302(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Finished writing %@", &v9, 0xCu);
    }
  }

  [*(a1 + 40) _commitWriteTransaction:*(a1 + 32) commitError:v3];
  if (!v3 && *(*(*(a1 + 56) + 8) + 24) != *(a1 + 64))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 200));
    [WeakRetained setHasChangesToProcess:*(*(*(a1 + 56) + 8) + 24)];
  }

  v7 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) _releaseDirty];

  v8 = *MEMORY[0x1E69E9840];
}

void __84__CPLEngineStore__performWriteTransactionByPassBlocker_WithBlock_completionHandler___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 32);
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "Performing %@", &v7, 0xCu);
    }
  }

  v4 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
  v5 = [*(a1 + 32) error];

  if (v5)
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(*(a1 + 40) + 216) hasStagedSyncAnchors];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_commitWriteTransaction:(id)a3 commitError:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  state = self->_state;
  v9 = [v6 error];

  v36 = v6;
  v37 = self;
  v35 = v7;
  if (v9)
  {
    goto LABEL_27;
  }

  if (v7)
  {
    if (state != 3)
    {
      if ([v7 isCPLOperationCancelledError])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v10 = __CPLTransactionOSLogDomain();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v49 = v6;
            v11 = "! %@ commit failed: operation was cancelled";
            v12 = v10;
            v13 = OS_LOG_TYPE_DEBUG;
            v14 = 12;
LABEL_24:
            _os_log_impl(&dword_1DC05A000, v12, v13, v11, buf, v14);
            goto LABEL_25;
          }

          goto LABEL_25;
        }
      }

      else if ((_CPLSilentLogging & 1) == 0)
      {
        v10 = __CPLTransactionOSLogDomain();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v49 = v6;
          v50 = 2112;
          v51 = v7;
          v11 = "! %@ commit failed: %@";
          v12 = v10;
          v13 = OS_LOG_TYPE_ERROR;
          v14 = 22;
          goto LABEL_24;
        }

LABEL_25:
      }
    }

    [v6 setError:v7];
LABEL_27:
    if (state == 3 && (_CPLSilentLogging & 1) == 0)
    {
      v24 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = [v6 error];
        *buf = 138412290;
        v49 = v25;
        _os_log_impl(&dword_1DC05A000, v24, OS_LOG_TYPE_ERROR, "Closing transaction did fail: %@", buf, 0xCu);
      }
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v26 = self->_storages;
    v27 = [(NSHashTable *)v26 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v43;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v43 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v42 + 1) + 8 * i);
          if (state == 3 && (_CPLSilentLogging & 1) == 0)
          {
            v32 = __CPLStoreOSLogDomain_3044();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v33 = [v31 name];
              *buf = 138543362;
              v49 = v33;
              _os_log_impl(&dword_1DC05A000, v32, OS_LOG_TYPE_DEFAULT, "Closing %{public}@ after failed transaction", buf, 0xCu);
            }
          }

          [v31 writeTransactionDidFail];
        }

        v28 = [(NSHashTable *)v26 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v28);
    }

    v23 = v37;
    [(CPLEngineStore *)v37 writeTransactionDidFail];
    goto LABEL_45;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = self->_storages;
  v16 = [(NSHashTable *)v15 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v39;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v39 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v38 + 1) + 8 * j);
        if (state == 3 && (_CPLSilentLogging & 1) == 0)
        {
          v21 = __CPLStoreOSLogDomain_3044();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [v20 name];
            *buf = 138543362;
            v49 = v22;
            _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_DEFAULT, "Closing %{public}@", buf, 0xCu);
          }
        }

        [v20 writeTransactionDidSucceed];
      }

      v17 = [(NSHashTable *)v15 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v17);
  }

  v23 = self;
  [(CPLEngineStore *)self writeTransactionDidSucceed];
LABEL_45:
  [(CPLEngineStore *)v23 _finishTransaction];

  v34 = *MEMORY[0x1E69E9840];
}

- (void)writeTransactionDidFail
{
  self->_shouldEnableScopeListSyncOnWriteSuccess = 0;
  self->_pendingUpdateInterval = 0.0;
  *(&self->_pendingUpdateInterval + 5) = 0.0;
  if (self->_discardUnacknowledgedBatchOnTransactionFail)
  {
    self->_discardUnacknowledgedBatchOnTransactionFail = 0;
    unacknowledgedBatch = self->_unacknowledgedBatch;
    self->_unacknowledgedBatch = 0;
  }

  if (self->_hasUpdatedDisabledFeatures)
  {
    disabledFeatures = self->_disabledFeatures;
    self->_disabledFeatures = 0;

    self->_hasUpdatedDisabledFeatures = 0;
  }

  transactionNewPredictions = self->_transactionNewPredictions;
  self->_transactionNewPredictions = 0;

  v6 = [(CPLEngineStore *)self platformObject];
  [v6 writeTransactionDidFail];
}

- (id)performReadTransactionWithBlock:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[CPLEngineStoreTransaction alloc] initForWrite:0 store:self identifier:@"cpl.store.read" description:@"read store"];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEBUG, "Will read store with %@", buf, 0xCu);
    }
  }

  v7 = [(CPLEngineStore *)self platformObject];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__CPLEngineStore_performReadTransactionWithBlock___block_invoke;
  v14[3] = &unk_1E861B3D0;
  v14[4] = self;
  v8 = v5;
  v15 = v8;
  v16 = v4;
  v9 = v4;
  [v7 performReadTransaction:v8 withBlock:v14];

  v10 = v16;
  v11 = v8;

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

void __50__CPLEngineStore_performReadTransactionWithBlock___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __50__CPLEngineStore_performReadTransactionWithBlock___block_invoke_2;
  v7 = &unk_1E861AA50;
  v8 = v2;
  v9 = *(a1 + 48);
  [v3 _performTransaction:v8 withBlock:&v4];
  [*(a1 + 40) _releaseDirty];
}

uint64_t __50__CPLEngineStore_performReadTransactionWithBlock___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 32);
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "Performing %@", &v7, 0xCu);
    }
  }

  v4 = *(a1 + 32);
  result = (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)openWithCompletionHandler:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CPLEngineStore *)self state])
  {
    v5 = [CPLErrors incorrectMachineStateErrorWithReason:@"Can't open library if it's not closed first"];
    v4[2](v4, v5);
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = [(CPLEngineStore *)self platformObject];
        *buf = 138412290;
        v15 = v7;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEBUG, "Opening concrete store: %@", buf, 0xCu);
      }
    }

    [(CPLEngineStore *)self setState:1];
    v8 = [[CPLEngineStoreTransaction alloc] initForWrite:1 store:self identifier:@"cpl.store.open" description:@"open store"];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __44__CPLEngineStore_openWithCompletionHandler___block_invoke;
    v11[3] = &unk_1E861B3D0;
    v11[4] = self;
    v12 = v8;
    v13 = v4;
    v9 = v8;
    [(CPLEngineStore *)self _performBarrierTransaction:v9 withBlock:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __44__CPLEngineStore_openWithCompletionHandler___block_invoke(id *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v2 = a1[5];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __44__CPLEngineStore_openWithCompletionHandler___block_invoke_2;
  v14[3] = &unk_1E861B290;
  v14[4] = v3;
  v15 = v2;
  [v3 _performTransaction:v15 withBlock:v14];
  v4 = [a1[5] error];
  [a1[4] setState:2 * (v4 == 0)];
  [a1[4] _commitWriteTransaction:a1[5] commitError:v4];
  v5 = [a1[4] _resetEventsDescriptions];
  if (v5 && (_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 componentsJoinedByString:@"\n\t"];
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEFAULT, "Last reset events:\n\t%@", buf, 0xCu);
    }
  }

  if (v4)
  {
    v8 = a1[4];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__CPLEngineStore_openWithCompletionHandler___block_invoke_288;
    v10[3] = &unk_1E861AB18;
    v13 = a1[6];
    v11 = v4;
    v12 = a1[5];
    [v8 _forceCloseWithCompletionHandler:v10];
  }

  else
  {
    (*(a1[6] + 2))();
    [a1[5] _releaseDirty];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __44__CPLEngineStore_openWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(*(a1 + 32) + 8);
      *buf = 138412290;
      v23 = v3;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "Opening all storages: %@", buf, 0xCu);
    }
  }

  [*(*(a1 + 32) + 344) discardCache];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __44__CPLEngineStore_openWithCompletionHandler___block_invoke_254;
  v20[3] = &unk_1E8620478;
  v4 = *(a1 + 40);
  v20[4] = *(a1 + 32);
  [v4 do:v20];
  v5 = [*(a1 + 32) platformObject];
  if (![v5 storeVersionHasChanged])
  {
LABEL_15:

    goto LABEL_16;
  }

  v6 = [*(a1 + 40) error];

  if (!v6)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = *(*(a1 + 32) + 8);
    v7 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
LABEL_9:
      v10 = 0;
      while (1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = *(a1 + 40);
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __44__CPLEngineStore_openWithCompletionHandler___block_invoke_284;
        v15[3] = &unk_1E8620478;
        v15[4] = v11;
        [v12 do:v15];
        v13 = [*(a1 + 40) error];

        if (v13)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
          if (v8)
          {
            goto LABEL_9;
          }

          goto LABEL_15;
        }
      }
    }

    goto LABEL_15;
  }

LABEL_16:
  v14 = *MEMORY[0x1E69E9840];
}

void __44__CPLEngineStore_openWithCompletionHandler___block_invoke_288(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v3;
        v5 = "Failed to close database after opening error: %@";
        v6 = v4;
        v7 = OS_LOG_TYPE_ERROR;
        v8 = 12;
LABEL_8:
        _os_log_impl(&dword_1DC05A000, v6, v7, v5, &v10, v8);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      v5 = "Closed database after opening error";
      v6 = v4;
      v7 = OS_LOG_TYPE_DEFAULT;
      v8 = 2;
      goto LABEL_8;
    }

LABEL_9:
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 32));
  [*(a1 + 40) _releaseDirty];

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __44__CPLEngineStore_openWithCompletionHandler___block_invoke_254(uint64_t a1, NSObject **a2)
{
  v155 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) platformObject];
  v4 = [v3 openWithError:a2];

  if (!v4)
  {
    goto LABEL_31;
  }

  v5 = *(a1 + 32);
  v6 = [v5 platformObject];
  *(*(a1 + 32) + 172) = [v5 _shouldSyncScopeListWithOptions:{objc_msgSend(v6, "libraryOptions")}];

  v7 = *(a1 + 32);
  if ((*(v7 + 172) & 1) == 0)
  {
    v8 = [MEMORY[0x1E695E000] standardUserDefaults];
    *(*(a1 + 32) + 172) = [v8 BOOLForKey:@"CPLForceScopeListSync"];

    v7 = *(a1 + 32);
  }

  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v9 = *(v7 + 8);
  v10 = [v9 countByEnumeratingWithState:&v142 objects:v154 count:16];
  if (v10)
  {
    v11 = *v143;
LABEL_6:
    v12 = 0;
    while (1)
    {
      if (*v143 != v11)
      {
        objc_enumerationMutation(v9);
      }

      if (![*(*(&v142 + 1) + 8 * v12) openWithError:a2])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v9 countByEnumeratingWithState:&v142 objects:v154 count:16];
        if (!v10)
        {
          goto LABEL_12;
        }

        goto LABEL_6;
      }
    }

    goto LABEL_30;
  }

LABEL_12:

  [*(a1 + 32) _loadResetEvents];
  v13 = [*(a1 + 32) platformObject];
  v4 = [v13 executePostOpenWithError:a2];

  if (!v4)
  {
    goto LABEL_31;
  }

  v14 = [*(*(a1 + 32) + 208) storedExtractedBatch];
  if (v14)
  {
    v15 = *(*(a1 + 32) + 208);
    if ((_CPLSilentLogging & 1) == 0)
    {
      v16 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v14 batch];
        v18 = [v15 name];
        *buf = 138412546;
        v147 = v17;
        v148 = 2114;
        v149 = *&v18;
        _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_DEFAULT, "Reinjecting %@ in %{public}@", buf, 0x16u);
      }
    }

    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v19 = [v14 batch];
    v20 = [v19 countByEnumeratingWithState:&v138 objects:v153 count:16];
    if (v20)
    {
      v21 = *v139;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v139 != v21)
          {
            objc_enumerationMutation(v19);
          }

          [*(*(&v138 + 1) + 8 * i) _setShouldNotTrustCloudCache:1];
        }

        v20 = [v19 countByEnumeratingWithState:&v138 objects:v153 count:16];
      }

      while (v20);
    }

    v23 = [v14 clientCacheIdentifier];
    v24 = v23 == 0;

    if (v24)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v40 = __CPLStoreOSLogDomain_3044();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1DC05A000, v40, OS_LOG_TYPE_ERROR, "Found extracted batch but no client cache identifier - triggering a reset sync", buf, 2u);
        }
      }

      v27 = +[CPLResetTracker currentTracker];
      v26 = [v27 likelyResetReasonWithImmediateReason:@"found extracted batch at launch without a client cache identifier"];
      v41 = [*(a1 + 32) resetLocalSyncStateWithCause:v26 error:a2];
      [CPLResetTracker discardTracker:v27];
    }

    else
    {
      v136 = 0;
      v137 = 0;
      v25 = [v15 reinjectExtractedBatch:v14 overwrittenRecordIdentifiers:&v137 error:&v136];
      v26 = v137;
      v27 = v136;
      if (v25)
      {
        v28 = *(*(a1 + 32) + 208);
        v135 = v27;
        v29 = [v28 storeExtractedBatch:0 error:&v135];
        v30 = v135;

        if (v29)
        {

          goto LABEL_61;
        }

        v27 = v30;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v42 = __CPLStoreOSLogDomain_3044();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = [v14 batch];
          *buf = 138412546;
          v147 = v43;
          v148 = 2112;
          v149 = *&v27;
          _os_log_impl(&dword_1DC05A000, v42, OS_LOG_TYPE_ERROR, "Re-injecting %@ failed: %@", buf, 0x16u);
        }
      }

      v44 = +[CPLResetTracker currentTracker];
      v45 = [v44 likelyResetReasonWithImmediateReason:@"failed to re-inject extracted batch at launch"];
      v41 = [*(a1 + 32) resetLocalSyncStateWithCause:v45 error:a2];
      [CPLResetTracker discardTracker:v44];
    }

    if ((v41 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

LABEL_61:
  v46 = [*(a1 + 32) platformObject];
  v47 = [v46 storedChangeSessionUpdate];

  if (v47)
  {
    v48 = [v47 queuedDate];
    [v48 timeIntervalSinceNow];
    if (v48 && v49 >= -30.0)
    {
      v50 = v49 + 30.0;
      if (v50 <= 30.0)
      {
        v51 = v50;
      }

      else
      {
        v51 = 30.0;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v52 = __CPLStoreOSLogDomain_3044();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v53 = objc_opt_class();
          *buf = 138412546;
          v147 = v53;
          v148 = 2048;
          v149 = v51;
          _os_log_impl(&dword_1DC05A000, v52, OS_LOG_TYPE_DEFAULT, "Store has some %@ to apply, will apply it in %.1fs", buf, 0x16u);
        }
      }

      *(*(a1 + 32) + 128) = v51;
      [*(a1 + 32) _schedulePendingUpdateApply];
      goto LABEL_78;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v54 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = objc_opt_class();
        *buf = 138412290;
        v147 = v55;
        _os_log_impl(&dword_1DC05A000, v54, OS_LOG_TYPE_DEFAULT, "Store has some %@ to apply, applying now", buf, 0xCu);
      }
    }

    v56 = *(a1 + 32);
    v134 = 0;
    v57 = [v56 _applyPendingUpdate:v47 error:&v134];
    v58 = v134;
    v59 = v58;
    if (v57)
    {

LABEL_78:
      goto LABEL_79;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v115 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v147 = v59;
        _os_log_impl(&dword_1DC05A000, v115, OS_LOG_TYPE_ERROR, "Failed to apply pending update, will trigger a reset sync: %@", buf, 0xCu);
      }
    }

    v116 = objc_alloc(MEMORY[0x1E696AEC0]);
    v117 = [v59 domain];
    v118 = [v116 initWithFormat:@"failed to apply pending update to store (%@/%ld)", v117, objc_msgSend(v59, "code")];

    v119 = +[CPLResetTracker currentTracker];
    v120 = [v119 likelyResetReasonWithImmediateReason:v118];

    LOBYTE(v118) = [*(a1 + 32) resetLocalSyncStateWithCause:v120 error:a2];
    [CPLResetTracker discardTracker:v119];

    if (v118)
    {
      goto LABEL_79;
    }

LABEL_30:
    v4 = 0;
    goto LABEL_31;
  }

LABEL_79:
  v60 = +[CPLFingerprintScheme supportsEPP];
  v61 = 21;
  if (v60)
  {
    v61 = 22;
  }

  v122 = v61;
  v123 = [*(a1 + 32) libraryOptions];
  v62 = [*(a1 + 32) engineLibrary];
  v121 = [v62 transport];

  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  obj = [*(*(a1 + 32) + 216) enumeratorForScopesIncludeInactive:1];
  v126 = [obj countByEnumeratingWithState:&v130 objects:v152 count:16];
  if (v126)
  {
    v125 = *v131;
    do
    {
      v63 = 0;
      do
      {
        if (*v131 != v125)
        {
          objc_enumerationMutation(obj);
        }

        v64 = *(*(&v130 + 1) + 8 * v63);
        v65 = [*(*(a1 + 32) + 216) flagsForScope:v64];
        v66 = [v65 valueForFlag:16];
        v67 = [v65 valueForFlag:4];
        if ((v66 & 1) == 0)
        {
          if (!v67 || ([v65 valueForFlag:0x10000] & 1) != 0)
          {
            v72 = *(a1 + 32);
            v129 = 0;
            v73 = [v72 _canHaveActivatedScope:v64 libraryOptions:v123 error:&v129];
            v74 = v129;
            if ((v73 & 1) == 0)
            {
              if ((_CPLSilentLogging & 1) == 0)
              {
                v106 = __CPLStoreOSLogDomain_3044();
                if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                {
                  v107 = [v74 localizedDescription];
                  *buf = 138412546;
                  v147 = v64;
                  v148 = 2112;
                  v149 = *&v107;
                  _os_log_impl(&dword_1DC05A000, v106, OS_LOG_TYPE_ERROR, "Opening store with incorrectly activated %@ (%@)", buf, 0x16u);
                }
              }

              v108 = objc_alloc(MEMORY[0x1E696AEC0]);
              v109 = +[CPLScopeChange descriptionForScopeType:](CPLScopeChange, "descriptionForScopeType:", [v64 scopeType]);
              v78 = [v108 initWithFormat:@"Found scope with type %@ active at opening time", v109];

              v110 = *(a1 + 32);
              v128[0] = MEMORY[0x1E69E9820];
              v128[1] = 3221225472;
              v128[2] = __44__CPLEngineStore_openWithCompletionHandler___block_invoke_281;
              v128[3] = &unk_1E861A940;
              v128[4] = v110;
              [v110 wipeStoreAtNextOpeningWithReason:v78 completionBlock:v128];
              if (a2)
              {
                v111 = v74;
                *a2 = v74;
              }

LABEL_195:

LABEL_196:
LABEL_197:

              goto LABEL_30;
            }

            v75 = [*(*(a1 + 32) + 216) supportedFeatureVersionInLastSyncForScope:v64];
            if (v75 >= v122)
            {

              goto LABEL_119;
            }

            v76 = [*(*(a1 + 32) + 216) scopeChangeForScope:v64];
            v77 = [v76 libraryInfo];
            v78 = [v77 featureVersionHistory];

            if (v78)
            {
              if (v75 < [v78 currentFeatureVersion])
              {
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v79 = __CPLStoreOSLogDomain_3044();
                  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                  {
                    v80 = [v64 scopeIdentifier];
                    v81 = [v78 currentFeatureVersion];
                    *buf = 138543874;
                    v147 = v80;
                    v148 = 2048;
                    v149 = *&v75;
                    v150 = 2048;
                    v151 = v81;
                    _os_log_impl(&dword_1DC05A000, v79, OS_LOG_TYPE_DEFAULT, "Last supported feature version in sync for %{public}@ is %lu while server feature version was at least %lu - will have to catch up some changes though", buf, 0x20u);
                  }

                  goto LABEL_116;
                }

LABEL_117:
                if (![*(*(a1 + 32) + 216) setScopeNeedsUpdateFromTransport:v64 error:a2])
                {
                  goto LABEL_195;
                }

                v86 = [*(*(a1 + 32) + 216) setScopeHasChangesToPullFromTransport:v64 error:a2];

                if ((v86 & 1) == 0)
                {
                  goto LABEL_197;
                }

LABEL_119:
                if (*(*(a1 + 32) + 16) || ([v64 scopeType] & 0xFFFFFFFFFFFFFFFELL) != 4)
                {
                  if (v66)
                  {
                    goto LABEL_158;
                  }
                }

                else
                {
                  if (overridesSharedLibraryFeatureFlag != 1 || (isSharedLibraryFeatureEnabled) && (v87 = *(a1 + 32), [v64 scopeIdentifier], v88 = objc_claimAutoreleasedReturnValue(), LODWORD(v87) = objc_msgSend(v87, "mainScopeSupportsSharingScopeWithIdentifier:", v88), v88, v87))
                  {
                    if (v66)
                    {
                      if (CPLAllowsInactiveSharedLibraryScope_onceToken != -1)
                      {
                        dispatch_once(&CPLAllowsInactiveSharedLibraryScope_onceToken, &__block_literal_global_5_24591);
                      }

                      if (CPLAllowsInactiveSharedLibraryScope_allowsInactiveSharedLibraryScope)
                      {
                        if (_CPLSilentLogging)
                        {
                          goto LABEL_158;
                        }

                        v74 = __CPLStoreOSLogDomain_3044();
                        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_141;
                        }

                        goto LABEL_157;
                      }

                      v74 = [*(*(a1 + 32) + 216) primaryScope];
                      if (!v74 || ([*(*(a1 + 32) + 216) valueForFlag:16 forScope:v74] & 1) != 0)
                      {
                        goto LABEL_157;
                      }

                      if ((_CPLSilentLogging & 1) == 0)
                      {
                        v101 = __CPLStoreOSLogDomain_3044();
                        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412290;
                          v147 = v64;
                          _os_log_impl(&dword_1DC05A000, v101, OS_LOG_TYPE_DEFAULT, "Found inactive shared library scope at opening time: %@ - automatically activating it", buf, 0xCu);
                        }
                      }

                      if (![*(*(a1 + 32) + 216) setValue:0 forFlag:16 forScope:v64 error:a2])
                      {
                        goto LABEL_196;
                      }

                      v102 = [*(*(a1 + 32) + 216) primaryScope];
                      if (!v102)
                      {
                        goto LABEL_157;
                      }

                      if ((_CPLSilentLogging & 1) == 0)
                      {
                        v103 = __CPLStoreOSLogDomain_3044();
                        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412290;
                          v147 = v102;
                          _os_log_impl(&dword_1DC05A000, v103, OS_LOG_TYPE_DEFAULT, "Resetting sync anchor for %@", buf, 0xCu);
                        }
                      }

                      v93 = [*(*(a1 + 32) + 216) resetSyncAnchorForScope:v102 error:a2];

                      goto LABEL_150;
                    }

                    if ((_CPLSilentLogging & 1) == 0)
                    {
                      v99 = __CPLStoreOSLogDomain_3044();
                      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v147 = v64;
                        _os_log_impl(&dword_1DC05A000, v99, OS_LOG_TYPE_DEFAULT, "Setting sharing scope to %@ at opening", buf, 0xCu);
                      }
                    }

                    v100 = *(a1 + 32);
                    v97 = [v64 scopeIdentifier];
                    [v100 _setSharingScopeIdentifier:v97];
                  }

                  else
                  {
                    if (v66)
                    {
                      if (_CPLSilentLogging)
                      {
                        goto LABEL_158;
                      }

                      v74 = __CPLStoreOSLogDomain_3044();
                      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
                      {
LABEL_141:
                        *buf = 138412290;
                        v147 = v64;
                        _os_log_impl(&dword_1DC05A000, v74, OS_LOG_TYPE_DEFAULT, "Found inactive shared library scope at opening time: %@", buf, 0xCu);
                      }

LABEL_157:

                      goto LABEL_158;
                    }

                    if ((_CPLSilentLogging & 1) == 0)
                    {
                      v96 = __CPLStoreOSLogDomain_3044();
                      if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v147 = v64;
                        _os_log_impl(&dword_1DC05A000, v96, OS_LOG_TYPE_ERROR, "Found an active shared library scope at opening time: %@ - this will need to be cleaned-up first", buf, 0xCu);
                      }
                    }

                    v97 = [*(a1 + 32) engineLibrary];
                    v98 = [v97 syncManager];
                    [v98 addBrokenScope:v64];
                  }
                }

                v89 = [v64 scopeType];
                if (v89 <= 8)
                {
                  if (((1 << v89) & 0xE) != 0)
                  {
                    goto LABEL_158;
                  }

                  if (((1 << v89) & 0x30) != 0)
                  {
                    if (overridesSharedLibraryFeatureFlag != 1 || (isSharedLibraryFeatureEnabled & 1) != 0)
                    {
                      goto LABEL_158;
                    }
                  }

                  else if ((1 << v89) & 0x180) != 0 && (CPLIsCollectionShareFeatureEnabled())
                  {
                    goto LABEL_158;
                  }
                }

                if (![v65 valueForFlag:4])
                {
                  if ((_CPLSilentLogging & 1) == 0)
                  {
                    v94 = __CPLStoreOSLogDomain_3044();
                    if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v147 = v64;
                      _os_log_impl(&dword_1DC05A000, v94, OS_LOG_TYPE_ERROR, "Found broken active scope at opening time: %@ - this will need to be cleaned-up first", buf, 0xCu);
                    }
                  }

                  v74 = [*(a1 + 32) engineLibrary];
                  v95 = [v74 syncManager];
                  [v95 addBrokenScope:v64];

                  goto LABEL_157;
                }

                if ((_CPLSilentLogging & 1) == 0)
                {
                  v90 = __CPLStoreOSLogDomain_3044();
                  if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v147 = v64;
                    _os_log_impl(&dword_1DC05A000, v90, OS_LOG_TYPE_ERROR, "Found broken active scope at opening time: %@ - the scope is already known to have ben deleted. Deleting the entry immediately", buf, 0xCu);
                  }
                }

LABEL_149:
                v91 = *(*(a1 + 32) + 216);
                v92 = [v64 scopeIdentifier];
                v93 = [v91 deleteScopeWithIdentifier:v92 error:a2];

LABEL_150:
                if ((v93 & 1) == 0)
                {
                  goto LABEL_197;
                }

                goto LABEL_158;
              }

              if (_CPLSilentLogging)
              {
                goto LABEL_117;
              }

              v79 = __CPLStoreOSLogDomain_3044();
              if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
              {
                v84 = [v64 scopeIdentifier];
                v85 = [v78 currentFeatureVersion];
                *buf = 138543874;
                v147 = v84;
                v148 = 2048;
                v149 = *&v75;
                v150 = 2048;
                v151 = v85;
                _os_log_impl(&dword_1DC05A000, v79, OS_LOG_TYPE_DEFAULT, "Last supported feature version in sync for %{public}@ is %lu while server feature version was likely %lu - might have to catch up some changes though", buf, 0x20u);
              }
            }

            else
            {
              if (_CPLSilentLogging)
              {
                goto LABEL_117;
              }

              v79 = __CPLStoreOSLogDomain_3044();
              if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
              {
                v83 = [v64 scopeIdentifier];
                *buf = 138543618;
                v147 = v83;
                v148 = 2048;
                v149 = *&v75;
                _os_log_impl(&dword_1DC05A000, v79, OS_LOG_TYPE_DEFAULT, "Last supported feature version in sync for %{public}@ is %lu - will have to confirm server feature version and maybe catch up some changes though", buf, 0x16u);
              }
            }

LABEL_116:

            goto LABEL_117;
          }

          if ((_CPLSilentLogging & 1) == 0)
          {
            v82 = __CPLStoreOSLogDomain_3044();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v147 = v64;
              _os_log_impl(&dword_1DC05A000, v82, OS_LOG_TYPE_ERROR, "Found remaining deleted scope %@ that should have been removed already", buf, 0xCu);
            }
          }

          goto LABEL_149;
        }

        if (v67)
        {
          goto LABEL_119;
        }

        v68 = [v64 scopeIdentifier];
        v69 = [v121 shouldIgnoreScopeWithIdentifier:v68];

        if (!v69)
        {
          goto LABEL_119;
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v70 = __CPLStoreOSLogDomain_3044();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            v71 = [v64 scopeIdentifier];
            *buf = 138543362;
            v147 = v71;
            _os_log_impl(&dword_1DC05A000, v70, OS_LOG_TYPE_DEFAULT, "%{public}@ should be ignored by this engine - removing it", buf, 0xCu);
          }
        }

        [v65 setValue:1 forFlag:4];
        if (([*(*(a1 + 32) + 216) updateFlags:v65 forScope:v64 error:a2] & 1) == 0)
        {
          goto LABEL_197;
        }

LABEL_158:

        ++v63;
      }

      while (v126 != v63);
      v104 = [obj countByEnumeratingWithState:&v130 objects:v152 count:16];
      v126 = v104;
    }

    while (v104);
  }

  if (![*(*(a1 + 32) + 272) sizeOfResourcesToUpload] || !objc_msgSend(*(*(a1 + 32) + 208), "isEmpty"))
  {
    goto LABEL_199;
  }

  v105 = [*(*(a1 + 32) + 208) storedExtractedBatch];
  if (v105)
  {

LABEL_199:
    v4 = 1;
    goto LABEL_31;
  }

  v112 = [*(a1 + 32) platformObject];
  v113 = [v112 hasStoredChangeSessionUpdate];

  if (v113)
  {
    goto LABEL_199;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v114 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DC05A000, v114, OS_LOG_TYPE_ERROR, "Resources storage has orphaned resources - clearing", buf, 2u);
    }
  }

  v4 = [*(*(a1 + 32) + 272) resetWithError:a2];
LABEL_31:
  if (!CPLIsInTestReadonlyMode())
  {
    if (!v4)
    {
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  v31 = [*(*(a1 + 32) + 216) primaryScope];
  if (v31)
  {
    v32 = [*(*(a1 + 32) + 216) disabledDateForScope:v31];
    if (!v32)
    {
      v36 = [MEMORY[0x1E695DF00] date];
      v37 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:31536000.0];
      if ((_CPLSilentLogging & 1) == 0)
      {
        v38 = __CPLStoreOSLogDomain_3044();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DC05A000, v38, OS_LOG_TYPE_DEFAULT, "Simulating Exit mode for Test Read-only mode", buf, 2u);
        }
      }

      if (![*(*(a1 + 32) + 216) setDisabledDate:v36 forScope:v31 error:a2])
      {

        v33 = 0;
        goto LABEL_39;
      }

      v39 = [*(*(a1 + 32) + 216) setDeleteDate:v37 forScope:v31 error:a2];

      if ((v39 & 1) == 0)
      {
        goto LABEL_36;
      }

LABEL_38:
      v31 = [*(a1 + 32) platformObject];
      v33 = [v31 performPostUpgradeMigrationsWithError:a2];
LABEL_39:

      goto LABEL_40;
    }
  }

  if (v4)
  {
    goto LABEL_38;
  }

LABEL_36:
  v33 = 0;
LABEL_40:
  v34 = *MEMORY[0x1E69E9840];
  return v33;
}

void __44__CPLEngineStore_openWithCompletionHandler___block_invoke_281(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v2 = [*(a1 + 32) engineLibrary];
  [v3 postNotificationName:@"CPLLibraryMustBeWipedNotificationName" object:v2];
}

- (void)_forceCloseWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [[CPLEngineStoreTransaction alloc] initForWrite:1 store:self identifier:@"cpl.store.close.force" description:@"force close store"];
  v6 = [CPLTransaction newTransactionWithIdentifier:@"cpl.store.barrier" description:@"barrier" keepPower:1];
  v7 = [(CPLEngineStore *)self platformObject];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__CPLEngineStore__forceCloseWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E861ABE0;
  v11 = v6;
  v12 = v4;
  v10[4] = self;
  v8 = v6;
  v9 = v4;
  [v7 performBarrierTransaction:v5 withBlock:v10];
}

void __51__CPLEngineStore__forceCloseWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  v4 = 0;
  [v2 closeWithError:&v4];
  v3 = v4;

  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) endTransaction];
}

- (void)_performBarrierTransaction:(id)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [CPLTransaction newTransactionWithIdentifier:@"cpl.store.barrier" description:@"barrier" keepPower:1];
  v9 = [(CPLEngineStore *)self platformObject];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__CPLEngineStore__performBarrierTransaction_withBlock___block_invoke;
  v12[3] = &unk_1E861F5D0;
  v13 = v8;
  v14 = v6;
  v12[4] = self;
  v10 = v8;
  v11 = v6;
  [v9 performBarrierTransaction:v7 withBlock:v12];
}

uint64_t __55__CPLEngineStore__performBarrierTransaction_withBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) _finishTransaction];
  v2 = *(a1 + 40);

  return [v2 endTransaction];
}

- (void)_performTransaction:(id)a3 withBlock:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(CPLEngineStore *)self _setTransactionOnCurrentThread:v6];
  v31 = v7;
  if ([v6 canWrite] && -[CPLEngineStore state](self, "state") == 2)
  {
    v8 = [(CPLEngineOutgoingResources *)self->_outgoingResources sizeOfResourcesToUpload];
    v9 = [(CPLEngineOutgoingResources *)self->_outgoingResources sizeOfOriginalResourcesToUpload];
    v10 = [(CPLEngineOutgoingResources *)self->_outgoingResources countOfOriginalImages];
    v11 = [(CPLEngineOutgoingResources *)self->_outgoingResources countOfOriginalVideos];
    v12 = 1;
    v32 = [(CPLEngineOutgoingResources *)self->_outgoingResources countOfOriginalOthers];
    v33 = v11;
    v13 = v10;
    v14 = v9;
    v15 = v8;
    v7 = v31;
  }

  else
  {
    v12 = 0;
    v32 = 0;
    v33 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  (*(v7 + 2))(v7);
  if (!v12)
  {
    goto LABEL_12;
  }

  v16 = [v6 error];

  if (v16 || (v17 = [(CPLEngineOutgoingResources *)self->_outgoingResources sizeOfResourcesToUpload], v18 = [(CPLEngineOutgoingResources *)self->_outgoingResources sizeOfOriginalResourcesToUpload], v19 = [(CPLEngineOutgoingResources *)self->_outgoingResources countOfOriginalImages], v20 = [(CPLEngineOutgoingResources *)self->_outgoingResources countOfOriginalVideos], v21 = [(CPLEngineOutgoingResources *)self->_outgoingResources countOfOriginalOthers], v17 == v15) && v18 == v14 && v19 == v13 && v20 == v33 && v21 == v32)
  {
LABEL_12:
    v22 = 0;
  }

  else
  {
    v22 = 1;
    v32 = v21;
    v33 = v20;
    v13 = v19;
    v14 = v18;
    v15 = v17;
  }

  v23 = [v6 error];
  v24 = v23;
  if (v23)
  {
    if (![v23 isCPLOperationCancelledError])
    {
      if ([v24 isCPLError])
      {
        if (_CPLSilentLogging)
        {
          goto LABEL_30;
        }

        v27 = __CPLTransactionOSLogDomain();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [v6 error];
          *buf = 138412546;
          v35 = v6;
          v36 = 2112;
          v37 = v28;
          _os_log_impl(&dword_1DC05A000, v27, OS_LOG_TYPE_DEFAULT, "! %@ failed: %@", buf, 0x16u);
        }
      }

      else
      {
        if (_CPLSilentLogging)
        {
          goto LABEL_30;
        }

        v27 = __CPLTransactionOSLogDomain();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v29 = [v6 error];
          *buf = 138412546;
          v35 = v6;
          v36 = 2112;
          v37 = v29;
          _os_log_impl(&dword_1DC05A000, v27, OS_LOG_TYPE_ERROR, "! %@ failed: %@", buf, 0x16u);
        }
      }

      goto LABEL_30;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v25 = __CPLTransactionOSLogDomain();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v35 = v6;
        _os_log_impl(&dword_1DC05A000, v25, OS_LOG_TYPE_DEBUG, "! %@ failed: transaction was cancelled", buf, 0xCu);
      }
    }
  }

  else if (v22)
  {
    WeakRetained = objc_loadWeakRetained(&self->_engineLibrary);
    [WeakRetained notifyAttachedObjectsSizeOfResourcesToUploadDidChangeToSize:v15 sizeOfOriginalResourcesToUpload:v14 numberOfImages:v13 numberOfVideos:v33 numberOfOtherItems:v32];
  }

LABEL_30:
  [(CPLEngineStore *)self _removeTransactionOnCurrentThread:v6];

  v30 = *MEMORY[0x1E69E9840];
}

- (BOOL)_handleException:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 name];
    v7 = [v5 reason];
    if ([v6 isEqualToString:@"CPLAssertStoreException"])
    {
      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = @"Store exception raised";
      }

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __35__CPLEngineStore__handleException___block_invoke;
      v18[3] = &unk_1E861A940;
      v19 = v5;
      [(CPLEngineStore *)self wipeStoreAtNextOpeningWithReason:v8 completionBlock:v18];
      v9 = v19;
    }

    else if ([v6 isEqualToString:CPLArchiverFailureExceptionName])
    {
      v11 = [v5 userInfo];
      v9 = [v11 objectForKeyedSubscript:@"CPLArchiverFailureContext"];

      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Archiver exception raised - %@", v9];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __35__CPLEngineStore__handleException___block_invoke_2;
      v16[3] = &unk_1E861A940;
      v17 = v5;
      [(CPLEngineStore *)self wipeStoreAtNextOpeningWithReason:v12 completionBlock:v16];
    }

    else
    {
      if (![v6 isEqualToString:*MEMORY[0x1E695D930]])
      {
        v10 = 0;
        goto LABEL_13;
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __35__CPLEngineStore__handleException___block_invoke_3;
      v14[3] = &unk_1E861A940;
      v15 = v5;
      [(CPLEngineStore *)self wipeStoreAtNextOpeningWithReason:@"Internal inconsistency" completionBlock:v14];
      v9 = v15;
    }

    v10 = 1;
LABEL_13:

    goto LABEL_14;
  }

  v10 = 0;
LABEL_14:

  return v10;
}

- (BOOL)deleteDynamicallyCreatedStorages:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStore *)self platformObject];
  LOBYTE(a4) = [v7 deleteDynamicallyCreatedStorages:v6 error:a4];

  return a4;
}

- (BOOL)createStoragesDynamically:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStore *)self platformObject];
  LOBYTE(a4) = [v7 createStoragesDynamically:v6 error:a4];

  return a4;
}

- (void)noteInvalidRecordScopedIdentifiersInPushSession:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  v6 = [v4 date];
  lastInvalidRecordsDate = self->_lastInvalidRecordsDate;
  self->_lastInvalidRecordsDate = v6;

  v8 = [v5 copy];
  lastInvalidRecordScopedIdentifiers = self->_lastInvalidRecordScopedIdentifiers;
  self->_lastInvalidRecordScopedIdentifiers = v8;
}

- (void)noteOtherResetEvent:(id)a3 cause:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CPLEngineStore *)self mainScopeIdentifier];
  [(CPLEngineStore *)self _storeResetEvent:v7 scopeIdentifier:v8 date:0 cause:v6];
}

- (BOOL)resetSyncAnchorWithCause:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(CPLEngineScopeStorage *)self->_scopes enumeratorForScopesIncludeInactive:0, 0];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (![(CPLEngineStore *)self _resetSyncAnchorWithCause:v6 scope:*(*(&v15 + 1) + 8 * i) error:a4])
        {
          v12 = 0;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)resetCompleteSyncStateIncludingIDMappingWithCause:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(CPLEngineStore *)self _resetGlobalStateWithError:a4])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [(CPLEngineScopeStorage *)self->_scopes enumeratorForScopesIncludeInactive:0, 0];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if (![(CPLEngineStore *)self _resetCompleteSyncStateIncludingIDMappingWithCause:v6 scope:*(*(&v15 + 1) + 8 * i) error:a4])
          {

            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v12 = [(CPLEngineStore *)self storeUserIdentifier:0 error:a4];
  }

  else
  {
LABEL_12:
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)resetCompleteSyncStateWithCause:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (self->_isUpdatingDisabledFeatures)
  {
    v7 = 1;
    self->_shouldTriggerCompleteResetSyncAfterDisabledFeaturesUpdate = 1;
  }

  else if ([(CPLEngineStore *)self _resetGlobalStateWithError:a4])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [(CPLEngineScopeStorage *)self->_scopes enumeratorForScopesIncludeInactive:0, 0];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if (![(CPLEngineStore *)self _resetCompleteSyncStateWithCause:v6 scope:*(*(&v15 + 1) + 8 * i) error:a4])
          {

            goto LABEL_14;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = [(CPLEngineStore *)self storeUserIdentifier:0 error:a4];
  }

  else
  {
LABEL_14:
    v7 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)resetLocalSyncStateWithCause:(id)a3 date:(id)a4 error:(id *)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (self->_isUpdatingDisabledFeatures)
  {
    v10 = 1;
    self->_shouldTriggerResetSyncAfterDisabledFeaturesUpdate = 1;
  }

  else
  {
    [(CPLEngineStore *)self isClientInSyncWithClientCache];
    if ([(CPLEngineStore *)self _resetGlobalStateWithError:a5])
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v11 = [(CPLEngineScopeStorage *)self->_scopes enumeratorForScopesIncludeInactive:0, 0];
      v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v19;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v19 != v14)
            {
              objc_enumerationMutation(v11);
            }

            if (![(CPLEngineStore *)self _resetLocalSyncStateWithCause:v8 scope:*(*(&v18 + 1) + 8 * i) date:v9 error:a5])
            {
              v10 = 0;
              goto LABEL_15;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v10 = 1;
LABEL_15:
    }

    else
    {
      v10 = 0;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)_resetSyncAnchorWithCause:(id)a3 scope:(id)a4 error:(id *)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v9 scopeIdentifier];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "Resetting sync anchor (%@) for %@", &v17, 0x16u);
    }
  }

  v12 = [(CPLEngineStore *)self mainScopeIdentifier];
  v13 = [v10 isEqualToString:v12];

  if (v13)
  {
    [(CPLEngineStore *)self _storeResetEvent:@"anchor" scopeIdentifier:v10 date:0 cause:v8];
  }

  v14 = [(CPLEngineScopeStorage *)self->_scopes resetSyncAnchorForScope:v9 error:a5];

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)_resetCompleteSyncStateIncludingIDMappingWithCause:(id)a3 scope:(id)a4 error:(id *)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v9 scopeIdentifier];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "Resetting complete sync state for %@ (%@)", &v17, 0x16u);
    }
  }

  v12 = [(CPLEngineStore *)self mainScopeIdentifier];
  v13 = [v10 isEqualToString:v12];

  if (v13)
  {
    [(CPLEngineStore *)self _storeResetEvent:@"hard" scopeIdentifier:v10 date:0 cause:v8];
  }

  v14 = [(CPLEngineScopeStorage *)self->_scopes resetCompleteSyncStateIncludingIDMappingForScope:v9 error:a5];

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)_resetCompleteSyncStateWithCause:(id)a3 scope:(id)a4 error:(id *)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v9 scopeIdentifier];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "Resetting complete sync state for %@ (%@)", &v17, 0x16u);
    }
  }

  v12 = [(CPLEngineStore *)self mainScopeIdentifier];
  v13 = [v10 isEqualToString:v12];

  if (v13)
  {
    [(CPLEngineStore *)self _storeResetEvent:@"hard" scopeIdentifier:v10 date:0 cause:v8];
  }

  v14 = [(CPLEngineScopeStorage *)self->_scopes resetCompleteSyncStateForScope:v9 error:a5];

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)_resetLocalSyncStateWithCause:(id)a3 scope:(id)a4 date:(id)a5 error:(id *)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v11 scopeIdentifier];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v14 = __CPLStoreOSLogDomain_3044();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412546;
      v21 = v13;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEFAULT, "Resetting local sync state for %@ (%@)", &v20, 0x16u);
    }
  }

  v15 = [(CPLEngineStore *)self mainScopeIdentifier];
  v16 = [v13 isEqualToString:v15];

  if (v16)
  {
    [(CPLEngineStore *)self _storeResetEvent:@"soft" scopeIdentifier:v13 date:v12 cause:v10];
  }

  v17 = [(CPLEngineScopeStorage *)self->_scopes resetLocalSyncStateForScope:v11 error:a6];

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)_resetGlobalStateWithError:(id *)a3
{
  v5 = [(CPLEngineStore *)self platformObject];
  v6 = [(CPLEngineStore *)self createNewLibraryVersion];
  v7 = [(CPLEngineStore *)self storeLibraryVersion:v6 withError:a3];

  if (!v7)
  {
    goto LABEL_10;
  }

  if (![v5 storeClientIsNotInSyncWithClientCacheWithError:a3])
  {
    goto LABEL_10;
  }

  v8 = [v5 createNewClientCacheIdentifier];
  v9 = [v5 storeClientCacheIdentifier:v8 error:a3];

  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = [v5 storedChangeSessionUpdate];
  v11 = v10;
  if (v10 && ([v10 discardFromStore:self error:a3] & 1) == 0)
  {

LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  v12 = [v5 storeChangeSessionUpdate:0 error:a3];
  [(CPLEngineStore *)self _unschedulePendingUpdateApply];

  if (!v12 || ![(CPLEnginePushRepository *)self->_pushRepository storeExtractedBatch:0 error:a3])
  {
    goto LABEL_10;
  }

  [(CPLEnginePushRepository *)self->_pushRepository setExtractionStrategy:0];
  [(CPLEngineScopeStorage *)self->_scopes storeScopeListSyncAnchor:0 error:a3];
  v13 = 1;
  self->_schedulePullFromClient = 1;
  [(CPLEngineStatusCenter *)self->_statusCenter resetAllTransientStatuses];
LABEL_11:

  return v13;
}

- (id)_resetEventsJSON
{
  v21 = *MEMORY[0x1E69E9840];
  [(CPLEngineStore *)self _loadResetEvents];
  v3 = [(NSMutableArray *)self->_resetEvents count];
  if (v3)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v3];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = self->_resetEvents;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = [v9 mutableCopy];
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __34__CPLEngineStore__resetEventsJSON__block_invoke;
          v14[3] = &unk_1E8620420;
          v15 = v10;
          v11 = v10;
          [v9 enumerateKeysAndObjectsUsingBlock:v14];
          [v3 addObject:v11];
        }

        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

void __34__CPLEngineStore__resetEventsJSON__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x1E696AD98];
    [v5 timeIntervalSinceReferenceDate];
    v7 = [v6 numberWithDouble:?];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }
}

- (id)_resetEventsDescriptions
{
  v33 = *MEMORY[0x1E69E9840];
  [(CPLEngineStore *)self _loadResetEvents];
  v3 = [(NSMutableArray *)self->_resetEvents count];
  if (v3)
  {
    v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v3];
    v4 = [MEMORY[0x1E695DF00] date];
    v24 = [(NSMutableArray *)self->_resetEvents lastObject];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = self->_resetEvents;
    v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v5)
    {
      v6 = v5;
      v26 = *v29;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v29 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v28 + 1) + 8 * i);
          v9 = [v8 objectForKeyedSubscript:@"date"];
          v10 = [v8 objectForKeyedSubscript:@"endDate"];
          if (v10)
          {
            v11 = MEMORY[0x1E696AEC0];
            v12 = [v8 objectForKeyedSubscript:@"type"];
            v13 = [v8 objectForKeyedSubscript:@"cause"];
            v14 = [CPLDateFormatter stringFromDateAgo:v9 now:v4];
            v15 = [CPLDateFormatter stringFromDateAgo:v10 now:v4];
            v16 = [v11 stringWithFormat:@"%@ (%@) - %@ finished %@", v12, v13, v14, v15];
            [v27 addObject:v16];
          }

          else
          {
            v17 = [v8 objectForKeyedSubscript:@"pending"];
            v18 = [v17 BOOLValue];

            if (v18)
            {
              v19 = MEMORY[0x1E696AEC0];
              v12 = [v8 objectForKeyedSubscript:@"type"];
              v13 = [v8 objectForKeyedSubscript:@"cause"];
              v20 = [CPLDateFormatter stringFromDateAgo:v9 now:v4];
              v14 = v20;
              if (v24 == v8)
              {
                [v19 stringWithFormat:@"%@ (%@) - %@ ongoing", v12, v13, v20];
              }

              else
              {
                [v19 stringWithFormat:@"%@ (%@) - %@ aborted", v12, v13, v20];
              }
            }

            else
            {
              v21 = MEMORY[0x1E696AEC0];
              v12 = [v8 objectForKeyedSubscript:@"type"];
              v13 = [v8 objectForKeyedSubscript:@"cause"];
              v14 = [CPLDateFormatter stringFromDateAgo:v9 now:v4];
              [v21 stringWithFormat:@"%@ (%@) - %@", v12, v13, v14];
            }
            v15 = ;
            [v27 addObject:v15];
          }
        }

        v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v27 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v27;
}

- (BOOL)hasPendingResetSync
{
  [(CPLEngineStore *)self _loadResetEvents];
  v3 = [(NSMutableArray *)self->_resetEvents lastObject];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"pending"];
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)noteResetSyncFinished
{
  [(CPLEngineStore *)self _loadResetEvents];
  v3 = [(CPLEngineResourceStorage *)self->_resourceStorage fileStorage];
  [v3 setTrackAllStoresAndDeletes:0];

  v4 = [(NSMutableArray *)self->_resetEvents lastObject];
  if (v4)
  {
    v16 = v4;
    v5 = [v4 objectForKeyedSubscript:@"pending"];
    v6 = [v5 BOOLValue];

    v4 = v16;
    if (v6)
    {
      v7 = [v16 mutableCopy];
      [v7 removeObjectForKey:@"pending"];
      v8 = [MEMORY[0x1E695DF00] date];
      [v7 setObject:v8 forKeyedSubscript:@"endDate"];

      [(NSMutableArray *)self->_resetEvents replaceObjectAtIndex:[(NSMutableArray *)self->_resetEvents count]- 1 withObject:v7];
      [(NSMutableArray *)self->_resetEvents writeToURL:self->_resetEventsURL atomically:1];
      v9 = [v16 objectForKeyedSubscript:@"uuid"];
      WeakRetained = objc_loadWeakRetained(&self->_engineLibrary);
      v11 = [WeakRetained feedback];
      if (v9)
      {
        v12 = v9;
      }

      else
      {
        v12 = @"none";
      }

      v13 = [v16 objectForKeyedSubscript:@"cause"];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = @"End of reset";
      }

      [v11 reportEndOfResetWithUUID:v12 reason:v15];

      v4 = v16;
    }
  }
}

- (void)_storeResetEvent:(id)a3 scopeIdentifier:(id)a4 date:(id)a5 pending:(BOOL)a6 cause:(id)a7
{
  v8 = a6;
  v33[5] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [(CPLEngineStore *)self mainScopeIdentifier];
  v17 = [v13 isEqualToString:v16];

  if (v17)
  {
    [(CPLEngineStore *)self _loadResetEvents];
    if ([(NSMutableArray *)self->_resetEvents count]>= 5)
    {
      do
      {
        [(NSMutableArray *)self->_resetEvents removeObjectAtIndex:0];
      }

      while ([(NSMutableArray *)self->_resetEvents count]> 4);
    }

    v18 = [MEMORY[0x1E696AFB0] UUID];
    v19 = [v18 UUIDString];

    if (!v15)
    {
      v15 = @"unknown reason";
    }

    resetEvents = self->_resetEvents;
    if (v8)
    {
      v32[0] = @"type";
      v32[1] = @"cause";
      v33[0] = v12;
      v33[1] = v15;
      v33[2] = v19;
      v21 = v14;
      v32[2] = @"uuid";
      v32[3] = @"date";
      if (!v14)
      {
        v21 = [MEMORY[0x1E695DF00] date];
      }

      v32[4] = @"pending";
      v33[3] = v21;
      v33[4] = MEMORY[0x1E695E118];
      v22 = MEMORY[0x1E695DF20];
      v23 = v33;
      v24 = v32;
      v25 = 5;
    }

    else
    {
      v30[0] = @"type";
      v30[1] = @"cause";
      v31[0] = v12;
      v31[1] = v15;
      v31[2] = v19;
      v21 = v14;
      v30[2] = @"uuid";
      v30[3] = @"date";
      if (!v14)
      {
        v21 = [MEMORY[0x1E695DF00] date];
      }

      v31[3] = v21;
      v22 = MEMORY[0x1E695DF20];
      v23 = v31;
      v24 = v30;
      v25 = 4;
    }

    v26 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:v25];
    [(NSMutableArray *)resetEvents addObject:v26];

    if (!v14)
    {
    }

    [(NSMutableArray *)self->_resetEvents writeToURL:self->_resetEventsURL atomically:1];
    WeakRetained = objc_loadWeakRetained(&self->_engineLibrary);
    v28 = [WeakRetained feedback];
    [v28 reportResetType:v12 reason:v15 uuid:v19];
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_loadResetEvents
{
  if (!self->_resetEvents)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithContentsOfURL:self->_resetEventsURL];
    resetEvents = self->_resetEvents;
    self->_resetEvents = v3;

    if (!self->_resetEvents)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v6 = self->_resetEvents;
      self->_resetEvents = v5;

      MEMORY[0x1EEE66BB8]();
    }
  }
}

- (void)registerStorage:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = a3;
  if ([(CPLEngineStore *)self state])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v14 = v12;
        v15 = 2112;
        v16 = self;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Trying to register %@ to %@ while the library is already open", buf, 0x16u);
      }
    }

    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStore.m"];
    [v10 handleFailureInMethod:a2 object:self file:v11 lineNumber:368 description:{@"Trying to register %@ to %@ while the library is already open", v12, self}];

    abort();
  }

  storages = self->_storages;
  if (!storages)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_storages;
    self->_storages = v6;

    storages = self->_storages;
  }

  [(NSHashTable *)storages addObject:v12];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_state)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [objc_opt_class() stateDescriptionForState:self->_state];
        *buf = 138412546;
        v12 = self;
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "at dealloc time, %@ should not be in state %@", buf, 0x16u);
      }
    }

    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStore.m"];
    v9 = [objc_opt_class() stateDescriptionForState:self->_state];
    [v7 handleFailureInMethod:a2 object:self file:v8 lineNumber:360 description:{@"at dealloc time, %@ should not be in state %@", self, v9}];

    abort();
  }

  v10.receiver = self;
  v10.super_class = CPLEngineStore;
  [(CPLEngineStore *)&v10 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (CPLEngineStore)initWithEngineLibrary:(id)a3
{
  v79 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v74.receiver = self;
  v74.super_class = CPLEngineStore;
  v6 = [(CPLEngineStore *)&v74 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_engineLibrary, v5);
    v8 = [[CPLEngineScopeStorage alloc] initWithEngineStore:v7 name:@"scopes"];
    scopes = v7->_scopes;
    v7->_scopes = v8;

    v10 = [(CPLEngineStorage *)[CPLEngineScopeCleanupTasks alloc] initWithEngineStore:v7 name:@"cleanupTasks"];
    cleanupTasks = v7->_cleanupTasks;
    v7->_cleanupTasks = v10;

    v12 = [[CPLEnginePushRepository alloc] initWithEngineStore:v7 name:@"pushRepository"];
    pushRepository = v7->_pushRepository;
    v7->_pushRepository = v12;

    v14 = [(CPLEngineStorage *)[CPLEngineChangePipe alloc] initWithEngineStore:v7 name:@"pullQueue"];
    pullQueue = v7->_pullQueue;
    v7->_pullQueue = v14;

    v16 = [(CPLEngineStorage *)[CPLEngineRevertRecords alloc] initWithEngineStore:v7 name:@"revertRecords"];
    revertRecords = v7->_revertRecords;
    v7->_revertRecords = v16;

    v18 = [(CPLEngineStorage *)[CPLEngineIDMapping alloc] initWithEngineStore:v7 name:@"idMapping"];
    idMapping = v7->_idMapping;
    v7->_idMapping = v18;

    v20 = [(CPLEngineStorage *)[CPLEngineCloudCache alloc] initWithEngineStore:v7 name:@"cloudCache"];
    cloudCache = v7->_cloudCache;
    v7->_cloudCache = v20;

    v22 = [[CPLEngineTransientRepository alloc] initWithEngineStore:v7 name:@"transientPullRepository"];
    transientPullRepository = v7->_transientPullRepository;
    v7->_transientPullRepository = v22;

    v24 = [[CPLEngineResourceStorage alloc] initWithEngineStore:v7 name:@"resources"];
    resourceStorage = v7->_resourceStorage;
    v7->_resourceStorage = v24;

    v26 = [[CPLEngineResourceDownloadQueue alloc] initWithEngineStore:v7 name:@"downloadQueue"];
    downloadQueue = v7->_downloadQueue;
    v7->_downloadQueue = v26;

    v28 = [(CPLEngineStorage *)[CPLEngineOutgoingResources alloc] initWithEngineStore:v7 name:@"outgoingResources"];
    outgoingResources = v7->_outgoingResources;
    v7->_outgoingResources = v28;

    v30 = [(CPLEngineStorage *)[CPLEngineRemappedRecords alloc] initWithEngineStore:v7 name:@"remappedDeletes"];
    remappedRecords = v7->_remappedRecords;
    v7->_remappedRecords = v30;

    v32 = [(CPLEngineStorage *)[CPLEngineQuarantinedRecords alloc] initWithEngineStore:v7 name:@"quarantinedRecords"];
    quarantinedRecords = v7->_quarantinedRecords;
    v7->_quarantinedRecords = v32;

    v34 = [[CPLEngineStatusCenter alloc] initWithEngineStore:v7 name:@"statusCenter"];
    statusCenter = v7->_statusCenter;
    v7->_statusCenter = v34;

    v36 = [(CPLEngineStorage *)[CPLEnginePendingRecordChecks alloc] initWithEngineStore:v7 name:@"pendingRecordChecks"];
    pendingRecordChecks = v7->_pendingRecordChecks;
    v7->_pendingRecordChecks = v36;

    v38 = [(CPLEngineStorage *)[CPLEngineIgnoredRecords alloc] initWithEngineStore:v7 name:@"ignoredRecords"];
    ignoredRecords = v7->_ignoredRecords;
    v7->_ignoredRecords = v38;

    v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
    batchedTransactions = v7->_batchedTransactions;
    v7->_batchedTransactions = v40;

    v42 = CPLCopyDefaultSerialQueueAttributes();
    v43 = dispatch_queue_create("com.apple.cpl.store.batchedtransactions", v42);
    batchedTransactionsQueue = v7->_batchedTransactionsQueue;
    v7->_batchedTransactionsQueue = v43;

    WeakRetained = objc_loadWeakRetained(&v7->_engineLibrary);
    v46 = [WeakRetained clientLibraryBaseURL];
    v47 = [v46 URLByAppendingPathComponent:@"resetevents.plist" isDirectory:0];
    resetEventsURL = v7->_resetEventsURL;
    v7->_resetEventsURL = v47;

    v49 = CPLCopyDefaultSerialQueueAttributes();
    v50 = dispatch_queue_create("com.apple.cpl.pendingupdate", v49);
    pendingUpdateQueue = v7->_pendingUpdateQueue;
    v7->_pendingUpdateQueue = v50;

    v52 = objc_loadWeakRetained(&v7->_engineLibrary);
    v53 = [v52 clientLibraryBaseURL];
    v54 = [v53 URLByAppendingPathComponent:@"derivatives" isDirectory:1];

    v55 = [[CPLEngineDerivativesCache alloc] initWithCacheURL:v54];
    derivativesCache = v7->_derivativesCache;
    v7->_derivativesCache = v55;

    v57 = CPLCopyDefaultSerialQueueAttributes();
    v58 = dispatch_queue_create("com.apple.cpl.shouldsyncscopelist", v57);
    shouldSyncScopeListQueue = v7->_shouldSyncScopeListQueue;
    v7->_shouldSyncScopeListQueue = v58;

    v60 = [[CPLEngineRecordComputeStatePushQueue alloc] initWithEngineStore:v7 name:@"recordComputeStatePushQueue"];
    recordComputeStatePushQueue = v7->_recordComputeStatePushQueue;
    v7->_recordComputeStatePushQueue = v60;

    if ((_CPLSilentLogging & 1) == 0)
    {
      v62 = __CPLStoreOSLogDomain_3044();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        v63 = [(NSHashTable *)v7->_storages allObjects];
        *buf = 138412546;
        v76 = v7;
        v77 = 2112;
        v78 = v63;
        _os_log_impl(&dword_1DC05A000, v62, OS_LOG_TYPE_DEBUG, "Initing store %@ - storages: %@", buf, 0x16u);
      }
    }

    v64 = +[CPLPlatform currentPlatform];
    v65 = [v64 newPlatformImplementationForObject:v7];
    platformObject = v7->_platformObject;
    v7->_platformObject = v65;

    if (!v7->_platformObject)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v69 = __CPLStoreOSLogDomain_3044();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          v70 = objc_opt_class();
          *buf = 138412290;
          v76 = v70;
          v71 = v70;
          _os_log_impl(&dword_1DC05A000, v69, OS_LOG_TYPE_ERROR, "No platform object specified for %@", buf, 0xCu);
        }
      }

      v72 = [MEMORY[0x1E696AAA8] currentHandler];
      v73 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStore.m"];
      [v72 handleFailureInMethod:a2 object:v7 file:v73 lineNumber:354 description:{@"No platform object specified for %@", objc_opt_class()}];

      abort();
    }
  }

  v67 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)mainScopeSupportsSharingScopeWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStore *)self mainScopeIdentifier];
  LOBYTE(self) = [(CPLEngineStore *)self supportsSharingScopeWithIdentifier:v4 forScopeWithIdentifier:v5];

  return self;
}

- (BOOL)supportsSharingScopeWithIdentifier:(id)a3 forScopeWithIdentifier:(id)a4
{
  v5 = a3;
  v6 = CPLSharingScopePrefixForScopeWithIdentifier(a4);
  v7 = [v5 hasPrefix:v6];

  return v7;
}

- (NSString)mainScopeIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_engineLibrary);
  v3 = [WeakRetained mainScopeIdentifier];

  return v3;
}

+ (id)platformImplementationProtocol
{
  v2 = [objc_opt_class() description];
  v3 = [v2 stringByAppendingString:@"Implementation"];
  v4 = NSProtocolFromString(v3);

  return v4;
}

+ (id)stateDescriptionForState:(unint64_t)a3
{
  if (a3 > 4)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_1E861BA08[a3];
  }
}

+ (NSArray)storageNames
{
  if (storageNames_onceToken != -1)
  {
    dispatch_once(&storageNames_onceToken, &__block_literal_global_749);
  }

  v3 = storageNames_storageNames;

  return v3;
}

void __30__CPLEngineStore_storageNames__block_invoke()
{
  v0 = storageNames_storageNames;
  storageNames_storageNames = &unk_1F57EF860;
}

- (id)newClientCacheViewUsesPushRepository:(BOOL *)a3
{
  v5 = [[CPLClientCacheBaseView alloc] initWithStore:self];
  v6 = [(CPLEngineStore *)self pushRepository];
  v7 = [v6 storedExtractedBatch];
  if (v7)
  {
    v8 = [CPLChangeBatchChangeStorage alloc];
    v9 = [v7 batch];
    v10 = [(CPLChangeBatchChangeStorage *)v8 initWithBatch:v9 name:@"extractedBatch"];

    v11 = [[CPLChangedRecordStorageView alloc] initWithChangeStorage:v10 overStorageView:v5];
    v5 = v11;
  }

  if ([v6 isEmpty])
  {
    if (a3)
    {
      *a3 = 0;
    }
  }

  else
  {
    v12 = [[CPLPushRepositoryStorage alloc] initWithPushRepository:v6];
    v13 = [[CPLChangedRecordStorageView alloc] initWithChangeStorage:v12 overStorageView:v5];

    if (a3)
    {
      *a3 = 1;
    }

    v5 = v13;
  }

  if ([(CPLEngineStore *)self hasUnacknowledgedChanges])
  {
    v14 = [[CPLUnacknowledgedChangeStorage alloc] initWithStore:self];
    v15 = [[CPLChangedRecordStorageView alloc] initWithChangeStorage:v14 overStorageView:v5];

    v5 = v15;
  }

  return v5;
}

@end
@interface FCPrivateDataController
+ (BOOL)isLocalStoreKeyInternal:(id)a3;
+ (BOOL)requiresBatchedFirstSync;
+ (BOOL)requiresHighPriorityFirstSync;
+ (BOOL)requiresPushNotificationSupport;
+ (id)backingRecordIDs;
+ (id)backingRecordZoneIDs;
+ (id)commandStoreFileName;
+ (id)commandsToMergeLocalDataToCloud:(id)a3 privateDataDirectory:(id)a4;
+ (id)desiredKeys;
+ (id)internalLocalStoreKeys;
+ (id)localStoreFilename;
+ (int64_t)commandQueueUrgency;
+ (unint64_t)localStoreVersion;
- (BOOL)isBackedByAnyRecordZoneIDsInSet:(id)a3;
- (BOOL)isDirty;
- (FCPrivateDataController)init;
- (FCPrivateDataController)initWithContext:(id)a3 pushNotificationCenter:(id)a4 storeDirectory:(id)a5;
- (NSArray)recordNamesPendingSaveToCloud;
- (NSDate)modificationDate;
- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)a3;
- (id)jsonEncodableObject;
- (int64_t)qualityOfServiceForNextCommandInCommandQueue:(id)a3;
- (void)_markAsDirtyAndNotifyObservers:(uint64_t)a1;
- (void)_markAsDirtyIfZonesChangedExternally;
- (void)_notifyObservers;
- (void)_possiblySimulateCrashWithMessage:(id)a3;
- (void)_serialSyncUpToDate:(void *)a3 completion:;
- (void)_syncWithCondition:(void *)a3 completion:;
- (void)activityObservingApplicationWindowDidBecomeForeground;
- (void)addCommandToCommandQueue:(id)a3;
- (void)addObserver:(id)a3;
- (void)addStateObserver:(id)a3;
- (void)assertReadyForUse;
- (void)createLocalStore;
- (void)dealloc;
- (void)disableSyncing;
- (void)enableSyncing;
- (void)forceSyncWithCompletion:(id)a3;
- (void)handleSyncWithChangedRecords:(id)a3 deletedRecordNames:(id)a4;
- (void)loadLocalCachesFromStore;
- (void)mergeLocalStoreWithCloudWithPrivateDataDirectory:(id)a3;
- (void)performFirstSyncWithCallbackQueue:(id)a3 completion:(id)a4;
- (void)performFirstSyncWithCompletion:(id)a3;
- (void)prepareForUse;
- (void)recordSyncManager:(id)a3 stateDidChange:(id)a4;
- (void)removeObserver:(id)a3;
- (void)removeStateObserver:(id)a3;
- (void)saveWithCompletion:(id)a3;
- (void)syncWithCallbackQueue:(id)a3 completion:(id)a4;
- (void)syncWithCompletion:(id)a3;
- (void)zoneSyncManager:(id)a3 stateDidChange:(id)a4;
@end

@implementation FCPrivateDataController

- (void)disableSyncing
{
  v19 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  if (self)
  {
    if (self->_preparedForUse && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"migration actions should be called before -prepareForUse"];
      v11 = 136315906;
      v12 = "[FCPrivateDataController(Setup) disableSyncing]";
      v13 = 2080;
      v14 = "FCPrivateDataController.m";
      v15 = 1024;
      v16 = 891;
      v17 = 2114;
      v18 = v8;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v11, 0x26u);
    }

    [(FCPrivateDataController *)self setSyncingEnabled:0];
    v3 = [(FCPrivateDataController *)self localStore];
    [v3 removeObjectForKey:@"sync-state"];

    v4 = [(FCPrivateDataController *)self localStore];
    [v4 setCloudBackupEnabled:1];

    commandQueue = self->_commandQueue;
  }

  else
  {
    [0 setSyncingEnabled:0];
    v9 = [0 localStore];
    [v9 removeObjectForKey:@"sync-state"];

    v10 = [0 localStore];
    [v10 setCloudBackupEnabled:1];

    commandQueue = 0;
  }

  [(FCCommandQueue *)commandQueue clear];
  if ([(FCPrivateDataController *)self isSyncingEnabled]&& os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"syncing should be disabled"];
    v11 = 136315906;
    v12 = "[FCPrivateDataController(Setup) disableSyncing]";
    v13 = 2080;
    v14 = "FCPrivateDataController.m";
    v15 = 1024;
    v16 = 898;
    v17 = 2114;
    v18 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v11, 0x26u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)prepareForUse
{
  v2 = self;
  v66 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v42 = [0 isSyncingEnabled];
    commandQueue = 0;
    if ((v42 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_7;
  }

  if (self->_preparedForUse && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-prepareForUse should only be called once"];
    *buf = 136315906;
    v58 = "[FCPrivateDataController(Setup) prepareForUse]";
    v59 = 2080;
    v60 = "FCPrivateDataController.m";
    v61 = 1024;
    *v62 = 930;
    *&v62[4] = 2114;
    *&v62[6] = v41;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if ([(FCPrivateDataController *)v2 isSyncingEnabled])
  {
    commandQueue = v2->_commandQueue;
LABEL_7:
    [(FCCommandQueue *)commandQueue resume];
    v4 = [(FCPrivateDataController *)v2 localStore];
    v5 = [v4 objectForKeyedSubscript:@"sync-state"];

    if ([v5 version] != 2)
    {
      if (v2)
      {
        v6 = objc_alloc_init(MEMORY[0x1E69B6F20]);
        [v6 setVersion:2];
      }

      else
      {
        v6 = 0;
      }

      v7 = [(FCPrivateDataController *)v2 localStore];
      [v7 setObject:v6 forKeyedSubscript:@"sync-state"];

      v5 = v6;
    }

    v8 = [v5 zoneStates];
    v9 = [v8 fc_dictionaryWithKeyBlock:&__block_literal_global_288];

    v10 = [v5 recordStates];
    v11 = [v10 fc_dictionaryWithKeyBlock:&__block_literal_global_291];

    v12 = [objc_opt_class() backingRecordZoneIDs];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __47__FCPrivateDataController_Setup__prepareForUse__block_invoke_3;
    v55[3] = &unk_1E7C3BCD0;
    v55[4] = v2;
    v13 = v9;
    v56 = v13;
    v14 = [v12 fc_arrayByTransformingWithBlock:v55];

    v15 = [objc_opt_class() backingRecordIDs];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __47__FCPrivateDataController_Setup__prepareForUse__block_invoke_4;
    v53[3] = &unk_1E7C3BCF8;
    v53[4] = v2;
    v16 = v11;
    v54 = v16;
    v17 = [v15 fc_arrayByTransformingWithBlock:v53];

    v18 = [MEMORY[0x1E695DEC8] fc_arrayByAddingObjectsFromArray:v17 toArray:v14];
    if (v2)
    {
      objc_storeStrong(&v2->_syncManagers, v18);
    }

    v2->_waitingForFirstSync = [(NSArray *)v2->_syncManagers fc_containsObjectPassingTest:&__block_literal_global_296];
    if ([objc_opt_class() requiresPushNotificationSupport])
    {
      v43 = v17;
      v45 = v5;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v44 = v14;
      obj = v14;
      v19 = [obj countByEnumeratingWithState:&v49 objects:v65 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v50;
        do
        {
          v22 = 0;
          do
          {
            if (*v50 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v49 + 1) + 8 * v22);
            if (v2)
            {
              v24 = v2;
              pushNotificationCenter = v2->_pushNotificationCenter;
            }

            else
            {
              v24 = 0;
              pushNotificationCenter = 0;
            }

            v26 = pushNotificationCenter;
            if (v23)
            {
              v27 = v23[2];
            }

            else
            {
              v27 = 0;
            }

            v28 = v27;
            v48[0] = MEMORY[0x1E69E9820];
            v48[1] = 3221225472;
            v48[2] = __47__FCPrivateDataController_Setup__prepareForUse__block_invoke_6;
            v48[3] = &unk_1E7C36EA0;
            v48[4] = v23;
            [(FCPushNotificationCenter *)v26 addObserver:v23 forChangesToRecordZoneID:v28 usingBlock:v48];

            ++v22;
            v2 = v24;
          }

          while (v20 != v22);
          v29 = [obj countByEnumeratingWithState:&v49 objects:v65 count:16];
          v20 = v29;
        }

        while (v29);
      }

      v5 = v45;
      v14 = v44;
      v17 = v43;
    }

    [(FCPrivateDataController *)v2 _markAsDirtyIfZonesChangedExternally];
  }

LABEL_30:
  [(FCPrivateDataController *)v2 loadLocalCachesFromStore];
  v30 = FCPrivateDataLog;
  if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
  {
    obja = v30;
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    v33 = [(FCPrivateDataController *)v2 localStore];
    v34 = [v33 allKeys];
    v35 = [v34 count];
    if ([(FCPrivateDataController *)v2 isSyncingEnabled])
    {
      v36 = @"YES";
    }

    else
    {
      v36 = @"NO";
    }

    if ([(FCPrivateDataController *)v2 isWaitingForFirstSync])
    {
      v37 = @"YES";
    }

    else
    {
      v37 = @"NO";
    }

    v38 = [(FCPrivateDataController *)v2 isDirty];
    *buf = 138544386;
    if (v38)
    {
      v39 = @"YES";
    }

    else
    {
      v39 = @"NO";
    }

    v58 = v32;
    v59 = 2048;
    v60 = v35;
    v61 = 2114;
    *v62 = v36;
    *&v62[8] = 2114;
    *&v62[10] = v37;
    v63 = 2114;
    v64 = v39;
    _os_log_impl(&dword_1B63EF000, obja, OS_LOG_TYPE_DEFAULT, "%{public}@ prepared for use with %lu store entries, isSyncingEnabled=%{public}@, waitingForFirstSync=%{public}@, dirty=%{public}@", buf, 0x34u);
  }

  if (v2)
  {
    v2->_preparedForUse = 1;
  }

  v40 = *MEMORY[0x1E69E9840];
}

+ (id)internalLocalStoreKeys
{
  if (qword_1EDB27078 != -1)
  {
    dispatch_once(&qword_1EDB27078, &__block_literal_global_70);
  }

  v3 = _MergedGlobals_146;

  return v3;
}

uint64_t __49__FCPrivateDataController_internalLocalStoreKeys__block_invoke()
{
  _MergedGlobals_146 = [MEMORY[0x1E695DFD8] setWithObjects:{@"sync-state", @"sync-enabled", @"ubiquity-identity-token", @"change-token", @"last-sync-date", @"last-push-date", 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isDirty
{
  [MEMORY[0x1E696AF00] isMainThread];
  if (self)
  {
    syncManagers = self->_syncManagers;
  }

  else
  {
    syncManagers = 0;
  }

  return [(NSArray *)syncManagers fc_containsObjectPassingTest:&__block_literal_global_61_2];
}

- (void)assertReadyForUse
{
  v13 = *MEMORY[0x1E69E9840];
  if (!self || !self->_preparedForUse)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-prepareForUse should be called before reading any data"];
      v5 = 136315906;
      v6 = "[FCPrivateDataController(Setup) assertReadyForUse]";
      v7 = 2080;
      v8 = "FCPrivateDataController.m";
      v9 = 1024;
      v10 = 1005;
      v11 = 2114;
      v12 = v4;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v5, 0x26u);

      if (!self)
      {
        goto LABEL_6;
      }
    }

    else if (!self)
    {
LABEL_6:
      [(FCPrivateDataController *)self _possiblySimulateCrashWithMessage:@"should never access userInfo data before calling prepareForUse"];
      goto LABEL_7;
    }

    if (!self->_preparedForUse)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  v3 = *MEMORY[0x1E69E9840];
}

- (void)activityObservingApplicationWindowDidBecomeForeground
{
  if ([(FCPrivateDataController *)self isSyncingEnabled])
  {

    [(FCPrivateDataController *)self _markAsDirtyIfZonesChangedExternally];
  }
}

- (NSDate)modificationDate
{
  v2 = [(FCPrivateDataController *)self localStore];
  v3 = [v2 modificationDate];

  return v3;
}

- (FCPrivateDataController)init
{
  v3.receiver = self;
  v3.super_class = FCPrivateDataController;
  return [(FCPrivateDataController *)&v3 init];
}

- (FCPrivateDataController)initWithContext:(id)a3 pushNotificationCenter:(id)a4 storeDirectory:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v40.receiver = self;
  v40.super_class = FCPrivateDataController;
  v12 = [(FCPrivateDataController *)&v40 init];
  v13 = v12;
  if (v12)
  {
    if (v9 && v11)
    {
      objc_storeStrong(&v12->_context, a3);
      objc_storeStrong(&v13->_pushNotificationCenter, a4);
      v14 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
      stateObservers = v13->_stateObservers;
      v13->_stateObservers = v14;

      v16 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
      observers = v13->_observers;
      v13->_observers = v16;

      v18 = objc_opt_new();
      syncQueue = v13->_syncQueue;
      v13->_syncQueue = v18;

      v20 = [v11 copy];
      storeDirectory = v13->_storeDirectory;
      v13->_storeDirectory = v20;

      v22 = objc_alloc_init(FCKeyValueStoreClassRegistry);
      [(FCKeyValueStoreClassRegistry *)v22 registerClass:objc_opt_class()];
      [objc_opt_class() populateLocalStoreClassRegistry:v22];
      v23 = [(FCPrivateDataController *)v13 localStoreMigrator];
      v24 = [v9 appActivityMonitor];
      v25 = [v9 backgroundTaskable];
      v26 = [FCKeyValueStoreSavePolicy appBackgroundPolicyWithActivityMonitor:v24 backgroundTaskable:v25];

      v27 = [FCKeyValueStore alloc];
      v28 = [objc_opt_class() localStoreFilename];
      v29 = v13->_storeDirectory;
      v30 = -[FCKeyValueStore initWithName:directory:version:options:classRegistry:migrator:savePolicy:](v27, "initWithName:directory:version:options:classRegistry:migrator:savePolicy:", v28, v29, [objc_opt_class() localStoreVersion], 2, v22, v23, v26);
      localStore = v13->_localStore;
      v13->_localStore = v30;

      [objc_opt_class() configureKeyValueStoreForJSONHandling:v13->_localStore];
      v32 = [v9 appActivityMonitor];
      [v32 addObserver:v13];

      v33 = [objc_opt_class() commandStoreFileName];
      v34 = [FCCommandQueue alloc];
      if (v33)
      {
        v35 = v13->_storeDirectory;
        v36 = -[FCCommandQueue initWithContext:storeDirectory:storeFilename:urgency:suspended:delegate:](v34, "initWithContext:storeDirectory:storeFilename:urgency:suspended:delegate:", v9, v35, v33, [objc_opt_class() commandQueueUrgency], 1, v13);
        commandQueue = v13->_commandQueue;
        v13->_commandQueue = v36;
      }

      else
      {
        v38 = -[FCCommandQueue initWithContext:urgency:suspended:delegate:](v34, "initWithContext:urgency:suspended:delegate:", v9, [objc_opt_class() commandQueueUrgency], 1, v13);
        v35 = v13->_commandQueue;
        v13->_commandQueue = v38;
      }
    }

    else
    {
      v22 = v12;
      v13 = 0;
    }
  }

  return v13;
}

- (void)dealloc
{
  v2 = self;
  if (self)
  {
    self = self->_pushNotificationCenter;
  }

  [(FCPushNotificationCenter *)self removeRecordZoneObserver:v2];
  v3.receiver = v2;
  v3.super_class = FCPrivateDataController;
  [(FCPrivateDataController *)&v3 dealloc];
}

- (void)_syncWithCondition:(void *)a3 completion:
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    if ([a1 isSyncingEnabled] && v5[2](v5))
    {
      v7 = [MEMORY[0x1E695DF00] distantPast];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v8 = a1[5];
      v9 = [v8 countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v29;
        do
        {
          v12 = 0;
          do
          {
            if (*v29 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [*(*(&v28 + 1) + 8 * v12) lastDirtyDate];
            if ([v13 fc_isLaterThan:v7])
            {
              v14 = v13;

              v7 = v14;
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v28 objects:v34 count:16];
        }

        while (v10);
      }

      v15 = FCPrivateDataLog;
      if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 138543362;
        v33 = v18;
        _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ will enter sync queue", buf, 0xCu);
      }

      v19 = a1[6];
      v20 = [a1 isWaitingForFirstSync];
      if ((v20 & [objc_opt_class() requiresHighPriorityFirstSync]) != 0)
      {
        v21 = 25;
      }

      else
      {
        v21 = 17;
      }

      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __57__FCPrivateDataController__syncWithCondition_completion___block_invoke;
      v24[3] = &unk_1E7C3BB68;
      v24[4] = a1;
      v25 = v7;
      v26 = v5;
      v27 = v6;
      v22 = v7;
      [v19 withQualityOfService:v21 enqueueBlockForMainThread:v24];
    }

    else if (v6)
    {
      (*(v6 + 2))(v6, 1, 0);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __57__FCPrivateDataController__syncWithCondition_completion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = FCPrivateDataLog;
  if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138543362;
    v19 = v8;
    _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ did enter sync queue", buf, 0xCu);
  }

  if ((*(*(a1 + 48) + 16))())
  {
    v9 = [*(a1 + 32) isWaitingForFirstSync];
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__FCPrivateDataController__syncWithCondition_completion___block_invoke_26;
    v14[3] = &unk_1E7C3BB40;
    v14[4] = v10;
    v17 = v9;
    v15 = *(a1 + 56);
    v16 = v3;
    [(FCPrivateDataController *)v10 _serialSyncUpToDate:v11 completion:v14];
  }

  else
  {
    v12 = *(a1 + 56);
    if (v12)
    {
      (*(v12 + 16))(v12, 1, 0);
    }

    v3[2](v3);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __57__FCPrivateDataController__syncWithCondition_completion___block_invoke_26(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  [*(a1 + 32) handleSyncCompletion];
  if (([*(a1 + 32) isDirty] & 1) == 0)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = *(a1 + 32);
    if (v6)
    {
      v6 = v6[7];
    }

    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        v11 = 0;
        do
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v26 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            [v12 privateDataControllerDidBecomeClean:*(a1 + 32)];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v9);
    }

    if (*(a1 + 56) == 1 && ([*(a1 + 32) isWaitingForFirstSync] & 1) == 0)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v13 = *(a1 + 32);
      if (v13)
      {
        v13 = v13[7];
      }

      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v23;
        do
        {
          v18 = 0;
          do
          {
            if (*v23 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v22 + 1) + 8 * v18);
            if (objc_opt_respondsToSelector())
            {
              [v19 privateDataControllerDidPerformFirstSync:{*(a1 + 32), v22}];
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
        }

        while (v16);
      }
    }
  }

  v20 = *(a1 + 40);
  if (v20)
  {
    (*(v20 + 16))(v20, a2, v5);
  }

  (*(*(a1 + 48) + 16))();

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_serialSyncUpToDate:(void *)a3 completion:
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    v7 = FCPrivateDataLog;
    if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138543362;
      v41 = v10;
      _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ fetching changes", buf, 0xCu);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__FCPrivateDataController__serialSyncUpToDate_completion___block_invoke;
    aBlock[3] = &unk_1E7C3BC40;
    aBlock[4] = a1;
    v11 = v6;
    v38 = v11;
    v29 = v5;
    v12 = v5;
    v37 = v12;
    v13 = _Block_copy(aBlock);
    *(a1 + 8) = [*(a1 + 40) fc_containsObjectPassingTest:&__block_literal_global_87];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = *(a1 + 40);
    v15 = [v14 countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v33;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v32 + 1) + 8 * i);
          if (([v19 isCleanUpToDate:v12] & 1) == 0)
          {
            v24 = [a1 context];
            v25 = [v24 internalPrivateDataContext];
            v26 = [v19 isAwaitingFirstSync];
            if ((v26 & [objc_opt_class() requiresHighPriorityFirstSync]) != 0)
            {
              v27 = 25;
            }

            else
            {
              v27 = 17;
            }

            v30[0] = MEMORY[0x1E69E9820];
            v30[1] = 3221225472;
            v30[2] = __58__FCPrivateDataController__serialSyncUpToDate_completion___block_invoke_2_88;
            v30[3] = &unk_1E7C3BC68;
            v30[4] = v19;
            v31 = v13;
            [v19 fetchChangesWithContext:v25 qualityOfService:v27 completionHandler:v30];

            goto LABEL_19;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v32 objects:v39 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v20 = FCPrivateDataLog;
    if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138543362;
      v41 = v23;
      _os_log_impl(&dword_1B63EF000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ finished fetching changes", buf, 0xCu);
    }

    (*(v11 + 2))(v11, 0, 0);
LABEL_19:
    v5 = v29;
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)syncWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__FCPrivateDataController_syncWithCompletion___block_invoke;
  v6[3] = &unk_1E7C37BC0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  FCPerformBlockOnMainThread(v6);
}

void __46__FCPrivateDataController_syncWithCompletion___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__FCPrivateDataController_syncWithCompletion___block_invoke_2;
  aBlock[3] = &unk_1E7C36F40;
  aBlock[4] = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  [(FCPrivateDataController *)*(a1 + 32) _syncWithCondition:v2 completion:*(a1 + 40)];
}

- (void)syncWithCallbackQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__FCPrivateDataController_syncWithCallbackQueue_completion___block_invoke;
  v10[3] = &unk_1E7C39F98;
  v11 = v6;
  v12 = v7;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
  FCPerformBlockOnMainThread(v10);
}

void __60__FCPrivateDataController_syncWithCallbackQueue_completion___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__FCPrivateDataController_syncWithCallbackQueue_completion___block_invoke_2;
  aBlock[3] = &unk_1E7C36F40;
  aBlock[4] = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__FCPrivateDataController_syncWithCallbackQueue_completion___block_invoke_3;
  v4[3] = &unk_1E7C39C20;
  v6 = *(a1 + 48);
  v5 = *(a1 + 40);
  [(FCPrivateDataController *)v3 _syncWithCondition:v2 completion:v4];
}

void __60__FCPrivateDataController_syncWithCallbackQueue_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__FCPrivateDataController_syncWithCallbackQueue_completion___block_invoke_4;
    block[3] = &unk_1E7C3A700;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)forceSyncWithCompletion:(id)a3
{
  v4 = a3;
  if (![(FCPrivateDataController *)self isWaitingForFirstSync])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __51__FCPrivateDataController_forceSyncWithCompletion___block_invoke_2;
    v5[3] = &unk_1E7C37BC0;
    v5[4] = self;
    v6 = v4;
    FCPerformBlockOnMainThread(v5);
  }
}

uint64_t __51__FCPrivateDataController_forceSyncWithCompletion___block_invoke_2(uint64_t a1)
{
  [(FCPrivateDataController *)*(a1 + 32) _markAsDirtyAndNotifyObservers:?];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 syncWithCompletion:v3];
}

- (void)_markAsDirtyAndNotifyObservers:(uint64_t)a1
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = *(a1 + 40);
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v10 + 1) + 8 * v8++) markAsDirty];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    if (a2)
    {
      [(FCPrivateDataController *)a1 _notifyObservers];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)performFirstSyncWithCallbackQueue:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = FCPrivateDataLog;
  if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCPrivateDataController isWaitingForFirstSync](self, "isWaitingForFirstSync")}];
    *buf = 138543618;
    v18 = v11;
    v19 = 2114;
    v20 = v12;
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ was asked to perform first sync; isWaitingForFirstSync=%{public}@", buf, 0x16u);
  }

  if ([(FCPrivateDataController *)self isWaitingForFirstSync])
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __72__FCPrivateDataController_performFirstSyncWithCallbackQueue_completion___block_invoke;
    v14[3] = &unk_1E7C39F98;
    v14[4] = self;
    v16 = v7;
    v15 = v6;
    FCPerformBlockOnMainThread(v14);
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 1, 0);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __72__FCPrivateDataController_performFirstSyncWithCallbackQueue_completion___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__FCPrivateDataController_performFirstSyncWithCallbackQueue_completion___block_invoke_2;
  aBlock[3] = &unk_1E7C36F40;
  aBlock[4] = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__FCPrivateDataController_performFirstSyncWithCallbackQueue_completion___block_invoke_3;
  v4[3] = &unk_1E7C39C20;
  v6 = *(a1 + 48);
  v5 = *(a1 + 40);
  [(FCPrivateDataController *)v3 _syncWithCondition:v2 completion:v4];
}

uint64_t __72__FCPrivateDataController_performFirstSyncWithCallbackQueue_completion___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isDirty];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 isWaitingForFirstSync];
  }

  return result;
}

void __72__FCPrivateDataController_performFirstSyncWithCallbackQueue_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__FCPrivateDataController_performFirstSyncWithCallbackQueue_completion___block_invoke_4;
    block[3] = &unk_1E7C3A700;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)performFirstSyncWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__FCPrivateDataController_performFirstSyncWithCompletion___block_invoke;
  v6[3] = &unk_1E7C3BB90;
  v7 = v4;
  v5 = v4;
  [(FCPrivateDataController *)self performFirstSyncWithCallbackQueue:MEMORY[0x1E69E96A0] completion:v6];
}

uint64_t __58__FCPrivateDataController_performFirstSyncWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)saveWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FCPrivateDataController *)self localStore];
  [v5 saveWithCompletionHandler:v4];
}

- (void)addStateObserver:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  if (v4)
  {
    if (self)
    {
      stateObservers = self->_stateObservers;
    }

    else
    {
      stateObservers = 0;
    }

    if ([(NSHashTable *)stateObservers containsObject:v4]&& os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%p is already an observer", v4];
      *buf = 136315906;
      v11 = "[FCPrivateDataController addStateObserver:]";
      v12 = 2080;
      v13 = "FCPrivateDataController.m";
      v14 = 1024;
      v15 = 314;
      v16 = 2114;
      v17 = v9;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      if (self)
      {
        goto LABEL_7;
      }
    }

    else if (self)
    {
LABEL_7:
      v6 = self->_stateObservers;
LABEL_8:
      [(NSHashTable *)v6 addObject:v4];
      goto LABEL_11;
    }

    v6 = 0;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "stateObserver != nil"];
    *buf = 136315906;
    v11 = "[FCPrivateDataController addStateObserver:]";
    v12 = 2080;
    v13 = "FCPrivateDataController.m";
    v14 = 1024;
    v15 = 310;
    v16 = 2114;
    v17 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];
}

- (void)removeStateObserver:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  if (v4)
  {
    if (self)
    {
      stateObservers = self->_stateObservers;
    }

    else
    {
      stateObservers = 0;
    }

    [(NSHashTable *)stateObservers removeObject:v4];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "stateObserver != nil"];
    *buf = 136315906;
    v9 = "[FCPrivateDataController removeStateObserver:]";
    v10 = 2080;
    v11 = "FCPrivateDataController.m";
    v12 = 1024;
    v13 = 323;
    v14 = 2114;
    v15 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)isBackedByAnyRecordZoneIDsInSet:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = a3;
  v5 = [objc_opt_class() backingRecordZoneIDs];
  v6 = [v3 setWithArray:v5];

  LOBYTE(v5) = [v6 intersectsSet:v4];
  return v5;
}

- (void)addObserver:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  if (v4)
  {
    v5 = [(FCPrivateDataController *)self observers];
    v6 = [v5 containsObject:v4];

    if (v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%p is already an observer", v4];
      *buf = 136315906;
      v11 = "[FCPrivateDataController addObserver:]";
      v12 = 2080;
      v13 = "FCPrivateDataController.m";
      v14 = 1024;
      v15 = 344;
      v16 = 2114;
      v17 = v9;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v7 = [(FCPrivateDataController *)self observers];
    [v7 addObject:v4];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer != nil"];
    *buf = 136315906;
    v11 = "[FCPrivateDataController addObserver:]";
    v12 = 2080;
    v13 = "FCPrivateDataController.m";
    v14 = 1024;
    v15 = 340;
    v16 = 2114;
    v17 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_8:
  v8 = *MEMORY[0x1E69E9840];
}

- (void)removeObserver:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  if (v4)
  {
    v5 = [(FCPrivateDataController *)self observers];
    [v5 removeObject:v4];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer != nil"];
    *buf = 136315906;
    v8 = "[FCPrivateDataController removeObserver:]";
    v9 = 2080;
    v10 = "FCPrivateDataController.m";
    v11 = 1024;
    v12 = 353;
    v13 = 2114;
    v14 = v5;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_5:
  v6 = *MEMORY[0x1E69E9840];
}

- (void)addCommandToCommandQueue:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  if ((!self || !self->_commandQueue) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't enqueue a command without a command queue"];
    v12 = 136315906;
    v13 = "[FCPrivateDataController addCommandToCommandQueue:]";
    v14 = 2080;
    v15 = "FCPrivateDataController.m";
    v16 = 1024;
    v17 = 364;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v12, 0x26u);
  }

  if ([(FCPrivateDataController *)self isSyncingEnabled])
  {
    v5 = FCPrivateDataLog;
    if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ adding command to command queue", &v12, 0xCu);
    }

    if (self)
    {
      commandQueue = self->_commandQueue;
    }

    else
    {
      commandQueue = 0;
    }

    [(FCCommandQueue *)commandQueue addCommand:v4];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (NSArray)recordNamesPendingSaveToCloud
{
  v32 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  v3 = [MEMORY[0x1E695DFA8] set];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  if (self)
  {
    commandQueue = self->_commandQueue;
  }

  else
  {
    commandQueue = 0;
  }

  obj = [(FCCommandQueue *)commandQueue enqueuedCommands];
  v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        if (v9)
        {
          if ([*(*(&v26 + 1) + 8 * i) conformsToProtocol:&unk_1F2E780C0])
          {
            v10 = v9;
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

        v11 = v10;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v12 = [v11 createdOrModifiedRecordIDs];
        v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v23;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v23 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = [*(*(&v22 + 1) + 8 * j) recordName];
              [v3 addObject:v17];
            }

            v14 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v14);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }

  v18 = [v3 allObjects];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (BOOL)requiresPushNotificationSupport
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "+[FCPrivateDataController requiresPushNotificationSupport]";
    v10 = 2080;
    v11 = "FCPrivateDataController.m";
    v12 = 1024;
    v13 = 415;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "+[FCPrivateDataController requiresPushNotificationSupport]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

+ (BOOL)requiresBatchedFirstSync
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "+[FCPrivateDataController requiresBatchedFirstSync]";
    v10 = 2080;
    v11 = "FCPrivateDataController.m";
    v12 = 1024;
    v13 = 420;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "+[FCPrivateDataController requiresBatchedFirstSync]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

+ (BOOL)requiresHighPriorityFirstSync
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "+[FCPrivateDataController requiresHighPriorityFirstSync]";
    v10 = 2080;
    v11 = "FCPrivateDataController.m";
    v12 = 1024;
    v13 = 425;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "+[FCPrivateDataController requiresHighPriorityFirstSync]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

+ (id)backingRecordZoneIDs
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "+[FCPrivateDataController backingRecordZoneIDs]";
    v10 = 2080;
    v11 = "FCPrivateDataController.m";
    v12 = 1024;
    v13 = 430;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "+[FCPrivateDataController backingRecordZoneIDs]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

+ (id)backingRecordIDs
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "+[FCPrivateDataController backingRecordIDs]";
    v10 = 2080;
    v11 = "FCPrivateDataController.m";
    v12 = 1024;
    v13 = 435;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "+[FCPrivateDataController backingRecordIDs]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

+ (id)localStoreFilename
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "+[FCPrivateDataController localStoreFilename]";
    v10 = 2080;
    v11 = "FCPrivateDataController.m";
    v12 = 1024;
    v13 = 440;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "+[FCPrivateDataController localStoreFilename]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

+ (unint64_t)localStoreVersion
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "+[FCPrivateDataController localStoreVersion]";
    v10 = 2080;
    v11 = "FCPrivateDataController.m";
    v12 = 1024;
    v13 = 445;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "+[FCPrivateDataController localStoreVersion]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

+ (id)commandStoreFileName
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "+[FCPrivateDataController commandStoreFileName]";
    v10 = 2080;
    v11 = "FCPrivateDataController.m";
    v12 = 1024;
    v13 = 471;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "+[FCPrivateDataController commandStoreFileName]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

+ (int64_t)commandQueueUrgency
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "+[FCPrivateDataController commandQueueUrgency]";
    v10 = 2080;
    v11 = "FCPrivateDataController.m";
    v12 = 1024;
    v13 = 476;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "+[FCPrivateDataController commandQueueUrgency]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

+ (id)commandsToMergeLocalDataToCloud:(id)a3 privateDataDirectory:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v14 = "+[FCPrivateDataController commandsToMergeLocalDataToCloud:privateDataDirectory:]";
    v15 = 2080;
    v16 = "FCPrivateDataController.m";
    v17 = 1024;
    v18 = 481;
    v19 = 2114;
    v20 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v8 = MEMORY[0x1E695DF30];
  v9 = *MEMORY[0x1E695D930];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "+[FCPrivateDataController commandsToMergeLocalDataToCloud:privateDataDirectory:]"];
  v11 = [v8 exceptionWithName:v9 reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

- (void)handleSyncWithChangedRecords:(id)a3 deletedRecordNames:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v14 = "[FCPrivateDataController handleSyncWithChangedRecords:deletedRecordNames:]";
    v15 = 2080;
    v16 = "FCPrivateDataController.m";
    v17 = 1024;
    v18 = 491;
    v19 = 2114;
    v20 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v8 = MEMORY[0x1E695DF30];
  v9 = *MEMORY[0x1E695D930];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCPrivateDataController handleSyncWithChangedRecords:deletedRecordNames:]"];
  v11 = [v8 exceptionWithName:v9 reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v11 = "[FCPrivateDataController allKnownRecordNamesWithinRecordZoneWithID:]";
    v12 = 2080;
    v13 = "FCPrivateDataController.m";
    v14 = 1024;
    v15 = 496;
    v16 = 2114;
    v17 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCPrivateDataController allKnownRecordNamesWithinRecordZoneWithID:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (void)loadLocalCachesFromStore
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "[FCPrivateDataController loadLocalCachesFromStore]";
    v10 = 2080;
    v11 = "FCPrivateDataController.m";
    v12 = 1024;
    v13 = 501;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCPrivateDataController loadLocalCachesFromStore]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

+ (id)desiredKeys
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "+[FCPrivateDataController desiredKeys]";
    v10 = 2080;
    v11 = "FCPrivateDataController.m";
    v12 = 1024;
    v13 = 506;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "+[FCPrivateDataController desiredKeys]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

+ (BOOL)isLocalStoreKeyInternal:(id)a3
{
  v4 = a3;
  v5 = [a1 internalLocalStoreKeys];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)zoneSyncManager:(id)a3 stateDidChange:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [MEMORY[0x1E696AF00] isMainThread];
  v27 = self;
  v8 = [(FCPrivateDataController *)self localStore];
  v9 = [v8 objectForKeyedSubscript:@"sync-state"];

  [MEMORY[0x1E695DF70] array];
  v29 = v28 = v7;
  [v29 addObject:v7];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v26 = v9;
  v10 = [v9 zoneStates];
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    do
    {
      v14 = 0;
      do
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v30 + 1) + 8 * v14);
        v16 = [v15 zoneName];
        if (v6)
        {
          v17 = v6[2];
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;
        v19 = [v18 zoneName];
        v20 = [v16 isEqualToString:v19];

        if ((v20 & 1) == 0)
        {
          [v29 addObject:v15];
        }

        ++v14;
      }

      while (v12 != v14);
      v21 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
      v12 = v21;
    }

    while (v21);
  }

  if (v26)
  {
    v22 = [v26 copy];
    v23 = v27;
  }

  else
  {
    v23 = v27;
    if (v27)
    {
      v22 = objc_alloc_init(MEMORY[0x1E69B6F20]);
      [v22 setVersion:2];
    }

    else
    {
      v22 = 0;
    }
  }

  [v22 setZoneStates:v29];
  v24 = [(FCPrivateDataController *)v23 localStore];
  [v24 setObject:v22 forKeyedSubscript:@"sync-state"];

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_notifyObservers
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = *(a1 + 56);
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      do
      {
        v6 = 0;
        do
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v9 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            [v7 privateDataControllerDidBecomeDirty:{a1, v9}];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)recordSyncManager:(id)a3 stateDidChange:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [MEMORY[0x1E696AF00] isMainThread];
  v31 = self;
  v8 = [(FCPrivateDataController *)self localStore];
  v9 = [v8 objectForKeyedSubscript:@"sync-state"];

  v37 = [MEMORY[0x1E695DF70] array];
  v32 = v7;
  [v37 addObject:v7];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v30 = v9;
  obj = [v9 recordStates];
  v10 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (!v10)
  {
    goto LABEL_20;
  }

  v11 = v10;
  v12 = *v39;
  v33 = *v39;
  v34 = v6;
  do
  {
    v13 = 0;
    v35 = v11;
    do
    {
      if (*v39 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v38 + 1) + 8 * v13);
      v15 = [v14 recordName];
      if (v6)
      {
        v16 = v6[1];
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;
      v18 = [v17 recordName];
      if (([v15 isEqualToString:v18] & 1) == 0)
      {

LABEL_14:
        [v37 addObject:v14];
        goto LABEL_15;
      }

      v19 = [v14 recordZoneName];
      if (v6)
      {
        v20 = v6[1];
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;
      v22 = [v21 zoneID];
      v23 = [v22 zoneName];
      v24 = [v19 isEqualToString:v23];

      v12 = v33;
      v6 = v34;
      v11 = v35;
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_15:
      ++v13;
    }

    while (v11 != v13);
    v25 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    v11 = v25;
  }

  while (v25);
LABEL_20:

  if (v30)
  {
    v26 = [v30 copy];
    v27 = v31;
  }

  else
  {
    v27 = v31;
    if (v31)
    {
      v26 = objc_alloc_init(MEMORY[0x1E69B6F20]);
      [v26 setVersion:2];
    }

    else
    {
      v26 = 0;
    }
  }

  [v26 setRecordStates:v37];
  v28 = [(FCPrivateDataController *)v27 localStore];
  [v28 setObject:v26 forKeyedSubscript:@"sync-state"];

  v29 = *MEMORY[0x1E69E9840];
}

- (int64_t)qualityOfServiceForNextCommandInCommandQueue:(id)a3
{
  if (self)
  {
    v3 = [self isWaitingForFirstSync];
    if ((v3 & [objc_opt_class() requiresHighPriorityFirstSync]) != 0)
    {
      return 25;
    }

    else
    {
      return 17;
    }
  }

  return self;
}

- (void)_markAsDirtyIfZonesChangedExternally
{
  v52 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = [MEMORY[0x1E696AAE8] mainBundle];
    v2 = [v1 bundleIdentifier];
    v3 = [v2 isEqualToString:@"com.apple.news"];

    if (v3)
    {
      v4 = [MEMORY[0x1E695DF00] distantPast];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v5 = [objc_opt_class() backingRecordZoneIDs];
      v6 = [v5 countByEnumeratingWithState:&v38 objects:v51 count:16];
      if (v6)
      {
        v8 = v6;
        v9 = *v39;
        *&v7 = 138544130;
        v32 = v7;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v39 != v9)
            {
              objc_enumerationMutation(v5);
            }

            v11 = *(*(&v38 + 1) + 8 * i);
            v12 = [v11 zoneName];
            v13 = FCZoneLastModifiedExternallySharedPreferenceKey(v12);

            v14 = NewsCoreUserDefaults();
            v15 = [v14 objectForKey:v13];

            if (v15)
            {
              v16 = FCPrivateDataLog;
              if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
              {
                v17 = v16;
                v18 = objc_opt_class();
                v19 = NSStringFromClass(v18);
                v20 = [v11 zoneName];
                *buf = v32;
                v44 = v19;
                v45 = 2114;
                v46 = v20;
                v47 = 2114;
                v48 = v4;
                v49 = 2114;
                v50 = v15;
                _os_log_impl(&dword_1B63EF000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ externally modified at %{public}@ vs local %{public}@", buf, 0x2Au);
              }

              v21 = [v4 laterDate:v15];

              v4 = v21;
            }
          }

          v8 = [v5 countByEnumeratingWithState:&v38 objects:v51 count:16];
        }

        while (v8);
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v22 = *(a1 + 40);
      v23 = [v22 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = 0;
        v26 = *v35;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v35 != v26)
            {
              objc_enumerationMutation(v22);
            }

            v28 = *(*(&v34 + 1) + 8 * j);
            v29 = [v28 lastCleanDate];
            v30 = [v29 fc_isEarlierThan:v4];

            if (v30)
            {
              [v28 markAsDirty];
              v25 = 1;
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v34 objects:v42 count:16];
        }

        while (v24);

        if (v25)
        {
          [(FCPrivateDataController *)a1 _notifyObservers];
        }
      }

      else
      {
      }
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __58__FCPrivateDataController__serialSyncUpToDate_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, char a5, void *a6, void *a7)
{
  v47 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = FCPrivateDataLog;
  if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 32);
    v20 = v18;
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    *buf = 138543874;
    v42 = v22;
    v43 = 2048;
    v44 = [v14 count];
    v45 = 2048;
    v46 = [v15 count];
    _os_log_impl(&dword_1B63EF000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ fetched changes with %lu changed records and %lu deleted records", buf, 0x20u);
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __58__FCPrivateDataController__serialSyncUpToDate_completion___block_invoke_77;
  v31[3] = &unk_1E7C3BC18;
  v32 = v17;
  v23 = *(a1 + 48);
  v33 = v14;
  v34 = v15;
  v40 = a5;
  v24 = *(a1 + 40);
  v35 = *(a1 + 32);
  v36 = v13;
  v38 = v23;
  v39 = v16;
  v37 = v24;
  v25 = v16;
  v26 = v13;
  v27 = v15;
  v28 = v14;
  v29 = v17;
  FCPerformBlockOnMainThread(v31);

  v30 = *MEMORY[0x1E69E9840];
}

void __58__FCPrivateDataController__serialSyncUpToDate_completion___block_invoke_77(uint64_t a1)
{
  v79 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v63 = MEMORY[0x1E69E9820];
    v64 = 3221225472;
    v65 = __58__FCPrivateDataController__serialSyncUpToDate_completion___block_invoke_2;
    v66 = &unk_1E7C37778;
    v68 = *(a1 + 80);
    v67 = *(a1 + 32);
    v68[2](v68, 2, v67);

    v2 = v68;
  }

  else
  {
    v3 = [*(a1 + 40) fc_dictionaryWithKeyBlock:&__block_literal_global_80];
    v2 = [v3 mutableCopy];

    v4 = [MEMORY[0x1E695DFA8] setWithArray:*(a1 + 48)];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v5 = *(a1 + 56);
    if (v5)
    {
      v6 = *(v5 + 32);
    }

    else
    {
      v6 = 0;
    }

    v7 = [v6 enqueuedCommands];
    v8 = [v7 countByEnumeratingWithState:&v59 objects:v71 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v60;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v60 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v59 + 1) + 8 * i);
          if (v12)
          {
            if ([*(*(&v59 + 1) + 8 * i) conformsToProtocol:&unk_1F2E780C0])
            {
              v13 = v12;
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            v13 = 0;
          }

          v14 = v13;
          [v14 applyToRemoteRecords:v2 remoteDeletions:v4];
        }

        v9 = [v7 countByEnumeratingWithState:&v59 objects:v71 count:16];
      }

      while (v9);
    }

    v15 = MEMORY[0x1E695DFA8];
    v16 = [v4 fc_arrayByTransformingWithBlock:&__block_literal_global_83];
    v17 = [v15 setWithArray:v16];

    if (*(a1 + 96) == 1)
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v18 = *(a1 + 56);
      v19 = *(a1 + 64);
      if (v18)
      {
        objc_opt_class();
        if (v19 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v20 = v19;
          v21 = v20[2];
          v18 = [v18 allKnownRecordNamesWithinRecordZoneWithID:v21];
        }

        else
        {
          objc_opt_class();
          if (v19 && (objc_opt_isKindOfClass() & 1) != 0)
          {
            v21 = v19;
            v22 = v21[1];
            v23 = [v22 recordName];
            *buf = v23;
            v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];

            v20 = 0;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Case unsupported"];
              *buf = 136315906;
              *&buf[4] = "[FCPrivateDataController _allKnownRecordIDsForSyncManager:]";
              v73 = 2080;
              v74 = "FCPrivateDataController.m";
              v75 = 1024;
              v76 = 844;
              v77 = 2114;
              v78 = v49;
              _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
            }

            v21 = 0;
            v20 = 0;
            v18 = MEMORY[0x1E695E0F0];
          }
        }
      }

      v24 = [v18 countByEnumeratingWithState:&v55 objects:v70 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v56;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v56 != v26)
            {
              objc_enumerationMutation(v18);
            }

            [v17 addObject:*(*(&v55 + 1) + 8 * j)];
          }

          v25 = [v18 countByEnumeratingWithState:&v55 objects:v70 count:16];
        }

        while (v25);
      }

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v28 = v2;
      v29 = [v28 countByEnumeratingWithState:&v51 objects:v69 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v52;
        do
        {
          for (k = 0; k != v30; ++k)
          {
            if (*v52 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = [*(*(&v51 + 1) + 8 * k) recordID];
            [v4 removeObject:v33];
          }

          v30 = [v28 countByEnumeratingWithState:&v51 objects:v69 count:16];
        }

        while (v30);
      }

      v34 = FCPrivateDataLog;
      if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
      {
        v35 = *(a1 + 56);
        v36 = v34;
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        v39 = [v4 count];
        *buf = 138543618;
        *&buf[4] = v38;
        v73 = 2048;
        v74 = v39;
        _os_log_impl(&dword_1B63EF000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@ needs to reset local data, so deleting %lu records", buf, 0x16u);
      }
    }

    v40 = *(a1 + 56);
    v41 = [v2 allValues];
    v42 = [v17 allObjects];
    [v40 handleSyncWithChangedRecords:v41 deletedRecordNames:v42];

    if (*(a1 + 96) == 1 && ([*(a1 + 56) isWaitingForFirstSync] & 1) == 0)
    {
      v43 = *(a1 + 56);
      if (v43)
      {
        v44 = *(a1 + 64);
        objc_opt_class();
        if (v44)
        {
          if (objc_opt_isKindOfClass())
          {
            v45 = v44;
          }

          else
          {
            v45 = 0;
          }
        }

        else
        {
          v45 = 0;
        }

        v46 = v45;

        if (v46)
        {
          v47 = v46[2];
          [v43 handleSyncDidResetLocalDataForRecordZoneWithID:v47];
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Case unsupported"];
          *buf = 136315906;
          *&buf[4] = "[FCPrivateDataController _handleSyncDidResetLocalDataForSyncManager:]";
          v73 = 2080;
          v74 = "FCPrivateDataController.m";
          v75 = 1024;
          v76 = 858;
          v77 = 2114;
          v78 = v50;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }
      }
    }

    (*(*(a1 + 88) + 16))();
    [(FCPrivateDataController *)*(a1 + 56) _serialSyncUpToDate:*(a1 + 80) completion:?];
  }

  v48 = *MEMORY[0x1E69E9840];
}

- (void)enableSyncing
{
  v15 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  if (self && self->_preparedForUse && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"migration actions should be called before -prepareForUse"];
    v7 = 136315906;
    v8 = "[FCPrivateDataController(Setup) enableSyncing]";
    v9 = 2080;
    v10 = "FCPrivateDataController.m";
    v11 = 1024;
    v12 = 876;
    v13 = 2114;
    v14 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v7, 0x26u);
  }

  [(FCPrivateDataController *)self setSyncingEnabled:1];
  v3 = [(FCPrivateDataController *)self localStore];
  [v3 setCloudBackupEnabled:0];

  if (![(FCPrivateDataController *)self isSyncingEnabled]&& os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"syncing should be enabled"];
    v7 = 136315906;
    v8 = "[FCPrivateDataController(Setup) enableSyncing]";
    v9 = 2080;
    v10 = "FCPrivateDataController.m";
    v11 = 1024;
    v12 = 885;
    v13 = 2114;
    v14 = v5;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v7, 0x26u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)createLocalStore
{
  v15 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  if (self && self->_preparedForUse && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"migration actions should be called before -prepareForUse"];
    v7 = 136315906;
    v8 = "[FCPrivateDataController(Setup) createLocalStore]";
    v9 = 2080;
    v10 = "FCPrivateDataController.m";
    v11 = 1024;
    v12 = 904;
    v13 = 2114;
    v14 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v7, 0x26u);
  }

  [(FCPrivateDataController *)self setSyncingEnabled:0];
  v3 = [(FCPrivateDataController *)self localStore];
  [v3 setCloudBackupEnabled:1];

  if ([(FCPrivateDataController *)self isSyncingEnabled]&& os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"syncing should be disabled"];
    v7 = 136315906;
    v8 = "[FCPrivateDataController(Setup) createLocalStore]";
    v9 = 2080;
    v10 = "FCPrivateDataController.m";
    v11 = 1024;
    v12 = 909;
    v13 = 2114;
    v14 = v5;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v7, 0x26u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)mergeLocalStoreWithCloudWithPrivateDataDirectory:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self && self->_preparedForUse && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"migration actions should be called before -prepareForUse"];
    *buf = 136315906;
    v27 = "[FCPrivateDataController(Setup) mergeLocalStoreWithCloudWithPrivateDataDirectory:]";
    v28 = 2080;
    v29 = "FCPrivateDataController.m";
    v30 = 1024;
    v31 = 914;
    v32 = 2114;
    v33 = v20;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = objc_opt_class();
  v6 = [(FCPrivateDataController *)self localStore];
  v7 = [v5 commandsToMergeLocalDataToCloud:v6 privateDataDirectory:v4];

  if (v7)
  {
    v8 = FCPrivateDataLog;
    if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138543362;
      v27 = v11;
      _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ adding merge commands to command queue", buf, 0xCu);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        v16 = 0;
        do
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          if (self)
          {
            commandQueue = self->_commandQueue;
          }

          else
          {
            commandQueue = 0;
          }

          [(FCCommandQueue *)commandQueue addCommand:*(*(&v21 + 1) + 8 * v16++), v21];
        }

        while (v14 != v16);
        v18 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
        v14 = v18;
      }

      while (v18);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

id __47__FCPrivateDataController_Setup__prepareForUse__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695BA70];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 recordName];
  v6 = objc_alloc(MEMORY[0x1E695BA90]);
  v7 = [v3 recordZoneName];

  v8 = [v6 initWithZoneName:v7 ownerName:*MEMORY[0x1E695B728]];
  v9 = [v4 initWithRecordName:v5 zoneID:v8];

  return v9;
}

id *__47__FCPrivateDataController_Setup__prepareForUse__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [FCPrivateZoneSyncManager alloc];
  v5 = *(a1 + 32);
  v6 = [objc_opt_class() desiredKeys];
  v7 = *(a1 + 32);
  v8 = [objc_opt_class() requiresBatchedFirstSync];
  v9 = *(a1 + 40);
  v10 = [v3 zoneName];
  v11 = [v9 objectForKeyedSubscript:v10];
  v12 = [(FCPrivateZoneSyncManager *)&v4->super.isa initWithRecordZoneID:v3 desiredKeys:v6 requiresBatchedFirstSync:v8 currentState:v11];

  if (v12)
  {
    objc_storeWeak(v12 + 3, *(a1 + 32));
  }

  return v12;
}

id *__47__FCPrivateDataController_Setup__prepareForUse__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [FCPrivateRecordSyncManager alloc];
  v5 = *(a1 + 32);
  v6 = [objc_opt_class() desiredKeys];
  v7 = [*(a1 + 40) objectForKeyedSubscript:v3];
  v8 = [(FCPrivateRecordSyncManager *)&v4->super.isa initWithRecordID:v3 desiredKeys:v6 currentState:v7];

  if (v8)
  {
    objc_storeWeak(v8 + 2, *(a1 + 32));
  }

  return v8;
}

uint64_t __47__FCPrivateDataController_Setup__prepareForUse__block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) markAsDirty];
  v2 = *(a1 + 32);

  return [v2 notifyObservers];
}

- (void)_possiblySimulateCrashWithMessage:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (NFInternalBuild())
  {
    v4 = NewsCoreUserDefaults();
    if ([v4 BOOLForKey:@"disable_simulated_crashes_for_encryption"])
    {
    }

    else
    {
      v5 = NSClassFromString(&cfstr_Xctest.isa);

      if (!v5)
      {
        v6 = FCPrivateDataLog;
        if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_FAULT))
        {
          v8 = 138543362;
          v9 = v3;
          _os_log_fault_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_FAULT, "triggering simulated crash with message %{public}@", &v8, 0xCu);
        }
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)jsonEncodableObject
{
  v2 = [(FCPrivateDataController *)self localStore];
  v3 = [v2 jsonEncodableObject];

  return v3;
}

@end
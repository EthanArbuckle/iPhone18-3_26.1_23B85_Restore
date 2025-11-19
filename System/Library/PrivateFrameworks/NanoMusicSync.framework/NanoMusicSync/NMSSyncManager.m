@interface NMSSyncManager
+ (NMSSyncManager)sharedManager;
+ (id)_gizmoSyncStates;
+ (unint64_t)_syncStateForProgressInfo:(id)a3 session:(id)a4;
+ (unint64_t)_syncWaitingSubstateForProgressInfo:(id)a3;
+ (unsigned)_mediaTypeForAssetType:(id)a3;
+ (void)_gizmoSyncStates;
- (NMSSyncManager)init;
- (id)_addedTracksPredicateForMediaType:(unsigned int)a3;
- (id)_assetTypeForMediaType:(unsigned int)a3;
- (id)_defaultProgressInfoDict;
- (id)_defaultSyncProgressInfoForAssetType:(id)a3;
- (id)_syncProgressInfoByAssetType:(id)a3;
- (id)_tracksPredicateWithPersistentIDs:(id)a3;
- (id)_tracksQueryWithPredicate:(id)a3;
- (id)_updateProgressInfoForAssetType:(id)a3 assetItemsTotal:(int64_t)a4 assetItemsSyncedForSyncSession:(int64_t)a5 bytesToSyncTotal:(unint64_t)a6 bytesSyncedThisSyncSession:(unint64_t)a7;
- (unint64_t)_estimatedAssetAggregateItemSizeInBytesWithQuery:(id)a3;
- (unint64_t)_numberOfItemsNeedingDownloadForAssetType:(id)a3;
- (void)_handleSyncStateDidChangeNotification;
- (void)_invokeOnMainThread:(id)a3;
- (void)_startObservingSyncSession;
- (void)_stopObservingSyncSession;
- (void)_updateObservedSyncSession;
- (void)_updateSyncProgress;
- (void)beginReceivingSyncProgressUpdates;
- (void)dealloc;
- (void)session:(id)a3 didBeginSessionTask:(id)a4;
- (void)session:(id)a3 didFinishSessionTask:(id)a4;
- (void)session:(id)a3 didUpdateSessionTask:(id)a4;
- (void)session:(id)a3 willBeginSessionTask:(id)a4;
- (void)sessionDidFinish:(id)a3;
- (void)sessionWillBegin:(id)a3;
@end

@implementation NMSSyncManager

+ (NMSSyncManager)sharedManager
{
  if (sharedManager_onceToken_2 != -1)
  {
    +[NMSSyncManager sharedManager];
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

uint64_t __31__NMSSyncManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(NMSSyncManager);
  v1 = sharedManager_sharedManager;
  sharedManager_sharedManager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (NMSSyncManager)init
{
  v10.receiver = self;
  v10.super_class = NMSSyncManager;
  v2 = [(NMSSyncManager *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(NMSSyncManager *)v2 _defaultProgressInfoDict];
    v5 = [v4 mutableCopy];
    syncProgressInfoByAssetType = v3->_syncProgressInfoByAssetType;
    v3->_syncProgressInfoByAssetType = v5;

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v3 selector:sel__updateSyncProgress name:*MEMORY[0x277CD58D8] object:0];
    [v7 addObserver:v3 selector:sel__updateObservedSyncSession name:*MEMORY[0x277CEA420] object:0];
    [v7 addObserver:v3 selector:sel__handleSyncStateDidChangeNotification name:@"com.apple.nanomusicsync.sync-state" object:0];
    v8 = [MEMORY[0x277CD5E10] defaultMediaLibrary];
    [v8 beginGeneratingLibraryChangeNotifications];

    [(NMSSyncManager *)v3 _updateObservedSyncSession];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CD5E10] defaultMediaLibrary];
  [v3 endGeneratingLibraryChangeNotifications];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = NMSSyncManager;
  [(NMSSyncManager *)&v5 dealloc];
}

- (id)_defaultProgressInfoDict
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"Music";
  v3 = [(NMSSyncManager *)self _defaultSyncProgressInfoForAssetType:?];
  v10[0] = v3;
  v9[1] = @"Podcast";
  v4 = [(NMSSyncManager *)self _defaultSyncProgressInfoForAssetType:?];
  v10[1] = v4;
  v9[2] = @"Audiobook";
  v5 = [(NMSSyncManager *)self _defaultSyncProgressInfoForAssetType:?];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_defaultSyncProgressInfoForAssetType:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setAssetType:v4];
  [v5 setAggregateAssetItemBytesAdded:{-[NMSSyncManager _aggregateAssetItemBytesAddedForMediaType:](self, "_aggregateAssetItemBytesAddedForMediaType:", objc_msgSend(objc_opt_class(), "_mediaTypeForAssetType:", v4))}];
  if ([v4 isEqualToString:@"Music"])
  {
    v6 = @"com.apple.NanoMusic";
  }

  else if ([v4 isEqualToString:@"Podcast"])
  {
    v6 = @"com.apple.podcasts";
  }

  else
  {
    if (![v4 isEqualToString:@"Audiobook"])
    {
      goto LABEL_8;
    }

    v6 = @"com.apple.NanoBooks";
  }

  v7 = +[NMSMediaPinningManager sharedManager];
  v8 = [v7 downloadInfoForBundleIdentifier:v6];
  [v5 setNumberOfAssetItems:{objc_msgSend(v8, "totalItemCount")}];

LABEL_8:
  [v5 setNumberOfAssetItemsSynced:{objc_msgSend(v5, "numberOfAssetItems")}];

  return v5;
}

- (id)_tracksQueryWithPredicate:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277D2B620];
    v4 = MEMORY[0x277D2B5F8];
    v5 = a3;
    v6 = [v4 autoupdatingSharedLibrary];
    v7 = [v3 unrestrictedAllItemsQueryWithlibrary:v6 predicate:v5 orderingTerms:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_addedTracksPredicateForMediaType:(unsigned int)a3
{
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = @"com.apple.podcasts";
  if (a3 != 4)
  {
    v6 = 0;
  }

  if (a3 == 8)
  {
    v6 = @"com.apple.NanoMusic";
  }

  v7 = v6;
  v8 = +[NMSMediaPinningManager sharedManager];
  v9 = [v8 downloadInfoForBundleIdentifier:v7];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__NMSSyncManager__addedTracksPredicateForMediaType___block_invoke;
  v13[3] = &unk_27993E2C0;
  v14 = v5;
  v10 = v5;
  [v9 enumerateMediaItemsUsingBlock:v13];

  v11 = [(NMSSyncManager *)self _tracksPredicateWithPersistentIDs:v10];

  return v11;
}

void __52__NMSSyncManager__addedTracksPredicateForMediaType___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 mediaLibraryIdentifier];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 mediaLibraryIdentifier];
    [v4 addObject:v5];
  }
}

- (unint64_t)_estimatedAssetAggregateItemSizeInBytesWithQuery:(id)a3
{
  v3 = [a3 valueForAggregateFunction:*MEMORY[0x277D2B520] onEntitiesForProperty:*MEMORY[0x277D2B588]];
  v4 = [v3 unsignedLongLongValue];

  return v4;
}

- (id)_assetTypeForMediaType:(unsigned int)a3
{
  if (a3 - 2 > 6)
  {
    return &stru_286C836D8;
  }

  else
  {
    return off_27993ED50[a3 - 2];
  }
}

+ (unsigned)_mediaTypeForAssetType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Music"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"Podcast"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Audiobook"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0xFFFFFF;
  }

  return v4;
}

- (void)beginReceivingSyncProgressUpdates
{
  v2 = objc_alloc_init(MEMORY[0x277CEA440]);
  [v2 openDeviceMessageLink];
}

- (void)session:(id)a3 willBeginSessionTask:(id)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__NMSSyncManager_session_willBeginSessionTask___block_invoke;
  v4[3] = &unk_27993DD20;
  v4[4] = self;
  [(NMSSyncManager *)self _invokeOnMainThread:v4, a4];
}

- (void)session:(id)a3 didBeginSessionTask:(id)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__NMSSyncManager_session_didBeginSessionTask___block_invoke;
  v4[3] = &unk_27993DD20;
  v4[4] = self;
  [(NMSSyncManager *)self _invokeOnMainThread:v4, a4];
}

- (void)session:(id)a3 didUpdateSessionTask:(id)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__NMSSyncManager_session_didUpdateSessionTask___block_invoke;
  v4[3] = &unk_27993DD20;
  v4[4] = self;
  [(NMSSyncManager *)self _invokeOnMainThread:v4, a4];
}

- (void)session:(id)a3 didFinishSessionTask:(id)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__NMSSyncManager_session_didFinishSessionTask___block_invoke;
  v4[3] = &unk_27993DD20;
  v4[4] = self;
  [(NMSSyncManager *)self _invokeOnMainThread:v4, a4];
}

- (void)sessionWillBegin:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35__NMSSyncManager_sessionWillBegin___block_invoke;
  v3[3] = &unk_27993DD20;
  v3[4] = self;
  [(NMSSyncManager *)self _invokeOnMainThread:v3];
}

- (void)sessionDidFinish:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35__NMSSyncManager_sessionDidFinish___block_invoke;
  v3[3] = &unk_27993DD20;
  v3[4] = self;
  [(NMSSyncManager *)self _invokeOnMainThread:v3];
}

- (void)_updateObservedSyncSession
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __44__NMSSyncManager__updateObservedSyncSession__block_invoke;
  v2[3] = &unk_27993DD20;
  v2[4] = self;
  [(NMSSyncManager *)self _invokeOnMainThread:v2];
}

void __44__NMSSyncManager__updateObservedSyncSession__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _stopObservingSyncSession];
  v2 = [MEMORY[0x277CEA468] sessionsWithSessionTypeIdentifier:*MEMORY[0x277CEA408] dataClass:@"Media"];
  v3 = [v2 lastObject];
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = v3;

  v6 = *(*(a1 + 32) + 32);
  v7 = [*(*(a1 + 32) + 8) sessionIdentifier];
  v8 = *(a1 + 32);
  v9 = *(v8 + 32);
  *(v8 + 32) = v7;

  if (v6 != *(*(a1 + 32) + 32) && ([v6 isEqual:?] & 1) == 0)
  {
    v10 = NMLogForCategory(5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(a1 + 32) + 32);
      v13 = 138543618;
      v14 = v11;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_25B27B000, v10, OS_LOG_TYPE_DEFAULT, "Active sync session identifier changed (%{public}@, previously %{public}@)", &v13, 0x16u);
    }
  }

  [*(a1 + 32) _startObservingSyncSession];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_stopObservingSyncSession
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = NMLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    observedSession = self->_observedSession;
    *buf = 138412290;
    v17 = observedSession;
    _os_log_impl(&dword_25B27B000, v3, OS_LOG_TYPE_DEFAULT, "Stopping observation of sync session: %@", buf, 0xCu);
  }

  [(ATSession *)self->_observedSession removeObserver:self];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(NSMutableDictionary *)self->_syncProgressInfoByAssetType allValues];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9) setNumberOfAssetItemsSynced:{objc_msgSend(*(*(&v11 + 1) + 8 * v9), "numberOfAssetItems")}];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(NMSSyncManager *)self _updateSyncProgress];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_startObservingSyncSession
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = NMLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    observedSession = self->_observedSession;
    v6 = 138412290;
    v7 = observedSession;
    _os_log_impl(&dword_25B27B000, v3, OS_LOG_TYPE_DEFAULT, "Starting observation of sync session: %@", &v6, 0xCu);
  }

  [(ATSession *)self->_observedSession removeObserver:self];
  [(ATSession *)self->_observedSession addObserver:self];
  [(NMSSyncManager *)self _updateSyncProgress];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_invokeOnMainThread:(id)a3
{
  v3 = MEMORY[0x277CCACC8];
  block = a3;
  if ([v3 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_handleSyncStateDidChangeNotification
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __55__NMSSyncManager__handleSyncStateDidChangeNotification__block_invoke;
  v2[3] = &unk_27993DD20;
  v2[4] = self;
  [(NMSSyncManager *)self _invokeOnMainThread:v2];
}

+ (unint64_t)_syncStateForProgressInfo:(id)a3 session:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = +[NMSyncDefaults sharedDefaults];
  v8 = [v7 clientPinningSettingsToken];

  v9 = +[NMSyncDefaults sharedDefaults];
  v10 = [v9 syncStateDict];
  v11 = [v10 objectForKey:@"CompanionToken"];

  if (!v8 || v11 && ([v8 isEqual:v11] & 1) != 0)
  {
    if (a4)
    {
      v12 = [v6 numberOfAssetItemsSynced];
      if (v12 < [v6 numberOfAssetItems])
      {
        v13 = NMLogForCategory(5);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          LOWORD(v21) = 0;
          _os_log_impl(&dword_25B27B000, v13, OS_LOG_TYPE_INFO, "[SyncStatus] Asset Syncing", &v21, 2u);
        }

        v14 = 99;
        goto LABEL_18;
      }

      if (![v6 numberOfAssetItems] || (v15 = objc_msgSend(v6, "numberOfAssetItemsSynced"), v15 == objc_msgSend(v6, "numberOfAssetItems")))
      {
        v16 = NMLogForCategory(5);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          LOWORD(v21) = 0;
          _os_log_impl(&dword_25B27B000, v16, OS_LOG_TYPE_INFO, "[SyncStatus] Asset Syncing done", &v21, 2u);
        }
      }
    }

    v13 = [a1 _gizmoSyncStates];
    v17 = [v6 assetType];
    v18 = [v13 objectForKeyedSubscript:v17];
    v14 = [v18 unsignedIntegerValue];

    goto LABEL_18;
  }

  v13 = NMLogForCategory(5);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138543618;
    v22 = v8;
    v23 = 2114;
    v24 = v11;
    _os_log_impl(&dword_25B27B000, v13, OS_LOG_TYPE_DEFAULT, "[SyncStatus] Mismatched tokens; resolvedMusicSyncState & resolvedPodcastsSyncState -> pending (local: %{public}@; remote: %{public}@)", &v21, 0x16u);
  }

  v14 = 2;
LABEL_18:

  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (unint64_t)_syncWaitingSubstateForProgressInfo:(id)a3
{
  v3 = a3;
  v4 = +[NMSyncDefaults sharedDefaults];
  v5 = [v4 syncStateDict];

  v6 = [v5 objectForKeyedSubscript:@"DetailsDict"];
  v7 = [v6 objectForKeyedSubscript:@"WaitingSubstatesByMediaType"];
  v8 = [v3 assetType];

  v9 = [v7 objectForKeyedSubscript:v8];

  v10 = [v9 unsignedIntegerValue];
  return v10;
}

- (id)_syncProgressInfoByAssetType:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_syncProgressInfoByAssetType objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_syncProgressInfoByAssetType objectForKeyedSubscript:v4];
  }

  else
  {
    v6 = objc_opt_new();
    [v6 setAssetType:v4];
    syncProgressInfoByAssetType = self->_syncProgressInfoByAssetType;
    v8 = [v6 assetType];
    [(NSMutableDictionary *)syncProgressInfoByAssetType setObject:v6 forKey:v8];
  }

  return v6;
}

- (id)_updateProgressInfoForAssetType:(id)a3 assetItemsTotal:(int64_t)a4 assetItemsSyncedForSyncSession:(int64_t)a5 bytesToSyncTotal:(unint64_t)a6 bytesSyncedThisSyncSession:(unint64_t)a7
{
  v29 = *MEMORY[0x277D85DE8];
  v11 = [(NMSSyncManager *)self _syncProgressInfoByAssetType:a3];
  [v11 setNumberOfAssetItems:a4];
  [v11 setNumberOfAssetItemsSynced:a5];
  [v11 setAggregateAssetItemBytesAdded:a6];
  v12 = NMLogForCategory(5);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v21 = 134218752;
    v22 = a4;
    v23 = 2048;
    v24 = a5;
    v25 = 2048;
    v26 = *&a6;
    v27 = 2048;
    v28 = a7;
    _os_log_debug_impl(&dword_25B27B000, v12, OS_LOG_TYPE_DEBUG, "numberOfAssetItems = %li,numberOfAssetItemsSynced = %li, aggregateAssetItemBytesAdded = %llu, aggregateAssetItemBytesSynced = %llu", &v21, 0x2Au);
  }

  v13 = a7 / [v11 aggregateAssetItemBytesAdded];
  v14 = NMLogForCategory(5);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v19 = [v11 aggregateAssetItemBytesAdded];
    v15 = v13;
    v21 = 134218496;
    v22 = a7;
    v23 = 2048;
    v24 = v19;
    v25 = 2048;
    v26 = v13;
    _os_log_debug_impl(&dword_25B27B000, v14, OS_LOG_TYPE_DEBUG, "estimatedSyncProgress = %llu / %llu = %f", &v21, 0x20u);
  }

  else
  {
    v15 = v13;
  }

  if (v13 > 1.0)
  {
    v16 = NMLogForCategory(5);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = [v11 aggregateAssetItemBytesAdded];
      v21 = 134218496;
      v22 = a7;
      v23 = 2048;
      v24 = v20;
      v25 = 2048;
      v26 = v15;
      _os_log_error_impl(&dword_25B27B000, v16, OS_LOG_TYPE_ERROR, "[SyncStatus] estimatedSyncProgress > 1.0, %llu / %llu = %f; pinning at 1.0", &v21, 0x20u);
    }

    v13 = 1.0;
  }

  [v11 setEstimatedSyncProgress:{COERCE_DOUBLE(COERCE_UNSIGNED_INT(fmaxf(v13, 0.0)))}];
  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_updateSyncProgress
{
  v77 = *MEMORY[0x277D85DE8];
  v2 = self->_observedSession;
  v3 = [(ATSession *)v2 sessionTasks];
  v4 = NMLogForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(ATSession *)v2 sessionIdentifier];
    *buf = 138543362;
    v74 = v5;
    _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "Start updating sync progress - session identifier is %{public}@", buf, 0xCu);
  }

  if (v2)
  {
    v6 = NMLogForCategory(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 count];
      v8 = [(ATSession *)v2 isCancelled];
      *buf = 134218240;
      v74 = v7;
      v75 = 1024;
      v76 = v8;
      _os_log_impl(&dword_25B27B000, v6, OS_LOG_TYPE_DEFAULT, "Num session tasks: %lu; isCancelled: %d", buf, 0x12u);
    }
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v9 = v3;
  v10 = [v9 countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v67;
    v14 = *MEMORY[0x277CEA560];
    *&v11 = 138543362;
    v45 = v11;
    v48 = v9;
    v49 = v2;
    v46 = *MEMORY[0x277CEA560];
    v47 = *v67;
    do
    {
      v15 = 0;
      v50 = v12;
      do
      {
        if (*v67 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v66 + 1) + 8 * v15);
        if ([v16 isCancelled])
        {
          v17 = NMLogForCategory(5);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v16 sessionTaskIdentifier];
            *buf = 138412290;
            v74 = v18;
            _os_log_impl(&dword_25B27B000, v17, OS_LOG_TYPE_DEFAULT, "Task %@ is cancelled", buf, 0xCu);
          }
        }

        else
        {
          [v16 sessionGroupingKey];
          v19 = v53 = v15;
          v20 = [v19 isEqualToString:v14];

          v15 = v53;
          if (!v20)
          {
            goto LABEL_29;
          }

          v17 = [v16 properties];
          v52 = [v17 objectForKeyedSubscript:@"DetailedProgressByAssetType"];
          if ([v52 count])
          {
            v51 = v17;
            v21 = NMLogForCategory(5);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v45;
              v74 = v52;
              _os_log_impl(&dword_25B27B000, v21, OS_LOG_TYPE_DEFAULT, "Detailed sync progress by asset type <%{public}@>", buf, 0xCu);
            }

            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            obj = [v52 allValues];
            v22 = [obj countByEnumeratingWithState:&v62 objects:v71 count:16];
            if (v22)
            {
              v23 = v22;
              v55 = *v63;
              do
              {
                for (i = 0; i != v23; ++i)
                {
                  if (*v63 != v55)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v25 = *(*(&v62 + 1) + 8 * i);
                  v26 = [v25 objectForKeyedSubscript:@"AssetType"];
                  v27 = [v25 objectForKeyedSubscript:@"TotalAssetsToSync"];
                  v28 = [v27 integerValue];
                  v29 = [v25 objectForKeyedSubscript:@"TotalAssetsSynced"];
                  v30 = [v29 integerValue];
                  v31 = [v25 objectForKeyedSubscript:@"TotalBytesToSync"];
                  v32 = [v31 unsignedLongLongValue];
                  v33 = [v25 objectForKeyedSubscript:@"TotalBytesSynced"];
                  v34 = -[NMSSyncManager _updateProgressInfoForAssetType:assetItemsTotal:assetItemsSyncedForSyncSession:bytesToSyncTotal:bytesSyncedThisSyncSession:](self, "_updateProgressInfoForAssetType:assetItemsTotal:assetItemsSyncedForSyncSession:bytesToSyncTotal:bytesSyncedThisSyncSession:", v26, v28, v30, v32, [v33 unsignedLongLongValue]);
                }

                v23 = [obj countByEnumeratingWithState:&v62 objects:v71 count:16];
              }

              while (v23);
            }

            v9 = v48;
            v2 = v49;
            v12 = v50;
            v14 = v46;
            v13 = v47;
            v15 = v53;
            v17 = v51;
          }
        }

LABEL_29:
        ++v15;
      }

      while (v15 != v12);
      v12 = [v9 countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v12);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v35 = [(NSMutableDictionary *)self->_syncProgressInfoByAssetType allValues];
  v36 = [v35 countByEnumeratingWithState:&v58 objects:v70 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v59;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v59 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v58 + 1) + 8 * j);
        v41 = [v40 assetType];
        [v40 setNumberOfAssetItemsNeedingDownload:{-[NMSSyncManager _numberOfItemsNeedingDownloadForAssetType:](self, "_numberOfItemsNeedingDownloadForAssetType:", v41)}];

        [v40 setSyncState:{objc_msgSend(objc_opt_class(), "_syncStateForProgressInfo:session:", v40, v2)}];
        [v40 setSyncWaitingSubstate:{objc_msgSend(objc_opt_class(), "_syncWaitingSubstateForProgressInfo:", v40)}];
      }

      v37 = [v35 countByEnumeratingWithState:&v58 objects:v70 count:16];
    }

    while (v37);
  }

  v42 = NMLogForCategory(5);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    syncProgressInfoByAssetType = self->_syncProgressInfoByAssetType;
    *buf = 138543362;
    v74 = syncProgressInfoByAssetType;
    _os_log_impl(&dword_25B27B000, v42, OS_LOG_TYPE_DEFAULT, "Finished updating sync progress: %{public}@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__NMSSyncManager__updateSyncProgress__block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v44 = *MEMORY[0x277D85DE8];
}

void __37__NMSSyncManager__updateSyncProgress__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NMSSyncManagerSyncStateDidChangeNotification" object:*(a1 + 32)];
}

- (unint64_t)_numberOfItemsNeedingDownloadForAssetType:(id)a3
{
  if (![a3 isEqualToString:@"Music"])
  {
    return 0;
  }

  v3 = MEMORY[0x277CEA468];

  return [v3 activeSessionCountWithSessionTypeIdentifier:@"MLWatchDownload"];
}

- (id)_tracksPredicateWithPersistentIDs:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [MEMORY[0x277D2B610] predicateWithPersistentIDs:v3 shouldContain:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_gizmoSyncStates
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = +[NMSyncDefaults sharedDefaults];
  v3 = [v2 syncStateDict];

  v4 = NMLogForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v44 = v3;
    _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "[SyncStatus] sync state dict %{public}@", buf, 0xCu);
  }

  v5 = [v3 objectForKeyedSubscript:@"DetailsDict"];
  v6 = [v5 objectForKeyedSubscript:@"SyncStatesByMediaType"];
  v7 = [v6 objectForKeyedSubscript:@"Music"];

  v8 = [v3 objectForKeyedSubscript:@"DetailsDict"];
  v9 = [v8 objectForKeyedSubscript:@"SyncStatesByMediaType"];
  v10 = [v9 objectForKeyedSubscript:@"Podcast"];

  v11 = [v3 objectForKeyedSubscript:@"DetailsDict"];
  v12 = [v11 objectForKeyedSubscript:@"SyncStatesByMediaType"];
  v13 = [v12 objectForKeyedSubscript:@"Audiobook"];

  v40 = v7;
  if (v7 || v10 || v13)
  {
    if (v7)
    {
      v16 = [v7 unsignedIntegerValue];
      v19 = NMLogForCategory(5);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [NMSSyncProgressInfo _stringFromSyncState:v16];
        *buf = 138543362;
        v44 = v20;
        _os_log_impl(&dword_25B27B000, v19, OS_LOG_TYPE_DEFAULT, "[SyncStatus] Music sync state from gizmo: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v19 = NMLogForCategory(5);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v16 = 2;
        _os_log_impl(&dword_25B27B000, v19, OS_LOG_TYPE_DEFAULT, "[SyncStatus] No latestMusicSyncStateAsNumber; resolvedMusicSyncState -> pending", buf, 2u);
      }

      else
      {
        v16 = 2;
      }
    }

    if (v10)
    {
      v21 = [v10 unsignedIntegerValue];
      v22 = NMLogForCategory(5);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [NMSSyncProgressInfo _stringFromSyncState:v21];
        *buf = 138543362;
        v44 = v23;
        _os_log_impl(&dword_25B27B000, v22, OS_LOG_TYPE_DEFAULT, "[SyncStatus] Podcasts sync state from gizmo: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v22 = NMLogForCategory(5);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v21 = 2;
        _os_log_impl(&dword_25B27B000, v22, OS_LOG_TYPE_DEFAULT, "[SyncStatus] No latestPodcastsSyncStateAsNumber; resolvedPodcastsSyncState -> pending", buf, 2u);
      }

      else
      {
        v21 = 2;
      }
    }

    if (v13)
    {
      v24 = [v13 unsignedIntegerValue];
      v15 = NMLogForCategory(5);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [NMSSyncProgressInfo _stringFromSyncState:v24];
        *buf = 138543362;
        v44 = v25;
        _os_log_impl(&dword_25B27B000, v15, OS_LOG_TYPE_DEFAULT, "[SyncStatus] Audiobooks sync state from gizmo: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v15 = NMLogForCategory(5);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v24 = 2;
        _os_log_impl(&dword_25B27B000, v15, OS_LOG_TYPE_DEFAULT, "[SyncStatus] No latestAudiobooksSyncStateAsNumber; resolvedAudiobooksSyncState -> pending", buf, 2u);
      }

      else
      {
        v24 = 2;
      }
    }
  }

  else
  {
    v14 = [v3 objectForKeyedSubscript:@"SyncState"];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 unsignedIntegerValue];
      v17 = NMLogForCategory(5);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [NMSSyncProgressInfo _stringFromSyncState:v16];
        *buf = 138543362;
        v44 = v18;
        _os_log_impl(&dword_25B27B000, v17, OS_LOG_TYPE_DEFAULT, "[SyncStatus] Legacy Music sync state from gizmo: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v17 = NMLogForCategory(5);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v16 = 2;
        _os_log_impl(&dword_25B27B000, v17, OS_LOG_TYPE_DEFAULT, "[SyncStatus] No latestSyncStateAsNumber; resolvedMusicSyncState -> pending", buf, 2u);
      }

      else
      {
        v16 = 2;
      }
    }

    v26 = NMLogForCategory(5);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B27B000, v26, OS_LOG_TYPE_DEFAULT, "[SyncStatus] No new sync state keys in sync state dict. Assuming pending Podcasts and Audiobooks sync state", buf, 2u);
    }

    v24 = 2;
    v21 = 2;
  }

  v27 = NMLogForCategory(5);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [NMSSyncProgressInfo _stringFromSyncState:v16];
    v29 = [NMSSyncProgressInfo _stringFromSyncState:v21];
    v30 = [NMSSyncProgressInfo _stringFromSyncState:v24];
    *buf = 138544642;
    v44 = v28;
    v45 = 2048;
    v46 = v16;
    v47 = 2114;
    v48 = v29;
    v49 = 2048;
    v50 = v21;
    v51 = 2114;
    v52 = v30;
    v53 = 2048;
    v54 = v24;
    _os_log_impl(&dword_25B27B000, v27, OS_LOG_TYPE_DEFAULT, "[SyncStatus] resolvedMusicSyncState: %{public}@ [%tu] -- resolvedPodcastsSyncState: %{public}@ [%tu] -- resolvedAudiobooksSyncState: %{public}@ [%tu]", buf, 0x3Eu);
  }

  if (v16)
  {
    if (v21)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v31 = NMLogForCategory(5);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      +[NMSSyncManager _gizmoSyncStates];
    }

    v16 = 1;
    if (v21)
    {
LABEL_37:
      if (v24)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    }
  }

  v32 = NMLogForCategory(5);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    +[NMSSyncManager _gizmoSyncStates];
  }

  v21 = 1;
  if (!v24)
  {
LABEL_45:
    v33 = NMLogForCategory(5);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      +[NMSSyncManager _gizmoSyncStates];
    }

    v24 = 1;
  }

LABEL_48:
  v41[0] = @"Music";
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
  v42[0] = v34;
  v41[1] = @"Podcast";
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
  v42[1] = v35;
  v41[2] = @"Audiobook";
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24];
  v42[2] = v36;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:3];

  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

+ (void)_gizmoSyncStates
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [NMSSyncProgressInfo _stringFromSyncState:0];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4_0(&dword_25B27B000, v1, v2, "[SyncStatus] Unexpected _gizmoSyncState (Audiobooks): %{public}@; syncStateDict:%{public}@; resolvedSyncState -> idle", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

@end
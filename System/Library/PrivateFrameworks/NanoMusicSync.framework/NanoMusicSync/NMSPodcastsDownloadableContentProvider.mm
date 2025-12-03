@interface NMSPodcastsDownloadableContentProvider
- (BOOL)_changeContainsRelevantChannelChanges:(id)changes;
- (BOOL)_changeContainsRelevantEpisodeChanges:(id)changes;
- (BOOL)_changeContainsRelevantShowChanges:(id)changes;
- (BOOL)_changeContainsRelevantStationChanges:(id)changes;
- (BOOL)_shouldMergeHistoryTransaction:(id)transaction;
- (NMSDownloadableContentProviderDelegate)delegate;
- (NMSPodcastsDownloadableContentProvider)init;
- (NSPersistentHistoryToken)lastMergedToken;
- (id)_ctx;
- (id)_relevantChannelProperties;
- (id)createItemEnumerator;
- (void)_handlePersistentStoreRemoteChangeNotification:(id)notification;
- (void)_handlePodcastsPinningSelectionsDidChangeNotification:(id)notification;
- (void)_notifyDelegateContentDidChange;
- (void)_notifyDelegateContentDidChangeImmediately;
- (void)_processLatestPersistenHistoryChanges;
- (void)_resetPersistentHistoryTokenAndNotifyObservers;
- (void)environmentMonitorDidChangePower:(id)power;
- (void)extensionAccessDidChange;
- (void)setDelegate:(id)delegate;
- (void)setLastMergedToken:(id)token;
@end

@implementation NMSPodcastsDownloadableContentProvider

- (NMSPodcastsDownloadableContentProvider)init
{
  v22.receiver = self;
  v22.super_class = NMSPodcastsDownloadableContentProvider;
  v2 = [(NMSPodcastsDownloadableContentProvider *)&v22 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.NMSPodcastsDownloadableContentProvider.mergeQueue", v3);
    v5 = *(v2 + 1);
    *(v2 + 1) = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.NMSPodcastsDownloadableContentProvider.notificationQueue", v6);
    v8 = *(v2 + 2);
    *(v2 + 2) = v7;

    objc_initWeak(&location, v2);
    v9 = dispatch_source_create(MEMORY[0x277D85CE0], 0, 0, *(v2 + 1));
    v10 = *(v2 + 3);
    *(v2 + 3) = v9;

    v11 = *(v2 + 3);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __46__NMSPodcastsDownloadableContentProvider_init__block_invoke;
    handler[3] = &unk_27993DC58;
    objc_copyWeak(&v20, &location);
    dispatch_source_set_event_handler(v11, handler);
    dispatch_resume(*(v2 + 3));
    v12 = *(v2 + 1);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__NMSPodcastsDownloadableContentProvider_init__block_invoke_2;
    block[3] = &unk_27993DC58;
    objc_copyWeak(&v18, &location);
    dispatch_async(v12, block);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handlePersistentStoreRemoteChangeNotification_ name:*MEMORY[0x277CBE260] object:0];
    [defaultCenter addObserver:v2 selector:sel__handlePodcastsPinningSelectionsDidChangeNotification_ name:@"com.apple.nanomusicsync.podcasts-pinning-selections" object:0];
    mEMORY[0x277D3DAF0] = [MEMORY[0x277D3DAF0] sharedInstance];
    [mEMORY[0x277D3DAF0] addObserver:v2];

    mEMORY[0x277D7FA90] = [MEMORY[0x277D7FA90] sharedMonitor];
    [mEMORY[0x277D7FA90] registerObserver:v2];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __46__NMSPodcastsDownloadableContentProvider_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _processLatestPersistenHistoryChanges];
}

void __46__NMSPodcastsDownloadableContentProvider_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained lastMergedToken];

    WeakRetained = v3;
    if (!v2)
    {
      [v3 _resetPersistentHistoryTokenAndNotifyObservers];
      WeakRetained = v3;
    }
  }
}

- (id)createItemEnumerator
{
  v53 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D3DAF0] = [MEMORY[0x277D3DAF0] sharedInstance];
  isReady = [mEMORY[0x277D3DAF0] isReady];

  if (isReady)
  {
    mEMORY[0x277D7FA90] = [MEMORY[0x277D7FA90] sharedMonitor];
    v5 = [mEMORY[0x277D7FA90] isCharging] ^ 1;

    mEMORY[0x277D3DAF0]2 = +[NMSyncDefaults sharedDefaults];
    mEMORY[0x277D3DAE8] = [MEMORY[0x277D3DAE8] sharedInstance];
    mainOrPrivateContext = [mEMORY[0x277D3DAE8] mainOrPrivateContext];

    array = [MEMORY[0x277CBEB18] array];
    v10 = [NMSPodcastsDownloadSettings alloc];
    v11 = [mEMORY[0x277D3DAF0]2 objectForKey:@"PodcastsSavedEpisodesDownloadSettings"];
    v12 = [(NMSPodcastsDownloadSettings *)v10 initWithCollectionType:1 dictionary:v11];

    v13 = NMLogForCategory(5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v52 = v12;
      _os_log_impl(&dword_25B27B000, v13, OS_LOG_TYPE_DEFAULT, "_quotaManager (Podcasts containers) Saved Episodes %{public}@", buf, 0xCu);
    }

    if ([(NMSPodcastsDownloadSettings *)v12 isEnabled])
    {
      v14 = [NMSEpisodeFetchRequestItemEnumerator alloc];
      v15 = [NMSPodcastsFetchRequests fetchRequestForSavedEpisodesDownloadSettings:v12 downloadedOnly:v5];
      v16 = [(NMSEpisodeFetchRequestItemEnumerator *)v14 initWithFetchRequest:v15 ctx:mainOrPrivateContext];

      [array addObject:v16];
    }

    v17 = [mEMORY[0x277D3DAF0]2 objectForKey:@"PodcastsStationDownloadSettings"];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __62__NMSPodcastsDownloadableContentProvider_createItemEnumerator__block_invoke;
    v47[3] = &unk_27993ECE0;
    v50 = v5;
    v18 = mainOrPrivateContext;
    v48 = v18;
    v19 = array;
    v49 = v19;
    [v17 enumerateKeysAndObjectsUsingBlock:v47];
    array2 = [MEMORY[0x277CBEB18] array];
    v21 = [mEMORY[0x277D3DAF0]2 objectForKey:@"PodcastsShowDownloadSettings"];
    v40 = MEMORY[0x277D85DD0];
    v41 = 3221225472;
    v42 = __62__NMSPodcastsDownloadableContentProvider_createItemEnumerator__block_invoke_20;
    v43 = &unk_27993ECE0;
    v46 = v5;
    v22 = v18;
    v44 = v22;
    v23 = array2;
    v45 = v23;
    [v21 enumerateKeysAndObjectsUsingBlock:&v40];
    if ([v23 count])
    {
      v24 = [NMSAlternatingItemEnumerator alloc];
      v25 = [v23 copy];
      v26 = [(NMSAlternatingItemEnumerator *)v24 initWithItemEnumerators:v25];

      [v19 addObject:v26];
    }

    v27 = [NMSPodcastsDownloadSettings alloc];
    v28 = [mEMORY[0x277D3DAF0]2 objectForKey:@"PodcastsUpNextDownloadSettings"];
    v29 = [(NMSPodcastsDownloadSettings *)v27 initWithCollectionType:0 dictionary:v28];

    v30 = NMLogForCategory(5);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v52 = v29;
      _os_log_impl(&dword_25B27B000, v30, OS_LOG_TYPE_DEFAULT, "_quotaManager (Podcasts containers) Up Next %{public}@", buf, 0xCu);
    }

    if ([(NMSPodcastsDownloadSettings *)v29 isEnabled])
    {
      v31 = [NMSEpisodeFetchRequestItemEnumerator alloc];
      v32 = [NMSPodcastsFetchRequests fetchRequestForUpNextDownloadSettings:v29 downloadedOnly:v5];
      v33 = [(NMSEpisodeFetchRequestItemEnumerator *)v31 initWithFetchRequest:v32 ctx:v22];

      [v19 addObject:v33];
    }

    v34 = [NMSSequentialItemEnumerator alloc];
    v35 = [v19 copy];
    v36 = [(NMSSequentialItemEnumerator *)v34 initWithItemEnumerators:v35];
  }

  else
  {
    v37 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_25B27B000, v37, OS_LOG_TYPE_ERROR, "NMSPodcastsDownloadableContentProvider cannot open Podcasts DB. Returning nil item enumerator.", buf, 2u);
    }

    mEMORY[0x277D3DAF0]2 = [MEMORY[0x277D3DAF0] sharedInstance];
    [mEMORY[0x277D3DAF0]2 attemptToFix];
    v36 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];

  return v36;
}

void __62__NMSPodcastsDownloadableContentProvider_createItemEnumerator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [[NMSPodcastsDownloadSettings alloc] initWithCollectionType:2 dictionary:v6];

  if ([(NMSPodcastsDownloadSettings *)v7 isEnabled])
  {
    v8 = NMLogForCategory(5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543618;
      v14 = v5;
      v15 = 2114;
      v16 = v7;
      _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "_quotaManager (Podcasts containers) Station %{public}@ - %{public}@", &v13, 0x16u);
    }

    v9 = [NMSEpisodeFetchRequestItemEnumerator alloc];
    v10 = [NMSPodcastsFetchRequests fetchRequestForStationUUID:v5 downloadSettings:v7 downloadedOnly:*(a1 + 48)];
    v11 = [(NMSEpisodeFetchRequestItemEnumerator *)v9 initWithFetchRequest:v10 ctx:*(a1 + 32)];

    [*(a1 + 40) addObject:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __62__NMSPodcastsDownloadableContentProvider_createItemEnumerator__block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [[NMSPodcastsDownloadSettings alloc] initWithCollectionType:3 dictionary:v6];

  if ([(NMSPodcastsDownloadSettings *)v7 isEnabled])
  {
    v8 = NMLogForCategory(5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543618;
      v14 = v5;
      v15 = 2114;
      v16 = v7;
      _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "_quotaManager (Podcasts containers) Show %{public}@ - %{public}@", &v13, 0x16u);
    }

    v9 = [NMSEpisodeFetchRequestItemEnumerator alloc];
    v10 = [NMSPodcastsFetchRequests fetchRequestForFeedURL:v5 downloadSettings:v7 downloadedOnly:*(a1 + 48) ctx:*(a1 + 32)];
    v11 = [(NMSEpisodeFetchRequestItemEnumerator *)v9 initWithFetchRequest:v10 ctx:*(a1 + 32)];

    [*(a1 + 40) addObject:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_initWeak(&location, self);
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__NMSPodcastsDownloadableContentProvider_setDelegate___block_invoke;
  block[3] = &unk_27993DC80;
  objc_copyWeak(&v9, &location);
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(notificationQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __54__NMSPodcastsDownloadableContentProvider_setDelegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeWeak(WeakRetained + 6, *(a1 + 32));
    WeakRetained = v3;
  }
}

- (NMSDownloadableContentProviderDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  notificationQueue = self->_notificationQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__NMSPodcastsDownloadableContentProvider_delegate__block_invoke;
  v5[3] = &unk_27993DCA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(notificationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __50__NMSPodcastsDownloadableContentProvider_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8](WeakRetained, v4);
}

- (void)extensionAccessDidChange
{
  mEMORY[0x277D3DAF0] = [MEMORY[0x277D3DAF0] sharedInstance];
  isReady = [mEMORY[0x277D3DAF0] isReady];

  if (isReady)
  {
    v5 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_DEFAULT, "NMSPodcastsDownloadableContentProvider can access PodcastsDB again", buf, 2u);
    }

    objc_initWeak(buf, self);
    mergeQueue = self->_mergeQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__NMSPodcastsDownloadableContentProvider_extensionAccessDidChange__block_invoke;
    block[3] = &unk_27993DC58;
    objc_copyWeak(&v8, buf);
    dispatch_async(mergeQueue, block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

void __66__NMSPodcastsDownloadableContentProvider_extensionAccessDidChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained lastMergedToken];

    if (v2)
    {
      [v3 _notifyDelegateContentDidChange];
    }

    else
    {
      [v3 _resetPersistentHistoryTokenAndNotifyObservers];
    }

    WeakRetained = v3;
  }
}

- (void)environmentMonitorDidChangePower:(id)power
{
  v8 = *MEMORY[0x277D85DE8];
  powerCopy = power;
  v5 = NMLogForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = [powerCopy isCharging];
    _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_DEFAULT, "NMSPodcastsDownloadableContentProvider environment monitor did change power %x", v7, 8u);
  }

  [(NMSPodcastsDownloadableContentProvider *)self _notifyDelegateContentDidChangeImmediately];
  v6 = *MEMORY[0x277D85DE8];
}

- (NSPersistentHistoryToken)lastMergedToken
{
  v15 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_mergeQueue);
  lastMergedToken = self->_lastMergedToken;
  if (!lastMergedToken)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5 = [standardUserDefaults objectForKey:@"NMSPodcastsDownloadableContentObserverPersistentHistoryToken"];

    if (v5)
    {
      v12 = 0;
      v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v12];
      v7 = v12;
      if (v7)
      {
        p_super = _MTLogCategoryDatabase();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v14 = v7;
          _os_log_impl(&dword_25B27B000, p_super, OS_LOG_TYPE_ERROR, "NMSPodcastsDownloadableContentProvider encountered error trying to fetch previous history token %@", buf, 0xCu);
        }
      }

      else
      {
        v9 = v6;
        p_super = &self->_lastMergedToken->super;
        self->_lastMergedToken = v9;
      }
    }

    else
    {
      v7 = _MTLogCategoryDatabase();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B27B000, v7, OS_LOG_TYPE_DEFAULT, "NMSPodcastsDownloadableContentProvider has never processed persistent history data", buf, 2u);
      }
    }

    lastMergedToken = self->_lastMergedToken;
  }

  v10 = *MEMORY[0x277D85DE8];

  return lastMergedToken;
}

- (void)setLastMergedToken:(id)token
{
  v20 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  dispatch_assert_queue_V2(self->_mergeQueue);
  objc_storeStrong(&self->_lastMergedToken, token);
  if (tokenCopy)
  {
    v17 = 0;
    v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:tokenCopy requiringSecureCoding:1 error:&v17];
    v7 = v17;
    standardUserDefaults2 = v7;
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [standardUserDefaults setObject:v6 forKey:@"NMSPodcastsDownloadableContentObserverPersistentHistoryToken"];

      v10 = _MTLogCategoryDatabase();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v19 = tokenCopy;
        v11 = "NMSPodcastsDownloadableContentProvider set last processed persistent history token %@";
        v12 = v10;
        v13 = OS_LOG_TYPE_INFO;
        goto LABEL_13;
      }
    }

    else
    {
      v10 = _MTLogCategoryDatabase();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = standardUserDefaults2;
        v11 = "NMSPodcastsDownloadableContentProvider encountered error archiving last persistent history token %@";
        v12 = v10;
        v13 = OS_LOG_TYPE_ERROR;
LABEL_13:
        _os_log_impl(&dword_25B27B000, v12, v13, v11, buf, 0xCu);
      }
    }

    goto LABEL_15;
  }

  v14 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B27B000, v14, OS_LOG_TYPE_DEFAULT, "NMSPodcastsDownloadableContentProvider set last processed persistent history token to nil. Removing default.", buf, 2u);
  }

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults2 removeObjectForKey:@"NMSPodcastsDownloadableContentObserverPersistentHistoryToken"];
LABEL_15:

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_ctx
{
  mEMORY[0x277D3DAE8] = [MEMORY[0x277D3DAE8] sharedInstance];
  privateQueueContext = [mEMORY[0x277D3DAE8] privateQueueContext];

  return privateQueueContext;
}

- (BOOL)_changeContainsRelevantEpisodeChanges:(id)changes
{
  v22 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  changedObjectID = [changesCopy changedObjectID];
  entity = [changedObjectID entity];
  name = [entity name];

  if ([name isEqualToString:*MEMORY[0x277D3DCF8]])
  {
    if (([changesCopy changeType] & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      updatedProperties = [changesCopy updatedProperties];
      v8 = [updatedProperties countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        v9 = *v18;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v18 != v9)
            {
              objc_enumerationMutation(updatedProperties);
            }

            v11 = *(*(&v17 + 1) + 8 * i);
            propertiesToObserveForDownloadableEpisodes = [MEMORY[0x277D3DAF8] propertiesToObserveForDownloadableEpisodes];
            name2 = [v11 name];
            v14 = [propertiesToObserveForDownloadableEpisodes containsObject:name2];

            if (v14)
            {
              LOBYTE(v8) = 1;
              goto LABEL_14;
            }
          }

          v8 = [updatedProperties countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }

    else
    {
      LOBYTE(v8) = 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)_changeContainsRelevantShowChanges:(id)changes
{
  v22 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  changedObjectID = [changesCopy changedObjectID];
  entity = [changedObjectID entity];
  name = [entity name];

  if ([name isEqualToString:*MEMORY[0x277D3DD50]])
  {
    if (([changesCopy changeType] & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      updatedProperties = [changesCopy updatedProperties];
      v8 = [updatedProperties countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        v9 = *v18;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v18 != v9)
            {
              objc_enumerationMutation(updatedProperties);
            }

            v11 = *(*(&v17 + 1) + 8 * i);
            propertiesToObserveForDownloadableEpisodes = [MEMORY[0x277D3DB38] propertiesToObserveForDownloadableEpisodes];
            name2 = [v11 name];
            v14 = [propertiesToObserveForDownloadableEpisodes containsObject:name2];

            if (v14)
            {
              LOBYTE(v8) = 1;
              goto LABEL_14;
            }
          }

          v8 = [updatedProperties countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }

    else
    {
      LOBYTE(v8) = 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)_changeContainsRelevantStationChanges:(id)changes
{
  v22 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  changedObjectID = [changesCopy changedObjectID];
  entity = [changedObjectID entity];
  name = [entity name];

  if ([name isEqualToString:*MEMORY[0x277D3DD48]])
  {
    if (([changesCopy changeType] & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      updatedProperties = [changesCopy updatedProperties];
      v8 = [updatedProperties countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        v9 = *v18;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v18 != v9)
            {
              objc_enumerationMutation(updatedProperties);
            }

            v11 = *(*(&v17 + 1) + 8 * i);
            propertiesToObserveForDownloadableEpisodes = [MEMORY[0x277D3DB30] propertiesToObserveForDownloadableEpisodes];
            name2 = [v11 name];
            v14 = [propertiesToObserveForDownloadableEpisodes containsObject:name2];

            if (v14)
            {
              LOBYTE(v8) = 1;
              goto LABEL_14;
            }
          }

          v8 = [updatedProperties countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }

    else
    {
      LOBYTE(v8) = 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)_relevantChannelProperties
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = *MEMORY[0x277D3DBB8];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)_changeContainsRelevantChannelChanges:(id)changes
{
  v25 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  changedObjectID = [changesCopy changedObjectID];
  entity = [changedObjectID entity];
  name = [entity name];

  if ([name isEqualToString:*MEMORY[0x277D3DCE8]])
  {
    if (([changesCopy changeType] & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      updatedProperties = [changesCopy updatedProperties];
      v9 = [updatedProperties countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v21;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(updatedProperties);
            }

            v13 = *(*(&v20 + 1) + 8 * i);
            _relevantChannelProperties = [(NMSPodcastsDownloadableContentProvider *)self _relevantChannelProperties];
            name2 = [v13 name];
            v16 = [_relevantChannelProperties containsObject:name2];

            if (v16)
            {
              v17 = 1;
              goto LABEL_14;
            }
          }

          v10 = [updatedProperties countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v17 = 0;
LABEL_14:
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)_shouldMergeHistoryTransaction:(id)transaction
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  changes = [transaction changes];
  v5 = [changes countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(changes);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([(NMSPodcastsDownloadableContentProvider *)self _changeContainsRelevantEpisodeChanges:v9]|| [(NMSPodcastsDownloadableContentProvider *)self _changeContainsRelevantShowChanges:v9]|| [(NMSPodcastsDownloadableContentProvider *)self _changeContainsRelevantStationChanges:v9]|| [(NMSPodcastsDownloadableContentProvider *)self _changeContainsRelevantChannelChanges:v9])
        {
          v10 = 1;
          goto LABEL_15;
        }
      }

      v6 = [changes countByEnumeratingWithState:&v13 objects:v17 count:16];
      v10 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_15:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_notifyDelegateContentDidChange
{
  objc_initWeak(&location, self);
  notificationQueue = self->_notificationQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __73__NMSPodcastsDownloadableContentProvider__notifyDelegateContentDidChange__block_invoke;
  v4[3] = &unk_27993DC58;
  objc_copyWeak(&v5, &location);
  dispatch_async(notificationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __73__NMSPodcastsDownloadableContentProvider__notifyDelegateContentDidChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 32) == 1)
    {
      v4 = _MTLogCategoryDatabase();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "NMSPodcastsDownloadableContentProvider delegate notification pending.", buf, 2u);
      }
    }

    else
    {
      *(WeakRetained + 32) = 1;
      v5 = dispatch_time(0, 8000000000);
      v6 = v3[2];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __73__NMSPodcastsDownloadableContentProvider__notifyDelegateContentDidChange__block_invoke_32;
      block[3] = &unk_27993DC58;
      objc_copyWeak(&v8, (a1 + 32));
      dispatch_after(v5, v6, block);
      objc_destroyWeak(&v8);
    }
  }
}

void __73__NMSPodcastsDownloadableContentProvider__notifyDelegateContentDidChange__block_invoke_32(uint64_t a1)
{
  v2 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "NMSPodcastsDownloadableContentProvider scheduling delegate notification for 8s from now.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyDelegateContentDidChangeImmediately];
}

- (void)_notifyDelegateContentDidChangeImmediately
{
  objc_initWeak(&location, self);
  notificationQueue = self->_notificationQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __84__NMSPodcastsDownloadableContentProvider__notifyDelegateContentDidChangeImmediately__block_invoke;
  v4[3] = &unk_27993DC58;
  objc_copyWeak(&v5, &location);
  dispatch_async(notificationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __84__NMSPodcastsDownloadableContentProvider__notifyDelegateContentDidChangeImmediately__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    *(WeakRetained + 32) = 0;
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 6);
    [v2 downloadableContentProviderDidChangeContent:v3];

    WeakRetained = v3;
  }
}

- (void)_handlePersistentStoreRemoteChangeNotification:(id)notification
{
  v21 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    name = [notificationCopy name];
    userInfo = [notificationCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBE200]];
    v17 = 138412546;
    v18 = name;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_INFO, "NMSPodcastsDownloadableContentProvider received %@ with token %@", &v17, 0x16u);
  }

  mEMORY[0x277D3DAF0] = [MEMORY[0x277D3DAF0] sharedInstance];
  isReady = [mEMORY[0x277D3DAF0] isReady];

  if (isReady)
  {
    object = [notificationCopy object];
    _ctx = [(NMSPodcastsDownloadableContentProvider *)self _ctx];
    persistentStoreCoordinator = [_ctx persistentStoreCoordinator];

    if (object == persistentStoreCoordinator)
    {
      dispatch_source_merge_data(self->_persistentHistorySource, 1uLL);
    }
  }

  else
  {
    v14 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_25B27B000, v14, OS_LOG_TYPE_ERROR, "NMSPodcastsDownloadableContentProvider cannot open Podcasts DB. Will not respond to notification.", &v17, 2u);
    }

    mEMORY[0x277D3DAF0]2 = [MEMORY[0x277D3DAF0] sharedInstance];
    [mEMORY[0x277D3DAF0]2 attemptToFix];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_processLatestPersistenHistoryChanges
{
  v45 = *MEMORY[0x277D85DE8];
  _ctx = [(NMSPodcastsDownloadableContentProvider *)self _ctx];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__10;
  v40 = __Block_byref_object_dispose__10;
  lastMergedToken = [(NMSPodcastsDownloadableContentProvider *)self lastMergedToken];
  v4 = [MEMORY[0x277CBE4B0] fetchHistoryAfterToken:v37[5]];
  [v4 setResultType:5];
  [v4 setFetchBatchSize:200];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__10;
  v34 = __Block_byref_object_dispose__10;
  v35 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__10;
  v28[4] = __Block_byref_object_dispose__10;
  v29 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __79__NMSPodcastsDownloadableContentProvider__processLatestPersistenHistoryChanges__block_invoke;
  v23[3] = &unk_27993DCD0;
  v26 = v28;
  v5 = _ctx;
  v24 = v5;
  v6 = v4;
  v25 = v6;
  v27 = &v30;
  [v5 performBlockAndWait:v23];
  if (v31[5])
  {
    v7 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = v31[5];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_25B27B000, v7, OS_LOG_TYPE_ERROR, "NMSPodcastsDownloadableContentProvider encountered error trying to fetch store result %@", &buf, 0xCu);
    }

    v9 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_25B27B000, v9, OS_LOG_TYPE_ERROR, "NMSPodcastsDownloadableContentProvider clearing out persistent history token and performing a full persistent history run", &buf, 2u);
    }

    [(NMSPodcastsDownloadableContentProvider *)self setLastMergedToken:0];
    v10 = v31[5];
    v31[5] = 0;

    v11 = [MEMORY[0x277CBE4B0] fetchHistoryAfterToken:0];

    [v11 setResultType:5];
    [v11 setFetchBatchSize:200];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __79__NMSPodcastsDownloadableContentProvider__processLatestPersistenHistoryChanges__block_invoke_34;
    v18[3] = &unk_27993DCD0;
    v21 = v28;
    v19 = v5;
    v6 = v11;
    v20 = v6;
    v22 = &v30;
    [v19 performBlockAndWait:v18];
    if (v31[5])
    {
      v12 = _MTLogCategoryDatabase();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = v31[5];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v13;
        _os_log_impl(&dword_25B27B000, v12, OS_LOG_TYPE_ERROR, "NMSPodcastsDownloadableContentProvider encountered error trying to fetch store result after setting to nil %@", &buf, 0xCu);
      }

      goto LABEL_16;
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v43 = 0x2020000000;
  v44 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__NMSPodcastsDownloadableContentProvider__processLatestPersistenHistoryChanges__block_invoke_35;
  v17[3] = &unk_27993DCF8;
  v17[4] = self;
  v17[5] = v28;
  v17[6] = &buf;
  v17[7] = &v36;
  [v5 performBlockAndWait:v17];
  [(NMSPodcastsDownloadableContentProvider *)self setLastMergedToken:v37[5]];
  if (*(*(&buf + 1) + 24) == 1)
  {
    v14 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_25B27B000, v14, OS_LOG_TYPE_DEFAULT, "NMSPodcastsDownloadableContentProvider notifying delegate", v16, 2u);
    }

    [(NMSPodcastsDownloadableContentProvider *)self _notifyDelegateContentDidChange];
  }

  _Block_object_dispose(&buf, 8);
LABEL_16:

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);
  v15 = *MEMORY[0x277D85DE8];
}

void __79__NMSPodcastsDownloadableContentProvider__processLatestPersistenHistoryChanges__block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __79__NMSPodcastsDownloadableContentProvider__processLatestPersistenHistoryChanges__block_invoke_34(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __79__NMSPodcastsDownloadableContentProvider__processLatestPersistenHistoryChanges__block_invoke_35(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [*(*(*(a1 + 40) + 8) + 40) result];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        if ([*(a1 + 32) _shouldMergeHistoryTransaction:v7])
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
          v9 = _MTLogCategoryDatabase();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *v17 = 0;
            _os_log_impl(&dword_25B27B000, v9, OS_LOG_TYPE_INFO, "NMSPodcastsDownloadableContentProvider merging changes", v17, 2u);
          }

          v10 = [MEMORY[0x277D3DAE8] sharedInstance];
          v11 = [v10 coreDataContainer];
          v12 = [v7 objectIDNotification];
          [v11 mergeFromContextDidSaveNotification:v12];
        }

        v13 = [v7 token];
        v14 = *(*(a1 + 56) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;

        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_handlePodcastsPinningSelectionsDidChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"IsInProcessNotification"];
  bOOLValue = [v5 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v7 = NMLogForCategory(5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25B27B000, v7, OS_LOG_TYPE_DEFAULT, "NMSPodcastsDownloadableContentProvider pinning selections did change", v8, 2u);
    }

    [(NMSPodcastsDownloadableContentProvider *)self _notifyDelegateContentDidChangeImmediately];
  }
}

- (void)_resetPersistentHistoryTokenAndNotifyObservers
{
  v26 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_mergeQueue);
  mEMORY[0x277D3DAF0] = [MEMORY[0x277D3DAF0] sharedInstance];
  isReady = [mEMORY[0x277D3DAF0] isReady];

  if (isReady)
  {
    *v18 = 0;
    v19 = v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__10;
    v22 = __Block_byref_object_dispose__10;
    v23 = 0;
    _ctx = [(NMSPodcastsDownloadableContentProvider *)self _ctx];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __88__NMSPodcastsDownloadableContentProvider__resetPersistentHistoryTokenAndNotifyObservers__block_invoke;
    v15 = &unk_27993DCA8;
    v17 = v18;
    v6 = _ctx;
    v16 = v6;
    [v6 performBlockAndWait:&v12];
    [(NMSPodcastsDownloadableContentProvider *)self setLastMergedToken:*(v19 + 5), v12, v13, v14, v15];
    v7 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v19 + 5);
      *buf = 138412290;
      v25 = v8;
      _os_log_impl(&dword_25B27B000, v7, OS_LOG_TYPE_DEFAULT, "NMSPodcastsDownloadableContentProvider resetting persistent history token and notifying observers. Latest token %@", buf, 0xCu);
    }

    [(NMSPodcastsDownloadableContentProvider *)self _notifyDelegateContentDidChange];
    _Block_object_dispose(v18, 8);
  }

  else
  {
    v9 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_impl(&dword_25B27B000, v9, OS_LOG_TYPE_ERROR, "NMSPodcastsDownloadableContentProvider cannot open Podcasts DB. Will not reset persistent history.", v18, 2u);
    }

    mEMORY[0x277D3DAF0]2 = [MEMORY[0x277D3DAF0] sharedInstance];
    [mEMORY[0x277D3DAF0]2 attemptToFix];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __88__NMSPodcastsDownloadableContentProvider__resetPersistentHistoryTokenAndNotifyObservers__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) persistentStoreCoordinator];
  v2 = [v5 currentPersistentHistoryTokenFromStores:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end
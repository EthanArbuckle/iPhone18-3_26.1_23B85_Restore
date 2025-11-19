@interface MCDPCModel
- (CGSize)imageSize;
- (MCDPCModel)initWithBundleID:(id)a3;
- (NSString)appTitle;
- (id)_errorForNotification:(id)a3;
- (id)containerForRoot;
- (id)itemsFromMRContentItems:(id)a3;
- (void)_browsableContentDidRegisterNotification:(id)a3;
- (void)_contentItemsUpdated:(id)a3;
- (void)_dataSourceInvalidated:(id)a3;
- (void)_finishBeginLoadingNotification:(id)a3;
- (void)_finishPlaybackNotification:(id)a3;
- (void)_invalidateBeginLoadingTimeoutTimer;
- (void)_invalidatePlaybackProgressTimeoutTimer;
- (void)_nowPlayingDidChangeNotification:(id)a3;
- (void)_registerForClientContent;
- (void)_registerNotifications;
- (void)_setupBeginLoadingTimeoutTimerWithCompletion:(id)a3;
- (void)_setupPlaybackProgressTimeoutTimerWithCompletion:(id)a3;
- (void)beginLoadingItemAtIndexPath:(id)a3 completion:(id)a4;
- (void)contentManager:(id)a3 itemDidChange:(id)a4 response:(id)a5;
- (void)dealloc;
- (void)getChildrenAtIndexPath:(id)a3 inRange:(_NSRange)a4 completion:(id)a5;
- (void)getChildrenSupportsPlaybackProgressForIndexPath:(id)a3 withCompletion:(id)a4;
- (void)getCountOfChildrenAtIndexPath:(id)a3 withCompletion:(id)a4;
- (void)getNowPlayingIdentifiersWithCompletion:(id)a3;
- (void)initiatePlaybackAtIndexPath:(id)a3 completion:(id)a4;
@end

@implementation MCDPCModel

- (MCDPCModel)initWithBundleID:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = MCDPCModel;
  v6 = [(MCDPCModel *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleID, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.MusicCarDisplayUI.playableContent.mediaRemote", v8);
    mediaRemoteNotificationQueue = v7->_mediaRemoteNotificationQueue;
    v7->_mediaRemoteNotificationQueue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.MusicCarDisplayUI.playableContent.mediaRemote.items", v11);
    mediaRemoteItemQueue = v7->_mediaRemoteItemQueue;
    v7->_mediaRemoteItemQueue = v12;

    v14 = [MEMORY[0x277CBEB38] dictionary];
    items = v7->_items;
    v7->_items = v14;

    v16 = [MEMORY[0x277CBEB38] dictionary];
    beginLoadingBlocks = v7->_beginLoadingBlocks;
    v7->_beginLoadingBlocks = v16;

    v18 = [MCDPlayableContentPlaybackManager alloc];
    v19 = objc_alloc_init(MCDPlayableContentNowPlayingDataSource);
    v20 = [(_MCDNowPlayingContentManager *)v18 initWithDelegate:v7 dataSource:v19 bundleID:v5];
    playableContentPlaybackManager = v7->_playableContentPlaybackManager;
    v7->_playableContentPlaybackManager = v20;

    [(MCDPCModel *)v7 _registerForClientContent];
  }

  return v7;
}

- (void)dealloc
{
  MRMediaRemoteUnregisterForNowPlayingNotifications();
  [(_MCDNowPlayingContentManager *)self->_playableContentPlaybackManager endRequestObservation];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MCDPCModel;
  [(MCDPCModel *)&v4 dealloc];
}

- (void)contentManager:(id)a3 itemDidChange:(id)a4 response:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = [a5 playerPath];
  v7 = [v6 representedBundleID];
  -[MCDPCModel setCurrentPlayingApp:](self, "setCurrentPlayingApp:", [v7 isEqualToString:self->_bundleID]);

  v8 = MCDGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    bundleID = self->_bundleID;
    v10 = [(MCDPCModel *)self isCurrentPlayingApp];
    v11 = @"NO";
    if (v10)
    {
      v11 = @"YES";
    }

    v13 = 138543618;
    v14 = bundleID;
    v15 = 2114;
    v16 = v11;
    _os_log_impl(&dword_25AD8E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ is now playing app? %{public}@", &v13, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_registerForClientContent
{
  objc_initWeak(&location, self);
  bundleID = self->_bundleID;
  v4 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v6, &location);
  MRMediaRemoteGetSupportedBrowsableContentAPIs();

  [(MCDPCModel *)self _registerNotifications:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __39__MCDPCModel__registerForClientContent__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSupportedAPIMask:a2];
  [WeakRetained _browsableContentDidRegisterNotification:0];
}

- (void)_registerNotifications
{
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel__dataSourceInvalidated_ name:*MEMORY[0x277D27A48] object:0];
  [v5 addObserver:self selector:sel__contentItemsUpdated_ name:*MEMORY[0x277D27AD8] object:0];
  [v5 addObserver:self selector:sel__nowPlayingDidChangeNotification_ name:*MEMORY[0x277D27B38] object:0];
  [v5 addObserver:self selector:sel__nowPlayingDidChangeNotification_ name:*MEMORY[0x277D27E20] object:0];
  [v5 addObserver:self selector:sel__nowPlayingDidChangeNotification_ name:*MEMORY[0x277D27BC8] object:0];
  [v5 addObserver:self selector:sel__nowPlayingDidChangeNotification_ name:*MEMORY[0x277D27B50] object:0];
  mediaRemoteNotificationQueue = self->_mediaRemoteNotificationQueue;
  MRMediaRemoteRegisterForNowPlayingNotifications();
  v4 = [(MCDPCModel *)self playableContentPlaybackManager];
  [v4 beginRequestObservation];
}

- (void)_dataSourceInvalidated:(id)a3
{
  objc_initWeak(&location, self);
  mediaRemoteNotificationQueue = self->_mediaRemoteNotificationQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__MCDPCModel__dataSourceInvalidated___block_invoke;
  v5[3] = &unk_279923A90;
  objc_copyWeak(&v6, &location);
  dispatch_async(mediaRemoteNotificationQueue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __37__MCDPCModel__dataSourceInvalidated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = MCDGeneralLogging();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25AD8E000, v2, OS_LOG_TYPE_DEFAULT, "Data source invalidated", buf, 2u);
    }

    v3 = WeakRetained[13];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__MCDPCModel__dataSourceInvalidated___block_invoke_39;
    block[3] = &unk_279923B08;
    v7 = WeakRetained;
    dispatch_sync(v3, block);
    v4 = MCDGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25AD8E000, v4, OS_LOG_TYPE_DEFAULT, "Posting MCDPCDidInvalidateNotificationName", buf, 2u);
    }

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 postNotificationName:@"didInvalidate" object:0];
  }
}

void __37__MCDPCModel__dataSourceInvalidated___block_invoke_39(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  [*(a1 + 32) setItems:v2];
}

- (void)_contentItemsUpdated:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MCDGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25AD8E000, v5, OS_LOG_TYPE_DEFAULT, "Content items updated", buf, 2u);
  }

  v6 = [v4 userInfo];

  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D27A58]];
  v8 = [(MCDPCModel *)self bundleID];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [v6 objectForKeyedSubscript:*MEMORY[0x277D27E68]];
    if (v10)
    {
      v11 = [(MCDPCModel *)self itemsFromMRContentItems:v10];
      if ([v11 count])
      {
        v17 = @"items";
        v18 = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      }

      else
      {
        v12 = 0;
      }

      v14 = MCDGeneralLogging();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25AD8E000, v14, OS_LOG_TYPE_DEFAULT, "Posting MCDPCDidUpdateContentNotificationName", buf, 2u);
      }

      v15 = [MEMORY[0x277CCAB98] defaultCenter];
      [v15 postNotificationName:@"didUpdateContent" object:self userInfo:v12];
    }

    else
    {
      v11 = MCDGeneralLogging();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25AD8E000, v11, OS_LOG_TYPE_DEFAULT, "Got content items updated notification, but no updated content items", buf, 2u);
      }
    }
  }

  else
  {
    v10 = MCDGeneralLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(MCDPCModel *)self bundleID];
      *buf = 138543618;
      v20 = v13;
      v21 = 2114;
      v22 = v7;
      _os_log_impl(&dword_25AD8E000, v10, OS_LOG_TYPE_DEFAULT, "Content items updated for wrong app, expected %{public}@, got %{public}@", buf, 0x16u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_nowPlayingDidChangeNotification:(id)a3
{
  v4 = MCDGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25AD8E000, v4, OS_LOG_TYPE_DEFAULT, "Posting MCDPCNowPlayingDidChangeNotificationName", v6, 2u);
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"nowPlayingChange" object:self];
}

- (void)_browsableContentDidRegisterNotification:(id)a3
{
  v4 = MCDGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25AD8E000, v4, OS_LOG_TYPE_DEFAULT, "Posting MCDPCAppReadyToFetchNotificationName", v6, 2u);
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"appReadyToFetch" object:self];
}

- (NSString)appTitle
{
  v2 = MEMORY[0x277CC1E60];
  v3 = [(MCDPCModel *)self bundleID];
  v4 = [v2 applicationProxyForIdentifier:v3];

  v5 = [v4 localizedNameForContext:@"Car"];
  if (!v5)
  {
    v5 = [v4 localizedName];
  }

  return v5;
}

- (id)containerForRoot
{
  v3 = [MCDPCContainer alloc];
  v4 = [MEMORY[0x277CCAA70] indexPathWithIndexes:0 length:0];
  v5 = [(MCDPCContainer *)v3 _initWithModel:self rootItem:0 indexPath:v4];

  return v5;
}

- (void)beginLoadingItemAtIndexPath:(id)a3 completion:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = ([(MCDPCModel *)self supportedAPIMask]& 1) == 0;
  v9 = MCDGeneralLogging();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_25AD8E000, v9, OS_LOG_TYPE_DEFAULT, "beginLoadingPlayableContent API is not implemented", buf, 2u);
    }

    v7[2](v7, 0);
  }

  else
  {
    if (v10)
    {
      *buf = 138543362;
      v37 = v6;
      _os_log_impl(&dword_25AD8E000, v9, OS_LOG_TYPE_DEFAULT, "Beginning to load item at index path: %{public}@", buf, 0xCu);
    }

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:self selector:sel__finishBeginLoadingNotification_ name:*MEMORY[0x277D27A38] object:0];

    v12 = _MCDCreateMediaRemoteIndexPath(v6);
    v13 = [(MCDPCModel *)self bundleID];
    v14 = *v12;
    v15 = v12[1];
    v16 = MRMediaRemoteBeginLoadingBrowsableContent();

    free(*v12);
    free(v12);
    v17 = MCDGeneralLogging();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v16 == 6)
      {
        if (v18)
        {
          *buf = 138543362;
          v37 = v6;
          _os_log_impl(&dword_25AD8E000, v17, OS_LOG_TYPE_DEFAULT, "beginLoadingPlayableContent API is not implemented, receiving unsupported operation for index path: %{public}@", buf, 0xCu);
        }

        if (v7)
        {
          v7[2](v7, 0);
        }
      }

      else
      {
        if (v18)
        {
          *buf = 67109120;
          LODWORD(v37) = v16;
          _os_log_impl(&dword_25AD8E000, v17, OS_LOG_TYPE_DEFAULT, "beginLoadingPlayableContent API error, code: %d", buf, 8u);
        }

        if (v7)
        {
          v25 = MEMORY[0x277CCA9B8];
          v34 = *MEMORY[0x277CCA450];
          v26 = MCDCarDisplayBundle();
          v27 = [v26 localizedStringForKey:@"ERROR_LOADING_ITEM" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
          v35 = v27;
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
          v29 = [v25 errorWithDomain:@"MCDError" code:v16 userInfo:v28];
          (v7)[2](v7, v29);
        }
      }
    }

    else
    {
      if (v18)
      {
        *buf = 138543362;
        v37 = v6;
        _os_log_impl(&dword_25AD8E000, v17, OS_LOG_TYPE_DEFAULT, "beginLoadingPlayableContent API in progress for %{public}@", buf, 0xCu);
      }

      v19 = [(MCDPCModel *)self beginLoadingBlocks];
      v20 = [v19 objectForKeyedSubscript:v6];
      v21 = v20 == 0;

      if (v21)
      {
        v22 = [v7 copy];
        v23 = MEMORY[0x25F856270]();
        v24 = [(MCDPCModel *)self beginLoadingBlocks];
        [v24 setObject:v23 forKeyedSubscript:v6];
      }

      objc_initWeak(buf, self);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __53__MCDPCModel_beginLoadingItemAtIndexPath_completion___block_invoke;
      v31[3] = &unk_279923E78;
      v32 = v6;
      objc_copyWeak(&v33, buf);
      [(MCDPCModel *)self _setupBeginLoadingTimeoutTimerWithCompletion:v31];
      objc_destroyWeak(&v33);

      objc_destroyWeak(buf);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __53__MCDPCModel_beginLoadingItemAtIndexPath_completion___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = MCDGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v19 = v3;
    _os_log_impl(&dword_25AD8E000, v2, OS_LOG_TYPE_DEFAULT, "beginLoadingPlayableContent API timed out, completion block wasn't called for index path: %{public}@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(a1 + 32);
  v6 = [v5 length];
  v7 = malloc_type_malloc(0x10uLL, 0x1010040FDD9F14CuLL);
  v8 = v7;
  v7[1] = v6;
  if (v6)
  {
    v9 = 0;
    *v7 = malloc_type_malloc(8 * v6, 0x100004000313F17uLL);
    do
    {
      *(*v8 + 8 * v9) = [v5 indexAtPosition:v9];
      ++v9;
    }

    while (v6 != v9);
  }

  else
  {
    *v7 = 0;
  }

  v10 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:*v8 length:{8 * objc_msgSend(v5, "length")}];

  v11 = objc_alloc(MEMORY[0x277CCAB88]);
  v12 = *MEMORY[0x277D27A38];
  v16 = *MEMORY[0x277D27AE8];
  v17 = v10;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v14 = [v11 initWithName:v12 object:0 userInfo:v13];

  [WeakRetained _finishBeginLoadingNotification:v14];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)_finishBeginLoadingNotification:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D27A60]];
  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D27AE8]];

  v9 = v8;
  v10 = v8;
  v11 = [v10 bytes];
  v12 = [v10 length];

  v13 = MCDNSIndexPathFromMRMediaRemoteIndexPath(v11, v12 >> 3);
  v14 = [(MCDPCModel *)self beginLoadingBlocks];
  v15 = [v14 objectForKeyedSubscript:v13];

  if ([v6 isEqualToNumber:&unk_286C30E30])
  {
    v16 = MCDGeneralLogging();
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138543362;
        v27 = v13;
        _os_log_impl(&dword_25AD8E000, v17, OS_LOG_TYPE_DEFAULT, "Received kMRMediaRemoteApplicationFinishedLoadingContentNotification, beginLoadingPlayableContent API not implemented for index path: %{public}@", &v26, 0xCu);
      }

      v15[2](v15, 0);
      v17 = [(MCDPCModel *)self beginLoadingBlocks];
      [v17 setObject:0 forKeyedSubscript:v13];
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [(MCDPCModel *)v13 _finishBeginLoadingNotification:v17];
    }

    goto LABEL_20;
  }

  v17 = [(MCDPCModel *)self _errorForNotification:v4];
  v18 = MCDGeneralLogging();
  v19 = v18;
  if (v15)
  {
    v20 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v20)
      {
        v26 = 138543618;
        v27 = v13;
        v28 = 2114;
        v29 = v6;
        v21 = "Received kMRMediaRemoteApplicationFinishedLoadingContentNotification for index path: %{public}@, beginLoadingPlayableContent API error: %{public}@";
        v22 = v19;
        v23 = 22;
LABEL_17:
        _os_log_impl(&dword_25AD8E000, v22, OS_LOG_TYPE_DEFAULT, v21, &v26, v23);
      }
    }

    else if (v20)
    {
      v26 = 138543362;
      v27 = v13;
      v21 = "Received kMRMediaRemoteApplicationFinishedLoadingContentNotification without error for index path: %{public}@";
      v22 = v19;
      v23 = 12;
      goto LABEL_17;
    }

    (v15)[2](v15, v17);
    v19 = [(MCDPCModel *)self beginLoadingBlocks];
    [v19 setObject:0 forKeyedSubscript:v13];
LABEL_19:

    goto LABEL_20;
  }

  v24 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
  if (v17)
  {
    if (v24)
    {
      [(MCDPCModel *)v6 _finishBeginLoadingNotification:v13, v19];
    }

    goto LABEL_19;
  }

  if (v24)
  {
    [(MCDPCModel *)v13 _finishBeginLoadingNotification:v19];
  }

  v17 = v19;
LABEL_20:

  [(MCDPCModel *)self _invalidateBeginLoadingTimeoutTimer];
  v25 = *MEMORY[0x277D85DE8];
}

- (void)getChildrenSupportsPlaybackProgressForIndexPath:(id)a3 withCompletion:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MCDPCModel *)self supportedAPIMask];
  v9 = MCDGeneralLogging();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if ((v8 & 2) != 0)
  {
    if (v10)
    {
      *buf = 138543362;
      v28 = v6;
      _os_log_impl(&dword_25AD8E000, v9, OS_LOG_TYPE_DEFAULT, "Preparing to fetch if children support playback progress for index path: %{public}@", buf, 0xCu);
    }

    v11 = _MCDCreateMediaRemoteIndexPath(v6);
    v12 = [(MCDPCModel *)self bundleID];
    mediaRemoteNotificationQueue = self->_mediaRemoteNotificationQueue;
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __77__MCDPCModel_getChildrenSupportsPlaybackProgressForIndexPath_withCompletion___block_invoke;
    v23 = &unk_279923EA0;
    v24 = self;
    v25 = v6;
    v26 = v7;
    v14 = *v11;
    v15 = v11[1];
    MRMediaRemoteBrowsableContentSupportsPlaybackProgress();

    free(*v11);
    free(v11);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __77__MCDPCModel_getChildrenSupportsPlaybackProgressForIndexPath_withCompletion___block_invoke_63;
    v17[3] = &unk_279923EC8;
    v18 = v25;
    v19 = v26;
    [(MCDPCModel *)self _setupPlaybackProgressTimeoutTimerWithCompletion:v17];
  }

  else
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_25AD8E000, v9, OS_LOG_TYPE_DEFAULT, "childItemsDisplayPlaybackProgress API is not implemented", buf, 2u);
    }

    (*(v7 + 2))(v7, 0, 0);
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __77__MCDPCModel_getChildrenSupportsPlaybackProgressForIndexPath_withCompletion___block_invoke(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _invalidatePlaybackProgressTimeoutTimer];
  v4 = MCDGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_25AD8E000, v4, OS_LOG_TYPE_DEFAULT, "Fetched children supporting playback progress for index path: %{public}@", &v8, 0xCu);
  }

  result = (*(*(a1 + 48) + 16))(*(a1 + 48), a2 != 0, 0);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __77__MCDPCModel_getChildrenSupportsPlaybackProgressForIndexPath_withCompletion___block_invoke_63(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = MCDGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_25AD8E000, v2, OS_LOG_TYPE_DEFAULT, "Children support playback progress timed out for: %{public}@", &v6, 0xCu);
  }

  result = (*(*(a1 + 40) + 16))();
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)getNowPlayingIdentifiersWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MCDPCModel *)self supportedAPIMask];
  v6 = MCDGeneralLogging();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if ((v5 & 4) != 0)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_25AD8E000, v6, OS_LOG_TYPE_DEFAULT, "Preparing to fetch now playing identifiers", buf, 2u);
    }

    bundleID = self->_bundleID;
    mediaRemoteNotificationQueue = self->_mediaRemoteNotificationQueue;
    v10 = v4;
    MRMediaRemoteBrowsableContentGetNowPlayingContentIdentifiers();
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_25AD8E000, v6, OS_LOG_TYPE_DEFAULT, "now playing identifiers API is not implemented", buf, 2u);
    }

    (*(v4 + 2))(v4, 0);
  }
}

uint64_t __53__MCDPCModel_getNowPlayingIdentifiersWithCompletion___block_invoke(uint64_t a1)
{
  v2 = MCDGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25AD8E000, v2, OS_LOG_TYPE_DEFAULT, "Fetched now playing identifiers", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)getCountOfChildrenAtIndexPath:(id)a3 withCompletion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MCDGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&dword_25AD8E000, v8, OS_LOG_TYPE_DEFAULT, "Fetching count of children at index path: %@", buf, 0xCu);
  }

  v9 = _MCDCreateMediaRemoteIndexPath(v6);
  v10 = [(MCDPCModel *)self bundleID];
  mediaRemoteNotificationQueue = self->_mediaRemoteNotificationQueue;
  v17 = v6;
  v18 = v7;
  v12 = *v9;
  v13 = v9[1];
  v14 = v7;
  v15 = v6;
  MRMediaRemoteGetCountOfBrowsableContentChildItems();

  free(*v9);
  free(v9);

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __59__MCDPCModel_getCountOfChildrenAtIndexPath_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = MCDGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138543618;
    v9 = v5;
    v10 = 2050;
    v11 = a2;
    _os_log_impl(&dword_25AD8E000, v4, OS_LOG_TYPE_DEFAULT, "Completed fetching count of children at index path: %{public}@, number of children: %{public}llu", &v8, 0x16u);
  }

  result = (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)getChildrenAtIndexPath:(id)a3 inRange:(_NSRange)a4 completion:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = MCDGeneralLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = v7;
    _os_log_impl(&dword_25AD8E000, v9, OS_LOG_TYPE_DEFAULT, "Fetching children at index path: %{public}@", buf, 0xCu);
  }

  v10 = _MCDCreateMediaRemoteIndexPath(v7);
  v11 = [(MCDPCModel *)self bundleID];
  mediaRemoteNotificationQueue = self->_mediaRemoteNotificationQueue;
  v18 = v7;
  v19 = v8;
  v13 = *v10;
  v14 = v10[1];
  v15 = v8;
  v16 = v7;
  MRMediaRemoteGetBrowsableContentChildItems();

  free(*v10);
  free(v10);

  v17 = *MEMORY[0x277D85DE8];
}

void __56__MCDPCModel_getChildrenAtIndexPath_inRange_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) itemsFromMRContentItems:a2];
  v4 = MCDGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_25AD8E000, v4, OS_LOG_TYPE_DEFAULT, "Completed fetching children at index path: %{public}@", &v8, 0xCu);
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v3, *(a1 + 56), [v3 count], 0);
  if (([*(a1 + 32) didFinishInitialLoad] & 1) == 0)
  {
    [*(a1 + 32) setDidFinishInitialLoad:1];
    v6 = MCDGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_25AD8E000, v6, OS_LOG_TYPE_DEFAULT, "Finishing initial load", &v8, 2u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initiatePlaybackAtIndexPath:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(MCDPCModel *)self setPlaybackCompletion:a4];
  [(MCDPCModel *)self setSelectedIndexPath:v6];
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:self selector:sel__finishPlaybackNotification_ name:*MEMORY[0x277D27A40] object:0];

  v8 = _MCDCreateMediaRemoteIndexPath(v6);
  v9 = MCDGeneralLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = v6;
    _os_log_impl(&dword_25AD8E000, v9, OS_LOG_TYPE_DEFAULT, "Asking MediaRemote to initialize playback for index path: %{public}@", &v14, 0xCu);
  }

  v10 = [(MCDPCModel *)self bundleID];
  v11 = *v8;
  v12 = v8[1];
  MRMediaRemoteRequestPlaybackInitialization();

  free(*v8);
  free(v8);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_finishPlaybackNotification:(id)a3
{
  v4 = [(MCDPCModel *)self _errorForNotification:a3];
  v5 = MCDGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_25AD8E000, v5, OS_LOG_TYPE_DEFAULT, "Received kMRMediaRemoteApplicationInitiatedPlaybackOfContentItemNotification", v8, 2u);
  }

  v6 = [(MCDPCModel *)self playbackCompletion];

  if (v6)
  {
    v7 = [(MCDPCModel *)self playbackCompletion];
    (v7)[2](v7, v4);

    [(MCDPCModel *)self setPlaybackCompletion:0];
    [(MCDPCModel *)self setSelectedIndexPath:0];
  }
}

- (id)_errorForNotification:(id)a3
{
  v23[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x277D27A70]];

  if (v6)
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKey:*MEMORY[0x277D27A68]];
    v9 = v8;
    v10 = @"MCDError";
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    v12 = [v4 userInfo];
    v13 = [v12 objectForKey:*MEMORY[0x277D27A60]];

    if (v13)
    {
      v14 = [v13 integerValue];
    }

    else
    {
      v14 = 1;
    }

    v22[0] = *MEMORY[0x277CCA450];
    v22[1] = @"model";
    v23[0] = v6;
    v23[1] = self;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v17 = [v16 mutableCopy];

    v18 = [(MCDPCModel *)self selectedIndexPath];

    if (v18)
    {
      v19 = [(MCDPCModel *)self selectedIndexPath];
      [v17 setObject:v19 forKeyedSubscript:@"indexPath"];
    }

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:v11 code:v14 userInfo:v17];
  }

  else
  {
    v15 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)_setupBeginLoadingTimeoutTimerWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277CD6118];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__MCDPCModel__setupBeginLoadingTimeoutTimerWithCompletion___block_invoke;
  v8[3] = &unk_279923F78;
  objc_copyWeak(&v10, &location);
  v6 = v4;
  v9 = v6;
  v7 = [v5 timerWithInterval:0 repeats:v8 block:2.0];
  [(MCDPCModel *)self setBeginLoadingTimeoutTimer:v7];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __59__MCDPCModel__setupBeginLoadingTimeoutTimerWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
  [WeakRetained _invalidateBeginLoadingTimeoutTimer];
}

- (void)_invalidateBeginLoadingTimeoutTimer
{
  v3 = [(MCDPCModel *)self beginLoadingTimeoutTimer];

  if (v3)
  {
    v4 = [(MCDPCModel *)self beginLoadingTimeoutTimer];
    [v4 invalidate];

    [(MCDPCModel *)self setBeginLoadingTimeoutTimer:0];
  }
}

- (void)_setupPlaybackProgressTimeoutTimerWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277CD6118];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__MCDPCModel__setupPlaybackProgressTimeoutTimerWithCompletion___block_invoke;
  v8[3] = &unk_279923F78;
  objc_copyWeak(&v10, &location);
  v6 = v4;
  v9 = v6;
  v7 = [v5 timerWithInterval:0 repeats:v8 block:2.0];
  [(MCDPCModel *)self setPlaybackProgressTimeoutTimer:v7];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __63__MCDPCModel__setupPlaybackProgressTimeoutTimerWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
  [WeakRetained _invalidatePlaybackProgressTimeoutTimer];
}

- (void)_invalidatePlaybackProgressTimeoutTimer
{
  v3 = [(MCDPCModel *)self playbackProgressTimeoutTimer];

  if (v3)
  {
    v4 = [(MCDPCModel *)self playbackProgressTimeoutTimer];
    [v4 invalidate];

    [(MCDPCModel *)self setPlaybackProgressTimeoutTimer:0];
  }
}

- (id)itemsFromMRContentItems:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  mediaRemoteItemQueue = self->_mediaRemoteItemQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__MCDPCModel_itemsFromMRContentItems___block_invoke;
  block[3] = &unk_279923FA0;
  v12 = v4;
  v13 = self;
  v14 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_sync(mediaRemoteItemQueue, block);
  v9 = [v7 copy];

  return v9;
}

void __38__MCDPCModel_itemsFromMRContentItems___block_invoke(uint64_t a1)
{
  v1 = a1;
  v35 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v29;
    v5 = 0x279923000uLL;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v29 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v8 = MRContentItemGetIdentifier();
        v9 = [objc_alloc(*(v5 + 1704)) _initWithModel:*(v1 + 40) MRContentItem:v7];
        v10 = [*(v1 + 40) items];
        v27 = v8;
        [v10 setObject:v9 forKeyedSubscript:v8];

        v11 = MCDGeneralLogging();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v33 = v8;
          _os_log_impl(&dword_25AD8E000, v11, OS_LOG_TYPE_DEFAULT, "Adding %{public}@ to items dictionary", buf, 0xCu);
        }

        v12 = [v9 artworkData];
        if (v12)
        {
          v13 = [MEMORY[0x277D755B8] imageWithData:v12];
          [v13 size];
          if (v15 != 48.0 || v14 != 48.0)
          {
            v17 = [v13 car_scaledImageWithSize:48.0, 48.0];
            v18 = v1;
            v19 = v3;
            v20 = v4;
            v21 = v5;
            v22 = [v17 copy];

            v13 = v22;
            v5 = v21;
            v4 = v20;
            v3 = v19;
            v1 = v18;
          }

          v23 = MCDGeneralLogging();
          v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
          if (v13)
          {
            if (v24)
            {
              *buf = 138543362;
              v33 = v27;
              _os_log_impl(&dword_25AD8E000, v23, OS_LOG_TYPE_DEFAULT, "Updating artwork to %{public}@", buf, 0xCu);
            }

            [v9 setArtworkImage:v13];
          }

          else
          {
            if (v24)
            {
              *buf = 138543362;
              v33 = v27;
              _os_log_impl(&dword_25AD8E000, v23, OS_LOG_TYPE_DEFAULT, "Have artwork data, but artwork is nil for %{public}@", buf, 0xCu);
            }
          }
        }

        else
        {
          v13 = MCDGeneralLogging();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v33 = v27;
            _os_log_impl(&dword_25AD8E000, v13, OS_LOG_TYPE_DEFAULT, "Artwork is nil for %{public}@", buf, 0xCu);
          }
        }

        [*(v1 + 48) addObject:v9];
      }

      v3 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v3);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_finishBeginLoadingNotification:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_debug_impl(&dword_25AD8E000, log, OS_LOG_TYPE_DEBUG, "Received kMRMediaRemoteApplicationFinishedLoadingContentNotification with error: %{public}@, but completion block is null for index path: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_finishBeginLoadingNotification:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_25AD8E000, a2, OS_LOG_TYPE_DEBUG, "Received kMRMediaRemoteApplicationFinishedLoadingContentNotification, but completion block is null for index path: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_finishBeginLoadingNotification:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_25AD8E000, a2, OS_LOG_TYPE_DEBUG, "Received kMRMediaRemoteApplicationFinishedLoadingContentNotification, beginLoadingPlayableContent API not implemented and null completion block for index path: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
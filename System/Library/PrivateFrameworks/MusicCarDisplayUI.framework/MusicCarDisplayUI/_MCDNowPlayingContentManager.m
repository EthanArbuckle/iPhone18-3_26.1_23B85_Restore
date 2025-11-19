@interface _MCDNowPlayingContentManager
- ($04B05C73ED6AEEF31C5815932084562D)durationSnapshotForNowPlayingViewController:(SEL)a3;
- (BOOL)_sessionAllowsAlbumArt:(id)a3;
- (BOOL)_shouldShowPlaybackQueueForItemCount:(int64_t)a3;
- (BOOL)nowPlayingViewControllerCanRepeat:(id)a3;
- (BOOL)nowPlayingViewControllerCanShowChangePlaybackRate:(id)a3;
- (BOOL)nowPlayingViewControllerCanShowUpNext:(id)a3;
- (BOOL)nowPlayingViewControllerCanShuffle:(id)a3;
- (BOOL)nowPlayingViewControllerIsRightHandDrive:(id)a3;
- (BOOL)nowPlayingViewControllerIsShowingExplicitTrack:(id)a3;
- (BOOL)nowPlayingViewControllerShouldHideBackButton:(id)a3;
- (BOOL)nowPlayingViewControllerShouldUseMusicExplicitGlyph:(id)a3;
- (Class)tableCellClass;
- (MCDNowPlayingContentManagerDelegate)delegate;
- (MCDNowPlayingDataSource)dataSource;
- (NSString)nowPlayingBundleID;
- (UITableView)tableView;
- (_MCDNowPlayingContentManager)initWithDelegate:(id)a3 dataSource:(id)a4 bundleID:(id)a5;
- (id)_requestResponseItem;
- (id)_setupRequest;
- (id)albumTextForNowPlayingController:(id)a3;
- (id)artistTextForNowPlayingController:(id)a3;
- (id)nowPlayingViewControllerGetPlaybackRate:(id)a3;
- (id)progressBarLocalizedDurationStringForNowPlayingViewController:(id)a3;
- (id)titleForNowPlayingController:(id)a3;
- (int64_t)_numberOfItemsInPlaybackQueue;
- (int64_t)placeholderTypeForNowPlayingViewController:(id)a3;
- (int64_t)repeatTypeForNowPlayingViewController:(id)a3;
- (int64_t)shuffleTypeForNowPlayingViewController:(id)a3;
- (void)_limitedUIChanged:(id)a3;
- (void)_performChangeRequest:(id)a3;
- (void)_performRequest;
- (void)_showPlaceholderArtwork;
- (void)beginRequestObservation;
- (void)controller:(id)a3 defersResponseReplacement:(id)a4;
- (void)dealloc;
- (void)endRequestObservation;
- (void)modelResponseDidInvalidate:(id)a3;
- (void)nowPlayingViewControllerChangePlaybackRate:(id)a3;
- (void)nowPlayingViewControllerToggleRepeat:(id)a3;
- (void)nowPlayingViewControllerToggleShuffle:(id)a3;
- (void)processArtworkForCurrentlyPlayingSong;
- (void)session:(id)a3 didUpdateConfiguration:(id)a4;
- (void)sessionDidConnect:(id)a3;
- (void)setAllowsAlbumArt:(BOOL)a3;
- (void)setTableView:(id)a3;
- (void)viewWillDisappear;
@end

@implementation _MCDNowPlayingContentManager

- (void)_performRequest
{
  v4 = [(_MCDNowPlayingContentManager *)self _setupRequest];
  v3 = [(_MCDNowPlayingContentManager *)self requestController];
  [v3 setRequest:v4];
}

- (id)_setupRequest
{
  v3 = objc_alloc_init(MEMORY[0x277D278F0]);
  [v3 setTracklistRange:{0, 50}];
  v4 = [(_MCDNowPlayingContentManager *)self bundleID];
  v5 = [v4 isEqualToString:@"com.apple.Music"];

  if (v5)
  {
    v6 = MEMORY[0x277D278E0];
    v7 = [(_MCDNowPlayingContentManager *)self bundleID];
    v8 = [v6 pathWithRoute:0 bundleID:v7 playerID:0];
    [v3 setPlayerPath:v8];
  }

  else
  {
    [v3 setPlayerPath:0];
  }

  v9 = [(_MCDNowPlayingContentManager *)self dataSource];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(_MCDNowPlayingContentManager *)self dataSource];
    v12 = [v11 playingItemProperties];
    [v3 setPlayingItemProperties:v12];
  }

  v13 = [(_MCDNowPlayingContentManager *)self dataSource];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(_MCDNowPlayingContentManager *)self dataSource];
    v16 = [v15 queueItemProperties];
    [v3 setQueueItemProperties:v16];
  }

  v17 = [(_MCDNowPlayingContentManager *)self dataSource];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v19 = [(_MCDNowPlayingContentManager *)self dataSource];
    v20 = [v19 queueSectionProperties];
    [v3 setQueueSectionProperties:v20];
  }

  v21 = [(_MCDNowPlayingContentManager *)self dataSource];
  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    v23 = [(_MCDNowPlayingContentManager *)self dataSource];
    v24 = [v23 requestLabel];
    [v3 setLabel:v24];
  }

  return v3;
}

- (MCDNowPlayingDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (_MCDNowPlayingContentManager)initWithDelegate:(id)a3 dataSource:(id)a4 bundleID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = _MCDNowPlayingContentManager;
  v11 = [(_MCDNowPlayingContentManager *)&v23 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, v8);
    objc_storeWeak(&v12->_dataSource, v9);
    v13 = objc_alloc_init(MEMORY[0x277CD6038]);
    requestController = v12->_requestController;
    v12->_requestController = v13;

    [(MPRequestResponseController *)v12->_requestController setDelegate:v12];
    objc_storeStrong(&v12->_bundleID, a5);
    v15 = [MEMORY[0x277CBEB38] dictionary];
    artworkCache = v12->_artworkCache;
    v12->_artworkCache = v15;

    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    v18 = [objc_alloc(MEMORY[0x277CF89F8]) initWithOptions:4];
    carSessionStatus = v12->_carSessionStatus;
    v12->_carSessionStatus = v18;

    [(CARSessionStatus *)v12->_carSessionStatus addSessionObserver:v12];
    v12->_shouldHideBackButton = 0;
    v12->_videoPlaybackState = 0;
    v20 = dispatch_queue_create("com.apple.MusicCarDisplayUI.videoPlaybackState", 0);
    videoPlaybackStateQueue = v12->_videoPlaybackStateQueue;
    v12->_videoPlaybackStateQueue = v20;

    [v17 addObserver:v12 selector:sel__limitedUIChanged_ name:*MEMORY[0x277CF8928] object:0];
    [(_MCDNowPlayingContentManager *)v12 _performRequest];
  }

  return v12;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277CF8928] object:0];

  v4.receiver = self;
  v4.super_class = _MCDNowPlayingContentManager;
  [(_MCDNowPlayingContentManager *)&v4 dealloc];
}

- (void)beginRequestObservation
{
  v2 = [(_MCDNowPlayingContentManager *)self requestController];
  [v2 beginAutomaticResponseLoading];
}

- (void)endRequestObservation
{
  v2 = [(_MCDNowPlayingContentManager *)self requestController];
  [v2 endAutomaticResponseLoading];
}

- (void)viewWillDisappear
{
  v2 = [(_MCDNowPlayingContentManager *)self alertController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)setTableView:(id)a3
{
  objc_storeWeak(&self->_tableView, a3);
  if ([(_MCDNowPlayingContentManager *)self tableCellClass])
  {
    WeakRetained = objc_loadWeakRetained(&self->_tableView);
    v5 = [(_MCDNowPlayingContentManager *)self tableCellClass];
    v6 = NSStringFromClass([(_MCDNowPlayingContentManager *)self tableCellClass]);
    [WeakRetained registerClass:v5 forCellReuseIdentifier:v6];
  }

  v7 = objc_loadWeakRetained(&self->_tableView);
  [v7 setDelegate:self];

  v8 = objc_loadWeakRetained(&self->_tableView);
  [v8 setDataSource:self];

  v9 = objc_loadWeakRetained(&self->_tableView);
  [v9 reloadData];
}

- (void)setAllowsAlbumArt:(BOOL)a3
{
  if (self->_allowsAlbumArt != a3)
  {
    self->_allowsAlbumArt = a3;
    v4 = [(_MCDNowPlayingContentManager *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(_MCDNowPlayingContentManager *)self delegate];
      [v6 contentManagerReloadData:self];
    }
  }
}

- (BOOL)_sessionAllowsAlbumArt:(id)a3
{
  v3 = [a3 configuration];
  v4 = [v3 nowPlayingAlbumArtMode] == 2;

  return v4;
}

- (void)sessionDidConnect:(id)a3
{
  [(_MCDNowPlayingContentManager *)self setAllowsAlbumArt:[(_MCDNowPlayingContentManager *)self _sessionAllowsAlbumArt:a3]];

  [(_MCDNowPlayingContentManager *)self _limitedUIChanged:0];
}

- (void)session:(id)a3 didUpdateConfiguration:(id)a4
{
  v5 = [(_MCDNowPlayingContentManager *)self _sessionAllowsAlbumArt:a3, a4];

  [(_MCDNowPlayingContentManager *)self setAllowsAlbumArt:v5];
}

- (void)_limitedUIChanged:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50___MCDNowPlayingContentManager__limitedUIChanged___block_invoke;
  block[3] = &unk_279923B08;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)modelResponseDidInvalidate:(id)a3
{
  v4 = a3;
  v3 = v4;
  msv_dispatch_async_on_queue();
}

- (BOOL)_shouldShowPlaybackQueueForItemCount:(int64_t)a3
{
  if (a3 <= 0)
  {
    v6 = MCDGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "Disabling up next queue; no items in queue.";
      goto LABEL_12;
    }

LABEL_13:

    return 0;
  }

  v4 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  v5 = v4;
  if (v4)
  {
    [v4 duration];

    if (v14)
    {
      v6 = MCDGeneralLogging();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v7 = "Disabling up next queue; livestreaming content.";
LABEL_12:
        _os_log_impl(&dword_25AD8E000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
  }

  v8 = [(_MCDNowPlayingContentManager *)self bundleID:v11];
  v9 = [v8 isEqualToString:@"com.apple.iBooks"];

  if (v9)
  {
    v6 = MCDGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "Disabling up next queue for AudioBooks.";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  return 1;
}

- (void)controller:(id)a3 defersResponseReplacement:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69___MCDNowPlayingContentManager_controller_defersResponseReplacement___block_invoke;
  block[3] = &unk_2799241C8;
  v12 = self;
  v13 = v7;
  v11 = v6;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (int64_t)_numberOfItemsInPlaybackQueue
{
  v2 = [(_MCDNowPlayingContentManager *)self requestController];
  v3 = [v2 response];
  v4 = [v3 tracklist];
  v5 = [v4 items];
  v6 = [v5 totalItemCount];

  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  return v7 - 1;
}

- (void)processArtworkForCurrentlyPlayingSong
{
  v3 = [MEMORY[0x277D759A0] _carScreen];
  [v3 scale];
  v5 = v4;
  v6 = [(_MCDNowPlayingContentManager *)self currentPlayingSong];
  v7 = [v6 artworkCatalog];

  v8 = [(_MCDNowPlayingContentManager *)self artworkCatalog];
  v9 = [v8 isArtworkVisuallyIdenticalToCatalog:v7];

  if ((v9 & 1) == 0)
  {
    [(_MCDNowPlayingContentManager *)self setArtworkCatalog:v7];
    v10 = [(_MCDNowPlayingContentManager *)self artworkCatalog];

    if (v10)
    {
      [v7 setDestinationScale:v5];
      v11 = [MEMORY[0x277D759A0] _carScreen];
      [v11 bounds];
      v13 = v12;
      v15 = v14;

      if (v13 < v15)
      {
        v13 = v15;
      }

      v16 = [(_MCDNowPlayingContentManager *)self artworkCatalog];
      [v16 setFittingSize:{v13, v15}];

      objc_initWeak(&location, self);
      v17 = MEMORY[0x277D27F48];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __69___MCDNowPlayingContentManager_processArtworkForCurrentlyPlayingSong__block_invoke;
      v27[3] = &unk_279923A90;
      objc_copyWeak(&v28, &location);
      v18 = [v17 timerWithInterval:0 repeats:v27 block:1.0];
      artworkTimer = self->_artworkTimer;
      self->_artworkTimer = v18;

      v20 = [(_MCDNowPlayingContentManager *)self artworkCatalog];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __69___MCDNowPlayingContentManager_processArtworkForCurrentlyPlayingSong__block_invoke_55;
      v24[3] = &unk_2799241F0;
      objc_copyWeak(&v26, &location);
      v25 = v7;
      [v20 setDestination:self configurationBlock:v24];

      objc_destroyWeak(&v26);
      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
    }

    else
    {
      [(_MCDNowPlayingContentManager *)self setAlbumArtwork:0];
      v21 = [(_MCDNowPlayingContentManager *)self delegate];
      v22 = objc_opt_respondsToSelector();

      if (v22)
      {
        v23 = [(_MCDNowPlayingContentManager *)self delegate];
        [v23 contentManagerReloadData:self];
      }
    }
  }
}

- (void)_showPlaceholderArtwork
{
  albumArtwork = self->_albumArtwork;
  self->_albumArtwork = 0;

  v4 = [(_MCDNowPlayingContentManager *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(_MCDNowPlayingContentManager *)self delegate];
    [v6 contentManagerReloadData:self];
  }
}

- (id)_requestResponseItem
{
  v3 = [(_MCDNowPlayingContentManager *)self requestController];
  v4 = [v3 response];
  v5 = [v4 tracklist];
  v6 = [v5 playingItemIndexPath];

  if (v6)
  {
    v7 = [(_MCDNowPlayingContentManager *)self requestController];
    v8 = [v7 response];
    v9 = [v8 tracklist];
    v10 = [v9 items];
    v11 = [v10 itemAtIndexPath:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)artistTextForNowPlayingController:(id)a3
{
  v4 = [(_MCDNowPlayingContentManager *)self currentPlayingRadioStation];
  v5 = [v4 attributionLabel];

  if (!v5)
  {
    v7 = objc_opt_new();
    v8 = [(_MCDNowPlayingContentManager *)self currentPlayingSong];
    v9 = [v8 artist];
    v10 = [v9 name];

    if ([v10 length])
    {
      [v7 addObject:v10];
    }

    v11 = [(_MCDNowPlayingContentManager *)self currentPlayingSong];
    v12 = [v11 composer];
    v13 = [v12 name];

    v14 = [(_MCDNowPlayingContentManager *)self currentPlayingSong];
    if ([v14 shouldShowComposer])
    {
      v15 = [v13 length];

      if (!v15)
      {
LABEL_9:
        if ([v7 count])
        {
          v6 = [v7 componentsJoinedByString:@" — "];
        }

        else
        {
          v6 = 0;
        }

        goto LABEL_13;
      }

      v16 = MEMORY[0x277CCACA8];
      v17 = MCDCarDisplayBundle();
      v18 = [v17 localizedStringForKey:@"COMPOSED_BY_TITLE" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
      v14 = [v16 localizedStringWithFormat:v18, v13];

      [v7 addObject:v14];
    }

    goto LABEL_9;
  }

  v6 = v5;
LABEL_13:

  return v6;
}

- (id)albumTextForNowPlayingController:(id)a3
{
  v3 = [(_MCDNowPlayingContentManager *)self currentPlayingSong];
  v4 = [v3 album];
  v5 = [v4 title];

  return v5;
}

- (id)titleForNowPlayingController:(id)a3
{
  v3 = [(_MCDNowPlayingContentManager *)self currentPlayingSong];
  v4 = [v3 title];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = MCDCarDisplayBundle();
    v6 = [v7 localizedStringForKey:@"NOT_PLAYING_TITLE" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
  }

  return v6;
}

- (BOOL)nowPlayingViewControllerIsShowingExplicitTrack:(id)a3
{
  v3 = [(_MCDNowPlayingContentManager *)self currentPlayingSong];
  v4 = [v3 isExplicitSong];

  return v4;
}

- (id)progressBarLocalizedDurationStringForNowPlayingViewController:(id)a3
{
  v3 = [(_MCDNowPlayingContentManager *)self _requestResponseItem];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 localizedDurationString];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- ($04B05C73ED6AEEF31C5815932084562D)durationSnapshotForNowPlayingViewController:(SEL)a3
{
  *&retstr->var7 = 0;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var0 = 0u;
  v6 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  v7 = v6;
  if (v6)
  {
    [v6 duration];
  }

  else
  {
    v8 = [(_MCDNowPlayingContentManager *)self _requestResponseItem];
    v9 = v8;
    if (v8)
    {
      [v8 duration];
    }

    else
    {
      *&retstr->var7 = 0;
      *&retstr->var2 = 0u;
      *&retstr->var4 = 0u;
      *&retstr->var0 = 0u;
    }
  }

  result = [(_MCDNowPlayingContentManager *)self shouldShowPlayState];
  if ((result & 1) == 0)
  {
    retstr->var5 = 0.0;
  }

  return result;
}

- (int64_t)shuffleTypeForNowPlayingViewController:(id)a3
{
  v3 = [(_MCDNowPlayingContentManager *)self requestController];
  v4 = [v3 response];
  v5 = [v4 tracklist];
  v6 = [v5 shuffleType];

  return v6;
}

- (int64_t)repeatTypeForNowPlayingViewController:(id)a3
{
  v3 = [(_MCDNowPlayingContentManager *)self requestController];
  v4 = [v3 response];
  v5 = [v4 tracklist];
  v6 = [v5 repeatType];

  return v6;
}

- (int64_t)placeholderTypeForNowPlayingViewController:(id)a3
{
  v3 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  v4 = v3;
  if (v3)
  {
    [v3 duration];
    if (v7)
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)nowPlayingViewControllerCanShuffle:(id)a3
{
  v3 = [(_MCDNowPlayingContentManager *)self requestController];
  v4 = [v3 response];
  v5 = [v4 tracklist];
  v6 = [v5 shuffleCommand];
  v7 = v6 != 0;

  return v7;
}

- (void)nowPlayingViewControllerToggleShuffle:(id)a3
{
  v8 = [(_MCDNowPlayingContentManager *)self requestController];
  v4 = [v8 response];
  v5 = [v4 tracklist];
  v6 = [v5 shuffleCommand];
  v7 = [v6 advance];
  [(_MCDNowPlayingContentManager *)self _performChangeRequest:v7];
}

- (BOOL)nowPlayingViewControllerCanShowUpNext:(id)a3
{
  v4 = [(_MCDNowPlayingContentManager *)self requestController];
  v5 = [v4 response];

  v6 = [v5 tracklist];
  v7 = [v6 items];
  v8 = [v7 totalItemCount];

  if (v8 <= 1)
  {
    v9 = MCDGeneralLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "Disabling up next queue; no items in queue.";
LABEL_12:
      _os_log_impl(&dword_25AD8E000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v11 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  v12 = v11;
  if (!v11)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;

LABEL_9:
    v13 = [(_MCDNowPlayingContentManager *)self bundleID:v17];
    v14 = [v13 isEqualToString:@"com.apple.iBooks"];

    if (!v14)
    {
      v15 = 1;
      goto LABEL_14;
    }

    v9 = MCDGeneralLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "Disabling up next queue for AudioBooks.";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  [v11 duration];

  if ((v20 & 1) == 0)
  {
    goto LABEL_9;
  }

  v9 = MCDGeneralLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v10 = "Disabling up next queue; livestreaming content.";
    goto LABEL_12;
  }

LABEL_13:

  v15 = 0;
LABEL_14:

  return v15;
}

- (BOOL)nowPlayingViewControllerCanRepeat:(id)a3
{
  v3 = [(_MCDNowPlayingContentManager *)self requestController];
  v4 = [v3 response];
  v5 = [v4 tracklist];
  v6 = [v5 repeatCommand];
  v7 = v6 != 0;

  return v7;
}

- (void)nowPlayingViewControllerToggleRepeat:(id)a3
{
  v8 = [(_MCDNowPlayingContentManager *)self requestController];
  v4 = [v8 response];
  v5 = [v4 tracklist];
  v6 = [v5 repeatCommand];
  v7 = [v6 advance];
  [(_MCDNowPlayingContentManager *)self _performChangeRequest:v7];
}

- (BOOL)nowPlayingViewControllerCanShowChangePlaybackRate:(id)a3
{
  v3 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  v4 = [v3 playbackRateCommand];
  v5 = v4 != 0;

  return v5;
}

- (void)nowPlayingViewControllerChangePlaybackRate:(id)a3
{
  v4 = a3;
  v5 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  v6 = [v5 playbackRateCommand];
  v14 = [v6 supportedPlaybackRates];

  v7 = [(_MCDNowPlayingContentManager *)self nowPlayingViewControllerGetPlaybackRate:v4];

  v8 = [v14 indexOfObject:v7];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = (v8 + 1) % [v14 count];
    v10 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
    v11 = [v10 playbackRateCommand];
    v12 = [v14 objectAtIndexedSubscript:v9];
    [v12 floatValue];
    v13 = [v11 setPlaybackRate:?];
    [(_MCDNowPlayingContentManager *)self _performChangeRequest:v13];
  }
}

- (id)nowPlayingViewControllerGetPlaybackRate:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  v5 = [v4 playbackRateCommand];
  [v5 preferredPlaybackRate];
  v6 = [v3 numberWithFloat:?];

  return v6;
}

- (BOOL)nowPlayingViewControllerShouldUseMusicExplicitGlyph:(id)a3
{
  v3 = [(_MCDNowPlayingContentManager *)self bundleID];
  v4 = [v3 isEqualToString:@"com.apple.Music"];

  return v4;
}

- (void)_performChangeRequest:(id)a3
{
  if (a3)
  {
    [MEMORY[0x277D278C0] performRequest:a3 options:0x10000 completion:0];
  }
}

- (BOOL)nowPlayingViewControllerIsRightHandDrive:(id)a3
{
  v3 = [(_MCDNowPlayingContentManager *)self carSessionStatus];
  v4 = [v3 currentSession];
  v5 = [v4 configuration];
  v6 = [v5 rightHandDrive];

  return v6;
}

- (BOOL)nowPlayingViewControllerShouldHideBackButton:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [(_MCDNowPlayingContentManager *)self bundleID];
  v5 = [v4 isEqualToString:@"com.apple.Music"];

  if (v5)
  {
    result = 0;
  }

  else
  {
    v7 = MCDGeneralLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = [(_MCDNowPlayingContentManager *)self shouldHideBackButton];
      _os_log_impl(&dword_25AD8E000, v7, OS_LOG_TYPE_DEFAULT, "Hiding back button: %d", v9, 8u);
    }

    result = [(_MCDNowPlayingContentManager *)self shouldHideBackButton];
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSString)nowPlayingBundleID
{
  v2 = [(_MCDNowPlayingContentManager *)self bundleID];
  v3 = [v2 copy];

  return v3;
}

- (Class)tableCellClass
{
  WeakRetained = objc_loadWeakRetained(&self->tableCellClass);

  return WeakRetained;
}

- (MCDNowPlayingContentManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

@end
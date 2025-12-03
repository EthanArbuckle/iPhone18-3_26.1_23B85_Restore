@interface _MCDNowPlayingContentManager
- ($04B05C73ED6AEEF31C5815932084562D)durationSnapshotForNowPlayingViewController:(SEL)controller;
- (BOOL)_sessionAllowsAlbumArt:(id)art;
- (BOOL)_shouldShowPlaybackQueueForItemCount:(int64_t)count;
- (BOOL)nowPlayingViewControllerCanRepeat:(id)repeat;
- (BOOL)nowPlayingViewControllerCanShowChangePlaybackRate:(id)rate;
- (BOOL)nowPlayingViewControllerCanShowUpNext:(id)next;
- (BOOL)nowPlayingViewControllerCanShuffle:(id)shuffle;
- (BOOL)nowPlayingViewControllerIsRightHandDrive:(id)drive;
- (BOOL)nowPlayingViewControllerIsShowingExplicitTrack:(id)track;
- (BOOL)nowPlayingViewControllerShouldHideBackButton:(id)button;
- (BOOL)nowPlayingViewControllerShouldUseMusicExplicitGlyph:(id)glyph;
- (Class)tableCellClass;
- (MCDNowPlayingContentManagerDelegate)delegate;
- (MCDNowPlayingDataSource)dataSource;
- (NSString)nowPlayingBundleID;
- (UITableView)tableView;
- (_MCDNowPlayingContentManager)initWithDelegate:(id)delegate dataSource:(id)source bundleID:(id)d;
- (id)_requestResponseItem;
- (id)_setupRequest;
- (id)albumTextForNowPlayingController:(id)controller;
- (id)artistTextForNowPlayingController:(id)controller;
- (id)nowPlayingViewControllerGetPlaybackRate:(id)rate;
- (id)progressBarLocalizedDurationStringForNowPlayingViewController:(id)controller;
- (id)titleForNowPlayingController:(id)controller;
- (int64_t)_numberOfItemsInPlaybackQueue;
- (int64_t)placeholderTypeForNowPlayingViewController:(id)controller;
- (int64_t)repeatTypeForNowPlayingViewController:(id)controller;
- (int64_t)shuffleTypeForNowPlayingViewController:(id)controller;
- (void)_limitedUIChanged:(id)changed;
- (void)_performChangeRequest:(id)request;
- (void)_performRequest;
- (void)_showPlaceholderArtwork;
- (void)beginRequestObservation;
- (void)controller:(id)controller defersResponseReplacement:(id)replacement;
- (void)dealloc;
- (void)endRequestObservation;
- (void)modelResponseDidInvalidate:(id)invalidate;
- (void)nowPlayingViewControllerChangePlaybackRate:(id)rate;
- (void)nowPlayingViewControllerToggleRepeat:(id)repeat;
- (void)nowPlayingViewControllerToggleShuffle:(id)shuffle;
- (void)processArtworkForCurrentlyPlayingSong;
- (void)session:(id)session didUpdateConfiguration:(id)configuration;
- (void)sessionDidConnect:(id)connect;
- (void)setAllowsAlbumArt:(BOOL)art;
- (void)setTableView:(id)view;
- (void)viewWillDisappear;
@end

@implementation _MCDNowPlayingContentManager

- (void)_performRequest
{
  _setupRequest = [(_MCDNowPlayingContentManager *)self _setupRequest];
  requestController = [(_MCDNowPlayingContentManager *)self requestController];
  [requestController setRequest:_setupRequest];
}

- (id)_setupRequest
{
  v3 = objc_alloc_init(MEMORY[0x277D278F0]);
  [v3 setTracklistRange:{0, 50}];
  bundleID = [(_MCDNowPlayingContentManager *)self bundleID];
  v5 = [bundleID isEqualToString:@"com.apple.Music"];

  if (v5)
  {
    v6 = MEMORY[0x277D278E0];
    bundleID2 = [(_MCDNowPlayingContentManager *)self bundleID];
    v8 = [v6 pathWithRoute:0 bundleID:bundleID2 playerID:0];
    [v3 setPlayerPath:v8];
  }

  else
  {
    [v3 setPlayerPath:0];
  }

  dataSource = [(_MCDNowPlayingContentManager *)self dataSource];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    dataSource2 = [(_MCDNowPlayingContentManager *)self dataSource];
    playingItemProperties = [dataSource2 playingItemProperties];
    [v3 setPlayingItemProperties:playingItemProperties];
  }

  dataSource3 = [(_MCDNowPlayingContentManager *)self dataSource];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    dataSource4 = [(_MCDNowPlayingContentManager *)self dataSource];
    queueItemProperties = [dataSource4 queueItemProperties];
    [v3 setQueueItemProperties:queueItemProperties];
  }

  dataSource5 = [(_MCDNowPlayingContentManager *)self dataSource];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    dataSource6 = [(_MCDNowPlayingContentManager *)self dataSource];
    queueSectionProperties = [dataSource6 queueSectionProperties];
    [v3 setQueueSectionProperties:queueSectionProperties];
  }

  dataSource7 = [(_MCDNowPlayingContentManager *)self dataSource];
  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    dataSource8 = [(_MCDNowPlayingContentManager *)self dataSource];
    requestLabel = [dataSource8 requestLabel];
    [v3 setLabel:requestLabel];
  }

  return v3;
}

- (MCDNowPlayingDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (_MCDNowPlayingContentManager)initWithDelegate:(id)delegate dataSource:(id)source bundleID:(id)d
{
  delegateCopy = delegate;
  sourceCopy = source;
  dCopy = d;
  v23.receiver = self;
  v23.super_class = _MCDNowPlayingContentManager;
  v11 = [(_MCDNowPlayingContentManager *)&v23 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeWeak(&v12->_dataSource, sourceCopy);
    v13 = objc_alloc_init(MEMORY[0x277CD6038]);
    requestController = v12->_requestController;
    v12->_requestController = v13;

    [(MPRequestResponseController *)v12->_requestController setDelegate:v12];
    objc_storeStrong(&v12->_bundleID, d);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    artworkCache = v12->_artworkCache;
    v12->_artworkCache = dictionary;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v18 = [objc_alloc(MEMORY[0x277CF89F8]) initWithOptions:4];
    carSessionStatus = v12->_carSessionStatus;
    v12->_carSessionStatus = v18;

    [(CARSessionStatus *)v12->_carSessionStatus addSessionObserver:v12];
    v12->_shouldHideBackButton = 0;
    v12->_videoPlaybackState = 0;
    v20 = dispatch_queue_create("com.apple.MusicCarDisplayUI.videoPlaybackState", 0);
    videoPlaybackStateQueue = v12->_videoPlaybackStateQueue;
    v12->_videoPlaybackStateQueue = v20;

    [defaultCenter addObserver:v12 selector:sel__limitedUIChanged_ name:*MEMORY[0x277CF8928] object:0];
    [(_MCDNowPlayingContentManager *)v12 _performRequest];
  }

  return v12;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CF8928] object:0];

  v4.receiver = self;
  v4.super_class = _MCDNowPlayingContentManager;
  [(_MCDNowPlayingContentManager *)&v4 dealloc];
}

- (void)beginRequestObservation
{
  requestController = [(_MCDNowPlayingContentManager *)self requestController];
  [requestController beginAutomaticResponseLoading];
}

- (void)endRequestObservation
{
  requestController = [(_MCDNowPlayingContentManager *)self requestController];
  [requestController endAutomaticResponseLoading];
}

- (void)viewWillDisappear
{
  alertController = [(_MCDNowPlayingContentManager *)self alertController];
  [alertController dismissViewControllerAnimated:1 completion:0];
}

- (void)setTableView:(id)view
{
  objc_storeWeak(&self->_tableView, view);
  if ([(_MCDNowPlayingContentManager *)self tableCellClass])
  {
    WeakRetained = objc_loadWeakRetained(&self->_tableView);
    tableCellClass = [(_MCDNowPlayingContentManager *)self tableCellClass];
    v6 = NSStringFromClass([(_MCDNowPlayingContentManager *)self tableCellClass]);
    [WeakRetained registerClass:tableCellClass forCellReuseIdentifier:v6];
  }

  v7 = objc_loadWeakRetained(&self->_tableView);
  [v7 setDelegate:self];

  v8 = objc_loadWeakRetained(&self->_tableView);
  [v8 setDataSource:self];

  v9 = objc_loadWeakRetained(&self->_tableView);
  [v9 reloadData];
}

- (void)setAllowsAlbumArt:(BOOL)art
{
  if (self->_allowsAlbumArt != art)
  {
    self->_allowsAlbumArt = art;
    delegate = [(_MCDNowPlayingContentManager *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(_MCDNowPlayingContentManager *)self delegate];
      [delegate2 contentManagerReloadData:self];
    }
  }
}

- (BOOL)_sessionAllowsAlbumArt:(id)art
{
  configuration = [art configuration];
  v4 = [configuration nowPlayingAlbumArtMode] == 2;

  return v4;
}

- (void)sessionDidConnect:(id)connect
{
  [(_MCDNowPlayingContentManager *)self setAllowsAlbumArt:[(_MCDNowPlayingContentManager *)self _sessionAllowsAlbumArt:connect]];

  [(_MCDNowPlayingContentManager *)self _limitedUIChanged:0];
}

- (void)session:(id)session didUpdateConfiguration:(id)configuration
{
  configuration = [(_MCDNowPlayingContentManager *)self _sessionAllowsAlbumArt:session, configuration];

  [(_MCDNowPlayingContentManager *)self setAllowsAlbumArt:configuration];
}

- (void)_limitedUIChanged:(id)changed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50___MCDNowPlayingContentManager__limitedUIChanged___block_invoke;
  block[3] = &unk_279923B08;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)modelResponseDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  v3 = invalidateCopy;
  msv_dispatch_async_on_queue();
}

- (BOOL)_shouldShowPlaybackQueueForItemCount:(int64_t)count
{
  if (count <= 0)
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

  nowPlayingItem = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  v5 = nowPlayingItem;
  if (nowPlayingItem)
  {
    [nowPlayingItem duration];

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

- (void)controller:(id)controller defersResponseReplacement:(id)replacement
{
  controllerCopy = controller;
  replacementCopy = replacement;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69___MCDNowPlayingContentManager_controller_defersResponseReplacement___block_invoke;
  block[3] = &unk_2799241C8;
  selfCopy = self;
  v13 = replacementCopy;
  v11 = controllerCopy;
  v8 = controllerCopy;
  v9 = replacementCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (int64_t)_numberOfItemsInPlaybackQueue
{
  requestController = [(_MCDNowPlayingContentManager *)self requestController];
  response = [requestController response];
  tracklist = [response tracklist];
  items = [tracklist items];
  totalItemCount = [items totalItemCount];

  if (totalItemCount <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = totalItemCount;
  }

  return v7 - 1;
}

- (void)processArtworkForCurrentlyPlayingSong
{
  _carScreen = [MEMORY[0x277D759A0] _carScreen];
  [_carScreen scale];
  v5 = v4;
  currentPlayingSong = [(_MCDNowPlayingContentManager *)self currentPlayingSong];
  artworkCatalog = [currentPlayingSong artworkCatalog];

  artworkCatalog2 = [(_MCDNowPlayingContentManager *)self artworkCatalog];
  v9 = [artworkCatalog2 isArtworkVisuallyIdenticalToCatalog:artworkCatalog];

  if ((v9 & 1) == 0)
  {
    [(_MCDNowPlayingContentManager *)self setArtworkCatalog:artworkCatalog];
    artworkCatalog3 = [(_MCDNowPlayingContentManager *)self artworkCatalog];

    if (artworkCatalog3)
    {
      [artworkCatalog setDestinationScale:v5];
      _carScreen2 = [MEMORY[0x277D759A0] _carScreen];
      [_carScreen2 bounds];
      v13 = v12;
      v15 = v14;

      if (v13 < v15)
      {
        v13 = v15;
      }

      artworkCatalog4 = [(_MCDNowPlayingContentManager *)self artworkCatalog];
      [artworkCatalog4 setFittingSize:{v13, v15}];

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

      artworkCatalog5 = [(_MCDNowPlayingContentManager *)self artworkCatalog];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __69___MCDNowPlayingContentManager_processArtworkForCurrentlyPlayingSong__block_invoke_55;
      v24[3] = &unk_2799241F0;
      objc_copyWeak(&v26, &location);
      v25 = artworkCatalog;
      [artworkCatalog5 setDestination:self configurationBlock:v24];

      objc_destroyWeak(&v26);
      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
    }

    else
    {
      [(_MCDNowPlayingContentManager *)self setAlbumArtwork:0];
      delegate = [(_MCDNowPlayingContentManager *)self delegate];
      v22 = objc_opt_respondsToSelector();

      if (v22)
      {
        delegate2 = [(_MCDNowPlayingContentManager *)self delegate];
        [delegate2 contentManagerReloadData:self];
      }
    }
  }
}

- (void)_showPlaceholderArtwork
{
  albumArtwork = self->_albumArtwork;
  self->_albumArtwork = 0;

  delegate = [(_MCDNowPlayingContentManager *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(_MCDNowPlayingContentManager *)self delegate];
    [delegate2 contentManagerReloadData:self];
  }
}

- (id)_requestResponseItem
{
  requestController = [(_MCDNowPlayingContentManager *)self requestController];
  response = [requestController response];
  tracklist = [response tracklist];
  playingItemIndexPath = [tracklist playingItemIndexPath];

  if (playingItemIndexPath)
  {
    requestController2 = [(_MCDNowPlayingContentManager *)self requestController];
    response2 = [requestController2 response];
    tracklist2 = [response2 tracklist];
    items = [tracklist2 items];
    v11 = [items itemAtIndexPath:playingItemIndexPath];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)artistTextForNowPlayingController:(id)controller
{
  currentPlayingRadioStation = [(_MCDNowPlayingContentManager *)self currentPlayingRadioStation];
  attributionLabel = [currentPlayingRadioStation attributionLabel];

  if (!attributionLabel)
  {
    v7 = objc_opt_new();
    currentPlayingSong = [(_MCDNowPlayingContentManager *)self currentPlayingSong];
    artist = [currentPlayingSong artist];
    name = [artist name];

    if ([name length])
    {
      [v7 addObject:name];
    }

    currentPlayingSong2 = [(_MCDNowPlayingContentManager *)self currentPlayingSong];
    composer = [currentPlayingSong2 composer];
    name2 = [composer name];

    currentPlayingSong3 = [(_MCDNowPlayingContentManager *)self currentPlayingSong];
    if ([currentPlayingSong3 shouldShowComposer])
    {
      v15 = [name2 length];

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
      currentPlayingSong3 = [v16 localizedStringWithFormat:v18, name2];

      [v7 addObject:currentPlayingSong3];
    }

    goto LABEL_9;
  }

  v6 = attributionLabel;
LABEL_13:

  return v6;
}

- (id)albumTextForNowPlayingController:(id)controller
{
  currentPlayingSong = [(_MCDNowPlayingContentManager *)self currentPlayingSong];
  album = [currentPlayingSong album];
  title = [album title];

  return title;
}

- (id)titleForNowPlayingController:(id)controller
{
  currentPlayingSong = [(_MCDNowPlayingContentManager *)self currentPlayingSong];
  title = [currentPlayingSong title];
  v5 = title;
  if (title)
  {
    v6 = title;
  }

  else
  {
    v7 = MCDCarDisplayBundle();
    v6 = [v7 localizedStringForKey:@"NOT_PLAYING_TITLE" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
  }

  return v6;
}

- (BOOL)nowPlayingViewControllerIsShowingExplicitTrack:(id)track
{
  currentPlayingSong = [(_MCDNowPlayingContentManager *)self currentPlayingSong];
  isExplicitSong = [currentPlayingSong isExplicitSong];

  return isExplicitSong;
}

- (id)progressBarLocalizedDurationStringForNowPlayingViewController:(id)controller
{
  _requestResponseItem = [(_MCDNowPlayingContentManager *)self _requestResponseItem];
  v4 = _requestResponseItem;
  if (_requestResponseItem)
  {
    localizedDurationString = [_requestResponseItem localizedDurationString];
  }

  else
  {
    localizedDurationString = 0;
  }

  return localizedDurationString;
}

- ($04B05C73ED6AEEF31C5815932084562D)durationSnapshotForNowPlayingViewController:(SEL)controller
{
  *&retstr->var7 = 0;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var0 = 0u;
  nowPlayingItem = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  v7 = nowPlayingItem;
  if (nowPlayingItem)
  {
    [nowPlayingItem duration];
  }

  else
  {
    _requestResponseItem = [(_MCDNowPlayingContentManager *)self _requestResponseItem];
    v9 = _requestResponseItem;
    if (_requestResponseItem)
    {
      [_requestResponseItem duration];
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

- (int64_t)shuffleTypeForNowPlayingViewController:(id)controller
{
  requestController = [(_MCDNowPlayingContentManager *)self requestController];
  response = [requestController response];
  tracklist = [response tracklist];
  shuffleType = [tracklist shuffleType];

  return shuffleType;
}

- (int64_t)repeatTypeForNowPlayingViewController:(id)controller
{
  requestController = [(_MCDNowPlayingContentManager *)self requestController];
  response = [requestController response];
  tracklist = [response tracklist];
  repeatType = [tracklist repeatType];

  return repeatType;
}

- (int64_t)placeholderTypeForNowPlayingViewController:(id)controller
{
  nowPlayingItem = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  v4 = nowPlayingItem;
  if (nowPlayingItem)
  {
    [nowPlayingItem duration];
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

- (BOOL)nowPlayingViewControllerCanShuffle:(id)shuffle
{
  requestController = [(_MCDNowPlayingContentManager *)self requestController];
  response = [requestController response];
  tracklist = [response tracklist];
  shuffleCommand = [tracklist shuffleCommand];
  v7 = shuffleCommand != 0;

  return v7;
}

- (void)nowPlayingViewControllerToggleShuffle:(id)shuffle
{
  requestController = [(_MCDNowPlayingContentManager *)self requestController];
  response = [requestController response];
  tracklist = [response tracklist];
  shuffleCommand = [tracklist shuffleCommand];
  advance = [shuffleCommand advance];
  [(_MCDNowPlayingContentManager *)self _performChangeRequest:advance];
}

- (BOOL)nowPlayingViewControllerCanShowUpNext:(id)next
{
  requestController = [(_MCDNowPlayingContentManager *)self requestController];
  response = [requestController response];

  tracklist = [response tracklist];
  items = [tracklist items];
  totalItemCount = [items totalItemCount];

  if (totalItemCount <= 1)
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

  nowPlayingItem = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  v12 = nowPlayingItem;
  if (!nowPlayingItem)
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

  [nowPlayingItem duration];

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

- (BOOL)nowPlayingViewControllerCanRepeat:(id)repeat
{
  requestController = [(_MCDNowPlayingContentManager *)self requestController];
  response = [requestController response];
  tracklist = [response tracklist];
  repeatCommand = [tracklist repeatCommand];
  v7 = repeatCommand != 0;

  return v7;
}

- (void)nowPlayingViewControllerToggleRepeat:(id)repeat
{
  requestController = [(_MCDNowPlayingContentManager *)self requestController];
  response = [requestController response];
  tracklist = [response tracklist];
  repeatCommand = [tracklist repeatCommand];
  advance = [repeatCommand advance];
  [(_MCDNowPlayingContentManager *)self _performChangeRequest:advance];
}

- (BOOL)nowPlayingViewControllerCanShowChangePlaybackRate:(id)rate
{
  nowPlayingItem = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  playbackRateCommand = [nowPlayingItem playbackRateCommand];
  v5 = playbackRateCommand != 0;

  return v5;
}

- (void)nowPlayingViewControllerChangePlaybackRate:(id)rate
{
  rateCopy = rate;
  nowPlayingItem = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  playbackRateCommand = [nowPlayingItem playbackRateCommand];
  supportedPlaybackRates = [playbackRateCommand supportedPlaybackRates];

  v7 = [(_MCDNowPlayingContentManager *)self nowPlayingViewControllerGetPlaybackRate:rateCopy];

  v8 = [supportedPlaybackRates indexOfObject:v7];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = (v8 + 1) % [supportedPlaybackRates count];
    nowPlayingItem2 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
    playbackRateCommand2 = [nowPlayingItem2 playbackRateCommand];
    v12 = [supportedPlaybackRates objectAtIndexedSubscript:v9];
    [v12 floatValue];
    v13 = [playbackRateCommand2 setPlaybackRate:?];
    [(_MCDNowPlayingContentManager *)self _performChangeRequest:v13];
  }
}

- (id)nowPlayingViewControllerGetPlaybackRate:(id)rate
{
  v3 = MEMORY[0x277CCABB0];
  nowPlayingItem = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  playbackRateCommand = [nowPlayingItem playbackRateCommand];
  [playbackRateCommand preferredPlaybackRate];
  v6 = [v3 numberWithFloat:?];

  return v6;
}

- (BOOL)nowPlayingViewControllerShouldUseMusicExplicitGlyph:(id)glyph
{
  bundleID = [(_MCDNowPlayingContentManager *)self bundleID];
  v4 = [bundleID isEqualToString:@"com.apple.Music"];

  return v4;
}

- (void)_performChangeRequest:(id)request
{
  if (request)
  {
    [MEMORY[0x277D278C0] performRequest:request options:0x10000 completion:0];
  }
}

- (BOOL)nowPlayingViewControllerIsRightHandDrive:(id)drive
{
  carSessionStatus = [(_MCDNowPlayingContentManager *)self carSessionStatus];
  currentSession = [carSessionStatus currentSession];
  configuration = [currentSession configuration];
  rightHandDrive = [configuration rightHandDrive];

  return rightHandDrive;
}

- (BOOL)nowPlayingViewControllerShouldHideBackButton:(id)button
{
  v10 = *MEMORY[0x277D85DE8];
  bundleID = [(_MCDNowPlayingContentManager *)self bundleID];
  v5 = [bundleID isEqualToString:@"com.apple.Music"];

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
  bundleID = [(_MCDNowPlayingContentManager *)self bundleID];
  v3 = [bundleID copy];

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
@interface MCDPlayableContentPlaybackManager
- (BOOL)nowPlayingViewController:(id)controller buttonShouldBeActive:(int64_t)active;
- (BOOL)nowPlayingViewController:(id)controller shouldDisplayButton:(int64_t)button withImage:(id *)image existingIdentifier:(id)identifier tinted:(BOOL *)tinted;
- (BOOL)nowPlayingViewControllerCanShowAddToLibrary:(id)library;
- (BOOL)nowPlayingViewControllerCanShowMore:(id)more;
- (BOOL)nowPlayingViewControllerIsRightHandDrive:(id)drive;
- (double)_jumpBackwardInterval;
- (double)_jumpForwardInterval;
- (id)_adjustedIndexPathForPlaybackQueue:(id)queue;
- (id)_alertActionForFeedbackCommand:(id)command fallbackTitle:(id)title;
- (id)_itemAtIndexPath:(id)path;
- (id)_skipIntervalButtonImageForInterval:(double)interval size:(int64_t)size;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_handleHamburgerActionSheet;
- (void)_processResponse:(id)response error:(id)error;
- (void)_updateTrackQueueIndex;
- (void)nowPlayingViewController:(id)controller didSendAction:(int64_t)action state:(int64_t)state;
- (void)nowPlayingViewControllerAddToLibrary:(id)library;
- (void)nowPlayingViewControllerMore:(id)more;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation MCDPlayableContentPlaybackManager

- (void)_processResponse:(id)response error:(id)error
{
  responseCopy = response;
  nowPlayingItem = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  if (nowPlayingItem)
  {
    goto LABEL_2;
  }

  if ([responseCopy state])
  {
    [(_MCDNowPlayingContentManager *)self setCurrentPlayingSong:0];
    delegate = [(_MCDNowPlayingContentManager *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      nowPlayingItem = [(_MCDNowPlayingContentManager *)self delegate];
      [nowPlayingItem contentManagerCompletedAllPlayback:self];
LABEL_2:
    }
  }

  tracklist = [responseCopy tracklist];
  items = [tracklist items];
  numberOfSections = [items numberOfSections];

  if (numberOfSections >= 1)
  {
    tracklist2 = [responseCopy tracklist];
    playingItemIndexPath = [tracklist2 playingItemIndexPath];

    if (playingItemIndexPath)
    {
      v11 = [(MCDPlayableContentPlaybackManager *)self _itemAtIndexPath:playingItemIndexPath];
      metadataObject = [v11 metadataObject];
      anyObject = [metadataObject anyObject];
      [(_MCDNowPlayingContentManager *)self setCurrentPlayingSong:anyObject];
    }

    else
    {
      [(_MCDNowPlayingContentManager *)self setCurrentPlayingSong:0];
    }

    [(_MCDNowPlayingContentManager *)self processArtworkForCurrentlyPlayingSong];
    delegate2 = [(_MCDNowPlayingContentManager *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = [(_MCDNowPlayingContentManager *)self _shouldShowPlaybackQueueForItemCount:[(_MCDNowPlayingContentManager *)self _numberOfItemsInPlaybackQueue]];
      delegate3 = [(_MCDNowPlayingContentManager *)self delegate];
      [delegate3 contentManager:self shouldShowPlaybackQueue:v18];
    }

    [(MCDPlayableContentPlaybackManager *)self _updateTrackQueueIndex];
  }

  tableView = [(_MCDNowPlayingContentManager *)self tableView];

  if (tableView)
  {
    tableView2 = [(_MCDNowPlayingContentManager *)self tableView];
    [tableView2 reloadData];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_modelResponseDidInvalidate_ name:*MEMORY[0x277CD5C20] object:responseCopy];
}

- (id)_adjustedIndexPathForPlaybackQueue:(id)queue
{
  queueCopy = queue;
  requestController = [(_MCDNowPlayingContentManager *)self requestController];
  response = [requestController response];
  tracklist = [response tracklist];
  items = [tracklist items];
  v9 = [queueCopy row];

  v10 = [items indexPathForGlobalIndex:v9 + 1];

  return v10;
}

- (id)_itemAtIndexPath:(id)path
{
  pathCopy = path;
  requestController = [(_MCDNowPlayingContentManager *)self requestController];
  response = [requestController response];
  tracklist = [response tracklist];
  items = [tracklist items];
  v9 = [items itemAtIndexPath:pathCopy];

  return v9;
}

- (void)_updateTrackQueueIndex
{
  requestController = [(_MCDNowPlayingContentManager *)self requestController];
  response = [requestController response];
  tracklist = [response tracklist];
  playingItemGlobalIndex = [tracklist playingItemGlobalIndex];

  requestController2 = [(_MCDNowPlayingContentManager *)self requestController];
  response2 = [requestController2 response];
  tracklist2 = [response2 tracklist];
  globalItemCount = [tracklist2 globalItemCount];

  if (playingItemGlobalIndex != [(MCDPlayableContentPlaybackManager *)self playingItemIndex]|| globalItemCount != [(MCDPlayableContentPlaybackManager *)self totalItemCount])
  {
    delegate = [(_MCDNowPlayingContentManager *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegate2 = [(_MCDNowPlayingContentManager *)self delegate];
      [delegate2 contentManager:self displayItemIndex:playingItemGlobalIndex totalItemCount:globalItemCount];
    }
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(_MCDNowPlayingContentManager *)self _numberOfItemsInPlaybackQueue:view];
  limitedUI = [(_MCDNowPlayingContentManager *)self limitedUI];
  v7 = 12;
  if (v5 < 12)
  {
    v7 = v5;
  }

  if (limitedUI)
  {
    return v7;
  }

  else
  {
    return v5;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v43 = [MEMORY[0x277CF9188] cellForTableView:viewCopy];
  v6 = [(MCDPlayableContentPlaybackManager *)self _adjustedIndexPathForPlaybackQueue:pathCopy];
  requestController = [(_MCDNowPlayingContentManager *)self requestController];
  response = [requestController response];
  tracklist = [response tracklist];
  items = [tracklist items];
  v39 = v6;
  v11 = [items itemAtIndexPath:v6];
  metadataObject = [v11 metadataObject];
  anyObject = [metadataObject anyObject];

  v14 = MEMORY[0x277CF9198];
  title = [anyObject title];
  artist = [anyObject artist];
  name = [artist name];
  album = [anyObject album];
  title2 = [album title];
  v19 = MCDFormatArtistAlbumString(name, title2);
  selfCopy = self;
  artworkCache = [(_MCDNowPlayingContentManager *)self artworkCache];
  v21 = [artworkCache objectForKey:pathCopy];
  isExplicitSong = [anyObject isExplicitSong];
  BYTE4(v37) = 1;
  LODWORD(v37) = 0x1000000;
  v23 = v14;
  v24 = title;
  v25 = [v23 configurationWithText:title detailText:v19 image:v21 showExplicit:isExplicitSong accessory:0 showActivityIndicator:0 showPlaybackProgress:0.0 playbackProgress:v37 activePlayback:? isPlaying:? playingIndicatorLeadingSide:? isEnabled:?];

  [v43 applyConfiguration:v25];
  artworkCatalog = [anyObject artworkCatalog];

  if (artworkCatalog)
  {
    window = [viewCopy window];
    screen = [window screen];
    [screen scale];
    v30 = v29;
    artworkCatalog2 = [anyObject artworkCatalog];
    [artworkCatalog2 setDestinationScale:v30];

    artworkCatalog3 = [anyObject artworkCatalog];
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    [artworkCatalog3 setCacheIdentifier:v34 forRequestingContext:selfCopy];

    objc_initWeak(&location, selfCopy);
    artworkCatalog4 = [anyObject artworkCatalog];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __69__MCDPlayableContentPlaybackManager_tableView_cellForRowAtIndexPath___block_invoke;
    v44[3] = &unk_2799241F0;
    objc_copyWeak(&v46, &location);
    v45 = pathCopy;
    [artworkCatalog4 setDestination:selfCopy configurationBlock:v44];

    objc_destroyWeak(&v46);
    objc_destroyWeak(&location);
  }

  return v43;
}

void __69__MCDPlayableContentPlaybackManager_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__MCDPlayableContentPlaybackManager_tableView_cellForRowAtIndexPath___block_invoke_2;
  block[3] = &unk_279924218;
  objc_copyWeak(&v9, (a1 + 40));
  v7 = v4;
  v8 = *(a1 + 32);
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
}

void __69__MCDPlayableContentPlaybackManager_tableView_cellForRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained artworkCache];
  [v2 setObject:*(a1 + 32) forKey:*(a1 + 40)];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  requestController = [(_MCDNowPlayingContentManager *)self requestController];
  response = [requestController response];
  tracklist = [response tracklist];

  v19 = tracklist;
  changeItemCommand = [tracklist changeItemCommand];
  requestController2 = [(_MCDNowPlayingContentManager *)self requestController];
  response2 = [requestController2 response];
  tracklist2 = [response2 tracklist];
  items = [tracklist2 items];
  v15 = [(MCDPlayableContentPlaybackManager *)self _adjustedIndexPathForPlaybackQueue:pathCopy];
  v16 = [items itemAtIndexPath:v15];
  v17 = [changeItemCommand changeToItem:v16];

  objc_initWeak(&location, self);
  v18 = MEMORY[0x277D278C0];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __71__MCDPlayableContentPlaybackManager_tableView_didSelectRowAtIndexPath___block_invoke;
  v21[3] = &unk_279924240;
  objc_copyWeak(&v22, &location);
  [v18 performRequest:v17 completion:v21];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __71__MCDPlayableContentPlaybackManager_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__MCDPlayableContentPlaybackManager_tableView_didSelectRowAtIndexPath___block_invoke_2;
  block[3] = &unk_279923A90;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __71__MCDPlayableContentPlaybackManager_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v3 = [WeakRetained delegate];
    [v3 contentManagerInitiatedPlaybackFromPlaybackQueue:WeakRetained];
  }
}

- (double)_jumpForwardInterval
{
  nowPlayingItem = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  seekCommand = [nowPlayingItem seekCommand];
  preferredForwardJumpIntervals = [seekCommand preferredForwardJumpIntervals];
  firstObject = [preferredForwardJumpIntervals firstObject];
  [firstObject doubleValue];
  v7 = v6;

  return v7;
}

- (double)_jumpBackwardInterval
{
  nowPlayingItem = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  seekCommand = [nowPlayingItem seekCommand];
  preferredBackwardJumpIntervals = [seekCommand preferredBackwardJumpIntervals];
  firstObject = [preferredBackwardJumpIntervals firstObject];
  [firstObject doubleValue];
  v7 = v6;

  return v7;
}

- (BOOL)nowPlayingViewController:(id)controller shouldDisplayButton:(int64_t)button withImage:(id *)image existingIdentifier:(id)identifier tinted:(BOOL *)tinted
{
  controllerCopy = controller;
  identifierCopy = identifier;
  if (button == 2)
  {
    requestController = [(_MCDNowPlayingContentManager *)self requestController];
    response = [requestController response];
    stop = [response stop];
    if (stop)
    {
      v26 = stop;
      requestController2 = [(_MCDNowPlayingContentManager *)self requestController];
      response2 = [requestController2 response];
      pause = [response2 pause];

      if (!pause)
      {
        transportControlView = [controllerCopy transportControlView];
        nowPlayingItem2 = transportControlView;
        v32 = @"square.fill";
        goto LABEL_16;
      }
    }

    else
    {
    }

    v33 = [(_MCDNowPlayingContentManager *)self nowPlayingViewControllerIsPlaying:controllerCopy];
    transportControlView = [controllerCopy transportControlView];
    nowPlayingItem2 = transportControlView;
    if (!v33)
    {
      [transportControlView setPlayButtonImageName:@"play.fill"];
      goto LABEL_20;
    }

    v32 = @"pause.fill";
LABEL_16:
    [transportControlView setPauseButtonImageName:v32];
LABEL_20:

    goto LABEL_21;
  }

  if (button == 1)
  {
    [(MCDPlayableContentPlaybackManager *)self _jumpForwardInterval];
    if (v22 == 0.0)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  if (button)
  {
    goto LABEL_21;
  }

  [(MCDPlayableContentPlaybackManager *)self _jumpBackwardInterval];
  if (v14 != 0.0)
  {
LABEL_9:
    *image = [(MCDPlayableContentPlaybackManager *)self _skipIntervalButtonImageForInterval:22 size:?];
    goto LABEL_21;
  }

  requestController3 = [(_MCDNowPlayingContentManager *)self requestController];
  response3 = [requestController3 response];
  tracklist = [response3 tracklist];
  changeItemCommand = [tracklist changeItemCommand];
  previousItem = [changeItemCommand previousItem];

  if (!previousItem)
  {
    nowPlayingItem = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
    likeCommand = [nowPlayingItem likeCommand];
    if (likeCommand)
    {

LABEL_19:
      *image = [MCDGlyph imageNamed:@"line.horizontal.3.decrease.circle" ofSize:22.0];
      nowPlayingItem2 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
      likeCommand2 = [nowPlayingItem2 likeCommand];
      *tinted = [likeCommand2 value];

      goto LABEL_20;
    }

    nowPlayingItem3 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
    dislikeCommand = [nowPlayingItem3 dislikeCommand];

    if (dislikeCommand)
    {
      goto LABEL_19;
    }
  }

LABEL_21:

  return 1;
}

- (id)_skipIntervalButtonImageForInterval:(double)interval size:(int64_t)size
{
  if (_skipIntervalButtonImageForInterval_size__onceToken != -1)
  {
    [MCDPlayableContentPlaybackManager _skipIntervalButtonImageForInterval:size:];
  }

  v6 = @"gobackward";
  if (interval > 0.0)
  {
    v6 = @"goforward";
  }

  v7 = v6;
  v8 = _skipIntervalButtonImageForInterval_size____knownIntervals;
  v9 = fabs(interval);
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  LODWORD(v8) = [v8 containsObject:v10];

  if (v8)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
    v13 = [v11 stringWithFormat:@"%@.%@", v7, v12];

    v7 = v13;
  }

  v14 = [MCDGlyph imageNamed:v7 ofSize:size];

  return v14;
}

void __78__MCDPlayableContentPlaybackManager__skipIntervalButtonImageForInterval_size___block_invoke()
{
  v0 = _skipIntervalButtonImageForInterval_size____knownIntervals;
  _skipIntervalButtonImageForInterval_size____knownIntervals = &unk_286C30EC0;
}

- (BOOL)nowPlayingViewController:(id)controller buttonShouldBeActive:(int64_t)active
{
  controllerCopy = controller;
  if (active == 1)
  {
    [(MCDPlayableContentPlaybackManager *)self _jumpForwardInterval];
    if (v16 == 0.0)
    {
      requestController = [(_MCDNowPlayingContentManager *)self requestController];
      response = [requestController response];
      tracklist = [response tracklist];
      changeItemCommand = [tracklist changeItemCommand];
      nextItem = [changeItemCommand nextItem];

LABEL_9:
      v15 = nextItem != 0;

      goto LABEL_10;
    }

LABEL_11:
    v15 = 1;
    goto LABEL_12;
  }

  if (active)
  {
    goto LABEL_11;
  }

  [(MCDPlayableContentPlaybackManager *)self _jumpBackwardInterval];
  if (v7 != 0.0)
  {
    goto LABEL_11;
  }

  requestController2 = [(_MCDNowPlayingContentManager *)self requestController];
  response2 = [requestController2 response];
  tracklist2 = [response2 tracklist];
  changeItemCommand2 = [tracklist2 changeItemCommand];
  previousItem = [changeItemCommand2 previousItem];

  if (previousItem)
  {
    goto LABEL_11;
  }

  requestController = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  response = [requestController likeCommand];
  if (!response)
  {
    tracklist = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
    changeItemCommand = [tracklist dislikeCommand];
    nextItem = changeItemCommand;
    goto LABEL_9;
  }

  v15 = 1;
LABEL_10:

LABEL_12:
  return v15;
}

- (void)nowPlayingViewController:(id)controller didSendAction:(int64_t)action state:(int64_t)state
{
  nowPlayingItem = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  seekCommand = [nowPlayingItem seekCommand];

  if (action == 2)
  {
    requestController = [(_MCDNowPlayingContentManager *)self requestController];
    response = [requestController response];
    stop = [response stop];

    requestController2 = [(_MCDNowPlayingContentManager *)self requestController];
    response2 = [requestController2 response];
    pause = [response2 pause];

    v24 = MCDGeneralLogging();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (stop && !pause)
    {
      if (v25)
      {
        *v52 = 0;
        _os_log_impl(&dword_25AD8E000, v24, OS_LOG_TYPE_DEFAULT, "Sending stop command", v52, 2u);
      }

      v26 = stop;
      goto LABEL_45;
    }

    if (pause)
    {
      if (v25)
      {
        *v52 = 0;
        _os_log_impl(&dword_25AD8E000, v24, OS_LOG_TYPE_DEFAULT, "Sending pause command", v52, 2u);
      }

      v26 = pause;
      goto LABEL_45;
    }

    if (v25)
    {
      *v52 = 0;
      _os_log_impl(&dword_25AD8E000, v24, OS_LOG_TYPE_DEFAULT, "Sending play command", v52, 2u);
    }

    requestController3 = [(_MCDNowPlayingContentManager *)self requestController];
    response3 = [requestController3 response];
    play = [response3 play];
LABEL_56:
    endSeek = play;

LABEL_57:
    goto LABEL_58;
  }

  if (action != 1)
  {
    if (action)
    {
      goto LABEL_17;
    }

    isSeeking = [(MCDPlayableContentPlaybackManager *)self isSeeking];
    if (state == 1)
    {
      if (seekCommand)
      {
        v11 = isSeeking;
      }

      else
      {
        v11 = 1;
      }

      if ((v11 & 1) == 0)
      {
        v12 = MCDGeneralLogging();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v52 = 0;
          _os_log_impl(&dword_25AD8E000, v12, OS_LOG_TYPE_DEFAULT, "Sending reverse seek command", v52, 2u);
        }

        v13 = seekCommand;
        v14 = -1;
LABEL_39:
        endSeek = [v13 beginSeekWithDirection:v14];
        selfCopy2 = self;
        v30 = 1;
        goto LABEL_40;
      }

      goto LABEL_17;
    }

    if (isSeeking)
    {
      endSeek = [seekCommand endSeek];
      v28 = MCDGeneralLogging();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *v52 = 0;
        _os_log_impl(&dword_25AD8E000, v28, OS_LOG_TYPE_DEFAULT, "Sending end reverse seek command", v52, 2u);
      }

LABEL_35:
      selfCopy2 = self;
      v30 = 0;
LABEL_40:
      [(MCDPlayableContentPlaybackManager *)selfCopy2 setSeeking:v30];
      goto LABEL_60;
    }

    [(MCDPlayableContentPlaybackManager *)self _jumpBackwardInterval];
    v37 = v36;
    requestController4 = [(_MCDNowPlayingContentManager *)self requestController];
    response4 = [requestController4 response];
    tracklist = [response4 tracklist];
    changeItemCommand = [tracklist changeItemCommand];
    stop = [changeItemCommand previousItem];

    if (v37 != 0.0)
    {
      v42 = MCDGeneralLogging();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *v52 = 0;
        _os_log_impl(&dword_25AD8E000, v42, OS_LOG_TYPE_DEFAULT, "Sending skip backwards command", v52, 2u);
      }

      pause = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
      requestController3 = [pause seekCommand];
      endSeek = [requestController3 jumpByInterval:v37];
      goto LABEL_57;
    }

    if (stop)
    {
      v46 = MCDGeneralLogging();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *v52 = 0;
        _os_log_impl(&dword_25AD8E000, v46, OS_LOG_TYPE_DEFAULT, "Sending previous item command", v52, 2u);
      }

      endSeek = stop;
      goto LABEL_59;
    }

    nowPlayingItem2 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
    likeCommand = [nowPlayingItem2 likeCommand];
    if (likeCommand)
    {
    }

    else
    {
      nowPlayingItem3 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
      dislikeCommand = [nowPlayingItem3 dislikeCommand];

      if (!dislikeCommand)
      {
LABEL_71:
        endSeek = 0;
        goto LABEL_59;
      }
    }

    v51 = MCDGeneralLogging();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *v52 = 0;
      _os_log_impl(&dword_25AD8E000, v51, OS_LOG_TYPE_DEFAULT, "Opening action sheet for like/dislike command", v52, 2u);
    }

    [(MCDPlayableContentPlaybackManager *)self _handleHamburgerActionSheet];
    goto LABEL_71;
  }

  isSeeking2 = [(MCDPlayableContentPlaybackManager *)self isSeeking];
  if (state != 1)
  {
    if (isSeeking2)
    {
      v27 = MCDGeneralLogging();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *v52 = 0;
        _os_log_impl(&dword_25AD8E000, v27, OS_LOG_TYPE_DEFAULT, "Sending end forward seek command", v52, 2u);
      }

      endSeek = [seekCommand endSeek];
      goto LABEL_35;
    }

    [(MCDPlayableContentPlaybackManager *)self _jumpForwardInterval];
    v33 = v32;
    v34 = MCDGeneralLogging();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
    if (v33 != 0.0)
    {
      if (v35)
      {
        *v52 = 0;
        _os_log_impl(&dword_25AD8E000, v34, OS_LOG_TYPE_DEFAULT, "Sending skip forward command", v52, 2u);
      }

      stop = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
      pause = [stop seekCommand];
      v26 = [pause jumpByInterval:v33];
LABEL_45:
      endSeek = v26;
LABEL_58:

LABEL_59:
      goto LABEL_60;
    }

    if (v35)
    {
      *v52 = 0;
      _os_log_impl(&dword_25AD8E000, v34, OS_LOG_TYPE_DEFAULT, "Sending forward item command", v52, 2u);
    }

    stop = [(_MCDNowPlayingContentManager *)self requestController];
    pause = [stop response];
    requestController3 = [pause tracklist];
    response3 = [requestController3 changeItemCommand];
    play = [response3 nextItem];
    goto LABEL_56;
  }

  if (seekCommand)
  {
    v16 = isSeeking2;
  }

  else
  {
    v16 = 1;
  }

  if ((v16 & 1) == 0)
  {
    v31 = MCDGeneralLogging();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *v52 = 0;
      _os_log_impl(&dword_25AD8E000, v31, OS_LOG_TYPE_DEFAULT, "Sending forward seek command", v52, 2u);
    }

    v13 = seekCommand;
    v14 = 1;
    goto LABEL_39;
  }

LABEL_17:
  endSeek = 0;
LABEL_60:
  [(_MCDNowPlayingContentManager *)self _performChangeRequest:endSeek];
}

- (void)_handleHamburgerActionSheet
{
  v20 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
  [v20 setOverrideUserInterfaceStyle:2];
  nowPlayingItem = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  likeCommand = [nowPlayingItem likeCommand];

  if (likeCommand)
  {
    v5 = MCDCarDisplayBundle();
    v6 = [v5 localizedStringForKey:@"LIKE_TRACK_DEFAULT_TITLE" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
    v7 = [(MCDPlayableContentPlaybackManager *)self _alertActionForFeedbackCommand:likeCommand fallbackTitle:v6];
    [v20 addAction:v7];
  }

  nowPlayingItem2 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  dislikeCommand = [nowPlayingItem2 dislikeCommand];

  if (dislikeCommand)
  {
    v10 = MCDCarDisplayBundle();
    v11 = [v10 localizedStringForKey:@"DISLIKE_TRACK_DEFAULT_TITLE" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
    v12 = [(MCDPlayableContentPlaybackManager *)self _alertActionForFeedbackCommand:dislikeCommand fallbackTitle:v11];
    [v20 addAction:v12];
  }

  v13 = MEMORY[0x277D750F8];
  v14 = MCDCarDisplayBundle();
  v15 = [v14 localizedStringForKey:@"CANCEL" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
  v16 = [v13 actionWithTitle:v15 style:1 handler:0];
  [v20 addAction:v16];

  delegate = [(_MCDNowPlayingContentManager *)self delegate];
  LOBYTE(v14) = objc_opt_respondsToSelector();

  if (v14)
  {
    [(_MCDNowPlayingContentManager *)self setAlertController:v20];
    delegate2 = [(_MCDNowPlayingContentManager *)self delegate];
    alertController = [(_MCDNowPlayingContentManager *)self alertController];
    [delegate2 contentManager:self presentViewController:alertController];
  }
}

- (id)_alertActionForFeedbackCommand:(id)command fallbackTitle:(id)title
{
  commandCopy = command;
  titleCopy = title;
  localizedShortTitle = [commandCopy localizedShortTitle];
  if (!localizedShortTitle)
  {
    localizedShortTitle = [commandCopy localizedTitle];
    if (!localizedShortTitle)
    {
      localizedShortTitle = titleCopy;
    }
  }

  v9 = localizedShortTitle;
  v10 = MEMORY[0x277D750F8];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __82__MCDPlayableContentPlaybackManager__alertActionForFeedbackCommand_fallbackTitle___block_invoke;
  v17 = &unk_279924268;
  selfCopy = self;
  v19 = commandCopy;
  v11 = commandCopy;
  v12 = [v10 actionWithTitle:v9 style:0 handler:&v14];
  [v12 _setChecked:{objc_msgSend(v11, "value", v14, v15, v16, v17, selfCopy)}];

  return v12;
}

void __82__MCDPlayableContentPlaybackManager__alertActionForFeedbackCommand_fallbackTitle___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) changeValue:{objc_msgSend(*(a1 + 40), "value") ^ 1}];
  [v1 _performChangeRequest:v2];
}

- (BOOL)nowPlayingViewControllerCanShowAddToLibrary:(id)library
{
  nowPlayingItem = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  wishlistCommand = [nowPlayingItem wishlistCommand];
  v5 = wishlistCommand != 0;

  return v5;
}

- (void)nowPlayingViewControllerAddToLibrary:(id)library
{
  nowPlayingItem = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  wishlistCommand = [nowPlayingItem wishlistCommand];

  if (wishlistCommand)
  {
    v5 = [wishlistCommand changeValue:{objc_msgSend(wishlistCommand, "value") ^ 1}];
    [(_MCDNowPlayingContentManager *)self _performChangeRequest:v5];
  }
}

- (BOOL)nowPlayingViewControllerCanShowMore:(id)more
{
  requestController = [(_MCDNowPlayingContentManager *)self requestController];
  response = [requestController response];
  tracklist = [response tracklist];
  changeItemCommand = [tracklist changeItemCommand];
  previousItem = [changeItemCommand previousItem];

  if (!previousItem)
  {
    return 0;
  }

  nowPlayingItem = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  likeCommand = [nowPlayingItem likeCommand];
  if (likeCommand)
  {
    v11 = 1;
  }

  else
  {
    nowPlayingItem2 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
    dislikeCommand = [nowPlayingItem2 dislikeCommand];
    v11 = dislikeCommand != 0;
  }

  return v11;
}

- (void)nowPlayingViewControllerMore:(id)more
{
  requestController = [(_MCDNowPlayingContentManager *)self requestController];
  response = [requestController response];
  tracklist = [response tracklist];
  changeItemCommand = [tracklist changeItemCommand];
  previousItem = [changeItemCommand previousItem];

  if (previousItem)
  {

    [(MCDPlayableContentPlaybackManager *)self _handleHamburgerActionSheet];
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

@end
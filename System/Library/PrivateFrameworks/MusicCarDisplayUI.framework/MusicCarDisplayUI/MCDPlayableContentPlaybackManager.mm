@interface MCDPlayableContentPlaybackManager
- (BOOL)nowPlayingViewController:(id)a3 buttonShouldBeActive:(int64_t)a4;
- (BOOL)nowPlayingViewController:(id)a3 shouldDisplayButton:(int64_t)a4 withImage:(id *)a5 existingIdentifier:(id)a6 tinted:(BOOL *)a7;
- (BOOL)nowPlayingViewControllerCanShowAddToLibrary:(id)a3;
- (BOOL)nowPlayingViewControllerCanShowMore:(id)a3;
- (BOOL)nowPlayingViewControllerIsRightHandDrive:(id)a3;
- (double)_jumpBackwardInterval;
- (double)_jumpForwardInterval;
- (id)_adjustedIndexPathForPlaybackQueue:(id)a3;
- (id)_alertActionForFeedbackCommand:(id)a3 fallbackTitle:(id)a4;
- (id)_itemAtIndexPath:(id)a3;
- (id)_skipIntervalButtonImageForInterval:(double)a3 size:(int64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_handleHamburgerActionSheet;
- (void)_processResponse:(id)a3 error:(id)a4;
- (void)_updateTrackQueueIndex;
- (void)nowPlayingViewController:(id)a3 didSendAction:(int64_t)a4 state:(int64_t)a5;
- (void)nowPlayingViewControllerAddToLibrary:(id)a3;
- (void)nowPlayingViewControllerMore:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation MCDPlayableContentPlaybackManager

- (void)_processResponse:(id)a3 error:(id)a4
{
  v23 = a3;
  v5 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  if (v5)
  {
    goto LABEL_2;
  }

  if ([v23 state])
  {
    [(_MCDNowPlayingContentManager *)self setCurrentPlayingSong:0];
    v14 = [(_MCDNowPlayingContentManager *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v5 = [(_MCDNowPlayingContentManager *)self delegate];
      [v5 contentManagerCompletedAllPlayback:self];
LABEL_2:
    }
  }

  v6 = [v23 tracklist];
  v7 = [v6 items];
  v8 = [v7 numberOfSections];

  if (v8 >= 1)
  {
    v9 = [v23 tracklist];
    v10 = [v9 playingItemIndexPath];

    if (v10)
    {
      v11 = [(MCDPlayableContentPlaybackManager *)self _itemAtIndexPath:v10];
      v12 = [v11 metadataObject];
      v13 = [v12 anyObject];
      [(_MCDNowPlayingContentManager *)self setCurrentPlayingSong:v13];
    }

    else
    {
      [(_MCDNowPlayingContentManager *)self setCurrentPlayingSong:0];
    }

    [(_MCDNowPlayingContentManager *)self processArtworkForCurrentlyPlayingSong];
    v16 = [(_MCDNowPlayingContentManager *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = [(_MCDNowPlayingContentManager *)self _shouldShowPlaybackQueueForItemCount:[(_MCDNowPlayingContentManager *)self _numberOfItemsInPlaybackQueue]];
      v19 = [(_MCDNowPlayingContentManager *)self delegate];
      [v19 contentManager:self shouldShowPlaybackQueue:v18];
    }

    [(MCDPlayableContentPlaybackManager *)self _updateTrackQueueIndex];
  }

  v20 = [(_MCDNowPlayingContentManager *)self tableView];

  if (v20)
  {
    v21 = [(_MCDNowPlayingContentManager *)self tableView];
    [v21 reloadData];
  }

  v22 = [MEMORY[0x277CCAB98] defaultCenter];
  [v22 addObserver:self selector:sel_modelResponseDidInvalidate_ name:*MEMORY[0x277CD5C20] object:v23];
}

- (id)_adjustedIndexPathForPlaybackQueue:(id)a3
{
  v4 = a3;
  v5 = [(_MCDNowPlayingContentManager *)self requestController];
  v6 = [v5 response];
  v7 = [v6 tracklist];
  v8 = [v7 items];
  v9 = [v4 row];

  v10 = [v8 indexPathForGlobalIndex:v9 + 1];

  return v10;
}

- (id)_itemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(_MCDNowPlayingContentManager *)self requestController];
  v6 = [v5 response];
  v7 = [v6 tracklist];
  v8 = [v7 items];
  v9 = [v8 itemAtIndexPath:v4];

  return v9;
}

- (void)_updateTrackQueueIndex
{
  v3 = [(_MCDNowPlayingContentManager *)self requestController];
  v4 = [v3 response];
  v5 = [v4 tracklist];
  v6 = [v5 playingItemGlobalIndex];

  v7 = [(_MCDNowPlayingContentManager *)self requestController];
  v8 = [v7 response];
  v9 = [v8 tracklist];
  v10 = [v9 globalItemCount];

  if (v6 != [(MCDPlayableContentPlaybackManager *)self playingItemIndex]|| v10 != [(MCDPlayableContentPlaybackManager *)self totalItemCount])
  {
    v11 = [(_MCDNowPlayingContentManager *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(_MCDNowPlayingContentManager *)self delegate];
      [v13 contentManager:self displayItemIndex:v6 totalItemCount:v10];
    }
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(_MCDNowPlayingContentManager *)self _numberOfItemsInPlaybackQueue:a3];
  v6 = [(_MCDNowPlayingContentManager *)self limitedUI];
  v7 = 12;
  if (v5 < 12)
  {
    v7 = v5;
  }

  if (v6)
  {
    return v7;
  }

  else
  {
    return v5;
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v42 = a3;
  v41 = a4;
  v43 = [MEMORY[0x277CF9188] cellForTableView:v42];
  v6 = [(MCDPlayableContentPlaybackManager *)self _adjustedIndexPathForPlaybackQueue:v41];
  v7 = [(_MCDNowPlayingContentManager *)self requestController];
  v8 = [v7 response];
  v9 = [v8 tracklist];
  v10 = [v9 items];
  v39 = v6;
  v11 = [v10 itemAtIndexPath:v6];
  v12 = [v11 metadataObject];
  v13 = [v12 anyObject];

  v14 = MEMORY[0x277CF9198];
  v15 = [v13 title];
  v40 = [v13 artist];
  v16 = [v40 name];
  v17 = [v13 album];
  v18 = [v17 title];
  v19 = MCDFormatArtistAlbumString(v16, v18);
  v38 = self;
  v20 = [(_MCDNowPlayingContentManager *)self artworkCache];
  v21 = [v20 objectForKey:v41];
  v22 = [v13 isExplicitSong];
  BYTE4(v37) = 1;
  LODWORD(v37) = 0x1000000;
  v23 = v14;
  v24 = v15;
  v25 = [v23 configurationWithText:v15 detailText:v19 image:v21 showExplicit:v22 accessory:0 showActivityIndicator:0 showPlaybackProgress:0.0 playbackProgress:v37 activePlayback:? isPlaying:? playingIndicatorLeadingSide:? isEnabled:?];

  [v43 applyConfiguration:v25];
  v26 = [v13 artworkCatalog];

  if (v26)
  {
    v27 = [v42 window];
    v28 = [v27 screen];
    [v28 scale];
    v30 = v29;
    v31 = [v13 artworkCatalog];
    [v31 setDestinationScale:v30];

    v32 = [v13 artworkCatalog];
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    [v32 setCacheIdentifier:v34 forRequestingContext:v38];

    objc_initWeak(&location, v38);
    v35 = [v13 artworkCatalog];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __69__MCDPlayableContentPlaybackManager_tableView_cellForRowAtIndexPath___block_invoke;
    v44[3] = &unk_2799241F0;
    objc_copyWeak(&v46, &location);
    v45 = v41;
    [v35 setDestination:v38 configurationBlock:v44];

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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v20 = a3;
  v6 = a4;
  v7 = [(_MCDNowPlayingContentManager *)self requestController];
  v8 = [v7 response];
  v9 = [v8 tracklist];

  v19 = v9;
  v10 = [v9 changeItemCommand];
  v11 = [(_MCDNowPlayingContentManager *)self requestController];
  v12 = [v11 response];
  v13 = [v12 tracklist];
  v14 = [v13 items];
  v15 = [(MCDPlayableContentPlaybackManager *)self _adjustedIndexPathForPlaybackQueue:v6];
  v16 = [v14 itemAtIndexPath:v15];
  v17 = [v10 changeToItem:v16];

  objc_initWeak(&location, self);
  v18 = MEMORY[0x277D278C0];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __71__MCDPlayableContentPlaybackManager_tableView_didSelectRowAtIndexPath___block_invoke;
  v21[3] = &unk_279924240;
  objc_copyWeak(&v22, &location);
  [v18 performRequest:v17 completion:v21];
  [v20 deselectRowAtIndexPath:v6 animated:1];
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
  v2 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  v3 = [v2 seekCommand];
  v4 = [v3 preferredForwardJumpIntervals];
  v5 = [v4 firstObject];
  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (double)_jumpBackwardInterval
{
  v2 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  v3 = [v2 seekCommand];
  v4 = [v3 preferredBackwardJumpIntervals];
  v5 = [v4 firstObject];
  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (BOOL)nowPlayingViewController:(id)a3 shouldDisplayButton:(int64_t)a4 withImage:(id *)a5 existingIdentifier:(id)a6 tinted:(BOOL *)a7
{
  v12 = a3;
  v13 = a6;
  if (a4 == 2)
  {
    v23 = [(_MCDNowPlayingContentManager *)self requestController];
    v24 = [v23 response];
    v25 = [v24 stop];
    if (v25)
    {
      v26 = v25;
      v27 = [(_MCDNowPlayingContentManager *)self requestController];
      v28 = [v27 response];
      v29 = [v28 pause];

      if (!v29)
      {
        v30 = [v12 transportControlView];
        v31 = v30;
        v32 = @"square.fill";
        goto LABEL_16;
      }
    }

    else
    {
    }

    v33 = [(_MCDNowPlayingContentManager *)self nowPlayingViewControllerIsPlaying:v12];
    v30 = [v12 transportControlView];
    v31 = v30;
    if (!v33)
    {
      [v30 setPlayButtonImageName:@"play.fill"];
      goto LABEL_20;
    }

    v32 = @"pause.fill";
LABEL_16:
    [v30 setPauseButtonImageName:v32];
LABEL_20:

    goto LABEL_21;
  }

  if (a4 == 1)
  {
    [(MCDPlayableContentPlaybackManager *)self _jumpForwardInterval];
    if (v22 == 0.0)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  if (a4)
  {
    goto LABEL_21;
  }

  [(MCDPlayableContentPlaybackManager *)self _jumpBackwardInterval];
  if (v14 != 0.0)
  {
LABEL_9:
    *a5 = [(MCDPlayableContentPlaybackManager *)self _skipIntervalButtonImageForInterval:22 size:?];
    goto LABEL_21;
  }

  v15 = [(_MCDNowPlayingContentManager *)self requestController];
  v16 = [v15 response];
  v17 = [v16 tracklist];
  v18 = [v17 changeItemCommand];
  v19 = [v18 previousItem];

  if (!v19)
  {
    v20 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
    v21 = [v20 likeCommand];
    if (v21)
    {

LABEL_19:
      *a5 = [MCDGlyph imageNamed:@"line.horizontal.3.decrease.circle" ofSize:22.0];
      v31 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
      v36 = [v31 likeCommand];
      *a7 = [v36 value];

      goto LABEL_20;
    }

    v34 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
    v35 = [v34 dislikeCommand];

    if (v35)
    {
      goto LABEL_19;
    }
  }

LABEL_21:

  return 1;
}

- (id)_skipIntervalButtonImageForInterval:(double)a3 size:(int64_t)a4
{
  if (_skipIntervalButtonImageForInterval_size__onceToken != -1)
  {
    [MCDPlayableContentPlaybackManager _skipIntervalButtonImageForInterval:size:];
  }

  v6 = @"gobackward";
  if (a3 > 0.0)
  {
    v6 = @"goforward";
  }

  v7 = v6;
  v8 = _skipIntervalButtonImageForInterval_size____knownIntervals;
  v9 = fabs(a3);
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  LODWORD(v8) = [v8 containsObject:v10];

  if (v8)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
    v13 = [v11 stringWithFormat:@"%@.%@", v7, v12];

    v7 = v13;
  }

  v14 = [MCDGlyph imageNamed:v7 ofSize:a4];

  return v14;
}

void __78__MCDPlayableContentPlaybackManager__skipIntervalButtonImageForInterval_size___block_invoke()
{
  v0 = _skipIntervalButtonImageForInterval_size____knownIntervals;
  _skipIntervalButtonImageForInterval_size____knownIntervals = &unk_286C30EC0;
}

- (BOOL)nowPlayingViewController:(id)a3 buttonShouldBeActive:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    [(MCDPlayableContentPlaybackManager *)self _jumpForwardInterval];
    if (v16 == 0.0)
    {
      v13 = [(_MCDNowPlayingContentManager *)self requestController];
      v14 = [v13 response];
      v17 = [v14 tracklist];
      v18 = [v17 changeItemCommand];
      v19 = [v18 nextItem];

LABEL_9:
      v15 = v19 != 0;

      goto LABEL_10;
    }

LABEL_11:
    v15 = 1;
    goto LABEL_12;
  }

  if (a4)
  {
    goto LABEL_11;
  }

  [(MCDPlayableContentPlaybackManager *)self _jumpBackwardInterval];
  if (v7 != 0.0)
  {
    goto LABEL_11;
  }

  v8 = [(_MCDNowPlayingContentManager *)self requestController];
  v9 = [v8 response];
  v10 = [v9 tracklist];
  v11 = [v10 changeItemCommand];
  v12 = [v11 previousItem];

  if (v12)
  {
    goto LABEL_11;
  }

  v13 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  v14 = [v13 likeCommand];
  if (!v14)
  {
    v17 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
    v18 = [v17 dislikeCommand];
    v19 = v18;
    goto LABEL_9;
  }

  v15 = 1;
LABEL_10:

LABEL_12:
  return v15;
}

- (void)nowPlayingViewController:(id)a3 didSendAction:(int64_t)a4 state:(int64_t)a5
{
  v8 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  v9 = [v8 seekCommand];

  if (a4 == 2)
  {
    v18 = [(_MCDNowPlayingContentManager *)self requestController];
    v19 = [v18 response];
    v20 = [v19 stop];

    v21 = [(_MCDNowPlayingContentManager *)self requestController];
    v22 = [v21 response];
    v23 = [v22 pause];

    v24 = MCDGeneralLogging();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (v20 && !v23)
    {
      if (v25)
      {
        *v52 = 0;
        _os_log_impl(&dword_25AD8E000, v24, OS_LOG_TYPE_DEFAULT, "Sending stop command", v52, 2u);
      }

      v26 = v20;
      goto LABEL_45;
    }

    if (v23)
    {
      if (v25)
      {
        *v52 = 0;
        _os_log_impl(&dword_25AD8E000, v24, OS_LOG_TYPE_DEFAULT, "Sending pause command", v52, 2u);
      }

      v26 = v23;
      goto LABEL_45;
    }

    if (v25)
    {
      *v52 = 0;
      _os_log_impl(&dword_25AD8E000, v24, OS_LOG_TYPE_DEFAULT, "Sending play command", v52, 2u);
    }

    v43 = [(_MCDNowPlayingContentManager *)self requestController];
    v44 = [v43 response];
    v45 = [v44 play];
LABEL_56:
    v17 = v45;

LABEL_57:
    goto LABEL_58;
  }

  if (a4 != 1)
  {
    if (a4)
    {
      goto LABEL_17;
    }

    v10 = [(MCDPlayableContentPlaybackManager *)self isSeeking];
    if (a5 == 1)
    {
      if (v9)
      {
        v11 = v10;
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

        v13 = v9;
        v14 = -1;
LABEL_39:
        v17 = [v13 beginSeekWithDirection:v14];
        v29 = self;
        v30 = 1;
        goto LABEL_40;
      }

      goto LABEL_17;
    }

    if (v10)
    {
      v17 = [v9 endSeek];
      v28 = MCDGeneralLogging();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *v52 = 0;
        _os_log_impl(&dword_25AD8E000, v28, OS_LOG_TYPE_DEFAULT, "Sending end reverse seek command", v52, 2u);
      }

LABEL_35:
      v29 = self;
      v30 = 0;
LABEL_40:
      [(MCDPlayableContentPlaybackManager *)v29 setSeeking:v30];
      goto LABEL_60;
    }

    [(MCDPlayableContentPlaybackManager *)self _jumpBackwardInterval];
    v37 = v36;
    v38 = [(_MCDNowPlayingContentManager *)self requestController];
    v39 = [v38 response];
    v40 = [v39 tracklist];
    v41 = [v40 changeItemCommand];
    v20 = [v41 previousItem];

    if (v37 != 0.0)
    {
      v42 = MCDGeneralLogging();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *v52 = 0;
        _os_log_impl(&dword_25AD8E000, v42, OS_LOG_TYPE_DEFAULT, "Sending skip backwards command", v52, 2u);
      }

      v23 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
      v43 = [v23 seekCommand];
      v17 = [v43 jumpByInterval:v37];
      goto LABEL_57;
    }

    if (v20)
    {
      v46 = MCDGeneralLogging();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *v52 = 0;
        _os_log_impl(&dword_25AD8E000, v46, OS_LOG_TYPE_DEFAULT, "Sending previous item command", v52, 2u);
      }

      v17 = v20;
      goto LABEL_59;
    }

    v47 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
    v48 = [v47 likeCommand];
    if (v48)
    {
    }

    else
    {
      v49 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
      v50 = [v49 dislikeCommand];

      if (!v50)
      {
LABEL_71:
        v17 = 0;
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

  v15 = [(MCDPlayableContentPlaybackManager *)self isSeeking];
  if (a5 != 1)
  {
    if (v15)
    {
      v27 = MCDGeneralLogging();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *v52 = 0;
        _os_log_impl(&dword_25AD8E000, v27, OS_LOG_TYPE_DEFAULT, "Sending end forward seek command", v52, 2u);
      }

      v17 = [v9 endSeek];
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

      v20 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
      v23 = [v20 seekCommand];
      v26 = [v23 jumpByInterval:v33];
LABEL_45:
      v17 = v26;
LABEL_58:

LABEL_59:
      goto LABEL_60;
    }

    if (v35)
    {
      *v52 = 0;
      _os_log_impl(&dword_25AD8E000, v34, OS_LOG_TYPE_DEFAULT, "Sending forward item command", v52, 2u);
    }

    v20 = [(_MCDNowPlayingContentManager *)self requestController];
    v23 = [v20 response];
    v43 = [v23 tracklist];
    v44 = [v43 changeItemCommand];
    v45 = [v44 nextItem];
    goto LABEL_56;
  }

  if (v9)
  {
    v16 = v15;
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

    v13 = v9;
    v14 = 1;
    goto LABEL_39;
  }

LABEL_17:
  v17 = 0;
LABEL_60:
  [(_MCDNowPlayingContentManager *)self _performChangeRequest:v17];
}

- (void)_handleHamburgerActionSheet
{
  v20 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
  [v20 setOverrideUserInterfaceStyle:2];
  v3 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  v4 = [v3 likeCommand];

  if (v4)
  {
    v5 = MCDCarDisplayBundle();
    v6 = [v5 localizedStringForKey:@"LIKE_TRACK_DEFAULT_TITLE" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
    v7 = [(MCDPlayableContentPlaybackManager *)self _alertActionForFeedbackCommand:v4 fallbackTitle:v6];
    [v20 addAction:v7];
  }

  v8 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  v9 = [v8 dislikeCommand];

  if (v9)
  {
    v10 = MCDCarDisplayBundle();
    v11 = [v10 localizedStringForKey:@"DISLIKE_TRACK_DEFAULT_TITLE" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
    v12 = [(MCDPlayableContentPlaybackManager *)self _alertActionForFeedbackCommand:v9 fallbackTitle:v11];
    [v20 addAction:v12];
  }

  v13 = MEMORY[0x277D750F8];
  v14 = MCDCarDisplayBundle();
  v15 = [v14 localizedStringForKey:@"CANCEL" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
  v16 = [v13 actionWithTitle:v15 style:1 handler:0];
  [v20 addAction:v16];

  v17 = [(_MCDNowPlayingContentManager *)self delegate];
  LOBYTE(v14) = objc_opt_respondsToSelector();

  if (v14)
  {
    [(_MCDNowPlayingContentManager *)self setAlertController:v20];
    v18 = [(_MCDNowPlayingContentManager *)self delegate];
    v19 = [(_MCDNowPlayingContentManager *)self alertController];
    [v18 contentManager:self presentViewController:v19];
  }
}

- (id)_alertActionForFeedbackCommand:(id)a3 fallbackTitle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 localizedShortTitle];
  if (!v8)
  {
    v8 = [v6 localizedTitle];
    if (!v8)
    {
      v8 = v7;
    }
  }

  v9 = v8;
  v10 = MEMORY[0x277D750F8];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __82__MCDPlayableContentPlaybackManager__alertActionForFeedbackCommand_fallbackTitle___block_invoke;
  v17 = &unk_279924268;
  v18 = self;
  v19 = v6;
  v11 = v6;
  v12 = [v10 actionWithTitle:v9 style:0 handler:&v14];
  [v12 _setChecked:{objc_msgSend(v11, "value", v14, v15, v16, v17, v18)}];

  return v12;
}

void __82__MCDPlayableContentPlaybackManager__alertActionForFeedbackCommand_fallbackTitle___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) changeValue:{objc_msgSend(*(a1 + 40), "value") ^ 1}];
  [v1 _performChangeRequest:v2];
}

- (BOOL)nowPlayingViewControllerCanShowAddToLibrary:(id)a3
{
  v3 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  v4 = [v3 wishlistCommand];
  v5 = v4 != 0;

  return v5;
}

- (void)nowPlayingViewControllerAddToLibrary:(id)a3
{
  v4 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  v6 = [v4 wishlistCommand];

  if (v6)
  {
    v5 = [v6 changeValue:{objc_msgSend(v6, "value") ^ 1}];
    [(_MCDNowPlayingContentManager *)self _performChangeRequest:v5];
  }
}

- (BOOL)nowPlayingViewControllerCanShowMore:(id)a3
{
  v4 = [(_MCDNowPlayingContentManager *)self requestController];
  v5 = [v4 response];
  v6 = [v5 tracklist];
  v7 = [v6 changeItemCommand];
  v8 = [v7 previousItem];

  if (!v8)
  {
    return 0;
  }

  v9 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
  v10 = [v9 likeCommand];
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v12 = [(_MCDNowPlayingContentManager *)self nowPlayingItem];
    v13 = [v12 dislikeCommand];
    v11 = v13 != 0;
  }

  return v11;
}

- (void)nowPlayingViewControllerMore:(id)a3
{
  v4 = [(_MCDNowPlayingContentManager *)self requestController];
  v5 = [v4 response];
  v6 = [v5 tracklist];
  v7 = [v6 changeItemCommand];
  v8 = [v7 previousItem];

  if (v8)
  {

    [(MCDPlayableContentPlaybackManager *)self _handleHamburgerActionSheet];
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

@end
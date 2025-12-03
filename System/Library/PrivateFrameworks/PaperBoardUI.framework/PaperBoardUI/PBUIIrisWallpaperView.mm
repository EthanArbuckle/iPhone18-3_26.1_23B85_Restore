@interface PBUIIrisWallpaperView
- (BOOL)_setupContentViewForMode:(int64_t)mode;
- (PBUIIrisWallpaperPlayerDelegate)irisDelegate;
- (PBUIIrisWallpaperView)initWithFrame:(CGRect)frame configuration:(id)configuration variant:(int64_t)variant cacheGroup:(id)group delegate:(id)delegate options:(unint64_t)options;
- (id)videoPlayerForPlayerView:(id)view;
- (void)_populateContentView;
- (void)_resetPrewiredAVPlayer;
- (void)_setPlayerGestureRecognizer:(id)recognizer;
- (void)beginSimulatedTouchWithReason:(id)reason;
- (void)dealloc;
- (void)endSimulatedTouchWithReason:(id)reason;
- (void)playerViewIsInteractingDidChange:(id)change;
- (void)playerViewPlaybackStateDidChange:(id)change;
- (void)switchToIrisMode:(int64_t)mode;
@end

@implementation PBUIIrisWallpaperView

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_playerView);
  [WeakRetained setDelegate:0];

  v4.receiver = self;
  v4.super_class = PBUIIrisWallpaperView;
  [(PBUIWallpaperView *)&v4 dealloc];
}

- (void)switchToIrisMode:(int64_t)mode
{
  [(PBUIIrisWallpaperView *)self _setupContentViewForMode:?];
  self->_currentMode = mode;

  [(PBUIIrisWallpaperView *)self _populateContentView];
}

- (void)beginSimulatedTouchWithReason:(id)reason
{
  reasonCopy = reason;
  simulatedTouchReasons = self->_simulatedTouchReasons;
  v10 = reasonCopy;
  if (!simulatedTouchReasons)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = self->_simulatedTouchReasons;
    self->_simulatedTouchReasons = v6;

    reasonCopy = v10;
    simulatedTouchReasons = self->_simulatedTouchReasons;
  }

  [(NSMutableSet *)simulatedTouchReasons addObject:reasonCopy];
  WeakRetained = objc_loadWeakRetained(&self->_playerView);
  v9 = [(PBUIIrisWallpaperView *)self _playbackReasonForSimulatedTouchReason:v10];
  [WeakRetained startPlaybackWithReason:v9];
}

- (void)endSimulatedTouchWithReason:(id)reason
{
  simulatedTouchReasons = self->_simulatedTouchReasons;
  reasonCopy = reason;
  [(NSMutableSet *)simulatedTouchReasons removeObject:reasonCopy];
  WeakRetained = objc_loadWeakRetained(&self->_playerView);
  v6 = [(PBUIIrisWallpaperView *)self _playbackReasonForSimulatedTouchReason:reasonCopy];

  [WeakRetained stopPlaybackWithReason:v6];
}

- (void)_setPlayerGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if (self->_playerState == 2)
  {
    v8 = recognizerCopy;
    v6 = self->_playerGestureRecognizer;
    objc_storeStrong(&self->_playerGestureRecognizer, recognizer);
    if (v6 != self->_playerGestureRecognizer)
    {
      irisDelegate = [(PBUIIrisWallpaperView *)self irisDelegate];
      if (objc_opt_respondsToSelector())
      {
        [irisDelegate irisWallpaperPlayer:self didReplaceGestureRecognizer:v6 withGestureRecognizer:self->_playerGestureRecognizer];
      }
    }

    recognizerCopy = v8;
  }
}

- (void)_resetPrewiredAVPlayer
{
  prewiredAVPlayer = self->_prewiredAVPlayer;
  self->_prewiredAVPlayer = 0;

  serial = [MEMORY[0x277CF0C18] serial];
  v5 = [serial serviceClass:25];
  v9 = BSDispatchQueueCreate();

  v6 = [objc_alloc(getISAVPlayerClass()) initWithDispatchQueue:v9];
  v7 = self->_prewiredAVPlayer;
  self->_prewiredAVPlayer = v6;

  if (*MEMORY[0x277CBF3A8] != self->_prewiredSize.width || *(MEMORY[0x277CBF3A8] + 8) != self->_prewiredSize.height)
  {
    [(ISAVPlayer *)self->_prewiredAVPlayer setDimensionsOfReservedVideoMemory:?];
  }
}

- (BOOL)_setupContentViewForMode:(int64_t)mode
{
  v37 = *MEMORY[0x277D85DE8];
  if (self->_currentMode == mode)
  {
    contentView = [(PBUIWallpaperView *)self contentView];

    if (contentView)
    {
      return 0;
    }
  }

  [(PBUIIrisWallpaperView *)self _setPlayerGestureRecognizer:0];
  WeakRetained = objc_loadWeakRetained(&self->_playerView);
  [WeakRetained setDelegate:0];
  [WeakRetained removeFromSuperview];
  objc_storeWeak(&self->_playerView, 0);
  self->_playerState = 0;
  if (mode)
  {
    dispatchQueue = [(ISAVPlayer *)self->_prewiredAVPlayer dispatchQueue];
    v10 = dispatchQueue;
    if (!dispatchQueue)
    {
      v10 = MEMORY[0x277D85CD0];
      v11 = MEMORY[0x277D85CD0];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__PBUIIrisWallpaperView__setupContentViewForMode___block_invoke;
    block[3] = &unk_278361E18;
    block[4] = self;
    dispatch_sync(v10, block);
    if (!dispatchQueue)
    {
    }

    [(PBUIIrisWallpaperView *)self playerViewPlaybackStateDidChange:0];
    [(PBUIIrisWallpaperView *)self playerViewIsInteractingDidChange:0];
    [(PBUIStaticWallpaperView *)self _imageSize];
    v14 = [[PBUIStaticWallpaperImageView alloc] initWithFrame:0.0, 0.0, v12, v13];
    objc_storeWeak(&self->_imageView, v14);
    [(PBUIStaticWallpaperImageView *)v14 setContentMode:1];
    [(PBUIStaticWallpaperView *)self _setUpStaticImageContentView:v14];
    [(PBUIWallpaperView *)self setContentView:v14];
  }

  else
  {
    v15 = objc_loadWeakRetained(&self->_imageView);
    [v15 removeFromSuperview];

    objc_storeWeak(&self->_imageView, 0);
    [(PBUIStaticWallpaperView *)self _imageSize];
    v17 = v16;
    v19 = v18;
    prewiredAVPlayer = self->_prewiredAVPlayer;
    if (prewiredAVPlayer)
    {
      if ([(ISAVPlayer *)prewiredAVPlayer status]== 2)
      {
        error = [(ISAVPlayer *)self->_prewiredAVPlayer error];
        domain = [error domain];
        if ([domain isEqualToString:*MEMORY[0x277CE5DC0]])
        {
          code = [error code];

          if (code == -11819)
          {
            [(PBUIIrisWallpaperView *)self _resetPrewiredAVPlayer];
          }
        }

        else
        {
        }
      }
    }

    else
    {
      [(PBUIIrisWallpaperView *)self _resetPrewiredAVPlayer];
    }

    v24 = objc_loadWeakRetained(&self->_playerView);

    if (v24)
    {
      [(PBUIIrisWallpaperView *)a2 _setupContentViewForMode:?];
    }

    v25 = [PBUILivePhotoPlayerView playerViewWithRewindPlaybackStyle:self->_useRewindPlaybackStyle];
    objc_storeWeak(&self->_playerView, v25);
    [v25 setFrame:{0.0, 0.0, v17, v19}];
    [v25 setDelegate:self];
    [(PBUIIrisWallpaperView *)self playerViewPlaybackStateDidChange:v25];
    [(PBUIIrisWallpaperView *)self playerViewIsInteractingDidChange:v25];
    [(PBUIWallpaperView *)self setContentView:v25];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v26 = self->_simulatedTouchReasons;
    v27 = [(NSMutableSet *)v26 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v33;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v33 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [v25 startPlaybackWithReason:*(*(&v32 + 1) + 8 * i)];
        }

        v28 = [(NSMutableSet *)v26 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v28);
    }

    WeakRetained = v24;
  }

  return 1;
}

- (void)_populateContentView
{
  WeakRetained = objc_loadWeakRetained(&self->_playerView);
  currentMode = self->_currentMode;
  if (currentMode == 1)
  {
    v9 = objc_loadWeakRetained(&self->_imageView);
    if (!v9)
    {
      [PBUIIrisWallpaperView _populateContentView];
    }

    pbui_CGImageBackedImage = v9;
    _displayedImage = [(PBUIStaticWallpaperView *)self _displayedImage];
    [pbui_CGImageBackedImage setImage:_displayedImage];
    goto LABEL_8;
  }

  if (!currentMode)
  {
    if (!WeakRetained)
    {
      [PBUIIrisWallpaperView _populateContentView];
    }

    [WeakRetained setContentMode:1];
    if (!self->_playerState)
    {
      self->_playerState = 1;
      _displayedImage2 = [(PBUIStaticWallpaperView *)self _displayedImage];
      pbui_CGImageBackedImage = [_displayedImage2 pbui_CGImageBackedImage];

      cGImage = [pbui_CGImageBackedImage CGImage];
      v7 = [MEMORY[0x277CE63D8] assetWithURL:self->_videoFileURL];
      [WeakRetained prepareWithPhoto:cGImage videoAsset:v7 photoTime:objc_msgSend(pbui_CGImageBackedImage photoEXIFOrientation:{"pbui_EXIFOrientation"), self->_stillTimeInVideo}];

      self->_playerState = 2;
      _displayedImage = [WeakRetained gestureRecognizer];
      [(PBUIIrisWallpaperView *)self _setPlayerGestureRecognizer:_displayedImage];
LABEL_8:
    }
  }

  [(PBUIWallpaperView *)self _updateContentViewScale];
  [(PBUIIrisWallpaperView *)self setNeedsLayout];
}

- (void)playerViewPlaybackStateDidChange:(id)change
{
  v15 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  WeakRetained = objc_loadWeakRetained(&self->_playerView);

  if (WeakRetained == changeCopy)
  {
    v6 = PBUIIrisWallpaperPlaybackStateForISPlaybackState([changeCopy playbackState]);
    v7 = PBUILogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PBUIIrisWallpaperPlaybackStateDescription(self->_playbackState);
      v9 = PBUIIrisWallpaperPlaybackStateDescription(v6);
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_21E67D000, v7, OS_LOG_TYPE_DEFAULT, "Iris wallpaper playback state changed. Current State: %@, New State: %@", &v11, 0x16u);
    }

    if (v6 != -1 && v6 != self->_playbackState)
    {
      self->_playbackState = v6;
      irisDelegate = [(PBUIIrisWallpaperView *)self irisDelegate];
      if (objc_opt_respondsToSelector())
      {
        [irisDelegate irisWallpaperPlayerPlaybackStateDidChange:self];
      }
    }
  }
}

- (void)playerViewIsInteractingDidChange:(id)change
{
  changeCopy = change;
  WeakRetained = objc_loadWeakRetained(&self->_playerView);

  v6 = WeakRetained;
  if (WeakRetained == changeCopy)
  {
    isInteracting = [WeakRetained isInteracting];
    v6 = WeakRetained;
    if (self->_isInteracting != isInteracting)
    {
      self->_isInteracting = isInteracting;
      irisDelegate = [(PBUIIrisWallpaperView *)self irisDelegate];
      if (objc_opt_respondsToSelector())
      {
        [irisDelegate irisWallpaperPlayerIsInteractingDidChange:self];
      }

      v6 = WeakRetained;
    }
  }

  MEMORY[0x2821F96F8](isInteracting, v6);
}

- (id)videoPlayerForPlayerView:(id)view
{
  [(PBUIIrisWallpaperView *)self _resetPrewiredAVPlayer];
  prewiredAVPlayer = self->_prewiredAVPlayer;

  return prewiredAVPlayer;
}

- (PBUIIrisWallpaperView)initWithFrame:(CGRect)frame configuration:(id)configuration variant:(int64_t)variant cacheGroup:(id)group delegate:(id)delegate options:(unint64_t)options
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  configurationCopy = configuration;
  groupCopy = group;
  delegateCopy = delegate;
  videoURL = [configurationCopy videoURL];
  if ((options & 8) != 0)
  {
    v21 = [MEMORY[0x277CE63D8] assetWithURL:videoURL];
    v22 = [v21 tracksWithMediaType:*MEMORY[0x277CE5EA8]];
    [v22 firstObject];
    v23 = groupCopy;
    v25 = v24 = videoURL;
    [v25 naturalSize];
    self->_prewiredSize.width = v26;
    self->_prewiredSize.height = v27;

    videoURL = v24;
    groupCopy = v23;
  }

  self->_useRewindPlaybackStyle = (options & 0x10) != 0;
  v36.receiver = self;
  v36.super_class = PBUIIrisWallpaperView;
  height = [(PBUIStaticWallpaperView *)&v36 initWithFrame:configurationCopy configuration:variant variant:groupCopy cacheGroup:delegateCopy delegate:options | ((options & 0x10) >> 2) options:x, y, width, height];
  if (height)
  {
    v29 = (options & 0x10) >> 4;
    videoURL2 = [configurationCopy videoURL];
    v31 = [videoURL2 copy];
    videoFileURL = height->_videoFileURL;
    height->_videoFileURL = v31;

    wallpaperOptions = [configurationCopy wallpaperOptions];
    [wallpaperOptions stillTimeInVideo];
    height->_stillTimeInVideo = v34;

    height->_useRewindPlaybackStyle = v29;
    [(PBUIIrisWallpaperView *)height _populateContentView];
  }

  return height;
}

- (PBUIIrisWallpaperPlayerDelegate)irisDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_irisDelegate);

  return WeakRetained;
}

- (void)_setupContentViewForMode:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PBUIIrisWallpaperView.m" lineNumber:177 description:@"about to stomp on a previous playerView"];
}

@end
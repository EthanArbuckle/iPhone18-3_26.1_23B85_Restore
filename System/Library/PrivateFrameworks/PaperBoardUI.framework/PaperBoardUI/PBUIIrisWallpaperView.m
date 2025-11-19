@interface PBUIIrisWallpaperView
- (BOOL)_setupContentViewForMode:(int64_t)a3;
- (PBUIIrisWallpaperPlayerDelegate)irisDelegate;
- (PBUIIrisWallpaperView)initWithFrame:(CGRect)a3 configuration:(id)a4 variant:(int64_t)a5 cacheGroup:(id)a6 delegate:(id)a7 options:(unint64_t)a8;
- (id)videoPlayerForPlayerView:(id)a3;
- (void)_populateContentView;
- (void)_resetPrewiredAVPlayer;
- (void)_setPlayerGestureRecognizer:(id)a3;
- (void)beginSimulatedTouchWithReason:(id)a3;
- (void)dealloc;
- (void)endSimulatedTouchWithReason:(id)a3;
- (void)playerViewIsInteractingDidChange:(id)a3;
- (void)playerViewPlaybackStateDidChange:(id)a3;
- (void)switchToIrisMode:(int64_t)a3;
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

- (void)switchToIrisMode:(int64_t)a3
{
  [(PBUIIrisWallpaperView *)self _setupContentViewForMode:?];
  self->_currentMode = a3;

  [(PBUIIrisWallpaperView *)self _populateContentView];
}

- (void)beginSimulatedTouchWithReason:(id)a3
{
  v4 = a3;
  simulatedTouchReasons = self->_simulatedTouchReasons;
  v10 = v4;
  if (!simulatedTouchReasons)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = self->_simulatedTouchReasons;
    self->_simulatedTouchReasons = v6;

    v4 = v10;
    simulatedTouchReasons = self->_simulatedTouchReasons;
  }

  [(NSMutableSet *)simulatedTouchReasons addObject:v4];
  WeakRetained = objc_loadWeakRetained(&self->_playerView);
  v9 = [(PBUIIrisWallpaperView *)self _playbackReasonForSimulatedTouchReason:v10];
  [WeakRetained startPlaybackWithReason:v9];
}

- (void)endSimulatedTouchWithReason:(id)a3
{
  simulatedTouchReasons = self->_simulatedTouchReasons;
  v5 = a3;
  [(NSMutableSet *)simulatedTouchReasons removeObject:v5];
  WeakRetained = objc_loadWeakRetained(&self->_playerView);
  v6 = [(PBUIIrisWallpaperView *)self _playbackReasonForSimulatedTouchReason:v5];

  [WeakRetained stopPlaybackWithReason:v6];
}

- (void)_setPlayerGestureRecognizer:(id)a3
{
  v5 = a3;
  if (self->_playerState == 2)
  {
    v8 = v5;
    v6 = self->_playerGestureRecognizer;
    objc_storeStrong(&self->_playerGestureRecognizer, a3);
    if (v6 != self->_playerGestureRecognizer)
    {
      v7 = [(PBUIIrisWallpaperView *)self irisDelegate];
      if (objc_opt_respondsToSelector())
      {
        [v7 irisWallpaperPlayer:self didReplaceGestureRecognizer:v6 withGestureRecognizer:self->_playerGestureRecognizer];
      }
    }

    v5 = v8;
  }
}

- (void)_resetPrewiredAVPlayer
{
  prewiredAVPlayer = self->_prewiredAVPlayer;
  self->_prewiredAVPlayer = 0;

  v4 = [MEMORY[0x277CF0C18] serial];
  v5 = [v4 serviceClass:25];
  v9 = BSDispatchQueueCreate();

  v6 = [objc_alloc(getISAVPlayerClass()) initWithDispatchQueue:v9];
  v7 = self->_prewiredAVPlayer;
  self->_prewiredAVPlayer = v6;

  if (*MEMORY[0x277CBF3A8] != self->_prewiredSize.width || *(MEMORY[0x277CBF3A8] + 8) != self->_prewiredSize.height)
  {
    [(ISAVPlayer *)self->_prewiredAVPlayer setDimensionsOfReservedVideoMemory:?];
  }
}

- (BOOL)_setupContentViewForMode:(int64_t)a3
{
  v37 = *MEMORY[0x277D85DE8];
  if (self->_currentMode == a3)
  {
    v6 = [(PBUIWallpaperView *)self contentView];

    if (v6)
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
  if (a3)
  {
    v9 = [(ISAVPlayer *)self->_prewiredAVPlayer dispatchQueue];
    v10 = v9;
    if (!v9)
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
    if (!v9)
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
        v21 = [(ISAVPlayer *)self->_prewiredAVPlayer error];
        v22 = [v21 domain];
        if ([v22 isEqualToString:*MEMORY[0x277CE5DC0]])
        {
          v23 = [v21 code];

          if (v23 == -11819)
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

    v5 = v9;
    v8 = [(PBUIStaticWallpaperView *)self _displayedImage];
    [v5 setImage:v8];
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
      v4 = [(PBUIStaticWallpaperView *)self _displayedImage];
      v5 = [v4 pbui_CGImageBackedImage];

      v6 = [v5 CGImage];
      v7 = [MEMORY[0x277CE63D8] assetWithURL:self->_videoFileURL];
      [WeakRetained prepareWithPhoto:v6 videoAsset:v7 photoTime:objc_msgSend(v5 photoEXIFOrientation:{"pbui_EXIFOrientation"), self->_stillTimeInVideo}];

      self->_playerState = 2;
      v8 = [WeakRetained gestureRecognizer];
      [(PBUIIrisWallpaperView *)self _setPlayerGestureRecognizer:v8];
LABEL_8:
    }
  }

  [(PBUIWallpaperView *)self _updateContentViewScale];
  [(PBUIIrisWallpaperView *)self setNeedsLayout];
}

- (void)playerViewPlaybackStateDidChange:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_playerView);

  if (WeakRetained == v4)
  {
    v6 = PBUIIrisWallpaperPlaybackStateForISPlaybackState([v4 playbackState]);
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
      v10 = [(PBUIIrisWallpaperView *)self irisDelegate];
      if (objc_opt_respondsToSelector())
      {
        [v10 irisWallpaperPlayerPlaybackStateDidChange:self];
      }
    }
  }
}

- (void)playerViewIsInteractingDidChange:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_playerView);

  v6 = WeakRetained;
  if (WeakRetained == v4)
  {
    v5 = [WeakRetained isInteracting];
    v6 = WeakRetained;
    if (self->_isInteracting != v5)
    {
      self->_isInteracting = v5;
      v7 = [(PBUIIrisWallpaperView *)self irisDelegate];
      if (objc_opt_respondsToSelector())
      {
        [v7 irisWallpaperPlayerIsInteractingDidChange:self];
      }

      v6 = WeakRetained;
    }
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (id)videoPlayerForPlayerView:(id)a3
{
  [(PBUIIrisWallpaperView *)self _resetPrewiredAVPlayer];
  prewiredAVPlayer = self->_prewiredAVPlayer;

  return prewiredAVPlayer;
}

- (PBUIIrisWallpaperView)initWithFrame:(CGRect)a3 configuration:(id)a4 variant:(int64_t)a5 cacheGroup:(id)a6 delegate:(id)a7 options:(unint64_t)a8
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17 = a4;
  v18 = a6;
  v19 = a7;
  v20 = [v17 videoURL];
  if ((a8 & 8) != 0)
  {
    v21 = [MEMORY[0x277CE63D8] assetWithURL:v20];
    v22 = [v21 tracksWithMediaType:*MEMORY[0x277CE5EA8]];
    [v22 firstObject];
    v23 = v18;
    v25 = v24 = v20;
    [v25 naturalSize];
    self->_prewiredSize.width = v26;
    self->_prewiredSize.height = v27;

    v20 = v24;
    v18 = v23;
  }

  self->_useRewindPlaybackStyle = (a8 & 0x10) != 0;
  v36.receiver = self;
  v36.super_class = PBUIIrisWallpaperView;
  v28 = [(PBUIStaticWallpaperView *)&v36 initWithFrame:v17 configuration:a5 variant:v18 cacheGroup:v19 delegate:a8 | ((a8 & 0x10) >> 2) options:x, y, width, height];
  if (v28)
  {
    v29 = (a8 & 0x10) >> 4;
    v30 = [v17 videoURL];
    v31 = [v30 copy];
    videoFileURL = v28->_videoFileURL;
    v28->_videoFileURL = v31;

    v33 = [v17 wallpaperOptions];
    [v33 stillTimeInVideo];
    v28->_stillTimeInVideo = v34;

    v28->_useRewindPlaybackStyle = v29;
    [(PBUIIrisWallpaperView *)v28 _populateContentView];
  }

  return v28;
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
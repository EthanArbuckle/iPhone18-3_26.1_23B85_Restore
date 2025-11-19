@interface JFXCompositionPlayerViewController
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentCMTime;
- ($F24F406B2B787EFB06265DBA3D28CBD5)normalizedMinimumTouchSize;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)isMuted;
- (BOOL)isPlaying;
- (BOOL)isReloadClipDataSourceNeeded;
- (CGPoint)convertPointInPlaybackSizeToClipPoint:(CGPoint)a3;
- (CGPoint)convertPointInPlaybackSizeToClipPointNormalized:(CGPoint)a3;
- (CGRect)videoDisplayBounds;
- (CGSize)cachedRenderSizeInPixels;
- (CGSize)lastPlayerViewBoundsSize;
- (CGSize)lastPlayerViewSize;
- (CGSize)playerViewBoundsSize;
- (CGSize)renderSizeInPixels;
- (JFXCompositionPlayableElementsDataSource)clipsDataSource;
- (JFXCompositionPlayerViewController)init;
- (JFXCompositionPlayerViewController)initWithCoder:(id)a3;
- (JFXCompositionPlayerViewControllerDelegate)delegate;
- (UIView)viewFlashed;
- (id)contentModeToVideoGravity:(int64_t)a3;
- (id)placeholderContainerView;
- (id)playerContainerView;
- (id)playerViewer;
- (id)viewToFlash;
- (int)currentTime;
- (int)duration;
- (int)frameRate;
- (void)addPlaceHolder;
- (void)appDidBecomeActive:(id)a3;
- (void)appDidEnterBackground:(id)a3;
- (void)appWillResignActive:(id)a3;
- (void)beginFlash;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)dispatchBlockWhenDone:(id)a3;
- (void)displayPlaceHolder;
- (void)endFlash;
- (void)installVideoDisplayGestures;
- (void)mediaserverdCrashed;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pauseWithCompletionBlock:(id)a3;
- (void)playWithCompletionHandler:(id)a3;
- (void)playbackAreaDoubleTapped:(id)a3;
- (void)playbackAreaPanned:(id)a3;
- (void)playbackAreaPinched:(id)a3;
- (void)playbackAreaRotated:(id)a3;
- (void)playbackAreaTapped:(id)a3;
- (void)playbackDidStart:(id)a3;
- (void)playbackDidStop:(id)a3 currentTime:(int)a4;
- (void)playbackReadyForDisplayChanged:(id)a3 isReady:(BOOL)a4 setPlaceHolder:(BOOL)a5;
- (void)playbackTimeDidChange:(id)a3 currentTime:(int)a4;
- (void)playerBecameReadyForDisplayChanged:(BOOL)a3 setPlaceHolder:(BOOL)a4;
- (void)playerWillBeDestroyed:(id)a3;
- (void)preparePlaceHolder;
- (void)prepareVideoDisplayView;
- (void)reloadClipDataSource;
- (void)reloadClipDataSourceIfNeeded;
- (void)reloadClipDataSourceOnBecomingActive;
- (void)removePlaceHolder;
- (void)resetPlaybackTimeChangedObserverInterval;
- (void)seekToTime:(int)a3;
- (void)setClipsDataSource:(id)a3;
- (void)setDisableVideoDisplayGestures:(BOOL)a3;
- (void)setMuted:(BOOL)a3;
- (void)setNeedsCompositionUpdate;
- (void)setNeedsCompositionUpdateForClip:(id)a3;
- (void)setPlaybackTimeChangedObserverInterval:(id *)a3;
- (void)setVideoContentMode:(int64_t)a3;
- (void)unloadClipDataSourceSetPlaceHolder:(BOOL)a3;
- (void)unloadCompositionSetPlaceHolder:(BOOL)a3;
- (void)updateCachedPlaybackProperties;
- (void)updateDelegatePlayer;
- (void)updateVideoDisplayViewBounds;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation JFXCompositionPlayerViewController

- (JFXCompositionPlayerViewController)init
{
  v5.receiver = self;
  v5.super_class = JFXCompositionPlayerViewController;
  v2 = [(JFXCompositionPlayerViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(JFXCompositionPlayerViewController *)v2 sharedInit];
  }

  return v3;
}

- (JFXCompositionPlayerViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = JFXCompositionPlayerViewController;
  v3 = [(JFXCompositionPlayerViewController *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(JFXCompositionPlayerViewController *)v3 sharedInit];
  }

  return v4;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = JFXCompositionPlayerViewController;
  [(JFXCompositionPlayerViewController *)&v10 viewDidLoad];
  v3 = [(JFXCompositionPlayerViewController *)self playerContainerView];
  [v3 setAlpha:0.0];

  v4 = [(JFXCompositionPlayerViewController *)self contentModeToVideoGravity:[(JFXCompositionPlayerViewController *)self videoContentMode]];
  v5 = [(JFXCompositionPlayerViewController *)self playerViewer];
  [v5 setVideoGravity:v4];

  v6 = [(JFXCompositionPlayerViewController *)self playerViewer];
  [v6 setShowAVControls:0];

  *&self->_playbackTimeChangedObserverInterval.value = kDefaultPlaybackTimeObserverInterval;
  self->_playbackTimeChangedObserverInterval.epoch = 0;
  [(JFXCompositionPlayerViewController *)self setRestoreToColor:0];
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:self selector:sel_appDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 addObserver:self selector:sel_appWillResignActive_ name:*MEMORY[0x277D76768] object:0];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 addObserver:self selector:sel_appDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = JFXCompositionPlayerViewController;
  [(JFXCompositionPlayerViewController *)&v4 dealloc];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = JFXCompositionPlayerViewController;
  [(JFXCompositionPlayerViewController *)&v5 viewDidAppear:a3];
  v4 = [(JFXCompositionPlayerViewController *)self playerViewer];
  [v4 addObserver:self forKeyPath:@"videoBounds" options:1 context:0];

  [(JFXCompositionPlayerViewController *)self updateDelegatePlayer];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = JFXCompositionPlayerViewController;
  [(JFXCompositionPlayerViewController *)&v5 viewDidDisappear:a3];
  v4 = [(JFXCompositionPlayerViewController *)self playerViewer];
  [v4 removeObserver:self forKeyPath:@"videoBounds"];
}

- (void)viewDidLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = JFXCompositionPlayerViewController;
  [(JFXCompositionPlayerViewController *)&v12 viewDidLayoutSubviews];
  v3 = [(JFXCompositionPlayerViewController *)self playerViewer];
  [v3 displaySize];
  v5 = v4;
  v7 = v6;

  [(JFXCompositionPlayerViewController *)self lastPlayerViewSize];
  if (v5 != v9 || v7 != v8)
  {
    [(JFXCompositionPlayerViewController *)self setLastPlayerViewSize:v5, v7];
    v11 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
    [v11 notifyPlayerViewSizeChanged];
  }
}

- (void)appDidBecomeActive:(id)a3
{
  v4 = [(JFXCompositionPlayerViewController *)self viewIfLoaded];
  v5 = [v4 window];

  if (v5)
  {

    [(JFXCompositionPlayerViewController *)self reloadClipDataSourceOnBecomingActive];
  }
}

- (void)appDidEnterBackground:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = JFXLog_DebugPlayback();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(JFXCompositionPlayerViewController *)self displayName];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_242A3B000, v4, OS_LOG_TYPE_DEFAULT, "player %{public}@ entered background. will clear composition", &v6, 0xCu);
  }

  [(JFXCompositionPlayerViewController *)self unloadCompositionSetPlaceHolder:0];
}

- (void)appWillResignActive:(id)a3
{
  v4 = JFXLog_playback();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(JFXCompositionPlayerViewController *)self appWillResignActive:v4];
  }

  [(JFXCompositionPlayerViewController *)self pause];
  [(JFXCompositionPlayerViewController *)self preparePlaceHolder];
}

- (void)didReceiveMemoryWarning
{
  v13 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = JFXCompositionPlayerViewController;
  [(JFXCompositionPlayerViewController *)&v10 didReceiveMemoryWarning];
  v3 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  v4 = [v3 isPlaying];

  if ((v4 & 1) == 0)
  {
    v5 = JFXLog_playback();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(JFXCompositionPlayerViewController *)self displayName];
      *buf = 138543362;
      v12 = v6;
      _os_log_impl(&dword_242A3B000, v5, OS_LOG_TYPE_DEFAULT, "player %{public}@ didReceiveMemoryWarning and not playing. will clear composition", buf, 0xCu);
    }

    v7 = JFXPlaybackEventSignpostPointCategory();
    v8 = v7;
    v9 = JFXSignpostExclusiveID;
    if ((JFXSignpostExclusiveID - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_242A3B000, v8, OS_SIGNPOST_EVENT, v9, "MemoryWarning", &unk_242B66C87, buf, 2u);
    }

    [(JFXCompositionPlayerViewController *)self unloadCompositionSetPlaceHolder:1];
  }
}

- (void)updateCachedPlaybackProperties
{
  [(JFXCompositionPlayerViewController *)self setCachedDuration:[(JFXCompositionPlayerViewController *)self duration]];
  [(JFXCompositionPlayerViewController *)self setCachedCurrentTime:[(JFXCompositionPlayerViewController *)self currentTime]];
  [(JFXCompositionPlayerViewController *)self setCachedMuted:[(JFXCompositionPlayerViewController *)self isMuted]];
  [(JFXCompositionPlayerViewController *)self renderSizeInPixels];

  [(JFXCompositionPlayerViewController *)self setCachedRenderSizeInPixels:?];
}

- (void)unloadClipDataSourceSetPlaceHolder:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self name:@"mediaserverdCrashed" object:0];

  v6 = [(JFXCompositionPlayerViewController *)self placeHolderView];

  if (!v6)
  {
    [(JFXCompositionPlayerViewController *)self preparePlaceHolder];
  }

  v7 = [(JFXCompositionPlayerViewController *)self playerContainerView];
  [v7 setAlpha:0.0];

  v8 = [(JFXCompositionPlayerViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(JFXCompositionPlayerViewController *)self delegate];
    [v10 updateFromPlayer:0];
  }

  v11 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  [v11 teardownSetPlaceHolder:v3];

  [(JFXCompositionPlayerViewController *)self setClipsPlayer:0];
}

- (void)setClipsDataSource:(id)a3
{
  objc_storeWeak(&self->_clipsDataSource, a3);

  [(JFXCompositionPlayerViewController *)self reloadClipDataSource];
}

- (void)reloadClipDataSourceOnBecomingActive
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = JFXLog_DebugPlayback();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(JFXCompositionPlayerViewController *)self displayName];
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_242A3B000, v3, OS_LOG_TYPE_DEFAULT, "player %{public}@ reloaded clip data source on becomingActive", &v5, 0xCu);
  }

  [(JFXCompositionPlayerViewController *)self reloadClipDataSourceIfNeeded];
}

- (void)reloadClipDataSourceIfNeeded
{
  v7 = *MEMORY[0x277D85DE8];
  if ([(JFXCompositionPlayerViewController *)self isReloadClipDataSourceNeeded])
  {
    v3 = JFXLog_DebugPlayback();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(JFXCompositionPlayerViewController *)self displayName];
      v5 = 138543362;
      v6 = v4;
      _os_log_impl(&dword_242A3B000, v3, OS_LOG_TYPE_DEFAULT, "player %{public}@ reloaded clip data source when needed", &v5, 0xCu);
    }

    [(JFXCompositionPlayerViewController *)self reloadClipDataSource];
  }
}

- (BOOL)isReloadClipDataSourceNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_clipsDataSource);
  if (WeakRetained)
  {
    v4 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)reloadClipDataSource
{
  v34 = *MEMORY[0x277D85DE8];
  [(JFXCompositionPlayerViewController *)self preparePlaceHolder];
  v3 = [(JFXCompositionPlayerViewController *)self playerContainerView];
  [v3 setAlpha:0.0];

  v4 = [(JFXCompositionPlayerViewController *)self cachedCurrentTime];
  v5 = [(JFXCompositionPlayerViewController *)self cachedMuted];
  [(JFXCompositionPlayerViewController *)self setCachedCurrentTime:0];
  [(JFXCompositionPlayerViewController *)self setCachedMuted:0];
  [(JFXCompositionPlayerViewController *)self setCachedDuration:0];
  [(JFXCompositionPlayerViewController *)self setCachedRenderSizeInPixels:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  v6 = [(JFXCompositionPlayerViewController *)self clipsPlayer];

  if (v6)
  {
    v7 = JFXLog_DebugPlayback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(JFXCompositionPlayerViewController *)self displayName];
      *buf = 138543362;
      *&buf[4] = v8;
      _os_log_impl(&dword_242A3B000, v7, OS_LOG_TYPE_DEFAULT, "player %{public}@ reloading clip data source, tear down existing player", buf, 0xCu);
    }

    v9 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
    [v9 teardownSetPlaceHolder:1];
  }

  WeakRetained = objc_loadWeakRetained(&self->_clipsDataSource);

  if (WeakRetained)
  {
    v11 = objc_alloc([objc_opt_class() compositionPlayerClass]);
    v12 = objc_loadWeakRetained(&self->_clipsDataSource);
    v13 = [v11 initWithClipsDataSource:v12 seekPosition:v4 audioMuted:v5 != 0];
    [(JFXCompositionPlayerViewController *)self setClipsPlayer:v13];

    v14 = [(JFXCompositionPlayerViewController *)self displayName];
    v15 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
    [v15 setDisplayName:v14];

    v16 = [(JFXCompositionPlayerViewController *)self parentCode];
    v17 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
    [v17 setParentCode:v16];

    v18 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
    [v18 setPlaybackDelegate:self];

    [(JFXCompositionPlayerViewController *)self playbackTimeChangedObserverInterval];
    v19 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
    *buf = v30;
    v33 = v31;
    [v19 setPlaybackTimeChangedObserverInterval:buf];

    [(JFXCompositionPlayerViewController *)self beginFlash];
    objc_initWeak(buf, self);
    v20 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
    v21 = [(JFXCompositionPlayerViewController *)self playerViewer];
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __58__JFXCompositionPlayerViewController_reloadClipDataSource__block_invoke;
    v28 = &unk_278D7C648;
    objc_copyWeak(&v29, buf);
    [v20 setPlayerView:v21 completionBlock:&v25];

    v22 = [MEMORY[0x277CCAB98] defaultCenter];
    [v22 addObserver:self selector:sel_mediaserverdCrashed name:@"mediaserverdCrashed" object:0];

    [(JFXCompositionPlayerViewController *)self setNeedsCompositionUpdate];
    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }

  else
  {
    v23 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
    [v23 removeFromSuperview];

    [(JFXCompositionPlayerViewController *)self setVideoDisplayOverlayView:0];
    v24 = [MEMORY[0x277CCAB98] defaultCenter];
    [v24 removeObserver:self name:@"mediaserverdCrashed" object:0];

    [(JFXCompositionPlayerViewController *)self setClipsPlayer:0];
  }
}

void __58__JFXCompositionPlayerViewController_reloadClipDataSource__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateDelegatePlayer];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 endFlash];
}

- (void)setNeedsCompositionUpdate
{
  [(JFXCompositionPlayerViewController *)self preparePlaceHolder];
  [(JFXCompositionPlayerViewController *)self reloadClipDataSourceIfNeeded];
  v3 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  [v3 pause:0];

  [(JFXCompositionPlayerViewController *)self beginFlash];
  objc_initWeak(&location, self);
  v4 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__JFXCompositionPlayerViewController_setNeedsCompositionUpdate__block_invoke;
  v5[3] = &unk_278D7C648;
  objc_copyWeak(&v6, &location);
  [v4 updateComposition:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __63__JFXCompositionPlayerViewController_setNeedsCompositionUpdate__block_invoke(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v6 = a4;
  if ((a3 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [WeakRetained clipsPlayer];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__JFXCompositionPlayerViewController_setNeedsCompositionUpdate__block_invoke_2;
    v10[3] = &unk_278D7C648;
    objc_copyWeak(&v11, (a1 + 32));
    [v8 dispatchBlockWhenDone:v10];

    v9 = objc_loadWeakRetained((a1 + 32));
    [v9 endFlash];

    objc_destroyWeak(&v11);
  }
}

void __63__JFXCompositionPlayerViewController_setNeedsCompositionUpdate__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateDelegatePlayer];
}

- (void)setNeedsCompositionUpdateForClip:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  objc_initWeak(&from, v4);
  [(JFXCompositionPlayerViewController *)self reloadClipDataSourceIfNeeded];
  v5 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__JFXCompositionPlayerViewController_setNeedsCompositionUpdateForClip___block_invoke;
  v6[3] = &unk_278D7C670;
  objc_copyWeak(&v7, &from);
  objc_copyWeak(&v8, &location);
  v6[4] = self;
  [v5 updateCompositionForClip:v4 completion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __71__JFXCompositionPlayerViewController_setNeedsCompositionUpdateForClip___block_invoke(id *a1, uint64_t a2, int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 5);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(a1 + 6);
    [v6 updateDelegatePlayer];

    v7 = JFXLog_DebugPlayback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [a1[4] displayName];
      v9 = objc_loadWeakRetained(a1 + 5);
      v10 = [v9 uuid];
      v11 = v10;
      v12 = @"succeeded";
      v13 = 138543874;
      v14 = v8;
      v15 = 2114;
      if (a3)
      {
        v12 = @"was throttled";
      }

      v16 = v10;
      v17 = 2114;
      v18 = v12;
      _os_log_impl(&dword_242A3B000, v7, OS_LOG_TYPE_DEFAULT, "player %{public}@ clip composition update for clip  %{public}@ %{public}@ ", &v13, 0x20u);
    }
  }
}

- (void)updateDelegatePlayer
{
  v3 = [(JFXCompositionPlayerViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v7 = [(JFXCompositionPlayerViewController *)self delegate];
    v5 = [(JFXCompositionPlayerViewController *)self playerViewer];
    v6 = [v5 player];
    [v7 updateFromPlayer:v6];
  }
}

- (void)dispatchBlockWhenDone:(id)a3
{
  v4 = a3;
  [(JFXCompositionPlayerViewController *)self reloadClipDataSourceIfNeeded];
  v5 = [(JFXCompositionPlayerViewController *)self clipsPlayer];

  if (v5)
  {
    v6 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__JFXCompositionPlayerViewController_dispatchBlockWhenDone___block_invoke;
    v7[3] = &unk_278D7C698;
    v8 = v4;
    [v6 dispatchBlockWhenDone:v7];
  }

  else
  {
    v4[2](v4);
  }
}

- (void)unloadCompositionSetPlaceHolder:(BOOL)a3
{
  v3 = a3;
  v5 = JFXPlaybackEventSignpostPointCategory();
  v6 = v5;
  v7 = JFXSignpostExclusiveID;
  if ((JFXSignpostExclusiveID - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_242A3B000, v6, OS_SIGNPOST_EVENT, v7, "UnloadComposition", &unk_242B66C87, v8, 2u);
  }

  [(JFXCompositionPlayerViewController *)self updateCachedPlaybackProperties];
  [(JFXCompositionPlayerViewController *)self unloadClipDataSourceSetPlaceHolder:v3];
}

- (void)preparePlaceHolder
{
  v25 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v3 = [(JFXCompositionPlayerViewController *)self placeHolderView];
  if (!v3 || (v4 = v3, -[JFXCompositionPlayerViewController placeHolderView](self, "placeHolderView"), v5 = objc_claimAutoreleasedReturnValue(), [v5 superview], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v4, !v6))
  {
    v7 = [(JFXCompositionPlayerViewController *)self placeholderContainerView];

    if (v7)
    {
      v8 = JFXLog_DebugPlayback();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(JFXCompositionPlayerViewController *)self displayName];
        v23 = 138543362;
        v24 = v9;
        _os_log_impl(&dword_242A3B000, v8, OS_LOG_TYPE_DEFAULT, "player %{public}@ placeholder prepared", &v23, 0xCu);
      }

      v10 = [(JFXCompositionPlayerViewController *)self playerContainerView];
      v11 = [v10 snapshotViewAfterScreenUpdates:0];
      [(JFXCompositionPlayerViewController *)self setPlaceHolderView:v11];

      v12 = [(JFXCompositionPlayerViewController *)self playerContainerView];
      [v12 bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v21 = [(JFXCompositionPlayerViewController *)self placeHolderView];
      [v21 setFrame:{v14, v16, v18, v20}];

      v22 = [(JFXCompositionPlayerViewController *)self placeHolderView];
      [v22 setAutoresizingMask:18];
    }

    kdebug_trace();
  }
}

- (void)displayPlaceHolder
{
  v7 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  [(JFXCompositionPlayerViewController *)self setDontRemovePlaceHolderOnDisplay:1];
  v3 = JFXLog_DebugPlayback();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(JFXCompositionPlayerViewController *)self displayName];
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_242A3B000, v3, OS_LOG_TYPE_DEFAULT, "player %{public}@ placeholder placeholder locked", &v5, 0xCu);
  }

  [(JFXCompositionPlayerViewController *)self preparePlaceHolder];
  [(JFXCompositionPlayerViewController *)self addPlaceHolder];
  kdebug_trace();
}

- (void)addPlaceHolder
{
  v34 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v3 = [(JFXCompositionPlayerViewController *)self placeHolderView];
  if (v3)
  {
    v4 = v3;
    v5 = [(JFXCompositionPlayerViewController *)self placeholderContainerView];
    if (v5)
    {
      v6 = v5;
      v7 = [(JFXCompositionPlayerViewController *)self placeHolderView];
      v8 = [v7 superview];

      if (!v8)
      {
        v9 = JFXLog_DebugPlayback();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [(JFXCompositionPlayerViewController *)self displayName];
          v32 = 138543362;
          v33 = v10;
          _os_log_impl(&dword_242A3B000, v9, OS_LOG_TYPE_DEFAULT, "player %{public}@ placeholder displayed", &v32, 0xCu);
        }

        [MEMORY[0x277CD9FF0] begin];
        [MEMORY[0x277CD9FF0] setDisableActions:1];
        v11 = [(JFXCompositionPlayerViewController *)self playerContainerView];
        [v11 bounds];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;

        v20 = [(JFXCompositionPlayerViewController *)self placeHolderView];
        [v20 frame];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;

        v35.origin.x = v22;
        v35.origin.y = v24;
        v35.size.width = v26;
        v35.size.height = v28;
        v36.origin.x = v13;
        v36.origin.y = v15;
        v36.size.width = v17;
        v36.size.height = v19;
        if (!CGRectEqualToRect(v35, v36))
        {
          v29 = [(JFXCompositionPlayerViewController *)self placeHolderView];
          [v29 setFrame:{v13, v15, v17, v19}];
        }

        v30 = [(JFXCompositionPlayerViewController *)self placeholderContainerView];
        v31 = [(JFXCompositionPlayerViewController *)self placeHolderView];
        [v30 addSubview:v31];

        [MEMORY[0x277CD9FF0] commit];
        [MEMORY[0x277CD9FF0] flush];
      }
    }

    else
    {
    }
  }

  kdebug_trace();
}

- (void)removePlaceHolder
{
  v28 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v3 = [(JFXCompositionPlayerViewController *)self placeHolderView];
  if (v3)
  {
    v4 = v3;
    v5 = [(JFXCompositionPlayerViewController *)self playerContainerView];
    [v5 alpha];
    v7 = v6;

    if (v7 != 0.0)
    {
      v8 = JFXLog_DebugPlayback();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(JFXCompositionPlayerViewController *)self displayName];
        *buf = 138543362;
        v27 = v9;
        _os_log_impl(&dword_242A3B000, v8, OS_LOG_TYPE_DEFAULT, "player %{public}@ placeholder removed", buf, 0xCu);
      }

      v10 = [(JFXCompositionPlayerViewController *)self delegate];
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        v12 = [(JFXCompositionPlayerViewController *)self delegate];
        v13 = [v12 animationPropertiesForCompositionTransition:self];
      }

      else
      {
        v13 = 0;
      }

      v14 = [(JFXCompositionPlayerViewController *)self placeHolderView];
      [(JFXCompositionPlayerViewController *)self setPlaceHolderView:0];
      if (!v13 || ([v13 animationDuration], v15 == 0.0))
      {
        [v14 removeFromSuperview];
      }

      else
      {
        v16 = [v13 timingParameters];
        if (!v16)
        {
          v16 = [objc_alloc(MEMORY[0x277D753D0]) initWithAnimationCurve:0];
        }

        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __55__JFXCompositionPlayerViewController_removePlaceHolder__block_invoke;
        v23[3] = &unk_278D79C88;
        v24 = v14;
        v25 = v13;
        [v25 animationDuration];
        v18 = v17;
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __55__JFXCompositionPlayerViewController_removePlaceHolder__block_invoke_2;
        v21[3] = &unk_278D7B1A0;
        v22 = v24;
        [JTAnimation performAnimation:v23 timingParameters:v16 duration:v21 completion:v18 delay:0.0];
      }
    }
  }

  if ([(JFXCompositionPlayerViewController *)self dontRemovePlaceHolderOnDisplay])
  {
    v19 = JFXLog_DebugPlayback();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(JFXCompositionPlayerViewController *)self displayName];
      *buf = 138543362;
      v27 = v20;
      _os_log_impl(&dword_242A3B000, v19, OS_LOG_TYPE_DEFAULT, "player %{public}@ placeholder was unlocked", buf, 0xCu);
    }
  }

  [(JFXCompositionPlayerViewController *)self setDontRemovePlaceHolderOnDisplay:0];
  kdebug_trace();
}

uint64_t __55__JFXCompositionPlayerViewController_removePlaceHolder__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  result = [*(a1 + 40) shouldScale];
  if (result)
  {
    CGAffineTransformMakeScale(&v5, 0.6, 0.6);
    v3 = *(a1 + 32);
    v4 = v5;
    return [v3 setTransform:&v4];
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentCMTime
{
  v10 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  if (v10)
  {
    v5 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
    v6 = v5;
    if (v5)
    {
      [v5 currentCMTime];
    }

    else
    {
      retstr->var0 = 0;
      *&retstr->var1 = 0;
      retstr->var3 = 0;
    }
  }

  else
  {
    v7 = [(JFXCompositionPlayerViewController *)self cachedCurrentTime];
    v6 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
    v8 = [v6 clipsDataSource];
    CMTimeFromFrameTime(v7, [v8 timeScale], retstr);
  }

  return result;
}

- (int)currentTime
{
  v3 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  if (v3)
  {
    v4 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
    v5 = [v4 currentTime];
  }

  else
  {
    v5 = [(JFXCompositionPlayerViewController *)self cachedCurrentTime];
  }

  return v5;
}

- (CGSize)renderSizeInPixels
{
  v3 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  if (v3)
  {
    v4 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
    [v4 renderSize];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    [(JFXCompositionPlayerViewController *)self cachedRenderSizeInPixels];
    v6 = v9;
    v8 = v10;
  }

  v11 = v6;
  v12 = v8;
  result.height = v12;
  result.width = v11;
  return result;
}

- (int)duration
{
  v3 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  if (v3)
  {
    v4 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
    v5 = [v4 duration];
  }

  else
  {
    v5 = [(JFXCompositionPlayerViewController *)self cachedDuration];
  }

  return v5;
}

- (void)seekToTime:(int)a3
{
  v3 = *&a3;
  [(JFXCompositionPlayerViewController *)self reloadClipDataSourceIfNeeded];
  v5 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__JFXCompositionPlayerViewController_seekToTime___block_invoke;
  v6[3] = &unk_278D7C6C0;
  v6[4] = self;
  v7 = v3;
  [v5 seek:v3 tolerance:0 completion:v6];
}

void __49__JFXCompositionPlayerViewController_seekToTime___block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  v5 = JFXLog_DebugPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __49__JFXCompositionPlayerViewController_seekToTime___block_invoke_cold_1(a1, a3, v5);
  }
}

- (int)frameRate
{
  v2 = [(JFXCompositionPlayerViewController *)self clipsDataSource];
  v3 = [v2 frameRate];

  return v3;
}

- (void)setPlaybackTimeChangedObserverInterval:(id *)a3
{
  [(JFXCompositionPlayerViewController *)self reloadClipDataSourceIfNeeded];
  var3 = a3->var3;
  *&self->_playbackTimeChangedObserverInterval.value = *&a3->var0;
  self->_playbackTimeChangedObserverInterval.epoch = var3;
  v6 = [(JFXCompositionPlayerViewController *)self clipsPlayer:a3->var0];
  [v6 setPlaybackTimeChangedObserverInterval:&v7];
}

- (void)resetPlaybackTimeChangedObserverInterval
{
  v3 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  [v3 resetPlaybackTimeChangedObserverInterval];

  memset(&v8, 0, sizeof(v8));
  v4 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  v5 = v4;
  if (v4)
  {
    [v4 playbackTimeChangedObserverInterval];
  }

  else
  {
    memset(&v8, 0, sizeof(v8));
  }

  if (v8.flags)
  {
    time1 = v8;
    v6 = **&MEMORY[0x277CC08F0];
    if (CMTimeCompare(&time1, &v6))
    {
      self->_playbackTimeChangedObserverInterval = v8;
    }
  }
}

- (void)playWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(JFXCompositionPlayerViewController *)self reloadClipDataSourceIfNeeded];
  v5 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__JFXCompositionPlayerViewController_playWithCompletionHandler___block_invoke;
  v7[3] = &unk_278D7C6E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 play:v7];
}

void __64__JFXCompositionPlayerViewController_playWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2);
  }

  if ((a3 & 1) == 0)
  {
    v9 = JFXLog_DebugPlayback();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) displayName];
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_242A3B000, v9, OS_LOG_TYPE_DEFAULT, "player %{public}@ Play began", &v11, 0xCu);
    }
  }
}

- (BOOL)isPlaying
{
  v2 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  v3 = [v2 isPlaying];

  return v3;
}

- (void)pauseWithCompletionBlock:(id)a3
{
  v4 = a3;
  [(JFXCompositionPlayerViewController *)self reloadClipDataSourceIfNeeded];
  v5 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__JFXCompositionPlayerViewController_pauseWithCompletionBlock___block_invoke;
  v7[3] = &unk_278D7C710;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 pause:v7];
}

void __63__JFXCompositionPlayerViewController_pauseWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ((a3 & 1) == 0)
  {
    v7 = JFXLog_DebugPlayback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) displayName];
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_242A3B000, v7, OS_LOG_TYPE_DEFAULT, "player %{public}@ playback paused", &v10, 0xCu);
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

- (void)setMuted:(BOOL)a3
{
  v3 = a3;
  [(JFXCompositionPlayerViewController *)self reloadClipDataSourceIfNeeded];
  v5 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  [v5 setAudioMuted:v3 completionBlock:0];

  [(JFXCompositionPlayerViewController *)self setCachedMuted:v3];
}

- (BOOL)isMuted
{
  v3 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  if (v3)
  {
    v4 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
    v5 = [v4 isAudioMuted];
  }

  else
  {
    v5 = [(JFXCompositionPlayerViewController *)self cachedMuted]!= 0;
  }

  return v5;
}

- (id)playerContainerView
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)placeholderContainerView
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)playerViewer
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)mediaserverdCrashed
{
  v3 = JFXPlaybackEventSignpostPointCategory();
  v4 = v3;
  v5 = JFXSignpostExclusiveID;
  if ((JFXSignpostExclusiveID - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_242A3B000, v4, OS_SIGNPOST_EVENT, v5, "MediaServerCrash", &unk_242B66C87, buf, 2u);
  }

  if ([(JFXCompositionPlayerViewController *)self shouldHandleMediaServerCrash])
  {
    [(JFXCompositionPlayerViewController *)self unloadClipDataSourceSetPlaceHolder:1];
    if ([(JFXCompositionPlayerViewController *)self cachedWasPlaying])
    {
      [(JFXCompositionPlayerViewController *)self playbackDidStop:0 currentTime:[(JFXCompositionPlayerViewController *)self cachedCurrentTime]];
    }

    objc_initWeak(buf, self);
    v6 = dispatch_time(0, 30000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__JFXCompositionPlayerViewController_mediaserverdCrashed__block_invoke;
    block[3] = &unk_278D7B1C8;
    objc_copyWeak(&v8, buf);
    dispatch_after(v6, MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

void __57__JFXCompositionPlayerViewController_mediaserverdCrashed__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadClipDataSourceIfNeeded];
}

- (void)playbackTimeDidChange:(id)a3 currentTime:(int)a4
{
  v4 = *&a4;
  v6 = [(JFXCompositionPlayerViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(JFXCompositionPlayerViewController *)self clipsDataSource];
    v9 = [v8 duration];

    [(JFXCompositionPlayerViewController *)self setCachedDuration:v9];
    [(JFXCompositionPlayerViewController *)self setCachedCurrentTime:v4];
    if (v9 >= v4)
    {
      v4 = v4;
    }

    else
    {
      v4 = v9;
    }

    v10 = [(JFXCompositionPlayerViewController *)self delegate];
    [v10 playbackTimeDidChange:self currentTime:v4];
  }
}

- (void)playbackDidStart:(id)a3
{
  [(JFXCompositionPlayerViewController *)self setCachedWasPlaying:1];
  v4 = [(JFXCompositionPlayerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(JFXCompositionPlayerViewController *)self delegate];
    [v6 playbackDidStart:self];
  }
}

- (void)playbackDidStop:(id)a3 currentTime:(int)a4
{
  v4 = *&a4;
  [(JFXCompositionPlayerViewController *)self setCachedWasPlaying:0];
  v6 = [(JFXCompositionPlayerViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(JFXCompositionPlayerViewController *)self delegate];
    [v8 playbackDidStop:self currentTime:v4];
  }
}

- (void)playbackReadyForDisplayChanged:(id)a3 isReady:(BOOL)a4 setPlaceHolder:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  if (a4)
  {
    [(JFXCompositionPlayerViewController *)self renderSizeInPixels];
    [(JFXCompositionPlayerViewController *)self setCachedRenderSizeInPixels:?];
  }

  [(JFXCompositionPlayerViewController *)self playerBecameReadyForDisplayChanged:v6 setPlaceHolder:v5];
}

- (void)playerWillBeDestroyed:(id)a3
{
  v4 = [(JFXCompositionPlayerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(JFXCompositionPlayerViewController *)self delegate];
    [v6 updateFromPlayer:0];
  }
}

- (void)playerBecameReadyForDisplayChanged:(BOOL)a3 setPlaceHolder:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v22 = *MEMORY[0x277D85DE8];
  v7 = JFXLog_DebugPlayback();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(JFXCompositionPlayerViewController *)self displayName];
    v9 = v8;
    v10 = @"NO";
    if (v5)
    {
      v10 = @"YES";
    }

    v18 = 138543618;
    v19 = v8;
    v20 = 2114;
    v21 = v10;
    _os_log_impl(&dword_242A3B000, v7, OS_LOG_TYPE_DEFAULT, "player %{public}@ readyForDisplay changed to %{public}@", &v18, 0x16u);
  }

  v11 = [(JFXCompositionPlayerViewController *)self playerViewer];
  v12 = [v11 isReadyForDisplay];

  if (v5 && (v12 & 1) == 0)
  {
    v13 = JFXLog_playback();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [JFXCompositionPlayerViewController playerBecameReadyForDisplayChanged:v13 setPlaceHolder:?];
    }

    v14 = [(JFXCompositionPlayerViewController *)self playerContainerView];
    [v14 setAlpha:0.0];

    goto LABEL_17;
  }

  if (v5)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  v16 = [(JFXCompositionPlayerViewController *)self playerContainerView];
  [v16 setAlpha:v15];

  if (!v5)
  {
LABEL_17:
    if (v4)
    {
      v17 = [(JFXCompositionPlayerViewController *)self placeHolderView];

      if (!v17)
      {
        [(JFXCompositionPlayerViewController *)self preparePlaceHolder];
      }

      [(JFXCompositionPlayerViewController *)self addPlaceHolder];
    }

    return;
  }

  if (![(JFXCompositionPlayerViewController *)self dontRemovePlaceHolderOnDisplay])
  {
    [(JFXCompositionPlayerViewController *)self removePlaceHolder];
  }

  [(JFXCompositionPlayerViewController *)self prepareVideoDisplayView];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:@"videoBounds"])
  {
    v13 = [(JFXCompositionPlayerViewController *)self playerViewer];
    [v13 videoBounds];
    v15 = v14;
    v17 = v16;

    if (v15 != *MEMORY[0x277CBF3A8] || v17 != *(MEMORY[0x277CBF3A8] + 8))
    {
      [(JFXCompositionPlayerViewController *)self setLastPlayerViewBoundsSize:v15, v17];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __85__JFXCompositionPlayerViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
      block[3] = &unk_278D79D20;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = JFXCompositionPlayerViewController;
    [(JFXCompositionPlayerViewController *)&v19 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)setVideoContentMode:(int64_t)a3
{
  self->_videoContentMode = a3;
  v5 = [(JFXCompositionPlayerViewController *)self contentModeToVideoGravity:?];
  v4 = [(JFXCompositionPlayerViewController *)self playerViewer];
  [v4 setVideoGravity:v5];
}

- (id)contentModeToVideoGravity:(int64_t)a3
{
  v3 = MEMORY[0x277CE5DC8];
  v4 = MEMORY[0x277CE5DD8];
  if (a3 != 1)
  {
    v4 = MEMORY[0x277CE5DD0];
  }

  if (a3 != 2)
  {
    v3 = v4;
  }

  return *v3;
}

- (CGRect)videoDisplayBounds
{
  v2 = [(JFXCompositionPlayerViewController *)self playerViewer];
  [v2 videoBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)prepareVideoDisplayView
{
  v3 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
  [v3 removeFromSuperview];

  if ([(JFXCompositionPlayerViewController *)self disableVideoDisplayGestures])
  {
    v6 = [(JFXCompositionPlayerViewController *)self view];
    [v6 setUserInteractionEnabled:1];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(JFXCompositionPlayerViewController *)self setVideoDisplayOverlayView:v4];

    LODWORD(v4) = [(JFXCompositionPlayerViewController *)self disableVideoDisplayGestures];
    v5 = [(JFXCompositionPlayerViewController *)self view];
    [v5 setUserInteractionEnabled:v4 ^ 1];

    [(JFXCompositionPlayerViewController *)self updateVideoDisplayViewBounds];

    [(JFXCompositionPlayerViewController *)self installVideoDisplayGestures];
  }
}

- (void)updateVideoDisplayViewBounds
{
  v3 = [(JFXCompositionPlayerViewController *)self playerViewer];
  [v3 videoBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
  if (v12)
  {
    v13 = v12;
    v21.origin.x = v5;
    v21.origin.y = v7;
    v21.size.width = v9;
    v21.size.height = v11;
    IsNull = CGRectIsNull(v21);

    if (!IsNull)
    {
      v15 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
      [v15 setFrame:{v5, v7, v9, v11}];

      v16 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
      v17 = [v16 superview];

      if (!v17)
      {
        v19 = [(JFXCompositionPlayerViewController *)self view];
        v18 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
        [v19 addSubview:v18];
      }
    }
  }
}

- (CGSize)playerViewBoundsSize
{
  v3 = [(JFXCompositionPlayerViewController *)self playerViewer];
  [v3 videoBounds];
  v5 = v4;
  v7 = v6;

  if (v5 <= 0.0 || v7 <= 0.0)
  {

    [(JFXCompositionPlayerViewController *)self lastPlayerViewBoundsSize];
  }

  else
  {
    v8 = v5;
    v9 = v7;
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (CGPoint)convertPointInPlaybackSizeToClipPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(JFXCompositionPlayerViewController *)self playerViewBoundsSize];
  v7 = v6;
  v9 = v8;
  v10 = [(JFXCompositionPlayerViewController *)self clipsDataSource];
  [v10 renderSize];
  v12 = v11;
  v14 = v13;

  v15 = x * (v12 / v7);
  v16 = y * (v14 / v9);
  result.y = v16;
  result.x = v15;
  return result;
}

- (CGPoint)convertPointInPlaybackSizeToClipPointNormalized:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(JFXCompositionPlayerViewController *)self playerViewBoundsSize];
  v6 = x / v5;
  v8 = y / v7;
  result.y = v8;
  result.x = v6;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)normalizedMinimumTouchSize
{
  [(JFXCompositionPlayerViewController *)self playerViewBoundsSize];
  v3 = 44.0 / v2;
  v5 = 44.0 / v4;
  result.var1 = v5;
  result.var0 = v3;
  return result;
}

- (void)setDisableVideoDisplayGestures:(BOOL)a3
{
  v3 = a3;
  self->_disableVideoDisplayGestures = a3;
  v4 = [(JFXCompositionPlayerViewController *)self view];
  [v4 setUserInteractionEnabled:!v3];
}

- (void)installVideoDisplayGestures
{
  v3 = [(JFXCompositionPlayerViewController *)self view];
  v4 = [v3 gestureRecognizers];
  v5 = [v4 count];

  if (!v5)
  {
    v15 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_playbackAreaTapped_];
    [v15 setDelegate:self];
    v6 = [(JFXCompositionPlayerViewController *)self view];
    [v6 addGestureRecognizer:v15];

    v7 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_playbackAreaPanned_];
    [v7 setDelegate:self];
    v8 = [(JFXCompositionPlayerViewController *)self view];
    [v8 addGestureRecognizer:v7];

    v9 = [objc_alloc(MEMORY[0x277D75848]) initWithTarget:self action:sel_playbackAreaPinched_];
    [v9 setDelegate:self];
    v10 = [(JFXCompositionPlayerViewController *)self view];
    [v10 addGestureRecognizer:v9];

    v11 = [objc_alloc(MEMORY[0x277D75938]) initWithTarget:self action:sel_playbackAreaRotated_];
    [v11 setDelegate:self];
    v12 = [(JFXCompositionPlayerViewController *)self view];
    [v12 addGestureRecognizer:v11];

    v13 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_playbackAreaDoubleTapped_];
    [v13 setNumberOfTapsRequired:2];
    v14 = [(JFXCompositionPlayerViewController *)self view];
    [v14 addGestureRecognizer:v13];
  }
}

- (void)playbackAreaTapped:(id)a3
{
  v23 = a3;
  v4 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
  if (v4)
  {
    v5 = v4;
    v6 = [(JFXCompositionPlayerViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
      [v23 locationInView:v8];
      v10 = v9;
      v12 = v11;

      [(JFXCompositionPlayerViewController *)self convertPointInPlaybackSizeToClipPointNormalized:v10, v12];
      v14 = v13;
      v16 = v15;
      [(JFXCompositionPlayerViewController *)self normalizedMinimumTouchSize];
      v18 = v17;
      v20 = v19;
      v21 = [(JFXCompositionPlayerViewController *)self delegate];
      v22 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
      [v21 playbackAreaTapped:self normalizedClipPoint:objc_msgSend(v22 normalizedMinimumSize:"currentTime") atTime:{v14, v16, v18, v20}];
    }
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();
  }

  v9 = isKindOfClass & v8;

  return v9 & 1;
}

- (void)playbackAreaPanned:(id)a3
{
  v36 = a3;
  v4 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
  if (v4)
  {
    v5 = v4;
    v6 = [(JFXCompositionPlayerViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
      [v36 locationInView:v8];
      v10 = v9;
      v12 = v11;

      v13 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
      [v36 translationInView:v13];
      v15 = v14;
      v17 = v16;

      [(JFXCompositionPlayerViewController *)self convertPointInPlaybackSizeToClipPointNormalized:v10, v12];
      v19 = v18;
      v21 = v20;
      [(JFXCompositionPlayerViewController *)self convertPointInPlaybackSizeToClipPointNormalized:v15, v17];
      v23 = v22;
      v25 = v24;
      [(JFXCompositionPlayerViewController *)self normalizedMinimumTouchSize];
      v27 = v26;
      v29 = v28;
      v30 = [(JFXCompositionPlayerViewController *)self delegate];
      v31 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
      v32 = [v31 currentTime];
      v33 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
      v34 = [v33 clipsDataSource];
      [v30 playbackAreaPanned:self gesture:v36 normalizedClipPoint:v32 normalizedMinimumSize:objc_msgSend(v34 translationDelta:"timeScale") atTime:v19 timeScale:{v21, v27, v29, v23, v25}];
    }
  }

  v35 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
  [v36 setTranslation:v35 inView:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
}

- (void)playbackAreaPinched:(id)a3
{
  v44 = a3;
  v4 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
  if (v4)
  {
    v5 = v4;
    v6 = [(JFXCompositionPlayerViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(JFXCompositionPlayerViewController *)self playerViewer];
      [v8 videoBounds];
      v10 = v9;
      v12 = v11;

      v13 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
      [v13 bounds];
      v15 = v14;
      v17 = v16;

      if (v10 > 0.0 && v12 > 0.0 && v15 > 0.0 && v17 > 0.0)
      {
        v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v44, "numberOfTouches")}];
        if ([v44 numberOfTouches])
        {
          v19 = 0;
          do
          {
            v20 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
            [v44 locationOfTouch:v19 inView:v20];
            v22 = v21;
            v24 = v23;

            [(JFXCompositionPlayerViewController *)self convertPointInPlaybackSizeToClipPointNormalized:v22, v24];
            v25 = [MEMORY[0x277CCAE60] valueWithCGPoint:?];
            [v18 addObject:v25];

            ++v19;
          }

          while (v19 < [v44 numberOfTouches]);
        }

        v26 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
        [v44 locationInView:v26];
        v28 = v27;
        v30 = v29;

        v31 = v28 / v15;
        v32 = v30 / v17;
        [(JFXCompositionPlayerViewController *)self normalizedMinimumTouchSize];
        v34 = v33;
        v36 = v35;
        v37 = [(JFXCompositionPlayerViewController *)self delegate];
        [v44 scale];
        v39 = v38;
        v40 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
        v41 = [v40 currentTime];
        v42 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
        v43 = [v42 clipsDataSource];
        [v37 playbackAreaPinched:self gesture:v44 normalizedClipPoints:v18 normalizedCenterPoint:v41 normalizedMinimumSize:objc_msgSend(v43 scaleDelta:"timeScale") atTime:v31 timeScale:{v32, v34, v36, v39}];
      }
    }
  }

  [v44 setScale:1.0];
}

- (void)playbackAreaRotated:(id)a3
{
  v41 = a3;
  v4 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
  if (v4)
  {
    v5 = v4;
    v6 = [(JFXCompositionPlayerViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(JFXCompositionPlayerViewController *)self playerViewer];
      [v8 videoBounds];
      v10 = v9;
      v12 = v11;

      v13 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
      [v13 bounds];
      v15 = v14;
      v17 = v16;

      if (v10 > 0.0 && v12 > 0.0 && v15 > 0.0 && v17 > 0.0)
      {
        v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v41, "numberOfTouches")}];
        if ([v41 numberOfTouches])
        {
          v19 = 0;
          do
          {
            v20 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
            [v41 locationOfTouch:v19 inView:v20];
            v22 = v21;
            v24 = v23;

            [(JFXCompositionPlayerViewController *)self convertPointInPlaybackSizeToClipPointNormalized:v22, v24];
            v25 = [MEMORY[0x277CCAE60] valueWithCGPoint:?];
            [v18 addObject:v25];

            ++v19;
          }

          while (v19 < [v41 numberOfTouches]);
        }

        v26 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
        [v41 locationInView:v26];
        v28 = v27;
        v30 = v29;

        v31 = v28 / v15;
        v32 = v30 / v17;
        [(JFXCompositionPlayerViewController *)self normalizedMinimumTouchSize];
        v34 = v33;
        v36 = v35;
        v37 = [(JFXCompositionPlayerViewController *)self delegate];
        [v41 rotation];
        v39 = v38;
        v40 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
        [v37 playbackAreaRotated:self gesture:v41 normalizedClipPoints:v18 normalizedCenterPoint:objc_msgSend(v40 normalizedMinimumSize:"currentTime") rotateDelta:v31 atTime:{v32, v34, v36, v39}];
      }
    }
  }

  [v41 setRotation:0.0];
}

- (void)playbackAreaDoubleTapped:(id)a3
{
  v7 = a3;
  v4 = [(JFXCompositionPlayerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(JFXCompositionPlayerViewController *)self delegate];
    [v6 playbackAreaDoubleTapped:v7];
  }
}

- (id)viewToFlash
{
  v2 = [(JFXCompositionPlayerViewController *)self view];
  v3 = [v2 superview];
  v4 = [v3 superview];
  v5 = [v4 superview];
  v6 = [v5 superview];
  v7 = [v6 superview];
  v8 = [v7 superview];

  return v8;
}

- (void)beginFlash
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 BOOLForKey:@"flashViewOnCompositionUpdate"];

  if (v4)
  {
    v5 = [(JFXCompositionPlayerViewController *)self viewToFlash];
    v11 = [v5 backgroundColor];

    if (v11)
    {
      v6 = [MEMORY[0x277D75348] purpleColor];
      v7 = [v11 isEqual:v6];

      if ((v7 & 1) == 0)
      {
        [(JFXCompositionPlayerViewController *)self setRestoreToColor:v11];
        v8 = [MEMORY[0x277D75348] purpleColor];
        v9 = [(JFXCompositionPlayerViewController *)self viewToFlash];
        [v9 setBackgroundColor:v8];

        v10 = [(JFXCompositionPlayerViewController *)self viewToFlash];
        [(JFXCompositionPlayerViewController *)self setViewFlashed:v10];
      }
    }
  }
}

- (void)endFlash
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 BOOLForKey:@"flashViewOnCompositionUpdate"];

  if (v4)
  {
    v5 = [(JFXCompositionPlayerViewController *)self viewFlashed];
    v11 = [v5 backgroundColor];

    v6 = [(JFXCompositionPlayerViewController *)self restoreToColor];
    if (v6 && v11)
    {
      v7 = [MEMORY[0x277D75348] purpleColor];
      v8 = [v11 isEqual:v7];

      if (v8)
      {
        v9 = [(JFXCompositionPlayerViewController *)self restoreToColor];
        v10 = [(JFXCompositionPlayerViewController *)self viewFlashed];
        [v10 setBackgroundColor:v9];

        [(JFXCompositionPlayerViewController *)self setRestoreToColor:0];
        [(JFXCompositionPlayerViewController *)self setViewFlashed:0];
      }
    }

    else
    {
    }
  }
}

- (JFXCompositionPlayerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (JFXCompositionPlayableElementsDataSource)clipsDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_clipsDataSource);

  return WeakRetained;
}

- (CGSize)cachedRenderSizeInPixels
{
  width = self->_cachedRenderSizeInPixels.width;
  height = self->_cachedRenderSizeInPixels.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIView)viewFlashed
{
  WeakRetained = objc_loadWeakRetained(&self->_viewFlashed);

  return WeakRetained;
}

- (CGSize)lastPlayerViewSize
{
  width = self->_lastPlayerViewSize.width;
  height = self->_lastPlayerViewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)lastPlayerViewBoundsSize
{
  width = self->_lastPlayerViewBoundsSize.width;
  height = self->_lastPlayerViewBoundsSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)appWillResignActive:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 displayName];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_242A3B000, a2, OS_LOG_TYPE_DEBUG, "player %@ resigned active. pause playback and prepare placeholder", &v4, 0xCu);
}

void __49__JFXCompositionPlayerViewController_seekToTime___block_invoke_cold_1(uint64_t a1, char a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = [*(a1 + 32) displayName];
  v7 = @"completed";
  v8 = *(a1 + 40);
  v9 = 138412802;
  v10 = v6;
  if (a2)
  {
    v7 = @"throttled";
  }

  v11 = 2112;
  v12 = v7;
  v13 = 1024;
  v14 = v8;
  _os_log_debug_impl(&dword_242A3B000, a3, OS_LOG_TYPE_DEBUG, "Player %@ seek %@ for time %d", &v9, 0x1Cu);
}

- (void)playerBecameReadyForDisplayChanged:(void *)a1 setPlaceHolder:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 displayName];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_242A3B000, a2, OS_LOG_TYPE_ERROR, "player %{public}@ reported ready but wasn't really ready", &v4, 0xCu);
}

@end
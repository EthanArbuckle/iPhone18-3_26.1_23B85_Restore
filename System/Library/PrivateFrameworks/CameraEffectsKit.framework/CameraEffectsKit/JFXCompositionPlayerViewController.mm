@interface JFXCompositionPlayerViewController
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentCMTime;
- ($F24F406B2B787EFB06265DBA3D28CBD5)normalizedMinimumTouchSize;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)isMuted;
- (BOOL)isPlaying;
- (BOOL)isReloadClipDataSourceNeeded;
- (CGPoint)convertPointInPlaybackSizeToClipPoint:(CGPoint)point;
- (CGPoint)convertPointInPlaybackSizeToClipPointNormalized:(CGPoint)normalized;
- (CGRect)videoDisplayBounds;
- (CGSize)cachedRenderSizeInPixels;
- (CGSize)lastPlayerViewBoundsSize;
- (CGSize)lastPlayerViewSize;
- (CGSize)playerViewBoundsSize;
- (CGSize)renderSizeInPixels;
- (JFXCompositionPlayableElementsDataSource)clipsDataSource;
- (JFXCompositionPlayerViewController)init;
- (JFXCompositionPlayerViewController)initWithCoder:(id)coder;
- (JFXCompositionPlayerViewControllerDelegate)delegate;
- (UIView)viewFlashed;
- (id)contentModeToVideoGravity:(int64_t)gravity;
- (id)placeholderContainerView;
- (id)playerContainerView;
- (id)playerViewer;
- (id)viewToFlash;
- (int)currentTime;
- (int)duration;
- (int)frameRate;
- (void)addPlaceHolder;
- (void)appDidBecomeActive:(id)active;
- (void)appDidEnterBackground:(id)background;
- (void)appWillResignActive:(id)active;
- (void)beginFlash;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)dispatchBlockWhenDone:(id)done;
- (void)displayPlaceHolder;
- (void)endFlash;
- (void)installVideoDisplayGestures;
- (void)mediaserverdCrashed;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pauseWithCompletionBlock:(id)block;
- (void)playWithCompletionHandler:(id)handler;
- (void)playbackAreaDoubleTapped:(id)tapped;
- (void)playbackAreaPanned:(id)panned;
- (void)playbackAreaPinched:(id)pinched;
- (void)playbackAreaRotated:(id)rotated;
- (void)playbackAreaTapped:(id)tapped;
- (void)playbackDidStart:(id)start;
- (void)playbackDidStop:(id)stop currentTime:(int)time;
- (void)playbackReadyForDisplayChanged:(id)changed isReady:(BOOL)ready setPlaceHolder:(BOOL)holder;
- (void)playbackTimeDidChange:(id)change currentTime:(int)time;
- (void)playerBecameReadyForDisplayChanged:(BOOL)changed setPlaceHolder:(BOOL)holder;
- (void)playerWillBeDestroyed:(id)destroyed;
- (void)preparePlaceHolder;
- (void)prepareVideoDisplayView;
- (void)reloadClipDataSource;
- (void)reloadClipDataSourceIfNeeded;
- (void)reloadClipDataSourceOnBecomingActive;
- (void)removePlaceHolder;
- (void)resetPlaybackTimeChangedObserverInterval;
- (void)seekToTime:(int)time;
- (void)setClipsDataSource:(id)source;
- (void)setDisableVideoDisplayGestures:(BOOL)gestures;
- (void)setMuted:(BOOL)muted;
- (void)setNeedsCompositionUpdate;
- (void)setNeedsCompositionUpdateForClip:(id)clip;
- (void)setPlaybackTimeChangedObserverInterval:(id *)interval;
- (void)setVideoContentMode:(int64_t)mode;
- (void)unloadClipDataSourceSetPlaceHolder:(BOOL)holder;
- (void)unloadCompositionSetPlaceHolder:(BOOL)holder;
- (void)updateCachedPlaybackProperties;
- (void)updateDelegatePlayer;
- (void)updateVideoDisplayViewBounds;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
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

- (JFXCompositionPlayerViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = JFXCompositionPlayerViewController;
  v3 = [(JFXCompositionPlayerViewController *)&v6 initWithCoder:coder];
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
  playerContainerView = [(JFXCompositionPlayerViewController *)self playerContainerView];
  [playerContainerView setAlpha:0.0];

  v4 = [(JFXCompositionPlayerViewController *)self contentModeToVideoGravity:[(JFXCompositionPlayerViewController *)self videoContentMode]];
  playerViewer = [(JFXCompositionPlayerViewController *)self playerViewer];
  [playerViewer setVideoGravity:v4];

  playerViewer2 = [(JFXCompositionPlayerViewController *)self playerViewer];
  [playerViewer2 setShowAVControls:0];

  *&self->_playbackTimeChangedObserverInterval.value = kDefaultPlaybackTimeObserverInterval;
  self->_playbackTimeChangedObserverInterval.epoch = 0;
  [(JFXCompositionPlayerViewController *)self setRestoreToColor:0];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_appDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_appWillResignActive_ name:*MEMORY[0x277D76768] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_appDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = JFXCompositionPlayerViewController;
  [(JFXCompositionPlayerViewController *)&v4 dealloc];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = JFXCompositionPlayerViewController;
  [(JFXCompositionPlayerViewController *)&v5 viewDidAppear:appear];
  playerViewer = [(JFXCompositionPlayerViewController *)self playerViewer];
  [playerViewer addObserver:self forKeyPath:@"videoBounds" options:1 context:0];

  [(JFXCompositionPlayerViewController *)self updateDelegatePlayer];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = JFXCompositionPlayerViewController;
  [(JFXCompositionPlayerViewController *)&v5 viewDidDisappear:disappear];
  playerViewer = [(JFXCompositionPlayerViewController *)self playerViewer];
  [playerViewer removeObserver:self forKeyPath:@"videoBounds"];
}

- (void)viewDidLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = JFXCompositionPlayerViewController;
  [(JFXCompositionPlayerViewController *)&v12 viewDidLayoutSubviews];
  playerViewer = [(JFXCompositionPlayerViewController *)self playerViewer];
  [playerViewer displaySize];
  v5 = v4;
  v7 = v6;

  [(JFXCompositionPlayerViewController *)self lastPlayerViewSize];
  if (v5 != v9 || v7 != v8)
  {
    [(JFXCompositionPlayerViewController *)self setLastPlayerViewSize:v5, v7];
    clipsPlayer = [(JFXCompositionPlayerViewController *)self clipsPlayer];
    [clipsPlayer notifyPlayerViewSizeChanged];
  }
}

- (void)appDidBecomeActive:(id)active
{
  viewIfLoaded = [(JFXCompositionPlayerViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  if (window)
  {

    [(JFXCompositionPlayerViewController *)self reloadClipDataSourceOnBecomingActive];
  }
}

- (void)appDidEnterBackground:(id)background
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = JFXLog_DebugPlayback();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    displayName = [(JFXCompositionPlayerViewController *)self displayName];
    v6 = 138543362;
    v7 = displayName;
    _os_log_impl(&dword_242A3B000, v4, OS_LOG_TYPE_DEFAULT, "player %{public}@ entered background. will clear composition", &v6, 0xCu);
  }

  [(JFXCompositionPlayerViewController *)self unloadCompositionSetPlaceHolder:0];
}

- (void)appWillResignActive:(id)active
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
  clipsPlayer = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  isPlaying = [clipsPlayer isPlaying];

  if ((isPlaying & 1) == 0)
  {
    v5 = JFXLog_playback();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      displayName = [(JFXCompositionPlayerViewController *)self displayName];
      *buf = 138543362;
      v12 = displayName;
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

- (void)unloadClipDataSourceSetPlaceHolder:(BOOL)holder
{
  holderCopy = holder;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"mediaserverdCrashed" object:0];

  placeHolderView = [(JFXCompositionPlayerViewController *)self placeHolderView];

  if (!placeHolderView)
  {
    [(JFXCompositionPlayerViewController *)self preparePlaceHolder];
  }

  playerContainerView = [(JFXCompositionPlayerViewController *)self playerContainerView];
  [playerContainerView setAlpha:0.0];

  delegate = [(JFXCompositionPlayerViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(JFXCompositionPlayerViewController *)self delegate];
    [delegate2 updateFromPlayer:0];
  }

  clipsPlayer = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  [clipsPlayer teardownSetPlaceHolder:holderCopy];

  [(JFXCompositionPlayerViewController *)self setClipsPlayer:0];
}

- (void)setClipsDataSource:(id)source
{
  objc_storeWeak(&self->_clipsDataSource, source);

  [(JFXCompositionPlayerViewController *)self reloadClipDataSource];
}

- (void)reloadClipDataSourceOnBecomingActive
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = JFXLog_DebugPlayback();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    displayName = [(JFXCompositionPlayerViewController *)self displayName];
    v5 = 138543362;
    v6 = displayName;
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
      displayName = [(JFXCompositionPlayerViewController *)self displayName];
      v5 = 138543362;
      v6 = displayName;
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
    clipsPlayer = [(JFXCompositionPlayerViewController *)self clipsPlayer];
    v5 = clipsPlayer == 0;
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
  playerContainerView = [(JFXCompositionPlayerViewController *)self playerContainerView];
  [playerContainerView setAlpha:0.0];

  cachedCurrentTime = [(JFXCompositionPlayerViewController *)self cachedCurrentTime];
  cachedMuted = [(JFXCompositionPlayerViewController *)self cachedMuted];
  [(JFXCompositionPlayerViewController *)self setCachedCurrentTime:0];
  [(JFXCompositionPlayerViewController *)self setCachedMuted:0];
  [(JFXCompositionPlayerViewController *)self setCachedDuration:0];
  [(JFXCompositionPlayerViewController *)self setCachedRenderSizeInPixels:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  clipsPlayer = [(JFXCompositionPlayerViewController *)self clipsPlayer];

  if (clipsPlayer)
  {
    v7 = JFXLog_DebugPlayback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      displayName = [(JFXCompositionPlayerViewController *)self displayName];
      *buf = 138543362;
      *&buf[4] = displayName;
      _os_log_impl(&dword_242A3B000, v7, OS_LOG_TYPE_DEFAULT, "player %{public}@ reloading clip data source, tear down existing player", buf, 0xCu);
    }

    clipsPlayer2 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
    [clipsPlayer2 teardownSetPlaceHolder:1];
  }

  WeakRetained = objc_loadWeakRetained(&self->_clipsDataSource);

  if (WeakRetained)
  {
    v11 = objc_alloc([objc_opt_class() compositionPlayerClass]);
    v12 = objc_loadWeakRetained(&self->_clipsDataSource);
    v13 = [v11 initWithClipsDataSource:v12 seekPosition:cachedCurrentTime audioMuted:cachedMuted != 0];
    [(JFXCompositionPlayerViewController *)self setClipsPlayer:v13];

    displayName2 = [(JFXCompositionPlayerViewController *)self displayName];
    clipsPlayer3 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
    [clipsPlayer3 setDisplayName:displayName2];

    parentCode = [(JFXCompositionPlayerViewController *)self parentCode];
    clipsPlayer4 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
    [clipsPlayer4 setParentCode:parentCode];

    clipsPlayer5 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
    [clipsPlayer5 setPlaybackDelegate:self];

    [(JFXCompositionPlayerViewController *)self playbackTimeChangedObserverInterval];
    clipsPlayer6 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
    *buf = v30;
    v33 = v31;
    [clipsPlayer6 setPlaybackTimeChangedObserverInterval:buf];

    [(JFXCompositionPlayerViewController *)self beginFlash];
    objc_initWeak(buf, self);
    clipsPlayer7 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
    playerViewer = [(JFXCompositionPlayerViewController *)self playerViewer];
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __58__JFXCompositionPlayerViewController_reloadClipDataSource__block_invoke;
    v28 = &unk_278D7C648;
    objc_copyWeak(&v29, buf);
    [clipsPlayer7 setPlayerView:playerViewer completionBlock:&v25];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_mediaserverdCrashed name:@"mediaserverdCrashed" object:0];

    [(JFXCompositionPlayerViewController *)self setNeedsCompositionUpdate];
    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }

  else
  {
    videoDisplayOverlayView = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
    [videoDisplayOverlayView removeFromSuperview];

    [(JFXCompositionPlayerViewController *)self setVideoDisplayOverlayView:0];
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 removeObserver:self name:@"mediaserverdCrashed" object:0];

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
  clipsPlayer = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  [clipsPlayer pause:0];

  [(JFXCompositionPlayerViewController *)self beginFlash];
  objc_initWeak(&location, self);
  clipsPlayer2 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__JFXCompositionPlayerViewController_setNeedsCompositionUpdate__block_invoke;
  v5[3] = &unk_278D7C648;
  objc_copyWeak(&v6, &location);
  [clipsPlayer2 updateComposition:v5];

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

- (void)setNeedsCompositionUpdateForClip:(id)clip
{
  clipCopy = clip;
  objc_initWeak(&location, self);
  objc_initWeak(&from, clipCopy);
  [(JFXCompositionPlayerViewController *)self reloadClipDataSourceIfNeeded];
  clipsPlayer = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__JFXCompositionPlayerViewController_setNeedsCompositionUpdateForClip___block_invoke;
  v6[3] = &unk_278D7C670;
  objc_copyWeak(&v7, &from);
  objc_copyWeak(&v8, &location);
  v6[4] = self;
  [clipsPlayer updateCompositionForClip:clipCopy completion:v6];

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
  delegate = [(JFXCompositionPlayerViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(JFXCompositionPlayerViewController *)self delegate];
    playerViewer = [(JFXCompositionPlayerViewController *)self playerViewer];
    player = [playerViewer player];
    [delegate2 updateFromPlayer:player];
  }
}

- (void)dispatchBlockWhenDone:(id)done
{
  doneCopy = done;
  [(JFXCompositionPlayerViewController *)self reloadClipDataSourceIfNeeded];
  clipsPlayer = [(JFXCompositionPlayerViewController *)self clipsPlayer];

  if (clipsPlayer)
  {
    clipsPlayer2 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__JFXCompositionPlayerViewController_dispatchBlockWhenDone___block_invoke;
    v7[3] = &unk_278D7C698;
    v8 = doneCopy;
    [clipsPlayer2 dispatchBlockWhenDone:v7];
  }

  else
  {
    doneCopy[2](doneCopy);
  }
}

- (void)unloadCompositionSetPlaceHolder:(BOOL)holder
{
  holderCopy = holder;
  v5 = JFXPlaybackEventSignpostPointCategory();
  v6 = v5;
  v7 = JFXSignpostExclusiveID;
  if ((JFXSignpostExclusiveID - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_242A3B000, v6, OS_SIGNPOST_EVENT, v7, "UnloadComposition", &unk_242B66C87, v8, 2u);
  }

  [(JFXCompositionPlayerViewController *)self updateCachedPlaybackProperties];
  [(JFXCompositionPlayerViewController *)self unloadClipDataSourceSetPlaceHolder:holderCopy];
}

- (void)preparePlaceHolder
{
  v25 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  placeHolderView = [(JFXCompositionPlayerViewController *)self placeHolderView];
  if (!placeHolderView || (v4 = placeHolderView, -[JFXCompositionPlayerViewController placeHolderView](self, "placeHolderView"), v5 = objc_claimAutoreleasedReturnValue(), [v5 superview], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v4, !v6))
  {
    placeholderContainerView = [(JFXCompositionPlayerViewController *)self placeholderContainerView];

    if (placeholderContainerView)
    {
      v8 = JFXLog_DebugPlayback();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        displayName = [(JFXCompositionPlayerViewController *)self displayName];
        v23 = 138543362;
        v24 = displayName;
        _os_log_impl(&dword_242A3B000, v8, OS_LOG_TYPE_DEFAULT, "player %{public}@ placeholder prepared", &v23, 0xCu);
      }

      playerContainerView = [(JFXCompositionPlayerViewController *)self playerContainerView];
      v11 = [playerContainerView snapshotViewAfterScreenUpdates:0];
      [(JFXCompositionPlayerViewController *)self setPlaceHolderView:v11];

      playerContainerView2 = [(JFXCompositionPlayerViewController *)self playerContainerView];
      [playerContainerView2 bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      placeHolderView2 = [(JFXCompositionPlayerViewController *)self placeHolderView];
      [placeHolderView2 setFrame:{v14, v16, v18, v20}];

      placeHolderView3 = [(JFXCompositionPlayerViewController *)self placeHolderView];
      [placeHolderView3 setAutoresizingMask:18];
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
    displayName = [(JFXCompositionPlayerViewController *)self displayName];
    v5 = 138543362;
    v6 = displayName;
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
  placeHolderView = [(JFXCompositionPlayerViewController *)self placeHolderView];
  if (placeHolderView)
  {
    v4 = placeHolderView;
    placeholderContainerView = [(JFXCompositionPlayerViewController *)self placeholderContainerView];
    if (placeholderContainerView)
    {
      v6 = placeholderContainerView;
      placeHolderView2 = [(JFXCompositionPlayerViewController *)self placeHolderView];
      superview = [placeHolderView2 superview];

      if (!superview)
      {
        v9 = JFXLog_DebugPlayback();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          displayName = [(JFXCompositionPlayerViewController *)self displayName];
          v32 = 138543362;
          v33 = displayName;
          _os_log_impl(&dword_242A3B000, v9, OS_LOG_TYPE_DEFAULT, "player %{public}@ placeholder displayed", &v32, 0xCu);
        }

        [MEMORY[0x277CD9FF0] begin];
        [MEMORY[0x277CD9FF0] setDisableActions:1];
        playerContainerView = [(JFXCompositionPlayerViewController *)self playerContainerView];
        [playerContainerView bounds];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;

        placeHolderView3 = [(JFXCompositionPlayerViewController *)self placeHolderView];
        [placeHolderView3 frame];
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
          placeHolderView4 = [(JFXCompositionPlayerViewController *)self placeHolderView];
          [placeHolderView4 setFrame:{v13, v15, v17, v19}];
        }

        placeholderContainerView2 = [(JFXCompositionPlayerViewController *)self placeholderContainerView];
        placeHolderView5 = [(JFXCompositionPlayerViewController *)self placeHolderView];
        [placeholderContainerView2 addSubview:placeHolderView5];

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
  placeHolderView = [(JFXCompositionPlayerViewController *)self placeHolderView];
  if (placeHolderView)
  {
    v4 = placeHolderView;
    playerContainerView = [(JFXCompositionPlayerViewController *)self playerContainerView];
    [playerContainerView alpha];
    v7 = v6;

    if (v7 != 0.0)
    {
      v8 = JFXLog_DebugPlayback();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        displayName = [(JFXCompositionPlayerViewController *)self displayName];
        *buf = 138543362;
        v27 = displayName;
        _os_log_impl(&dword_242A3B000, v8, OS_LOG_TYPE_DEFAULT, "player %{public}@ placeholder removed", buf, 0xCu);
      }

      delegate = [(JFXCompositionPlayerViewController *)self delegate];
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        delegate2 = [(JFXCompositionPlayerViewController *)self delegate];
        v13 = [delegate2 animationPropertiesForCompositionTransition:self];
      }

      else
      {
        v13 = 0;
      }

      placeHolderView2 = [(JFXCompositionPlayerViewController *)self placeHolderView];
      [(JFXCompositionPlayerViewController *)self setPlaceHolderView:0];
      if (!v13 || ([v13 animationDuration], v15 == 0.0))
      {
        [placeHolderView2 removeFromSuperview];
      }

      else
      {
        timingParameters = [v13 timingParameters];
        if (!timingParameters)
        {
          timingParameters = [objc_alloc(MEMORY[0x277D753D0]) initWithAnimationCurve:0];
        }

        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __55__JFXCompositionPlayerViewController_removePlaceHolder__block_invoke;
        v23[3] = &unk_278D79C88;
        v24 = placeHolderView2;
        v25 = v13;
        [v25 animationDuration];
        v18 = v17;
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __55__JFXCompositionPlayerViewController_removePlaceHolder__block_invoke_2;
        v21[3] = &unk_278D7B1A0;
        v22 = v24;
        [JTAnimation performAnimation:v23 timingParameters:timingParameters duration:v21 completion:v18 delay:0.0];
      }
    }
  }

  if ([(JFXCompositionPlayerViewController *)self dontRemovePlaceHolderOnDisplay])
  {
    v19 = JFXLog_DebugPlayback();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      displayName2 = [(JFXCompositionPlayerViewController *)self displayName];
      *buf = 138543362;
      v27 = displayName2;
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
  clipsPlayer = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  if (clipsPlayer)
  {
    clipsPlayer2 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
    clipsPlayer3 = clipsPlayer2;
    if (clipsPlayer2)
    {
      [clipsPlayer2 currentCMTime];
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
    cachedCurrentTime = [(JFXCompositionPlayerViewController *)self cachedCurrentTime];
    clipsPlayer3 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
    clipsDataSource = [clipsPlayer3 clipsDataSource];
    CMTimeFromFrameTime(cachedCurrentTime, [clipsDataSource timeScale], retstr);
  }

  return result;
}

- (int)currentTime
{
  clipsPlayer = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  if (clipsPlayer)
  {
    clipsPlayer2 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
    currentTime = [clipsPlayer2 currentTime];
  }

  else
  {
    currentTime = [(JFXCompositionPlayerViewController *)self cachedCurrentTime];
  }

  return currentTime;
}

- (CGSize)renderSizeInPixels
{
  clipsPlayer = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  if (clipsPlayer)
  {
    clipsPlayer2 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
    [clipsPlayer2 renderSize];
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
  clipsPlayer = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  if (clipsPlayer)
  {
    clipsPlayer2 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
    duration = [clipsPlayer2 duration];
  }

  else
  {
    duration = [(JFXCompositionPlayerViewController *)self cachedDuration];
  }

  return duration;
}

- (void)seekToTime:(int)time
{
  v3 = *&time;
  [(JFXCompositionPlayerViewController *)self reloadClipDataSourceIfNeeded];
  clipsPlayer = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__JFXCompositionPlayerViewController_seekToTime___block_invoke;
  v6[3] = &unk_278D7C6C0;
  v6[4] = self;
  v7 = v3;
  [clipsPlayer seek:v3 tolerance:0 completion:v6];
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
  clipsDataSource = [(JFXCompositionPlayerViewController *)self clipsDataSource];
  frameRate = [clipsDataSource frameRate];

  return frameRate;
}

- (void)setPlaybackTimeChangedObserverInterval:(id *)interval
{
  [(JFXCompositionPlayerViewController *)self reloadClipDataSourceIfNeeded];
  var3 = interval->var3;
  *&self->_playbackTimeChangedObserverInterval.value = *&interval->var0;
  self->_playbackTimeChangedObserverInterval.epoch = var3;
  v6 = [(JFXCompositionPlayerViewController *)self clipsPlayer:interval->var0];
  [v6 setPlaybackTimeChangedObserverInterval:&v7];
}

- (void)resetPlaybackTimeChangedObserverInterval
{
  clipsPlayer = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  [clipsPlayer resetPlaybackTimeChangedObserverInterval];

  memset(&v8, 0, sizeof(v8));
  clipsPlayer2 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  v5 = clipsPlayer2;
  if (clipsPlayer2)
  {
    [clipsPlayer2 playbackTimeChangedObserverInterval];
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

- (void)playWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(JFXCompositionPlayerViewController *)self reloadClipDataSourceIfNeeded];
  clipsPlayer = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__JFXCompositionPlayerViewController_playWithCompletionHandler___block_invoke;
  v7[3] = &unk_278D7C6E8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [clipsPlayer play:v7];
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
  clipsPlayer = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  isPlaying = [clipsPlayer isPlaying];

  return isPlaying;
}

- (void)pauseWithCompletionBlock:(id)block
{
  blockCopy = block;
  [(JFXCompositionPlayerViewController *)self reloadClipDataSourceIfNeeded];
  clipsPlayer = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__JFXCompositionPlayerViewController_pauseWithCompletionBlock___block_invoke;
  v7[3] = &unk_278D7C710;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [clipsPlayer pause:v7];
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

- (void)setMuted:(BOOL)muted
{
  mutedCopy = muted;
  [(JFXCompositionPlayerViewController *)self reloadClipDataSourceIfNeeded];
  clipsPlayer = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  [clipsPlayer setAudioMuted:mutedCopy completionBlock:0];

  [(JFXCompositionPlayerViewController *)self setCachedMuted:mutedCopy];
}

- (BOOL)isMuted
{
  clipsPlayer = [(JFXCompositionPlayerViewController *)self clipsPlayer];
  if (clipsPlayer)
  {
    clipsPlayer2 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
    isAudioMuted = [clipsPlayer2 isAudioMuted];
  }

  else
  {
    isAudioMuted = [(JFXCompositionPlayerViewController *)self cachedMuted]!= 0;
  }

  return isAudioMuted;
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

- (void)playbackTimeDidChange:(id)change currentTime:(int)time
{
  v4 = *&time;
  delegate = [(JFXCompositionPlayerViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    clipsDataSource = [(JFXCompositionPlayerViewController *)self clipsDataSource];
    duration = [clipsDataSource duration];

    [(JFXCompositionPlayerViewController *)self setCachedDuration:duration];
    [(JFXCompositionPlayerViewController *)self setCachedCurrentTime:v4];
    if (duration >= v4)
    {
      v4 = v4;
    }

    else
    {
      v4 = duration;
    }

    delegate2 = [(JFXCompositionPlayerViewController *)self delegate];
    [delegate2 playbackTimeDidChange:self currentTime:v4];
  }
}

- (void)playbackDidStart:(id)start
{
  [(JFXCompositionPlayerViewController *)self setCachedWasPlaying:1];
  delegate = [(JFXCompositionPlayerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(JFXCompositionPlayerViewController *)self delegate];
    [delegate2 playbackDidStart:self];
  }
}

- (void)playbackDidStop:(id)stop currentTime:(int)time
{
  v4 = *&time;
  [(JFXCompositionPlayerViewController *)self setCachedWasPlaying:0];
  delegate = [(JFXCompositionPlayerViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(JFXCompositionPlayerViewController *)self delegate];
    [delegate2 playbackDidStop:self currentTime:v4];
  }
}

- (void)playbackReadyForDisplayChanged:(id)changed isReady:(BOOL)ready setPlaceHolder:(BOOL)holder
{
  holderCopy = holder;
  readyCopy = ready;
  if (ready)
  {
    [(JFXCompositionPlayerViewController *)self renderSizeInPixels];
    [(JFXCompositionPlayerViewController *)self setCachedRenderSizeInPixels:?];
  }

  [(JFXCompositionPlayerViewController *)self playerBecameReadyForDisplayChanged:readyCopy setPlaceHolder:holderCopy];
}

- (void)playerWillBeDestroyed:(id)destroyed
{
  delegate = [(JFXCompositionPlayerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(JFXCompositionPlayerViewController *)self delegate];
    [delegate2 updateFromPlayer:0];
  }
}

- (void)playerBecameReadyForDisplayChanged:(BOOL)changed setPlaceHolder:(BOOL)holder
{
  holderCopy = holder;
  changedCopy = changed;
  v22 = *MEMORY[0x277D85DE8];
  v7 = JFXLog_DebugPlayback();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    displayName = [(JFXCompositionPlayerViewController *)self displayName];
    v9 = displayName;
    v10 = @"NO";
    if (changedCopy)
    {
      v10 = @"YES";
    }

    v18 = 138543618;
    v19 = displayName;
    v20 = 2114;
    v21 = v10;
    _os_log_impl(&dword_242A3B000, v7, OS_LOG_TYPE_DEFAULT, "player %{public}@ readyForDisplay changed to %{public}@", &v18, 0x16u);
  }

  playerViewer = [(JFXCompositionPlayerViewController *)self playerViewer];
  isReadyForDisplay = [playerViewer isReadyForDisplay];

  if (changedCopy && (isReadyForDisplay & 1) == 0)
  {
    v13 = JFXLog_playback();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [JFXCompositionPlayerViewController playerBecameReadyForDisplayChanged:v13 setPlaceHolder:?];
    }

    playerContainerView = [(JFXCompositionPlayerViewController *)self playerContainerView];
    [playerContainerView setAlpha:0.0];

    goto LABEL_17;
  }

  if (changedCopy)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  playerContainerView2 = [(JFXCompositionPlayerViewController *)self playerContainerView];
  [playerContainerView2 setAlpha:v15];

  if (!changedCopy)
  {
LABEL_17:
    if (holderCopy)
    {
      placeHolderView = [(JFXCompositionPlayerViewController *)self placeHolderView];

      if (!placeHolderView)
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"videoBounds"])
  {
    playerViewer = [(JFXCompositionPlayerViewController *)self playerViewer];
    [playerViewer videoBounds];
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
    [(JFXCompositionPlayerViewController *)&v19 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)setVideoContentMode:(int64_t)mode
{
  self->_videoContentMode = mode;
  v5 = [(JFXCompositionPlayerViewController *)self contentModeToVideoGravity:?];
  playerViewer = [(JFXCompositionPlayerViewController *)self playerViewer];
  [playerViewer setVideoGravity:v5];
}

- (id)contentModeToVideoGravity:(int64_t)gravity
{
  v3 = MEMORY[0x277CE5DC8];
  v4 = MEMORY[0x277CE5DD8];
  if (gravity != 1)
  {
    v4 = MEMORY[0x277CE5DD0];
  }

  if (gravity != 2)
  {
    v3 = v4;
  }

  return *v3;
}

- (CGRect)videoDisplayBounds
{
  playerViewer = [(JFXCompositionPlayerViewController *)self playerViewer];
  [playerViewer videoBounds];
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
  videoDisplayOverlayView = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
  [videoDisplayOverlayView removeFromSuperview];

  if ([(JFXCompositionPlayerViewController *)self disableVideoDisplayGestures])
  {
    view = [(JFXCompositionPlayerViewController *)self view];
    [view setUserInteractionEnabled:1];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(JFXCompositionPlayerViewController *)self setVideoDisplayOverlayView:v4];

    LODWORD(v4) = [(JFXCompositionPlayerViewController *)self disableVideoDisplayGestures];
    view2 = [(JFXCompositionPlayerViewController *)self view];
    [view2 setUserInteractionEnabled:v4 ^ 1];

    [(JFXCompositionPlayerViewController *)self updateVideoDisplayViewBounds];

    [(JFXCompositionPlayerViewController *)self installVideoDisplayGestures];
  }
}

- (void)updateVideoDisplayViewBounds
{
  playerViewer = [(JFXCompositionPlayerViewController *)self playerViewer];
  [playerViewer videoBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  videoDisplayOverlayView = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
  if (videoDisplayOverlayView)
  {
    v13 = videoDisplayOverlayView;
    v21.origin.x = v5;
    v21.origin.y = v7;
    v21.size.width = v9;
    v21.size.height = v11;
    IsNull = CGRectIsNull(v21);

    if (!IsNull)
    {
      videoDisplayOverlayView2 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
      [videoDisplayOverlayView2 setFrame:{v5, v7, v9, v11}];

      videoDisplayOverlayView3 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
      superview = [videoDisplayOverlayView3 superview];

      if (!superview)
      {
        view = [(JFXCompositionPlayerViewController *)self view];
        videoDisplayOverlayView4 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
        [view addSubview:videoDisplayOverlayView4];
      }
    }
  }
}

- (CGSize)playerViewBoundsSize
{
  playerViewer = [(JFXCompositionPlayerViewController *)self playerViewer];
  [playerViewer videoBounds];
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

- (CGPoint)convertPointInPlaybackSizeToClipPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(JFXCompositionPlayerViewController *)self playerViewBoundsSize];
  v7 = v6;
  v9 = v8;
  clipsDataSource = [(JFXCompositionPlayerViewController *)self clipsDataSource];
  [clipsDataSource renderSize];
  v12 = v11;
  v14 = v13;

  v15 = x * (v12 / v7);
  v16 = y * (v14 / v9);
  result.y = v16;
  result.x = v15;
  return result;
}

- (CGPoint)convertPointInPlaybackSizeToClipPointNormalized:(CGPoint)normalized
{
  y = normalized.y;
  x = normalized.x;
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

- (void)setDisableVideoDisplayGestures:(BOOL)gestures
{
  gesturesCopy = gestures;
  self->_disableVideoDisplayGestures = gestures;
  view = [(JFXCompositionPlayerViewController *)self view];
  [view setUserInteractionEnabled:!gesturesCopy];
}

- (void)installVideoDisplayGestures
{
  view = [(JFXCompositionPlayerViewController *)self view];
  gestureRecognizers = [view gestureRecognizers];
  v5 = [gestureRecognizers count];

  if (!v5)
  {
    v15 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_playbackAreaTapped_];
    [v15 setDelegate:self];
    view2 = [(JFXCompositionPlayerViewController *)self view];
    [view2 addGestureRecognizer:v15];

    v7 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_playbackAreaPanned_];
    [v7 setDelegate:self];
    view3 = [(JFXCompositionPlayerViewController *)self view];
    [view3 addGestureRecognizer:v7];

    v9 = [objc_alloc(MEMORY[0x277D75848]) initWithTarget:self action:sel_playbackAreaPinched_];
    [v9 setDelegate:self];
    view4 = [(JFXCompositionPlayerViewController *)self view];
    [view4 addGestureRecognizer:v9];

    v11 = [objc_alloc(MEMORY[0x277D75938]) initWithTarget:self action:sel_playbackAreaRotated_];
    [v11 setDelegate:self];
    view5 = [(JFXCompositionPlayerViewController *)self view];
    [view5 addGestureRecognizer:v11];

    v13 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_playbackAreaDoubleTapped_];
    [v13 setNumberOfTapsRequired:2];
    view6 = [(JFXCompositionPlayerViewController *)self view];
    [view6 addGestureRecognizer:v13];
  }
}

- (void)playbackAreaTapped:(id)tapped
{
  tappedCopy = tapped;
  videoDisplayOverlayView = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
  if (videoDisplayOverlayView)
  {
    v5 = videoDisplayOverlayView;
    delegate = [(JFXCompositionPlayerViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      videoDisplayOverlayView2 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
      [tappedCopy locationInView:videoDisplayOverlayView2];
      v10 = v9;
      v12 = v11;

      [(JFXCompositionPlayerViewController *)self convertPointInPlaybackSizeToClipPointNormalized:v10, v12];
      v14 = v13;
      v16 = v15;
      [(JFXCompositionPlayerViewController *)self normalizedMinimumTouchSize];
      v18 = v17;
      v20 = v19;
      delegate2 = [(JFXCompositionPlayerViewController *)self delegate];
      clipsPlayer = [(JFXCompositionPlayerViewController *)self clipsPlayer];
      [delegate2 playbackAreaTapped:self normalizedClipPoint:objc_msgSend(clipsPlayer normalizedMinimumSize:"currentTime") atTime:{v14, v16, v18, v20}];
    }
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
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

- (void)playbackAreaPanned:(id)panned
{
  pannedCopy = panned;
  videoDisplayOverlayView = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
  if (videoDisplayOverlayView)
  {
    v5 = videoDisplayOverlayView;
    delegate = [(JFXCompositionPlayerViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      videoDisplayOverlayView2 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
      [pannedCopy locationInView:videoDisplayOverlayView2];
      v10 = v9;
      v12 = v11;

      videoDisplayOverlayView3 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
      [pannedCopy translationInView:videoDisplayOverlayView3];
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
      delegate2 = [(JFXCompositionPlayerViewController *)self delegate];
      clipsPlayer = [(JFXCompositionPlayerViewController *)self clipsPlayer];
      currentTime = [clipsPlayer currentTime];
      clipsPlayer2 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
      clipsDataSource = [clipsPlayer2 clipsDataSource];
      [delegate2 playbackAreaPanned:self gesture:pannedCopy normalizedClipPoint:currentTime normalizedMinimumSize:objc_msgSend(clipsDataSource translationDelta:"timeScale") atTime:v19 timeScale:{v21, v27, v29, v23, v25}];
    }
  }

  videoDisplayOverlayView4 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
  [pannedCopy setTranslation:videoDisplayOverlayView4 inView:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
}

- (void)playbackAreaPinched:(id)pinched
{
  pinchedCopy = pinched;
  videoDisplayOverlayView = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
  if (videoDisplayOverlayView)
  {
    v5 = videoDisplayOverlayView;
    delegate = [(JFXCompositionPlayerViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      playerViewer = [(JFXCompositionPlayerViewController *)self playerViewer];
      [playerViewer videoBounds];
      v10 = v9;
      v12 = v11;

      videoDisplayOverlayView2 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
      [videoDisplayOverlayView2 bounds];
      v15 = v14;
      v17 = v16;

      if (v10 > 0.0 && v12 > 0.0 && v15 > 0.0 && v17 > 0.0)
      {
        v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(pinchedCopy, "numberOfTouches")}];
        if ([pinchedCopy numberOfTouches])
        {
          v19 = 0;
          do
          {
            videoDisplayOverlayView3 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
            [pinchedCopy locationOfTouch:v19 inView:videoDisplayOverlayView3];
            v22 = v21;
            v24 = v23;

            [(JFXCompositionPlayerViewController *)self convertPointInPlaybackSizeToClipPointNormalized:v22, v24];
            v25 = [MEMORY[0x277CCAE60] valueWithCGPoint:?];
            [v18 addObject:v25];

            ++v19;
          }

          while (v19 < [pinchedCopy numberOfTouches]);
        }

        videoDisplayOverlayView4 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
        [pinchedCopy locationInView:videoDisplayOverlayView4];
        v28 = v27;
        v30 = v29;

        v31 = v28 / v15;
        v32 = v30 / v17;
        [(JFXCompositionPlayerViewController *)self normalizedMinimumTouchSize];
        v34 = v33;
        v36 = v35;
        delegate2 = [(JFXCompositionPlayerViewController *)self delegate];
        [pinchedCopy scale];
        v39 = v38;
        clipsPlayer = [(JFXCompositionPlayerViewController *)self clipsPlayer];
        currentTime = [clipsPlayer currentTime];
        clipsPlayer2 = [(JFXCompositionPlayerViewController *)self clipsPlayer];
        clipsDataSource = [clipsPlayer2 clipsDataSource];
        [delegate2 playbackAreaPinched:self gesture:pinchedCopy normalizedClipPoints:v18 normalizedCenterPoint:currentTime normalizedMinimumSize:objc_msgSend(clipsDataSource scaleDelta:"timeScale") atTime:v31 timeScale:{v32, v34, v36, v39}];
      }
    }
  }

  [pinchedCopy setScale:1.0];
}

- (void)playbackAreaRotated:(id)rotated
{
  rotatedCopy = rotated;
  videoDisplayOverlayView = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
  if (videoDisplayOverlayView)
  {
    v5 = videoDisplayOverlayView;
    delegate = [(JFXCompositionPlayerViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      playerViewer = [(JFXCompositionPlayerViewController *)self playerViewer];
      [playerViewer videoBounds];
      v10 = v9;
      v12 = v11;

      videoDisplayOverlayView2 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
      [videoDisplayOverlayView2 bounds];
      v15 = v14;
      v17 = v16;

      if (v10 > 0.0 && v12 > 0.0 && v15 > 0.0 && v17 > 0.0)
      {
        v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(rotatedCopy, "numberOfTouches")}];
        if ([rotatedCopy numberOfTouches])
        {
          v19 = 0;
          do
          {
            videoDisplayOverlayView3 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
            [rotatedCopy locationOfTouch:v19 inView:videoDisplayOverlayView3];
            v22 = v21;
            v24 = v23;

            [(JFXCompositionPlayerViewController *)self convertPointInPlaybackSizeToClipPointNormalized:v22, v24];
            v25 = [MEMORY[0x277CCAE60] valueWithCGPoint:?];
            [v18 addObject:v25];

            ++v19;
          }

          while (v19 < [rotatedCopy numberOfTouches]);
        }

        videoDisplayOverlayView4 = [(JFXCompositionPlayerViewController *)self videoDisplayOverlayView];
        [rotatedCopy locationInView:videoDisplayOverlayView4];
        v28 = v27;
        v30 = v29;

        v31 = v28 / v15;
        v32 = v30 / v17;
        [(JFXCompositionPlayerViewController *)self normalizedMinimumTouchSize];
        v34 = v33;
        v36 = v35;
        delegate2 = [(JFXCompositionPlayerViewController *)self delegate];
        [rotatedCopy rotation];
        v39 = v38;
        clipsPlayer = [(JFXCompositionPlayerViewController *)self clipsPlayer];
        [delegate2 playbackAreaRotated:self gesture:rotatedCopy normalizedClipPoints:v18 normalizedCenterPoint:objc_msgSend(clipsPlayer normalizedMinimumSize:"currentTime") rotateDelta:v31 atTime:{v32, v34, v36, v39}];
      }
    }
  }

  [rotatedCopy setRotation:0.0];
}

- (void)playbackAreaDoubleTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [(JFXCompositionPlayerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(JFXCompositionPlayerViewController *)self delegate];
    [delegate2 playbackAreaDoubleTapped:tappedCopy];
  }
}

- (id)viewToFlash
{
  view = [(JFXCompositionPlayerViewController *)self view];
  superview = [view superview];
  v3Superview = [superview superview];
  v4Superview = [v3Superview superview];
  v5Superview = [v4Superview superview];
  v6Superview = [v5Superview superview];
  v7Superview = [v6Superview superview];

  return v7Superview;
}

- (void)beginFlash
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"flashViewOnCompositionUpdate"];

  if (v4)
  {
    viewToFlash = [(JFXCompositionPlayerViewController *)self viewToFlash];
    backgroundColor = [viewToFlash backgroundColor];

    if (backgroundColor)
    {
      purpleColor = [MEMORY[0x277D75348] purpleColor];
      v7 = [backgroundColor isEqual:purpleColor];

      if ((v7 & 1) == 0)
      {
        [(JFXCompositionPlayerViewController *)self setRestoreToColor:backgroundColor];
        purpleColor2 = [MEMORY[0x277D75348] purpleColor];
        viewToFlash2 = [(JFXCompositionPlayerViewController *)self viewToFlash];
        [viewToFlash2 setBackgroundColor:purpleColor2];

        viewToFlash3 = [(JFXCompositionPlayerViewController *)self viewToFlash];
        [(JFXCompositionPlayerViewController *)self setViewFlashed:viewToFlash3];
      }
    }
  }
}

- (void)endFlash
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"flashViewOnCompositionUpdate"];

  if (v4)
  {
    viewFlashed = [(JFXCompositionPlayerViewController *)self viewFlashed];
    backgroundColor = [viewFlashed backgroundColor];

    restoreToColor = [(JFXCompositionPlayerViewController *)self restoreToColor];
    if (restoreToColor && backgroundColor)
    {
      purpleColor = [MEMORY[0x277D75348] purpleColor];
      v8 = [backgroundColor isEqual:purpleColor];

      if (v8)
      {
        restoreToColor2 = [(JFXCompositionPlayerViewController *)self restoreToColor];
        viewFlashed2 = [(JFXCompositionPlayerViewController *)self viewFlashed];
        [viewFlashed2 setBackgroundColor:restoreToColor2];

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
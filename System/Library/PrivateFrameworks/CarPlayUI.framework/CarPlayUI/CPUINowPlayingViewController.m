@interface CPUINowPlayingViewController
- (BOOL)_isCarScene:(id)a3;
- (BOOL)_showsButtonSelectionsForTouch;
- (CGSize)nowPlayingMaxSize;
- (CPUINowPlayingViewController)initWithBundleIdentifier:(id)a3 dataSource:(id)a4 delegate:(id)a5;
- (CPUINowPlayingViewControllerDataSource)dataSource;
- (CPUINowPlayingViewControllerDelegate)delegate;
- (CPUIPlayModeControlView)playModeControlView;
- (CPUISongDetailsView)songDetailsView;
- (CPUITransportControlView)transportControlView;
- (id)_installedFullBackgroundArtworkViewBelowView:(id)a3;
- (id)_upNextBarButtonItem;
- (id)preferredFocusEnvironments;
- (void)_albumArtistButtonTapped:(id)a3;
- (void)_attributionButtonTapped:(id)a3;
- (void)_backButtonTapped:(id)a3;
- (void)_checkMetalRendering;
- (void)_deactivateStatusBarStyleOverrideIfNecessaryForScene:(id)a3;
- (void)_fastForwardButtonLongPress:(id)a3;
- (void)_fastForwardButtonTouchDown:(id)a3;
- (void)_fastForwardButtonTouchUp:(id)a3;
- (void)_handleVideoAvailabilityChanged:(id)a3;
- (void)_initializeTransportControls;
- (void)_leftButtonLongPress:(id)a3;
- (void)_leftButtonTouchDown:(id)a3;
- (void)_leftButtonTouchUp:(id)a3;
- (void)_playPauseButtonTouchDown:(id)a3;
- (void)_playPauseButtonTouchUp:(id)a3;
- (void)_recalculateLayout:(BOOL)a3;
- (void)_reloadDataForcingLayout:(BOOL)a3 updateControls:(BOOL)a4;
- (void)_respondToHeldAction;
- (void)_sceneDidActivate:(id)a3;
- (void)_sceneDidEnterBackground:(id)a3;
- (void)_sceneWillDeactivate:(id)a3;
- (void)_sceneWillEnterForeground:(id)a3;
- (void)_sendAction:(int64_t)a3 withState:(int64_t)a4;
- (void)_sendHeldAction;
- (void)_setNowPlayingNavBarActive:(BOOL)a3;
- (void)_setStatusBarOverrideActive:(BOOL)a3;
- (void)_updateArtworkViewIfNeeded:(id)a3 placeholder:(id)a4;
- (void)_updateArtworkViewVideoPlaybackState;
- (void)_updateAudioRenderingMode:(int64_t)a3;
- (void)_updatePlayModesState;
- (void)_updatePlaybackRate;
- (void)_updateRepeatStateWithType:(int64_t)a3;
- (void)_updateShuffleAndRepeatButtons;
- (void)_updateShuffleStateWithType:(int64_t)a3;
- (void)_updateTransportControl:(id)a3 withDefaultImage:(id)a4 actionType:(int64_t)a5;
- (void)dealloc;
- (void)environmentMonitorDidChangeThermalLevel:(id)a3;
- (void)nowPlayingAudioFormatController:(id)a3 didChangeAudioFormatContentInfo:(id)a4;
- (void)nowPlayingViewWantsToShowVideo:(id)a3;
- (void)playModeControlView:(id)a3 didSelectButton:(id)a4;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesChanged:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)reloadData;
- (void)setDataSource:(id)a3;
- (void)setDelegate:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)upNextButtonTapped:(id)a3;
- (void)updatePlayControls;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CPUINowPlayingViewController

- (CPUINowPlayingViewController)initWithBundleIdentifier:(id)a3 dataSource:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v33.receiver = self;
  v33.super_class = CPUINowPlayingViewController;
  v12 = [(CPUINowPlayingViewController *)&v33 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_dataSource, v10);
    objc_storeWeak(&v13->_delegate, v11);
    objc_storeStrong(&v13->_bundleIdentifier, a3);
    nowPlayingSizeConstraints = v13->_nowPlayingSizeConstraints;
    v13->_nowPlayingSizeConstraints = MEMORY[0x277CBEBF8];

    v15 = objc_alloc_init(MEMORY[0x277CCABD8]);
    artworkOperationQueue = v13->_artworkOperationQueue;
    v13->_artworkOperationQueue = v15;

    [(NSOperationQueue *)v13->_artworkOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v13->_artworkOperationQueue setName:@"Now Playing Artwork Queue"];
    [(NSOperationQueue *)v13->_artworkOperationQueue setQualityOfService:33];
    v17 = [objc_alloc(MEMORY[0x277CF9348]) initWithInterfaceStyle:2 colorVariant:-1];
    statusBarStyleAssertion = v13->_statusBarStyleAssertion;
    v13->_statusBarStyleAssertion = v17;

    v19 = objc_alloc_init(MEMORY[0x277D279B0]);
    audioFormatController = v13->_audioFormatController;
    v13->_audioFormatController = v19;

    [(MRNowPlayingAudioFormatController *)v13->_audioFormatController setDelegate:v13];
    v13->_lastRenderingMode = 0;
    __asm { FMOV            V0.2D, #1.0 }

    v13->_nowPlayingMaxSize = _Q0;
    v26 = objc_alloc_init(CPUIVideoAvailability);
    videoAvailability = v13->_videoAvailability;
    v13->_videoAvailability = v26;

    v28 = [MEMORY[0x277CCAB98] defaultCenter];
    [v28 addObserver:v13 selector:sel__handleVideoAvailabilityChanged_ name:@"CPUIVideoAvailabilityChangedNotification" object:0];

    [(CPUINowPlayingViewController *)v13 nowPlayingAudioFormatController:v13->_audioFormatController didChangeAudioFormatContentInfo:0];
    v29 = [MEMORY[0x277CF89D0] usesMetalNowPlayingArtwork];
    v30 = [v29 valueBool];

    if (v30)
    {
      v31 = [MEMORY[0x277D7FA90] sharedMonitor];
      [v31 registerObserver:v13];
    }
  }

  return v13;
}

- (void)dealloc
{
  [(CRSUIStatusBarStyleAssertion *)self->_statusBarStyleAssertion invalidate];
  statusBarStyleAssertion = self->_statusBarStyleAssertion;
  self->_statusBarStyleAssertion = 0;

  [(NSTimer *)self->_uiTimer invalidate];
  uiTimer = self->_uiTimer;
  self->_uiTimer = 0;

  v5 = [MEMORY[0x277CF89D0] usesMetalNowPlayingArtwork];
  v6 = [v5 valueBool];

  if (v6)
  {
    v7 = [MEMORY[0x277D7FA90] sharedMonitor];
    [v7 unregisterObserver:self];
  }

  v8.receiver = self;
  v8.super_class = CPUINowPlayingViewController;
  [(CPUINowPlayingViewController *)&v8 dealloc];
}

- (void)setDataSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(CPUINowPlayingViewController *)self reloadData];
    v5 = obj;
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(CPUINowPlayingViewController *)self reloadData];
    v5 = obj;
  }
}

- (void)reloadData
{
  if (self->_nowPlayingView)
  {

    [(CPUINowPlayingViewController *)self _reloadDataForcingLayout:0 updateControls:1];
  }

  else
  {
    v3 = CarPlayUIGeneralLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(CPUINowPlayingViewController *)v3 reloadData];
    }
  }
}

- (void)nowPlayingViewWantsToShowVideo:(id)a3
{
  v4 = CarPlayUIGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243134000, v4, OS_LOG_TYPE_DEFAULT, "setting CarPlay video active", buf, 2u);
  }

  v5 = [(CPUINowPlayingViewController *)self videoAvailability];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__CPUINowPlayingViewController_nowPlayingViewWantsToShowVideo___block_invoke;
  v6[3] = &unk_278D9C5F8;
  v6[4] = self;
  [v5 setVideoActive:1 completionHandler:v6];
}

void __63__CPUINowPlayingViewController_nowPlayingViewWantsToShowVideo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = CarPlayUIGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __63__CPUINowPlayingViewController_nowPlayingViewWantsToShowVideo___block_invoke_cold_1(v3, v4);
    }
  }

  else
  {
    v5 = [*(a1 + 32) dataSource];
    v6 = [v5 nowPlayingViewControllerIsPlaying:*(a1 + 32)];

    if ((v6 & 1) == 0)
    {
      [*(a1 + 32) _sendAction:2 withState:2];
    }
  }
}

- (void)_handleVideoAvailabilityChanged:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__CPUINowPlayingViewController__handleVideoAvailabilityChanged___block_invoke;
  block[3] = &unk_278D9C2D8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __64__CPUINowPlayingViewController__handleVideoAvailabilityChanged___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateArtworkViewVideoPlaybackState];
  v2 = *(a1 + 32);

  return [v2 _recalculateLayout:1];
}

- (void)playModeControlView:(id)a3 didSelectButton:(id)a4
{
  v30 = a3;
  v6 = a4;
  v7 = [v30 shuffleButton];
  v8 = v7;
  if (v7 == v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 nowPlayingViewControllerToggleShuffle:self];
      goto LABEL_23;
    }
  }

  else
  {
  }

  v12 = [v30 repeatButton];
  v13 = v12;
  if (v12 == v6)
  {
    v14 = objc_loadWeakRetained(&self->_delegate);
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 nowPlayingViewControllerToggleRepeat:self];
      goto LABEL_23;
    }
  }

  else
  {
  }

  v16 = [v30 moreButton];
  v17 = v16;
  if (v16 == v6)
  {
    v18 = objc_loadWeakRetained(&self->_delegate);
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 nowPlayingViewControllerMore:self];
      goto LABEL_23;
    }
  }

  else
  {
  }

  v20 = [v30 addToLibraryButton];
  v21 = v20;
  if (v20 == v6)
  {
    v22 = objc_loadWeakRetained(&self->_delegate);
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 nowPlayingViewControllerAddToLibrary:self];
      goto LABEL_23;
    }
  }

  else
  {
  }

  v24 = [v30 playbackRateButton];
  v25 = v24;
  if (v24 == v6)
  {
    v26 = objc_loadWeakRetained(&self->_delegate);
    v27 = objc_opt_respondsToSelector();

    if (v27)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 nowPlayingViewControllerChangePlaybackRate:self];
      goto LABEL_23;
    }
  }

  else
  {
  }

  v28 = objc_loadWeakRetained(&self->_delegate);
  v29 = objc_opt_respondsToSelector();

  if ((v29 & 1) == 0)
  {
    goto LABEL_24;
  }

  v11 = objc_loadWeakRetained(&self->_delegate);
  [v11 nowPlayingViewController:self didSelectButton:v6];
LABEL_23:

LABEL_24:
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CPUINowPlayingViewController;
  [(CPUINowPlayingViewController *)&v4 viewWillAppear:a3];
  [(CPUINowPlayingViewController *)self _setNowPlayingNavBarActive:1];
  [(CPUINowPlayingViewController *)self _setStatusBarOverrideActive:1];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CPUINowPlayingViewController;
  [(CPUINowPlayingViewController *)&v4 viewWillDisappear:a3];
  [(CPUINowPlayingViewController *)self _setStatusBarOverrideActive:0];
  [(CPUINowPlayingViewController *)self _setNowPlayingNavBarActive:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CPUINowPlayingViewController;
  [(CPUINowPlayingViewController *)&v6 viewDidAppear:a3];
  v4 = [MEMORY[0x277CF89D0] usesMetalNowPlayingArtwork];
  v5 = [v4 valueBool];

  if (v5)
  {
    [(CPUINowPlayingViewController *)self _checkMetalRendering];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = CPUINowPlayingViewController;
  [(CPUINowPlayingViewController *)&v7 viewDidDisappear:a3];
  v4 = [MEMORY[0x277CF89D0] usesMetalNowPlayingArtwork];
  v5 = [v4 valueBool];

  if (v5)
  {
    [(CPUINowPlayingViewController *)self _checkMetalRendering];
    [(CPUINowPlayingViewController *)self _setNowPlayingNavBarActive:0];
  }

  v6 = [(CPUINowPlayingViewController *)self uiTimer];
  [v6 invalidate];

  [(CPUINowPlayingViewController *)self setUiTimer:0];
}

- (void)viewDidLoad
{
  v93[4] = *MEMORY[0x277D85DE8];
  v90.receiver = self;
  v90.super_class = CPUINowPlayingViewController;
  [(CPUINowPlayingViewController *)&v90 viewDidLoad];
  v3 = [MEMORY[0x277D75348] tableBackgroundColor];
  v4 = [(CPUINowPlayingViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(CPUINowPlayingViewController *)self view];
  [v5 setAccessibilityIdentifier:@"CPNowPlayingView"];

  v6 = [CPUINowPlayingView alloc];
  v7 = [(CPUINowPlayingView *)v6 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  nowPlayingView = self->_nowPlayingView;
  self->_nowPlayingView = v7;

  v9 = [(CPUINowPlayingView *)self->_nowPlayingView songDetailsView];
  v10 = [v9 albumArtistLabelButton];
  [v10 addTarget:self action:sel__albumArtistButtonTapped_ forControlEvents:64];

  v11 = [(CPUINowPlayingView *)self->_nowPlayingView songDetailsView];
  v12 = [v11 attributionButton];
  [v12 addTarget:self action:sel__attributionButtonTapped_ forControlEvents:64];

  v13 = [(CPUINowPlayingView *)self->_nowPlayingView playModeControlView];
  [v13 setDelegate:self];

  [(CPUINowPlayingView *)self->_nowPlayingView setVideoDelegate:self];
  v14 = [MEMORY[0x277CF89D0] usesMetalNowPlayingArtwork];
  LODWORD(v12) = [v14 valueBool];

  if (v12)
  {
    v15 = objc_alloc_init(_TtC9CarPlayUI25CPUIArtworkBackgroundView);
    artworkBackgroundView = self->_artworkBackgroundView;
    self->_artworkBackgroundView = v15;

    [(CPUIArtworkBackgroundView *)self->_artworkBackgroundView setClipsToBounds:1];
    [(CPUIArtworkBackgroundView *)self->_artworkBackgroundView setContentMode:2];
    [(CPUIArtworkBackgroundView *)self->_artworkBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUIArtworkBackgroundView *)self->_artworkBackgroundView setOverrideUserInterfaceStyle:2];
    v17 = [(CPUIArtworkBackgroundView *)self->_artworkBackgroundView layer];
    [v17 setAllowsGroupBlending:0];

    v18 = [(CPUINowPlayingViewController *)self view];
    [v18 addSubview:self->_artworkBackgroundView];

    v74 = MEMORY[0x277CCAAD0];
    v86 = [(CPUIArtworkBackgroundView *)self->_artworkBackgroundView topAnchor];
    v88 = [(CPUINowPlayingViewController *)self view];
    v84 = [v88 topAnchor];
    v82 = [v86 constraintEqualToAnchor:v84];
    v93[0] = v82;
    v78 = [(CPUIArtworkBackgroundView *)self->_artworkBackgroundView bottomAnchor];
    v80 = [(CPUINowPlayingViewController *)self view];
    v76 = [v80 bottomAnchor];
    v72 = [v78 constraintEqualToAnchor:v76];
    v93[1] = v72;
    v19 = [(CPUIArtworkBackgroundView *)self->_artworkBackgroundView leadingAnchor];
    v20 = [(CPUINowPlayingViewController *)self view];
    v21 = [v20 leadingAnchor];
    v22 = [v19 constraintEqualToAnchor:v21];
    v93[2] = v22;
    v23 = [(CPUIArtworkBackgroundView *)self->_artworkBackgroundView trailingAnchor];
    v24 = [(CPUINowPlayingViewController *)self view];
    v25 = [v24 trailingAnchor];
    v26 = [v23 constraintEqualToAnchor:v25];
    v93[3] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:4];
    [v74 activateConstraints:v27];

    v28 = [(CPUINowPlayingViewController *)self view];
    [v28 addSubview:self->_nowPlayingView];
  }

  else
  {
    v29 = [(CPUINowPlayingViewController *)self _installedFullBackgroundArtworkViewBelowView:0];
    artworkView = self->_artworkView;
    self->_artworkView = v29;

    v89 = [MEMORY[0x277D75210] effectWithStyle:10];
    v31 = objc_alloc_init(MEMORY[0x277D75D68]);
    artworkVisualEffectView = self->_artworkVisualEffectView;
    self->_artworkVisualEffectView = v31;

    v92 = v89;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:1];
    [(UIVisualEffectView *)self->_artworkVisualEffectView setBackgroundEffects:v33];

    [(UIVisualEffectView *)self->_artworkVisualEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
    v34 = [(CPUINowPlayingViewController *)self view];
    [v34 addSubview:self->_artworkVisualEffectView];

    v73 = MEMORY[0x277CCAAD0];
    v85 = [(UIVisualEffectView *)self->_artworkVisualEffectView topAnchor];
    v87 = [(CPUINowPlayingViewController *)self view];
    v83 = [v87 topAnchor];
    v81 = [v85 constraintEqualToAnchor:v83];
    v91[0] = v81;
    v77 = [(UIVisualEffectView *)self->_artworkVisualEffectView bottomAnchor];
    v79 = [(CPUINowPlayingViewController *)self view];
    v75 = [v79 bottomAnchor];
    v71 = [v77 constraintEqualToAnchor:v75];
    v91[1] = v71;
    v70 = [(UIVisualEffectView *)self->_artworkVisualEffectView leadingAnchor];
    v35 = [(CPUINowPlayingViewController *)self view];
    v36 = [v35 leadingAnchor];
    v37 = [v70 constraintEqualToAnchor:v36];
    v91[2] = v37;
    v38 = [(UIVisualEffectView *)self->_artworkVisualEffectView trailingAnchor];
    v39 = [(CPUINowPlayingViewController *)self view];
    v40 = [v39 trailingAnchor];
    v41 = [v38 constraintEqualToAnchor:v40];
    v91[3] = v41;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:4];
    [v73 activateConstraints:v42];

    v43 = [(UIVisualEffectView *)self->_artworkVisualEffectView contentView];
    [v43 addSubview:self->_nowPlayingView];

    v28 = v89;
  }

  v44 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__leftNudgePress_];
  [(CPUINowPlayingViewController *)self setLeftNudgePressRecognizer:v44];

  v45 = [(CPUINowPlayingViewController *)self leftNudgePressRecognizer];
  [v45 setAllowedPressTypes:&unk_2855D8500];

  v46 = self->_nowPlayingView;
  v47 = [(CPUINowPlayingViewController *)self leftNudgePressRecognizer];
  [(CPUINowPlayingView *)v46 addGestureRecognizer:v47];

  v48 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__rightNudgePress_];
  [(CPUINowPlayingViewController *)self setRightNudgePressRecognizer:v48];

  v49 = [(CPUINowPlayingViewController *)self rightNudgePressRecognizer];
  [v49 setAllowedPressTypes:&unk_2855D8518];

  v50 = self->_nowPlayingView;
  v51 = [(CPUINowPlayingViewController *)self rightNudgePressRecognizer];
  [(CPUINowPlayingView *)v50 addGestureRecognizer:v51];

  v52 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__leftButtonLongPress_];
  [(CPUINowPlayingViewController *)self setLeftNudgeLongPressRecognizer:v52];

  v53 = [(CPUINowPlayingViewController *)self leftNudgeLongPressRecognizer];
  [v53 setAllowedPressTypes:&unk_2855D8530];

  v54 = [(CPUINowPlayingViewController *)self leftNudgeLongPressRecognizer];
  v55 = [(CPUINowPlayingViewController *)self leftNudgePressRecognizer];
  [v54 requireGestureRecognizerToFail:v55];

  v56 = self->_nowPlayingView;
  v57 = [(CPUINowPlayingViewController *)self leftNudgeLongPressRecognizer];
  [(CPUINowPlayingView *)v56 addGestureRecognizer:v57];

  v58 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__fastForwardButtonLongPress_];
  [(CPUINowPlayingViewController *)self setRightNudgeLongPressRecognizer:v58];

  v59 = [(CPUINowPlayingViewController *)self rightNudgeLongPressRecognizer];
  [v59 setAllowedPressTypes:&unk_2855D8548];

  v60 = [(CPUINowPlayingViewController *)self rightNudgeLongPressRecognizer];
  v61 = [(CPUINowPlayingViewController *)self rightNudgePressRecognizer];
  [v60 requireGestureRecognizerToFail:v61];

  v62 = self->_nowPlayingView;
  v63 = [(CPUINowPlayingViewController *)self rightNudgeLongPressRecognizer];
  [(CPUINowPlayingView *)v62 addGestureRecognizer:v63];

  [(CPUINowPlayingViewController *)self _initializeTransportControls];
  [(CPUINowPlayingViewController *)self setOverrideUserInterfaceStyle:2];
  v64 = [MEMORY[0x277CCAB98] defaultCenter];
  [v64 addObserver:self selector:sel__sceneWillEnterForeground_ name:*MEMORY[0x277D76E80] object:0];

  v65 = [MEMORY[0x277CCAB98] defaultCenter];
  [v65 addObserver:self selector:sel__sceneDidActivate_ name:*MEMORY[0x277D76E48] object:0];

  v66 = [MEMORY[0x277CCAB98] defaultCenter];
  [v66 addObserver:self selector:sel__sceneWillDeactivate_ name:*MEMORY[0x277D76E78] object:0];

  v67 = [MEMORY[0x277CCAB98] defaultCenter];
  [v67 addObserver:self selector:sel__sceneDidEnterBackground_ name:*MEMORY[0x277D76E58] object:0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
  }

  else
  {
    v69 = objc_loadWeakRetained(&self->_dataSource);

    if (!v69)
    {
      return;
    }
  }

  [(CPUINowPlayingViewController *)self reloadData];
}

- (void)_backButtonTapped:(id)a3
{
  v4 = [(CPUINowPlayingViewController *)self navigationController];
  v3 = [v4 popViewControllerAnimated:1];
}

- (CPUITransportControlView)transportControlView
{
  v2 = [(CPUINowPlayingViewController *)self nowPlayingView];
  v3 = [v2 transportControlView];

  return v3;
}

- (CPUIPlayModeControlView)playModeControlView
{
  v2 = [(CPUINowPlayingViewController *)self nowPlayingView];
  v3 = [v2 playModeControlView];

  return v3;
}

- (CPUISongDetailsView)songDetailsView
{
  v2 = [(CPUINowPlayingViewController *)self nowPlayingView];
  v3 = [v2 songDetailsView];

  return v3;
}

- (void)environmentMonitorDidChangeThermalLevel:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__CPUINowPlayingViewController_environmentMonitorDidChangeThermalLevel___block_invoke;
  block[3] = &unk_278D9C2D8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __72__CPUINowPlayingViewController_environmentMonitorDidChangeThermalLevel___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isViewLoaded];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _checkMetalRendering];
  }

  return result;
}

- (id)preferredFocusEnvironments
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [(CPUINowPlayingViewController *)self transportControlView];
  v3 = [v2 playPauseButton];

  if (v3)
  {
    v6[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (void)_setStatusBarOverrideActive:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__CPUINowPlayingViewController__setStatusBarOverrideActive___block_invoke;
  v3[3] = &unk_278D9C620;
  v3[4] = self;
  v4 = a3;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __60__CPUINowPlayingViewController__setStatusBarOverrideActive___block_invoke(uint64_t a1)
{
  v8 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  v2 = [MEMORY[0x277CF0B70] settingsWithDuration:0.35 timingFunction:?];
  v3 = [*(a1 + 32) statusBarStyleAssertion];
  v4 = [v3 isValid];

  v5 = *(a1 + 40);
  if (v5 != v4)
  {
    v6 = [*(a1 + 32) statusBarStyleAssertion];
    v7 = v6;
    if (v5)
    {
      [v6 acquireWithAnimationSettings:v2];
    }

    else
    {
      [v6 relinquishWithAnimationSettings:v2];
    }
  }
}

- (void)_setNowPlayingNavBarActive:(BOOL)a3
{
  v3 = a3;
  v4 = [(CPUINowPlayingViewController *)self navigationController];
  v7 = [v4 navigationBar];

  if (v3)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  if (v3)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  [v7 setBarStyle:v5];
  [v7 setOverrideUserInterfaceStyle:v6];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CPUINowPlayingViewController;
  [(CPUINowPlayingViewController *)&v4 traitCollectionDidChange:a3];
  [(CPUINowPlayingViewController *)self _reloadDataForcingLayout:1 updateControls:0];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = CPUINowPlayingViewController;
  [(CPUINowPlayingViewController *)&v4 viewDidLayoutSubviews];
  [(CPUINowPlayingViewController *)self _recalculateLayout:0];
  v3 = [(CPUINowPlayingViewController *)self view];
  [v3 bounds];
  [(CABackdropLayer *)self->_backdropLayer setFrame:?];
}

- (void)_recalculateLayout:(BOOL)a3
{
  v3 = a3;
  v79[4] = *MEMORY[0x277D85DE8];
  v5 = [(CPUINowPlayingViewController *)self traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 3)
  {
    v7 = [(CPUINowPlayingViewController *)self delegate];
    v8 = [v7 nowPlayingViewControllerCanShowAlbumArt:self];

    v9 = [(CPUINowPlayingViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v10 = [(CPUINowPlayingViewController *)self delegate];
      v11 = [v10 nowPlayingViewControllerIsRightHandDrive:self];
    }

    else
    {
      v11 = 0;
    }

    v12 = [(CPUINowPlayingViewController *)self nowPlayingView];
    v13 = [(CPUINowPlayingViewController *)self view];
    [v13 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [(CPUINowPlayingViewController *)self view];
    v23 = [v22 safeAreaLayoutGuide];
    [v23 layoutFrame];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = [(CPUINowPlayingViewController *)self sportsData];
    [v12 recalculateLayout:v3 allowsAlbumArt:v8 viewArea:v11 safeArea:v32 != 0 rightHandDrive:v15 sports:{v17, v19, v21, v25, v27, v29, v31}];

    v33 = [(CPUINowPlayingViewController *)self nowPlayingView];
    v34 = [v33 nowPlayingLayout];
    [v34 maximumNowPlayingSize];
    v36 = v35;
    v38 = v37;

    if (v36 != self->_nowPlayingMaxSize.width || v38 != self->_nowPlayingMaxSize.height)
    {
      v39 = 0x277CCA000uLL;
      [MEMORY[0x277CCAAD0] deactivateConstraints:self->_nowPlayingSizeConstraints];
      self->_nowPlayingMaxSize.width = v36;
      self->_nowPlayingMaxSize.height = v38;
      if (v36 == *MEMORY[0x277CBF3A8] && v38 == *(MEMORY[0x277CBF3A8] + 8))
      {
        v68 = [(CPUINowPlayingView *)self->_nowPlayingView topAnchor];
        v69 = [(CPUINowPlayingViewController *)self view];
        v77 = [v69 topAnchor];
        v76 = [v68 constraintEqualToAnchor:?];
        v78[0] = v76;
        v40 = [(CPUINowPlayingView *)self->_nowPlayingView bottomAnchor];
        v74 = [(CPUINowPlayingViewController *)self view];
        [v74 bottomAnchor];
        v73 = v75 = v40;
        v72 = [v40 constraintEqualToAnchor:?];
        v78[1] = v72;
        v41 = [(CPUINowPlayingView *)self->_nowPlayingView leadingAnchor];
        v70 = [(CPUINowPlayingViewController *)self view];
        v42 = [v70 safeAreaLayoutGuide];
        v43 = [v42 leadingAnchor];
        v71 = v41;
        v44 = [v41 constraintEqualToAnchor:v43];
        v78[2] = v44;
        v45 = [(CPUINowPlayingView *)self->_nowPlayingView trailingAnchor];
        v46 = [(CPUINowPlayingViewController *)self view];
        v47 = [v46 safeAreaLayoutGuide];
        v48 = [v47 trailingAnchor];
        v49 = [v45 constraintEqualToAnchor:v48];
        v78[3] = v49;
        v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:4];
        nowPlayingSizeConstraints = self->_nowPlayingSizeConstraints;
        self->_nowPlayingSizeConstraints = v50;

        v52 = v69;
        v53 = v68;

        v39 = 0x277CCA000;
      }

      else
      {
        v54 = [(CPUINowPlayingViewController *)self view];
        v55 = [v54 safeAreaLayoutGuide];
        [v55 layoutFrame];
        v57 = v56;
        v59 = v58;
        v61 = v60;
        v63 = v62;

        v53 = [(CPUINowPlayingView *)self->_nowPlayingView centerXAnchor];
        v52 = [(CPUINowPlayingViewController *)self view];
        v77 = [v52 safeAreaLayoutGuide];
        v76 = [v77 centerXAnchor];
        v75 = [v53 constraintEqualToAnchor:?];
        v79[0] = v75;
        v64 = [(CPUINowPlayingView *)self->_nowPlayingView centerYAnchor];
        v73 = [(CPUINowPlayingViewController *)self view];
        v72 = [v73 safeAreaLayoutGuide];
        [v72 centerYAnchor];
        v71 = v74 = v64;
        v70 = [v64 constraintEqualToAnchor:?];
        v79[1] = v70;
        v42 = [(CPUINowPlayingView *)self->_nowPlayingView widthAnchor];
        v80.origin.x = v57;
        v80.origin.y = v59;
        v80.size.width = v61;
        v80.size.height = v63;
        Width = CGRectGetWidth(v80);
        if (Width >= v36)
        {
          Width = v36;
        }

        v43 = [v42 constraintEqualToConstant:Width];
        v79[2] = v43;
        v44 = [(CPUINowPlayingView *)self->_nowPlayingView heightAnchor];
        v81.origin.x = v57;
        v81.origin.y = v59;
        v81.size.width = v61;
        v81.size.height = v63;
        Height = CGRectGetHeight(v81);
        if (Height >= v38)
        {
          Height = v38;
        }

        v45 = [v44 constraintEqualToConstant:Height];
        v79[3] = v45;
        v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:4];
        v46 = self->_nowPlayingSizeConstraints;
        self->_nowPlayingSizeConstraints = v67;
      }

      [*(v39 + 2768) activateConstraints:self->_nowPlayingSizeConstraints];
    }
  }
}

- (BOOL)_showsButtonSelectionsForTouch
{
  v2 = [(CPUINowPlayingViewController *)self view];
  v3 = [v2 window];
  v4 = [v3 screen];

  if (v4)
  {
    v5 = [v4 supportsFocus] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)updatePlayControls
{
  v3 = [(CPUINowPlayingView *)self->_nowPlayingView transportControlView];
  v4 = [(CPUINowPlayingView *)self->_nowPlayingView progressView];
  v5 = [v3 leftButton];
  v6 = [v3 defaultLeftButtonImage];
  [(CPUINowPlayingViewController *)self _updateTransportControl:v5 withDefaultImage:v6 actionType:0];

  v7 = [v3 playPauseButton];
  [(CPUINowPlayingViewController *)self _updateTransportControl:v7 withDefaultImage:0 actionType:2];

  v8 = [v3 fastForwardButton];
  v9 = [v3 defaultFastForwardButtonImage];
  [(CPUINowPlayingViewController *)self _updateTransportControl:v8 withDefaultImage:v9 actionType:1];

  v10 = [(CPUINowPlayingViewController *)self dataSource];
  v11 = v10;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  if (v10)
  {
    [v10 durationSnapshotForNowPlayingViewController:self];
  }

  v13[0] = v15;
  v13[1] = v16;
  v13[2] = v17;
  v14 = v18;
  [v4 setDurationSnapshot:v13];
  if (objc_opt_respondsToSelector())
  {
    v12 = [v11 progressBarLocalizedDurationStringForNowPlayingViewController:self];
  }

  else
  {
    v12 = 0;
  }

  [v4 updateLocalizedDurationString:v12];
  [v4 setHidden:{(*(&v16 + 1) == 0.0) & (v18 ^ 1u), *(&v16 + 1)}];
  [v3 setProgressActive:{objc_msgSend(v11, "nowPlayingViewControllerIsPlaying:", self)}];
  [(CPUINowPlayingViewController *)self _updatePlayModesState];
}

- (void)_updatePlayModesState
{
  v53 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) != 0 && (v5 = objc_loadWeakRetained(&self->_delegate), v6 = [v5 nowPlayingViewControllerCanShuffle:self], v5, v6))
  {
    v7 = objc_loadWeakRetained(&self->_dataSource);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_dataSource);
      v10 = [v9 shuffleTypeForNowPlayingViewController:self];

      [(CPUINowPlayingViewController *)self _updateShuffleStateWithType:v10];
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_loadWeakRetained(&self->_delegate);
  v13 = objc_opt_respondsToSelector();

  if ((v13 & 1) != 0 && (v14 = objc_loadWeakRetained(&self->_delegate), v15 = [v14 nowPlayingViewControllerCanRepeat:self], v14, v15))
  {
    v16 = objc_loadWeakRetained(&self->_dataSource);
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = objc_loadWeakRetained(&self->_dataSource);
      v19 = [v18 repeatTypeForNowPlayingViewController:self];

      [(CPUINowPlayingViewController *)self _updateRepeatStateWithType:v19];
    }

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  v21 = objc_loadWeakRetained(&self->_delegate);
  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    v23 = objc_loadWeakRetained(&self->_delegate);
    v24 = [v23 nowPlayingViewControllerCanShowMore:self];
  }

  else
  {
    v24 = 0;
  }

  v25 = objc_loadWeakRetained(&self->_delegate);
  v26 = objc_opt_respondsToSelector();

  if (v26)
  {
    v27 = objc_loadWeakRetained(&self->_delegate);
    v28 = [v27 nowPlayingViewControllerCanShowAddToLibrary:self];
  }

  else
  {
    v28 = 0;
  }

  v29 = objc_loadWeakRetained(&self->_delegate);
  v30 = objc_opt_respondsToSelector();

  if (v30)
  {
    v31 = objc_loadWeakRetained(&self->_delegate);
    v32 = [v31 nowPlayingViewControllerIsFuseSubscriber:self];
  }

  else
  {
    v32 = 0;
  }

  v33 = objc_loadWeakRetained(&self->_delegate);
  v34 = objc_opt_respondsToSelector();

  if (v34)
  {
    v35 = objc_loadWeakRetained(&self->_delegate);
    v36 = [v35 nowPlayingViewControllerCanShowChangePlaybackRate:self];

    [(CPUINowPlayingViewController *)self _updatePlaybackRate];
  }

  else
  {
    v36 = 0;
  }

  v37 = [(CPUINowPlayingView *)self->_nowPlayingView playModeControlView];
  v38 = [v37 shuffleButton];
  [v38 setHidden:v11 ^ 1u];

  v39 = [v37 repeatButton];
  [v39 setHidden:v20 ^ 1u];

  v40 = [v37 moreButton];
  [v40 setHidden:v24 ^ 1u];

  v41 = [v37 addToLibraryButton];
  [v41 setHidden:v28 ^ 1u];

  [v37 setFuseSubscriberLayout:v32];
  v42 = [v37 playbackRateButton];
  [v42 setHidden:v36 ^ 1u];

  v43 = CarPlayUIGeneralLogging();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44[0] = 67110144;
    v44[1] = v11;
    v45 = 1024;
    v46 = v20;
    v47 = 1024;
    v48 = v24;
    v49 = 1024;
    v50 = v28;
    v51 = 1024;
    v52 = v36;
    _os_log_impl(&dword_243134000, v43, OS_LOG_TYPE_DEFAULT, "Shuffle: %d Repeat: %d Show CTA: %d Bookmark: %d Change Playback Rate: %d", v44, 0x20u);
  }

  [v37 layoutSubviews];
}

- (void)_updateRepeatStateWithType:(int64_t)a3
{
  v5 = [(CPUINowPlayingViewController *)self nowPlayingView];
  v6 = [v5 playModeControlView];
  v7 = [v6 repeatButton];

  [v7 setRepeatType:a3];
  if ((((a3 == 0) ^ [v7 isSelected]) & 1) == 0)
  {
    [(CPUINowPlayingViewController *)self _updateShuffleAndRepeatButtons];
  }
}

- (void)_updateShuffleStateWithType:(int64_t)a3
{
  v5 = [(CPUINowPlayingViewController *)self nowPlayingView];
  v6 = [v5 playModeControlView];
  v7 = [v6 shuffleButton];

  if ((((a3 == 0) ^ [v7 isSelected]) & 1) == 0)
  {
    [(CPUINowPlayingViewController *)self _updateShuffleAndRepeatButtons];
  }
}

- (void)_updateShuffleAndRepeatButtons
{
  v3 = [(CPUINowPlayingViewController *)self nowPlayingView];
  v4 = [v3 playModeControlView];
  v5 = [v4 shuffleButton];

  v6 = [(CPUINowPlayingViewController *)self nowPlayingView];
  v7 = [v6 playModeControlView];
  v8 = [v7 repeatButton];

  v9 = [(CPUINowPlayingViewController *)self uiTimer];

  if (v9)
  {
    v10 = [(CPUINowPlayingViewController *)self uiTimer];
    [v10 invalidate];

    v11 = CarPlayUIGeneralLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_243134000, v11, OS_LOG_TYPE_DEFAULT, "UI Timer invalidated", buf, 2u);
    }
  }

  v12 = CarPlayUIGeneralLogging();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_243134000, v12, OS_LOG_TYPE_DEFAULT, "UI Timer created", buf, 2u);
  }

  objc_initWeak(buf, self);
  v13 = MEMORY[0x277CBEBB8];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__CPUINowPlayingViewController__updateShuffleAndRepeatButtons__block_invoke;
  v17[3] = &unk_278D9C648;
  objc_copyWeak(&v20, buf);
  v14 = v5;
  v18 = v14;
  v15 = v8;
  v19 = v15;
  v16 = [v13 scheduledTimerWithTimeInterval:0 repeats:v17 block:0.1];
  [(CPUINowPlayingViewController *)self setUiTimer:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

void __62__CPUINowPlayingViewController__updateShuffleAndRepeatButtons__block_invoke(id *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained && [v3 isValid])
  {
    v5 = CarPlayUIGeneralLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_243134000, v5, OS_LOG_TYPE_DEFAULT, "UI Timer executed", &v12, 2u);
    }

    v6 = [WeakRetained dataSource];
    v7 = [v6 shuffleTypeForNowPlayingViewController:WeakRetained];

    if ((v7 != 0) != [a1[4] isSelected])
    {
      v8 = CarPlayUIGeneralLogging();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 67109120;
        v13 = v7 != 0;
        _os_log_impl(&dword_243134000, v8, OS_LOG_TYPE_DEFAULT, "UI Timer set shuffle selected: %i", &v12, 8u);
      }

      [a1[4] setSelected:v7 != 0];
    }

    v9 = [WeakRetained dataSource];
    v10 = [v9 repeatTypeForNowPlayingViewController:WeakRetained];

    if ((v10 != 0) != [a1[5] isSelected])
    {
      v11 = CarPlayUIGeneralLogging();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 67109120;
        v13 = v10 != 0;
        _os_log_impl(&dword_243134000, v11, OS_LOG_TYPE_DEFAULT, "UI Timer set repeat selected: %i", &v12, 8u);
      }

      [a1[5] setSelected:v10 != 0];
    }
  }
}

- (void)_updatePlaybackRate
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(CPUINowPlayingViewController *)self nowPlayingView];
  v4 = [v3 playModeControlView];
  v5 = [v4 playbackRateButton];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v4) = objc_opt_respondsToSelector();

  if (v4)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v7 nowPlayingViewControllerGetPlaybackRate:self];

    v9 = CPUIFormattedPlaybackRateString(v8);
    [v5 setTitle:v9 forState:0];
    v10 = CPUIAccessiblePlaybackRateString(v8);
    v14 = v10;
    v11 = CPUILocalizedStringForKey(@"ACCESSIBLE_PLAYBACK_SPEED");
    v15 = v11;
    v12 = CPUILocalizedStringForKey(@"ACCESSIBLE_PLAYBACK_RATE");
    v16 = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:3];
    [v5 setAccessibilityUserInputLabels:{v13, v14, v15}];
  }
}

- (void)_sendAction:(int64_t)a3 withState:(int64_t)a4
{
  v7 = [(CPUINowPlayingViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 nowPlayingViewController:self didSendAction:a3 state:a4];
  }
}

- (void)_playPauseButtonTouchDown:(id)a3
{
  v4 = a3;
  if ([(CPUINowPlayingViewController *)self _showsButtonSelectionsForTouch])
  {
    [v4 setSelected:1];
  }
}

- (void)_playPauseButtonTouchUp:(id)a3
{
  v4 = a3;
  if ([(CPUINowPlayingViewController *)self _showsButtonSelectionsForTouch])
  {
    [v4 setSelected:0];
  }

  [(CPUINowPlayingViewController *)self _sendAction:2 withState:2];
}

- (void)_respondToHeldAction
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:a2 object:0];
  heldAction = self->_heldAction;

  [(CPUINowPlayingViewController *)self _sendAction:heldAction withState:1];
}

- (void)_sendHeldAction
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__respondToHeldAction object:0];
  [(CPUINowPlayingViewController *)self _sendAction:self->_heldAction withState:2];
  self->_heldAction = -1;
}

- (void)_leftButtonTouchDown:(id)a3
{
  v4 = a3;
  if ([(CPUINowPlayingViewController *)self _showsButtonSelectionsForTouch])
  {
    [v4 setSelected:1];
  }

  self->_heldAction = 0;
  [(CPUINowPlayingViewController *)self performSelector:sel__respondToHeldAction withObject:0 afterDelay:0.5];
}

- (void)_leftButtonTouchUp:(id)a3
{
  v4 = a3;
  if ([(CPUINowPlayingViewController *)self _showsButtonSelectionsForTouch])
  {
    [v4 setSelected:0];
  }

  [(CPUINowPlayingViewController *)self _sendHeldAction];
}

- (void)_leftButtonLongPress:(id)a3
{
  if ([a3 state] == 1)
  {
    v4 = 1;
  }

  else
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__respondToHeldAction object:0];
    v4 = 2;
  }

  [(CPUINowPlayingViewController *)self _sendAction:0 withState:v4];
}

- (void)_fastForwardButtonTouchDown:(id)a3
{
  v4 = a3;
  if ([(CPUINowPlayingViewController *)self _showsButtonSelectionsForTouch])
  {
    [v4 setSelected:1];
  }

  self->_heldAction = 1;
  [(CPUINowPlayingViewController *)self performSelector:sel__respondToHeldAction withObject:0 afterDelay:0.5];
}

- (void)_fastForwardButtonTouchUp:(id)a3
{
  v4 = a3;
  if ([(CPUINowPlayingViewController *)self _showsButtonSelectionsForTouch])
  {
    [v4 setSelected:0];
  }

  [(CPUINowPlayingViewController *)self _sendHeldAction];
}

- (void)_fastForwardButtonLongPress:(id)a3
{
  if ([a3 state] == 1)
  {
    v4 = 1;
  }

  else
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__respondToHeldAction object:0];
    v4 = 2;
  }

  [(CPUINowPlayingViewController *)self _sendAction:1 withState:v4];
}

- (void)_albumArtistButtonTapped:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 nowPlayingViewControllerAlbumArtistButtonTapped:self];
  }
}

- (void)_attributionButtonTapped:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 nowPlayingViewControllerAttributionButtonTapped:self];
  }
}

- (void)upNextButtonTapped:(id)a3
{
  v4 = [(CPUINowPlayingViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CPUINowPlayingViewController *)self delegate];
    [v6 nowPlayingViewControllerUpNextButtonTapped:self];
  }
}

- (void)_initializeTransportControls
{
  v17 = [(CPUINowPlayingView *)self->_nowPlayingView transportControlView];
  v3 = [v17 playPauseButton];
  [v3 addTarget:self action:sel__playPauseButtonTouchDown_ forControlEvents:1];

  v4 = [v17 playPauseButton];
  [v4 addTarget:self action:sel__playPauseButtonTouchUp_ forControlEvents:448];

  v5 = [v17 leftButton];
  [v5 addTarget:self action:sel__leftButtonTouchDown_ forControlEvents:1];

  v6 = [v17 leftButton];
  [v6 addTarget:self action:sel__leftButtonTouchUp_ forControlEvents:448];

  v7 = [v17 fastForwardButton];
  [v7 addTarget:self action:sel__fastForwardButtonTouchDown_ forControlEvents:1];

  v8 = [v17 fastForwardButton];
  [v8 addTarget:self action:sel__fastForwardButtonTouchUp_ forControlEvents:448];

  v9 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__leftButtonLongPress_];
  [(CPUINowPlayingViewController *)self setLeftButtonLongPressRecognizer:v9];

  v10 = [(CPUINowPlayingViewController *)self leftButtonLongPressRecognizer];
  [v10 setAllowedPressTypes:&unk_2855D8560];

  v11 = [v17 leftButton];
  v12 = [(CPUINowPlayingViewController *)self leftButtonLongPressRecognizer];
  [v11 addGestureRecognizer:v12];

  v13 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__fastForwardButtonLongPress_];
  [(CPUINowPlayingViewController *)self setFastForwardButtonLongPressRecognizer:v13];

  v14 = [(CPUINowPlayingViewController *)self fastForwardButtonLongPressRecognizer];
  [v14 setAllowedPressTypes:&unk_2855D8578];

  v15 = [v17 fastForwardButton];
  v16 = [(CPUINowPlayingViewController *)self fastForwardButtonLongPressRecognizer];
  [v15 addGestureRecognizer:v16];
}

- (void)_updateTransportControl:(id)a3 withDefaultImage:(id)a4 actionType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v23 = 0;
  v10 = [(CPUINowPlayingViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    if (a5 > 2)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(&self->super.super.super.isa + *off_278D9C770[a5]);
    }

    v22 = 0;
    v14 = [v10 nowPlayingViewController:self shouldDisplayButton:a5 withImage:&v22 existingIdentifier:v11 tinted:&v23];
    v13 = v22;
    v12 = v14 ^ 1u;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v13 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v10 nowPlayingViewController:self buttonShouldBeActive:a5])
  {
    v16 = 0;
    v15 = 0.3;
  }

  else
  {
    v15 = 1.0;
    v16 = 1;
  }

  [v8 setAlpha:v15];
  [v8 setHidden:v12];
  if (v13)
  {
    v17 = 0;
LABEL_15:
    v19 = [v13 imageWithRenderingMode:v17];

    [v8 setImage:v19 forState:0];
    v20 = [MEMORY[0x277D75348] whiteColor];
    v21 = [v19 imageWithTintColor:v20];
    [v8 setImage:v21 forState:1];

    goto LABEL_16;
  }

  v18 = v9;
  if (v18)
  {
    v13 = v18;
    v17 = 2;
    goto LABEL_15;
  }

LABEL_16:
  [v8 setSelected:v23];
  [v8 setEnabled:v16];
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = [a3 objectsPassingTest:_nonCapturedPressType];
  if ([v7 count])
  {
    v8.receiver = self;
    v8.super_class = CPUINowPlayingViewController;
    [(CPUINowPlayingViewController *)&v8 pressesBegan:v7 withEvent:v6];
  }
}

- (void)pressesChanged:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = [a3 objectsPassingTest:_nonCapturedPressType];
  if ([v7 count])
  {
    v8.receiver = self;
    v8.super_class = CPUINowPlayingViewController;
    [(CPUINowPlayingViewController *)&v8 pressesChanged:v7 withEvent:v6];
  }
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = [a3 objectsPassingTest:_nonCapturedPressType];
  if ([v7 count])
  {
    v8.receiver = self;
    v8.super_class = CPUINowPlayingViewController;
    [(CPUINowPlayingViewController *)&v8 pressesEnded:v7 withEvent:v6];
  }
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = [a3 objectsPassingTest:_nonCapturedPressType];
  if ([v7 count])
  {
    v8.receiver = self;
    v8.super_class = CPUINowPlayingViewController;
    [(CPUINowPlayingViewController *)&v8 pressesCancelled:v7 withEvent:v6];
  }
}

- (void)_checkMetalRendering
{
  v3 = [MEMORY[0x277CF89D0] usesMetalNowPlayingArtwork];
  v4 = [v3 valueBool];

  if (v4)
  {
    v5 = [MEMORY[0x277D7FA90] sharedMonitor];
    v6 = [v5 currentThermalPressureLevel];

    v7 = [(CPUINowPlayingViewController *)self artworkBackgroundView];
    v8 = v7;
    if (v6 < 20)
    {
      [v7 setPaused:0];

      v8 = [(CPUINowPlayingViewController *)self artworkBackgroundView];
      [v8 scheduleAnimationPauseTimer];
    }

    else
    {
      [v7 setPaused:1];
    }
  }
}

- (id)_installedFullBackgroundArtworkViewBelowView:(id)a3
{
  v28[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D755E8]);
  [v5 setClipsToBounds:1];
  [v5 setContentMode:2];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(CPUINowPlayingViewController *)self view];
  v7 = v6;
  v27 = v4;
  if (v4)
  {
    [v6 insertSubview:v5 belowSubview:v4];
  }

  else
  {
    [v6 addSubview:v5];
  }

  v19 = MEMORY[0x277CCAAD0];
  v25 = [v5 topAnchor];
  v26 = [(CPUINowPlayingViewController *)self view];
  v24 = [v26 topAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v28[0] = v23;
  v21 = [v5 bottomAnchor];
  v22 = [(CPUINowPlayingViewController *)self view];
  v20 = [v22 bottomAnchor];
  v18 = [v21 constraintEqualToAnchor:v20];
  v28[1] = v18;
  v8 = [v5 leadingAnchor];
  v9 = [(CPUINowPlayingViewController *)self view];
  v10 = [v9 leadingAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v28[2] = v11;
  v12 = [v5 trailingAnchor];
  v13 = [(CPUINowPlayingViewController *)self view];
  v14 = [v13 trailingAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v28[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  [v19 activateConstraints:v16];

  return v5;
}

- (void)_updateArtworkViewVideoPlaybackState
{
  v3 = [(CPUINowPlayingViewController *)self nowPlayingView];
  v14 = [v3 artworkViewBrick];

  v4 = [(CPUINowPlayingViewController *)self videoAvailability];
  v5 = [v4 isVideoSupported];

  if ((v5 & 1) == 0)
  {
    v11 = v14;
    v12 = 0;
LABEL_7:
    [v11 setVideoPlaybackState:v12];
    goto LABEL_8;
  }

  v6 = [(CPUINowPlayingViewController *)self videoAvailability];
  v7 = [v6 isVideoAllowed];

  if ((v7 & 1) == 0)
  {
    v11 = v14;
    v12 = 1;
    goto LABEL_7;
  }

  v8 = [(CPUINowPlayingViewController *)self dataSource];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(CPUINowPlayingViewController *)self dataSource];
    [v14 setVideoPlaybackState:{objc_msgSend(v10, "videoPlaybackStateForNowPlayingController:", self)}];
  }

  else
  {
    v13 = [(CPUINowPlayingViewController *)self videoAvailability];
    [v14 setVideoPlaybackState:{objc_msgSend(v13, "playbackState")}];
  }

LABEL_8:
}

- (void)_updateArtworkViewIfNeeded:(id)a3 placeholder:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CPUINowPlayingViewController *)self _updateArtworkViewVideoPlaybackState];
  v8 = [(CPUINowPlayingViewController *)self nowPlayingView];
  v9 = [v8 artworkViewBrick];

  [v9 setPlaceholderImage:v7];
  if (v6)
  {
    v10 = [(CPUINowPlayingViewController *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(CPUINowPlayingViewController *)self delegate];
      v13 = [v12 nowPlayingViewControllerShouldCrossfadeArtwork:self];
    }

    else
    {
      v13 = 1;
    }

    v17 = [(CPUINowPlayingViewController *)self artworkOperationQueue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __71__CPUINowPlayingViewController__updateArtworkViewIfNeeded_placeholder___block_invoke;
    v18[3] = &unk_278D9C6E0;
    v19 = v6;
    v20 = v9;
    v21 = self;
    v22 = v13;
    [v17 addOperationWithBlock:v18];
  }

  else
  {
    v14 = [MEMORY[0x277CF89D0] usesMetalNowPlayingArtwork];
    v15 = [v14 valueBool];

    if (v15)
    {
      v16 = [(CPUINowPlayingViewController *)self artworkBackgroundView];
      [v16 updateWithImage:0 animated:1];
    }

    else
    {
      v16 = [(CPUINowPlayingViewController *)self artworkView];
      [v16 setImage:0];
    }

    [v9 setImage:0];
    [(CPUINowPlayingViewController *)self setFinalArtworkImage:0];
  }
}

void __71__CPUINowPlayingViewController__updateArtworkViewIfNeeded_placeholder___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) roundingCornersIfSquared];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__CPUINowPlayingViewController__updateArtworkViewIfNeeded_placeholder___block_invoke_2;
  block[3] = &unk_278D9C6B8;
  v5 = *(a1 + 40);
  v6 = v2;
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = *(a1 + 56);
  v3 = v2;
  dispatch_sync(MEMORY[0x277D85CD0], block);
}

void __71__CPUINowPlayingViewController__updateArtworkViewIfNeeded_placeholder___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setImage:*(a1 + 40)];
  [*(a1 + 48) setFinalArtworkImage:*(a1 + 40)];
  v2 = [MEMORY[0x277CF89D0] usesMetalNowPlayingArtwork];
  v3 = [v2 valueBool];

  if (v3)
  {
    v16 = [*(a1 + 48) artworkBackgroundView];
    [v16 updateWithImage:*(a1 + 56) animated:1];
LABEL_7:

    return;
  }

  v4 = *(a1 + 48);
  if ((*(a1 + 64) & 1) == 0)
  {
    v16 = [v4 artworkView];
    [v16 setImage:*(a1 + 40)];
    goto LABEL_7;
  }

  v5 = [v4 finalArtworkImage];

  v6 = [*(a1 + 48) artworkView];
  v7 = v6;
  if (v5)
  {
    v8 = *(a1 + 48);
    v9 = [v8 artworkView];
    v10 = [v8 _installedFullBackgroundArtworkViewBelowView:v9];

    [v10 setImage:*(a1 + 56)];
    [*(a1 + 48) setArtworkView:v10];
  }

  else
  {
    [v6 setAlpha:0.0];

    v11 = *(a1 + 56);
    v12 = [*(a1 + 48) artworkView];
    [v12 setImage:v11];

    v10 = [*(a1 + 48) artworkView];
    v7 = 0;
  }

  v13 = MEMORY[0x277D75D18];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __71__CPUINowPlayingViewController__updateArtworkViewIfNeeded_placeholder___block_invoke_3;
  v19[3] = &unk_278D9C530;
  v20 = v7;
  v21 = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__CPUINowPlayingViewController__updateArtworkViewIfNeeded_placeholder___block_invoke_4;
  v17[3] = &unk_278D9C690;
  v18 = v20;
  v14 = v20;
  v15 = v10;
  [v13 animateWithDuration:6 delay:v19 options:v17 animations:1.5 completion:0.0];
}

uint64_t __71__CPUINowPlayingViewController__updateArtworkViewIfNeeded_placeholder___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = 0.0;
  }

  else
  {
    v2 = *(a1 + 40);
    v3 = 1.0;
  }

  return [v2 setAlpha:v3];
}

void *__71__CPUINowPlayingViewController__updateArtworkViewIfNeeded_placeholder___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return [result removeFromSuperview];
  }

  return result;
}

- (id)_upNextBarButtonItem
{
  v22[3] = *MEMORY[0x277D85DE8];
  v3 = [(CPUINowPlayingViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CPUINowPlayingViewController *)self delegate];
    v6 = [v5 titleForUpNextInNowPlayingViewController:self];
    v7 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v8 = [v6 stringByTrimmingCharactersInSet:v7];
  }

  else
  {
    v8 = 0;
  }

  if (![v8 length])
  {
    v9 = CPUILocalizedStringForKey(@"PLAYBACK_QUEUE_TITLE");

    v8 = v9;
  }

  v10 = CPUILocalizedStringForKey(@"PLAYBACK_QUEUE_TITLE");
  v11 = [v8 isEqualToString:v10];

  if (v11)
  {

    v12 = [MEMORY[0x277D755B8] systemImageNamed:@"list.bullet"];
    v13 = [MEMORY[0x277D755D0] configurationWithWeight:5];
    v8 = [v12 imageWithSymbolConfiguration:v13];

    v14 = CPUILocalizedStringForKey(@"LIST");
    v22[0] = v14;
    v15 = CPUILocalizedStringForKey(@"QUEUE");
    v22[1] = v15;
    v16 = CPUILocalizedStringForKey(@"PLAYBACK_QUEUE_TITLE");
    v22[2] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];

    if (v8)
    {
      v18 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v8 style:0 target:self action:sel_upNextButtonTapped_];
      goto LABEL_11;
    }
  }

  else
  {
    v21 = v8;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  }

  v18 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v8 image:0 target:self action:sel_upNextButtonTapped_ menu:0];
LABEL_11:
  v19 = v18;

  [v19 setAccessibilityUserInputLabels:v17];

  return v19;
}

- (void)_reloadDataForcingLayout:(BOOL)a3 updateControls:(BOOL)a4
{
  v4 = a4;
  v54 = a3;
  v57 = *MEMORY[0x277D85DE8];
  v6 = CarPlayUIGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v56 = self;
    _os_log_impl(&dword_243134000, v6, OS_LOG_TYPE_DEFAULT, "Reloading now playing view controller %@", buf, 0xCu);
  }

  v7 = [(CPUINowPlayingViewController *)self dataSource];
  v8 = [(CPUINowPlayingViewController *)self delegate];
  if (_os_feature_enabled_impl() && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = [v7 sportsDataForNowPlayingController:self];
    [(CPUINowPlayingViewController *)self setSportsData:v9];
  }

  else
  {
    [(CPUINowPlayingViewController *)self setSportsData:0];
  }

  if (_os_feature_enabled_impl())
  {
    nowPlayingView = self->_nowPlayingView;
    v11 = [(CPUINowPlayingViewController *)self sportsData];
    [(CPUINowPlayingView *)nowPlayingView setSportsData:v11];
  }

  v12 = [v7 titleForNowPlayingController:self];
  v13 = CPUIFilteredString(v12);

  v14 = [v7 artistTextForNowPlayingController:self];
  v15 = CPUIFilteredString(v14);

  v16 = [v7 albumTextForNowPlayingController:self];
  v17 = CPUIFilteredString(v16);

  v18 = [(CPUINowPlayingView *)self->_nowPlayingView songDetailsView];
  v19 = v18;
  v53 = v13;
  if (v13)
  {
    v20 = v13;
  }

  else
  {
    v20 = &stru_2855CA368;
  }

  [v18 setTrackTitle:v20];
  if (v17)
  {
    v21 = v17;
  }

  else
  {
    v21 = &stru_2855CA368;
  }

  [v19 setAlbumTitle:v21];
  v52 = v15;
  if (v15)
  {
    v22 = v15;
  }

  else
  {
    v22 = &stru_2855CA368;
  }

  [v19 setArtistName:v22];
  if (objc_opt_respondsToSelector())
  {
    v23 = [v7 attributionTitleForNowPlayingViewController:self];
    [v19 setAttributionName:v23];
  }

  if (objc_opt_respondsToSelector())
  {
    v24 = [v7 attributionArtworkForNowPlayingViewController:self];
    [v19 setAttributionArtwork:v24];
  }

  if (objc_opt_respondsToSelector())
  {
    v25 = [v19 titleView];
    [v25 setShouldUseMusicExplicitGlyph:{objc_msgSend(v8, "nowPlayingViewControllerShouldUseMusicExplicitGlyph:", self)}];
  }

  v26 = [v7 nowPlayingViewControllerIsShowingExplicitTrack:self];
  v27 = [v19 titleView];
  [v27 setExplicitTrack:v26];

  if ([(__CFString *)v17 length]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v28 = [v8 nowPlayingViewControllerCanShowAlbumLink:self];
    v29 = [v19 albumArtistLabelButton];
    [v29 setEnabled:v28];
  }

  v30 = [v7 backgroundArtForNowPlayingController:self];
  if (objc_opt_respondsToSelector())
  {
    v31 = [v7 placeholderTypeForNowPlayingViewController:self];
  }

  else
  {
    v31 = 0;
  }

  v32 = [(CPUINowPlayingViewController *)self traitCollection];
  v33 = CPUIImageForPlaceholderTypeWithTraitCollection(v31, v32);

  v34 = v30;
  v50 = v33;
  [(CPUINowPlayingViewController *)self _updateArtworkViewIfNeeded:v30 placeholder:v33];
  v35 = [(CPUINowPlayingView *)self->_nowPlayingView playModeControlView];
  if (objc_opt_respondsToSelector())
  {
    v36 = [v8 customPlaybackControlButtonsForNowPlayingViewController:self];
  }

  else
  {
    v36 = 0;
  }

  if (![v36 count])
  {
    v37 = [v35 defaultPlayModeButtons];

    v36 = v37;
  }

  [(CPUINowPlayingViewController *)self _updateButtonAXLabelsForButtons:v36];
  [v35 setMediaButtons:v36];
  v51 = v17;
  if (objc_opt_respondsToSelector())
  {
    v38 = [v8 nowPlayingViewControllerShouldHideBackButton:self];
  }

  else
  {
    v38 = 0;
  }

  v39 = [(CPUINowPlayingViewController *)self navigationItem];
  [v39 setHidesBackButton:v38];

  v49 = v35;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v8 nowPlayingViewControllerShouldOverrideRightBarButtons:self] & 1) == 0)
  {
    if ([v8 nowPlayingViewControllerCanShowUpNext:self])
    {
      v40 = [(CPUINowPlayingViewController *)self _upNextBarButtonItem];
      [(CPUINowPlayingViewController *)self setPlaybackQueueBarButtonItem:v40];
      if (v40)
      {
        v47 = v34;
        v48 = v4;
        v41 = [MEMORY[0x277CBEB18] arrayWithObject:v40];
        v42 = [(CPUINowPlayingViewController *)self navigationItem];
        v43 = [v42 rightBarButtonItems];
        v44 = [v43 isEqualToArray:v41];

        if ((v44 & 1) == 0)
        {
          v45 = [(CPUINowPlayingViewController *)self navigationItem];
          [v45 setRightBarButtonItems:v41];
        }

        v4 = v48;
        v34 = v47;
      }
    }
  }

  [(CPUINowPlayingViewController *)self _recalculateLayout:v54];
  if (objc_opt_respondsToSelector())
  {
    -[CPUINowPlayingViewController _updateAudioRenderingMode:](self, "_updateAudioRenderingMode:", [v7 overrideRenderingModeForNowPlayingViewController:self]);
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v7 badgeAnnotationViewForNowPlayingViewController:self], (v46 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v46 = [(CPUINowPlayingViewController *)self audioSessionRenderingModeView];
  }

  [(CPUINowPlayingView *)self->_nowPlayingView setBadgeAnnotationView:v46];
  if (v4)
  {
    [(CPUINowPlayingViewController *)self updatePlayControls];
  }
}

- (void)_sceneWillEnterForeground:(id)a3
{
  v4 = [a3 object];
  v5 = [(CPUINowPlayingViewController *)self _isCarScene:v4];

  if (v5)
  {

    [(CPUINowPlayingViewController *)self _setStatusBarOverrideActive:1];
  }
}

- (void)_sceneDidActivate:(id)a3
{
  v4 = [a3 object];
  v5 = [(CPUINowPlayingViewController *)self _isCarScene:v4];

  if (v5)
  {

    [(CPUINowPlayingViewController *)self _setStatusBarOverrideActive:1];
  }
}

- (void)_sceneWillDeactivate:(id)a3
{
  v7 = a3;
  v4 = [v7 object];
  v5 = [(CPUINowPlayingViewController *)self _isCarScene:v4];

  if (v5)
  {
    v6 = [v7 object];
    [(CPUINowPlayingViewController *)self _deactivateStatusBarStyleOverrideIfNecessaryForScene:v6];
  }
}

- (void)_sceneDidEnterBackground:(id)a3
{
  v4 = [a3 object];
  v5 = [(CPUINowPlayingViewController *)self _isCarScene:v4];

  if (v5)
  {

    [(CPUINowPlayingViewController *)self _setStatusBarOverrideActive:0];
  }
}

- (BOOL)_isCarScene:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    if (!v5)
    {
      v12 = 0;
      v11 = 0;
      goto LABEL_9;
    }

    v6 = [v5 traitCollection];
    v7 = [v6 userInterfaceIdiom];

    if (v7 != 3)
    {
      v11 = 0;
      v12 = v5;
      goto LABEL_9;
    }

    v8 = [(CPUINowPlayingViewController *)self view];
    v9 = [v8 window];
    v10 = [v9 windowScene];
    v11 = v10 == v5;

    v12 = v5;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v8 = v5;
  }

LABEL_9:
  return v11;
}

- (void)_deactivateStatusBarStyleOverrideIfNecessaryForScene:(id)a3
{
  v4 = [a3 _FBSScene];
  v5 = [v4 settings];

  if ([v5 deactivationReasons] != 16)
  {
    [(CPUINowPlayingViewController *)self _setStatusBarOverrideActive:0];
  }
}

- (void)nowPlayingAudioFormatController:(id)a3 didChangeAudioFormatContentInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__CPUINowPlayingViewController_nowPlayingAudioFormatController_didChangeAudioFormatContentInfo___block_invoke;
  block[3] = &unk_278D9C708;
  v11 = v7;
  v12 = v6;
  v13 = self;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __96__CPUINowPlayingViewController_nowPlayingAudioFormatController_didChangeAudioFormatContentInfo___block_invoke(id *a1)
{
  v6 = a1[4];
  if (!v6)
  {
    v6 = [a1[5] audioFormatContentInfo];
  }

  v2 = [a1[6] dataSource];
  v3 = objc_opt_respondsToSelector();

  if ((v3 & 1) == 0 || ([a1[6] dataSource], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "overrideRenderingModeForNowPlayingViewController:", a1[6]), v4, !v5))
  {
    v5 = [v6 renderingMode];
  }

  [a1[6] _updateAudioRenderingMode:v5];
}

- (void)_updateAudioRenderingMode:(int64_t)a3
{
  v37 = *MEMORY[0x277D85DE8];
  if ([(CPUINowPlayingViewController *)self lastRenderingMode]!= a3)
  {
    self->_lastRenderingMode = a3;
    if (a3 == 3)
    {
      v5 = CPUILocalizedStringForKey(@"SPATIAL_AUDIO");
      v6 = [(CPUINowPlayingViewController *)self traitCollection];
      v7 = [MEMORY[0x277D755B8] _systemImageNamed:@"person.spatialaudio.fill"];
      v8 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:1 scale:10.0];
      v9 = [v7 imageWithConfiguration:v8];
    }

    else
    {
      v6 = [(CPUINowPlayingViewController *)self traitCollection];
      if ((a3 - 1) < 2)
      {
        v5 = 0;
        v11 = 0;
        goto LABEL_13;
      }

      if (a3 == 4)
      {
        v10 = @"DolbyAudio";
      }

      else
      {
        if (a3 != 5)
        {
          v9 = CarPlayUIGeneralLogging();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            [(CPUINowPlayingViewController *)a3 _updateAudioRenderingMode:v9];
          }

          v5 = 0;
          v11 = 0;
          goto LABEL_12;
        }

        v10 = @"DolbyAtmos";
      }

      v9 = CPUIImageNamedWithTraitCollection(v10, v6);
      v5 = 0;
    }

    v11 = [v9 imageWithRenderingMode:2];
LABEL_12:

LABEL_13:
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v12 = [(UIStackView *)self->_audioSessionRenderingModeView arrangedSubviews];
    v13 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v33;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v32 + 1) + 8 * i);
          [(UIStackView *)self->_audioSessionRenderingModeView removeArrangedSubview:v17];
          [v17 removeFromSuperview];
        }

        v14 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v14);
    }

    audioSessionRenderingModeView = self->_audioSessionRenderingModeView;
    if (v5 | v11)
    {
      v19 = MEMORY[0x277CBF3A0];
      if (!audioSessionRenderingModeView)
      {
        v20 = [objc_alloc(MEMORY[0x277D75A68]) initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        v21 = self->_audioSessionRenderingModeView;
        self->_audioSessionRenderingModeView = v20;

        [(UIStackView *)self->_audioSessionRenderingModeView setTranslatesAutoresizingMaskIntoConstraints:0];
        v22 = [(UIStackView *)self->_audioSessionRenderingModeView layer];
        [v22 setAllowsGroupBlending:0];

        [(UIStackView *)self->_audioSessionRenderingModeView setAxis:0];
        [(UIStackView *)self->_audioSessionRenderingModeView setDistribution:2];
        [(UIStackView *)self->_audioSessionRenderingModeView setAlignment:3];
        [(UIStackView *)self->_audioSessionRenderingModeView setAlpha:0.400000006];
      }

      v23 = MEMORY[0x277CDA5E8];
      if (v11)
      {
        v24 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v11];
        v25 = [MEMORY[0x277D75348] whiteColor];
        [v24 setTintColor:v25];

        [v24 setContentMode:1];
        v26 = [MEMORY[0x277CD9EA0] filterWithType:*v23];
        v27 = [v24 layer];
        [v27 setCompositingFilter:v26];

        [(UIStackView *)self->_audioSessionRenderingModeView addArrangedSubview:v24];
        if (v5)
        {
          [(UIStackView *)self->_audioSessionRenderingModeView setCustomSpacing:v24 afterView:3.0];
        }
      }

      if (!v5)
      {
        goto LABEL_31;
      }

      audioSessionRenderingModeView = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{*v19, v19[1], v19[2], v19[3]}];
      [(UIStackView *)audioSessionRenderingModeView setText:v5];
      v28 = [MEMORY[0x277CD9EA0] filterWithType:*v23];
      v29 = [(UIStackView *)audioSessionRenderingModeView layer];
      [v29 setCompositingFilter:v28];

      v30 = [MEMORY[0x277D74300] systemFontOfSize:10.0 weight:*MEMORY[0x277D74418]];
      [(UIStackView *)audioSessionRenderingModeView setFont:v30];

      v31 = [MEMORY[0x277D75348] whiteColor];
      [(UIStackView *)audioSessionRenderingModeView setTextColor:v31];

      [(UIStackView *)self->_audioSessionRenderingModeView addArrangedSubview:audioSessionRenderingModeView];
    }

    else
    {
      self->_audioSessionRenderingModeView = 0;
    }

LABEL_31:
    [(CPUINowPlayingViewController *)self reloadData];
  }
}

void __64__CPUINowPlayingViewController__updateButtonAXLabelsForButtons___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v11 = a2;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [v11 accessibilityUserInputLabels];

  if (v5)
  {
    v6 = [v11 accessibilityUserInputLabels];
    [v4 addObjectsFromArray:v6];
  }

  v7 = [v11 accessibilityLabel];

  if (v7)
  {
    v8 = [v11 accessibilityLabel];
    [v4 addObject:v8];
  }

  if (a3 <= 4)
  {
    v9 = CPUILocalizedStringForKey(off_278D9C788[a3]);
    [v4 addObject:v9];
  }

  v10 = [v4 copy];
  [v11 setAccessibilityUserInputLabels:v10];
}

- (CPUINowPlayingViewControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (CPUINowPlayingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)nowPlayingMaxSize
{
  width = self->_nowPlayingMaxSize.width;
  height = self->_nowPlayingMaxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

void __63__CPUINowPlayingViewController_nowPlayingViewWantsToShowVideo___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_243134000, a2, OS_LOG_TYPE_ERROR, "error settings CarPlay video active: %@", &v2, 0xCu);
}

- (void)_updateAudioRenderingMode:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&dword_243134000, a2, OS_LOG_TYPE_DEBUG, "No available CPUI badge for rendering mode %{public}@", &v4, 0xCu);
}

@end
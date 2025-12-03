@interface CPUINowPlayingViewController
- (BOOL)_isCarScene:(id)scene;
- (BOOL)_showsButtonSelectionsForTouch;
- (CGSize)nowPlayingMaxSize;
- (CPUINowPlayingViewController)initWithBundleIdentifier:(id)identifier dataSource:(id)source delegate:(id)delegate;
- (CPUINowPlayingViewControllerDataSource)dataSource;
- (CPUINowPlayingViewControllerDelegate)delegate;
- (CPUIPlayModeControlView)playModeControlView;
- (CPUISongDetailsView)songDetailsView;
- (CPUITransportControlView)transportControlView;
- (id)_installedFullBackgroundArtworkViewBelowView:(id)view;
- (id)_upNextBarButtonItem;
- (id)preferredFocusEnvironments;
- (void)_albumArtistButtonTapped:(id)tapped;
- (void)_attributionButtonTapped:(id)tapped;
- (void)_backButtonTapped:(id)tapped;
- (void)_checkMetalRendering;
- (void)_deactivateStatusBarStyleOverrideIfNecessaryForScene:(id)scene;
- (void)_fastForwardButtonLongPress:(id)press;
- (void)_fastForwardButtonTouchDown:(id)down;
- (void)_fastForwardButtonTouchUp:(id)up;
- (void)_handleVideoAvailabilityChanged:(id)changed;
- (void)_initializeTransportControls;
- (void)_leftButtonLongPress:(id)press;
- (void)_leftButtonTouchDown:(id)down;
- (void)_leftButtonTouchUp:(id)up;
- (void)_playPauseButtonTouchDown:(id)down;
- (void)_playPauseButtonTouchUp:(id)up;
- (void)_recalculateLayout:(BOOL)layout;
- (void)_reloadDataForcingLayout:(BOOL)layout updateControls:(BOOL)controls;
- (void)_respondToHeldAction;
- (void)_sceneDidActivate:(id)activate;
- (void)_sceneDidEnterBackground:(id)background;
- (void)_sceneWillDeactivate:(id)deactivate;
- (void)_sceneWillEnterForeground:(id)foreground;
- (void)_sendAction:(int64_t)action withState:(int64_t)state;
- (void)_sendHeldAction;
- (void)_setNowPlayingNavBarActive:(BOOL)active;
- (void)_setStatusBarOverrideActive:(BOOL)active;
- (void)_updateArtworkViewIfNeeded:(id)needed placeholder:(id)placeholder;
- (void)_updateArtworkViewVideoPlaybackState;
- (void)_updateAudioRenderingMode:(int64_t)mode;
- (void)_updatePlayModesState;
- (void)_updatePlaybackRate;
- (void)_updateRepeatStateWithType:(int64_t)type;
- (void)_updateShuffleAndRepeatButtons;
- (void)_updateShuffleStateWithType:(int64_t)type;
- (void)_updateTransportControl:(id)control withDefaultImage:(id)image actionType:(int64_t)type;
- (void)dealloc;
- (void)environmentMonitorDidChangeThermalLevel:(id)level;
- (void)nowPlayingAudioFormatController:(id)controller didChangeAudioFormatContentInfo:(id)info;
- (void)nowPlayingViewWantsToShowVideo:(id)video;
- (void)playModeControlView:(id)view didSelectButton:(id)button;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesChanged:(id)changed withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)reloadData;
- (void)setDataSource:(id)source;
- (void)setDelegate:(id)delegate;
- (void)traitCollectionDidChange:(id)change;
- (void)upNextButtonTapped:(id)tapped;
- (void)updatePlayControls;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CPUINowPlayingViewController

- (CPUINowPlayingViewController)initWithBundleIdentifier:(id)identifier dataSource:(id)source delegate:(id)delegate
{
  identifierCopy = identifier;
  sourceCopy = source;
  delegateCopy = delegate;
  v33.receiver = self;
  v33.super_class = CPUINowPlayingViewController;
  v12 = [(CPUINowPlayingViewController *)&v33 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_dataSource, sourceCopy);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    objc_storeStrong(&v13->_bundleIdentifier, identifier);
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel__handleVideoAvailabilityChanged_ name:@"CPUIVideoAvailabilityChangedNotification" object:0];

    [(CPUINowPlayingViewController *)v13 nowPlayingAudioFormatController:v13->_audioFormatController didChangeAudioFormatContentInfo:0];
    usesMetalNowPlayingArtwork = [MEMORY[0x277CF89D0] usesMetalNowPlayingArtwork];
    valueBool = [usesMetalNowPlayingArtwork valueBool];

    if (valueBool)
    {
      mEMORY[0x277D7FA90] = [MEMORY[0x277D7FA90] sharedMonitor];
      [mEMORY[0x277D7FA90] registerObserver:v13];
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

  usesMetalNowPlayingArtwork = [MEMORY[0x277CF89D0] usesMetalNowPlayingArtwork];
  valueBool = [usesMetalNowPlayingArtwork valueBool];

  if (valueBool)
  {
    mEMORY[0x277D7FA90] = [MEMORY[0x277D7FA90] sharedMonitor];
    [mEMORY[0x277D7FA90] unregisterObserver:self];
  }

  v8.receiver = self;
  v8.super_class = CPUINowPlayingViewController;
  [(CPUINowPlayingViewController *)&v8 dealloc];
}

- (void)setDataSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(CPUINowPlayingViewController *)self reloadData];
    v5 = obj;
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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

- (void)nowPlayingViewWantsToShowVideo:(id)video
{
  v4 = CarPlayUIGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243134000, v4, OS_LOG_TYPE_DEFAULT, "setting CarPlay video active", buf, 2u);
  }

  videoAvailability = [(CPUINowPlayingViewController *)self videoAvailability];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__CPUINowPlayingViewController_nowPlayingViewWantsToShowVideo___block_invoke;
  v6[3] = &unk_278D9C5F8;
  v6[4] = self;
  [videoAvailability setVideoActive:1 completionHandler:v6];
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

- (void)_handleVideoAvailabilityChanged:(id)changed
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

- (void)playModeControlView:(id)view didSelectButton:(id)button
{
  viewCopy = view;
  buttonCopy = button;
  shuffleButton = [viewCopy shuffleButton];
  v8 = shuffleButton;
  if (shuffleButton == buttonCopy)
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

  repeatButton = [viewCopy repeatButton];
  v13 = repeatButton;
  if (repeatButton == buttonCopy)
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

  moreButton = [viewCopy moreButton];
  v17 = moreButton;
  if (moreButton == buttonCopy)
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

  addToLibraryButton = [viewCopy addToLibraryButton];
  v21 = addToLibraryButton;
  if (addToLibraryButton == buttonCopy)
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

  playbackRateButton = [viewCopy playbackRateButton];
  v25 = playbackRateButton;
  if (playbackRateButton == buttonCopy)
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
  [v11 nowPlayingViewController:self didSelectButton:buttonCopy];
LABEL_23:

LABEL_24:
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CPUINowPlayingViewController;
  [(CPUINowPlayingViewController *)&v4 viewWillAppear:appear];
  [(CPUINowPlayingViewController *)self _setNowPlayingNavBarActive:1];
  [(CPUINowPlayingViewController *)self _setStatusBarOverrideActive:1];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CPUINowPlayingViewController;
  [(CPUINowPlayingViewController *)&v4 viewWillDisappear:disappear];
  [(CPUINowPlayingViewController *)self _setStatusBarOverrideActive:0];
  [(CPUINowPlayingViewController *)self _setNowPlayingNavBarActive:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = CPUINowPlayingViewController;
  [(CPUINowPlayingViewController *)&v6 viewDidAppear:appear];
  usesMetalNowPlayingArtwork = [MEMORY[0x277CF89D0] usesMetalNowPlayingArtwork];
  valueBool = [usesMetalNowPlayingArtwork valueBool];

  if (valueBool)
  {
    [(CPUINowPlayingViewController *)self _checkMetalRendering];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = CPUINowPlayingViewController;
  [(CPUINowPlayingViewController *)&v7 viewDidDisappear:disappear];
  usesMetalNowPlayingArtwork = [MEMORY[0x277CF89D0] usesMetalNowPlayingArtwork];
  valueBool = [usesMetalNowPlayingArtwork valueBool];

  if (valueBool)
  {
    [(CPUINowPlayingViewController *)self _checkMetalRendering];
    [(CPUINowPlayingViewController *)self _setNowPlayingNavBarActive:0];
  }

  uiTimer = [(CPUINowPlayingViewController *)self uiTimer];
  [uiTimer invalidate];

  [(CPUINowPlayingViewController *)self setUiTimer:0];
}

- (void)viewDidLoad
{
  v93[4] = *MEMORY[0x277D85DE8];
  v90.receiver = self;
  v90.super_class = CPUINowPlayingViewController;
  [(CPUINowPlayingViewController *)&v90 viewDidLoad];
  tableBackgroundColor = [MEMORY[0x277D75348] tableBackgroundColor];
  view = [(CPUINowPlayingViewController *)self view];
  [view setBackgroundColor:tableBackgroundColor];

  view2 = [(CPUINowPlayingViewController *)self view];
  [view2 setAccessibilityIdentifier:@"CPNowPlayingView"];

  v6 = [CPUINowPlayingView alloc];
  v7 = [(CPUINowPlayingView *)v6 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  nowPlayingView = self->_nowPlayingView;
  self->_nowPlayingView = v7;

  songDetailsView = [(CPUINowPlayingView *)self->_nowPlayingView songDetailsView];
  albumArtistLabelButton = [songDetailsView albumArtistLabelButton];
  [albumArtistLabelButton addTarget:self action:sel__albumArtistButtonTapped_ forControlEvents:64];

  songDetailsView2 = [(CPUINowPlayingView *)self->_nowPlayingView songDetailsView];
  attributionButton = [songDetailsView2 attributionButton];
  [attributionButton addTarget:self action:sel__attributionButtonTapped_ forControlEvents:64];

  playModeControlView = [(CPUINowPlayingView *)self->_nowPlayingView playModeControlView];
  [playModeControlView setDelegate:self];

  [(CPUINowPlayingView *)self->_nowPlayingView setVideoDelegate:self];
  usesMetalNowPlayingArtwork = [MEMORY[0x277CF89D0] usesMetalNowPlayingArtwork];
  LODWORD(attributionButton) = [usesMetalNowPlayingArtwork valueBool];

  if (attributionButton)
  {
    v15 = objc_alloc_init(_TtC9CarPlayUI25CPUIArtworkBackgroundView);
    artworkBackgroundView = self->_artworkBackgroundView;
    self->_artworkBackgroundView = v15;

    [(CPUIArtworkBackgroundView *)self->_artworkBackgroundView setClipsToBounds:1];
    [(CPUIArtworkBackgroundView *)self->_artworkBackgroundView setContentMode:2];
    [(CPUIArtworkBackgroundView *)self->_artworkBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUIArtworkBackgroundView *)self->_artworkBackgroundView setOverrideUserInterfaceStyle:2];
    layer = [(CPUIArtworkBackgroundView *)self->_artworkBackgroundView layer];
    [layer setAllowsGroupBlending:0];

    view3 = [(CPUINowPlayingViewController *)self view];
    [view3 addSubview:self->_artworkBackgroundView];

    v74 = MEMORY[0x277CCAAD0];
    topAnchor = [(CPUIArtworkBackgroundView *)self->_artworkBackgroundView topAnchor];
    view4 = [(CPUINowPlayingViewController *)self view];
    topAnchor2 = [view4 topAnchor];
    v82 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v93[0] = v82;
    bottomAnchor = [(CPUIArtworkBackgroundView *)self->_artworkBackgroundView bottomAnchor];
    view5 = [(CPUINowPlayingViewController *)self view];
    bottomAnchor2 = [view5 bottomAnchor];
    v72 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v93[1] = v72;
    leadingAnchor = [(CPUIArtworkBackgroundView *)self->_artworkBackgroundView leadingAnchor];
    view6 = [(CPUINowPlayingViewController *)self view];
    leadingAnchor2 = [view6 leadingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v93[2] = v22;
    trailingAnchor = [(CPUIArtworkBackgroundView *)self->_artworkBackgroundView trailingAnchor];
    view7 = [(CPUINowPlayingViewController *)self view];
    trailingAnchor2 = [view7 trailingAnchor];
    v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v93[3] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:4];
    [v74 activateConstraints:v27];

    view8 = [(CPUINowPlayingViewController *)self view];
    [view8 addSubview:self->_nowPlayingView];
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
    view9 = [(CPUINowPlayingViewController *)self view];
    [view9 addSubview:self->_artworkVisualEffectView];

    v73 = MEMORY[0x277CCAAD0];
    topAnchor3 = [(UIVisualEffectView *)self->_artworkVisualEffectView topAnchor];
    view10 = [(CPUINowPlayingViewController *)self view];
    topAnchor4 = [view10 topAnchor];
    v81 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v91[0] = v81;
    bottomAnchor3 = [(UIVisualEffectView *)self->_artworkVisualEffectView bottomAnchor];
    view11 = [(CPUINowPlayingViewController *)self view];
    bottomAnchor4 = [view11 bottomAnchor];
    v71 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v91[1] = v71;
    leadingAnchor3 = [(UIVisualEffectView *)self->_artworkVisualEffectView leadingAnchor];
    view12 = [(CPUINowPlayingViewController *)self view];
    leadingAnchor4 = [view12 leadingAnchor];
    v37 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v91[2] = v37;
    trailingAnchor3 = [(UIVisualEffectView *)self->_artworkVisualEffectView trailingAnchor];
    view13 = [(CPUINowPlayingViewController *)self view];
    trailingAnchor4 = [view13 trailingAnchor];
    v41 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v91[3] = v41;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:4];
    [v73 activateConstraints:v42];

    contentView = [(UIVisualEffectView *)self->_artworkVisualEffectView contentView];
    [contentView addSubview:self->_nowPlayingView];

    view8 = v89;
  }

  v44 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__leftNudgePress_];
  [(CPUINowPlayingViewController *)self setLeftNudgePressRecognizer:v44];

  leftNudgePressRecognizer = [(CPUINowPlayingViewController *)self leftNudgePressRecognizer];
  [leftNudgePressRecognizer setAllowedPressTypes:&unk_2855D8500];

  v46 = self->_nowPlayingView;
  leftNudgePressRecognizer2 = [(CPUINowPlayingViewController *)self leftNudgePressRecognizer];
  [(CPUINowPlayingView *)v46 addGestureRecognizer:leftNudgePressRecognizer2];

  v48 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__rightNudgePress_];
  [(CPUINowPlayingViewController *)self setRightNudgePressRecognizer:v48];

  rightNudgePressRecognizer = [(CPUINowPlayingViewController *)self rightNudgePressRecognizer];
  [rightNudgePressRecognizer setAllowedPressTypes:&unk_2855D8518];

  v50 = self->_nowPlayingView;
  rightNudgePressRecognizer2 = [(CPUINowPlayingViewController *)self rightNudgePressRecognizer];
  [(CPUINowPlayingView *)v50 addGestureRecognizer:rightNudgePressRecognizer2];

  v52 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__leftButtonLongPress_];
  [(CPUINowPlayingViewController *)self setLeftNudgeLongPressRecognizer:v52];

  leftNudgeLongPressRecognizer = [(CPUINowPlayingViewController *)self leftNudgeLongPressRecognizer];
  [leftNudgeLongPressRecognizer setAllowedPressTypes:&unk_2855D8530];

  leftNudgeLongPressRecognizer2 = [(CPUINowPlayingViewController *)self leftNudgeLongPressRecognizer];
  leftNudgePressRecognizer3 = [(CPUINowPlayingViewController *)self leftNudgePressRecognizer];
  [leftNudgeLongPressRecognizer2 requireGestureRecognizerToFail:leftNudgePressRecognizer3];

  v56 = self->_nowPlayingView;
  leftNudgeLongPressRecognizer3 = [(CPUINowPlayingViewController *)self leftNudgeLongPressRecognizer];
  [(CPUINowPlayingView *)v56 addGestureRecognizer:leftNudgeLongPressRecognizer3];

  v58 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__fastForwardButtonLongPress_];
  [(CPUINowPlayingViewController *)self setRightNudgeLongPressRecognizer:v58];

  rightNudgeLongPressRecognizer = [(CPUINowPlayingViewController *)self rightNudgeLongPressRecognizer];
  [rightNudgeLongPressRecognizer setAllowedPressTypes:&unk_2855D8548];

  rightNudgeLongPressRecognizer2 = [(CPUINowPlayingViewController *)self rightNudgeLongPressRecognizer];
  rightNudgePressRecognizer3 = [(CPUINowPlayingViewController *)self rightNudgePressRecognizer];
  [rightNudgeLongPressRecognizer2 requireGestureRecognizerToFail:rightNudgePressRecognizer3];

  v62 = self->_nowPlayingView;
  rightNudgeLongPressRecognizer3 = [(CPUINowPlayingViewController *)self rightNudgeLongPressRecognizer];
  [(CPUINowPlayingView *)v62 addGestureRecognizer:rightNudgeLongPressRecognizer3];

  [(CPUINowPlayingViewController *)self _initializeTransportControls];
  [(CPUINowPlayingViewController *)self setOverrideUserInterfaceStyle:2];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__sceneWillEnterForeground_ name:*MEMORY[0x277D76E80] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__sceneDidActivate_ name:*MEMORY[0x277D76E48] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__sceneWillDeactivate_ name:*MEMORY[0x277D76E78] object:0];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel__sceneDidEnterBackground_ name:*MEMORY[0x277D76E58] object:0];

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

- (void)_backButtonTapped:(id)tapped
{
  navigationController = [(CPUINowPlayingViewController *)self navigationController];
  v3 = [navigationController popViewControllerAnimated:1];
}

- (CPUITransportControlView)transportControlView
{
  nowPlayingView = [(CPUINowPlayingViewController *)self nowPlayingView];
  transportControlView = [nowPlayingView transportControlView];

  return transportControlView;
}

- (CPUIPlayModeControlView)playModeControlView
{
  nowPlayingView = [(CPUINowPlayingViewController *)self nowPlayingView];
  playModeControlView = [nowPlayingView playModeControlView];

  return playModeControlView;
}

- (CPUISongDetailsView)songDetailsView
{
  nowPlayingView = [(CPUINowPlayingViewController *)self nowPlayingView];
  songDetailsView = [nowPlayingView songDetailsView];

  return songDetailsView;
}

- (void)environmentMonitorDidChangeThermalLevel:(id)level
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
  transportControlView = [(CPUINowPlayingViewController *)self transportControlView];
  playPauseButton = [transportControlView playPauseButton];

  if (playPauseButton)
  {
    v6[0] = playPauseButton;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (void)_setStatusBarOverrideActive:(BOOL)active
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__CPUINowPlayingViewController__setStatusBarOverrideActive___block_invoke;
  v3[3] = &unk_278D9C620;
  v3[4] = self;
  activeCopy = active;
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

- (void)_setNowPlayingNavBarActive:(BOOL)active
{
  activeCopy = active;
  navigationController = [(CPUINowPlayingViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];

  if (activeCopy)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  if (activeCopy)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  [navigationBar setBarStyle:v5];
  [navigationBar setOverrideUserInterfaceStyle:v6];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CPUINowPlayingViewController;
  [(CPUINowPlayingViewController *)&v4 traitCollectionDidChange:change];
  [(CPUINowPlayingViewController *)self _reloadDataForcingLayout:1 updateControls:0];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = CPUINowPlayingViewController;
  [(CPUINowPlayingViewController *)&v4 viewDidLayoutSubviews];
  [(CPUINowPlayingViewController *)self _recalculateLayout:0];
  view = [(CPUINowPlayingViewController *)self view];
  [view bounds];
  [(CABackdropLayer *)self->_backdropLayer setFrame:?];
}

- (void)_recalculateLayout:(BOOL)layout
{
  layoutCopy = layout;
  v79[4] = *MEMORY[0x277D85DE8];
  traitCollection = [(CPUINowPlayingViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    delegate = [(CPUINowPlayingViewController *)self delegate];
    v8 = [delegate nowPlayingViewControllerCanShowAlbumArt:self];

    delegate2 = [(CPUINowPlayingViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      delegate3 = [(CPUINowPlayingViewController *)self delegate];
      v11 = [delegate3 nowPlayingViewControllerIsRightHandDrive:self];
    }

    else
    {
      v11 = 0;
    }

    nowPlayingView = [(CPUINowPlayingViewController *)self nowPlayingView];
    view = [(CPUINowPlayingViewController *)self view];
    [view frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    view2 = [(CPUINowPlayingViewController *)self view];
    safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
    [safeAreaLayoutGuide layoutFrame];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    sportsData = [(CPUINowPlayingViewController *)self sportsData];
    [nowPlayingView recalculateLayout:layoutCopy allowsAlbumArt:v8 viewArea:v11 safeArea:sportsData != 0 rightHandDrive:v15 sports:{v17, v19, v21, v25, v27, v29, v31}];

    nowPlayingView2 = [(CPUINowPlayingViewController *)self nowPlayingView];
    nowPlayingLayout = [nowPlayingView2 nowPlayingLayout];
    [nowPlayingLayout maximumNowPlayingSize];
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
        topAnchor = [(CPUINowPlayingView *)self->_nowPlayingView topAnchor];
        view3 = [(CPUINowPlayingViewController *)self view];
        topAnchor2 = [view3 topAnchor];
        centerXAnchor2 = [topAnchor constraintEqualToAnchor:?];
        v78[0] = centerXAnchor2;
        bottomAnchor = [(CPUINowPlayingView *)self->_nowPlayingView bottomAnchor];
        view4 = [(CPUINowPlayingViewController *)self view];
        [view4 bottomAnchor];
        view9 = v75 = bottomAnchor;
        safeAreaLayoutGuide5 = [bottomAnchor constraintEqualToAnchor:?];
        v78[1] = safeAreaLayoutGuide5;
        leadingAnchor = [(CPUINowPlayingView *)self->_nowPlayingView leadingAnchor];
        view5 = [(CPUINowPlayingViewController *)self view];
        safeAreaLayoutGuide2 = [view5 safeAreaLayoutGuide];
        leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
        v71 = leadingAnchor;
        heightAnchor = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v78[2] = heightAnchor;
        trailingAnchor = [(CPUINowPlayingView *)self->_nowPlayingView trailingAnchor];
        view6 = [(CPUINowPlayingViewController *)self view];
        safeAreaLayoutGuide3 = [view6 safeAreaLayoutGuide];
        trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
        v49 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v78[3] = v49;
        v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:4];
        nowPlayingSizeConstraints = self->_nowPlayingSizeConstraints;
        self->_nowPlayingSizeConstraints = v50;

        view8 = view3;
        centerXAnchor = topAnchor;

        v39 = 0x277CCA000;
      }

      else
      {
        view7 = [(CPUINowPlayingViewController *)self view];
        safeAreaLayoutGuide4 = [view7 safeAreaLayoutGuide];
        [safeAreaLayoutGuide4 layoutFrame];
        v57 = v56;
        v59 = v58;
        v61 = v60;
        v63 = v62;

        centerXAnchor = [(CPUINowPlayingView *)self->_nowPlayingView centerXAnchor];
        view8 = [(CPUINowPlayingViewController *)self view];
        topAnchor2 = [view8 safeAreaLayoutGuide];
        centerXAnchor2 = [topAnchor2 centerXAnchor];
        v75 = [centerXAnchor constraintEqualToAnchor:?];
        v79[0] = v75;
        centerYAnchor = [(CPUINowPlayingView *)self->_nowPlayingView centerYAnchor];
        view9 = [(CPUINowPlayingViewController *)self view];
        safeAreaLayoutGuide5 = [view9 safeAreaLayoutGuide];
        [safeAreaLayoutGuide5 centerYAnchor];
        v71 = view4 = centerYAnchor;
        view5 = [centerYAnchor constraintEqualToAnchor:?];
        v79[1] = view5;
        safeAreaLayoutGuide2 = [(CPUINowPlayingView *)self->_nowPlayingView widthAnchor];
        v80.origin.x = v57;
        v80.origin.y = v59;
        v80.size.width = v61;
        v80.size.height = v63;
        Width = CGRectGetWidth(v80);
        if (Width >= v36)
        {
          Width = v36;
        }

        leadingAnchor2 = [safeAreaLayoutGuide2 constraintEqualToConstant:Width];
        v79[2] = leadingAnchor2;
        heightAnchor = [(CPUINowPlayingView *)self->_nowPlayingView heightAnchor];
        v81.origin.x = v57;
        v81.origin.y = v59;
        v81.size.width = v61;
        v81.size.height = v63;
        Height = CGRectGetHeight(v81);
        if (Height >= v38)
        {
          Height = v38;
        }

        trailingAnchor = [heightAnchor constraintEqualToConstant:Height];
        v79[3] = trailingAnchor;
        v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:4];
        view6 = self->_nowPlayingSizeConstraints;
        self->_nowPlayingSizeConstraints = v67;
      }

      [*(v39 + 2768) activateConstraints:self->_nowPlayingSizeConstraints];
    }
  }
}

- (BOOL)_showsButtonSelectionsForTouch
{
  view = [(CPUINowPlayingViewController *)self view];
  window = [view window];
  screen = [window screen];

  if (screen)
  {
    v5 = [screen supportsFocus] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)updatePlayControls
{
  transportControlView = [(CPUINowPlayingView *)self->_nowPlayingView transportControlView];
  progressView = [(CPUINowPlayingView *)self->_nowPlayingView progressView];
  leftButton = [transportControlView leftButton];
  defaultLeftButtonImage = [transportControlView defaultLeftButtonImage];
  [(CPUINowPlayingViewController *)self _updateTransportControl:leftButton withDefaultImage:defaultLeftButtonImage actionType:0];

  playPauseButton = [transportControlView playPauseButton];
  [(CPUINowPlayingViewController *)self _updateTransportControl:playPauseButton withDefaultImage:0 actionType:2];

  fastForwardButton = [transportControlView fastForwardButton];
  defaultFastForwardButtonImage = [transportControlView defaultFastForwardButtonImage];
  [(CPUINowPlayingViewController *)self _updateTransportControl:fastForwardButton withDefaultImage:defaultFastForwardButtonImage actionType:1];

  dataSource = [(CPUINowPlayingViewController *)self dataSource];
  v11 = dataSource;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  if (dataSource)
  {
    [dataSource durationSnapshotForNowPlayingViewController:self];
  }

  v13[0] = v15;
  v13[1] = v16;
  v13[2] = v17;
  v14 = v18;
  [progressView setDurationSnapshot:v13];
  if (objc_opt_respondsToSelector())
  {
    v12 = [v11 progressBarLocalizedDurationStringForNowPlayingViewController:self];
  }

  else
  {
    v12 = 0;
  }

  [progressView updateLocalizedDurationString:v12];
  [progressView setHidden:{(*(&v16 + 1) == 0.0) & (v18 ^ 1u), *(&v16 + 1)}];
  [transportControlView setProgressActive:{objc_msgSend(v11, "nowPlayingViewControllerIsPlaying:", self)}];
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

  playModeControlView = [(CPUINowPlayingView *)self->_nowPlayingView playModeControlView];
  shuffleButton = [playModeControlView shuffleButton];
  [shuffleButton setHidden:v11 ^ 1u];

  repeatButton = [playModeControlView repeatButton];
  [repeatButton setHidden:v20 ^ 1u];

  moreButton = [playModeControlView moreButton];
  [moreButton setHidden:v24 ^ 1u];

  addToLibraryButton = [playModeControlView addToLibraryButton];
  [addToLibraryButton setHidden:v28 ^ 1u];

  [playModeControlView setFuseSubscriberLayout:v32];
  playbackRateButton = [playModeControlView playbackRateButton];
  [playbackRateButton setHidden:v36 ^ 1u];

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

  [playModeControlView layoutSubviews];
}

- (void)_updateRepeatStateWithType:(int64_t)type
{
  nowPlayingView = [(CPUINowPlayingViewController *)self nowPlayingView];
  playModeControlView = [nowPlayingView playModeControlView];
  repeatButton = [playModeControlView repeatButton];

  [repeatButton setRepeatType:type];
  if ((((type == 0) ^ [repeatButton isSelected]) & 1) == 0)
  {
    [(CPUINowPlayingViewController *)self _updateShuffleAndRepeatButtons];
  }
}

- (void)_updateShuffleStateWithType:(int64_t)type
{
  nowPlayingView = [(CPUINowPlayingViewController *)self nowPlayingView];
  playModeControlView = [nowPlayingView playModeControlView];
  shuffleButton = [playModeControlView shuffleButton];

  if ((((type == 0) ^ [shuffleButton isSelected]) & 1) == 0)
  {
    [(CPUINowPlayingViewController *)self _updateShuffleAndRepeatButtons];
  }
}

- (void)_updateShuffleAndRepeatButtons
{
  nowPlayingView = [(CPUINowPlayingViewController *)self nowPlayingView];
  playModeControlView = [nowPlayingView playModeControlView];
  shuffleButton = [playModeControlView shuffleButton];

  nowPlayingView2 = [(CPUINowPlayingViewController *)self nowPlayingView];
  playModeControlView2 = [nowPlayingView2 playModeControlView];
  repeatButton = [playModeControlView2 repeatButton];

  uiTimer = [(CPUINowPlayingViewController *)self uiTimer];

  if (uiTimer)
  {
    uiTimer2 = [(CPUINowPlayingViewController *)self uiTimer];
    [uiTimer2 invalidate];

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
  v14 = shuffleButton;
  v18 = v14;
  v15 = repeatButton;
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
  nowPlayingView = [(CPUINowPlayingViewController *)self nowPlayingView];
  playModeControlView = [nowPlayingView playModeControlView];
  playbackRateButton = [playModeControlView playbackRateButton];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(playModeControlView) = objc_opt_respondsToSelector();

  if (playModeControlView)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v7 nowPlayingViewControllerGetPlaybackRate:self];

    v9 = CPUIFormattedPlaybackRateString(v8);
    [playbackRateButton setTitle:v9 forState:0];
    v10 = CPUIAccessiblePlaybackRateString(v8);
    v14 = v10;
    v11 = CPUILocalizedStringForKey(@"ACCESSIBLE_PLAYBACK_SPEED");
    v15 = v11;
    v12 = CPUILocalizedStringForKey(@"ACCESSIBLE_PLAYBACK_RATE");
    v16 = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:3];
    [playbackRateButton setAccessibilityUserInputLabels:{v13, v14, v15}];
  }
}

- (void)_sendAction:(int64_t)action withState:(int64_t)state
{
  delegate = [(CPUINowPlayingViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate nowPlayingViewController:self didSendAction:action state:state];
  }
}

- (void)_playPauseButtonTouchDown:(id)down
{
  downCopy = down;
  if ([(CPUINowPlayingViewController *)self _showsButtonSelectionsForTouch])
  {
    [downCopy setSelected:1];
  }
}

- (void)_playPauseButtonTouchUp:(id)up
{
  upCopy = up;
  if ([(CPUINowPlayingViewController *)self _showsButtonSelectionsForTouch])
  {
    [upCopy setSelected:0];
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

- (void)_leftButtonTouchDown:(id)down
{
  downCopy = down;
  if ([(CPUINowPlayingViewController *)self _showsButtonSelectionsForTouch])
  {
    [downCopy setSelected:1];
  }

  self->_heldAction = 0;
  [(CPUINowPlayingViewController *)self performSelector:sel__respondToHeldAction withObject:0 afterDelay:0.5];
}

- (void)_leftButtonTouchUp:(id)up
{
  upCopy = up;
  if ([(CPUINowPlayingViewController *)self _showsButtonSelectionsForTouch])
  {
    [upCopy setSelected:0];
  }

  [(CPUINowPlayingViewController *)self _sendHeldAction];
}

- (void)_leftButtonLongPress:(id)press
{
  if ([press state] == 1)
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

- (void)_fastForwardButtonTouchDown:(id)down
{
  downCopy = down;
  if ([(CPUINowPlayingViewController *)self _showsButtonSelectionsForTouch])
  {
    [downCopy setSelected:1];
  }

  self->_heldAction = 1;
  [(CPUINowPlayingViewController *)self performSelector:sel__respondToHeldAction withObject:0 afterDelay:0.5];
}

- (void)_fastForwardButtonTouchUp:(id)up
{
  upCopy = up;
  if ([(CPUINowPlayingViewController *)self _showsButtonSelectionsForTouch])
  {
    [upCopy setSelected:0];
  }

  [(CPUINowPlayingViewController *)self _sendHeldAction];
}

- (void)_fastForwardButtonLongPress:(id)press
{
  if ([press state] == 1)
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

- (void)_albumArtistButtonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 nowPlayingViewControllerAlbumArtistButtonTapped:self];
  }
}

- (void)_attributionButtonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 nowPlayingViewControllerAttributionButtonTapped:self];
  }
}

- (void)upNextButtonTapped:(id)tapped
{
  delegate = [(CPUINowPlayingViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CPUINowPlayingViewController *)self delegate];
    [delegate2 nowPlayingViewControllerUpNextButtonTapped:self];
  }
}

- (void)_initializeTransportControls
{
  transportControlView = [(CPUINowPlayingView *)self->_nowPlayingView transportControlView];
  playPauseButton = [transportControlView playPauseButton];
  [playPauseButton addTarget:self action:sel__playPauseButtonTouchDown_ forControlEvents:1];

  playPauseButton2 = [transportControlView playPauseButton];
  [playPauseButton2 addTarget:self action:sel__playPauseButtonTouchUp_ forControlEvents:448];

  leftButton = [transportControlView leftButton];
  [leftButton addTarget:self action:sel__leftButtonTouchDown_ forControlEvents:1];

  leftButton2 = [transportControlView leftButton];
  [leftButton2 addTarget:self action:sel__leftButtonTouchUp_ forControlEvents:448];

  fastForwardButton = [transportControlView fastForwardButton];
  [fastForwardButton addTarget:self action:sel__fastForwardButtonTouchDown_ forControlEvents:1];

  fastForwardButton2 = [transportControlView fastForwardButton];
  [fastForwardButton2 addTarget:self action:sel__fastForwardButtonTouchUp_ forControlEvents:448];

  v9 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__leftButtonLongPress_];
  [(CPUINowPlayingViewController *)self setLeftButtonLongPressRecognizer:v9];

  leftButtonLongPressRecognizer = [(CPUINowPlayingViewController *)self leftButtonLongPressRecognizer];
  [leftButtonLongPressRecognizer setAllowedPressTypes:&unk_2855D8560];

  leftButton3 = [transportControlView leftButton];
  leftButtonLongPressRecognizer2 = [(CPUINowPlayingViewController *)self leftButtonLongPressRecognizer];
  [leftButton3 addGestureRecognizer:leftButtonLongPressRecognizer2];

  v13 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__fastForwardButtonLongPress_];
  [(CPUINowPlayingViewController *)self setFastForwardButtonLongPressRecognizer:v13];

  fastForwardButtonLongPressRecognizer = [(CPUINowPlayingViewController *)self fastForwardButtonLongPressRecognizer];
  [fastForwardButtonLongPressRecognizer setAllowedPressTypes:&unk_2855D8578];

  fastForwardButton3 = [transportControlView fastForwardButton];
  fastForwardButtonLongPressRecognizer2 = [(CPUINowPlayingViewController *)self fastForwardButtonLongPressRecognizer];
  [fastForwardButton3 addGestureRecognizer:fastForwardButtonLongPressRecognizer2];
}

- (void)_updateTransportControl:(id)control withDefaultImage:(id)image actionType:(int64_t)type
{
  controlCopy = control;
  imageCopy = image;
  v23 = 0;
  delegate = [(CPUINowPlayingViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    if (type > 2)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(&self->super.super.super.isa + *off_278D9C770[type]);
    }

    v22 = 0;
    v14 = [delegate nowPlayingViewController:self shouldDisplayButton:type withImage:&v22 existingIdentifier:v11 tinted:&v23];
    v13 = v22;
    v12 = v14 ^ 1u;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v13 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ![delegate nowPlayingViewController:self buttonShouldBeActive:type])
  {
    v16 = 0;
    v15 = 0.3;
  }

  else
  {
    v15 = 1.0;
    v16 = 1;
  }

  [controlCopy setAlpha:v15];
  [controlCopy setHidden:v12];
  if (v13)
  {
    v17 = 0;
LABEL_15:
    v19 = [v13 imageWithRenderingMode:v17];

    [controlCopy setImage:v19 forState:0];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v21 = [v19 imageWithTintColor:whiteColor];
    [controlCopy setImage:v21 forState:1];

    goto LABEL_16;
  }

  v18 = imageCopy;
  if (v18)
  {
    v13 = v18;
    v17 = 2;
    goto LABEL_15;
  }

LABEL_16:
  [controlCopy setSelected:v23];
  [controlCopy setEnabled:v16];
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  v7 = [began objectsPassingTest:_nonCapturedPressType];
  if ([v7 count])
  {
    v8.receiver = self;
    v8.super_class = CPUINowPlayingViewController;
    [(CPUINowPlayingViewController *)&v8 pressesBegan:v7 withEvent:eventCopy];
  }
}

- (void)pressesChanged:(id)changed withEvent:(id)event
{
  eventCopy = event;
  v7 = [changed objectsPassingTest:_nonCapturedPressType];
  if ([v7 count])
  {
    v8.receiver = self;
    v8.super_class = CPUINowPlayingViewController;
    [(CPUINowPlayingViewController *)&v8 pressesChanged:v7 withEvent:eventCopy];
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  eventCopy = event;
  v7 = [ended objectsPassingTest:_nonCapturedPressType];
  if ([v7 count])
  {
    v8.receiver = self;
    v8.super_class = CPUINowPlayingViewController;
    [(CPUINowPlayingViewController *)&v8 pressesEnded:v7 withEvent:eventCopy];
  }
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  eventCopy = event;
  v7 = [cancelled objectsPassingTest:_nonCapturedPressType];
  if ([v7 count])
  {
    v8.receiver = self;
    v8.super_class = CPUINowPlayingViewController;
    [(CPUINowPlayingViewController *)&v8 pressesCancelled:v7 withEvent:eventCopy];
  }
}

- (void)_checkMetalRendering
{
  usesMetalNowPlayingArtwork = [MEMORY[0x277CF89D0] usesMetalNowPlayingArtwork];
  valueBool = [usesMetalNowPlayingArtwork valueBool];

  if (valueBool)
  {
    mEMORY[0x277D7FA90] = [MEMORY[0x277D7FA90] sharedMonitor];
    currentThermalPressureLevel = [mEMORY[0x277D7FA90] currentThermalPressureLevel];

    artworkBackgroundView = [(CPUINowPlayingViewController *)self artworkBackgroundView];
    artworkBackgroundView2 = artworkBackgroundView;
    if (currentThermalPressureLevel < 20)
    {
      [artworkBackgroundView setPaused:0];

      artworkBackgroundView2 = [(CPUINowPlayingViewController *)self artworkBackgroundView];
      [artworkBackgroundView2 scheduleAnimationPauseTimer];
    }

    else
    {
      [artworkBackgroundView setPaused:1];
    }
  }
}

- (id)_installedFullBackgroundArtworkViewBelowView:(id)view
{
  v28[4] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v5 = objc_alloc_init(MEMORY[0x277D755E8]);
  [v5 setClipsToBounds:1];
  [v5 setContentMode:2];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(CPUINowPlayingViewController *)self view];
  v7 = view;
  v27 = viewCopy;
  if (viewCopy)
  {
    [view insertSubview:v5 belowSubview:viewCopy];
  }

  else
  {
    [view addSubview:v5];
  }

  v19 = MEMORY[0x277CCAAD0];
  topAnchor = [v5 topAnchor];
  view2 = [(CPUINowPlayingViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v28[0] = v23;
  bottomAnchor = [v5 bottomAnchor];
  view3 = [(CPUINowPlayingViewController *)self view];
  bottomAnchor2 = [view3 bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v28[1] = v18;
  leadingAnchor = [v5 leadingAnchor];
  view4 = [(CPUINowPlayingViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v28[2] = v11;
  trailingAnchor = [v5 trailingAnchor];
  view5 = [(CPUINowPlayingViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v28[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  [v19 activateConstraints:v16];

  return v5;
}

- (void)_updateArtworkViewVideoPlaybackState
{
  nowPlayingView = [(CPUINowPlayingViewController *)self nowPlayingView];
  artworkViewBrick = [nowPlayingView artworkViewBrick];

  videoAvailability = [(CPUINowPlayingViewController *)self videoAvailability];
  isVideoSupported = [videoAvailability isVideoSupported];

  if ((isVideoSupported & 1) == 0)
  {
    v11 = artworkViewBrick;
    v12 = 0;
LABEL_7:
    [v11 setVideoPlaybackState:v12];
    goto LABEL_8;
  }

  videoAvailability2 = [(CPUINowPlayingViewController *)self videoAvailability];
  isVideoAllowed = [videoAvailability2 isVideoAllowed];

  if ((isVideoAllowed & 1) == 0)
  {
    v11 = artworkViewBrick;
    v12 = 1;
    goto LABEL_7;
  }

  dataSource = [(CPUINowPlayingViewController *)self dataSource];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    dataSource2 = [(CPUINowPlayingViewController *)self dataSource];
    [artworkViewBrick setVideoPlaybackState:{objc_msgSend(dataSource2, "videoPlaybackStateForNowPlayingController:", self)}];
  }

  else
  {
    videoAvailability3 = [(CPUINowPlayingViewController *)self videoAvailability];
    [artworkViewBrick setVideoPlaybackState:{objc_msgSend(videoAvailability3, "playbackState")}];
  }

LABEL_8:
}

- (void)_updateArtworkViewIfNeeded:(id)needed placeholder:(id)placeholder
{
  neededCopy = needed;
  placeholderCopy = placeholder;
  [(CPUINowPlayingViewController *)self _updateArtworkViewVideoPlaybackState];
  nowPlayingView = [(CPUINowPlayingViewController *)self nowPlayingView];
  artworkViewBrick = [nowPlayingView artworkViewBrick];

  [artworkViewBrick setPlaceholderImage:placeholderCopy];
  if (neededCopy)
  {
    delegate = [(CPUINowPlayingViewController *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate2 = [(CPUINowPlayingViewController *)self delegate];
      v13 = [delegate2 nowPlayingViewControllerShouldCrossfadeArtwork:self];
    }

    else
    {
      v13 = 1;
    }

    artworkOperationQueue = [(CPUINowPlayingViewController *)self artworkOperationQueue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __71__CPUINowPlayingViewController__updateArtworkViewIfNeeded_placeholder___block_invoke;
    v18[3] = &unk_278D9C6E0;
    v19 = neededCopy;
    v20 = artworkViewBrick;
    selfCopy = self;
    v22 = v13;
    [artworkOperationQueue addOperationWithBlock:v18];
  }

  else
  {
    usesMetalNowPlayingArtwork = [MEMORY[0x277CF89D0] usesMetalNowPlayingArtwork];
    valueBool = [usesMetalNowPlayingArtwork valueBool];

    if (valueBool)
    {
      artworkBackgroundView = [(CPUINowPlayingViewController *)self artworkBackgroundView];
      [artworkBackgroundView updateWithImage:0 animated:1];
    }

    else
    {
      artworkBackgroundView = [(CPUINowPlayingViewController *)self artworkView];
      [artworkBackgroundView setImage:0];
    }

    [artworkViewBrick setImage:0];
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
  delegate = [(CPUINowPlayingViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CPUINowPlayingViewController *)self delegate];
    v6 = [delegate2 titleForUpNextInNowPlayingViewController:self];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v8 = [v6 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
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

- (void)_reloadDataForcingLayout:(BOOL)layout updateControls:(BOOL)controls
{
  controlsCopy = controls;
  layoutCopy = layout;
  v57 = *MEMORY[0x277D85DE8];
  v6 = CarPlayUIGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_243134000, v6, OS_LOG_TYPE_DEFAULT, "Reloading now playing view controller %@", buf, 0xCu);
  }

  dataSource = [(CPUINowPlayingViewController *)self dataSource];
  delegate = [(CPUINowPlayingViewController *)self delegate];
  if (_os_feature_enabled_impl() && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = [dataSource sportsDataForNowPlayingController:self];
    [(CPUINowPlayingViewController *)self setSportsData:v9];
  }

  else
  {
    [(CPUINowPlayingViewController *)self setSportsData:0];
  }

  if (_os_feature_enabled_impl())
  {
    nowPlayingView = self->_nowPlayingView;
    sportsData = [(CPUINowPlayingViewController *)self sportsData];
    [(CPUINowPlayingView *)nowPlayingView setSportsData:sportsData];
  }

  v12 = [dataSource titleForNowPlayingController:self];
  v13 = CPUIFilteredString(v12);

  v14 = [dataSource artistTextForNowPlayingController:self];
  v15 = CPUIFilteredString(v14);

  v16 = [dataSource albumTextForNowPlayingController:self];
  v17 = CPUIFilteredString(v16);

  songDetailsView = [(CPUINowPlayingView *)self->_nowPlayingView songDetailsView];
  v19 = songDetailsView;
  v53 = v13;
  if (v13)
  {
    v20 = v13;
  }

  else
  {
    v20 = &stru_2855CA368;
  }

  [songDetailsView setTrackTitle:v20];
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
    v23 = [dataSource attributionTitleForNowPlayingViewController:self];
    [v19 setAttributionName:v23];
  }

  if (objc_opt_respondsToSelector())
  {
    v24 = [dataSource attributionArtworkForNowPlayingViewController:self];
    [v19 setAttributionArtwork:v24];
  }

  if (objc_opt_respondsToSelector())
  {
    titleView = [v19 titleView];
    [titleView setShouldUseMusicExplicitGlyph:{objc_msgSend(delegate, "nowPlayingViewControllerShouldUseMusicExplicitGlyph:", self)}];
  }

  v26 = [dataSource nowPlayingViewControllerIsShowingExplicitTrack:self];
  titleView2 = [v19 titleView];
  [titleView2 setExplicitTrack:v26];

  if ([(__CFString *)v17 length]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v28 = [delegate nowPlayingViewControllerCanShowAlbumLink:self];
    albumArtistLabelButton = [v19 albumArtistLabelButton];
    [albumArtistLabelButton setEnabled:v28];
  }

  v30 = [dataSource backgroundArtForNowPlayingController:self];
  if (objc_opt_respondsToSelector())
  {
    v31 = [dataSource placeholderTypeForNowPlayingViewController:self];
  }

  else
  {
    v31 = 0;
  }

  traitCollection = [(CPUINowPlayingViewController *)self traitCollection];
  v33 = CPUIImageForPlaceholderTypeWithTraitCollection(v31, traitCollection);

  v34 = v30;
  v50 = v33;
  [(CPUINowPlayingViewController *)self _updateArtworkViewIfNeeded:v30 placeholder:v33];
  playModeControlView = [(CPUINowPlayingView *)self->_nowPlayingView playModeControlView];
  if (objc_opt_respondsToSelector())
  {
    v36 = [delegate customPlaybackControlButtonsForNowPlayingViewController:self];
  }

  else
  {
    v36 = 0;
  }

  if (![v36 count])
  {
    defaultPlayModeButtons = [playModeControlView defaultPlayModeButtons];

    v36 = defaultPlayModeButtons;
  }

  [(CPUINowPlayingViewController *)self _updateButtonAXLabelsForButtons:v36];
  [playModeControlView setMediaButtons:v36];
  v51 = v17;
  if (objc_opt_respondsToSelector())
  {
    v38 = [delegate nowPlayingViewControllerShouldHideBackButton:self];
  }

  else
  {
    v38 = 0;
  }

  navigationItem = [(CPUINowPlayingViewController *)self navigationItem];
  [navigationItem setHidesBackButton:v38];

  v49 = playModeControlView;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([delegate nowPlayingViewControllerShouldOverrideRightBarButtons:self] & 1) == 0)
  {
    if ([delegate nowPlayingViewControllerCanShowUpNext:self])
    {
      _upNextBarButtonItem = [(CPUINowPlayingViewController *)self _upNextBarButtonItem];
      [(CPUINowPlayingViewController *)self setPlaybackQueueBarButtonItem:_upNextBarButtonItem];
      if (_upNextBarButtonItem)
      {
        v47 = v34;
        v48 = controlsCopy;
        v41 = [MEMORY[0x277CBEB18] arrayWithObject:_upNextBarButtonItem];
        navigationItem2 = [(CPUINowPlayingViewController *)self navigationItem];
        rightBarButtonItems = [navigationItem2 rightBarButtonItems];
        v44 = [rightBarButtonItems isEqualToArray:v41];

        if ((v44 & 1) == 0)
        {
          navigationItem3 = [(CPUINowPlayingViewController *)self navigationItem];
          [navigationItem3 setRightBarButtonItems:v41];
        }

        controlsCopy = v48;
        v34 = v47;
      }
    }
  }

  [(CPUINowPlayingViewController *)self _recalculateLayout:layoutCopy];
  if (objc_opt_respondsToSelector())
  {
    -[CPUINowPlayingViewController _updateAudioRenderingMode:](self, "_updateAudioRenderingMode:", [dataSource overrideRenderingModeForNowPlayingViewController:self]);
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || ([dataSource badgeAnnotationViewForNowPlayingViewController:self], (audioSessionRenderingModeView = objc_claimAutoreleasedReturnValue()) == 0))
  {
    audioSessionRenderingModeView = [(CPUINowPlayingViewController *)self audioSessionRenderingModeView];
  }

  [(CPUINowPlayingView *)self->_nowPlayingView setBadgeAnnotationView:audioSessionRenderingModeView];
  if (controlsCopy)
  {
    [(CPUINowPlayingViewController *)self updatePlayControls];
  }
}

- (void)_sceneWillEnterForeground:(id)foreground
{
  object = [foreground object];
  v5 = [(CPUINowPlayingViewController *)self _isCarScene:object];

  if (v5)
  {

    [(CPUINowPlayingViewController *)self _setStatusBarOverrideActive:1];
  }
}

- (void)_sceneDidActivate:(id)activate
{
  object = [activate object];
  v5 = [(CPUINowPlayingViewController *)self _isCarScene:object];

  if (v5)
  {

    [(CPUINowPlayingViewController *)self _setStatusBarOverrideActive:1];
  }
}

- (void)_sceneWillDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  object = [deactivateCopy object];
  v5 = [(CPUINowPlayingViewController *)self _isCarScene:object];

  if (v5)
  {
    object2 = [deactivateCopy object];
    [(CPUINowPlayingViewController *)self _deactivateStatusBarStyleOverrideIfNecessaryForScene:object2];
  }
}

- (void)_sceneDidEnterBackground:(id)background
{
  object = [background object];
  v5 = [(CPUINowPlayingViewController *)self _isCarScene:object];

  if (v5)
  {

    [(CPUINowPlayingViewController *)self _setStatusBarOverrideActive:0];
  }
}

- (BOOL)_isCarScene:(id)scene
{
  sceneCopy = scene;
  objc_opt_class();
  v5 = sceneCopy;
  if (objc_opt_isKindOfClass())
  {
    if (!v5)
    {
      v12 = 0;
      v11 = 0;
      goto LABEL_9;
    }

    traitCollection = [v5 traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom != 3)
    {
      v11 = 0;
      v12 = v5;
      goto LABEL_9;
    }

    view = [(CPUINowPlayingViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    v11 = windowScene == v5;

    v12 = v5;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    view = v5;
  }

LABEL_9:
  return v11;
}

- (void)_deactivateStatusBarStyleOverrideIfNecessaryForScene:(id)scene
{
  _FBSScene = [scene _FBSScene];
  settings = [_FBSScene settings];

  if ([settings deactivationReasons] != 16)
  {
    [(CPUINowPlayingViewController *)self _setStatusBarOverrideActive:0];
  }
}

- (void)nowPlayingAudioFormatController:(id)controller didChangeAudioFormatContentInfo:(id)info
{
  controllerCopy = controller;
  infoCopy = info;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__CPUINowPlayingViewController_nowPlayingAudioFormatController_didChangeAudioFormatContentInfo___block_invoke;
  block[3] = &unk_278D9C708;
  v11 = infoCopy;
  v12 = controllerCopy;
  selfCopy = self;
  v8 = controllerCopy;
  v9 = infoCopy;
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

- (void)_updateAudioRenderingMode:(int64_t)mode
{
  v37 = *MEMORY[0x277D85DE8];
  if ([(CPUINowPlayingViewController *)self lastRenderingMode]!= mode)
  {
    self->_lastRenderingMode = mode;
    if (mode == 3)
    {
      v5 = CPUILocalizedStringForKey(@"SPATIAL_AUDIO");
      traitCollection = [(CPUINowPlayingViewController *)self traitCollection];
      v7 = [MEMORY[0x277D755B8] _systemImageNamed:@"person.spatialaudio.fill"];
      v8 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:1 scale:10.0];
      v9 = [v7 imageWithConfiguration:v8];
    }

    else
    {
      traitCollection = [(CPUINowPlayingViewController *)self traitCollection];
      if ((mode - 1) < 2)
      {
        v5 = 0;
        v11 = 0;
        goto LABEL_13;
      }

      if (mode == 4)
      {
        v10 = @"DolbyAudio";
      }

      else
      {
        if (mode != 5)
        {
          v9 = CarPlayUIGeneralLogging();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            [(CPUINowPlayingViewController *)mode _updateAudioRenderingMode:v9];
          }

          v5 = 0;
          v11 = 0;
          goto LABEL_12;
        }

        v10 = @"DolbyAtmos";
      }

      v9 = CPUIImageNamedWithTraitCollection(v10, traitCollection);
      v5 = 0;
    }

    v11 = [v9 imageWithRenderingMode:2];
LABEL_12:

LABEL_13:
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    arrangedSubviews = [(UIStackView *)self->_audioSessionRenderingModeView arrangedSubviews];
    v13 = [arrangedSubviews countByEnumeratingWithState:&v32 objects:v36 count:16];
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
            objc_enumerationMutation(arrangedSubviews);
          }

          v17 = *(*(&v32 + 1) + 8 * i);
          [(UIStackView *)self->_audioSessionRenderingModeView removeArrangedSubview:v17];
          [v17 removeFromSuperview];
        }

        v14 = [arrangedSubviews countByEnumeratingWithState:&v32 objects:v36 count:16];
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
        layer = [(UIStackView *)self->_audioSessionRenderingModeView layer];
        [layer setAllowsGroupBlending:0];

        [(UIStackView *)self->_audioSessionRenderingModeView setAxis:0];
        [(UIStackView *)self->_audioSessionRenderingModeView setDistribution:2];
        [(UIStackView *)self->_audioSessionRenderingModeView setAlignment:3];
        [(UIStackView *)self->_audioSessionRenderingModeView setAlpha:0.400000006];
      }

      v23 = MEMORY[0x277CDA5E8];
      if (v11)
      {
        v24 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v11];
        whiteColor = [MEMORY[0x277D75348] whiteColor];
        [v24 setTintColor:whiteColor];

        [v24 setContentMode:1];
        v26 = [MEMORY[0x277CD9EA0] filterWithType:*v23];
        layer2 = [v24 layer];
        [layer2 setCompositingFilter:v26];

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
      layer3 = [(UIStackView *)audioSessionRenderingModeView layer];
      [layer3 setCompositingFilter:v28];

      v30 = [MEMORY[0x277D74300] systemFontOfSize:10.0 weight:*MEMORY[0x277D74418]];
      [(UIStackView *)audioSessionRenderingModeView setFont:v30];

      whiteColor2 = [MEMORY[0x277D75348] whiteColor];
      [(UIStackView *)audioSessionRenderingModeView setTextColor:whiteColor2];

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
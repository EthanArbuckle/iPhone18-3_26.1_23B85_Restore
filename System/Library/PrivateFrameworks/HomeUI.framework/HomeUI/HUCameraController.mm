@interface HUCameraController
- (AVHomeLoadingButtonControlItem)nextControlItem;
- (AVQueuePlayer)demoModeQueuePlayer;
- (BOOL)_shouldAutoPlayOnViewAppearance;
- (BOOL)hasRecordedClips;
- (BOOL)homeHasMultipleCameraProfiles;
- (BOOL)playerViewControllerShouldAutomaticallyDismissAtPictureInPictureStart:(id)start;
- (BOOL)shouldAutoPlayOnViewAppearance;
- (BOOL)shouldDisableLiveStreamAfterCameraStatusChange;
- (BOOL)shouldDisplayLandscapeMicrophoneInLine;
- (BOOL)shouldDisplayMicrophoneControl;
- (HUCameraController)initWithConfiguration:(id)configuration cameraDelegate:(id)delegate;
- (HUCameraControllerDelegate)cameraDelegate;
- (HUCameraDateDisplayController)dateDisplayController;
- (HUCameraMicrophoneControl)landscapeMicrophoneControl;
- (HUCameraMicrophoneControl)portraitMicrophoneControl;
- (HUCameraStatusOverlayView)cameraStatusView;
- (HUPresentationDelegate)presentationDelegate;
- (UIAlertController)airplaneAlertController;
- (UILabel)dayLabel;
- (UILabel)timeLabel;
- (UIView)loadingOverlayView;
- (UIView)tipView;
- (UIView)volumeControlView;
- (double)cameraStatusViewConstantForTraitCollection;
- (double)currentScrubberResolutionForBehavior:(id)behavior;
- (double)portraitMicrophoneOverlapOffset;
- (id)cameraPickerMenu;
- (id)cameraProfile;
- (id)finishPresentation:(id)presentation animated:(BOOL)animated;
- (id)home;
- (id)playerViewController:(id)controller targetViewForDismissalAnimationWithProposedTargetView:(id)view;
- (id)ppt_clipCollectionView;
- (id)presentInternalViewController:(id)controller;
- (id)presentSettingsViewController;
- (void)_didBeginPlayerViewControllerPresentation;
- (void)_didEndPlayerViewControllerPresentation;
- (void)_displayAirplaneModeAlert;
- (void)_finishDisplayingTimelineForClip:(id)clip;
- (void)_refreshClipCacheAndRefetchForClipUUID:(id)d;
- (void)_reloadClipsWithUpdate:(BOOL)update;
- (void)_resetStateAfterPIP;
- (void)_setupPlaybackEngine:(id)engine;
- (void)_showPictureInPicturePlaybackErrorIfNeeded;
- (void)_submitTimelinePinchToZoomEvent;
- (void)_updateRecordedClipInterfaceAvailabilityWithAnimation:(BOOL)animation;
- (void)_updateStateForPlaybackPosition:(id)position animated:(BOOL)animated;
- (void)addCameraStatusOverlayAndPicker;
- (void)addFooterConstraints;
- (void)addFooterViewController;
- (void)cancelAnyPendingLaunchEventAnalytics;
- (void)cancelLiveTimer;
- (void)changeUnanalyzedCameraClipTipShouldDisplayTo:(BOOL)to;
- (void)cleanUpConstraintSets;
- (void)cleanUpIdleTimerState;
- (void)configureCalendarContainerViewControllerIfNeeded;
- (void)configureClipScrubberViewController;
- (void)configureClipScrubberViewControllerIfNeeded;
- (void)dealloc;
- (void)disableAudioSession;
- (void)dismissEditInterface;
- (void)dismissTip;
- (void)displayCurrentTimeAndDate;
- (void)displayPlaybackUIWithUpdate:(BOOL)update;
- (void)displayTimelineForClipUUID:(id)d;
- (void)enableAudioSession;
- (void)fetchRequestedClipUsingConfiguration;
- (void)handleSceneDidActivate:(id)activate;
- (void)handleSceneWillDeactivate:(id)deactivate;
- (void)itemManager:(id)manager didUpdateResultsForSourceItem:(id)item;
- (void)loadAccessoryViewControllersOnInit;
- (void)loadAuxilliaryViews;
- (void)loadControlItemsOnInit;
- (void)loadDependentViewControllers;
- (void)loadTimelapsePlayer;
- (void)networkDidBecomeUnavailable;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pauseEngineIfNeeded;
- (void)pictureInPictureDidToggleMicrophone;
- (void)playbackControlsDidChangePlayerVolume:(float)volume;
- (void)playbackControlsDidToggleMuted:(BOOL)muted;
- (void)playbackControlsDidUpdateVisibilityOfLoadingIndicator:(BOOL)indicator;
- (void)playbackEngine:(id)engine didUpdateClipPlayer:(id)player;
- (void)playbackEngine:(id)engine didUpdateEventCache:(id)cache;
- (void)playbackEngine:(id)engine didUpdateLiveCameraSource:(id)source;
- (void)playbackEngine:(id)engine didUpdateMicrophoneEnabled:(BOOL)enabled;
- (void)playbackEngine:(id)engine didUpdatePlaybackError:(id)error;
- (void)playbackEngine:(id)engine didUpdatePlaybackPosition:(id)position;
- (void)playbackEngine:(id)engine didUpdateTimeControlStatus:(unint64_t)status;
- (void)playbackEngine:(id)engine didUpdateTimelineState:(unint64_t)state;
- (void)playerViewController:(id)controller contentViewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)playerViewController:(id)controller failedToStartPictureInPictureWithError:(id)error;
- (void)playerViewController:(id)controller restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)handler;
- (void)playerViewController:(id)controller willBeginFullScreenPresentationWithAnimationCoordinator:(id)coordinator;
- (void)playerViewController:(id)controller willEndFullScreenPresentationWithAnimationCoordinator:(id)coordinator;
- (void)playerViewController:(id)controller willTransitionToVisibilityOfPlaybackControls:(BOOL)controls withAnimationCoordinator:(id)coordinator;
- (void)playerViewControllerDidStartPictureInPicture:(id)picture;
- (void)playerViewControllerDidStopPictureInPicture:(id)picture;
- (void)playerViewControllerWillStartPictureInPicture:(id)picture;
- (void)playerViewControllerWillStopPictureInPicture:(id)picture;
- (void)presentNearbyAccessoriesViewController;
- (void)presentTip;
- (void)removePlaybackHistoryUI;
- (void)setEnteringFullScreen:(BOOL)screen;
- (void)setPipState:(unint64_t)state;
- (void)setViewVisible:(BOOL)visible;
- (void)setupConstraintSets;
- (void)setupTipsObserver;
- (void)showCamera:(id)camera;
- (void)startLiveTimer;
- (void)tearDownTipsObserver;
- (void)toggleDemoModeLiveStreamVideo:(BOOL)video;
- (void)toggleMicrophoneState;
- (void)updateBlurWithPlaybackEngine:(id)engine;
- (void)updateCalendarContainerVisibility:(BOOL)visibility;
- (void)updateCameraPlayerForEventPlaybackPosition:(id)position;
- (void)updateCameraStatus;
- (void)updateCanShowOverlayState;
- (void)updateIdleTimer;
- (void)updateIndicatorColor;
- (void)updateLivePreviewAspectRatio;
- (void)updateMicrophoneAndSpeakerStatus;
- (void)updateMicrophoneControlVisibility;
- (void)updateMicrophoneControls;
- (void)updatePIPBehaviorForDeviceAndConfiguration;
- (void)updatePlaceholderContent;
- (void)updatePlayerVolumeSliderState;
- (void)updateStateForPlaybackPosition:(id)position animated:(BOOL)animated;
- (void)updateStateForScrubbingStatus:(BOOL)status animated:(BOOL)animated;
- (void)updateUnanalyzedCameraClipTip;
- (void)updateViewConstraints;
- (void)updateVolumeControlVisibility;
@end

@implementation HUCameraController

- (void)setupTipsObserver
{
  selfCopy = self;
  HUCameraController.setupTipsObserver()();
}

- (void)tearDownTipsObserver
{
  selfCopy = self;
  HUCameraController.tearDownTipsObserver()();
}

- (void)changeUnanalyzedCameraClipTipShouldDisplayTo:(BOOL)to
{
  toCopy = to;
  if (qword_27C81A220 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D708);
  __swift_project_value_buffer(v4, qword_27C8381A0);
  swift_beginAccess();
  sub_20D5665C8();
  swift_endAccess();
  if (v5 != toCopy)
  {
    swift_beginAccess();
    sub_20D5665D8();
    swift_endAccess();
  }
}

- (void)presentTip
{
  selfCopy = self;
  sub_20CFB5234();
}

- (void)dismissTip
{
  selfCopy = self;
  sub_20CFB591C();
}

- (HUCameraController)initWithConfiguration:(id)configuration cameraDelegate:(id)delegate
{
  v61 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  delegateCopy = delegate;
  v56.receiver = self;
  v56.super_class = HUCameraController;
  v9 = [(HUCameraController *)&v56 init];
  if (v9)
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v58 = v9;
      v59 = 2112;
      v60 = configurationCopy;
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@ init with config:%@", buf, 0x16u);
    }

    v11 = objc_alloc_init(MEMORY[0x277D14458]);
    launchEvent = v9->_launchEvent;
    v9->_launchEvent = v11;

    v9->_applicationIsActive = 1;
    objc_storeWeak(&v9->_cameraDelegate, delegateCopy);
    objc_storeStrong(&v9->_playerConfiguration, configuration);
    clipUUID = [configurationCopy clipUUID];
    v9->_needsToFetchClip = clipUUID != 0;

    v14 = objc_alloc(MEMORY[0x277D144A0]);
    cameraProfile = [configurationCopy cameraProfile];
    home = [configurationCopy home];
    hf_characteristicValueManager = [home hf_characteristicValueManager];
    v18 = [v14 initWithProfile:cameraProfile valueSource:hf_characteristicValueManager];
    cameraItem = v9->_cameraItem;
    v9->_cameraItem = v18;

    v20 = objc_opt_new();
    ppt_clipsLoadedFuture = v9->_ppt_clipsLoadedFuture;
    v9->_ppt_clipsLoadedFuture = v20;

    playerViewController = [configurationCopy playerViewController];
    v23 = playerViewController;
    if (playerViewController)
    {
      v24 = playerViewController;
    }

    else
    {
      v24 = objc_alloc_init(MEMORY[0x277CB85E0]);
    }

    playerViewController = v9->_playerViewController;
    v9->_playerViewController = v24;

    [(AVPlayerViewController *)v9->_playerViewController setModalPresentationStyle:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    view = [(AVPlayerViewController *)v9->_playerViewController view];
    [view setBackgroundColor:clearColor];

    if (![(AVPlayerViewController *)v9->_playerViewController isReadyForDisplay]&& ![(HUCameraController *)v9 isObservingReadyForDisplay])
    {
      [(HUCameraController *)v9 setObservingReadyForDisplay:1];
      playerViewController2 = [(HUCameraController *)v9 playerViewController];
      [playerViewController2 addObserver:v9 forKeyPath:@"readyForDisplay" options:0 context:HUCameraControllerReadyForDisplayContext];

      playerViewController3 = [(HUCameraController *)v9 playerViewController];
      [playerViewController3 addObserver:v9 forKeyPath:@"videoBounds" options:0 context:HUCameraControllerReadyForDisplayContext];

      playerViewController4 = [(HUCameraController *)v9 playerViewController];
      customControlsView = [playerViewController4 customControlsView];
      [customControlsView addObserver:v9 forKeyPath:@"bounds" options:0 context:HUCameraControllerReadyForDisplayContext];

      volumeControlView = [(HUCameraController *)v9 volumeControlView];
      [volumeControlView addObserver:v9 forKeyPath:@"bounds" options:3 context:HUCameraControllerReadyForDisplayContext];
    }

    v33 = [[HUCameraPlayerAVBehavior alloc] initWithDelegate:v9];
    behavior = v9->_behavior;
    v9->_behavior = v33;

    playerViewController5 = [(HUCameraController *)v9 playerViewController];
    [playerViewController5 addBehavior:v9->_behavior];

    behaviorContext = [(AVHomeIPCameraBehavior *)v9->_behavior behaviorContext];
    [behaviorContext setPlaybackControlsIncludeTransportControls:0];

    behaviorContext2 = [(AVHomeIPCameraBehavior *)v9->_behavior behaviorContext];
    [behaviorContext2 setPlaybackControlsIncludeDisplayModeControls:1];

    behaviorContext3 = [(AVHomeIPCameraBehavior *)v9->_behavior behaviorContext];
    [behaviorContext3 setZoomingEnabled:1];

    [(HUCameraController *)v9 updatePIPBehaviorForDeviceAndConfiguration];
    playerViewController6 = [(HUCameraController *)v9 playerViewController];
    [playerViewController6 setAllowsEnteringFullScreen:0];

    [(HUCameraController *)v9 _setupPlaybackEngine:configurationCopy];
    [(HUCameraController *)v9 _updateRecordedClipInterfaceAvailabilityWithAnimation:0];
    [(HUCameraController *)v9 loadControlItemsOnInit];
    [(HUCameraController *)v9 loadAccessoryViewControllersOnInit];
    v40 = [HUCameraPlayerLiveContentViewController alloc];
    playbackEngine = [(HUCameraController *)v9 playbackEngine];
    v42 = [(HUCameraPlayerLiveContentViewController *)v40 initWithPlaybackEngine:playbackEngine];
    liveContentViewController = v9->_liveContentViewController;
    v9->_liveContentViewController = v42;

    v44 = [objc_alloc(MEMORY[0x277D14B08]) initWithDelegate:v9 sourceItem:v9->_cameraItem];
    itemManager = v9->_itemManager;
    v9->_itemManager = v44;

    playerViewController7 = [(HUCameraController *)v9 playerViewController];
    [playerViewController7 setDelegate:v9];

    playerViewController8 = [(HUCameraController *)v9 playerViewController];
    [playerViewController8 setUpdatesNowPlayingInfoCenter:0];

    [(HUCameraController *)v9 loadTimelapsePlayer];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel_handleShouldDifferentiateWithoutColorDidChange name:*MEMORY[0x277D764E0] object:0];
    [defaultCenter addObserver:v9 selector:sel_handleSceneWillDeactivate_ name:*MEMORY[0x277D76E78] object:0];
    [defaultCenter addObserver:v9 selector:sel_handleSceneDidActivate_ name:*MEMORY[0x277D76E48] object:0];
    v49 = dispatch_queue_create("com.apple.Home.HUCameraController.AudioSessionQueue", 0);
    [(HUCameraController *)v9 setAudioSessionQueue:v49];

    mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
    v51 = *MEMORY[0x277CB8030];
    v55 = 0;
    [mEMORY[0x277CB83F8] setCategory:v51 error:&v55];
    v52 = v55;

    if (v52)
    {
      v53 = HFLogForCategory();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v58 = v52;
        _os_log_error_impl(&dword_20CEB6000, v53, OS_LOG_TYPE_ERROR, "Unable to properly set audio playback session with error: %@", buf, 0xCu);
      }
    }

    else
    {
      [(HUCameraController *)v9 enableAudioSession];
    }

    [(HUCameraController *)v9 updateVolumeControlVisibility];
    [(HUCameraController *)v9 setPipState:0];
  }

  return v9;
}

- (void)loadControlItemsOnInit
{
  v3 = objc_opt_new();
  objc_initWeak(&location, self);
  v4 = objc_alloc(MEMORY[0x277CB85A8]);
  v5 = _HULocalizedStringWithDefaultValue(@"HUCameraSettingsTitle", @"HUCameraSettingsTitle", 1);
  v6 = [v4 initWithTitle:v5 type:0];

  v7 = [MEMORY[0x277D755B8] hu_settingsImageUsingStandardSymbolConfiguration:0];
  [v6 setImage:v7];

  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __44__HUCameraController_loadControlItemsOnInit__block_invoke;
  v11 = &unk_277DB8770;
  objc_copyWeak(&v12, &location);
  [v6 setAction:&v8];
  [v3 addObject:{v6, v8, v9, v10, v11}];
  [(AVPlayerViewController *)self->_playerViewController setCustomControlItems:v3];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&location);
}

void __44__HUCameraController_loadControlItemsOnInit__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained presentSettingsViewController];
}

- (void)loadAccessoryViewControllersOnInit
{
  v100[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(HUCameraBlurViewController);
  blurViewController = self->_blurViewController;
  self->_blurViewController = v3;

  view = [(HUCameraBlurViewController *)self->_blurViewController view];
  [view setAutoresizingMask:18];

  playerViewController = [(HUCameraController *)self playerViewController];
  contentOverlayView = [playerViewController contentOverlayView];
  [contentOverlayView bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  view2 = [(HUCameraBlurViewController *)self->_blurViewController view];
  [view2 setFrame:{v9, v11, v13, v15}];

  v17 = [HUCameraPlayerAccessoryViewController alloc];
  playbackEngine = [(HUCameraController *)self playbackEngine];
  v19 = [(HUCameraPlayerAccessoryViewController *)v17 initWithPlaybackEngine:playbackEngine];
  accessoryViewController = self->_accessoryViewController;
  self->_accessoryViewController = v19;

  view3 = [(HUCameraPlayerAccessoryViewController *)self->_accessoryViewController view];
  [view3 setAutoresizingMask:18];

  playerViewController2 = [(HUCameraController *)self playerViewController];
  contentOverlayView2 = [playerViewController2 contentOverlayView];
  [contentOverlayView2 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  view4 = [(HUCameraPlayerAccessoryViewController *)self->_accessoryViewController view];
  [view4 setFrame:{v25, v27, v29, v31}];

  v33 = [HUCameraPlayerPlaceholderContentViewController alloc];
  playbackEngine2 = [(HUCameraController *)self playbackEngine];
  v35 = [(HUCameraPlayerPlaceholderContentViewController *)v33 initWithPlaybackEngine:playbackEngine2];
  placeholderContentViewController = self->_placeholderContentViewController;
  self->_placeholderContentViewController = v35;

  view5 = [(HUCameraPlayerPlaceholderContentViewController *)self->_placeholderContentViewController view];
  [view5 setAutoresizingMask:18];

  playerViewController3 = [(HUCameraController *)self playerViewController];
  contentOverlayView3 = [playerViewController3 contentOverlayView];
  [contentOverlayView3 bounds];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  view6 = [(HUCameraPlayerPlaceholderContentViewController *)self->_placeholderContentViewController view];
  [view6 setFrame:{v41, v43, v45, v47}];

  playerViewController4 = [(HUCameraController *)self playerViewController];
  placeholderContentViewController = [(HUCameraController *)self placeholderContentViewController];
  [playerViewController4 addChildViewController:placeholderContentViewController];

  placeholderContentViewController2 = [(HUCameraController *)self placeholderContentViewController];
  playerViewController5 = [(HUCameraController *)self playerViewController];
  [placeholderContentViewController2 didMoveToParentViewController:playerViewController5];

  playerViewController6 = [(HUCameraController *)self playerViewController];
  accessoryViewController = [(HUCameraController *)self accessoryViewController];
  [playerViewController6 addChildViewController:accessoryViewController];

  accessoryViewController2 = [(HUCameraController *)self accessoryViewController];
  playerViewController7 = [(HUCameraController *)self playerViewController];
  [accessoryViewController2 didMoveToParentViewController:playerViewController7];

  playerViewController8 = [(HUCameraController *)self playerViewController];
  blurViewController = [(HUCameraController *)self blurViewController];
  [playerViewController8 addChildViewController:blurViewController];

  blurViewController2 = [(HUCameraController *)self blurViewController];
  playerViewController9 = [(HUCameraController *)self playerViewController];
  [blurViewController2 didMoveToParentViewController:playerViewController9];

  playerViewController10 = [(HUCameraController *)self playerViewController];
  contentOverlayView4 = [playerViewController10 contentOverlayView];
  blurViewController3 = [(HUCameraController *)self blurViewController];
  view7 = [blurViewController3 view];
  [contentOverlayView4 addSubview:view7];

  loadingOverlayView = [(HUCameraController *)self loadingOverlayView];
  accessoryViewController3 = [(HUCameraController *)self accessoryViewController];
  [accessoryViewController3 setLoadingOverlayView:loadingOverlayView];

  playerViewController11 = [(HUCameraController *)self playerViewController];
  contentOverlayView5 = [playerViewController11 contentOverlayView];
  loadingOverlayView2 = [(HUCameraController *)self loadingOverlayView];
  [contentOverlayView5 addSubview:loadingOverlayView2];

  playerViewController12 = [(HUCameraController *)self playerViewController];
  customControlsView = [playerViewController12 customControlsView];
  accessoryViewController4 = [(HUCameraController *)self accessoryViewController];
  view8 = [accessoryViewController4 view];
  [customControlsView addSubview:view8];

  playerViewController13 = [(HUCameraController *)self playerViewController];
  contentOverlayView6 = [playerViewController13 contentOverlayView];
  superview = [contentOverlayView6 superview];

  v91 = MEMORY[0x277CCAAD0];
  loadingOverlayView3 = [(HUCameraController *)self loadingOverlayView];
  topAnchor = [loadingOverlayView3 topAnchor];
  topAnchor2 = [superview topAnchor];
  v95 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v100[0] = v95;
  loadingOverlayView4 = [(HUCameraController *)self loadingOverlayView];
  bottomAnchor = [loadingOverlayView4 bottomAnchor];
  bottomAnchor2 = [superview bottomAnchor];
  v90 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v100[1] = v90;
  loadingOverlayView5 = [(HUCameraController *)self loadingOverlayView];
  leadingAnchor = [loadingOverlayView5 leadingAnchor];
  v96 = superview;
  leadingAnchor2 = [superview leadingAnchor];
  v80 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v100[2] = v80;
  loadingOverlayView6 = [(HUCameraController *)self loadingOverlayView];
  trailingAnchor = [loadingOverlayView6 trailingAnchor];
  trailingAnchor2 = [superview trailingAnchor];
  v84 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v100[3] = v84;
  v85 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:4];
  [v91 activateConstraints:v85];

  playerViewController14 = [(HUCameraController *)self playerViewController];
  contentOverlayView7 = [playerViewController14 contentOverlayView];
  placeholderContentViewController3 = [(HUCameraController *)self placeholderContentViewController];
  view9 = [placeholderContentViewController3 view];
  [contentOverlayView7 addSubview:view9];
}

- (void)loadTimelapsePlayer
{
  cameraProfile = [(HUCameraController *)self cameraProfile];
  clipManager = [cameraProfile clipManager];
  mEMORY[0x277D144F0] = [MEMORY[0x277D144F0] sharedManager];
  [mEMORY[0x277D144F0] setClipManager:clipManager];

  v6 = [HUCameraTimelapseController alloc];
  cameraProfile2 = [(HUCameraController *)self cameraProfile];
  v8 = [(HUCameraTimelapseController *)v6 initWithCameraProfile:cameraProfile2];
  [(HUCameraController *)self setTimelapseController:v8];

  playerViewController = [(HUCameraController *)self playerViewController];
  customControlsView = [playerViewController customControlsView];
  layer = [customControlsView layer];
  timelapseController = [(HUCameraController *)self timelapseController];
  imageLayer = [timelapseController imageLayer];
  [layer addSublayer:imageLayer];

  playerViewController2 = [(HUCameraController *)self playerViewController];
  customControlsView2 = [playerViewController2 customControlsView];
  layer2 = [customControlsView2 layer];
  timelapseController2 = [(HUCameraController *)self timelapseController];
  playerLayer = [timelapseController2 playerLayer];
  [layer2 addSublayer:playerLayer];
}

- (void)loadDependentViewControllers
{
  v75 = *MEMORY[0x277D85DE8];
  [(HUCameraController *)self addFooterViewController];
  [(HUCameraController *)self configureCalendarContainerViewControllerIfNeeded];
  [(HUCameraController *)self _updateRecordedClipInterfaceAvailabilityWithAnimation:0];
  [(HUCameraController *)self addCameraStatusOverlayAndPicker];
  [(HUCameraController *)self updatePlaceholderContent];
  playbackEngine = [(HUCameraController *)self playbackEngine];
  playbackPosition = [playbackEngine playbackPosition];
  [(HUCameraController *)self updateStateForPlaybackPosition:playbackPosition animated:0];

  playerViewController = [(HUCameraController *)self playerViewController];
  customControlsView = [playerViewController customControlsView];
  portraitMicrophoneControl = [(HUCameraController *)self portraitMicrophoneControl];
  [customControlsView addSubview:portraitMicrophoneControl];

  playerViewController2 = [(HUCameraController *)self playerViewController];
  customControlsView2 = [playerViewController2 customControlsView];
  landscapeMicrophoneControl = [(HUCameraController *)self landscapeMicrophoneControl];
  [customControlsView2 addSubview:landscapeMicrophoneControl];

  cameraProfile = [(HUCameraController *)self cameraProfile];
  LODWORD(customControlsView2) = [cameraProfile hf_supportsBidirectionalAudio];

  playbackEngine3 = HFLogForCategory();
  v13 = os_log_type_enabled(playbackEngine3, OS_LOG_TYPE_DEFAULT);
  if (customControlsView2)
  {
    if (v13)
    {
      cameraProfile2 = [(HUCameraController *)self cameraProfile];
      accessory = [cameraProfile2 accessory];
      name = [accessory name];
      *buf = 138412290;
      v74 = name;
      _os_log_impl(&dword_20CEB6000, playbackEngine3, OS_LOG_TYPE_DEFAULT, "Display microphone control for %@.", buf, 0xCu);
    }

    playbackEngine2 = [(HUCameraController *)self playbackEngine];
    isMicrophoneEnabled = [playbackEngine2 isMicrophoneEnabled];
    portraitMicrophoneControl2 = [(HUCameraController *)self portraitMicrophoneControl];
    [portraitMicrophoneControl2 setTalking:isMicrophoneEnabled];

    playbackEngine3 = [(HUCameraController *)self playbackEngine];
    isMicrophoneEnabled2 = [playbackEngine3 isMicrophoneEnabled];
    landscapeMicrophoneControl2 = [(HUCameraController *)self landscapeMicrophoneControl];
    [landscapeMicrophoneControl2 setTalking:isMicrophoneEnabled2];
  }

  else if (v13)
  {
    cameraProfile3 = [(HUCameraController *)self cameraProfile];
    accessory2 = [cameraProfile3 accessory];
    name2 = [accessory2 name];
    *buf = 138412290;
    v74 = name2;
    _os_log_impl(&dword_20CEB6000, playbackEngine3, OS_LOG_TYPE_DEFAULT, "Hide microphone control for %@.", buf, 0xCu);
  }

  [(HUCameraController *)self setupConstraintSets];
  [(HUCameraController *)self updateMicrophoneControls];
  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    accessoryViewController = [(HUCameraController *)self accessoryViewController];
    view = [accessoryViewController view];
    [view setHidden:1];

    blurViewController = [(HUCameraController *)self blurViewController];
    view2 = [blurViewController view];
    [view2 setHidden:1];

    playerViewController3 = [(HUCameraController *)self playerViewController];
    view3 = [playerViewController3 view];
    dayLabel = [(HUCameraController *)self dayLabel];
    [view3 addSubview:dayLabel];

    playerViewController4 = [(HUCameraController *)self playerViewController];
    view4 = [playerViewController4 view];
    timeLabel = [(HUCameraController *)self timeLabel];
    [view4 addSubview:timeLabel];

    demoPlayerView = [(HUCameraController *)self demoPlayerView];

    if (!demoPlayerView)
    {
      v36 = MEMORY[0x277D14608];
      cameraProfile4 = [(HUCameraController *)self cameraProfile];
      accessory3 = [cameraProfile4 accessory];
      v39 = [v36 demoLiveStreamURLForCamera:accessory3];

      v71 = v39;
      v40 = [MEMORY[0x277CE65B0] playerItemWithURL:v39];
      v41 = objc_alloc_init(MEMORY[0x277CE65F8]);
      [(HUCameraController *)self setDemoModeQueuePlayer:v41];
      v70 = v40;
      v42 = [MEMORY[0x277CE65E0] playerLooperWithPlayer:v41 templateItem:v40];
      [(HUCameraController *)self setLooper:v42];

      v69 = v41;
      v43 = [[HUCameraRecordingPlayerView alloc] initWithPlayer:v41 displayingProgressView:0];
      [(HUCameraController *)self setDemoPlayerView:v43];

      playerViewController5 = [(HUCameraController *)self playerViewController];
      contentOverlayView = [playerViewController5 contentOverlayView];
      demoPlayerView2 = [(HUCameraController *)self demoPlayerView];
      [contentOverlayView addSubview:demoPlayerView2];

      demoPlayerView3 = [(HUCameraController *)self demoPlayerView];
      [demoPlayerView3 setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(demoPlayerView2) = [MEMORY[0x277D14CE8] isAMac];
      playerViewController6 = [(HUCameraController *)self playerViewController];
      view5 = [playerViewController6 view];
      v50 = view5;
      if (demoPlayerView2)
      {
        safeAreaLayoutGuide = [view5 safeAreaLayoutGuide];

        v50 = safeAreaLayoutGuide;
      }

      playerViewController7 = [(HUCameraController *)self playerViewController];
      contentOverlayView2 = [playerViewController7 contentOverlayView];

      v63 = MEMORY[0x277CCAAD0];
      topAnchor = [contentOverlayView2 topAnchor];
      topAnchor2 = [demoPlayerView3 topAnchor];
      v66 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v72[0] = v66;
      bottomAnchor = [contentOverlayView2 bottomAnchor];
      bottomAnchor2 = [demoPlayerView3 bottomAnchor];
      v62 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v72[1] = v62;
      leadingAnchor = [contentOverlayView2 leadingAnchor];
      leadingAnchor2 = [demoPlayerView3 leadingAnchor];
      v56 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v72[2] = v56;
      trailingAnchor = [contentOverlayView2 trailingAnchor];
      trailingAnchor2 = [demoPlayerView3 trailingAnchor];
      v59 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v72[3] = v59;
      v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:4];
      [v63 activateConstraints:v60];
    }
  }

  portraitMicrophoneControl3 = [(HUCameraController *)self portraitMicrophoneControl];
  [portraitMicrophoneControl3 layoutIfNeeded];
}

- (void)addCameraStatusOverlayAndPicker
{
  v3 = [MEMORY[0x277D75220] buttonWithType:0];
  [(HUCameraController *)self setCameraPickerButton:v3];

  cameraPickerButton = [(HUCameraController *)self cameraPickerButton];
  [cameraPickerButton setAutoresizingMask:18];

  cameraStatusView = [(HUCameraController *)self cameraStatusView];
  [cameraStatusView bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  cameraPickerButton2 = [(HUCameraController *)self cameraPickerButton];
  [cameraPickerButton2 setFrame:{v7, v9, v11, v13}];

  cameraPickerButton3 = [(HUCameraController *)self cameraPickerButton];
  [cameraPickerButton3 setTitle:@" " forState:0];

  cameraStatusView2 = [(HUCameraController *)self cameraStatusView];
  cameraPickerButton4 = [(HUCameraController *)self cameraPickerButton];
  [cameraStatusView2 addSubview:cameraPickerButton4];

  playerViewController = [(HUCameraController *)self playerViewController];
  customControlsView = [playerViewController customControlsView];
  cameraStatusView3 = [(HUCameraController *)self cameraStatusView];
  [customControlsView naui_addAutoLayoutSubview:cameraStatusView3];

  if ([(HUCameraController *)self homeHasMultipleCameraProfiles])
  {
    cameraPickerButton5 = [(HUCameraController *)self cameraPickerButton];
    [cameraPickerButton5 setContextMenuInteractionEnabled:1];

    cameraPickerButton6 = [(HUCameraController *)self cameraPickerButton];
    [cameraPickerButton6 setShowsMenuAsPrimaryAction:1];

    cameraPickerMenu = [(HUCameraController *)self cameraPickerMenu];
    cameraPickerButton7 = [(HUCameraController *)self cameraPickerButton];
    [cameraPickerButton7 setMenu:cameraPickerMenu];
  }

  else
  {
    v24 = HFLogForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v24, OS_LOG_TYPE_DEFAULT, "Not showing camera picker for single camera", buf, 2u);
    }
  }
}

- (void)loadAuxilliaryViews
{
  if ([(HUCameraController *)self hasRecordedClips])
  {
    dayLabel = [(HUCameraController *)self dayLabel];
    [dayLabel alpha];
    v5 = v4;

    if (v5 < 1.0)
    {
      dayLabel2 = [(HUCameraController *)self dayLabel];
      [dayLabel2 setAlpha:1.0];

      timeLabel = [(HUCameraController *)self timeLabel];
      [timeLabel setAlpha:1.0];

      dayLabelBottomConstraint = [(HUCameraController *)self dayLabelBottomConstraint];
      [dayLabelBottomConstraint setConstant:120.0];
    }
  }

  [(HUCameraController *)self updatePlaceholderContent];
  if ([(HUCameraController *)self shouldAutoPlayOnViewAppearance])
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Autoplaying playback engine on viewWillAppear:.", buf, 2u);
    }

    if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
    {
      [(HUCameraController *)self toggleDemoModeLiveStreamVideo:1];
      demoPlayerView = [(HUCameraController *)self demoPlayerView];
      superview = [demoPlayerView superview];
      demoPlayerView2 = [(HUCameraController *)self demoPlayerView];
      [superview bringSubviewToFront:demoPlayerView2];
    }

    else
    {
      demoPlayerView = [(HUCameraController *)self playbackEngine];
      [demoPlayerView play];
    }
  }

  [(HUCameraController *)self setViewVisible:1];
  [(HUCameraController *)self updateMicrophoneControls];
  if ([(HUCameraController *)self needsToFetchClip])
  {
    [(HUCameraController *)self fetchRequestedClipUsingConfiguration];
  }

  v13 = dispatch_time(0, 200000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__HUCameraController_loadAuxilliaryViews__block_invoke;
  block[3] = &unk_277DB8488;
  block[4] = self;
  dispatch_after(v13, MEMORY[0x277D85CD0], block);
}

void __41__HUCameraController_loadAuxilliaryViews__block_invoke(uint64_t a1)
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "did attempt to flash", v4, 2u);
  }

  v3 = [*(a1 + 32) playerViewController];
  [v3 flashPlaybackControlsWithDuration:1.79769313e308];
}

- (void)_setupPlaybackEngine:(id)engine
{
  engineCopy = engine;
  playbackEngine = [engineCopy playbackEngine];

  if (playbackEngine)
  {
    playbackEngine2 = [engineCopy playbackEngine];
    [(HUCameraController *)self setPlaybackEngine:playbackEngine2];
    goto LABEL_12;
  }

  v6 = objc_alloc(MEMORY[0x277D144C0]);
  home = [(HUCameraController *)self home];
  cameraProfile = [(HUCameraController *)self cameraProfile];
  playbackEngine2 = [v6 initWithHome:home cameraProfile:cameraProfile];

  behavior = [(HUCameraController *)self behavior];
  [playbackEngine2 setClipScrubber:behavior];

  playerConfiguration = [(HUCameraController *)self playerConfiguration];
  startingPlaybackDate = [playerConfiguration startingPlaybackDate];

  if (startingPlaybackDate)
  {
    v12 = MEMORY[0x277D144D0];
    playerConfiguration2 = [(HUCameraController *)self playerConfiguration];
    startingPlaybackDate2 = [playerConfiguration2 startingPlaybackDate];
    v15 = [v12 clipPositionWithDate:startingPlaybackDate2];
    [playbackEngine2 setPlaybackPosition:v15];
  }

  v16 = objc_alloc_init(MEMORY[0x277D144B8]);
  [(HUCameraController *)self setPlaybackEngine:v16];

  v17 = objc_alloc_init(MEMORY[0x277D144C8]);
  [v17 setPeriodicTimeUpdateInterval:&unk_2824935B0];
  playbackEngine3 = [(HUCameraController *)self playbackEngine];
  [playbackEngine3 addObserver:self withOptions:v17];

  playbackEngine4 = [(HUCameraController *)self playbackEngine];
  [playbackEngine4 updateConfiguration:playbackEngine2];

  cameraProfile2 = [(HUCameraController *)self cameraProfile];
  if ([cameraProfile2 hf_supportsRecordingEvents])
  {

    goto LABEL_8;
  }

  isPressDemoModeEnabled = [MEMORY[0x277D14CE8] isPressDemoModeEnabled];

  if (isPressDemoModeEnabled)
  {
LABEL_8:
    playerConfiguration3 = [(HUCameraController *)self playerConfiguration];
    clipUUID = [playerConfiguration3 clipUUID];

    if (clipUUID)
    {
      playerConfiguration4 = [(HUCameraController *)self playerConfiguration];
      clipUUID2 = [playerConfiguration4 clipUUID];
      [(HUCameraController *)self displayTimelineForClipUUID:clipUUID2];
    }

    else
    {
      [(HUCameraController *)self _reloadClipsWithUpdate:1];
    }
  }

LABEL_12:
}

- (id)home
{
  playerConfiguration = [(HUCameraController *)self playerConfiguration];
  home = [playerConfiguration home];

  return home;
}

- (id)cameraProfile
{
  playerConfiguration = [(HUCameraController *)self playerConfiguration];
  cameraProfile = [playerConfiguration cameraProfile];

  return cameraProfile;
}

- (BOOL)hasRecordedClips
{
  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    return 1;
  }

  cameraProfile = [(HUCameraController *)self cameraProfile];
  if ([cameraProfile hf_supportsRecordingEvents])
  {
    playbackEngine = [(HUCameraController *)self playbackEngine];
    cameraClips = [playbackEngine cameraClips];
    v3 = [cameraClips count] != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (AVHomeLoadingButtonControlItem)nextControlItem
{
  nextControlItem = self->_nextControlItem;
  if (!nextControlItem)
  {
    v4 = objc_alloc(MEMORY[0x277CB85B8]);
    v5 = _HULocalizedStringWithDefaultValue(@"HUCameraNextText", @"HUCameraNextText", 1);
    v6 = [v4 initWithTitle:v5 type:1];
    v7 = self->_nextControlItem;
    self->_nextControlItem = v6;

    systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
    [(AVHomeLoadingButtonControlItem *)self->_nextControlItem setTintColor:systemBlackColor];

    v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    [(AVHomeLoadingButtonControlItem *)self->_nextControlItem setTitleFont:v9];

    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __37__HUCameraController_nextControlItem__block_invoke;
    v11[3] = &unk_277DB8770;
    objc_copyWeak(&v12, &location);
    [(AVHomeLoadingButtonControlItem *)self->_nextControlItem setAction:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    nextControlItem = self->_nextControlItem;
  }

  return nextControlItem;
}

void __37__HUCameraController_nextControlItem__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HUCameraController_nextControlItem__block_invoke_2;
  block[3] = &unk_277DB8488;
  block[4] = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v2 = [WeakRetained playbackEngine];
  [v2 pause];

  v3 = [WeakRetained clipScrubberViewController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__HUCameraController_nextControlItem__block_invoke_3;
  v4[3] = &unk_277DB8488;
  v4[4] = WeakRetained;
  [v3 exportCurrentClipWithCompletion:v4];
}

void __37__HUCameraController_nextControlItem__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) nextControlItem];
  [v1 setShowsLoadingIndicator:1];
}

void __37__HUCameraController_nextControlItem__block_invoke_3(uint64_t a1)
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "Handing off export to sharekit.", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HUCameraController_nextControlItem__block_invoke_134;
  block[3] = &unk_277DB8488;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __37__HUCameraController_nextControlItem__block_invoke_134(uint64_t a1)
{
  v1 = [*(a1 + 32) nextControlItem];
  [v1 setShowsLoadingIndicator:0];
}

- (void)setViewVisible:(BOOL)visible
{
  if (self->_viewVisible != visible)
  {
    self->_viewVisible = visible;
    [(HUCameraController *)self updateCanShowOverlayState];
  }
}

- (void)setEnteringFullScreen:(BOOL)screen
{
  if (self->_enteringFullScreen != screen)
  {
    self->_enteringFullScreen = screen;
    [(HUCameraController *)self updateCanShowOverlayState];
  }
}

- (id)ppt_clipCollectionView
{
  clipScrubberViewController = [(HUCameraController *)self clipScrubberViewController];
  view = [clipScrubberViewController view];
  subviews = [view subviews];
  v5 = [subviews na_firstObjectPassingTest:&__block_literal_global_244];

  clipCollectionView = [v5 clipCollectionView];

  return clipCollectionView;
}

uint64_t __44__HUCameraController_ppt_clipCollectionView__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (double)cameraStatusViewConstantForTraitCollection
{
  playerViewController = [(HUCameraController *)self playerViewController];
  traitCollection = [playerViewController traitCollection];
  hu_hasExtendedWidth = [traitCollection hu_hasExtendedWidth];

  if (hu_hasExtendedWidth)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 47.0;
  }

  playbackEngine = [(HUCameraController *)self playbackEngine];
  playbackPosition = [playbackEngine playbackPosition];
  livePosition = [MEMORY[0x277D144D0] livePosition];
  v10 = [playbackPosition isEqual:livePosition];

  if ((v10 & 1) == 0)
  {
    v6 = v6 + 10.0;
    playbackEngine2 = [(HUCameraController *)self playbackEngine];
    hasRecordingEvents = [playbackEngine2 hasRecordingEvents];

    if (hasRecordingEvents)
    {
      return v6 + 47.0;
    }
  }

  return v6;
}

- (void)setupConstraintSets
{
  objc_initWeak(&location, self);
  cameraStatusView = [(HUCameraController *)self cameraStatusView];
  topAnchor = [cameraStatusView topAnchor];
  playerViewController = [(HUCameraController *)self playerViewController];
  customControlsView = [playerViewController customControlsView];
  volumeControlsAreaLayoutGuide = [customControlsView volumeControlsAreaLayoutGuide];
  topAnchor2 = [volumeControlsAreaLayoutGuide topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [(HUCameraController *)self setCameraStatusViewTopConstraint:v9];

  v10 = objc_alloc(MEMORY[0x277D2C958]);
  cameraStatusView2 = [(HUCameraController *)self cameraStatusView];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __41__HUCameraController_setupConstraintSets__block_invoke;
  v28[3] = &unk_277DC2030;
  objc_copyWeak(&v29, &location);
  v12 = [v10 initWithOwningView:cameraStatusView2 constraintBuilder:v28];
  [(HUCameraController *)self setCameraStatusViewConstraintSet:v12];

  v13 = objc_alloc(MEMORY[0x277D2C958]);
  playerViewController2 = [(HUCameraController *)self playerViewController];
  view = [playerViewController2 view];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __41__HUCameraController_setupConstraintSets__block_invoke_2;
  v26[3] = &unk_277DC2030;
  objc_copyWeak(&v27, &location);
  v16 = [v13 initWithOwningView:view constraintBuilder:v26];
  [(HUCameraController *)self setPortraitMicrophoneConstraintSet:v16];

  v17 = objc_alloc(MEMORY[0x277D2C958]);
  playerViewController3 = [(HUCameraController *)self playerViewController];
  view2 = [playerViewController3 view];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __41__HUCameraController_setupConstraintSets__block_invoke_3;
  v24 = &unk_277DC2030;
  objc_copyWeak(&v25, &location);
  v20 = [v17 initWithOwningView:view2 constraintBuilder:&v21];
  [(HUCameraController *)self setLandscapeMicrophoneConstraintSet:v20, v21, v22, v23, v24];

  [(HUCameraController *)self addFooterConstraints];
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

id __41__HUCameraController_setupConstraintSets__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 superview];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = [WeakRetained playerViewController];
    v8 = [v7 customControlsView];

    v9 = [WeakRetained cameraStatusViewTopConstraint];
    [v6 addObject:v9];

    v10 = [v3 heightAnchor];
    v11 = [v10 constraintEqualToConstant:47.0];
    [v6 addObject:v11];

    v12 = [WeakRetained cameraStatusViewTopConstraint];
    [v12 constant];
    v14 = v13;

    if (v14 <= 0.0)
    {
      v20 = [v3 leadingAnchor];
      v21 = [v8 unobscuredTopAreaLayoutGuide];
      v22 = [v21 leadingAnchor];
      v23 = [v20 constraintEqualToAnchor:v22];
      [v6 addObject:v23];

      v18 = [v3 trailingAnchor];
      v19 = [v8 unobscuredTopAreaLayoutGuide];
      [v19 trailingAnchor];
    }

    else
    {
      v15 = [v3 centerXAnchor];
      v16 = [v8 centerXAnchor];
      v17 = [v15 constraintEqualToAnchor:v16];
      [v6 addObject:v17];

      v18 = [v3 widthAnchor];
      v19 = [v8 animatedUnobscuredCenterAreaLayoutGuide];
      [v19 widthAnchor];
    }
    v24 = ;
    v25 = [v18 constraintEqualToAnchor:v24];
    [v6 addObject:v25];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

id __41__HUCameraController_setupConstraintSets__block_invoke_2(uint64_t a1)
{
  v28[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v27 = [WeakRetained portraitMicrophoneControl];
  v6 = [v27 centerXAnchor];
  v25 = [WeakRetained playerViewController];
  v24 = [v25 customControlsView];
  [v24 centerXAnchor];
  v23 = v26 = v6;
  v22 = [v6 constraintEqualToAnchor:?];
  v28[0] = v22;
  v21 = [WeakRetained playbackEngine];
  v20 = [v21 hasRecordingEvents];
  if (v20 && ([WeakRetained timeLabel], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "superview"), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = v7;
    v17 = [WeakRetained portraitMicrophoneControl];
    v8 = [v17 bottomAnchor];
    v15 = [WeakRetained timeLabel];
    [v15 topAnchor];
    v14 = v16 = v8;
    v9 = [v8 constraintEqualToAnchor:-16.0 constant:?];
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v8 = [WeakRetained portraitMicrophoneControl];
    v1 = [v8 centerYAnchor];
    v2 = [WeakRetained footerViewController];
    v3 = [v2 view];
    v4 = [v3 centerYAnchor];
    [WeakRetained portraitMicrophoneOverlapOffset];
    v9 = [v1 constraintEqualToAnchor:v4 constant:?];
    v18 = 0;
    v11 = 0;
    v10 = 1;
  }

  v28[1] = v9;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  if (v10)
  {
  }

  if (v11)
  {
  }

  if (v20)
  {
  }

  return v12;
}

id __41__HUCameraController_setupConstraintSets__block_invoke_3(uint64_t a1)
{
  v21[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained shouldDisplayLandscapeMicrophoneInLine];
  v3 = [WeakRetained landscapeMicrophoneControl];
  v4 = [v3 trailingAnchor];
  v5 = [WeakRetained playerViewController];
  v6 = [v5 customControlsView];
  v7 = [v6 volumeControlsAreaLayoutGuide];
  v8 = v7;
  if (v2)
  {
    v9 = [v7 leadingAnchor];
    [v4 constraintGreaterThanOrEqualToAnchor:v9 constant:-16.0];
  }

  else
  {
    v9 = [v7 trailingAnchor];
    [v4 constraintEqualToAnchor:v9];
  }
  v10 = ;

  LODWORD(v11) = 1132068864;
  [v10 setPriority:v11];
  v12 = [WeakRetained shouldDisplayLandscapeMicrophoneInLine];
  v13 = [WeakRetained landscapeMicrophoneControl];
  v14 = v13;
  if (v12)
  {
    v15 = [v13 centerYAnchor];
    v16 = [WeakRetained volumeControlView];
    v17 = [v16 centerYAnchor];
    [v15 constraintEqualToAnchor:v17];
  }

  else
  {
    v15 = [v13 topAnchor];
    v16 = [WeakRetained volumeControlView];
    v17 = [v16 bottomAnchor];
    [v15 constraintEqualToAnchor:v17 constant:20.0];
  }
  v18 = ;
  v21[0] = v18;
  v21[1] = v10;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];

  return v19;
}

- (void)addFooterConstraints
{
  footerViewController = [(HUCameraController *)self footerViewController];
  view = [footerViewController view];
  heightAnchor = [view heightAnchor];
  v6 = [heightAnchor constraintEqualToConstant:44.0];
  [v6 setActive:1];

  footerViewController2 = [(HUCameraController *)self footerViewController];
  view2 = [footerViewController2 view];
  leftAnchor = [view2 leftAnchor];
  playerViewController = [(HUCameraController *)self playerViewController];
  customControlsView = [playerViewController customControlsView];
  unobscuredCenterAreaLayoutGuide = [customControlsView unobscuredCenterAreaLayoutGuide];
  leftAnchor2 = [unobscuredCenterAreaLayoutGuide leftAnchor];
  v14 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v14 setActive:1];

  footerViewController3 = [(HUCameraController *)self footerViewController];
  view3 = [footerViewController3 view];
  rightAnchor = [view3 rightAnchor];
  playerViewController2 = [(HUCameraController *)self playerViewController];
  customControlsView2 = [playerViewController2 customControlsView];
  unobscuredCenterAreaLayoutGuide2 = [customControlsView2 unobscuredCenterAreaLayoutGuide];
  rightAnchor2 = [unobscuredCenterAreaLayoutGuide2 rightAnchor];
  v22 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v22 setActive:1];

  footerViewController4 = [(HUCameraController *)self footerViewController];
  view4 = [footerViewController4 view];
  bottomAnchor = [view4 bottomAnchor];
  playerViewController3 = [(HUCameraController *)self playerViewController];
  customControlsView3 = [playerViewController3 customControlsView];
  transportControlsAreaLayoutGuide = [customControlsView3 transportControlsAreaLayoutGuide];
  bottomAnchor2 = [transportControlsAreaLayoutGuide bottomAnchor];
  v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v29 setActive:1];
}

- (void)updateViewConstraints
{
  cameraStatusViewConstraintSet = [(HUCameraController *)self cameraStatusViewConstraintSet];
  [cameraStatusViewConstraintSet activateIfNeeded];

  scrubberConstraintSet = [(HUCameraController *)self scrubberConstraintSet];
  [scrubberConstraintSet activateIfNeeded];

  calendarConstraintSet = [(HUCameraController *)self calendarConstraintSet];
  [calendarConstraintSet activateIfNeeded];

  if ([(HUCameraController *)self shouldDisplayMicrophoneControl])
  {
    portraitMicrophoneConstraintSet = [(HUCameraController *)self portraitMicrophoneConstraintSet];
    [portraitMicrophoneConstraintSet activateIfNeeded];

    landscapeMicrophoneConstraintSet = [(HUCameraController *)self landscapeMicrophoneConstraintSet];
    [landscapeMicrophoneConstraintSet activateIfNeeded];
  }
}

- (void)configureClipScrubberViewControllerIfNeeded
{
  clipScrubberViewController = [(HUCameraController *)self clipScrubberViewController];

  if (!clipScrubberViewController)
  {
    [(HUCameraController *)self configureClipScrubberViewController];
    clipScrubberViewController2 = [(HUCameraController *)self clipScrubberViewController];
    playbackEngine = [(HUCameraController *)self playbackEngine];
    playbackEngine2 = [(HUCameraController *)self playbackEngine];
    playbackPosition = [playbackEngine2 playbackPosition];
    [clipScrubberViewController2 playbackEngine:playbackEngine didUpdatePlaybackPosition:playbackPosition];
  }
}

- (void)configureClipScrubberViewController
{
  v90[6] = *MEMORY[0x277D85DE8];
  v3 = [HUClipScrubberViewController alloc];
  playbackEngine = [(HUCameraController *)self playbackEngine];
  v5 = [(HUClipScrubberViewController *)v3 initWithPlaybackEngine:playbackEngine];
  [(HUCameraController *)self setClipScrubberViewController:v5];

  objc_initWeak(&location, self);
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = __57__HUCameraController_configureClipScrubberViewController__block_invoke;
  v87[3] = &unk_277DB8770;
  objc_copyWeak(&v88, &location);
  clipScrubberViewController = [(HUCameraController *)self clipScrubberViewController];
  [clipScrubberViewController setAccessoryButtonHandler:v87];

  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __57__HUCameraController_configureClipScrubberViewController__block_invoke_2;
  v85[3] = &unk_277DB8770;
  objc_copyWeak(&v86, &location);
  clipScrubberViewController2 = [(HUCameraController *)self clipScrubberViewController];
  [clipScrubberViewController2 setBeginEditingHandler:v85];

  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __57__HUCameraController_configureClipScrubberViewController__block_invoke_4;
  v83[3] = &unk_277DB8770;
  objc_copyWeak(&v84, &location);
  clipScrubberViewController3 = [(HUCameraController *)self clipScrubberViewController];
  [clipScrubberViewController3 setEndEditingHandler:v83];

  playerViewController = [(HUCameraController *)self playerViewController];
  customControlsView = [playerViewController customControlsView];
  dayLabel = [(HUCameraController *)self dayLabel];
  [customControlsView addSubview:dayLabel];

  playerViewController2 = [(HUCameraController *)self playerViewController];
  customControlsView2 = [playerViewController2 customControlsView];
  timeLabel = [(HUCameraController *)self timeLabel];
  [customControlsView2 addSubview:timeLabel];

  playerViewController3 = [(HUCameraController *)self playerViewController];
  clipScrubberViewController4 = [(HUCameraController *)self clipScrubberViewController];
  [playerViewController3 addChildViewController:clipScrubberViewController4];

  clipScrubberViewController5 = [(HUCameraController *)self clipScrubberViewController];
  view = [clipScrubberViewController5 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  playerViewController4 = [(HUCameraController *)self playerViewController];
  customControlsView3 = [playerViewController4 customControlsView];
  clipScrubberViewController6 = [(HUCameraController *)self clipScrubberViewController];
  view2 = [clipScrubberViewController6 view];
  [customControlsView3 addSubview:view2];

  clipScrubberViewController7 = [(HUCameraController *)self clipScrubberViewController];
  playerViewController5 = [(HUCameraController *)self playerViewController];
  [clipScrubberViewController7 didMoveToParentViewController:playerViewController5];

  dayLabel2 = [(HUCameraController *)self dayLabel];
  bottomAnchor = [dayLabel2 bottomAnchor];
  clipScrubberViewController8 = [(HUCameraController *)self clipScrubberViewController];
  view3 = [clipScrubberViewController8 view];
  topAnchor = [view3 topAnchor];
  v30 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:120.0];
  [(HUCameraController *)self setDayLabelBottomConstraint:v30];

  dayLabelBottomConstraint = [(HUCameraController *)self dayLabelBottomConstraint];
  v90[0] = dayLabelBottomConstraint;
  dayLabel3 = [(HUCameraController *)self dayLabel];
  leftAnchor = [dayLabel3 leftAnchor];
  playerViewController6 = [(HUCameraController *)self playerViewController];
  customControlsView4 = [playerViewController6 customControlsView];
  safeAreaLayoutGuide = [customControlsView4 safeAreaLayoutGuide];
  leftAnchor2 = [safeAreaLayoutGuide leftAnchor];
  v73 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v90[1] = v73;
  dayLabel4 = [(HUCameraController *)self dayLabel];
  rightAnchor = [dayLabel4 rightAnchor];
  playerViewController7 = [(HUCameraController *)self playerViewController];
  customControlsView5 = [playerViewController7 customControlsView];
  safeAreaLayoutGuide2 = [customControlsView5 safeAreaLayoutGuide];
  rightAnchor2 = [safeAreaLayoutGuide2 rightAnchor];
  v66 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v90[2] = v66;
  timeLabel2 = [(HUCameraController *)self timeLabel];
  lastBaselineAnchor = [timeLabel2 lastBaselineAnchor];
  dayLabel5 = [(HUCameraController *)self dayLabel];
  lastBaselineAnchor2 = [dayLabel5 lastBaselineAnchor];
  v61 = [lastBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor2 constant:-23.0];
  v90[3] = v61;
  timeLabel3 = [(HUCameraController *)self timeLabel];
  leftAnchor3 = [timeLabel3 leftAnchor];
  playerViewController8 = [(HUCameraController *)self playerViewController];
  customControlsView6 = [playerViewController8 customControlsView];
  safeAreaLayoutGuide3 = [customControlsView6 safeAreaLayoutGuide];
  leftAnchor4 = [safeAreaLayoutGuide3 leftAnchor];
  v32 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
  v90[4] = v32;
  timeLabel4 = [(HUCameraController *)self timeLabel];
  rightAnchor3 = [timeLabel4 rightAnchor];
  playerViewController9 = [(HUCameraController *)self playerViewController];
  customControlsView7 = [playerViewController9 customControlsView];
  safeAreaLayoutGuide4 = [customControlsView7 safeAreaLayoutGuide];
  rightAnchor4 = [safeAreaLayoutGuide4 rightAnchor];
  v39 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
  v90[5] = v39;
  v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:6];

  [MEMORY[0x277CCAAD0] activateConstraints:v55];
  v40 = objc_alloc(MEMORY[0x277D2C958]);
  playerViewController10 = [(HUCameraController *)self playerViewController];
  view4 = [playerViewController10 view];
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __57__HUCameraController_configureClipScrubberViewController__block_invoke_5;
  v81[3] = &unk_277DC2030;
  objc_copyWeak(&v82, &location);
  v43 = [v40 initWithOwningView:view4 constraintBuilder:v81];
  [(HUCameraController *)self setScrubberConstraintSet:v43];

  scrubberConstraintSet = [(HUCameraController *)self scrubberConstraintSet];
  [scrubberConstraintSet activateIfNeeded];

  playerViewController11 = [(HUCameraController *)self playerViewController];
  customControlsView8 = [playerViewController11 customControlsView];
  [customControlsView8 layoutIfNeeded];

  if ([MEMORY[0x277D14500] shouldDisplayInternalViews])
  {
    v47 = [HUDiagnosticsCameraPlayerController alloc];
    playerViewController12 = [(HUCameraController *)self playerViewController];
    playbackEngine2 = [(HUCameraController *)self playbackEngine];
    clipScrubberViewController9 = [(HUCameraController *)self clipScrubberViewController];
    dataSource = [clipScrubberViewController9 dataSource];
    playbackEngine3 = [(HUCameraController *)self playbackEngine];
    cameraProfile = [playbackEngine3 cameraProfile];
    v54 = [(HUDiagnosticsCameraPlayerController *)v47 initWithCameraPlayerViewController:playerViewController12 playbackEngine:playbackEngine2 clipScrubberDataSource:dataSource cameraProfile:cameraProfile];
    [(HUCameraController *)self setDiagnosticsController:v54];
  }

  objc_destroyWeak(&v82);

  objc_destroyWeak(&v84);
  objc_destroyWeak(&v86);
  objc_destroyWeak(&v88);
  objc_destroyWeak(&location);
}

void __57__HUCameraController_configureClipScrubberViewController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentNearbyAccessoriesViewController];
}

void __57__HUCameraController_configureClipScrubberViewController__block_invoke_2(uint64_t a1)
{
  v27[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained cameraStatusView];
  [v3 setHidden:1];

  v4 = objc_alloc(MEMORY[0x277CB85A8]);
  v5 = _HULocalizedStringWithDefaultValue(@"HUCameraCancelText", @"HUCameraCancelText", 1);
  v6 = [v4 initWithTitle:v5 type:0];

  v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  [v6 setTitleFont:v7];

  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __57__HUCameraController_configureClipScrubberViewController__block_invoke_3;
  v25 = &unk_277DB8770;
  objc_copyWeak(&v26, (a1 + 32));
  [v6 setAction:&v22];
  v8 = [WeakRetained behavior];
  v9 = [v8 behaviorContext];
  [v9 setPlaybackControlsIncludeVolumeControls:0];

  v10 = [WeakRetained behavior];
  v11 = [v10 behaviorContext];
  [v11 setPlaybackControlsIncludeDisplayModeControls:0];

  v12 = [WeakRetained behavior];
  v13 = [v12 behaviorContext];
  v14 = [MEMORY[0x277D75348] systemYellowColor];
  v15 = [WeakRetained nextControlItem];
  [v13 setBackgroundColor:v14 forContainerOfControlItem:v15];

  v16 = [WeakRetained playerViewController];
  v17 = [v16 customControlItems];
  [WeakRetained setSavedControlItems:v17];

  v27[0] = v6;
  v18 = [WeakRetained nextControlItem];
  v27[1] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v20 = [WeakRetained playerViewController];
  [v20 setCustomControlItems:v19];

  v21 = [WeakRetained calendarContainerViewController];
  [v21 setIsEditing:1];

  objc_destroyWeak(&v26);
}

void __57__HUCameraController_configureClipScrubberViewController__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained clipScrubberViewController];
  [v1 dismissEditInterface];
}

void __57__HUCameraController_configureClipScrubberViewController__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissEditInterface];
}

id __57__HUCameraController_configureClipScrubberViewController__block_invoke_5(uint64_t a1)
{
  v34[4] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained clipScrubberViewController];
  v3 = [v2 parentViewController];

  if (v3)
  {
    v32 = [WeakRetained clipScrubberViewController];
    v31 = [v32 view];
    v30 = [v31 heightAnchor];
    v29 = [v30 constraintEqualToConstant:120.0];
    v34[0] = v29;
    v28 = [WeakRetained clipScrubberViewController];
    v27 = [v28 view];
    v24 = [v27 leftAnchor];
    v26 = [WeakRetained playerViewController];
    v25 = [v26 customControlsView];
    v23 = [v25 unobscuredCenterAreaLayoutGuide];
    v22 = [v23 leftAnchor];
    v21 = [v24 constraintEqualToAnchor:v22];
    v34[1] = v21;
    v20 = [WeakRetained clipScrubberViewController];
    v19 = [v20 view];
    v16 = [v19 bottomAnchor];
    v18 = [WeakRetained playerViewController];
    v17 = [v18 customControlsView];
    v15 = [v17 transportControlsAreaLayoutGuide];
    v14 = [v15 bottomAnchor];
    v4 = [v16 constraintEqualToAnchor:v14];
    v34[2] = v4;
    v5 = [WeakRetained clipScrubberViewController];
    v6 = [v5 view];
    v7 = [v6 rightAnchor];
    v8 = [WeakRetained playerViewController];
    v9 = [v8 customControlsView];
    v10 = [v9 unobscuredCenterAreaLayoutGuide];
    v11 = [v10 rightAnchor];
    v12 = [v7 constraintEqualToAnchor:v11];
    v34[3] = v12;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
  }

  else
  {
    v33 = MEMORY[0x277CBEBF8];
  }

  return v33;
}

- (void)_updateRecordedClipInterfaceAvailabilityWithAnimation:(BOOL)animation
{
  if (![(HUCameraController *)self applicationIsActive])
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Application is not active. Bypassing scrubber UI update.";
LABEL_15:
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
    }

LABEL_16:

    return;
  }

  recordedClipInterfaceAvailable = [(HUCameraController *)self recordedClipInterfaceAvailable];
  if ([(HUCameraController *)self hasRecordedClips]&& [(HUCameraController *)self finishedFetchingCameraEvents])
  {
    playerViewController = [(HUCameraController *)self playerViewController];
    isViewLoaded = [playerViewController isViewLoaded];
  }

  else
  {
    isViewLoaded = 0;
  }

  if (![(HUCameraController *)self finishedFetchingCameraEvents])
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Timeline will not appear until initial clip fetch has been completed.";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (recordedClipInterfaceAvailable != isViewLoaded)
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "Finished clip prep. Safe to update UI.", buf, 2u);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __76__HUCameraController__updateRecordedClipInterfaceAvailabilityWithAnimation___block_invoke;
    v11[3] = &unk_277DC2EB0;
    v11[4] = self;
    v12 = isViewLoaded;
    animationCopy = animation;
    dispatch_async(MEMORY[0x277D85CD0], v11);
  }
}

void __76__HUCameraController__updateRecordedClipInterfaceAvailabilityWithAnimation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setRecordedClipInterfaceAvailable:*(a1 + 40)];
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) configureClipScrubberViewControllerIfNeeded];
    [*(a1 + 32) configureCalendarContainerViewControllerIfNeeded];
    v2 = [*(a1 + 32) scrubberConstraintSet];
    [v2 invalidate];

    v3 = [*(a1 + 32) calendarConstraintSet];
    [v3 invalidate];

    v4 = [*(a1 + 32) portraitMicrophoneConstraintSet];
    [v4 invalidate];

    v5 = [*(a1 + 32) landscapeMicrophoneConstraintSet];
    [v5 invalidate];

    [*(a1 + 32) updateViewConstraints];
  }

  v6 = [*(a1 + 32) cameraStatusView];
  v7 = [*(a1 + 32) playbackEngine];
  [v6 updateStatusForPlaybackEngine:v7];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__HUCameraController__updateRecordedClipInterfaceAvailabilityWithAnimation___block_invoke_2;
  aBlock[3] = &unk_277DB8C28;
  aBlock[4] = *(a1 + 32);
  v8 = _Block_copy(aBlock);
  v9 = [*(a1 + 32) playerViewController];
  v10 = [v9 view];
  [v10 updateConstraintsIfNeeded];

  if (*(a1 + 41) == 1)
  {
    v11 = MEMORY[0x277D75D18];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __76__HUCameraController__updateRecordedClipInterfaceAvailabilityWithAnimation___block_invoke_3;
    v12[3] = &unk_277DC2E88;
    v13 = v8;
    v14 = *(a1 + 40);
    [v11 animateWithDuration:v12 animations:0.3];
  }

  else
  {
    (*(v8 + 2))(v8, *(a1 + 40));
  }
}

void __76__HUCameraController__updateRecordedClipInterfaceAvailabilityWithAnimation___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = 47.0;
  }

  else
  {
    v4 = 120.0;
  }

  v5 = [*(a1 + 32) dayLabelBottomConstraint];
  [v5 setConstant:v4];

  v6 = [*(a1 + 32) dayLabel];
  v7 = [v6 superview];
  [v7 layoutIfNeeded];

  [*(a1 + 32) updateCalendarContainerVisibility:a2];
  v8 = [*(a1 + 32) clipScrubberViewController];
  v9 = [v8 view];
  [v9 setAlpha:a2];

  v11 = [*(a1 + 32) footerViewController];
  v10 = [v11 view];
  [v10 setHidden:a2];
}

- (void)displayTimelineForClipUUID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    playerConfiguration = [(HUCameraController *)self playerConfiguration];
    clipUUID = [playerConfiguration clipUUID];
    *buf = 138412290;
    v16 = clipUUID;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Fetch clip with UUID:%@", buf, 0xCu);
  }

  [(HUCameraController *)self setNeedsToFetchClip:0];
  objc_initWeak(buf, self);
  playbackEngine = [(HUCameraController *)self playbackEngine];
  v9 = [playbackEngine fetchClipWithUUID:dCopy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__HUCameraController_displayTimelineForClipUUID___block_invoke;
  v12[3] = &unk_277DC2ED8;
  objc_copyWeak(&v14, buf);
  v10 = dCopy;
  v13 = v10;
  v11 = [v9 addCompletionBlock:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

void __49__HUCameraController_displayTimelineForClipUUID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [WeakRetained playerConfiguration];
      v10 = [v9 clipUUID];
      v11 = 138412546;
      v12 = v10;
      v13 = 2112;
      v14 = v6;
      _os_log_error_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_ERROR, "Error fetching clip with UUID:%@ error:%@", &v11, 0x16u);
    }
  }

  if ([v5 isComplete])
  {
    [WeakRetained _finishDisplayingTimelineForClip:v5];
  }

  else
  {
    [WeakRetained _refreshClipCacheAndRefetchForClipUUID:*(a1 + 32)];
  }
}

- (void)_refreshClipCacheAndRefetchForClipUUID:(id)d
{
  dCopy = d;
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__HUCameraController__refreshClipCacheAndRefetchForClipUUID___block_invoke;
  v13[3] = &unk_277DB7508;
  v13[4] = self;
  v5 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v13];
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v7 = [v5 reschedule:mainThreadScheduler];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__HUCameraController__refreshClipCacheAndRefetchForClipUUID___block_invoke_2;
  v10[3] = &unk_277DB8620;
  objc_copyWeak(&v12, &location);
  v8 = dCopy;
  v11 = v8;
  v9 = [v7 addCompletionBlock:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __61__HUCameraController__refreshClipCacheAndRefetchForClipUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 cameraProfile];
  v4 = [v5 clipManager];
  [v4 performCloudPullWithCompletion:v3];
}

void __61__HUCameraController__refreshClipCacheAndRefetchForClipUUID___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained accessoryViewController];
  [v8 setForceLoadingIndicatorToDisplay:0];

  if (v6)
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_error_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_ERROR, "(NC) Failure to perform cloud pull:%@.", buf, 0xCu);
    }
  }

  else
  {
    v9 = objc_loadWeakRetained((a1 + 40));
    v10 = [v9 playbackEngine];
    v11 = [v10 fetchClipWithUUID:*(a1 + 32)];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __61__HUCameraController__refreshClipCacheAndRefetchForClipUUID___block_invoke_150;
    v13[3] = &unk_277DC2ED8;
    objc_copyWeak(&v15, (a1 + 40));
    v14 = 0;
    v12 = [v11 addCompletionBlock:v13];

    objc_destroyWeak(&v15);
  }
}

void __61__HUCameraController__refreshClipCacheAndRefetchForClipUUID___block_invoke_150(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*(a1 + 32))
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [WeakRetained playerConfiguration];
      v10 = [v9 clipUUID];
      v11 = 138412546;
      v12 = v10;
      v13 = 2112;
      v14 = v6;
      _os_log_error_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_ERROR, "Error fetching clip with UUID:%@ error:%@", &v11, 0x16u);
    }
  }

  [WeakRetained _finishDisplayingTimelineForClip:v5];
}

- (void)_finishDisplayingTimelineForClip:(id)clip
{
  v31 = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  [(HUCameraController *)self setFinishedFetchingCameraEvents:1];
  if (!clipCopy || (v5 = MEMORY[0x277D144D0], [clipCopy dateOfOccurrence], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "clipPositionWithDate:", v6), v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_ERROR, "Unable to find valid playback position for clip.dateOfOccurrence. Falling back to LIVE mode when it should have been playback.", buf, 2u);
    }

    v7 = 0;
  }

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = [clipCopy uniqueIdentifier];
    cameraProfile = [(HUCameraController *)self cameraProfile];
    *buf = 138412802;
    v26 = uniqueIdentifier;
    v27 = 2112;
    v28 = v7;
    v29 = 2112;
    v30 = cameraProfile;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Fetch request completed for UUID:%@. Start playback engine at %@ for profile:%@.", buf, 0x20u);
  }

  if ([clipCopy isComplete])
  {
    clipScrubberViewController = [(HUCameraController *)self clipScrubberViewController];
    dataSource = [clipScrubberViewController dataSource];
    [dataSource setCurrentTimelineState:2];

    playbackEngine = [(HUCameraController *)self playbackEngine];
    [playbackEngine setTimelineState:2];

    playbackEngine2 = [(HUCameraController *)self playbackEngine];
    dateOfOccurrence = [clipCopy dateOfOccurrence];
    [playbackEngine2 updatePlaybackPositionToDate:dateOfOccurrence usingClip:clipCopy];

    playbackEngine3 = [(HUCameraController *)self playbackEngine];
    [playbackEngine3 play];
  }

  [(HUCameraController *)self _updateRecordedClipInterfaceAvailabilityWithAnimation:1];
  [(HUCameraController *)self displayPlaybackUIWithUpdate:1];
  v18 = HFLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    cameraProfile2 = [(HUCameraController *)self cameraProfile];
    *buf = 138412290;
    v26 = cameraProfile2;
    _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "Requesting all events from HomeKit for camera profile:%@.", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  playbackEngine4 = [(HUCameraController *)self playbackEngine];
  fetchCameraEvents = [playbackEngine4 fetchCameraEvents];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __55__HUCameraController__finishDisplayingTimelineForClip___block_invoke;
  v23[3] = &unk_277DBD288;
  objc_copyWeak(&v24, buf);
  v22 = [fetchCameraEvents addCompletionBlock:v23];

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
}

void __55__HUCameraController__finishDisplayingTimelineForClip___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 134217984;
    v25 = [v5 count];
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "HomeKit returned events for camera player (count:%lu).", &v24, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (v5)
  {
    v10 = [WeakRetained ppt_clipsLoadedFuture];
    [v10 finishWithResult:v5];

LABEL_5:
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "Finished loading/display of all clips.", &v24, 2u);
    }

    goto LABEL_13;
  }

  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v22 = [v9 cameraProfile];
    v23 = [v22 hf_prettyDescription];
    v24 = 138412546;
    v25 = v23;
    v26 = 2112;
    v27 = v6;
    _os_log_error_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_ERROR, "Failed to load clips for camera %@ with error %@", &v24, 0x16u);
  }

  v13 = [v9 ppt_clipsLoadedFuture];
  [v13 finishWithError:v6];

  if (!v6)
  {
    goto LABEL_5;
  }

  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v24) = 0;
    _os_log_error_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_ERROR, "Bypassing scrubber/calendar updates. Force immediate display of live view.", &v24, 2u);
  }

  v15 = [MEMORY[0x277D144D0] livePosition];
  v16 = [v9 playbackEngine];
  [v16 setPlaybackPosition:v15];

  v17 = [v9 footerViewController];
  v18 = [v17 view];
  [v18 setHidden:0];

  v19 = [v9 clipScrubberViewController];
  v20 = [v19 view];
  [v20 setAlpha:0.0];

  v11 = [v9 calendarContainerViewController];
  v21 = [v11 view];
  [v21 setAlpha:0.0];

LABEL_13:
}

- (void)fetchRequestedClipUsingConfiguration
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    playerConfiguration = [(HUCameraController *)self playerConfiguration];
    clipUUID = [playerConfiguration clipUUID];
    *buf = 138412290;
    v14 = clipUUID;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Proceed to fetch clip with UUID:%@", buf, 0xCu);
  }

  [(HUCameraController *)self setNeedsToFetchClip:0];
  objc_initWeak(buf, self);
  playbackEngine = [(HUCameraController *)self playbackEngine];
  cameraProfile = [playbackEngine cameraProfile];
  clipManager = [cameraProfile clipManager];
  playerConfiguration2 = [(HUCameraController *)self playerConfiguration];
  clipUUID2 = [playerConfiguration2 clipUUID];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__HUCameraController_fetchRequestedClipUsingConfiguration__block_invoke;
  v11[3] = &unk_277DC2F00;
  objc_copyWeak(&v12, buf);
  [clipManager fetchClipWithUUID:clipUUID2 completion:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

void __58__HUCameraController_fetchRequestedClipUsingConfiguration__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HUCameraController_fetchRequestedClipUsingConfiguration__block_invoke_2;
  block[3] = &unk_277DB76C8;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __58__HUCameraController_fetchRequestedClipUsingConfiguration__block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (*(a1 + 32))
  {
    v3 = HFLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v18 = [WeakRetained playerConfiguration];
      v19 = [v18 clipUUID];
      v20 = *(a1 + 32);
      v21 = 138412546;
      v22 = v19;
      v23 = 2112;
      v24 = v20;
      _os_log_error_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_ERROR, "Error fetching clip with UUID:%@ error:%@", &v21, 0x16u);
    }
  }

  v4 = *(a1 + 40);
  if (!v4 || (v5 = MEMORY[0x277D144D0], [v4 dateOfOccurrence], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "clipPositionWithDate:", v6), v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v21) = 0;
      _os_log_error_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_ERROR, "Unable to find valid playback position for clip.dateOfOccurrence. Falling back to LIVE mode when it should have been playback.", &v21, 2u);
    }

    v7 = 0;
  }

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [WeakRetained playerConfiguration];
    v11 = [v10 clipUUID];
    v12 = [WeakRetained cameraProfile];
    v21 = 138412802;
    v22 = v11;
    v23 = 2112;
    v24 = v7;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Proceed to fetch request completed for UUID:%@. Start playback engine at %@ for profile:%@.", &v21, 0x20u);
  }

  v13 = [WeakRetained clipScrubberViewController];
  v14 = [v13 dataSource];
  [v14 setCurrentTimelineState:2];

  v15 = [WeakRetained playbackEngine];
  [v15 setTimelineState:2];

  v16 = [WeakRetained playbackEngine];
  v17 = [*(a1 + 40) dateOfOccurrence];
  [v16 updatePlaybackPositionToDate:v17 usingClip:*(a1 + 40)];

  [WeakRetained _updateRecordedClipInterfaceAvailabilityWithAnimation:1];
  [WeakRetained displayPlaybackUIWithUpdate:1];
}

- (void)_reloadClipsWithUpdate:(BOOL)update
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    cameraProfile = [(HUCameraController *)self cameraProfile];
    *buf = 138412290;
    v12 = cameraProfile;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Requesting events from HomeKit for camera profile:%@.", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  playbackEngine = [(HUCameraController *)self playbackEngine];
  fetchCameraEvents = [playbackEngine fetchCameraEvents];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__HUCameraController__reloadClipsWithUpdate___block_invoke;
  v9[3] = &unk_277DBD288;
  objc_copyWeak(&v10, buf);
  v8 = [fetchCameraEvents addCompletionBlock:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __45__HUCameraController__reloadClipsWithUpdate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 count];
    v10 = [WeakRetained cameraProfile];
    v60 = 134218242;
    v61 = v9;
    v62 = 2112;
    v63 = v10;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "HomeKit returned %lu events for %@", &v60, 0x16u);
  }

  [WeakRetained setFinishedFetchingCameraEvents:1];
  if (v5)
  {
    v11 = [WeakRetained ppt_clipsLoadedFuture];
    [v11 finishWithResult:v5];
  }

  else
  {
    v19 = HFLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v58 = [WeakRetained cameraProfile];
      v59 = [v58 hf_prettyDescription];
      v60 = 138412546;
      v61 = v59;
      v62 = 2112;
      v63 = v6;
      _os_log_error_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_ERROR, "Failed to load events for camera %@ with error %@", &v60, 0x16u);
    }

    v20 = [WeakRetained ppt_clipsLoadedFuture];
    [v20 finishWithError:v6];

    if (v6)
    {
      v21 = HFLogForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v60) = 0;
        _os_log_error_impl(&dword_20CEB6000, v21, OS_LOG_TYPE_ERROR, "Bypassing scrubber/calendar updates. Force immediate display of live view.", &v60, 2u);
      }

      v22 = [MEMORY[0x277D144D0] livePosition];
      v23 = [WeakRetained playbackEngine];
      [v23 setPlaybackPosition:v22];

      v24 = [WeakRetained footerViewController];
      v25 = [v24 view];
      [v25 setHidden:0];

      v26 = [WeakRetained clipScrubberViewController];
      v27 = [v26 view];
      [v27 setAlpha:0.0];

      v28 = [WeakRetained calendarContainerViewController];
      v29 = [v28 view];
      [v29 setAlpha:0.0];
      goto LABEL_26;
    }
  }

  v12 = [WeakRetained playerConfiguration];
  v13 = [v12 clipUUID];

  if (!v13)
  {
    v30 = [WeakRetained playerConfiguration];
    v31 = [v30 startingPlaybackDate];

    if (!v31)
    {
LABEL_31:
      [WeakRetained _updateRecordedClipInterfaceAvailabilityWithAnimation:1];
      goto LABEL_32;
    }

    v32 = [WeakRetained playbackEngine];
    v33 = [v32 cameraEvents];
    v34 = [v33 lastObject];

    if (v34)
    {
      v35 = [WeakRetained playbackEngine];
      v36 = [WeakRetained playerConfiguration];
      v37 = [v36 startingPlaybackDate];
      v38 = [v35 findClipPositionForDate:v37];

      v39 = HFLogForCategory();
      v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
      if (v38)
      {
        if (v40)
        {
          v41 = [WeakRetained playerConfiguration];
          v42 = [v41 startingPlaybackDate];
          v43 = [v38 clip];
          v44 = [WeakRetained cameraProfile];
          v45 = [v44 uniqueIdentifier];
          v60 = 138412802;
          v61 = v42;
          v62 = 2112;
          v63 = v43;
          v64 = 2112;
          v65 = v45;
          _os_log_impl(&dword_20CEB6000, v39, OS_LOG_TYPE_DEFAULT, "Reload clips with update. Start playback engine at %@ for clip:%@ with profileUUID:%@.", &v60, 0x20u);
        }

        v46 = [WeakRetained playbackEngine];
        v47 = [v38 date];
        v48 = [v38 clip];
        [v46 updatePlaybackPositionToDate:v47 usingClip:v48];

        if (![WeakRetained lastTimeControlStatusPriorToCameraSwap])
        {
          goto LABEL_30;
        }

        v39 = [WeakRetained playbackEngine];
        [v39 play];
      }

      else if (v40)
      {
        v54 = [WeakRetained playerConfiguration];
        v55 = [v54 startingPlaybackDate];
        v56 = [WeakRetained cameraProfile];
        v57 = [v56 uniqueIdentifier];
        v60 = 138412546;
        v61 = v55;
        v62 = 2112;
        v63 = v57;
        _os_log_impl(&dword_20CEB6000, v39, OS_LOG_TYPE_DEFAULT, "Unable to find clip after date:%@. Default to live stream for profileUUID:%@.", &v60, 0x16u);
      }

LABEL_30:
      goto LABEL_31;
    }

    v49 = HFLogForCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = [WeakRetained playerConfiguration];
      v51 = [v50 startingPlaybackDate];
      v52 = [WeakRetained cameraProfile];
      v53 = [v52 uniqueIdentifier];
      v60 = 138412546;
      v61 = v51;
      v62 = 2112;
      v63 = v53;
      _os_log_impl(&dword_20CEB6000, v49, OS_LOG_TYPE_DEFAULT, "Failed to find recordings for startDate:%@. Starting live stream for profileUUID:%@.", &v60, 0x16u);
    }

    v28 = [MEMORY[0x277D144D0] livePosition];
    v29 = [WeakRetained playbackEngine];
    [v29 setPlaybackPosition:v28];
LABEL_26:

    goto LABEL_32;
  }

  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [WeakRetained playerConfiguration];
    v16 = [v15 clipUUID];
    v60 = 138412290;
    v61 = v16;
    _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "Launching camera with clipUUID:%@. Defer launch until view has been loaded.", &v60, 0xCu);
  }

  v17 = [WeakRetained playerViewController];
  v18 = [v17 isViewLoaded];

  if (v18)
  {
    [WeakRetained fetchRequestedClipUsingConfiguration];
  }

LABEL_32:
}

- (void)displayPlaybackUIWithUpdate:(BOOL)update
{
  updateCopy = update;
  [(HUCameraController *)self _updateRecordedClipInterfaceAvailabilityWithAnimation:1];
  if (updateCopy)
  {
    playbackEngine = [(HUCameraController *)self playbackEngine];
    accessoryViewController = [(HUCameraController *)self accessoryViewController];
    [accessoryViewController setPlaybackEngine:playbackEngine];

    [(HUCameraController *)self updatePlaceholderContent];
    playbackEngine2 = [(HUCameraController *)self playbackEngine];
    playbackPosition = [playbackEngine2 playbackPosition];
    [(HUCameraController *)self updateStateForPlaybackPosition:playbackPosition animated:0];

    cameraStatusView = [(HUCameraController *)self cameraStatusView];
    playbackEngine3 = [(HUCameraController *)self playbackEngine];
    [cameraStatusView updateStatusForPlaybackEngine:playbackEngine3];

    [(HUCameraController *)self updateIndicatorColor];
    cameraStatusViewConstraintSet = [(HUCameraController *)self cameraStatusViewConstraintSet];
    [cameraStatusViewConstraintSet invalidate];
  }

  if ([(HUCameraController *)self shouldResumePlaying])
  {
    playbackEngine4 = [(HUCameraController *)self playbackEngine];
    [playbackEngine4 play];
  }
}

- (void)updateStateForPlaybackPosition:(id)position animated:(BOOL)animated
{
  animatedCopy = animated;
  positionCopy = position;
  if ([MEMORY[0x277D14CE8] isInternalTest])
  {
    [(HUCameraController *)self _updateStateForPlaybackPosition:positionCopy animated:animatedCopy];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__HUCameraController_updateStateForPlaybackPosition_animated___block_invoke;
    block[3] = &unk_277DC2F28;
    block[4] = self;
    v8 = positionCopy;
    v9 = animatedCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_updateStateForPlaybackPosition:(id)position animated:(BOOL)animated
{
  v55 = *MEMORY[0x277D85DE8];
  positionCopy = position;
  if ([(HUCameraController *)self applicationIsActive])
  {
    contentType = [positionCopy contentType];
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v53 = 138412290;
      v54 = positionCopy;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "updateStateForPlaybackPosition: %@", &v53, 0xCu);
    }

    [(HUCameraController *)self cameraStatusViewConstantForTraitCollection];
    v9 = v8;
    cameraStatusViewTopConstraint = [(HUCameraController *)self cameraStatusViewTopConstraint];
    [cameraStatusViewTopConstraint constant];
    v12 = v11;

    if (v12 != v9)
    {
      cameraStatusViewConstraintSet = [(HUCameraController *)self cameraStatusViewConstraintSet];
      [cameraStatusViewConstraintSet invalidate];

      cameraStatusViewTopConstraint2 = [(HUCameraController *)self cameraStatusViewTopConstraint];
      [cameraStatusViewTopConstraint2 setConstant:v9];

      cameraStatusViewConstraintSet2 = [(HUCameraController *)self cameraStatusViewConstraintSet];
      [cameraStatusViewConstraintSet2 activateIfNeeded];
    }

    [(HUCameraController *)self updateIndicatorColor];
    if (contentType)
    {
      liveContentViewController = [(HUCameraController *)self liveContentViewController];
      viewIfLoaded = [liveContentViewController viewIfLoaded];
      [viewIfLoaded removeFromSuperview];

      if (![MEMORY[0x277D14CE8] isPressDemoModeEnabled])
      {
        goto LABEL_16;
      }

      demoPlayerView = [(HUCameraController *)self demoPlayerView];
      [demoPlayerView setHidden:1];

      demoModeQueuePlayer = [(HUCameraController *)self demoModeQueuePlayer];
      [demoModeQueuePlayer pause];
    }

    else
    {
      playbackEngine = [(HUCameraController *)self playbackEngine];
      cameraProfile = [playbackEngine cameraProfile];
      hf_shouldDisableLiveStream = [cameraProfile hf_shouldDisableLiveStream];

      if ((hf_shouldDisableLiveStream & 1) == 0)
      {
        behavior = [(HUCameraController *)self behavior];
        behaviorContext = [behavior behaviorContext];
        livePreviewContainerView = [behaviorContext livePreviewContainerView];

        liveContentViewController2 = [(HUCameraController *)self liveContentViewController];
        view = [liveContentViewController2 view];
        [livePreviewContainerView naui_addAutoLayoutSubview:view];

        v29 = MEMORY[0x277CCAAD0];
        liveContentViewController3 = [(HUCameraController *)self liveContentViewController];
        view2 = [liveContentViewController3 view];
        v32 = [v29 hu_constraintsSizingAnchorProvider:view2 toAnchorProvider:livePreviewContainerView];
        [v29 activateConstraints:v32];

        [(HUCameraController *)self updateLivePreviewAspectRatio];
        liveContentViewController4 = [(HUCameraController *)self liveContentViewController];
        cameraView = [liveContentViewController4 cameraView];
        [cameraView setBadgeHidden:1];
      }

      if (![MEMORY[0x277D14CE8] isPressDemoModeEnabled])
      {
LABEL_16:
        playbackEngine2 = contentType == 0;
        behavior2 = [(HUCameraController *)self behavior];
        behaviorContext2 = [behavior2 behaviorContext];
        [behaviorContext2 setLivePreviewActive:playbackEngine2];

        if (contentType)
        {
          playbackEngine2 = [(HUCameraController *)self playbackEngine];
          player = [playbackEngine2 player];
        }

        else
        {
          player = 0;
        }

        playerViewController = [(HUCameraController *)self playerViewController];
        [playerViewController setPlayer:player];

        if (contentType)
        {
        }

        playerViewController2 = [(HUCameraController *)self playerViewController];
        player2 = [playerViewController2 player];
        if (player2)
        {
          v45 = player2;
          playerViewController3 = [(HUCameraController *)self playerViewController];
          player3 = [playerViewController3 player];
          allowsExternalPlayback = [player3 allowsExternalPlayback];

          if (!allowsExternalPlayback)
          {
LABEL_25:
            playbackEngine3 = [(HUCameraController *)self playbackEngine];
            prefersAudioEnabled = [playbackEngine3 prefersAudioEnabled];
            playerViewController4 = [(HUCameraController *)self playerViewController];
            playerController = [playerViewController4 playerController];
            [playerController setMuted:prefersAudioEnabled ^ 1u];

            goto LABEL_26;
          }

          playerViewController2 = [(HUCameraController *)self playerViewController];
          player4 = [playerViewController2 player];
          [player4 setAllowsExternalPlayback:0];
        }

        goto LABEL_25;
      }

      demoPlayerView2 = [(HUCameraController *)self demoPlayerView];
      [demoPlayerView2 setHidden:0];

      demoModeQueuePlayer2 = [(HUCameraController *)self demoModeQueuePlayer];
      [demoModeQueuePlayer2 play];

      demoModeQueuePlayer = [(HUCameraController *)self liveContentViewController];
      view3 = [demoModeQueuePlayer view];
      [view3 setHidden:1];
    }

    goto LABEL_16;
  }

  playbackEngine3 = HFLogForCategory();
  if (os_log_type_enabled(playbackEngine3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v53) = 0;
    _os_log_impl(&dword_20CEB6000, playbackEngine3, OS_LOG_TYPE_DEFAULT, "Application is not active. Bypassing playback position updates.", &v53, 2u);
  }

LABEL_26:
}

- (void)updateStateForScrubbingStatus:(BOOL)status animated:(BOOL)animated
{
  if (status)
  {
    v5 = [(HUCameraController *)self behavior:status];
    behaviorContext = [v5 behaviorContext];
    [behaviorContext setPlaybackControlsIncludeDisplayModeControls:0];

    behavior = [(HUCameraController *)self behavior];
    behaviorContext2 = [behavior behaviorContext];
    [behaviorContext2 setPlaybackControlsIncludeVolumeControls:0];

    [(HUCameraController *)self updateCalendarContainerVisibility:0];
  }
}

- (void)removePlaybackHistoryUI
{
  [(HUCameraController *)self setRecordedClipInterfaceAvailable:0];
  clipScrubberViewController = [(HUCameraController *)self clipScrubberViewController];
  view = [clipScrubberViewController view];
  [view removeFromSuperview];

  clipScrubberViewController2 = [(HUCameraController *)self clipScrubberViewController];
  [clipScrubberViewController2 removeFromParentViewController];

  [(HUCameraController *)self setClipScrubberViewController:0];
  playbackEngine = [(HUCameraController *)self playbackEngine];
  engineMode = [playbackEngine engineMode];

  if (!engineMode)
  {
    calendarContainerViewController = [(HUCameraController *)self calendarContainerViewController];
    view2 = [calendarContainerViewController view];
    [view2 removeFromSuperview];

    calendarContainerViewController2 = [(HUCameraController *)self calendarContainerViewController];
    [calendarContainerViewController2 removeFromParentViewController];

    [(HUCameraController *)self setCalendarContainerViewController:0];
  }

  dayLabel = [(HUCameraController *)self dayLabel];
  [dayLabel removeFromSuperview];

  [(HUCameraController *)self setDayLabel:0];
  timeLabel = [(HUCameraController *)self timeLabel];
  [timeLabel removeFromSuperview];

  [(HUCameraController *)self setTimeLabel:0];
  [(HUCameraController *)self setDateDisplayController:0];
  footerViewController = [(HUCameraController *)self footerViewController];
  view3 = [footerViewController view];
  [view3 setHidden:0];
}

- (void)updateIndicatorColor
{
  playbackEngine = [(HUCameraController *)self playbackEngine];
  isLiveStreaming = [playbackEngine isLiveStreaming];

  cameraProfile = [(HUCameraController *)self cameraProfile];
  userSettings = [cameraProfile userSettings];
  v7 = userSettings;
  if (isLiveStreaming)
  {
    hu_indicatorColorForLiveStreaming = [userSettings hu_indicatorColorForLiveStreaming];
    cameraStatusView = [(HUCameraController *)self cameraStatusView];
    [cameraStatusView setStatusColor:hu_indicatorColorForLiveStreaming];

    cameraProfile2 = [(HUCameraController *)self cameraProfile];
    userSettings2 = [cameraProfile2 userSettings];
    [userSettings2 hu_indicatorImageNameForLiveStreaming];
  }

  else
  {
    hu_indicatorColorForCurrentAccessMode = [userSettings hu_indicatorColorForCurrentAccessMode];
    cameraStatusView2 = [(HUCameraController *)self cameraStatusView];
    [cameraStatusView2 setStatusColor:hu_indicatorColorForCurrentAccessMode];

    cameraProfile2 = [(HUCameraController *)self cameraProfile];
    userSettings2 = [cameraProfile2 userSettings];
    [userSettings2 hu_indicatorImageNameForCurrentAccessMode];
  }
  v13 = ;
  cameraStatusView3 = [(HUCameraController *)self cameraStatusView];
  [cameraStatusView3 setStatusImageName:v13];
}

- (void)updateCameraStatus
{
  if ([(HUCameraController *)self applicationIsActive])
  {
    cameraStatusView = [(HUCameraController *)self cameraStatusView];
    playbackEngine = [(HUCameraController *)self playbackEngine];
    [cameraStatusView updateStatusForPlaybackEngine:playbackEngine];

    [(HUCameraController *)self updateIndicatorColor];
    accessoryViewController = [(HUCameraController *)self accessoryViewController];
    [accessoryViewController hu_reloadData];

    placeholderContentViewController = [(HUCameraController *)self placeholderContentViewController];
    [placeholderContentViewController hu_reloadData];

    [(HUCameraController *)self updatePlayerVolumeSliderState];
    playbackEngine2 = [(HUCameraController *)self playbackEngine];
    engineMode = [playbackEngine2 engineMode];

    if (engineMode)
    {
      return;
    }

    [(HUCameraController *)self updatePIPBehaviorForDeviceAndConfiguration];
    if ([(HUCameraController *)self shouldDisableLiveStreamAfterCameraStatusChange])
    {
      playbackEngine3 = [(HUCameraController *)self playbackEngine];
      [playbackEngine3 pause];
    }

    else
    {
      if ([(HUCameraController *)self displayingDetailsViewController])
      {
        return;
      }

      playbackEngine4 = [(HUCameraController *)self playbackEngine];
      timeControlStatus = [playbackEngine4 timeControlStatus];

      if (timeControlStatus)
      {
        return;
      }

      if (![(HUCameraController *)self applicationIsActive])
      {
        playbackEngine5 = [(HUCameraController *)self playbackEngine];
        isPictureInPictureModeActive = [playbackEngine5 isPictureInPictureModeActive];

        if (!isPictureInPictureModeActive)
        {
          return;
        }
      }

      playbackEngine3 = [(HUCameraController *)self playbackEngine];
      [playbackEngine3 play];
    }
  }

  else
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Bypassing camera status update since camera is not active.", buf, 2u);
    }
  }
}

- (BOOL)shouldDisableLiveStreamAfterCameraStatusChange
{
  cameraProfile = [(HUCameraController *)self cameraProfile];
  userSettings = [cameraProfile userSettings];
  currentAccessMode = [userSettings currentAccessMode];

  return !currentAccessMode || currentAccessMode == 3;
}

- (void)updateCanShowOverlayState
{
  if ([(HUCameraController *)self isViewVisible])
  {
    v3 = [(HUCameraController *)self isEnteringFullScreen]^ 1;
  }

  else
  {
    v3 = 0;
  }

  accessoryViewController = [(HUCameraController *)self accessoryViewController];
  [accessoryViewController setCanShowOverlayContent:v3];
}

- (void)dismissEditInterface
{
  savedControlItems = [(HUCameraController *)self savedControlItems];

  if (savedControlItems)
  {
    cameraStatusView = [(HUCameraController *)self cameraStatusView];
    [cameraStatusView setHidden:0];

    calendarContainerViewController = [(HUCameraController *)self calendarContainerViewController];
    [calendarContainerViewController setIsEditing:0];

    behavior = [(HUCameraController *)self behavior];
    behaviorContext = [behavior behaviorContext];
    [behaviorContext setPlaybackControlsIncludeDisplayModeControls:1];

    behavior2 = [(HUCameraController *)self behavior];
    behaviorContext2 = [behavior2 behaviorContext];
    [behaviorContext2 setPlaybackControlsIncludeVolumeControls:1];

    behavior3 = [(HUCameraController *)self behavior];
    behaviorContext3 = [behavior3 behaviorContext];
    nextControlItem = [(HUCameraController *)self nextControlItem];
    [behaviorContext3 setBackgroundColor:0 forContainerOfControlItem:nextControlItem];

    savedControlItems2 = [(HUCameraController *)self savedControlItems];
    playerViewController = [(HUCameraController *)self playerViewController];
    [playerViewController setCustomControlItems:savedControlItems2];

    [(HUCameraController *)self setSavedControlItems:0];
    nextControlItem2 = [(HUCameraController *)self nextControlItem];
    [nextControlItem2 setShowsLoadingIndicator:0];
  }
}

- (void)addFooterViewController
{
  footerViewController = [(HUCameraController *)self footerViewController];

  if (!footerViewController)
  {
    v4 = objc_alloc_init(HUCameraPlayerFooterViewController);
    [(HUCameraController *)self setFooterViewController:v4];

    playerViewController = [(HUCameraController *)self playerViewController];
    footerViewController2 = [(HUCameraController *)self footerViewController];
    [playerViewController addChildViewController:footerViewController2];

    footerViewController3 = [(HUCameraController *)self footerViewController];
    playerViewController2 = [(HUCameraController *)self playerViewController];
    [footerViewController3 didMoveToParentViewController:playerViewController2];

    footerViewController4 = [(HUCameraController *)self footerViewController];
    view = [footerViewController4 view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];

    footerViewController5 = [(HUCameraController *)self footerViewController];
    nearbyAccessoryButton = [footerViewController5 nearbyAccessoryButton];
    [nearbyAccessoryButton addTarget:self action:sel_presentNearbyAccessoriesViewController forControlEvents:64];

    playerViewController3 = [(HUCameraController *)self playerViewController];
    customControlsView = [playerViewController3 customControlsView];
    footerViewController6 = [(HUCameraController *)self footerViewController];
    view2 = [footerViewController6 view];
    [customControlsView addSubview:view2];
  }
}

- (void)configureCalendarContainerViewControllerIfNeeded
{
  calendarContainerViewController = [(HUCameraController *)self calendarContainerViewController];

  if (!calendarContainerViewController)
  {
    v4 = [HUCalendarScrubberDataSource alloc];
    playbackEngine = [(HUCameraController *)self playbackEngine];
    cameraProfile = [playbackEngine cameraProfile];
    clipManager = [cameraProfile clipManager];
    playbackEngine2 = [(HUCameraController *)self playbackEngine];
    daysWithClips = [playbackEngine2 daysWithClips];
    v10 = [(HUCalendarScrubberDataSource *)v4 initWithCameraClipManager:clipManager datesWithClips:daysWithClips];

    v11 = [HUCalendarScrubberContainerViewController alloc];
    playbackEngine3 = [(HUCameraController *)self playbackEngine];
    v13 = [(HUCalendarScrubberContainerViewController *)v11 initWithPlaybackEngine:playbackEngine3 calendarScrubberDataSource:v10];
    [(HUCameraController *)self setCalendarContainerViewController:v13];

    playerViewController = [(HUCameraController *)self playerViewController];
    calendarContainerViewController2 = [(HUCameraController *)self calendarContainerViewController];
    [playerViewController addChildViewController:calendarContainerViewController2];

    playerViewController2 = [(HUCameraController *)self playerViewController];
    customControlsView = [playerViewController2 customControlsView];
    calendarContainerViewController3 = [(HUCameraController *)self calendarContainerViewController];
    view = [calendarContainerViewController3 view];
    [customControlsView naui_addAutoLayoutSubview:view];

    calendarContainerViewController4 = [(HUCameraController *)self calendarContainerViewController];
    playerViewController3 = [(HUCameraController *)self playerViewController];
    [calendarContainerViewController4 didMoveToParentViewController:playerViewController3];

    objc_initWeak(&location, self);
    v22 = objc_alloc(MEMORY[0x277D2C958]);
    playerViewController4 = [(HUCameraController *)self playerViewController];
    view2 = [playerViewController4 view];
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __70__HUCameraController_configureCalendarContainerViewControllerIfNeeded__block_invoke;
    v32 = &unk_277DC2030;
    objc_copyWeak(&v33, &location);
    v25 = [v22 initWithOwningView:view2 constraintBuilder:&v29];
    [(HUCameraController *)self setCalendarConstraintSet:v25, v29, v30, v31, v32];

    calendarConstraintSet = [(HUCameraController *)self calendarConstraintSet];
    [calendarConstraintSet activateIfNeeded];

    playerViewController5 = [(HUCameraController *)self playerViewController];
    customControlsView2 = [playerViewController5 customControlsView];
    [customControlsView2 layoutIfNeeded];

    [(HUCameraController *)self setCalendarScrubberDataSourceFuture:0];
    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }
}

id __70__HUCameraController_configureCalendarContainerViewControllerIfNeeded__block_invoke(uint64_t a1)
{
  v88[5] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained calendarContainerViewController];
  v3 = [v2 parentViewController];

  if (v3)
  {
    v4 = [WeakRetained calendarContainerViewController];
    v5 = [v4 view];
    v6 = [v5 centerXAnchor];
    v7 = [WeakRetained playerViewController];
    v8 = [v7 customControlsView];
    v9 = [v8 unobscuredTopAreaLayoutGuide];
    v10 = [v9 centerXAnchor];
    v11 = [v6 constraintEqualToAnchor:v10];

    LODWORD(v12) = 1148846080;
    v87 = v11;
    [v11 setPriority:v12];
    v13 = [WeakRetained calendarContainerViewController];
    v14 = [v13 view];
    v15 = [v14 leadingAnchor];
    v16 = [WeakRetained playerViewController];
    v17 = [v16 customControlsView];
    v18 = [v17 displayModeControlsAreaLayoutGuide];
    v19 = [v18 trailingAnchor];
    v20 = [v15 constraintGreaterThanOrEqualToAnchor:v19 constant:16.0];

    LODWORD(v21) = 1132068864;
    [v20 setPriority:v21];
    v22 = [WeakRetained calendarContainerViewController];
    v23 = [v22 view];
    v24 = [v23 trailingAnchor];
    v25 = [WeakRetained playerViewController];
    v26 = [v25 customControlsView];
    v27 = [v26 volumeControlsAreaLayoutGuide];
    v28 = [v27 leadingAnchor];
    v29 = [v24 constraintGreaterThanOrEqualToAnchor:v28 constant:-16.0];

    LODWORD(v30) = 1132068864;
    [v29 setPriority:v30];
    v84 = [WeakRetained playerViewController];
    v83 = [v84 traitCollection];
    LODWORD(v22) = [v83 hu_hasExtendedWidth];
    v82 = [WeakRetained calendarContainerViewController];
    v81 = [v82 view];
    v31 = [v81 topAnchor];
    v79 = [WeakRetained playerViewController];
    v32 = [v79 customControlsView];
    v78 = v32;
    if (v22)
    {
      [v32 volumeControlsAreaLayoutGuide];
    }

    else
    {
      [v32 unobscuredCenterAreaLayoutGuide];
    }
    v77 = ;
    v76 = [v77 topAnchor];
    v75 = [v31 constraintEqualToAnchor:?];
    v88[0] = v75;
    v74 = [WeakRetained playerViewController];
    v73 = [v74 traitCollection];
    v34 = [v73 hu_hasExtendedWidth];
    v35 = v20;
    v72 = v34;
    if ((v34 & 1) == 0)
    {
      v64 = [WeakRetained calendarContainerViewController];
      v63 = [v64 view];
      v36 = [v63 leadingAnchor];
      v61 = [WeakRetained playerViewController];
      v60 = [v61 customControlsView];
      v59 = [v60 displayModeControlsAreaLayoutGuide];
      [v59 leadingAnchor];
      v58 = v62 = v36;
      v35 = [v36 constraintEqualToAnchor:?];
    }

    v80 = v31;
    v86 = v20;
    v66 = v35;
    v88[1] = v35;
    v71 = [WeakRetained playerViewController];
    v70 = [v71 traitCollection];
    v85 = v29;
    v69 = [v70 hu_hasExtendedWidth];
    if ((v69 & 1) == 0)
    {
      v57 = [WeakRetained calendarContainerViewController];
      v56 = [v57 view];
      v37 = [v56 trailingAnchor];
      v54 = [WeakRetained playerViewController];
      v53 = [v54 customControlsView];
      v52 = [v53 volumeControlsAreaLayoutGuide];
      [v52 trailingAnchor];
      v51 = v55 = v37;
      v29 = [v37 constraintEqualToAnchor:?];
    }

    v65 = v29;
    v88[2] = v29;
    v67 = [WeakRetained calendarContainerViewController];
    v38 = [v67 view];
    v39 = [v38 heightAnchor];
    v40 = [v39 constraintEqualToConstant:47.0];
    v88[3] = v40;
    v41 = [WeakRetained playerViewController];
    v42 = [v41 traitCollection];
    v43 = [v42 hu_hasExtendedWidth];
    v44 = v87;
    if ((v43 & 1) == 0)
    {
      v50 = [WeakRetained calendarContainerViewController];
      v49 = [v50 view];
      v45 = [v49 centerXAnchor];
      v47 = [WeakRetained playerViewController];
      v27 = [v47 customControlsView];
      v24 = [v27 centerXAnchor];
      v48 = v45;
      v44 = [v45 constraintEqualToAnchor:v24];
    }

    v88[4] = v44;
    v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:5];
    if ((v43 & 1) == 0)
    {
    }

    if ((v69 & 1) == 0)
    {
    }

    if ((v72 & 1) == 0)
    {
    }

    v33 = v68;
  }

  else
  {
    v33 = MEMORY[0x277CBEBF8];
  }

  return v33;
}

- (void)updateCalendarContainerVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  playbackEngine = [(HUCameraController *)self playbackEngine];
  if ([playbackEngine isUserScrubbing])
  {

    v6 = 0.0;
  }

  else
  {
    playbackEngine2 = [(HUCameraController *)self playbackEngine];
    hasRecordingEvents = [playbackEngine2 hasRecordingEvents];

    if (hasRecordingEvents)
    {
      v6 = visibilityCopy;
    }

    else
    {
      v6 = 0.0;
    }
  }

  calendarContainerViewController = [(HUCameraController *)self calendarContainerViewController];
  view = [calendarContainerViewController view];
  [view setAlpha:v6];
}

- (id)presentSettingsViewController
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Present settings.", v11, 2u);
  }

  [(HUCameraController *)self setDisplayingDetailsViewController:1];
  [(HUCameraController *)self pauseEngineIfNeeded];
  liveContentViewController = [(HUCameraController *)self liveContentViewController];
  view = [liveContentViewController view];
  [view setHidden:1];

  [(HUCameraController *)self setDisplayingDetailsViewController:1];
  cameraDelegate = [(HUCameraController *)self cameraDelegate];
  cameraItem = [(HUCameraController *)self cameraItem];
  v8 = [cameraDelegate detailsViewControllerForCameraItem:cameraItem];

  [v8 setPresentationDelegate:self];
  [v8 _setIgnoreAppSupportedOrientations:1];
  [v8 setModalInPresentation:1];
  v9 = [(HUCameraController *)self presentInternalViewController:v8];

  return v9;
}

- (void)presentNearbyAccessoriesViewController
{
  v3 = [HUNearbyAccessoriesViewController alloc];
  cameraItem = [(HUCameraController *)self cameraItem];
  v6 = [(HUNearbyAccessoriesViewController *)v3 initWithSourceItem:cameraItem supportsQuickControls:1];

  [(HUNearbyAccessoriesViewController *)v6 setPresentationDelegate:self];
  [(HUNearbyAccessoriesViewController *)v6 _setIgnoreAppSupportedOrientations:1];
  v5 = [(HUCameraController *)self presentInternalViewController:v6];
}

- (id)presentInternalViewController:(id)controller
{
  controllerCopy = controller;
  [(HUCameraController *)self cancelAnyPendingLaunchEventAnalytics];
  playerViewController = [(HUCameraController *)self playerViewController];
  [playerViewController setAllowsPictureInPicturePlayback:0];

  v6 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:controllerCopy];
  hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
  navigationBar = [v6 navigationBar];
  [navigationBar setTintColor:hf_keyColor];

  [v6 setModalPresentationStyle:2];
  [v6 _setIgnoreAppSupportedOrientations:1];
  playerViewController2 = [(HUCameraController *)self playerViewController];
  viewControllerForFullScreenPresentation = [playerViewController2 viewControllerForFullScreenPresentation];
  v11 = [viewControllerForFullScreenPresentation hu_presentPreloadableViewController:v6 animated:1];

  return v11;
}

- (void)cancelAnyPendingLaunchEventAnalytics
{
  launchEvent = [(HUCameraController *)self launchEvent];

  if (launchEvent)
  {

    [(HUCameraController *)self setLaunchEvent:0];
  }
}

- (BOOL)_shouldAutoPlayOnViewAppearance
{
  playbackEngine = [(HUCameraController *)self playbackEngine];
  playbackPosition = [playbackEngine playbackPosition];
  livePosition = [MEMORY[0x277D144D0] livePosition];
  v6 = [playbackPosition isEqual:livePosition];

  result = 1;
  if ((v6 & 1) == 0)
  {
    playerConfiguration = [(HUCameraController *)self playerConfiguration];
    startingPlaybackDate = [playerConfiguration startingPlaybackDate];

    if (!startingPlaybackDate)
    {
      return 0;
    }

    playbackEngine2 = [(HUCameraController *)self playbackEngine];
    currentClip = [playbackEngine2 currentClip];

    if (!currentClip)
    {
      return 0;
    }

    playbackEngine3 = [(HUCameraController *)self playbackEngine];
    currentClip2 = [playbackEngine3 currentClip];
    hf_dateInterval = [currentClip2 hf_dateInterval];
    playerConfiguration2 = [(HUCameraController *)self playerConfiguration];
    startingPlaybackDate2 = [playerConfiguration2 startingPlaybackDate];
    v17 = [hf_dateInterval hf_searchResultForDate:startingPlaybackDate2];

    if (v17 != 1)
    {
      return 0;
    }
  }

  return result;
}

- (void)updateMicrophoneControls
{
  v30 = *MEMORY[0x277D85DE8];
  if ([(HUCameraController *)self shouldDisplayMicrophoneControl])
  {
    playbackEngine = [(HUCameraController *)self playbackEngine];
    isMicrophoneEnabled = [playbackEngine isMicrophoneEnabled];
    portraitMicrophoneControl = [(HUCameraController *)self portraitMicrophoneControl];
    [portraitMicrophoneControl setTalking:isMicrophoneEnabled];

    playbackEngine2 = [(HUCameraController *)self playbackEngine];
    isMicrophoneEnabled2 = [playbackEngine2 isMicrophoneEnabled];
    landscapeMicrophoneControl = [(HUCameraController *)self landscapeMicrophoneControl];
    [landscapeMicrophoneControl setTalking:isMicrophoneEnabled2];

    portraitMicrophoneConstraintSet = [(HUCameraController *)self portraitMicrophoneConstraintSet];
    [portraitMicrophoneConstraintSet invalidate];

    landscapeMicrophoneConstraintSet = [(HUCameraController *)self landscapeMicrophoneConstraintSet];
    [landscapeMicrophoneConstraintSet invalidate];

    portraitMicrophoneConstraintSet2 = [(HUCameraController *)self portraitMicrophoneConstraintSet];
    [portraitMicrophoneConstraintSet2 activateIfNeeded];

    landscapeMicrophoneConstraintSet2 = [(HUCameraController *)self landscapeMicrophoneConstraintSet];
    [landscapeMicrophoneConstraintSet2 activateIfNeeded];
  }

  [(HUCameraController *)self updateMicrophoneControlVisibility];
  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    cameraProfile = [(HUCameraController *)self cameraProfile];
    hf_supportsBidirectionalAudio = [cameraProfile hf_supportsBidirectionalAudio];
    portraitMicrophoneControl2 = [(HUCameraController *)self portraitMicrophoneControl];
    [portraitMicrophoneControl2 alpha];
    v18 = v17 == 0.0;
    landscapeMicrophoneControl2 = [(HUCameraController *)self landscapeMicrophoneControl];
    [landscapeMicrophoneControl2 alpha];
    v21 = v20 == 0.0;
    playbackEngine3 = [(HUCameraController *)self playbackEngine];
    v23[0] = 67109888;
    v23[1] = hf_supportsBidirectionalAudio;
    v24 = 1024;
    v25 = v18;
    v26 = 1024;
    v27 = v21;
    v28 = 1024;
    isLiveStreaming = [playbackEngine3 isLiveStreaming];
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "Update microphone display: BiDirectionalAudio:%{BOOL}d PortraitControlHidden:%{BOOL}d LandscapeControlHidden:%{BOOL}d LiveStreaming:%{BOOL}d", v23, 0x1Au);
  }
}

- (void)updateMicrophoneControlVisibility
{
  if ([(HUCameraController *)self shouldDisplayMicrophoneControl])
  {
    playerViewController = [(HUCameraController *)self playerViewController];
    traitCollection = [playerViewController traitCollection];
    hu_hasExtendedWidth = [traitCollection hu_hasExtendedWidth];

    portraitMicrophoneControl = [(HUCameraController *)self portraitMicrophoneControl];
    portraitMicrophoneControl2 = portraitMicrophoneControl;
    if (hu_hasExtendedWidth)
    {
      [portraitMicrophoneControl setAlpha:0.0];
      v8 = 1.0;
    }

    else
    {
      [portraitMicrophoneControl setAlpha:1.0];
      v8 = 0.0;
    }
  }

  else
  {
    portraitMicrophoneControl2 = [(HUCameraController *)self portraitMicrophoneControl];
    v8 = 0.0;
    [portraitMicrophoneControl2 setAlpha:0.0];
  }

  landscapeMicrophoneControl = [(HUCameraController *)self landscapeMicrophoneControl];
  [landscapeMicrophoneControl setAlpha:v8];
}

- (BOOL)shouldDisplayMicrophoneControl
{
  cameraProfile = [(HUCameraController *)self cameraProfile];
  if ([cameraProfile hf_supportsBidirectionalAudio])
  {
    playbackEngine = [(HUCameraController *)self playbackEngine];
    if ([playbackEngine engineMode])
    {
      v5 = 0;
    }

    else
    {
      playbackEngine2 = [(HUCameraController *)self playbackEngine];
      v5 = [playbackEngine2 timeControlStatus] == 2 && -[HUCameraController hu_playbackControlsAreVisible](self, "hu_playbackControlsAreVisible");
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)toggleMicrophoneState
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    playbackEngine = [(HUCameraController *)self playbackEngine];
    v8[0] = 67109120;
    v8[1] = [playbackEngine isMicrophoneEnabled] ^ 1;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Toggling microphone state:%{BOOL}d using button.", v8, 8u);
  }

  playbackEngine2 = [(HUCameraController *)self playbackEngine];
  isMicrophoneEnabled = [playbackEngine2 isMicrophoneEnabled];
  playbackEngine3 = [(HUCameraController *)self playbackEngine];
  [playbackEngine3 setMicrophoneEnabled:isMicrophoneEnabled ^ 1u];
}

- (double)portraitMicrophoneOverlapOffset
{
  footerViewController = [(HUCameraController *)self footerViewController];
  view = [footerViewController view];
  footerViewController2 = [(HUCameraController *)self footerViewController];
  liveButton = [footerViewController2 liveButton];
  [liveButton frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  playerViewController = [(HUCameraController *)self playerViewController];
  view2 = [playerViewController view];
  [view convertRect:view2 toView:{v8, v10, v12, v14}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v38.origin.x = v18;
  v38.origin.y = v20;
  v38.size.width = v22;
  v38.size.height = v24;
  MaxX = CGRectGetMaxX(v38);
  playerViewController2 = [(HUCameraController *)self playerViewController];
  view3 = [playerViewController2 view];
  [view3 layoutMargins];
  v29 = MaxX + v28;

  playerViewController3 = [(HUCameraController *)self playerViewController];
  view4 = [playerViewController3 view];
  [view4 bounds];
  v33 = v32;
  portraitMicrophoneControl = [(HUCameraController *)self portraitMicrophoneControl];
  [portraitMicrophoneControl bounds];
  v36 = v35 * -0.5 + v33 * 0.5;

  result = -60.0;
  if (v29 <= v36)
  {
    return 0.0;
  }

  return result;
}

- (BOOL)shouldDisplayLandscapeMicrophoneInLine
{
  cameraStatusView = [(HUCameraController *)self cameraStatusView];
  superview = [cameraStatusView superview];
  cameraStatusView2 = [(HUCameraController *)self cameraStatusView];
  [cameraStatusView2 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  playerViewController = [(HUCameraController *)self playerViewController];
  view = [playerViewController view];
  [superview convertRect:view toView:{v7, v9, v11, v13}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v35.origin.x = v17;
  v35.origin.y = v19;
  v35.size.width = v21;
  v35.size.height = v23;
  MaxX = CGRectGetMaxX(v35);
  volumeControlView = [(HUCameraController *)self volumeControlView];
  [volumeControlView bounds];
  v27 = v26;

  landscapeMicrophoneControl = [(HUCameraController *)self landscapeMicrophoneControl];
  [landscapeMicrophoneControl frame];
  v30 = v27 + MaxX + 5.0 + v29 + 16.0;

  playerViewController2 = [(HUCameraController *)self playerViewController];
  view2 = [playerViewController2 view];
  [view2 frame];
  LOBYTE(superview) = v30 < v33;

  return superview;
}

- (void)updateMicrophoneAndSpeakerStatus
{
  if ([(HUCameraController *)self applicationIsActive])
  {
    playbackEngine = [(HUCameraController *)self playbackEngine];
    isMicrophoneEnabled = [playbackEngine isMicrophoneEnabled];

    portraitMicrophoneControl = [(HUCameraController *)self portraitMicrophoneControl];
    v6 = portraitMicrophoneControl;
    if (isMicrophoneEnabled)
    {
      [portraitMicrophoneControl setTalking:1];

      landscapeMicrophoneControl = [(HUCameraController *)self landscapeMicrophoneControl];
      [landscapeMicrophoneControl setTalking:1];

      playerViewController = [(HUCameraController *)self playerViewController];
      playerController = [playerViewController playerController];
      [playerController setMuted:0];
    }

    else
    {
      [portraitMicrophoneControl setTalking:0];

      landscapeMicrophoneControl2 = [(HUCameraController *)self landscapeMicrophoneControl];
      [landscapeMicrophoneControl2 setTalking:0];

      playerViewController = [(HUCameraController *)self playbackEngine];
      LODWORD(landscapeMicrophoneControl2) = [playerViewController prefersAudioEnabled];
      playerController = [(HUCameraController *)self playerViewController];
      v8PlayerController = [playerController playerController];
      [v8PlayerController setMuted:landscapeMicrophoneControl2 ^ 1];
    }
  }

  else
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Application is not active. Bypassing audio control updates.", buf, 2u);
    }
  }
}

- (void)updatePlayerVolumeSliderState
{
  playbackEngine = [(HUCameraController *)self playbackEngine];
  [playbackEngine streamAudioVolume];
  v4 = v3;
  playerViewController = [(HUCameraController *)self playerViewController];
  playerController = [playerViewController playerController];
  [playerController setVolume:v4];
}

- (void)updateVolumeControlVisibility
{
  savedControlItems = [(HUCameraController *)self savedControlItems];

  if (!savedControlItems)
  {
    playbackEngine = [(HUCameraController *)self playbackEngine];
    shouldDisplayVolumeControls = [playbackEngine shouldDisplayVolumeControls];
    behavior = [(HUCameraController *)self behavior];
    behaviorContext = [behavior behaviorContext];
    [behaviorContext setPlaybackControlsIncludeVolumeControls:shouldDisplayVolumeControls];
  }
}

- (BOOL)homeHasMultipleCameraProfiles
{
  home = [(HUCameraController *)self home];
  hf_allCameraProfiles = [home hf_allCameraProfiles];
  v4 = [hf_allCameraProfiles count] > 1;

  return v4;
}

- (void)showCamera:(id)camera
{
  v66 = *MEMORY[0x277D85DE8];
  cameraCopy = camera;
  cameraItem = [(HUCameraController *)self cameraItem];
  accessory = [cameraItem accessory];
  v7 = [cameraCopy isEqual:accessory];

  if (v7)
  {
    firstObject = HFLogForCategory();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier = [cameraCopy uniqueIdentifier];
      *buf = 138412290;
      v59 = uniqueIdentifier;
      _os_log_impl(&dword_20CEB6000, firstObject, OS_LOG_TYPE_DEFAULT, "Not switching camera using picker since the selected camera was the same %@.", buf, 0xCu);
    }
  }

  else
  {
    mEMORY[0x277D14498] = [MEMORY[0x277D14498] sharedManager];
    [mEMORY[0x277D14498] resetForCameraDismissal];

    cameraProfiles = [cameraCopy cameraProfiles];
    firstObject = [cameraProfiles firstObject];

    clipManager = [firstObject clipManager];
    mEMORY[0x277D144F0] = [MEMORY[0x277D144F0] sharedManager];
    [mEMORY[0x277D144F0] setClipManager:clipManager];

    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      cameraProfile = [(HUCameraController *)self cameraProfile];
      uniqueIdentifier2 = [cameraProfile uniqueIdentifier];
      cameraProfile2 = [(HUCameraController *)self cameraProfile];
      accessory2 = [cameraProfile2 accessory];
      name = [accessory2 name];
      [cameraCopy uniqueIdentifier];
      v19 = v57 = cameraCopy;
      accessory3 = [firstObject accessory];
      name2 = [accessory3 name];
      *buf = 138413058;
      v59 = uniqueIdentifier2;
      v60 = 2112;
      v61 = name;
      v62 = 2112;
      v63 = v19;
      v64 = 2112;
      v65 = name2;
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "Change camera picker from %@/%@ to %@/%@.", buf, 0x2Au);

      cameraCopy = v57;
    }

    v22 = [HUCameraPlayerConfiguration alloc];
    home = [(HUCameraController *)self home];
    v24 = [(HUCameraPlayerConfiguration *)v22 initWithHome:home cameraProfile:firstObject notificationUUID:0 clipUUID:0];

    playbackEngine = [(HUCameraController *)self playbackEngine];
    playbackPosition = [playbackEngine playbackPosition];
    clipPlaybackDate = [playbackPosition clipPlaybackDate];
    [(HUCameraPlayerConfiguration *)v24 setStartingPlaybackDate:clipPlaybackDate];

    [(HUCameraController *)self setPlayerConfiguration:v24];
    v28 = HFLogForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      playerConfiguration = [(HUCameraController *)self playerConfiguration];
      *buf = 138412290;
      v59 = playerConfiguration;
      _os_log_impl(&dword_20CEB6000, v28, OS_LOG_TYPE_DEFAULT, "Changing camera using configuration:%@", buf, 0xCu);
    }

    v30 = objc_alloc(MEMORY[0x277D144A0]);
    cameraProfile3 = [(HUCameraPlayerConfiguration *)v24 cameraProfile];
    home2 = [(HUCameraPlayerConfiguration *)v24 home];
    hf_characteristicValueManager = [home2 hf_characteristicValueManager];
    v34 = [v30 initWithProfile:cameraProfile3 valueSource:hf_characteristicValueManager];
    [(HUCameraController *)self setCameraItem:v34];

    playbackEngine2 = [(HUCameraController *)self playbackEngine];
    -[HUCameraController setLastTimeControlStatusPriorToCameraSwap:](self, "setLastTimeControlStatusPriorToCameraSwap:", [playbackEngine2 timeControlStatus]);

    playbackEngine3 = [(HUCameraController *)self playbackEngine];
    [playbackEngine3 pause];

    [(HUCameraController *)self removePlaybackHistoryUI];
    v37 = objc_alloc(MEMORY[0x277D144C0]);
    home3 = [(HUCameraController *)self home];
    cameraProfile4 = [(HUCameraController *)self cameraProfile];
    v40 = [v37 initWithHome:home3 cameraProfile:cameraProfile4];

    behavior = [(HUCameraController *)self behavior];
    [v40 setClipScrubber:behavior];

    playbackEngine4 = [(HUCameraController *)self playbackEngine];
    [playbackEngine4 updateConfiguration:v40];

    v43 = objc_alloc(MEMORY[0x277D14B08]);
    cameraItem2 = [(HUCameraController *)self cameraItem];
    v45 = [v43 initWithDelegate:self sourceItem:cameraItem2];
    [(HUCameraController *)self setItemManager:v45];

    accessory4 = [firstObject accessory];
    name3 = [accessory4 name];
    cameraStatusView = [(HUCameraController *)self cameraStatusView];
    [cameraStatusView setStatusString:name3];

    if ([(HUCameraPlayerConfiguration *)v24 isConfiguredForLiveStream])
    {
      v49 = HFLogForCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v59 = firstObject;
        _os_log_impl(&dword_20CEB6000, v49, OS_LOG_TYPE_DEFAULT, "Updating the live stream for camera profile:%@.", buf, 0xCu);
      }

      playbackEngine5 = [(HUCameraController *)self playbackEngine];
      [playbackEngine5 updateLiveStreamForCameraProfile:firstObject];

      playbackEngine6 = [(HUCameraController *)self playbackEngine];
      [playbackEngine6 play];

      cameraProfile5 = [(HUCameraController *)self cameraProfile];
      hf_supportsBidirectionalAudio = [cameraProfile5 hf_supportsBidirectionalAudio];

      if (hf_supportsBidirectionalAudio)
      {
        portraitMicrophoneConstraintSet = [(HUCameraController *)self portraitMicrophoneConstraintSet];
        [portraitMicrophoneConstraintSet activateIfNeeded];

        landscapeMicrophoneConstraintSet = [(HUCameraController *)self landscapeMicrophoneConstraintSet];
        [landscapeMicrophoneConstraintSet activateIfNeeded];
      }

      [(HUCameraController *)self updateMicrophoneControls];
      [(HUCameraController *)self updateVolumeControlVisibility];
    }

    [(HUCameraController *)self _reloadClipsWithUpdate:1];
  }
}

- (id)cameraPickerMenu
{
  v31 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  home = [(HUCameraController *)self home];
  accessories = [home accessories];

  v6 = [accessories countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(accessories);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        cameraProfiles = [v10 cameraProfiles];
        v12 = [cameraProfiles count];

        if (v12)
        {
          [array addObject:v10];
        }
      }

      v7 = [accessories countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v7);
  }

  [array sortUsingComparator:&__block_literal_global_164];
  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = array;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "Camera picker menu contains cameras:%@", buf, 0xCu);
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __38__HUCameraController_cameraPickerMenu__block_invoke_165;
  v21 = &unk_277DC2F98;
  selfCopy = self;
  v23 = v14;
  v15 = v14;
  [array enumerateObjectsUsingBlock:&v18];
  v16 = [MEMORY[0x277D75710] menuWithTitle:&stru_2823E0EE8 children:{v15, v18, v19, v20, v21, selfCopy}];

  return v16;
}

uint64_t __38__HUCameraController_cameraPickerMenu__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 caseInsensitiveCompare:v6];
  return v7;
}

void __38__HUCameraController_cameraPickerMenu__block_invoke_165(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v4 = [v3 name];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = _HULocalizedStringWithDefaultValue(@"HUCameraPickerMissingCameraName", @"HUCameraPickerMissingCameraName", 1);
  }

  v7 = v6;

  v8 = MEMORY[0x277D750C8];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __38__HUCameraController_cameraPickerMenu__block_invoke_2;
  v15[3] = &unk_277DC2F70;
  objc_copyWeak(&v17, &location);
  v9 = v3;
  v16 = v9;
  v10 = [v8 actionWithTitle:v7 image:0 identifier:0 handler:v15];
  v11 = [*(a1 + 32) cameraProfile];
  v12 = [v11 accessory];
  v13 = [v12 uniqueIdentifier];
  v14 = [v9 uniqueIdentifier];
  [v10 setState:{objc_msgSend(v13, "isEqual:", v14)}];

  [*(a1 + 40) addObject:v10];
  objc_destroyWeak(&v17);

  objc_destroyWeak(&location);
}

void __38__HUCameraController_cameraPickerMenu__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained showCamera:*(a1 + 32)];
  v2 = [WeakRetained cameraPickerMenu];
  v3 = [WeakRetained cameraPickerButton];
  [v3 setMenu:v2];
}

- (void)playerViewController:(id)controller contentViewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __101__HUCameraController_playerViewController_contentViewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v5[3] = &unk_277DB79B8;
  v5[4] = self;
  [coordinator animateAlongsideTransition:v5 completion:0];
}

uint64_t __101__HUCameraController_playerViewController_contentViewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) calendarConstraintSet];
  [v2 invalidate];

  v3 = [*(a1 + 32) cameraStatusViewConstraintSet];
  [v3 invalidate];

  [*(a1 + 32) cameraStatusViewConstantForTraitCollection];
  v5 = v4;
  v6 = [*(a1 + 32) cameraStatusViewTopConstraint];
  [v6 setConstant:v5];

  [*(a1 + 32) updateMicrophoneControls];
  [*(a1 + 32) updateVolumeControlVisibility];
  [*(a1 + 32) updatePIPBehaviorForDeviceAndConfiguration];
  v7 = *(a1 + 32);

  return [v7 updateViewConstraints];
}

- (void)playerViewController:(id)controller willTransitionToVisibilityOfPlaybackControls:(BOOL)controls withAnimationCoordinator:(id)coordinator
{
  controlsCopy = controls;
  v32 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  coordinatorCopy = coordinator;
  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v29) = controlsCopy;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "transitioning to visibility %d", buf, 8u);
  }

  footerViewController = [(HUCameraController *)self footerViewController];

  if (!footerViewController)
  {
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "loading the auxilliary views.", buf, 2u);
    }

    [(HUCameraController *)self loadDependentViewControllers];
    [(HUCameraController *)self loadAuxilliaryViews];
    [(HUCameraController *)self updateViewConstraints];
  }

  [(HUCameraController *)self setHu_playbackControlsAreVisible:controlsCopy];
  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v29 = controllerCopy;
    v30 = 1024;
    v31 = controlsCopy;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "Begin visibility transition for %@ visible:%{BOOL}d.", buf, 0x12u);
  }

  if (controlsCopy)
  {
    clipScrubberViewController = [(HUCameraController *)self clipScrubberViewController];
    displayMode = [clipScrubberViewController displayMode];

    if (!displayMode)
    {
      v16 = HFLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = controllerCopy;
        _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "Display AVKit controls since player is not editing.%@", buf, 0xCu);
      }

      behavior = [(HUCameraController *)self behavior];
      behaviorContext = [behavior behaviorContext];
      [behaviorContext setPlaybackControlsIncludeDisplayModeControls:1];

      behavior2 = [(HUCameraController *)self behavior];
      behaviorContext2 = [behavior2 behaviorContext];
      [behaviorContext2 setPlaybackControlsIncludeVolumeControls:1];
    }
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __113__HUCameraController_playerViewController_willTransitionToVisibilityOfPlaybackControls_withAnimationCoordinator___block_invoke;
  v26[3] = &unk_277DB7EE0;
  v26[4] = self;
  v27 = controlsCopy;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __113__HUCameraController_playerViewController_willTransitionToVisibilityOfPlaybackControls_withAnimationCoordinator___block_invoke_2;
  v22[3] = &unk_277DC2FC0;
  v25 = controlsCopy;
  v23 = controllerCopy;
  selfCopy = self;
  v21 = controllerCopy;
  [coordinatorCopy addCoordinatedAnimations:v26 completion:v22];
}

void __113__HUCameraController_playerViewController_willTransitionToVisibilityOfPlaybackControls_withAnimationCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateCalendarContainerVisibility:*(a1 + 40)];
  LOBYTE(v2) = *(a1 + 40);
  v3 = v2;
  v4 = [*(a1 + 32) clipScrubberViewController];
  v5 = [v4 view];
  [v5 setAlpha:v3];

  if (*(a1 + 40))
  {
    v6 = 47.0;
  }

  else
  {
    v6 = 120.0;
  }

  v7 = [*(a1 + 32) dayLabelBottomConstraint];
  [v7 setConstant:v6];

  v8 = [*(a1 + 32) dayLabel];
  v9 = [v8 superview];
  [v9 layoutIfNeeded];

  v10 = [*(a1 + 32) clipScrubberViewController];
  if (v10)
  {
    v11 = v10;
    v12 = [*(a1 + 32) clipScrubberViewController];
    v13 = [v12 userIsScrubbing];

    if (v13)
    {
      v14 = [*(a1 + 32) clipScrubberViewController];
      v15 = [v14 view];
      [v15 setAlpha:1.0];

      v16 = [*(a1 + 32) dayLabelBottomConstraint];
      [v16 setConstant:47.0];

      v17 = [*(a1 + 32) dayLabel];
      v18 = [v17 superview];
      [v18 layoutIfNeeded];
    }
  }

  [*(a1 + 32) updateUnanalyzedCameraClipTip];
  LOBYTE(v19) = *(a1 + 40);
  v20 = v19;
  v21 = [*(a1 + 32) cameraStatusView];
  [v21 setAlpha:v20];

  [*(a1 + 32) updateMicrophoneControls];
  [*(a1 + 32) updateVolumeControlVisibility];
  if ((*(a1 + 40) & 1) == 0)
  {
    v22 = [*(a1 + 32) portraitMicrophoneControl];
    [v22 setAlpha:0.0];

    v23 = [*(a1 + 32) landscapeMicrophoneControl];
    [v23 setAlpha:0.0];
  }

  if ([*(a1 + 32) hasRecordedClips])
  {
    v24 = ([*(a1 + 32) isDismissingViewController] ^ 1);
    v25 = [*(a1 + 32) dayLabel];
    [v25 setAlpha:v24];

    v26 = ([*(a1 + 32) isDismissingViewController] ^ 1);
    v27 = [*(a1 + 32) timeLabel];
    [v27 setAlpha:v26];

    v38 = [*(a1 + 32) footerViewController];
    v28 = [v38 view];
    [v28 setHidden:1];
  }

  else
  {
    v29 = *(a1 + 40) == 0;
    v30 = [*(a1 + 32) footerViewController];
    v31 = [v30 view];
    [v31 setHidden:v29];

    v32 = [*(a1 + 32) clipScrubberViewController];
    v33 = [v32 view];
    [v33 setAlpha:0.0];

    v34 = [*(a1 + 32) cameraProfile];
    v35 = [v34 accessory];
    LOBYTE(v31) = [v35 isReachable];

    if ((v31 & 1) == 0)
    {
      v36 = [*(a1 + 32) footerViewController];
      v37 = [v36 liveButton];
      [v37 setHidden:1];
    }

    v38 = [*(a1 + 32) cameraStatusView];
    v28 = [*(a1 + 32) playbackEngine];
    [v38 updateStatusForPlaybackEngine:v28];
  }
}

void __113__HUCameraController_playerViewController_willTransitionToVisibilityOfPlaybackControls_withAnimationCoordinator___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v9 = 138412546;
    v10 = v3;
    v11 = 1024;
    v12 = v4;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "Completed willTransitionToVisibilityOfPlaybackControls:... %@ %{BOOL}d", &v9, 0x12u);
  }

  v5 = [*(a1 + 40) playerViewController];
  v6 = [v5 traitCollection];
  if ([v6 hu_hasExtendedWidth])
  {
  }

  else
  {
    v7 = *(a1 + 48);

    if (v7 != 1)
    {
      return;
    }

    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "Flashing the playback controls.", &v9, 2u);
    }

    v5 = [*(a1 + 40) playerViewController];
    [v5 flashPlaybackControlsWithDuration:1.79769313e308];
  }
}

- (void)playerViewController:(id)controller willBeginFullScreenPresentationWithAnimationCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "beginning full screen presentation", buf, 2u);
  }

  [(HUCameraController *)self setEnteringFullScreen:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __99__HUCameraController_playerViewController_willBeginFullScreenPresentationWithAnimationCoordinator___block_invoke;
  v7[3] = &unk_277DB79B8;
  v7[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v7];
}

uint64_t __99__HUCameraController_playerViewController_willBeginFullScreenPresentationWithAnimationCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setEnteringFullScreen:0];
  v2 = [*(a1 + 32) playerViewController];
  [v2 flashPlaybackControlsWithDuration:1.79769313e308];

  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "beginning full screen presentation. Finished.", v5, 2u);
  }

  return [*(a1 + 32) _didBeginPlayerViewControllerPresentation];
}

- (id)playerViewController:(id)controller targetViewForDismissalAnimationWithProposedTargetView:(id)view
{
  [(HUCameraController *)self setIsDismissingViewController:1, view];
  dayLabel = [(HUCameraController *)self dayLabel];
  [dayLabel setAlpha:0.0];

  timeLabel = [(HUCameraController *)self timeLabel];
  [timeLabel setAlpha:0.0];

  tipView = [(HUCameraController *)self tipView];
  [tipView setAlpha:0.0];

  cameraDelegate = [(HUCameraController *)self cameraDelegate];
  cameraProfile = [(HUCameraController *)self cameraProfile];
  v10 = [cameraDelegate targetViewForDismissingCameraProfile:cameraProfile];

  return v10;
}

- (void)playerViewController:(id)controller willEndFullScreenPresentationWithAnimationCoordinator:(id)coordinator
{
  controllerCopy = controller;
  coordinatorCopy = coordinator;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "ending full screen presentation", buf, 2u);
  }

  *buf = 0;
  v12 = buf;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__29;
  v15 = __Block_byref_object_dispose__29;
  selfCopy = self;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__HUCameraController_playerViewController_willEndFullScreenPresentationWithAnimationCoordinator___block_invoke;
  v10[3] = &unk_277DB79B8;
  v10[4] = selfCopy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __97__HUCameraController_playerViewController_willEndFullScreenPresentationWithAnimationCoordinator___block_invoke_2;
  v9[3] = &unk_277DC2FE8;
  v9[4] = selfCopy;
  v9[5] = buf;
  [coordinatorCopy animateAlongsideTransition:v10 completion:v9];
  _Block_object_dispose(buf, 8);
}

void __97__HUCameraController_playerViewController_willEndFullScreenPresentationWithAnimationCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessoryViewController];
  v3 = [v2 showingError];

  if (v3)
  {
    v5 = [*(a1 + 32) playerViewController];
    v4 = [v5 view];
    [v4 setAlpha:0.0];
  }
}

void __97__HUCameraController_playerViewController_willEndFullScreenPresentationWithAnimationCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) playerViewController];
  v3 = [v2 view];
  v4 = [v3 superview];

  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 setIsDismissingViewController:0];
    v6 = [*(a1 + 32) dayLabel];
    [v6 setAlpha:1.0];

    v7 = [*(a1 + 32) timeLabel];
    [v7 setAlpha:1.0];

    v8 = [*(a1 + 32) tipView];
    [v8 setAlpha:1.0];

    v10 = [*(a1 + 32) playerViewController];
    v9 = [v10 view];
    [v9 setAlpha:1.0];
  }

  else
  {

    [v5 _didEndPlayerViewControllerPresentation];
  }
}

- (void)_didBeginPlayerViewControllerPresentation
{
  mEMORY[0x277D148A8] = [MEMORY[0x277D148A8] sharedInstance];
  [mEMORY[0x277D148A8] addObserver:self];

  [(HUCameraController *)self setupTipsObserver];
}

- (void)_didEndPlayerViewControllerPresentation
{
  [(HUCameraController *)self _submitTimelinePinchToZoomEvent];
  mEMORY[0x277D148A8] = [MEMORY[0x277D148A8] sharedInstance];
  [mEMORY[0x277D148A8] removeObserver:self];

  [(HUCameraController *)self tearDownTipsObserver];
  [(HUCameraController *)self cleanUpIdleTimerState];
  cameraDelegate = [(HUCameraController *)self cameraDelegate];
  cameraProfile = [(HUCameraController *)self cameraProfile];
  [cameraDelegate didDismissCameraController:self forProfile:cameraProfile];
}

- (void)setPipState:(unint64_t)state
{
  if (state == 3)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "PIP State: PIP finished", buf, 2u);
    }

    pipState = self->_pipState;
    v7 = HFLogForCategory();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (pipState == 2)
    {
      if (v8)
      {
        *v17 = 0;
        _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "PIP State: PIP handed back first", v17, 2u);
      }

      [(HUCameraController *)self setShouldResumePlaying:1];
      [(HUCameraController *)self _resetStateAfterPIP];
      v9 = HFLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "PIP State: Starting stream", v16, 2u);
      }

      playbackEngine = [(HUCameraController *)self playbackEngine];
      [playbackEngine play];
    }

    else
    {
      if (v8)
      {
        *v15 = 0;
        _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "PIP State: PIP did not hand back first", v15, 2u);
      }

      if ([(HUCameraController *)self applicationIsActive])
      {
        [(HUCameraController *)self setShouldResumePlaying:1];
        [(HUCameraController *)self _resetStateAfterPIP];
        goto LABEL_15;
      }

      [(HUCameraController *)self setShouldResumePlaying:0];
      playerViewController = [(HUCameraController *)self playerViewController];
      presentingViewController = [playerViewController presentingViewController];
      v13 = [presentingViewController hu_dismissViewControllerAnimated:0];

      [(HUCameraController *)self _didEndPlayerViewControllerPresentation];
      playbackEngine = HFLogForCategory();
      if (os_log_type_enabled(playbackEngine, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_20CEB6000, playbackEngine, OS_LOG_TYPE_DEFAULT, "PIP State: App was backgrounded, killing everything", v14, 2u);
      }
    }
  }

LABEL_15:
  self->_pipState = state;
}

- (void)_resetStateAfterPIP
{
  playerViewController = [(HUCameraController *)self playerViewController];
  [playerViewController setAllowsPictureInPicturePlayback:1];

  playbackEngine = [(HUCameraController *)self playbackEngine];
  [playbackEngine setPictureInPictureModeActive:0];

  behavior = [(HUCameraController *)self behavior];
  behaviorContext = [behavior behaviorContext];
  isMicrophoneEnabled = [behaviorContext isMicrophoneEnabled];
  playbackEngine2 = [(HUCameraController *)self playbackEngine];
  [playbackEngine2 setMicrophoneEnabled:isMicrophoneEnabled];
}

- (void)playerViewControllerWillStartPictureInPicture:(id)picture
{
  playerViewController = [(HUCameraController *)self playerViewController];
  view = [playerViewController view];
  [view setUserInteractionEnabled:0];

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "PIP: playerViewControllerWillStartPictureInPicture.", v14, 2u);
  }

  cameraProfile = [(HUCameraController *)self cameraProfile];
  hf_supportsBidirectionalAudio = [cameraProfile hf_supportsBidirectionalAudio];

  if (hf_supportsBidirectionalAudio)
  {
    playbackEngine = [(HUCameraController *)self playbackEngine];
    isMicrophoneEnabled = [playbackEngine isMicrophoneEnabled];
    behavior = [(HUCameraController *)self behavior];
    behaviorContext = [behavior behaviorContext];
    [behaviorContext setMicrophoneEnabled:isMicrophoneEnabled];
  }

  else
  {
    playbackEngine = [(HUCameraController *)self behavior];
    behavior = [playbackEngine behaviorContext];
    [behavior setHasMicrophone:0];
  }

  playbackEngine2 = [(HUCameraController *)self playbackEngine];
  [playbackEngine2 play];
}

- (void)playerViewControllerDidStartPictureInPicture:(id)picture
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "PIP: playerViewControllerDidStartPictureInPicture.", v6, 2u);
  }

  playbackEngine = [(HUCameraController *)self playbackEngine];
  [playbackEngine setPictureInPictureModeActive:1];

  [(HUCameraController *)self setPipState:1];
  [(HUCameraController *)self _showPictureInPicturePlaybackErrorIfNeeded];
}

- (void)playerViewController:(id)controller failedToStartPictureInPictureWithError:(id)error
{
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "PIP: failedToStartPictureInPictureWithError. ", v7, 2u);
  }

  playbackEngine = [(HUCameraController *)self playbackEngine];
  [playbackEngine setPictureInPictureModeActive:0];
}

- (void)playerViewControllerWillStopPictureInPicture:(id)picture
{
  playerViewController = [(HUCameraController *)self playerViewController];
  view = [playerViewController view];
  [view setUserInteractionEnabled:1];

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "PIP: playerViewControllerWillStopPictureInPicture.", v9, 2u);
  }

  liveContentViewController = [(HUCameraController *)self liveContentViewController];
  cameraView = [liveContentViewController cameraView];
  [cameraView setErrorContent:0];
}

- (void)playerViewControllerDidStopPictureInPicture:(id)picture
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = ![(HUCameraController *)self applicationIsActive];
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "PIP: Stop picture in picture. Will dismiss camera:%{BOOL}d.", v5, 8u);
  }

  [(HUCameraController *)self setPipState:3];
}

- (BOOL)playerViewControllerShouldAutomaticallyDismissAtPictureInPictureStart:(id)start
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "PIP: playerViewControllerShouldAutomaticallyDismissAtPictureInPictureStart.", v5, 2u);
  }

  return 0;
}

- (void)playerViewController:(id)controller restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  handlerCopy = handler;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = controllerCopy;
    v11 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "PIP: restoreUserInterfaceForPictureInPictureStopWithCompletionHandler %@ vs %@", &v9, 0x16u);
  }

  [(HUCameraController *)self setPipState:2];
  handlerCopy[2](handlerCopy, 1);
}

- (void)updatePIPBehaviorForDeviceAndConfiguration
{
  v25 = *MEMORY[0x277D85DE8];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom])
  {
    playerViewController = [(HUCameraController *)self playerViewController];
    traitCollection = [playerViewController traitCollection];
    hu_hasExtendedWidth = [traitCollection hu_hasExtendedWidth];

    v7 = hu_hasExtendedWidth ^ 1;
  }

  else
  {

    hu_hasExtendedWidth = 0;
    v7 = 1;
  }

  behavior = [(HUCameraController *)self behavior];
  behaviorContext = [behavior behaviorContext];
  [behaviorContext setCanStartPictureInPictureAutomaticallyWhenEnteringBackground:hu_hasExtendedWidth];

  behavior2 = [(HUCameraController *)self behavior];
  behaviorContext2 = [behavior2 behaviorContext];
  [behaviorContext2 setPlaybackControlsIncludePictureInPictureButton:v7];

  if (-[HUCameraController shouldDisableLiveStreamAfterCameraStatusChange](self, "shouldDisableLiveStreamAfterCameraStatusChange") || (-[HUCameraController cameraProfile](self, "cameraProfile"), v12 = objc_claimAutoreleasedReturnValue(), [v12 accessory], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isReachable"), v13, v12, (v14 & 1) == 0))
  {
    v15 = HFLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      cameraProfile = [(HUCameraController *)self cameraProfile];
      accessory = [cameraProfile accessory];
      v24[0] = 67109120;
      v24[1] = [accessory isReachable];
      _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "PIP: Unable to display PIP when live stream is disabled. Camera is reachable:%{BOOL}d.", v24, 8u);
    }

    behavior3 = [(HUCameraController *)self behavior];
    behaviorContext3 = [behavior3 behaviorContext];
    [behaviorContext3 setCanStartPictureInPictureAutomaticallyWhenEnteringBackground:0];

    behavior4 = [(HUCameraController *)self behavior];
    behaviorContext4 = [behavior4 behaviorContext];
    [behaviorContext4 setPlaybackControlsIncludePictureInPictureButton:0];
  }

  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    behavior5 = [(HUCameraController *)self behavior];
    behaviorContext5 = [behavior5 behaviorContext];
    [behaviorContext5 setPlaybackControlsIncludePictureInPictureButton:0];
  }
}

- (void)playbackEngine:(id)engine didUpdateClipPlayer:(id)player
{
  engineCopy = engine;
  timelapseController = [(HUCameraController *)self timelapseController];
  [timelapseController resetForNewCamera];

  playbackPosition = [engineCopy playbackPosition];

  [(HUCameraController *)self updateStateForPlaybackPosition:playbackPosition animated:1];
}

- (void)playbackEngine:(id)engine didUpdatePlaybackPosition:(id)position
{
  v41 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  positionCopy = position;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    engineModeDescription = [engineCopy engineModeDescription];
    timelineStateDescription = [engineCopy timelineStateDescription];
    timeControlStatusDescription = [engineCopy timeControlStatusDescription];
    v33 = 138413058;
    v34 = positionCopy;
    v35 = 2112;
    v36 = engineModeDescription;
    v37 = 2112;
    v38 = timelineStateDescription;
    v39 = 2112;
    v40 = timeControlStatusDescription;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "Camera Player didUpdate playbackPosition:%@ engineMode:%@ timelineState:%@ timeControlStatus:%@.", &v33, 0x2Au);
  }

  [(HUCameraController *)self updateStateForPlaybackPosition:positionCopy animated:1];
  if ([engineCopy engineMode])
  {
    [(HUCameraController *)self updateCameraPlayerForEventPlaybackPosition:positionCopy];
    playbackEngine = [(HUCameraController *)self playbackEngine];
    isScrubbing = [playbackEngine isScrubbing];

    if (isScrubbing)
    {
      playbackEngine2 = [(HUCameraController *)self playbackEngine];
      if ([playbackEngine2 timelineState] == 2)
      {

LABEL_13:
        objc_opt_class();
        playbackEngine3 = [(HUCameraController *)self playbackEngine];
        currentClip = [playbackEngine3 currentClip];
        if (objc_opt_isKindOfClass())
        {
          v23 = currentClip;
        }

        else
        {
          v23 = 0;
        }

        if (!v23)
        {
LABEL_20:
          if (![(HUCameraController *)self foundCameraClipWithInsufficientAnalysis])
          {
            playbackEngine4 = [(HUCameraController *)self playbackEngine];
            currentClip2 = [playbackEngine4 currentClip];
            hf_hasInsufficientAnalysis = [currentClip2 hf_hasInsufficientAnalysis];

            if (hf_hasInsufficientAnalysis)
            {
              [(HUCameraController *)self setFoundCameraClipWithInsufficientAnalysis:1];
            }
          }

          goto LABEL_23;
        }

        timelapseController = [(HUCameraController *)self timelapseController];
        playbackEngine5 = [(HUCameraController *)self playbackEngine];
        currentClip3 = [playbackEngine5 currentClip];
        [timelapseController updateToPlaybackPosition:positionCopy forHighQualityClip:currentClip3];

LABEL_19:
        goto LABEL_20;
      }

      playbackEngine6 = [(HUCameraController *)self playbackEngine];
      scrubbingSpeed = [playbackEngine6 scrubbingSpeed];

      if (scrubbingSpeed == 2)
      {
        goto LABEL_13;
      }
    }

    timelapseController = [(HUCameraController *)self timelapseController];
    [timelapseController pauseTimelapseScrubbing];
    goto LABEL_19;
  }

  accessoryViewController = [(HUCameraController *)self accessoryViewController];
  [accessoryViewController setCanShowOverlayContent:1];

  [(HUCameraController *)self displayCurrentTimeAndDate];
  playbackEngine7 = [(HUCameraController *)self playbackEngine];
  if ([playbackEngine7 timeControlStatus] == 2)
  {
    hu_playbackControlsAreVisible = [(HUCameraController *)self hu_playbackControlsAreVisible];

    if (hu_playbackControlsAreVisible)
    {
      [(HUCameraController *)self updateMicrophoneControlVisibility];
    }
  }

  else
  {
  }

  timelapseController2 = [(HUCameraController *)self timelapseController];
  [timelapseController2 hideAllViews];

LABEL_23:
  diagnosticsController = [(HUCameraController *)self diagnosticsController];

  if (diagnosticsController)
  {
    diagnosticsController2 = [(HUCameraController *)self diagnosticsController];
    playbackEngine8 = [(HUCameraController *)self playbackEngine];
    [diagnosticsController2 updateWithPlaybackEngine:playbackEngine8];
  }
}

- (void)updateCameraPlayerForEventPlaybackPosition:(id)position
{
  positionCopy = position;
  [(HUCameraController *)self cancelLiveTimer];
  portraitMicrophoneControl = [(HUCameraController *)self portraitMicrophoneControl];
  [portraitMicrophoneControl setAlpha:0.0];

  landscapeMicrophoneControl = [(HUCameraController *)self landscapeMicrophoneControl];
  [landscapeMicrophoneControl setAlpha:0.0];

  clipPlaybackDate = [positionCopy clipPlaybackDate];

  if (clipPlaybackDate)
  {
    dateDisplayController = [(HUCameraController *)self dateDisplayController];
    [dateDisplayController updateDisplayDateWithDate:clipPlaybackDate forType:0];
  }

  else
  {
    dateDisplayController = HFLogForCategory();
    if (os_log_type_enabled(dateDisplayController, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_20CEB6000, dateDisplayController, OS_LOG_TYPE_ERROR, "Missing date for current position. Unable to update time/date labels.", v9, 2u);
    }
  }
}

- (void)playbackEngine:(id)engine didUpdateLiveCameraSource:(id)source
{
  v9 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  if ([(HUCameraController *)self applicationIsActive])
  {
    [(HUCameraController *)self updateLivePreviewAspectRatio];
  }

  else
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = sourceCopy;
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Application is not active. Bypassing live camera source updates for sourc:%@.", &v7, 0xCu);
    }
  }
}

- (void)playbackEngine:(id)engine didUpdateTimeControlStatus:(unint64_t)status
{
  v21 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  launchEvent = [(HUCameraController *)self launchEvent];

  if (status == 2 && launchEvent)
  {
    playerConfiguration = [(HUCameraController *)self playerConfiguration];
    startingPlaybackDate = [playerConfiguration startingPlaybackDate];

    v10 = HFLogForCategory();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (startingPlaybackDate)
    {
      if (v11)
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "Send Clip playback launch event after time control update.", &v19, 2u);
      }

      currentClip = [engineCopy currentClip];
      launchEvent2 = [(HUCameraController *)self launchEvent];
      [launchEvent2 setCameraClip:currentClip];

      launchEvent3 = [(HUCameraController *)self launchEvent];
      [launchEvent3 launchedRecordingWithError:0];
    }

    else
    {
      if (v11)
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "Send Live Stream launch event after time control update.", &v19, 2u);
      }

      launchEvent3 = [(HUCameraController *)self launchEvent];
      [launchEvent3 launchedStreamWithError:0];
    }

    [(HUCameraController *)self setLaunchEvent:0];
  }

  else if (status - 1 > 1)
  {
LABEL_17:
    footerViewController = [(HUCameraController *)self footerViewController];
    liveButton = [footerViewController liveButton];
    [liveButton setHidden:status != 2];

    [(HUCameraController *)self updateBlurWithPlaybackEngine:engineCopy];
    [(HUCameraController *)self updateIdleTimer];
    [(HUCameraController *)self updateIndicatorColor];
    [(HUCameraController *)self updateMicrophoneControls];
    [(HUCameraController *)self updateVolumeControlVisibility];
    if ([engineCopy isLiveStreaming])
    {
      [(HUCameraController *)self displayCurrentTimeAndDate];
      [(HUCameraController *)self startLiveTimer];
    }

    else
    {
      [(HUCameraController *)self cancelLiveTimer];
    }

    goto LABEL_20;
  }

  timelapseController = [(HUCameraController *)self timelapseController];
  [timelapseController hideAllViews];

  if (![(HUCameraController *)self displayingDetailsViewController])
  {
    goto LABEL_17;
  }

  v16 = HFLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "%@ Preventing timeControlStatus update while displaying settings", &v19, 0xCu);
  }

LABEL_20:
}

- (void)playbackEngine:(id)engine didUpdatePlaybackError:(id)error
{
  engineCopy = engine;
  errorCopy = error;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HUCameraController_playbackEngine_didUpdatePlaybackError___block_invoke;
  block[3] = &unk_277DB8810;
  block[4] = self;
  v11 = engineCopy;
  v12 = errorCopy;
  v8 = errorCopy;
  v9 = engineCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
  [(HUCameraController *)self _showPictureInPicturePlaybackErrorIfNeeded];
}

uint64_t __60__HUCameraController_playbackEngine_didUpdatePlaybackError___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) launchEvent];

  if (v2)
  {
    if ([*(a1 + 40) engineMode])
    {
      if ([*(a1 + 40) engineMode] != 1)
      {
LABEL_11:
        [*(a1 + 32) setLaunchEvent:0];
        goto LABEL_12;
      }

      v3 = HFLogForCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 48);
        v12 = 138412290;
        v13 = v4;
        _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Send Clip playback failure launch event for error:%@", &v12, 0xCu);
      }

      v5 = [*(a1 + 40) currentClip];
      v6 = [*(a1 + 32) launchEvent];
      [v6 setCameraClip:v5];

      v7 = [*(a1 + 32) launchEvent];
      [v7 launchedRecordingWithError:*(a1 + 48)];
    }

    else
    {
      v8 = HFLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 48);
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "Send stream failure launch event for error:%@", &v12, 0xCu);
      }

      v7 = [*(a1 + 32) launchEvent];
      [v7 launchedStreamWithError:*(a1 + 48)];
    }

    goto LABEL_11;
  }

LABEL_12:
  v10 = [*(a1 + 32) cameraStatusView];
  [v10 updateStatusForPlaybackEngine:*(a1 + 40)];

  [*(a1 + 32) updateIndicatorColor];
  return [*(a1 + 32) updateBlurWithPlaybackEngine:*(a1 + 40)];
}

- (void)playbackEngine:(id)engine didUpdateTimelineState:(unint64_t)state
{
  engineCopy = engine;
  if (state == 4 && ![engineCopy timeControlStatus])
  {
    [(HUCameraController *)self updateCanShowOverlayState];
  }

  else
  {
    accessoryViewController = [(HUCameraController *)self accessoryViewController];
    [accessoryViewController setCanShowOverlayContent:0];
  }

  [(HUCameraController *)self updateBlurWithPlaybackEngine:engineCopy];
}

- (void)playbackEngine:(id)engine didUpdateEventCache:(id)cache
{
  removedIdentifiers = [cache removedIdentifiers];
  if ([removedIdentifiers count])
  {
    hasRecordedClips = [(HUCameraController *)self hasRecordedClips];

    if (!hasRecordedClips)
    {
      [(HUCameraController *)self removePlaybackHistoryUI];
      [(HUCameraController *)self dismissEditInterface];
      livePosition = [MEMORY[0x277D144D0] livePosition];
      playbackEngine = [(HUCameraController *)self playbackEngine];
      [playbackEngine setPlaybackPosition:livePosition];

      return;
    }
  }

  else
  {
  }

  [(HUCameraController *)self _updateRecordedClipInterfaceAvailabilityWithAnimation:1];
}

- (void)playbackEngine:(id)engine didUpdateMicrophoneEnabled:(BOOL)enabled
{
  v8 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = [engineCopy isMicrophoneEnabled];
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Playback engine did update microphone enabled:%{BOOL}d.", v7, 8u);
  }

  [(HUCameraController *)self updateMicrophoneAndSpeakerStatus];
}

- (void)pauseEngineIfNeeded
{
  playbackEngine = [(HUCameraController *)self playbackEngine];
  if ([playbackEngine engineMode])
  {
  }

  else
  {
    playbackEngine2 = [(HUCameraController *)self playbackEngine];
    isMicrophoneEnabled = [playbackEngine2 isMicrophoneEnabled];

    if (isMicrophoneEnabled)
    {
      [(HUCameraController *)self toggleMicrophoneState];
    }
  }

  playbackEngine3 = [(HUCameraController *)self playbackEngine];
  [playbackEngine3 pause];
}

- (void)updateBlurWithPlaybackEngine:(id)engine
{
  engineCopy = engine;
  blurViewController = [(HUCameraController *)self blurViewController];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__HUCameraController_updateBlurWithPlaybackEngine___block_invoke;
  v6[3] = &unk_277DB8C28;
  v6[4] = self;
  [blurViewController updateBlurWithPlaybackEngine:engineCopy completionHandler:v6];
}

void __51__HUCameraController_updateBlurWithPlaybackEngine___block_invoke(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) behavior];
  v5 = [v4 behaviorContext];
  v6 = [v5 isZoomingEnabled];

  if (v6 == a2)
  {
    v8 = [*(a1 + 32) behavior];
    v7 = [v8 behaviorContext];
    [v7 setZoomingEnabled:a2 ^ 1u];
  }
}

- (double)currentScrubberResolutionForBehavior:(id)behavior
{
  clipScrubberViewController = [(HUCameraController *)self clipScrubberViewController];
  [clipScrubberViewController currentScrubberResolution];
  v5 = v4;

  return v5;
}

- (void)playbackControlsDidToggleMuted:(BOOL)muted
{
  mutedCopy = muted;
  v16 = *MEMORY[0x277D85DE8];
  cameraProfile = [(HUCameraController *)self cameraProfile];
  if (([cameraProfile hf_supportsBidirectionalAudio] & 1) == 0)
  {

    goto LABEL_5;
  }

  playbackEngine = [(HUCameraController *)self playbackEngine];
  isMicrophoneEnabled = [playbackEngine isMicrophoneEnabled];

  if ((isMicrophoneEnabled & 1) == 0)
  {
LABEL_5:
    playbackEngine2 = [(HUCameraController *)self playbackEngine];
    [playbackEngine2 setPrefersAudioEnabled:!mutedCopy];
  }

  if ([MEMORY[0x277D14CE8] isAMac])
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      playbackEngine3 = [(HUCameraController *)self playbackEngine];
      [playbackEngine3 streamAudioVolume];
      v14 = 134217984;
      v15 = v11;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Forcing volume update to %.02f.", &v14, 0xCu);
    }

    playbackEngine4 = [(HUCameraController *)self playbackEngine];
    playbackEngine5 = [(HUCameraController *)self playbackEngine];
    [playbackEngine5 streamAudioVolume];
    [playbackEngine4 setStreamAudioVolume:?];
  }
}

- (void)playbackControlsDidUpdateVisibilityOfLoadingIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  accessoryViewController = [(HUCameraController *)self accessoryViewController];
  [accessoryViewController setShouldShowLoadingIndicatorForClipPlayback:indicatorCopy];
}

- (void)pictureInPictureDidToggleMicrophone
{
  v13 = *MEMORY[0x277D85DE8];
  playbackEngine = [(HUCameraController *)self playbackEngine];
  isMicrophoneEnabled = [playbackEngine isMicrophoneEnabled];
  playbackEngine2 = [(HUCameraController *)self playbackEngine];
  [playbackEngine2 setMicrophoneEnabled:isMicrophoneEnabled ^ 1u];

  playbackEngine3 = [(HUCameraController *)self playbackEngine];
  isMicrophoneEnabled2 = [playbackEngine3 isMicrophoneEnabled];
  behavior = [(HUCameraController *)self behavior];
  behaviorContext = [behavior behaviorContext];
  [behaviorContext setMicrophoneEnabled:isMicrophoneEnabled2];

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    playbackEngine4 = [(HUCameraController *)self playbackEngine];
    v12[0] = 67109120;
    v12[1] = [playbackEngine4 isMicrophoneEnabled];
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "Toggled microphone state on: %{BOOL}d.", v12, 8u);
  }
}

- (void)playbackControlsDidChangePlayerVolume:(float)volume
{
  playbackEngine = [(HUCameraController *)self playbackEngine];
  *&v4 = volume;
  [playbackEngine setStreamAudioVolume:v4];
}

- (id)finishPresentation:(id)presentation animated:(BOOL)animated
{
  animatedCopy = animated;
  presentationCopy = presentation;
  if ([presentationCopy conformsToProtocol:&unk_2824C3AE0])
  {
    v7 = presentationCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  requiresPresentingViewControllerDismissal = [v8 requiresPresentingViewControllerDismissal];

  if (requiresPresentingViewControllerDismissal)
  {
    playerViewController = [(HUCameraController *)self playerViewController];
    presentingViewController = [playerViewController presentingViewController];

    if (presentingViewController)
    {
      playerViewController2 = [(HUCameraController *)self playerViewController];
      presentingViewController2 = [playerViewController2 presentingViewController];
      v14 = [presentingViewController2 hu_dismissViewControllerAnimated:animatedCopy];

      goto LABEL_16;
    }
  }

  [(HUCameraController *)self setDisplayingDetailsViewController:0];
  liveContentViewController = [(HUCameraController *)self liveContentViewController];
  view = [liveContentViewController view];
  [view setHidden:0];

  playerViewController3 = [(HUCameraController *)self playerViewController];
  [playerViewController3 setAllowsPictureInPicturePlayback:1];

  if ([(HUCameraController *)self hasRecordedClips])
  {
    footerViewController = [(HUCameraController *)self footerViewController];
    view2 = [footerViewController view];
    [view2 setHidden:1];
  }

  else
  {
    [(HUCameraController *)self removePlaybackHistoryUI];
    v20 = HFLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "Restarting the live stream after finished presentation.", v25, 2u);
    }

    footerViewController = [MEMORY[0x277D144D0] livePosition];
    view2 = [(HUCameraController *)self playbackEngine];
    [view2 setPlaybackPosition:footerViewController];
  }

  playbackEngine = [(HUCameraController *)self playbackEngine];
  if (![playbackEngine engineMode])
  {
    playbackEngine2 = [(HUCameraController *)self playbackEngine];
    timeControlStatus = [playbackEngine2 timeControlStatus];

    if (timeControlStatus)
    {
      goto LABEL_15;
    }

    playbackEngine = [(HUCameraController *)self playbackEngine];
    [playbackEngine play];
  }

LABEL_15:
  playerViewController2 = [(HUCameraController *)self playerViewController];
  v14 = [playerViewController2 hu_dismissViewControllerAnimated:animatedCopy];
LABEL_16:

  return v14;
}

- (void)itemManager:(id)manager didUpdateResultsForSourceItem:(id)item
{
  itemCopy = item;
  cameraItem = [(HUCameraController *)self cameraItem];
  v7 = [itemCopy isEqual:cameraItem];

  if (v7)
  {

    [(HUCameraController *)self updateCameraStatus];
  }
}

- (void)toggleDemoModeLiveStreamVideo:(BOOL)video
{
  v4 = !video;
  demoPlayerView = [(HUCameraController *)self demoPlayerView];
  [demoPlayerView setHidden:v4];

  demoModeQueuePlayer = [(HUCameraController *)self demoModeQueuePlayer];
  v7 = demoModeQueuePlayer;
  if (v4)
  {
    [demoModeQueuePlayer pause];
  }

  else
  {
    [demoModeQueuePlayer play];
  }
}

- (void)displayCurrentTimeAndDate
{
  date = [MEMORY[0x277CBEAA8] date];
  dateDisplayController = [(HUCameraController *)self dateDisplayController];
  [dateDisplayController updateDisplayDateWithDate:date forType:1];
}

- (void)startLiveTimer
{
  liveTimer = [(HUCameraController *)self liveTimer];

  if (!liveTimer)
  {
    objc_initWeak(&location, self);
    v4 = MEMORY[0x277CBEBB8];
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __36__HUCameraController_startLiveTimer__block_invoke;
    v9 = &unk_277DBC5E0;
    objc_copyWeak(&v10, &location);
    v5 = [v4 scheduledTimerWithTimeInterval:1 repeats:&v6 block:1.0];
    [(HUCameraController *)self setLiveTimer:v5, v6, v7, v8, v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __36__HUCameraController_startLiveTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained displayCurrentTimeAndDate];
}

- (void)cancelLiveTimer
{
  liveTimer = [(HUCameraController *)self liveTimer];

  if (liveTimer)
  {
    liveTimer2 = [(HUCameraController *)self liveTimer];
    [liveTimer2 invalidate];

    [(HUCameraController *)self setLiveTimer:0];
  }
}

- (HUCameraMicrophoneControl)portraitMicrophoneControl
{
  portraitMicrophoneControl = self->_portraitMicrophoneControl;
  if (!portraitMicrophoneControl)
  {
    v4 = [[HUCameraMicrophoneControl alloc] initWithFrame:0.0, 0.0, 90.0, 44.0];
    [(HUCameraMicrophoneControl *)v4 setAlpha:0.0];
    [(HUCameraMicrophoneControl *)v4 addTarget:self action:sel_toggleMicrophoneState forEvents:64];
    v5 = self->_portraitMicrophoneControl;
    self->_portraitMicrophoneControl = v4;

    portraitMicrophoneControl = self->_portraitMicrophoneControl;
  }

  return portraitMicrophoneControl;
}

- (HUCameraMicrophoneControl)landscapeMicrophoneControl
{
  landscapeMicrophoneControl = self->_landscapeMicrophoneControl;
  if (!landscapeMicrophoneControl)
  {
    v4 = [[HUCameraMicrophoneControl alloc] initWithFrame:0.0, 0.0, 90.0, 44.0];
    [(HUCameraMicrophoneControl *)v4 setAlpha:0.0];
    [(HUCameraMicrophoneControl *)v4 addTarget:self action:sel_toggleMicrophoneState forEvents:64];
    v5 = self->_landscapeMicrophoneControl;
    self->_landscapeMicrophoneControl = v4;

    landscapeMicrophoneControl = self->_landscapeMicrophoneControl;
  }

  return landscapeMicrophoneControl;
}

- (UILabel)dayLabel
{
  dayLabel = self->_dayLabel;
  if (!dayLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    v5 = [MEMORY[0x277D74300] monospacedDigitSystemFontOfSize:18.0 weight:*MEMORY[0x277D74420]];
    [(UILabel *)v4 setFont:v5];

    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(UILabel *)v4 setTextColor:systemWhiteColor];

    [(UILabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4 setTextAlignment:1];
    [(UILabel *)v4 setUserInteractionEnabled:0];
    v7 = self->_dayLabel;
    self->_dayLabel = v4;

    dayLabel = self->_dayLabel;
  }

  return dayLabel;
}

- (UILabel)timeLabel
{
  timeLabel = self->_timeLabel;
  if (!timeLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    v5 = [MEMORY[0x277D74300] monospacedDigitSystemFontOfSize:18.0 weight:*MEMORY[0x277D74420]];
    [(UILabel *)v4 setFont:v5];

    [(UILabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(UILabel *)v4 setTextColor:systemWhiteColor];

    [(UILabel *)v4 setUserInteractionEnabled:0];
    [(UILabel *)v4 setTextAlignment:1];
    v7 = self->_timeLabel;
    self->_timeLabel = v4;

    timeLabel = self->_timeLabel;
  }

  return timeLabel;
}

- (HUCameraDateDisplayController)dateDisplayController
{
  dateDisplayController = self->_dateDisplayController;
  if (!dateDisplayController)
  {
    v4 = [HUCameraDateDisplayController alloc];
    dayLabel = [(HUCameraController *)self dayLabel];
    timeLabel = [(HUCameraController *)self timeLabel];
    v7 = [(HUCameraDateDisplayController *)v4 initWithDayOfWeekLabel:dayLabel timeLabel:timeLabel];

    v8 = self->_dateDisplayController;
    self->_dateDisplayController = v7;

    dateDisplayController = self->_dateDisplayController;
  }

  return dateDisplayController;
}

- (UIView)volumeControlView
{
  playerViewController = [(HUCameraController *)self playerViewController];
  customControlsView = [playerViewController customControlsView];
  volumeControlsAreaLayoutGuide = [customControlsView volumeControlsAreaLayoutGuide];
  owningView = [volumeControlsAreaLayoutGuide owningView];

  return owningView;
}

- (UIView)loadingOverlayView
{
  loadingOverlayView = self->_loadingOverlayView;
  if (!loadingOverlayView)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v5 setAutoresizingMask:18];
    systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
    [(UIView *)v5 setBackgroundColor:systemBlackColor];

    [(UIView *)v5 setAlpha:0.0];
    v7 = self->_loadingOverlayView;
    self->_loadingOverlayView = v5;

    loadingOverlayView = self->_loadingOverlayView;
  }

  return loadingOverlayView;
}

- (HUCameraStatusOverlayView)cameraStatusView
{
  cameraStatusView = self->_cameraStatusView;
  if (!cameraStatusView)
  {
    v4 = objc_alloc_init(HUCameraStatusOverlayView);
    cameraProfile = [(HUCameraController *)self cameraProfile];
    accessory = [cameraProfile accessory];
    name = [accessory name];
    [(HUCameraStatusOverlayView *)v4 setStatusString:name];

    cameraProfile2 = [(HUCameraController *)self cameraProfile];
    userSettings = [cameraProfile2 userSettings];
    hu_indicatorColorForCurrentAccessMode = [userSettings hu_indicatorColorForCurrentAccessMode];
    [(HUCameraStatusOverlayView *)v4 setStatusColor:hu_indicatorColorForCurrentAccessMode];

    cameraProfile3 = [(HUCameraController *)self cameraProfile];
    userSettings2 = [cameraProfile3 userSettings];
    hu_indicatorImageNameForCurrentAccessMode = [userSettings2 hu_indicatorImageNameForCurrentAccessMode];
    [(HUCameraStatusOverlayView *)v4 setStatusImageName:hu_indicatorImageNameForCurrentAccessMode];

    [(HUCameraStatusOverlayView *)v4 setIsDisplayingForSingleCamera:[(HUCameraController *)self homeHasMultipleCameraProfiles]^ 1];
    v14 = self->_cameraStatusView;
    self->_cameraStatusView = v4;

    cameraStatusView = self->_cameraStatusView;
  }

  return cameraStatusView;
}

- (void)handleSceneDidActivate:(id)activate
{
  activateCopy = activate;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Camera player - Scene did become active.", buf, 2u);
  }

  object = [activateCopy object];

  view = [(AVPlayerViewController *)self->_playerViewController view];
  window = [view window];
  windowScene = [window windowScene];

  if ([object isEqual:windowScene])
  {
    [(HUCameraController *)self setApplicationIsActive:1];
    playbackEngine = [(HUCameraController *)self playbackEngine];
    isPictureInPictureModeActive = [playbackEngine isPictureInPictureModeActive];

    if (isPictureInPictureModeActive)
    {
      playerViewController = [(HUCameraController *)self playerViewController];
      [playerViewController setAllowsPictureInPicturePlayback:0];

      playbackEngine2 = [(HUCameraController *)self playbackEngine];
      [playbackEngine2 setPictureInPictureModeActive:0];
    }

    shouldResumePlaying = [(HUCameraController *)self shouldResumePlaying];
    v15 = HFLogForCategory();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (shouldResumePlaying)
    {
      if (v16)
      {
        *v20 = 0;
        _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "Camera Player scene did become active. Resuming clip playback because shouldResumePlaying is true", v20, 2u);
      }

      [(HUCameraController *)self setShouldResumePlaying:0];
      playbackEngine3 = [(HUCameraController *)self playbackEngine];
      [playbackEngine3 play];
    }

    else
    {
      if (v16)
      {
        *v19 = 0;
        _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "Camera Player scene did become active. Pausing clip playback because shouldResumePlaying is false", v19, 2u);
      }

      playbackEngine3 = [(HUCameraController *)self playbackEngine];
      [playbackEngine3 pause];
    }

    if ([(HUCameraController *)self pipState]!= 1)
    {
      [(HUCameraController *)self enableAudioSession];
    }
  }

  else
  {
    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "Camera player - Active scene mismatch, returning early.", v21, 2u);
    }
  }
}

- (void)handleSceneWillDeactivate:(id)deactivate
{
  v20 = *MEMORY[0x277D85DE8];
  deactivateCopy = deactivate;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    playbackEngine = [(HUCameraController *)self playbackEngine];
    v18 = 134217984;
    timeControlStatus = [playbackEngine timeControlStatus];
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Camera player - Scene will deactivate, time control status %lu", &v18, 0xCu);
  }

  object = [deactivateCopy object];

  view = [(AVPlayerViewController *)self->_playerViewController view];
  window = [view window];
  windowScene = [window windowScene];

  if ([object isEqual:windowScene])
  {
    [(HUCameraController *)self _submitTimelinePinchToZoomEvent];
    [(HUCameraController *)self setApplicationIsActive:0];
    playbackEngine2 = [(HUCameraController *)self playbackEngine];
    if ([playbackEngine2 timeControlStatus] == 2)
    {
    }

    else
    {
      playbackEngine3 = [(HUCameraController *)self playbackEngine];
      timeControlStatus2 = [playbackEngine3 timeControlStatus];

      if (timeControlStatus2 != 1)
      {
        v17 = HFLogForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "Camera Player scene deactivate, not pausing playback.", &v18, 2u);
        }

        goto LABEL_18;
      }
    }

    v15 = HFLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "Camera Player scene deactivate, pausing playback.", &v18, 2u);
    }

    if (([MEMORY[0x277D14CE8] isAMac] & 1) != 0 || objc_msgSend(MEMORY[0x277D14CE8], "isAnIPhone"))
    {
      playbackEngine4 = [(HUCameraController *)self playbackEngine];
      [playbackEngine4 pause];

      [(HUCameraController *)self setShouldResumePlaying:1];
    }

LABEL_18:
    if ([(HUCameraController *)self pipState]!= 1)
    {
      [(HUCameraController *)self disableAudioSession];
    }

    goto LABEL_20;
  }

  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "Camera player - Non-active scene mismatch, returning early.", &v18, 2u);
  }

LABEL_20:
}

- (void)updateIdleTimer
{
  v8 = *MEMORY[0x277D85DE8];
  playbackEngine = [(HUCameraController *)self playbackEngine];
  timeControlStatus = [playbackEngine timeControlStatus];

  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = timeControlStatus == 2;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Should disable idle timer:%{BOOL}d", v7, 8u);
  }

  v6 = +[HUApplicationManager sharedInstance];
  [v6 setIdleTimerDisabled:timeControlStatus == 2 forRequester:self];
}

- (void)networkDidBecomeUnavailable
{
  cameraItem = [(HUCameraController *)self cameraItem];
  accessory = [cameraItem accessory];
  if ([accessory isReachable])
  {
  }

  else
  {
    isInAirplaneMode = [MEMORY[0x277D14CE8] isInAirplaneMode];

    if (isInAirplaneMode)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49__HUCameraController_networkDidBecomeUnavailable__block_invoke;
      block[3] = &unk_277DB8488;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

- (void)_submitTimelinePinchToZoomEvent
{
  v12[2] = *MEMORY[0x277D85DE8];
  if ([(HUCameraController *)self recordedClipInterfaceAvailable])
  {
    v11[0] = *MEMORY[0x277D134E0];
    v3 = MEMORY[0x277CCABB0];
    clipScrubberViewController = [(HUCameraController *)self clipScrubberViewController];
    v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(clipScrubberViewController, "pinchGestureCount")}];
    v12[0] = v5;
    v11[1] = *MEMORY[0x277D134D8];
    v6 = MEMORY[0x277CCABB0];
    clipScrubberViewController2 = [(HUCameraController *)self clipScrubberViewController];
    v8 = [v6 numberWithInt:{objc_msgSend(clipScrubberViewController2, "pinchGestureCount") != 0}];
    v12[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

    [MEMORY[0x277D143D8] sendEvent:57 withData:v9];
    clipScrubberViewController3 = [(HUCameraController *)self clipScrubberViewController];
    [clipScrubberViewController3 resetPinchGestureCount];
  }
}

- (void)updateUnanalyzedCameraClipTip
{
  if ([(HUCameraController *)self foundCameraClipWithInsufficientAnalysis])
  {
    clipScrubberViewController = [(HUCameraController *)self clipScrubberViewController];
    view = [clipScrubberViewController view];
    [view alpha];
    v6 = v5 == 1.0;
  }

  else
  {
    v6 = 0;
  }

  [(HUCameraController *)self changeUnanalyzedCameraClipTipShouldDisplayTo:v6];
}

- (void)updateLivePreviewAspectRatio
{
  playbackEngine = [(HUCameraController *)self playbackEngine];
  liveCameraSource = [playbackEngine liveCameraSource];
  [liveCameraSource aspectRatio];
  if (v5 == 0.0)
  {
    v6 = 1.77777778;
  }

  else
  {
    v6 = v5;
  }

  behavior = [(HUCameraController *)self behavior];
  behaviorContext = [behavior behaviorContext];
  [behaviorContext setLivePreviewAspectRatio:{v6, 1.0}];
}

- (void)updatePlaceholderContent
{
  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    placeholderContentViewController = [(HUCameraController *)self placeholderContentViewController];
    [placeholderContentViewController setCameraPlayerHasContentToShow:0];

    placeholderContentViewController2 = [(HUCameraController *)self placeholderContentViewController];
    view = [placeholderContentViewController2 view];
    [view setHidden:1];
  }

  else
  {
    placeholderContentViewController2 = [(HUCameraController *)self playerViewController];
    isReadyForDisplay = [placeholderContentViewController2 isReadyForDisplay];
    view = [(HUCameraController *)self placeholderContentViewController];
    [view setCameraPlayerHasContentToShow:isReadyForDisplay];
  }
}

- (void)_displayAirplaneModeAlert
{
  airplaneAlertController = [(HUCameraController *)self airplaneAlertController];

  if (!airplaneAlertController)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Displaying airplane alert.", buf, 2u);
    }

    v5 = HULocalizedWiFiString(@"HUCameraErrorAlertAirplaneModeTitle");
    v6 = _HULocalizedStringWithDefaultValue(@"HUCameraErrorAlertAirplaneModeMessage", @"HUCameraErrorAlertAirplaneModeMessage", 1);
    v7 = [MEMORY[0x277D75110] alertControllerWithTitle:v5 message:v6 preferredStyle:1];
    [(HUCameraController *)self setAirplaneAlertController:v7];
    v8 = _HULocalizedStringWithDefaultValue(@"HUCameraErrorAlertActionSettings", @"HUCameraErrorAlertActionSettings", 1);

    objc_initWeak(buf, self);
    v9 = MEMORY[0x277D750F8];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __47__HUCameraController__displayAirplaneModeAlert__block_invoke;
    v20[3] = &unk_277DBEEF0;
    objc_copyWeak(&v21, buf);
    v10 = [v9 actionWithTitle:v8 style:0 handler:v20];
    [v7 addAction:v10];
    v11 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);

    v12 = MEMORY[0x277D750F8];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __47__HUCameraController__displayAirplaneModeAlert__block_invoke_2;
    v18 = &unk_277DBEEF0;
    objc_copyWeak(&v19, buf);
    v13 = [v12 actionWithTitle:v11 style:0 handler:&v15];
    [v7 addAction:{v13, v15, v16, v17, v18}];
    playerViewController = [(HUCameraController *)self playerViewController];
    [playerViewController presentViewController:v7 animated:1 completion:0];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }
}

void __47__HUCameraController__displayAirplaneModeAlert__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAirplaneAlertController:0];
  v1 = [MEMORY[0x277CBEBC0] hf_wifiSettingsURL];
  v2 = [MEMORY[0x277D148E8] sharedInstance];
  v3 = [v2 openURL:v1];
}

void __47__HUCameraController__displayAirplaneModeAlert__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAirplaneAlertController:0];
}

- (BOOL)shouldAutoPlayOnViewAppearance
{
  playbackEngine = [(HUCameraController *)self playbackEngine];
  playbackPosition = [playbackEngine playbackPosition];
  livePosition = [MEMORY[0x277D144D0] livePosition];
  v6 = [playbackPosition isEqual:livePosition];

  result = 1;
  if ((v6 & 1) == 0)
  {
    playerConfiguration = [(HUCameraController *)self playerConfiguration];
    startingPlaybackDate = [playerConfiguration startingPlaybackDate];

    if (!startingPlaybackDate)
    {
      return 0;
    }

    playbackEngine2 = [(HUCameraController *)self playbackEngine];
    currentClip = [playbackEngine2 currentClip];

    if (!currentClip)
    {
      return 0;
    }

    playbackEngine3 = [(HUCameraController *)self playbackEngine];
    currentClip2 = [playbackEngine3 currentClip];
    hf_dateInterval = [currentClip2 hf_dateInterval];
    playerConfiguration2 = [(HUCameraController *)self playerConfiguration];
    startingPlaybackDate2 = [playerConfiguration2 startingPlaybackDate];
    v17 = [hf_dateInterval hf_searchResultForDate:startingPlaybackDate2];

    if (v17 != 1)
    {
      return 0;
    }
  }

  return result;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v30 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (HUCameraControllerReadyForDisplayContext == context)
  {
    objectCopy = object;
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = pathCopy;
      _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "observed value :%@", buf, 0xCu);
    }

    volumeControlView = [(HUCameraController *)self volumeControlView];
    v15 = [objectCopy isEqual:volumeControlView];

    if (v15)
    {
      [(HUCameraController *)self updateMicrophoneControls];
    }

    else if (([pathCopy isEqual:@"videoBounds"] & 1) != 0 || objc_msgSend(pathCopy, "isEqual:", @"bounds"))
    {
      playerViewController = [(HUCameraController *)self playerViewController];
      [playerViewController videoBounds];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      if (v22 > 1.0 && v24 > 1.0)
      {
        timelapseController = [(HUCameraController *)self timelapseController];
        [timelapseController updateVideoBounds:{v18, v20, v22, v24}];

        mEMORY[0x277D14498] = [MEMORY[0x277D14498] sharedManager];
        [mEMORY[0x277D14498] setVideoSize:{v22, v24}];
      }
    }

    else
    {
      [(HUCameraController *)self updatePlaceholderContent];
    }
  }

  else
  {
    v27.receiver = self;
    v27.super_class = HUCameraController;
    objectCopy2 = object;
    [(HUCameraController *)&v27 observeValueForKeyPath:pathCopy ofObject:objectCopy2 change:change context:context];
  }
}

- (void)_showPictureInPicturePlaybackErrorIfNeeded
{
  playbackEngine = [(HUCameraController *)self playbackEngine];
  isPictureInPictureModeActive = [playbackEngine isPictureInPictureModeActive];

  if (isPictureInPictureModeActive)
  {
    cameraProfile = [(HUCameraController *)self cameraProfile];
    if ([cameraProfile hf_shouldDisableLiveStream])
    {
      v6 = 1;
    }

    else
    {
      cameraProfile2 = [(HUCameraController *)self cameraProfile];
      hf_cameraManager = [cameraProfile2 hf_cameraManager];
      cachedStreamError = [hf_cameraManager cachedStreamError];
      v6 = cachedStreamError != 0;
    }

    cameraProfile3 = [(HUCameraController *)self cameraProfile];
    hf_supportsBidirectionalAudio = [cameraProfile3 hf_supportsBidirectionalAudio];

    if (hf_supportsBidirectionalAudio)
    {
      behavior = [(HUCameraController *)self behavior];
      behaviorContext = [behavior behaviorContext];
      [behaviorContext setHasMicrophone:!v6];

      playbackEngine2 = [(HUCameraController *)self playbackEngine];
      LODWORD(behaviorContext) = [playbackEngine2 isMicrophoneEnabled];

      behavior2 = [(HUCameraController *)self behavior];
      behaviorContext2 = [behavior2 behaviorContext];
      [behaviorContext2 setMicrophoneEnabled:!v6 & behaviorContext];
    }

    v20 = [HUCameraErrorContent errorWithTitle:0 description:0];
    liveContentViewController = [(HUCameraController *)self liveContentViewController];
    cameraView = [liveContentViewController cameraView];
    if (v6)
    {
      v19 = v20;
    }

    else
    {
      v19 = 0;
    }

    [cameraView setErrorContent:v19];
  }
}

- (void)cleanUpIdleTimerState
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Re-enabling the idle timer for camera player dismissal.", v5, 2u);
  }

  v4 = +[HUApplicationManager sharedInstance];
  [v4 setIdleTimerDisabled:0 forRequester:self];
}

- (void)cleanUpConstraintSets
{
  [(HUCameraController *)self setCameraStatusViewTopConstraint:0];
  [(HUCameraController *)self setCameraStatusViewConstraintSet:0];
  [(HUCameraController *)self setScrubberConstraintSet:0];
  [(HUCameraController *)self setPortraitMicrophoneConstraintSet:0];
  [(HUCameraController *)self setLandscapeMicrophoneConstraintSet:0];

  [(HUCameraController *)self setCalendarConstraintSet:0];
}

- (void)enableAudioSession
{
  audioSessionQueue = [(HUCameraController *)self audioSessionQueue];
  dispatch_async(audioSessionQueue, &__block_literal_global_268_0);
}

void __40__HUCameraController_enableAudioSession__block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CB83F8] sharedInstance];
  v4 = 0;
  [v0 setActive:1 error:&v4];
  v1 = v4;

  v2 = HFLogForCategory();
  v3 = v2;
  if (v1)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v6 = v1;
      _os_log_error_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_ERROR, "Error enabling audio session: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Enabled audio session", buf, 2u);
  }
}

- (void)disableAudioSession
{
  audioSessionQueue = [(HUCameraController *)self audioSessionQueue];
  dispatch_async(audioSessionQueue, &__block_literal_global_270);
}

void __41__HUCameraController_disableAudioSession__block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CB83F8] sharedInstance];
  v4 = 0;
  [v0 setActive:0 withOptions:1 error:&v4];
  v1 = v4;

  v2 = HFLogForCategory();
  v3 = v2;
  if (v1)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v6 = v1;
      _os_log_error_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_ERROR, "Error disabling audio session: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Disabled audio session", buf, 2u);
  }
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@ dealloc", buf, 0xCu);
  }

  [(HUCameraController *)self disableAudioSession];
  playerViewController = [(HUCameraController *)self playerViewController];
  [playerViewController setDelegate:0];

  [(HUCameraController *)self cleanUpConstraintSets];
  [(HUCameraController *)self tearDownTipsObserver];
  mEMORY[0x277D14498] = [MEMORY[0x277D14498] sharedManager];
  [mEMORY[0x277D14498] resetForCameraDismissal];

  mEMORY[0x277D144F0] = [MEMORY[0x277D144F0] sharedManager];
  [mEMORY[0x277D144F0] setClipManager:0];

  if ([(HUCameraController *)self isObservingReadyForDisplay])
  {
    playerViewController2 = [(HUCameraController *)self playerViewController];
    [playerViewController2 removeObserver:self forKeyPath:@"readyForDisplay"];

    playerViewController3 = [(HUCameraController *)self playerViewController];
    [playerViewController3 removeObserver:self forKeyPath:@"videoBounds"];

    volumeControlView = [(HUCameraController *)self volumeControlView];
    [volumeControlView removeObserver:self forKeyPath:@"bounds"];

    playerViewController4 = [(HUCameraController *)self playerViewController];
    customControlsView = [playerViewController4 customControlsView];
    [customControlsView removeObserver:self forKeyPath:@"bounds"];
  }

  v12.receiver = self;
  v12.super_class = HUCameraController;
  [(HUCameraController *)&v12 dealloc];
}

- (HUPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->presentationDelegate);

  return WeakRetained;
}

- (HUCameraControllerDelegate)cameraDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraDelegate);

  return WeakRetained;
}

- (AVQueuePlayer)demoModeQueuePlayer
{
  WeakRetained = objc_loadWeakRetained(&self->_demoModeQueuePlayer);

  return WeakRetained;
}

- (UIAlertController)airplaneAlertController
{
  WeakRetained = objc_loadWeakRetained(&self->_airplaneAlertController);

  return WeakRetained;
}

- (UIView)tipView
{
  WeakRetained = objc_loadWeakRetained(&self->_tipView);

  return WeakRetained;
}

@end
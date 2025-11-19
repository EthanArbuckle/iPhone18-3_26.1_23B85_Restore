@interface HUCameraController
- (AVHomeLoadingButtonControlItem)nextControlItem;
- (AVQueuePlayer)demoModeQueuePlayer;
- (BOOL)_shouldAutoPlayOnViewAppearance;
- (BOOL)hasRecordedClips;
- (BOOL)homeHasMultipleCameraProfiles;
- (BOOL)playerViewControllerShouldAutomaticallyDismissAtPictureInPictureStart:(id)a3;
- (BOOL)shouldAutoPlayOnViewAppearance;
- (BOOL)shouldDisableLiveStreamAfterCameraStatusChange;
- (BOOL)shouldDisplayLandscapeMicrophoneInLine;
- (BOOL)shouldDisplayMicrophoneControl;
- (HUCameraController)initWithConfiguration:(id)a3 cameraDelegate:(id)a4;
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
- (double)currentScrubberResolutionForBehavior:(id)a3;
- (double)portraitMicrophoneOverlapOffset;
- (id)cameraPickerMenu;
- (id)cameraProfile;
- (id)finishPresentation:(id)a3 animated:(BOOL)a4;
- (id)home;
- (id)playerViewController:(id)a3 targetViewForDismissalAnimationWithProposedTargetView:(id)a4;
- (id)ppt_clipCollectionView;
- (id)presentInternalViewController:(id)a3;
- (id)presentSettingsViewController;
- (void)_didBeginPlayerViewControllerPresentation;
- (void)_didEndPlayerViewControllerPresentation;
- (void)_displayAirplaneModeAlert;
- (void)_finishDisplayingTimelineForClip:(id)a3;
- (void)_refreshClipCacheAndRefetchForClipUUID:(id)a3;
- (void)_reloadClipsWithUpdate:(BOOL)a3;
- (void)_resetStateAfterPIP;
- (void)_setupPlaybackEngine:(id)a3;
- (void)_showPictureInPicturePlaybackErrorIfNeeded;
- (void)_submitTimelinePinchToZoomEvent;
- (void)_updateRecordedClipInterfaceAvailabilityWithAnimation:(BOOL)a3;
- (void)_updateStateForPlaybackPosition:(id)a3 animated:(BOOL)a4;
- (void)addCameraStatusOverlayAndPicker;
- (void)addFooterConstraints;
- (void)addFooterViewController;
- (void)cancelAnyPendingLaunchEventAnalytics;
- (void)cancelLiveTimer;
- (void)changeUnanalyzedCameraClipTipShouldDisplayTo:(BOOL)a3;
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
- (void)displayPlaybackUIWithUpdate:(BOOL)a3;
- (void)displayTimelineForClipUUID:(id)a3;
- (void)enableAudioSession;
- (void)fetchRequestedClipUsingConfiguration;
- (void)handleSceneDidActivate:(id)a3;
- (void)handleSceneWillDeactivate:(id)a3;
- (void)itemManager:(id)a3 didUpdateResultsForSourceItem:(id)a4;
- (void)loadAccessoryViewControllersOnInit;
- (void)loadAuxilliaryViews;
- (void)loadControlItemsOnInit;
- (void)loadDependentViewControllers;
- (void)loadTimelapsePlayer;
- (void)networkDidBecomeUnavailable;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pauseEngineIfNeeded;
- (void)pictureInPictureDidToggleMicrophone;
- (void)playbackControlsDidChangePlayerVolume:(float)a3;
- (void)playbackControlsDidToggleMuted:(BOOL)a3;
- (void)playbackControlsDidUpdateVisibilityOfLoadingIndicator:(BOOL)a3;
- (void)playbackEngine:(id)a3 didUpdateClipPlayer:(id)a4;
- (void)playbackEngine:(id)a3 didUpdateEventCache:(id)a4;
- (void)playbackEngine:(id)a3 didUpdateLiveCameraSource:(id)a4;
- (void)playbackEngine:(id)a3 didUpdateMicrophoneEnabled:(BOOL)a4;
- (void)playbackEngine:(id)a3 didUpdatePlaybackError:(id)a4;
- (void)playbackEngine:(id)a3 didUpdatePlaybackPosition:(id)a4;
- (void)playbackEngine:(id)a3 didUpdateTimeControlStatus:(unint64_t)a4;
- (void)playbackEngine:(id)a3 didUpdateTimelineState:(unint64_t)a4;
- (void)playerViewController:(id)a3 contentViewWillTransitionToSize:(CGSize)a4 withTransitionCoordinator:(id)a5;
- (void)playerViewController:(id)a3 failedToStartPictureInPictureWithError:(id)a4;
- (void)playerViewController:(id)a3 restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)a4;
- (void)playerViewController:(id)a3 willBeginFullScreenPresentationWithAnimationCoordinator:(id)a4;
- (void)playerViewController:(id)a3 willEndFullScreenPresentationWithAnimationCoordinator:(id)a4;
- (void)playerViewController:(id)a3 willTransitionToVisibilityOfPlaybackControls:(BOOL)a4 withAnimationCoordinator:(id)a5;
- (void)playerViewControllerDidStartPictureInPicture:(id)a3;
- (void)playerViewControllerDidStopPictureInPicture:(id)a3;
- (void)playerViewControllerWillStartPictureInPicture:(id)a3;
- (void)playerViewControllerWillStopPictureInPicture:(id)a3;
- (void)presentNearbyAccessoriesViewController;
- (void)presentTip;
- (void)removePlaybackHistoryUI;
- (void)setEnteringFullScreen:(BOOL)a3;
- (void)setPipState:(unint64_t)a3;
- (void)setViewVisible:(BOOL)a3;
- (void)setupConstraintSets;
- (void)setupTipsObserver;
- (void)showCamera:(id)a3;
- (void)startLiveTimer;
- (void)tearDownTipsObserver;
- (void)toggleDemoModeLiveStreamVideo:(BOOL)a3;
- (void)toggleMicrophoneState;
- (void)updateBlurWithPlaybackEngine:(id)a3;
- (void)updateCalendarContainerVisibility:(BOOL)a3;
- (void)updateCameraPlayerForEventPlaybackPosition:(id)a3;
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
- (void)updateStateForPlaybackPosition:(id)a3 animated:(BOOL)a4;
- (void)updateStateForScrubbingStatus:(BOOL)a3 animated:(BOOL)a4;
- (void)updateUnanalyzedCameraClipTip;
- (void)updateViewConstraints;
- (void)updateVolumeControlVisibility;
@end

@implementation HUCameraController

- (void)setupTipsObserver
{
  v2 = self;
  HUCameraController.setupTipsObserver()();
}

- (void)tearDownTipsObserver
{
  v2 = self;
  HUCameraController.tearDownTipsObserver()();
}

- (void)changeUnanalyzedCameraClipTipShouldDisplayTo:(BOOL)a3
{
  v3 = a3;
  if (qword_27C81A220 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D708);
  __swift_project_value_buffer(v4, qword_27C8381A0);
  swift_beginAccess();
  sub_20D5665C8();
  swift_endAccess();
  if (v5 != v3)
  {
    swift_beginAccess();
    sub_20D5665D8();
    swift_endAccess();
  }
}

- (void)presentTip
{
  v2 = self;
  sub_20CFB5234();
}

- (void)dismissTip
{
  v2 = self;
  sub_20CFB591C();
}

- (HUCameraController)initWithConfiguration:(id)a3 cameraDelegate:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
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
      v60 = v7;
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@ init with config:%@", buf, 0x16u);
    }

    v11 = objc_alloc_init(MEMORY[0x277D14458]);
    launchEvent = v9->_launchEvent;
    v9->_launchEvent = v11;

    v9->_applicationIsActive = 1;
    objc_storeWeak(&v9->_cameraDelegate, v8);
    objc_storeStrong(&v9->_playerConfiguration, a3);
    v13 = [v7 clipUUID];
    v9->_needsToFetchClip = v13 != 0;

    v14 = objc_alloc(MEMORY[0x277D144A0]);
    v15 = [v7 cameraProfile];
    v16 = [v7 home];
    v17 = [v16 hf_characteristicValueManager];
    v18 = [v14 initWithProfile:v15 valueSource:v17];
    cameraItem = v9->_cameraItem;
    v9->_cameraItem = v18;

    v20 = objc_opt_new();
    ppt_clipsLoadedFuture = v9->_ppt_clipsLoadedFuture;
    v9->_ppt_clipsLoadedFuture = v20;

    v22 = [v7 playerViewController];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = objc_alloc_init(MEMORY[0x277CB85E0]);
    }

    playerViewController = v9->_playerViewController;
    v9->_playerViewController = v24;

    [(AVPlayerViewController *)v9->_playerViewController setModalPresentationStyle:0];
    v26 = [MEMORY[0x277D75348] clearColor];
    v27 = [(AVPlayerViewController *)v9->_playerViewController view];
    [v27 setBackgroundColor:v26];

    if (![(AVPlayerViewController *)v9->_playerViewController isReadyForDisplay]&& ![(HUCameraController *)v9 isObservingReadyForDisplay])
    {
      [(HUCameraController *)v9 setObservingReadyForDisplay:1];
      v28 = [(HUCameraController *)v9 playerViewController];
      [v28 addObserver:v9 forKeyPath:@"readyForDisplay" options:0 context:HUCameraControllerReadyForDisplayContext];

      v29 = [(HUCameraController *)v9 playerViewController];
      [v29 addObserver:v9 forKeyPath:@"videoBounds" options:0 context:HUCameraControllerReadyForDisplayContext];

      v30 = [(HUCameraController *)v9 playerViewController];
      v31 = [v30 customControlsView];
      [v31 addObserver:v9 forKeyPath:@"bounds" options:0 context:HUCameraControllerReadyForDisplayContext];

      v32 = [(HUCameraController *)v9 volumeControlView];
      [v32 addObserver:v9 forKeyPath:@"bounds" options:3 context:HUCameraControllerReadyForDisplayContext];
    }

    v33 = [[HUCameraPlayerAVBehavior alloc] initWithDelegate:v9];
    behavior = v9->_behavior;
    v9->_behavior = v33;

    v35 = [(HUCameraController *)v9 playerViewController];
    [v35 addBehavior:v9->_behavior];

    v36 = [(AVHomeIPCameraBehavior *)v9->_behavior behaviorContext];
    [v36 setPlaybackControlsIncludeTransportControls:0];

    v37 = [(AVHomeIPCameraBehavior *)v9->_behavior behaviorContext];
    [v37 setPlaybackControlsIncludeDisplayModeControls:1];

    v38 = [(AVHomeIPCameraBehavior *)v9->_behavior behaviorContext];
    [v38 setZoomingEnabled:1];

    [(HUCameraController *)v9 updatePIPBehaviorForDeviceAndConfiguration];
    v39 = [(HUCameraController *)v9 playerViewController];
    [v39 setAllowsEnteringFullScreen:0];

    [(HUCameraController *)v9 _setupPlaybackEngine:v7];
    [(HUCameraController *)v9 _updateRecordedClipInterfaceAvailabilityWithAnimation:0];
    [(HUCameraController *)v9 loadControlItemsOnInit];
    [(HUCameraController *)v9 loadAccessoryViewControllersOnInit];
    v40 = [HUCameraPlayerLiveContentViewController alloc];
    v41 = [(HUCameraController *)v9 playbackEngine];
    v42 = [(HUCameraPlayerLiveContentViewController *)v40 initWithPlaybackEngine:v41];
    liveContentViewController = v9->_liveContentViewController;
    v9->_liveContentViewController = v42;

    v44 = [objc_alloc(MEMORY[0x277D14B08]) initWithDelegate:v9 sourceItem:v9->_cameraItem];
    itemManager = v9->_itemManager;
    v9->_itemManager = v44;

    v46 = [(HUCameraController *)v9 playerViewController];
    [v46 setDelegate:v9];

    v47 = [(HUCameraController *)v9 playerViewController];
    [v47 setUpdatesNowPlayingInfoCenter:0];

    [(HUCameraController *)v9 loadTimelapsePlayer];
    v48 = [MEMORY[0x277CCAB98] defaultCenter];
    [v48 addObserver:v9 selector:sel_handleShouldDifferentiateWithoutColorDidChange name:*MEMORY[0x277D764E0] object:0];
    [v48 addObserver:v9 selector:sel_handleSceneWillDeactivate_ name:*MEMORY[0x277D76E78] object:0];
    [v48 addObserver:v9 selector:sel_handleSceneDidActivate_ name:*MEMORY[0x277D76E48] object:0];
    v49 = dispatch_queue_create("com.apple.Home.HUCameraController.AudioSessionQueue", 0);
    [(HUCameraController *)v9 setAudioSessionQueue:v49];

    v50 = [MEMORY[0x277CB83F8] sharedInstance];
    v51 = *MEMORY[0x277CB8030];
    v55 = 0;
    [v50 setCategory:v51 error:&v55];
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

  v5 = [(HUCameraBlurViewController *)self->_blurViewController view];
  [v5 setAutoresizingMask:18];

  v6 = [(HUCameraController *)self playerViewController];
  v7 = [v6 contentOverlayView];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(HUCameraBlurViewController *)self->_blurViewController view];
  [v16 setFrame:{v9, v11, v13, v15}];

  v17 = [HUCameraPlayerAccessoryViewController alloc];
  v18 = [(HUCameraController *)self playbackEngine];
  v19 = [(HUCameraPlayerAccessoryViewController *)v17 initWithPlaybackEngine:v18];
  accessoryViewController = self->_accessoryViewController;
  self->_accessoryViewController = v19;

  v21 = [(HUCameraPlayerAccessoryViewController *)self->_accessoryViewController view];
  [v21 setAutoresizingMask:18];

  v22 = [(HUCameraController *)self playerViewController];
  v23 = [v22 contentOverlayView];
  [v23 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = [(HUCameraPlayerAccessoryViewController *)self->_accessoryViewController view];
  [v32 setFrame:{v25, v27, v29, v31}];

  v33 = [HUCameraPlayerPlaceholderContentViewController alloc];
  v34 = [(HUCameraController *)self playbackEngine];
  v35 = [(HUCameraPlayerPlaceholderContentViewController *)v33 initWithPlaybackEngine:v34];
  placeholderContentViewController = self->_placeholderContentViewController;
  self->_placeholderContentViewController = v35;

  v37 = [(HUCameraPlayerPlaceholderContentViewController *)self->_placeholderContentViewController view];
  [v37 setAutoresizingMask:18];

  v38 = [(HUCameraController *)self playerViewController];
  v39 = [v38 contentOverlayView];
  [v39 bounds];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = [(HUCameraPlayerPlaceholderContentViewController *)self->_placeholderContentViewController view];
  [v48 setFrame:{v41, v43, v45, v47}];

  v49 = [(HUCameraController *)self playerViewController];
  v50 = [(HUCameraController *)self placeholderContentViewController];
  [v49 addChildViewController:v50];

  v51 = [(HUCameraController *)self placeholderContentViewController];
  v52 = [(HUCameraController *)self playerViewController];
  [v51 didMoveToParentViewController:v52];

  v53 = [(HUCameraController *)self playerViewController];
  v54 = [(HUCameraController *)self accessoryViewController];
  [v53 addChildViewController:v54];

  v55 = [(HUCameraController *)self accessoryViewController];
  v56 = [(HUCameraController *)self playerViewController];
  [v55 didMoveToParentViewController:v56];

  v57 = [(HUCameraController *)self playerViewController];
  v58 = [(HUCameraController *)self blurViewController];
  [v57 addChildViewController:v58];

  v59 = [(HUCameraController *)self blurViewController];
  v60 = [(HUCameraController *)self playerViewController];
  [v59 didMoveToParentViewController:v60];

  v61 = [(HUCameraController *)self playerViewController];
  v62 = [v61 contentOverlayView];
  v63 = [(HUCameraController *)self blurViewController];
  v64 = [v63 view];
  [v62 addSubview:v64];

  v65 = [(HUCameraController *)self loadingOverlayView];
  v66 = [(HUCameraController *)self accessoryViewController];
  [v66 setLoadingOverlayView:v65];

  v67 = [(HUCameraController *)self playerViewController];
  v68 = [v67 contentOverlayView];
  v69 = [(HUCameraController *)self loadingOverlayView];
  [v68 addSubview:v69];

  v70 = [(HUCameraController *)self playerViewController];
  v71 = [v70 customControlsView];
  v72 = [(HUCameraController *)self accessoryViewController];
  v73 = [v72 view];
  [v71 addSubview:v73];

  v74 = [(HUCameraController *)self playerViewController];
  v75 = [v74 contentOverlayView];
  v76 = [v75 superview];

  v91 = MEMORY[0x277CCAAD0];
  v99 = [(HUCameraController *)self loadingOverlayView];
  v98 = [v99 topAnchor];
  v97 = [v76 topAnchor];
  v95 = [v98 constraintEqualToAnchor:v97];
  v100[0] = v95;
  v94 = [(HUCameraController *)self loadingOverlayView];
  v93 = [v94 bottomAnchor];
  v92 = [v76 bottomAnchor];
  v90 = [v93 constraintEqualToAnchor:v92];
  v100[1] = v90;
  v77 = [(HUCameraController *)self loadingOverlayView];
  v78 = [v77 leadingAnchor];
  v96 = v76;
  v79 = [v76 leadingAnchor];
  v80 = [v78 constraintEqualToAnchor:v79];
  v100[2] = v80;
  v81 = [(HUCameraController *)self loadingOverlayView];
  v82 = [v81 trailingAnchor];
  v83 = [v76 trailingAnchor];
  v84 = [v82 constraintEqualToAnchor:v83];
  v100[3] = v84;
  v85 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:4];
  [v91 activateConstraints:v85];

  v86 = [(HUCameraController *)self playerViewController];
  v87 = [v86 contentOverlayView];
  v88 = [(HUCameraController *)self placeholderContentViewController];
  v89 = [v88 view];
  [v87 addSubview:v89];
}

- (void)loadTimelapsePlayer
{
  v3 = [(HUCameraController *)self cameraProfile];
  v4 = [v3 clipManager];
  v5 = [MEMORY[0x277D144F0] sharedManager];
  [v5 setClipManager:v4];

  v6 = [HUCameraTimelapseController alloc];
  v7 = [(HUCameraController *)self cameraProfile];
  v8 = [(HUCameraTimelapseController *)v6 initWithCameraProfile:v7];
  [(HUCameraController *)self setTimelapseController:v8];

  v9 = [(HUCameraController *)self playerViewController];
  v10 = [v9 customControlsView];
  v11 = [v10 layer];
  v12 = [(HUCameraController *)self timelapseController];
  v13 = [v12 imageLayer];
  [v11 addSublayer:v13];

  v18 = [(HUCameraController *)self playerViewController];
  v14 = [v18 customControlsView];
  v15 = [v14 layer];
  v16 = [(HUCameraController *)self timelapseController];
  v17 = [v16 playerLayer];
  [v15 addSublayer:v17];
}

- (void)loadDependentViewControllers
{
  v75 = *MEMORY[0x277D85DE8];
  [(HUCameraController *)self addFooterViewController];
  [(HUCameraController *)self configureCalendarContainerViewControllerIfNeeded];
  [(HUCameraController *)self _updateRecordedClipInterfaceAvailabilityWithAnimation:0];
  [(HUCameraController *)self addCameraStatusOverlayAndPicker];
  [(HUCameraController *)self updatePlaceholderContent];
  v3 = [(HUCameraController *)self playbackEngine];
  v4 = [v3 playbackPosition];
  [(HUCameraController *)self updateStateForPlaybackPosition:v4 animated:0];

  v5 = [(HUCameraController *)self playerViewController];
  v6 = [v5 customControlsView];
  v7 = [(HUCameraController *)self portraitMicrophoneControl];
  [v6 addSubview:v7];

  v8 = [(HUCameraController *)self playerViewController];
  v9 = [v8 customControlsView];
  v10 = [(HUCameraController *)self landscapeMicrophoneControl];
  [v9 addSubview:v10];

  v11 = [(HUCameraController *)self cameraProfile];
  LODWORD(v9) = [v11 hf_supportsBidirectionalAudio];

  v12 = HFLogForCategory();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v13)
    {
      v14 = [(HUCameraController *)self cameraProfile];
      v15 = [v14 accessory];
      v16 = [v15 name];
      *buf = 138412290;
      v74 = v16;
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "Display microphone control for %@.", buf, 0xCu);
    }

    v17 = [(HUCameraController *)self playbackEngine];
    v18 = [v17 isMicrophoneEnabled];
    v19 = [(HUCameraController *)self portraitMicrophoneControl];
    [v19 setTalking:v18];

    v12 = [(HUCameraController *)self playbackEngine];
    v20 = [v12 isMicrophoneEnabled];
    v21 = [(HUCameraController *)self landscapeMicrophoneControl];
    [v21 setTalking:v20];
  }

  else if (v13)
  {
    v22 = [(HUCameraController *)self cameraProfile];
    v23 = [v22 accessory];
    v24 = [v23 name];
    *buf = 138412290;
    v74 = v24;
    _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "Hide microphone control for %@.", buf, 0xCu);
  }

  [(HUCameraController *)self setupConstraintSets];
  [(HUCameraController *)self updateMicrophoneControls];
  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    v25 = [(HUCameraController *)self accessoryViewController];
    v26 = [v25 view];
    [v26 setHidden:1];

    v27 = [(HUCameraController *)self blurViewController];
    v28 = [v27 view];
    [v28 setHidden:1];

    v29 = [(HUCameraController *)self playerViewController];
    v30 = [v29 view];
    v31 = [(HUCameraController *)self dayLabel];
    [v30 addSubview:v31];

    v32 = [(HUCameraController *)self playerViewController];
    v33 = [v32 view];
    v34 = [(HUCameraController *)self timeLabel];
    [v33 addSubview:v34];

    v35 = [(HUCameraController *)self demoPlayerView];

    if (!v35)
    {
      v36 = MEMORY[0x277D14608];
      v37 = [(HUCameraController *)self cameraProfile];
      v38 = [v37 accessory];
      v39 = [v36 demoLiveStreamURLForCamera:v38];

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

      v44 = [(HUCameraController *)self playerViewController];
      v45 = [v44 contentOverlayView];
      v46 = [(HUCameraController *)self demoPlayerView];
      [v45 addSubview:v46];

      v47 = [(HUCameraController *)self demoPlayerView];
      [v47 setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v46) = [MEMORY[0x277D14CE8] isAMac];
      v48 = [(HUCameraController *)self playerViewController];
      v49 = [v48 view];
      v50 = v49;
      if (v46)
      {
        v51 = [v49 safeAreaLayoutGuide];

        v50 = v51;
      }

      v52 = [(HUCameraController *)self playerViewController];
      v53 = [v52 contentOverlayView];

      v63 = MEMORY[0x277CCAAD0];
      v68 = [v53 topAnchor];
      v67 = [v47 topAnchor];
      v66 = [v68 constraintEqualToAnchor:v67];
      v72[0] = v66;
      v65 = [v53 bottomAnchor];
      v64 = [v47 bottomAnchor];
      v62 = [v65 constraintEqualToAnchor:v64];
      v72[1] = v62;
      v54 = [v53 leadingAnchor];
      v55 = [v47 leadingAnchor];
      v56 = [v54 constraintEqualToAnchor:v55];
      v72[2] = v56;
      v57 = [v53 trailingAnchor];
      v58 = [v47 trailingAnchor];
      v59 = [v57 constraintEqualToAnchor:v58];
      v72[3] = v59;
      v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:4];
      [v63 activateConstraints:v60];
    }
  }

  v61 = [(HUCameraController *)self portraitMicrophoneControl];
  [v61 layoutIfNeeded];
}

- (void)addCameraStatusOverlayAndPicker
{
  v3 = [MEMORY[0x277D75220] buttonWithType:0];
  [(HUCameraController *)self setCameraPickerButton:v3];

  v4 = [(HUCameraController *)self cameraPickerButton];
  [v4 setAutoresizingMask:18];

  v5 = [(HUCameraController *)self cameraStatusView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(HUCameraController *)self cameraPickerButton];
  [v14 setFrame:{v7, v9, v11, v13}];

  v15 = [(HUCameraController *)self cameraPickerButton];
  [v15 setTitle:@" " forState:0];

  v16 = [(HUCameraController *)self cameraStatusView];
  v17 = [(HUCameraController *)self cameraPickerButton];
  [v16 addSubview:v17];

  v18 = [(HUCameraController *)self playerViewController];
  v19 = [v18 customControlsView];
  v20 = [(HUCameraController *)self cameraStatusView];
  [v19 naui_addAutoLayoutSubview:v20];

  if ([(HUCameraController *)self homeHasMultipleCameraProfiles])
  {
    v21 = [(HUCameraController *)self cameraPickerButton];
    [v21 setContextMenuInteractionEnabled:1];

    v22 = [(HUCameraController *)self cameraPickerButton];
    [v22 setShowsMenuAsPrimaryAction:1];

    v25 = [(HUCameraController *)self cameraPickerMenu];
    v23 = [(HUCameraController *)self cameraPickerButton];
    [v23 setMenu:v25];
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
    v3 = [(HUCameraController *)self dayLabel];
    [v3 alpha];
    v5 = v4;

    if (v5 < 1.0)
    {
      v6 = [(HUCameraController *)self dayLabel];
      [v6 setAlpha:1.0];

      v7 = [(HUCameraController *)self timeLabel];
      [v7 setAlpha:1.0];

      v8 = [(HUCameraController *)self dayLabelBottomConstraint];
      [v8 setConstant:120.0];
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
      v10 = [(HUCameraController *)self demoPlayerView];
      v11 = [v10 superview];
      v12 = [(HUCameraController *)self demoPlayerView];
      [v11 bringSubviewToFront:v12];
    }

    else
    {
      v10 = [(HUCameraController *)self playbackEngine];
      [v10 play];
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

- (void)_setupPlaybackEngine:(id)a3
{
  v26 = a3;
  v4 = [v26 playbackEngine];

  if (v4)
  {
    v5 = [v26 playbackEngine];
    [(HUCameraController *)self setPlaybackEngine:v5];
    goto LABEL_12;
  }

  v6 = objc_alloc(MEMORY[0x277D144C0]);
  v7 = [(HUCameraController *)self home];
  v8 = [(HUCameraController *)self cameraProfile];
  v5 = [v6 initWithHome:v7 cameraProfile:v8];

  v9 = [(HUCameraController *)self behavior];
  [v5 setClipScrubber:v9];

  v10 = [(HUCameraController *)self playerConfiguration];
  v11 = [v10 startingPlaybackDate];

  if (v11)
  {
    v12 = MEMORY[0x277D144D0];
    v13 = [(HUCameraController *)self playerConfiguration];
    v14 = [v13 startingPlaybackDate];
    v15 = [v12 clipPositionWithDate:v14];
    [v5 setPlaybackPosition:v15];
  }

  v16 = objc_alloc_init(MEMORY[0x277D144B8]);
  [(HUCameraController *)self setPlaybackEngine:v16];

  v17 = objc_alloc_init(MEMORY[0x277D144C8]);
  [v17 setPeriodicTimeUpdateInterval:&unk_2824935B0];
  v18 = [(HUCameraController *)self playbackEngine];
  [v18 addObserver:self withOptions:v17];

  v19 = [(HUCameraController *)self playbackEngine];
  [v19 updateConfiguration:v5];

  v20 = [(HUCameraController *)self cameraProfile];
  if ([v20 hf_supportsRecordingEvents])
  {

    goto LABEL_8;
  }

  v21 = [MEMORY[0x277D14CE8] isPressDemoModeEnabled];

  if (v21)
  {
LABEL_8:
    v22 = [(HUCameraController *)self playerConfiguration];
    v23 = [v22 clipUUID];

    if (v23)
    {
      v24 = [(HUCameraController *)self playerConfiguration];
      v25 = [v24 clipUUID];
      [(HUCameraController *)self displayTimelineForClipUUID:v25];
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
  v2 = [(HUCameraController *)self playerConfiguration];
  v3 = [v2 home];

  return v3;
}

- (id)cameraProfile
{
  v2 = [(HUCameraController *)self playerConfiguration];
  v3 = [v2 cameraProfile];

  return v3;
}

- (BOOL)hasRecordedClips
{
  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    return 1;
  }

  v4 = [(HUCameraController *)self cameraProfile];
  if ([v4 hf_supportsRecordingEvents])
  {
    v5 = [(HUCameraController *)self playbackEngine];
    v6 = [v5 cameraClips];
    v3 = [v6 count] != 0;
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

    v8 = [MEMORY[0x277D75348] systemBlackColor];
    [(AVHomeLoadingButtonControlItem *)self->_nextControlItem setTintColor:v8];

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

- (void)setViewVisible:(BOOL)a3
{
  if (self->_viewVisible != a3)
  {
    self->_viewVisible = a3;
    [(HUCameraController *)self updateCanShowOverlayState];
  }
}

- (void)setEnteringFullScreen:(BOOL)a3
{
  if (self->_enteringFullScreen != a3)
  {
    self->_enteringFullScreen = a3;
    [(HUCameraController *)self updateCanShowOverlayState];
  }
}

- (id)ppt_clipCollectionView
{
  v2 = [(HUCameraController *)self clipScrubberViewController];
  v3 = [v2 view];
  v4 = [v3 subviews];
  v5 = [v4 na_firstObjectPassingTest:&__block_literal_global_244];

  v6 = [v5 clipCollectionView];

  return v6;
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
  v3 = [(HUCameraController *)self playerViewController];
  v4 = [v3 traitCollection];
  v5 = [v4 hu_hasExtendedWidth];

  if (v5)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 47.0;
  }

  v7 = [(HUCameraController *)self playbackEngine];
  v8 = [v7 playbackPosition];
  v9 = [MEMORY[0x277D144D0] livePosition];
  v10 = [v8 isEqual:v9];

  if ((v10 & 1) == 0)
  {
    v6 = v6 + 10.0;
    v11 = [(HUCameraController *)self playbackEngine];
    v12 = [v11 hasRecordingEvents];

    if (v12)
    {
      return v6 + 47.0;
    }
  }

  return v6;
}

- (void)setupConstraintSets
{
  objc_initWeak(&location, self);
  v3 = [(HUCameraController *)self cameraStatusView];
  v4 = [v3 topAnchor];
  v5 = [(HUCameraController *)self playerViewController];
  v6 = [v5 customControlsView];
  v7 = [v6 volumeControlsAreaLayoutGuide];
  v8 = [v7 topAnchor];
  v9 = [v4 constraintEqualToAnchor:v8];
  [(HUCameraController *)self setCameraStatusViewTopConstraint:v9];

  v10 = objc_alloc(MEMORY[0x277D2C958]);
  v11 = [(HUCameraController *)self cameraStatusView];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __41__HUCameraController_setupConstraintSets__block_invoke;
  v28[3] = &unk_277DC2030;
  objc_copyWeak(&v29, &location);
  v12 = [v10 initWithOwningView:v11 constraintBuilder:v28];
  [(HUCameraController *)self setCameraStatusViewConstraintSet:v12];

  v13 = objc_alloc(MEMORY[0x277D2C958]);
  v14 = [(HUCameraController *)self playerViewController];
  v15 = [v14 view];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __41__HUCameraController_setupConstraintSets__block_invoke_2;
  v26[3] = &unk_277DC2030;
  objc_copyWeak(&v27, &location);
  v16 = [v13 initWithOwningView:v15 constraintBuilder:v26];
  [(HUCameraController *)self setPortraitMicrophoneConstraintSet:v16];

  v17 = objc_alloc(MEMORY[0x277D2C958]);
  v18 = [(HUCameraController *)self playerViewController];
  v19 = [v18 view];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __41__HUCameraController_setupConstraintSets__block_invoke_3;
  v24 = &unk_277DC2030;
  objc_copyWeak(&v25, &location);
  v20 = [v17 initWithOwningView:v19 constraintBuilder:&v21];
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
  v3 = [(HUCameraController *)self footerViewController];
  v4 = [v3 view];
  v5 = [v4 heightAnchor];
  v6 = [v5 constraintEqualToConstant:44.0];
  [v6 setActive:1];

  v7 = [(HUCameraController *)self footerViewController];
  v8 = [v7 view];
  v9 = [v8 leftAnchor];
  v10 = [(HUCameraController *)self playerViewController];
  v11 = [v10 customControlsView];
  v12 = [v11 unobscuredCenterAreaLayoutGuide];
  v13 = [v12 leftAnchor];
  v14 = [v9 constraintEqualToAnchor:v13];
  [v14 setActive:1];

  v15 = [(HUCameraController *)self footerViewController];
  v16 = [v15 view];
  v17 = [v16 rightAnchor];
  v18 = [(HUCameraController *)self playerViewController];
  v19 = [v18 customControlsView];
  v20 = [v19 unobscuredCenterAreaLayoutGuide];
  v21 = [v20 rightAnchor];
  v22 = [v17 constraintEqualToAnchor:v21];
  [v22 setActive:1];

  v30 = [(HUCameraController *)self footerViewController];
  v23 = [v30 view];
  v24 = [v23 bottomAnchor];
  v25 = [(HUCameraController *)self playerViewController];
  v26 = [v25 customControlsView];
  v27 = [v26 transportControlsAreaLayoutGuide];
  v28 = [v27 bottomAnchor];
  v29 = [v24 constraintEqualToAnchor:v28];
  [v29 setActive:1];
}

- (void)updateViewConstraints
{
  v3 = [(HUCameraController *)self cameraStatusViewConstraintSet];
  [v3 activateIfNeeded];

  v4 = [(HUCameraController *)self scrubberConstraintSet];
  [v4 activateIfNeeded];

  v5 = [(HUCameraController *)self calendarConstraintSet];
  [v5 activateIfNeeded];

  if ([(HUCameraController *)self shouldDisplayMicrophoneControl])
  {
    v6 = [(HUCameraController *)self portraitMicrophoneConstraintSet];
    [v6 activateIfNeeded];

    v7 = [(HUCameraController *)self landscapeMicrophoneConstraintSet];
    [v7 activateIfNeeded];
  }
}

- (void)configureClipScrubberViewControllerIfNeeded
{
  v3 = [(HUCameraController *)self clipScrubberViewController];

  if (!v3)
  {
    [(HUCameraController *)self configureClipScrubberViewController];
    v7 = [(HUCameraController *)self clipScrubberViewController];
    v4 = [(HUCameraController *)self playbackEngine];
    v5 = [(HUCameraController *)self playbackEngine];
    v6 = [v5 playbackPosition];
    [v7 playbackEngine:v4 didUpdatePlaybackPosition:v6];
  }
}

- (void)configureClipScrubberViewController
{
  v90[6] = *MEMORY[0x277D85DE8];
  v3 = [HUClipScrubberViewController alloc];
  v4 = [(HUCameraController *)self playbackEngine];
  v5 = [(HUClipScrubberViewController *)v3 initWithPlaybackEngine:v4];
  [(HUCameraController *)self setClipScrubberViewController:v5];

  objc_initWeak(&location, self);
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = __57__HUCameraController_configureClipScrubberViewController__block_invoke;
  v87[3] = &unk_277DB8770;
  objc_copyWeak(&v88, &location);
  v6 = [(HUCameraController *)self clipScrubberViewController];
  [v6 setAccessoryButtonHandler:v87];

  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __57__HUCameraController_configureClipScrubberViewController__block_invoke_2;
  v85[3] = &unk_277DB8770;
  objc_copyWeak(&v86, &location);
  v7 = [(HUCameraController *)self clipScrubberViewController];
  [v7 setBeginEditingHandler:v85];

  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __57__HUCameraController_configureClipScrubberViewController__block_invoke_4;
  v83[3] = &unk_277DB8770;
  objc_copyWeak(&v84, &location);
  v8 = [(HUCameraController *)self clipScrubberViewController];
  [v8 setEndEditingHandler:v83];

  v9 = [(HUCameraController *)self playerViewController];
  v10 = [v9 customControlsView];
  v11 = [(HUCameraController *)self dayLabel];
  [v10 addSubview:v11];

  v12 = [(HUCameraController *)self playerViewController];
  v13 = [v12 customControlsView];
  v14 = [(HUCameraController *)self timeLabel];
  [v13 addSubview:v14];

  v15 = [(HUCameraController *)self playerViewController];
  v16 = [(HUCameraController *)self clipScrubberViewController];
  [v15 addChildViewController:v16];

  v17 = [(HUCameraController *)self clipScrubberViewController];
  v18 = [v17 view];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

  v19 = [(HUCameraController *)self playerViewController];
  v20 = [v19 customControlsView];
  v21 = [(HUCameraController *)self clipScrubberViewController];
  v22 = [v21 view];
  [v20 addSubview:v22];

  v23 = [(HUCameraController *)self clipScrubberViewController];
  v24 = [(HUCameraController *)self playerViewController];
  [v23 didMoveToParentViewController:v24];

  v25 = [(HUCameraController *)self dayLabel];
  v26 = [v25 bottomAnchor];
  v27 = [(HUCameraController *)self clipScrubberViewController];
  v28 = [v27 view];
  v29 = [v28 topAnchor];
  v30 = [v26 constraintEqualToAnchor:v29 constant:120.0];
  [(HUCameraController *)self setDayLabelBottomConstraint:v30];

  v80 = [(HUCameraController *)self dayLabelBottomConstraint];
  v90[0] = v80;
  v79 = [(HUCameraController *)self dayLabel];
  v75 = [v79 leftAnchor];
  v78 = [(HUCameraController *)self playerViewController];
  v77 = [v78 customControlsView];
  v76 = [v77 safeAreaLayoutGuide];
  v74 = [v76 leftAnchor];
  v73 = [v75 constraintEqualToAnchor:v74];
  v90[1] = v73;
  v72 = [(HUCameraController *)self dayLabel];
  v68 = [v72 rightAnchor];
  v71 = [(HUCameraController *)self playerViewController];
  v70 = [v71 customControlsView];
  v69 = [v70 safeAreaLayoutGuide];
  v67 = [v69 rightAnchor];
  v66 = [v68 constraintEqualToAnchor:v67];
  v90[2] = v66;
  v65 = [(HUCameraController *)self timeLabel];
  v63 = [v65 lastBaselineAnchor];
  v64 = [(HUCameraController *)self dayLabel];
  v62 = [v64 lastBaselineAnchor];
  v61 = [v63 constraintEqualToAnchor:v62 constant:-23.0];
  v90[3] = v61;
  v60 = [(HUCameraController *)self timeLabel];
  v56 = [v60 leftAnchor];
  v59 = [(HUCameraController *)self playerViewController];
  v58 = [v59 customControlsView];
  v57 = [v58 safeAreaLayoutGuide];
  v31 = [v57 leftAnchor];
  v32 = [v56 constraintEqualToAnchor:v31];
  v90[4] = v32;
  v33 = [(HUCameraController *)self timeLabel];
  v34 = [v33 rightAnchor];
  v35 = [(HUCameraController *)self playerViewController];
  v36 = [v35 customControlsView];
  v37 = [v36 safeAreaLayoutGuide];
  v38 = [v37 rightAnchor];
  v39 = [v34 constraintEqualToAnchor:v38];
  v90[5] = v39;
  v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:6];

  [MEMORY[0x277CCAAD0] activateConstraints:v55];
  v40 = objc_alloc(MEMORY[0x277D2C958]);
  v41 = [(HUCameraController *)self playerViewController];
  v42 = [v41 view];
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __57__HUCameraController_configureClipScrubberViewController__block_invoke_5;
  v81[3] = &unk_277DC2030;
  objc_copyWeak(&v82, &location);
  v43 = [v40 initWithOwningView:v42 constraintBuilder:v81];
  [(HUCameraController *)self setScrubberConstraintSet:v43];

  v44 = [(HUCameraController *)self scrubberConstraintSet];
  [v44 activateIfNeeded];

  v45 = [(HUCameraController *)self playerViewController];
  v46 = [v45 customControlsView];
  [v46 layoutIfNeeded];

  if ([MEMORY[0x277D14500] shouldDisplayInternalViews])
  {
    v47 = [HUDiagnosticsCameraPlayerController alloc];
    v48 = [(HUCameraController *)self playerViewController];
    v49 = [(HUCameraController *)self playbackEngine];
    v50 = [(HUCameraController *)self clipScrubberViewController];
    v51 = [v50 dataSource];
    v52 = [(HUCameraController *)self playbackEngine];
    v53 = [v52 cameraProfile];
    v54 = [(HUDiagnosticsCameraPlayerController *)v47 initWithCameraPlayerViewController:v48 playbackEngine:v49 clipScrubberDataSource:v51 cameraProfile:v53];
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

- (void)_updateRecordedClipInterfaceAvailabilityWithAnimation:(BOOL)a3
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

  v5 = [(HUCameraController *)self recordedClipInterfaceAvailable];
  if ([(HUCameraController *)self hasRecordedClips]&& [(HUCameraController *)self finishedFetchingCameraEvents])
  {
    v6 = [(HUCameraController *)self playerViewController];
    v7 = [v6 isViewLoaded];
  }

  else
  {
    v7 = 0;
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

  if (v5 != v7)
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
    v12 = v7;
    v13 = a3;
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

- (void)displayTimelineForClipUUID:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(HUCameraController *)self playerConfiguration];
    v7 = [v6 clipUUID];
    *buf = 138412290;
    v16 = v7;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Fetch clip with UUID:%@", buf, 0xCu);
  }

  [(HUCameraController *)self setNeedsToFetchClip:0];
  objc_initWeak(buf, self);
  v8 = [(HUCameraController *)self playbackEngine];
  v9 = [v8 fetchClipWithUUID:v4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__HUCameraController_displayTimelineForClipUUID___block_invoke;
  v12[3] = &unk_277DC2ED8;
  objc_copyWeak(&v14, buf);
  v10 = v4;
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

- (void)_refreshClipCacheAndRefetchForClipUUID:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__HUCameraController__refreshClipCacheAndRefetchForClipUUID___block_invoke;
  v13[3] = &unk_277DB7508;
  v13[4] = self;
  v5 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v13];
  v6 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v7 = [v5 reschedule:v6];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__HUCameraController__refreshClipCacheAndRefetchForClipUUID___block_invoke_2;
  v10[3] = &unk_277DB8620;
  objc_copyWeak(&v12, &location);
  v8 = v4;
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

- (void)_finishDisplayingTimelineForClip:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(HUCameraController *)self setFinishedFetchingCameraEvents:1];
  if (!v4 || (v5 = MEMORY[0x277D144D0], [v4 dateOfOccurrence], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "clipPositionWithDate:", v6), v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
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
    v10 = [v4 uniqueIdentifier];
    v11 = [(HUCameraController *)self cameraProfile];
    *buf = 138412802;
    v26 = v10;
    v27 = 2112;
    v28 = v7;
    v29 = 2112;
    v30 = v11;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Fetch request completed for UUID:%@. Start playback engine at %@ for profile:%@.", buf, 0x20u);
  }

  if ([v4 isComplete])
  {
    v12 = [(HUCameraController *)self clipScrubberViewController];
    v13 = [v12 dataSource];
    [v13 setCurrentTimelineState:2];

    v14 = [(HUCameraController *)self playbackEngine];
    [v14 setTimelineState:2];

    v15 = [(HUCameraController *)self playbackEngine];
    v16 = [v4 dateOfOccurrence];
    [v15 updatePlaybackPositionToDate:v16 usingClip:v4];

    v17 = [(HUCameraController *)self playbackEngine];
    [v17 play];
  }

  [(HUCameraController *)self _updateRecordedClipInterfaceAvailabilityWithAnimation:1];
  [(HUCameraController *)self displayPlaybackUIWithUpdate:1];
  v18 = HFLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(HUCameraController *)self cameraProfile];
    *buf = 138412290;
    v26 = v19;
    _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "Requesting all events from HomeKit for camera profile:%@.", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v20 = [(HUCameraController *)self playbackEngine];
  v21 = [v20 fetchCameraEvents];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __55__HUCameraController__finishDisplayingTimelineForClip___block_invoke;
  v23[3] = &unk_277DBD288;
  objc_copyWeak(&v24, buf);
  v22 = [v21 addCompletionBlock:v23];

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
    v4 = [(HUCameraController *)self playerConfiguration];
    v5 = [v4 clipUUID];
    *buf = 138412290;
    v14 = v5;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Proceed to fetch clip with UUID:%@", buf, 0xCu);
  }

  [(HUCameraController *)self setNeedsToFetchClip:0];
  objc_initWeak(buf, self);
  v6 = [(HUCameraController *)self playbackEngine];
  v7 = [v6 cameraProfile];
  v8 = [v7 clipManager];
  v9 = [(HUCameraController *)self playerConfiguration];
  v10 = [v9 clipUUID];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__HUCameraController_fetchRequestedClipUsingConfiguration__block_invoke;
  v11[3] = &unk_277DC2F00;
  objc_copyWeak(&v12, buf);
  [v8 fetchClipWithUUID:v10 completion:v11];

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

- (void)_reloadClipsWithUpdate:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(HUCameraController *)self cameraProfile];
    *buf = 138412290;
    v12 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Requesting events from HomeKit for camera profile:%@.", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6 = [(HUCameraController *)self playbackEngine];
  v7 = [v6 fetchCameraEvents];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__HUCameraController__reloadClipsWithUpdate___block_invoke;
  v9[3] = &unk_277DBD288;
  objc_copyWeak(&v10, buf);
  v8 = [v7 addCompletionBlock:v9];

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

- (void)displayPlaybackUIWithUpdate:(BOOL)a3
{
  v3 = a3;
  [(HUCameraController *)self _updateRecordedClipInterfaceAvailabilityWithAnimation:1];
  if (v3)
  {
    v5 = [(HUCameraController *)self playbackEngine];
    v6 = [(HUCameraController *)self accessoryViewController];
    [v6 setPlaybackEngine:v5];

    [(HUCameraController *)self updatePlaceholderContent];
    v7 = [(HUCameraController *)self playbackEngine];
    v8 = [v7 playbackPosition];
    [(HUCameraController *)self updateStateForPlaybackPosition:v8 animated:0];

    v9 = [(HUCameraController *)self cameraStatusView];
    v10 = [(HUCameraController *)self playbackEngine];
    [v9 updateStatusForPlaybackEngine:v10];

    [(HUCameraController *)self updateIndicatorColor];
    v11 = [(HUCameraController *)self cameraStatusViewConstraintSet];
    [v11 invalidate];
  }

  if ([(HUCameraController *)self shouldResumePlaying])
  {
    v12 = [(HUCameraController *)self playbackEngine];
    [v12 play];
  }
}

- (void)updateStateForPlaybackPosition:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([MEMORY[0x277D14CE8] isInternalTest])
  {
    [(HUCameraController *)self _updateStateForPlaybackPosition:v6 animated:v4];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__HUCameraController_updateStateForPlaybackPosition_animated___block_invoke;
    block[3] = &unk_277DC2F28;
    block[4] = self;
    v8 = v6;
    v9 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_updateStateForPlaybackPosition:(id)a3 animated:(BOOL)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([(HUCameraController *)self applicationIsActive])
  {
    v6 = [v5 contentType];
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v53 = 138412290;
      v54 = v5;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "updateStateForPlaybackPosition: %@", &v53, 0xCu);
    }

    [(HUCameraController *)self cameraStatusViewConstantForTraitCollection];
    v9 = v8;
    v10 = [(HUCameraController *)self cameraStatusViewTopConstraint];
    [v10 constant];
    v12 = v11;

    if (v12 != v9)
    {
      v13 = [(HUCameraController *)self cameraStatusViewConstraintSet];
      [v13 invalidate];

      v14 = [(HUCameraController *)self cameraStatusViewTopConstraint];
      [v14 setConstant:v9];

      v15 = [(HUCameraController *)self cameraStatusViewConstraintSet];
      [v15 activateIfNeeded];
    }

    [(HUCameraController *)self updateIndicatorColor];
    if (v6)
    {
      v16 = [(HUCameraController *)self liveContentViewController];
      v17 = [v16 viewIfLoaded];
      [v17 removeFromSuperview];

      if (![MEMORY[0x277D14CE8] isPressDemoModeEnabled])
      {
        goto LABEL_16;
      }

      v18 = [(HUCameraController *)self demoPlayerView];
      [v18 setHidden:1];

      v19 = [(HUCameraController *)self demoModeQueuePlayer];
      [v19 pause];
    }

    else
    {
      v21 = [(HUCameraController *)self playbackEngine];
      v22 = [v21 cameraProfile];
      v23 = [v22 hf_shouldDisableLiveStream];

      if ((v23 & 1) == 0)
      {
        v24 = [(HUCameraController *)self behavior];
        v25 = [v24 behaviorContext];
        v26 = [v25 livePreviewContainerView];

        v27 = [(HUCameraController *)self liveContentViewController];
        v28 = [v27 view];
        [v26 naui_addAutoLayoutSubview:v28];

        v29 = MEMORY[0x277CCAAD0];
        v30 = [(HUCameraController *)self liveContentViewController];
        v31 = [v30 view];
        v32 = [v29 hu_constraintsSizingAnchorProvider:v31 toAnchorProvider:v26];
        [v29 activateConstraints:v32];

        [(HUCameraController *)self updateLivePreviewAspectRatio];
        v33 = [(HUCameraController *)self liveContentViewController];
        v34 = [v33 cameraView];
        [v34 setBadgeHidden:1];
      }

      if (![MEMORY[0x277D14CE8] isPressDemoModeEnabled])
      {
LABEL_16:
        v38 = v6 == 0;
        v39 = [(HUCameraController *)self behavior];
        v40 = [v39 behaviorContext];
        [v40 setLivePreviewActive:v38];

        if (v6)
        {
          v38 = [(HUCameraController *)self playbackEngine];
          v41 = [v38 player];
        }

        else
        {
          v41 = 0;
        }

        v42 = [(HUCameraController *)self playerViewController];
        [v42 setPlayer:v41];

        if (v6)
        {
        }

        v43 = [(HUCameraController *)self playerViewController];
        v44 = [v43 player];
        if (v44)
        {
          v45 = v44;
          v46 = [(HUCameraController *)self playerViewController];
          v47 = [v46 player];
          v48 = [v47 allowsExternalPlayback];

          if (!v48)
          {
LABEL_25:
            v20 = [(HUCameraController *)self playbackEngine];
            v50 = [v20 prefersAudioEnabled];
            v51 = [(HUCameraController *)self playerViewController];
            v52 = [v51 playerController];
            [v52 setMuted:v50 ^ 1u];

            goto LABEL_26;
          }

          v43 = [(HUCameraController *)self playerViewController];
          v49 = [v43 player];
          [v49 setAllowsExternalPlayback:0];
        }

        goto LABEL_25;
      }

      v35 = [(HUCameraController *)self demoPlayerView];
      [v35 setHidden:0];

      v36 = [(HUCameraController *)self demoModeQueuePlayer];
      [v36 play];

      v19 = [(HUCameraController *)self liveContentViewController];
      v37 = [v19 view];
      [v37 setHidden:1];
    }

    goto LABEL_16;
  }

  v20 = HFLogForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v53) = 0;
    _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "Application is not active. Bypassing playback position updates.", &v53, 2u);
  }

LABEL_26:
}

- (void)updateStateForScrubbingStatus:(BOOL)a3 animated:(BOOL)a4
{
  if (a3)
  {
    v5 = [(HUCameraController *)self behavior:a3];
    v6 = [v5 behaviorContext];
    [v6 setPlaybackControlsIncludeDisplayModeControls:0];

    v7 = [(HUCameraController *)self behavior];
    v8 = [v7 behaviorContext];
    [v8 setPlaybackControlsIncludeVolumeControls:0];

    [(HUCameraController *)self updateCalendarContainerVisibility:0];
  }
}

- (void)removePlaybackHistoryUI
{
  [(HUCameraController *)self setRecordedClipInterfaceAvailable:0];
  v3 = [(HUCameraController *)self clipScrubberViewController];
  v4 = [v3 view];
  [v4 removeFromSuperview];

  v5 = [(HUCameraController *)self clipScrubberViewController];
  [v5 removeFromParentViewController];

  [(HUCameraController *)self setClipScrubberViewController:0];
  v6 = [(HUCameraController *)self playbackEngine];
  v7 = [v6 engineMode];

  if (!v7)
  {
    v8 = [(HUCameraController *)self calendarContainerViewController];
    v9 = [v8 view];
    [v9 removeFromSuperview];

    v10 = [(HUCameraController *)self calendarContainerViewController];
    [v10 removeFromParentViewController];

    [(HUCameraController *)self setCalendarContainerViewController:0];
  }

  v11 = [(HUCameraController *)self dayLabel];
  [v11 removeFromSuperview];

  [(HUCameraController *)self setDayLabel:0];
  v12 = [(HUCameraController *)self timeLabel];
  [v12 removeFromSuperview];

  [(HUCameraController *)self setTimeLabel:0];
  [(HUCameraController *)self setDateDisplayController:0];
  v14 = [(HUCameraController *)self footerViewController];
  v13 = [v14 view];
  [v13 setHidden:0];
}

- (void)updateIndicatorColor
{
  v3 = [(HUCameraController *)self playbackEngine];
  v4 = [v3 isLiveStreaming];

  v5 = [(HUCameraController *)self cameraProfile];
  v6 = [v5 userSettings];
  v7 = v6;
  if (v4)
  {
    v8 = [v6 hu_indicatorColorForLiveStreaming];
    v9 = [(HUCameraController *)self cameraStatusView];
    [v9 setStatusColor:v8];

    v15 = [(HUCameraController *)self cameraProfile];
    v10 = [v15 userSettings];
    [v10 hu_indicatorImageNameForLiveStreaming];
  }

  else
  {
    v11 = [v6 hu_indicatorColorForCurrentAccessMode];
    v12 = [(HUCameraController *)self cameraStatusView];
    [v12 setStatusColor:v11];

    v15 = [(HUCameraController *)self cameraProfile];
    v10 = [v15 userSettings];
    [v10 hu_indicatorImageNameForCurrentAccessMode];
  }
  v13 = ;
  v14 = [(HUCameraController *)self cameraStatusView];
  [v14 setStatusImageName:v13];
}

- (void)updateCameraStatus
{
  if ([(HUCameraController *)self applicationIsActive])
  {
    v3 = [(HUCameraController *)self cameraStatusView];
    v4 = [(HUCameraController *)self playbackEngine];
    [v3 updateStatusForPlaybackEngine:v4];

    [(HUCameraController *)self updateIndicatorColor];
    v5 = [(HUCameraController *)self accessoryViewController];
    [v5 hu_reloadData];

    v6 = [(HUCameraController *)self placeholderContentViewController];
    [v6 hu_reloadData];

    [(HUCameraController *)self updatePlayerVolumeSliderState];
    v7 = [(HUCameraController *)self playbackEngine];
    v8 = [v7 engineMode];

    if (v8)
    {
      return;
    }

    [(HUCameraController *)self updatePIPBehaviorForDeviceAndConfiguration];
    if ([(HUCameraController *)self shouldDisableLiveStreamAfterCameraStatusChange])
    {
      v14 = [(HUCameraController *)self playbackEngine];
      [v14 pause];
    }

    else
    {
      if ([(HUCameraController *)self displayingDetailsViewController])
      {
        return;
      }

      v10 = [(HUCameraController *)self playbackEngine];
      v11 = [v10 timeControlStatus];

      if (v11)
      {
        return;
      }

      if (![(HUCameraController *)self applicationIsActive])
      {
        v12 = [(HUCameraController *)self playbackEngine];
        v13 = [v12 isPictureInPictureModeActive];

        if (!v13)
        {
          return;
        }
      }

      v14 = [(HUCameraController *)self playbackEngine];
      [v14 play];
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
  v2 = [(HUCameraController *)self cameraProfile];
  v3 = [v2 userSettings];
  v4 = [v3 currentAccessMode];

  return !v4 || v4 == 3;
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

  v4 = [(HUCameraController *)self accessoryViewController];
  [v4 setCanShowOverlayContent:v3];
}

- (void)dismissEditInterface
{
  v3 = [(HUCameraController *)self savedControlItems];

  if (v3)
  {
    v4 = [(HUCameraController *)self cameraStatusView];
    [v4 setHidden:0];

    v5 = [(HUCameraController *)self calendarContainerViewController];
    [v5 setIsEditing:0];

    v6 = [(HUCameraController *)self behavior];
    v7 = [v6 behaviorContext];
    [v7 setPlaybackControlsIncludeDisplayModeControls:1];

    v8 = [(HUCameraController *)self behavior];
    v9 = [v8 behaviorContext];
    [v9 setPlaybackControlsIncludeVolumeControls:1];

    v10 = [(HUCameraController *)self behavior];
    v11 = [v10 behaviorContext];
    v12 = [(HUCameraController *)self nextControlItem];
    [v11 setBackgroundColor:0 forContainerOfControlItem:v12];

    v13 = [(HUCameraController *)self savedControlItems];
    v14 = [(HUCameraController *)self playerViewController];
    [v14 setCustomControlItems:v13];

    [(HUCameraController *)self setSavedControlItems:0];
    v15 = [(HUCameraController *)self nextControlItem];
    [v15 setShowsLoadingIndicator:0];
  }
}

- (void)addFooterViewController
{
  v3 = [(HUCameraController *)self footerViewController];

  if (!v3)
  {
    v4 = objc_alloc_init(HUCameraPlayerFooterViewController);
    [(HUCameraController *)self setFooterViewController:v4];

    v5 = [(HUCameraController *)self playerViewController];
    v6 = [(HUCameraController *)self footerViewController];
    [v5 addChildViewController:v6];

    v7 = [(HUCameraController *)self footerViewController];
    v8 = [(HUCameraController *)self playerViewController];
    [v7 didMoveToParentViewController:v8];

    v9 = [(HUCameraController *)self footerViewController];
    v10 = [v9 view];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

    v11 = [(HUCameraController *)self footerViewController];
    v12 = [v11 nearbyAccessoryButton];
    [v12 addTarget:self action:sel_presentNearbyAccessoriesViewController forControlEvents:64];

    v16 = [(HUCameraController *)self playerViewController];
    v13 = [v16 customControlsView];
    v14 = [(HUCameraController *)self footerViewController];
    v15 = [v14 view];
    [v13 addSubview:v15];
  }
}

- (void)configureCalendarContainerViewControllerIfNeeded
{
  v3 = [(HUCameraController *)self calendarContainerViewController];

  if (!v3)
  {
    v4 = [HUCalendarScrubberDataSource alloc];
    v5 = [(HUCameraController *)self playbackEngine];
    v6 = [v5 cameraProfile];
    v7 = [v6 clipManager];
    v8 = [(HUCameraController *)self playbackEngine];
    v9 = [v8 daysWithClips];
    v10 = [(HUCalendarScrubberDataSource *)v4 initWithCameraClipManager:v7 datesWithClips:v9];

    v11 = [HUCalendarScrubberContainerViewController alloc];
    v12 = [(HUCameraController *)self playbackEngine];
    v13 = [(HUCalendarScrubberContainerViewController *)v11 initWithPlaybackEngine:v12 calendarScrubberDataSource:v10];
    [(HUCameraController *)self setCalendarContainerViewController:v13];

    v14 = [(HUCameraController *)self playerViewController];
    v15 = [(HUCameraController *)self calendarContainerViewController];
    [v14 addChildViewController:v15];

    v16 = [(HUCameraController *)self playerViewController];
    v17 = [v16 customControlsView];
    v18 = [(HUCameraController *)self calendarContainerViewController];
    v19 = [v18 view];
    [v17 naui_addAutoLayoutSubview:v19];

    v20 = [(HUCameraController *)self calendarContainerViewController];
    v21 = [(HUCameraController *)self playerViewController];
    [v20 didMoveToParentViewController:v21];

    objc_initWeak(&location, self);
    v22 = objc_alloc(MEMORY[0x277D2C958]);
    v23 = [(HUCameraController *)self playerViewController];
    v24 = [v23 view];
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __70__HUCameraController_configureCalendarContainerViewControllerIfNeeded__block_invoke;
    v32 = &unk_277DC2030;
    objc_copyWeak(&v33, &location);
    v25 = [v22 initWithOwningView:v24 constraintBuilder:&v29];
    [(HUCameraController *)self setCalendarConstraintSet:v25, v29, v30, v31, v32];

    v26 = [(HUCameraController *)self calendarConstraintSet];
    [v26 activateIfNeeded];

    v27 = [(HUCameraController *)self playerViewController];
    v28 = [v27 customControlsView];
    [v28 layoutIfNeeded];

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

- (void)updateCalendarContainerVisibility:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUCameraController *)self playbackEngine];
  if ([v5 isUserScrubbing])
  {

    v6 = 0.0;
  }

  else
  {
    v7 = [(HUCameraController *)self playbackEngine];
    v8 = [v7 hasRecordingEvents];

    if (v8)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0.0;
    }
  }

  v10 = [(HUCameraController *)self calendarContainerViewController];
  v9 = [v10 view];
  [v9 setAlpha:v6];
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
  v4 = [(HUCameraController *)self liveContentViewController];
  v5 = [v4 view];
  [v5 setHidden:1];

  [(HUCameraController *)self setDisplayingDetailsViewController:1];
  v6 = [(HUCameraController *)self cameraDelegate];
  v7 = [(HUCameraController *)self cameraItem];
  v8 = [v6 detailsViewControllerForCameraItem:v7];

  [v8 setPresentationDelegate:self];
  [v8 _setIgnoreAppSupportedOrientations:1];
  [v8 setModalInPresentation:1];
  v9 = [(HUCameraController *)self presentInternalViewController:v8];

  return v9;
}

- (void)presentNearbyAccessoriesViewController
{
  v3 = [HUNearbyAccessoriesViewController alloc];
  v4 = [(HUCameraController *)self cameraItem];
  v6 = [(HUNearbyAccessoriesViewController *)v3 initWithSourceItem:v4 supportsQuickControls:1];

  [(HUNearbyAccessoriesViewController *)v6 setPresentationDelegate:self];
  [(HUNearbyAccessoriesViewController *)v6 _setIgnoreAppSupportedOrientations:1];
  v5 = [(HUCameraController *)self presentInternalViewController:v6];
}

- (id)presentInternalViewController:(id)a3
{
  v4 = a3;
  [(HUCameraController *)self cancelAnyPendingLaunchEventAnalytics];
  v5 = [(HUCameraController *)self playerViewController];
  [v5 setAllowsPictureInPicturePlayback:0];

  v6 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v4];
  v7 = [MEMORY[0x277D75348] hf_keyColor];
  v8 = [v6 navigationBar];
  [v8 setTintColor:v7];

  [v6 setModalPresentationStyle:2];
  [v6 _setIgnoreAppSupportedOrientations:1];
  v9 = [(HUCameraController *)self playerViewController];
  v10 = [v9 viewControllerForFullScreenPresentation];
  v11 = [v10 hu_presentPreloadableViewController:v6 animated:1];

  return v11;
}

- (void)cancelAnyPendingLaunchEventAnalytics
{
  v3 = [(HUCameraController *)self launchEvent];

  if (v3)
  {

    [(HUCameraController *)self setLaunchEvent:0];
  }
}

- (BOOL)_shouldAutoPlayOnViewAppearance
{
  v3 = [(HUCameraController *)self playbackEngine];
  v4 = [v3 playbackPosition];
  v5 = [MEMORY[0x277D144D0] livePosition];
  v6 = [v4 isEqual:v5];

  result = 1;
  if ((v6 & 1) == 0)
  {
    v8 = [(HUCameraController *)self playerConfiguration];
    v9 = [v8 startingPlaybackDate];

    if (!v9)
    {
      return 0;
    }

    v10 = [(HUCameraController *)self playbackEngine];
    v11 = [v10 currentClip];

    if (!v11)
    {
      return 0;
    }

    v12 = [(HUCameraController *)self playbackEngine];
    v13 = [v12 currentClip];
    v14 = [v13 hf_dateInterval];
    v15 = [(HUCameraController *)self playerConfiguration];
    v16 = [v15 startingPlaybackDate];
    v17 = [v14 hf_searchResultForDate:v16];

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
    v3 = [(HUCameraController *)self playbackEngine];
    v4 = [v3 isMicrophoneEnabled];
    v5 = [(HUCameraController *)self portraitMicrophoneControl];
    [v5 setTalking:v4];

    v6 = [(HUCameraController *)self playbackEngine];
    v7 = [v6 isMicrophoneEnabled];
    v8 = [(HUCameraController *)self landscapeMicrophoneControl];
    [v8 setTalking:v7];

    v9 = [(HUCameraController *)self portraitMicrophoneConstraintSet];
    [v9 invalidate];

    v10 = [(HUCameraController *)self landscapeMicrophoneConstraintSet];
    [v10 invalidate];

    v11 = [(HUCameraController *)self portraitMicrophoneConstraintSet];
    [v11 activateIfNeeded];

    v12 = [(HUCameraController *)self landscapeMicrophoneConstraintSet];
    [v12 activateIfNeeded];
  }

  [(HUCameraController *)self updateMicrophoneControlVisibility];
  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(HUCameraController *)self cameraProfile];
    v15 = [v14 hf_supportsBidirectionalAudio];
    v16 = [(HUCameraController *)self portraitMicrophoneControl];
    [v16 alpha];
    v18 = v17 == 0.0;
    v19 = [(HUCameraController *)self landscapeMicrophoneControl];
    [v19 alpha];
    v21 = v20 == 0.0;
    v22 = [(HUCameraController *)self playbackEngine];
    v23[0] = 67109888;
    v23[1] = v15;
    v24 = 1024;
    v25 = v18;
    v26 = 1024;
    v27 = v21;
    v28 = 1024;
    v29 = [v22 isLiveStreaming];
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "Update microphone display: BiDirectionalAudio:%{BOOL}d PortraitControlHidden:%{BOOL}d LandscapeControlHidden:%{BOOL}d LiveStreaming:%{BOOL}d", v23, 0x1Au);
  }
}

- (void)updateMicrophoneControlVisibility
{
  if ([(HUCameraController *)self shouldDisplayMicrophoneControl])
  {
    v3 = [(HUCameraController *)self playerViewController];
    v4 = [v3 traitCollection];
    v5 = [v4 hu_hasExtendedWidth];

    v6 = [(HUCameraController *)self portraitMicrophoneControl];
    v7 = v6;
    if (v5)
    {
      [v6 setAlpha:0.0];
      v8 = 1.0;
    }

    else
    {
      [v6 setAlpha:1.0];
      v8 = 0.0;
    }
  }

  else
  {
    v7 = [(HUCameraController *)self portraitMicrophoneControl];
    v8 = 0.0;
    [v7 setAlpha:0.0];
  }

  v9 = [(HUCameraController *)self landscapeMicrophoneControl];
  [v9 setAlpha:v8];
}

- (BOOL)shouldDisplayMicrophoneControl
{
  v3 = [(HUCameraController *)self cameraProfile];
  if ([v3 hf_supportsBidirectionalAudio])
  {
    v4 = [(HUCameraController *)self playbackEngine];
    if ([v4 engineMode])
    {
      v5 = 0;
    }

    else
    {
      v6 = [(HUCameraController *)self playbackEngine];
      v5 = [v6 timeControlStatus] == 2 && -[HUCameraController hu_playbackControlsAreVisible](self, "hu_playbackControlsAreVisible");
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
    v4 = [(HUCameraController *)self playbackEngine];
    v8[0] = 67109120;
    v8[1] = [v4 isMicrophoneEnabled] ^ 1;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Toggling microphone state:%{BOOL}d using button.", v8, 8u);
  }

  v5 = [(HUCameraController *)self playbackEngine];
  v6 = [v5 isMicrophoneEnabled];
  v7 = [(HUCameraController *)self playbackEngine];
  [v7 setMicrophoneEnabled:v6 ^ 1u];
}

- (double)portraitMicrophoneOverlapOffset
{
  v3 = [(HUCameraController *)self footerViewController];
  v4 = [v3 view];
  v5 = [(HUCameraController *)self footerViewController];
  v6 = [v5 liveButton];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(HUCameraController *)self playerViewController];
  v16 = [v15 view];
  [v4 convertRect:v16 toView:{v8, v10, v12, v14}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v38.origin.x = v18;
  v38.origin.y = v20;
  v38.size.width = v22;
  v38.size.height = v24;
  MaxX = CGRectGetMaxX(v38);
  v26 = [(HUCameraController *)self playerViewController];
  v27 = [v26 view];
  [v27 layoutMargins];
  v29 = MaxX + v28;

  v30 = [(HUCameraController *)self playerViewController];
  v31 = [v30 view];
  [v31 bounds];
  v33 = v32;
  v34 = [(HUCameraController *)self portraitMicrophoneControl];
  [v34 bounds];
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
  v3 = [(HUCameraController *)self cameraStatusView];
  v4 = [v3 superview];
  v5 = [(HUCameraController *)self cameraStatusView];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(HUCameraController *)self playerViewController];
  v15 = [v14 view];
  [v4 convertRect:v15 toView:{v7, v9, v11, v13}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v35.origin.x = v17;
  v35.origin.y = v19;
  v35.size.width = v21;
  v35.size.height = v23;
  MaxX = CGRectGetMaxX(v35);
  v25 = [(HUCameraController *)self volumeControlView];
  [v25 bounds];
  v27 = v26;

  v28 = [(HUCameraController *)self landscapeMicrophoneControl];
  [v28 frame];
  v30 = v27 + MaxX + 5.0 + v29 + 16.0;

  v31 = [(HUCameraController *)self playerViewController];
  v32 = [v31 view];
  [v32 frame];
  LOBYTE(v4) = v30 < v33;

  return v4;
}

- (void)updateMicrophoneAndSpeakerStatus
{
  if ([(HUCameraController *)self applicationIsActive])
  {
    v3 = [(HUCameraController *)self playbackEngine];
    v4 = [v3 isMicrophoneEnabled];

    v5 = [(HUCameraController *)self portraitMicrophoneControl];
    v6 = v5;
    if (v4)
    {
      [v5 setTalking:1];

      v7 = [(HUCameraController *)self landscapeMicrophoneControl];
      [v7 setTalking:1];

      v12 = [(HUCameraController *)self playerViewController];
      v8 = [v12 playerController];
      [v8 setMuted:0];
    }

    else
    {
      [v5 setTalking:0];

      v10 = [(HUCameraController *)self landscapeMicrophoneControl];
      [v10 setTalking:0];

      v12 = [(HUCameraController *)self playbackEngine];
      LODWORD(v10) = [v12 prefersAudioEnabled];
      v8 = [(HUCameraController *)self playerViewController];
      v11 = [v8 playerController];
      [v11 setMuted:v10 ^ 1];
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
  v7 = [(HUCameraController *)self playbackEngine];
  [v7 streamAudioVolume];
  v4 = v3;
  v5 = [(HUCameraController *)self playerViewController];
  v6 = [v5 playerController];
  [v6 setVolume:v4];
}

- (void)updateVolumeControlVisibility
{
  v3 = [(HUCameraController *)self savedControlItems];

  if (!v3)
  {
    v7 = [(HUCameraController *)self playbackEngine];
    v4 = [v7 shouldDisplayVolumeControls];
    v5 = [(HUCameraController *)self behavior];
    v6 = [v5 behaviorContext];
    [v6 setPlaybackControlsIncludeVolumeControls:v4];
  }
}

- (BOOL)homeHasMultipleCameraProfiles
{
  v2 = [(HUCameraController *)self home];
  v3 = [v2 hf_allCameraProfiles];
  v4 = [v3 count] > 1;

  return v4;
}

- (void)showCamera:(id)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUCameraController *)self cameraItem];
  v6 = [v5 accessory];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 uniqueIdentifier];
      *buf = 138412290;
      v59 = v9;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "Not switching camera using picker since the selected camera was the same %@.", buf, 0xCu);
    }
  }

  else
  {
    v10 = [MEMORY[0x277D14498] sharedManager];
    [v10 resetForCameraDismissal];

    v11 = [v4 cameraProfiles];
    v8 = [v11 firstObject];

    v12 = [v8 clipManager];
    v13 = [MEMORY[0x277D144F0] sharedManager];
    [v13 setClipManager:v12];

    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v56 = [(HUCameraController *)self cameraProfile];
      v15 = [v56 uniqueIdentifier];
      v16 = [(HUCameraController *)self cameraProfile];
      v17 = [v16 accessory];
      v18 = [v17 name];
      [v4 uniqueIdentifier];
      v19 = v57 = v4;
      v20 = [v8 accessory];
      v21 = [v20 name];
      *buf = 138413058;
      v59 = v15;
      v60 = 2112;
      v61 = v18;
      v62 = 2112;
      v63 = v19;
      v64 = 2112;
      v65 = v21;
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "Change camera picker from %@/%@ to %@/%@.", buf, 0x2Au);

      v4 = v57;
    }

    v22 = [HUCameraPlayerConfiguration alloc];
    v23 = [(HUCameraController *)self home];
    v24 = [(HUCameraPlayerConfiguration *)v22 initWithHome:v23 cameraProfile:v8 notificationUUID:0 clipUUID:0];

    v25 = [(HUCameraController *)self playbackEngine];
    v26 = [v25 playbackPosition];
    v27 = [v26 clipPlaybackDate];
    [(HUCameraPlayerConfiguration *)v24 setStartingPlaybackDate:v27];

    [(HUCameraController *)self setPlayerConfiguration:v24];
    v28 = HFLogForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [(HUCameraController *)self playerConfiguration];
      *buf = 138412290;
      v59 = v29;
      _os_log_impl(&dword_20CEB6000, v28, OS_LOG_TYPE_DEFAULT, "Changing camera using configuration:%@", buf, 0xCu);
    }

    v30 = objc_alloc(MEMORY[0x277D144A0]);
    v31 = [(HUCameraPlayerConfiguration *)v24 cameraProfile];
    v32 = [(HUCameraPlayerConfiguration *)v24 home];
    v33 = [v32 hf_characteristicValueManager];
    v34 = [v30 initWithProfile:v31 valueSource:v33];
    [(HUCameraController *)self setCameraItem:v34];

    v35 = [(HUCameraController *)self playbackEngine];
    -[HUCameraController setLastTimeControlStatusPriorToCameraSwap:](self, "setLastTimeControlStatusPriorToCameraSwap:", [v35 timeControlStatus]);

    v36 = [(HUCameraController *)self playbackEngine];
    [v36 pause];

    [(HUCameraController *)self removePlaybackHistoryUI];
    v37 = objc_alloc(MEMORY[0x277D144C0]);
    v38 = [(HUCameraController *)self home];
    v39 = [(HUCameraController *)self cameraProfile];
    v40 = [v37 initWithHome:v38 cameraProfile:v39];

    v41 = [(HUCameraController *)self behavior];
    [v40 setClipScrubber:v41];

    v42 = [(HUCameraController *)self playbackEngine];
    [v42 updateConfiguration:v40];

    v43 = objc_alloc(MEMORY[0x277D14B08]);
    v44 = [(HUCameraController *)self cameraItem];
    v45 = [v43 initWithDelegate:self sourceItem:v44];
    [(HUCameraController *)self setItemManager:v45];

    v46 = [v8 accessory];
    v47 = [v46 name];
    v48 = [(HUCameraController *)self cameraStatusView];
    [v48 setStatusString:v47];

    if ([(HUCameraPlayerConfiguration *)v24 isConfiguredForLiveStream])
    {
      v49 = HFLogForCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v59 = v8;
        _os_log_impl(&dword_20CEB6000, v49, OS_LOG_TYPE_DEFAULT, "Updating the live stream for camera profile:%@.", buf, 0xCu);
      }

      v50 = [(HUCameraController *)self playbackEngine];
      [v50 updateLiveStreamForCameraProfile:v8];

      v51 = [(HUCameraController *)self playbackEngine];
      [v51 play];

      v52 = [(HUCameraController *)self cameraProfile];
      v53 = [v52 hf_supportsBidirectionalAudio];

      if (v53)
      {
        v54 = [(HUCameraController *)self portraitMicrophoneConstraintSet];
        [v54 activateIfNeeded];

        v55 = [(HUCameraController *)self landscapeMicrophoneConstraintSet];
        [v55 activateIfNeeded];
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
  v3 = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [(HUCameraController *)self home];
  v5 = [v4 accessories];

  v6 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [v10 cameraProfiles];
        v12 = [v11 count];

        if (v12)
        {
          [v3 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v7);
  }

  [v3 sortUsingComparator:&__block_literal_global_164];
  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v3;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "Camera picker menu contains cameras:%@", buf, 0xCu);
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __38__HUCameraController_cameraPickerMenu__block_invoke_165;
  v21 = &unk_277DC2F98;
  v22 = self;
  v23 = v14;
  v15 = v14;
  [v3 enumerateObjectsUsingBlock:&v18];
  v16 = [MEMORY[0x277D75710] menuWithTitle:&stru_2823E0EE8 children:{v15, v18, v19, v20, v21, v22}];

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

- (void)playerViewController:(id)a3 contentViewWillTransitionToSize:(CGSize)a4 withTransitionCoordinator:(id)a5
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __101__HUCameraController_playerViewController_contentViewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v5[3] = &unk_277DB79B8;
  v5[4] = self;
  [a5 animateAlongsideTransition:v5 completion:0];
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

- (void)playerViewController:(id)a3 willTransitionToVisibilityOfPlaybackControls:(BOOL)a4 withAnimationCoordinator:(id)a5
{
  v6 = a4;
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v29) = v6;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "transitioning to visibility %d", buf, 8u);
  }

  v11 = [(HUCameraController *)self footerViewController];

  if (!v11)
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

  [(HUCameraController *)self setHu_playbackControlsAreVisible:v6];
  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v29 = v8;
    v30 = 1024;
    v31 = v6;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "Begin visibility transition for %@ visible:%{BOOL}d.", buf, 0x12u);
  }

  if (v6)
  {
    v14 = [(HUCameraController *)self clipScrubberViewController];
    v15 = [v14 displayMode];

    if (!v15)
    {
      v16 = HFLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v8;
        _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "Display AVKit controls since player is not editing.%@", buf, 0xCu);
      }

      v17 = [(HUCameraController *)self behavior];
      v18 = [v17 behaviorContext];
      [v18 setPlaybackControlsIncludeDisplayModeControls:1];

      v19 = [(HUCameraController *)self behavior];
      v20 = [v19 behaviorContext];
      [v20 setPlaybackControlsIncludeVolumeControls:1];
    }
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __113__HUCameraController_playerViewController_willTransitionToVisibilityOfPlaybackControls_withAnimationCoordinator___block_invoke;
  v26[3] = &unk_277DB7EE0;
  v26[4] = self;
  v27 = v6;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __113__HUCameraController_playerViewController_willTransitionToVisibilityOfPlaybackControls_withAnimationCoordinator___block_invoke_2;
  v22[3] = &unk_277DC2FC0;
  v25 = v6;
  v23 = v8;
  v24 = self;
  v21 = v8;
  [v9 addCoordinatedAnimations:v26 completion:v22];
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

- (void)playerViewController:(id)a3 willBeginFullScreenPresentationWithAnimationCoordinator:(id)a4
{
  v5 = a4;
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
  [v5 animateAlongsideTransition:0 completion:v7];
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

- (id)playerViewController:(id)a3 targetViewForDismissalAnimationWithProposedTargetView:(id)a4
{
  [(HUCameraController *)self setIsDismissingViewController:1, a4];
  v5 = [(HUCameraController *)self dayLabel];
  [v5 setAlpha:0.0];

  v6 = [(HUCameraController *)self timeLabel];
  [v6 setAlpha:0.0];

  v7 = [(HUCameraController *)self tipView];
  [v7 setAlpha:0.0];

  v8 = [(HUCameraController *)self cameraDelegate];
  v9 = [(HUCameraController *)self cameraProfile];
  v10 = [v8 targetViewForDismissingCameraProfile:v9];

  return v10;
}

- (void)playerViewController:(id)a3 willEndFullScreenPresentationWithAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v16 = self;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__HUCameraController_playerViewController_willEndFullScreenPresentationWithAnimationCoordinator___block_invoke;
  v10[3] = &unk_277DB79B8;
  v10[4] = v16;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __97__HUCameraController_playerViewController_willEndFullScreenPresentationWithAnimationCoordinator___block_invoke_2;
  v9[3] = &unk_277DC2FE8;
  v9[4] = v16;
  v9[5] = buf;
  [v7 animateAlongsideTransition:v10 completion:v9];
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
  v3 = [MEMORY[0x277D148A8] sharedInstance];
  [v3 addObserver:self];

  [(HUCameraController *)self setupTipsObserver];
}

- (void)_didEndPlayerViewControllerPresentation
{
  [(HUCameraController *)self _submitTimelinePinchToZoomEvent];
  v3 = [MEMORY[0x277D148A8] sharedInstance];
  [v3 removeObserver:self];

  [(HUCameraController *)self tearDownTipsObserver];
  [(HUCameraController *)self cleanUpIdleTimerState];
  v5 = [(HUCameraController *)self cameraDelegate];
  v4 = [(HUCameraController *)self cameraProfile];
  [v5 didDismissCameraController:self forProfile:v4];
}

- (void)setPipState:(unint64_t)a3
{
  if (a3 == 3)
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

      v10 = [(HUCameraController *)self playbackEngine];
      [v10 play];
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
      v11 = [(HUCameraController *)self playerViewController];
      v12 = [v11 presentingViewController];
      v13 = [v12 hu_dismissViewControllerAnimated:0];

      [(HUCameraController *)self _didEndPlayerViewControllerPresentation];
      v10 = HFLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "PIP State: App was backgrounded, killing everything", v14, 2u);
      }
    }
  }

LABEL_15:
  self->_pipState = a3;
}

- (void)_resetStateAfterPIP
{
  v3 = [(HUCameraController *)self playerViewController];
  [v3 setAllowsPictureInPicturePlayback:1];

  v4 = [(HUCameraController *)self playbackEngine];
  [v4 setPictureInPictureModeActive:0];

  v8 = [(HUCameraController *)self behavior];
  v5 = [v8 behaviorContext];
  v6 = [v5 isMicrophoneEnabled];
  v7 = [(HUCameraController *)self playbackEngine];
  [v7 setMicrophoneEnabled:v6];
}

- (void)playerViewControllerWillStartPictureInPicture:(id)a3
{
  v4 = [(HUCameraController *)self playerViewController];
  v5 = [v4 view];
  [v5 setUserInteractionEnabled:0];

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "PIP: playerViewControllerWillStartPictureInPicture.", v14, 2u);
  }

  v7 = [(HUCameraController *)self cameraProfile];
  v8 = [v7 hf_supportsBidirectionalAudio];

  if (v8)
  {
    v9 = [(HUCameraController *)self playbackEngine];
    v10 = [v9 isMicrophoneEnabled];
    v11 = [(HUCameraController *)self behavior];
    v12 = [v11 behaviorContext];
    [v12 setMicrophoneEnabled:v10];
  }

  else
  {
    v9 = [(HUCameraController *)self behavior];
    v11 = [v9 behaviorContext];
    [v11 setHasMicrophone:0];
  }

  v13 = [(HUCameraController *)self playbackEngine];
  [v13 play];
}

- (void)playerViewControllerDidStartPictureInPicture:(id)a3
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "PIP: playerViewControllerDidStartPictureInPicture.", v6, 2u);
  }

  v5 = [(HUCameraController *)self playbackEngine];
  [v5 setPictureInPictureModeActive:1];

  [(HUCameraController *)self setPipState:1];
  [(HUCameraController *)self _showPictureInPicturePlaybackErrorIfNeeded];
}

- (void)playerViewController:(id)a3 failedToStartPictureInPictureWithError:(id)a4
{
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "PIP: failedToStartPictureInPictureWithError. ", v7, 2u);
  }

  v6 = [(HUCameraController *)self playbackEngine];
  [v6 setPictureInPictureModeActive:0];
}

- (void)playerViewControllerWillStopPictureInPicture:(id)a3
{
  v4 = [(HUCameraController *)self playerViewController];
  v5 = [v4 view];
  [v5 setUserInteractionEnabled:1];

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "PIP: playerViewControllerWillStopPictureInPicture.", v9, 2u);
  }

  v7 = [(HUCameraController *)self liveContentViewController];
  v8 = [v7 cameraView];
  [v8 setErrorContent:0];
}

- (void)playerViewControllerDidStopPictureInPicture:(id)a3
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

- (BOOL)playerViewControllerShouldAutomaticallyDismissAtPictureInPictureStart:(id)a3
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "PIP: playerViewControllerShouldAutomaticallyDismissAtPictureInPictureStart.", v5, 2u);
  }

  return 0;
}

- (void)playerViewController:(id)a3 restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = self;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "PIP: restoreUserInterfaceForPictureInPictureStopWithCompletionHandler %@ vs %@", &v9, 0x16u);
  }

  [(HUCameraController *)self setPipState:2];
  v7[2](v7, 1);
}

- (void)updatePIPBehaviorForDeviceAndConfiguration
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75418] currentDevice];
  if ([v3 userInterfaceIdiom])
  {
    v4 = [(HUCameraController *)self playerViewController];
    v5 = [v4 traitCollection];
    v6 = [v5 hu_hasExtendedWidth];

    v7 = v6 ^ 1;
  }

  else
  {

    v6 = 0;
    v7 = 1;
  }

  v8 = [(HUCameraController *)self behavior];
  v9 = [v8 behaviorContext];
  [v9 setCanStartPictureInPictureAutomaticallyWhenEnteringBackground:v6];

  v10 = [(HUCameraController *)self behavior];
  v11 = [v10 behaviorContext];
  [v11 setPlaybackControlsIncludePictureInPictureButton:v7];

  if (-[HUCameraController shouldDisableLiveStreamAfterCameraStatusChange](self, "shouldDisableLiveStreamAfterCameraStatusChange") || (-[HUCameraController cameraProfile](self, "cameraProfile"), v12 = objc_claimAutoreleasedReturnValue(), [v12 accessory], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isReachable"), v13, v12, (v14 & 1) == 0))
  {
    v15 = HFLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(HUCameraController *)self cameraProfile];
      v17 = [v16 accessory];
      v24[0] = 67109120;
      v24[1] = [v17 isReachable];
      _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "PIP: Unable to display PIP when live stream is disabled. Camera is reachable:%{BOOL}d.", v24, 8u);
    }

    v18 = [(HUCameraController *)self behavior];
    v19 = [v18 behaviorContext];
    [v19 setCanStartPictureInPictureAutomaticallyWhenEnteringBackground:0];

    v20 = [(HUCameraController *)self behavior];
    v21 = [v20 behaviorContext];
    [v21 setPlaybackControlsIncludePictureInPictureButton:0];
  }

  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    v22 = [(HUCameraController *)self behavior];
    v23 = [v22 behaviorContext];
    [v23 setPlaybackControlsIncludePictureInPictureButton:0];
  }
}

- (void)playbackEngine:(id)a3 didUpdateClipPlayer:(id)a4
{
  v5 = a3;
  v6 = [(HUCameraController *)self timelapseController];
  [v6 resetForNewCamera];

  v7 = [v5 playbackPosition];

  [(HUCameraController *)self updateStateForPlaybackPosition:v7 animated:1];
}

- (void)playbackEngine:(id)a3 didUpdatePlaybackPosition:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 engineModeDescription];
    v10 = [v6 timelineStateDescription];
    v11 = [v6 timeControlStatusDescription];
    v33 = 138413058;
    v34 = v7;
    v35 = 2112;
    v36 = v9;
    v37 = 2112;
    v38 = v10;
    v39 = 2112;
    v40 = v11;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "Camera Player didUpdate playbackPosition:%@ engineMode:%@ timelineState:%@ timeControlStatus:%@.", &v33, 0x2Au);
  }

  [(HUCameraController *)self updateStateForPlaybackPosition:v7 animated:1];
  if ([v6 engineMode])
  {
    [(HUCameraController *)self updateCameraPlayerForEventPlaybackPosition:v7];
    v12 = [(HUCameraController *)self playbackEngine];
    v13 = [v12 isScrubbing];

    if (v13)
    {
      v14 = [(HUCameraController *)self playbackEngine];
      if ([v14 timelineState] == 2)
      {

LABEL_13:
        objc_opt_class();
        v21 = [(HUCameraController *)self playbackEngine];
        v22 = [v21 currentClip];
        if (objc_opt_isKindOfClass())
        {
          v23 = v22;
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
            v27 = [(HUCameraController *)self playbackEngine];
            v28 = [v27 currentClip];
            v29 = [v28 hf_hasInsufficientAnalysis];

            if (v29)
            {
              [(HUCameraController *)self setFoundCameraClipWithInsufficientAnalysis:1];
            }
          }

          goto LABEL_23;
        }

        v24 = [(HUCameraController *)self timelapseController];
        v25 = [(HUCameraController *)self playbackEngine];
        v26 = [v25 currentClip];
        [v24 updateToPlaybackPosition:v7 forHighQualityClip:v26];

LABEL_19:
        goto LABEL_20;
      }

      v19 = [(HUCameraController *)self playbackEngine];
      v20 = [v19 scrubbingSpeed];

      if (v20 == 2)
      {
        goto LABEL_13;
      }
    }

    v24 = [(HUCameraController *)self timelapseController];
    [v24 pauseTimelapseScrubbing];
    goto LABEL_19;
  }

  v15 = [(HUCameraController *)self accessoryViewController];
  [v15 setCanShowOverlayContent:1];

  [(HUCameraController *)self displayCurrentTimeAndDate];
  v16 = [(HUCameraController *)self playbackEngine];
  if ([v16 timeControlStatus] == 2)
  {
    v17 = [(HUCameraController *)self hu_playbackControlsAreVisible];

    if (v17)
    {
      [(HUCameraController *)self updateMicrophoneControlVisibility];
    }
  }

  else
  {
  }

  v18 = [(HUCameraController *)self timelapseController];
  [v18 hideAllViews];

LABEL_23:
  v30 = [(HUCameraController *)self diagnosticsController];

  if (v30)
  {
    v31 = [(HUCameraController *)self diagnosticsController];
    v32 = [(HUCameraController *)self playbackEngine];
    [v31 updateWithPlaybackEngine:v32];
  }
}

- (void)updateCameraPlayerForEventPlaybackPosition:(id)a3
{
  v4 = a3;
  [(HUCameraController *)self cancelLiveTimer];
  v5 = [(HUCameraController *)self portraitMicrophoneControl];
  [v5 setAlpha:0.0];

  v6 = [(HUCameraController *)self landscapeMicrophoneControl];
  [v6 setAlpha:0.0];

  v7 = [v4 clipPlaybackDate];

  if (v7)
  {
    v8 = [(HUCameraController *)self dateDisplayController];
    [v8 updateDisplayDateWithDate:v7 forType:0];
  }

  else
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_ERROR, "Missing date for current position. Unable to update time/date labels.", v9, 2u);
    }
  }
}

- (void)playbackEngine:(id)a3 didUpdateLiveCameraSource:(id)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a4;
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
      v8 = v5;
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Application is not active. Bypassing live camera source updates for sourc:%@.", &v7, 0xCu);
    }
  }
}

- (void)playbackEngine:(id)a3 didUpdateTimeControlStatus:(unint64_t)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HUCameraController *)self launchEvent];

  if (a4 == 2 && v7)
  {
    v8 = [(HUCameraController *)self playerConfiguration];
    v9 = [v8 startingPlaybackDate];

    v10 = HFLogForCategory();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "Send Clip playback launch event after time control update.", &v19, 2u);
      }

      v12 = [v6 currentClip];
      v13 = [(HUCameraController *)self launchEvent];
      [v13 setCameraClip:v12];

      v14 = [(HUCameraController *)self launchEvent];
      [v14 launchedRecordingWithError:0];
    }

    else
    {
      if (v11)
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "Send Live Stream launch event after time control update.", &v19, 2u);
      }

      v14 = [(HUCameraController *)self launchEvent];
      [v14 launchedStreamWithError:0];
    }

    [(HUCameraController *)self setLaunchEvent:0];
  }

  else if (a4 - 1 > 1)
  {
LABEL_17:
    v17 = [(HUCameraController *)self footerViewController];
    v18 = [v17 liveButton];
    [v18 setHidden:a4 != 2];

    [(HUCameraController *)self updateBlurWithPlaybackEngine:v6];
    [(HUCameraController *)self updateIdleTimer];
    [(HUCameraController *)self updateIndicatorColor];
    [(HUCameraController *)self updateMicrophoneControls];
    [(HUCameraController *)self updateVolumeControlVisibility];
    if ([v6 isLiveStreaming])
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

  v15 = [(HUCameraController *)self timelapseController];
  [v15 hideAllViews];

  if (![(HUCameraController *)self displayingDetailsViewController])
  {
    goto LABEL_17;
  }

  v16 = HFLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = self;
    _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "%@ Preventing timeControlStatus update while displaying settings", &v19, 0xCu);
  }

LABEL_20:
}

- (void)playbackEngine:(id)a3 didUpdatePlaybackError:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HUCameraController_playbackEngine_didUpdatePlaybackError___block_invoke;
  block[3] = &unk_277DB8810;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)playbackEngine:(id)a3 didUpdateTimelineState:(unint64_t)a4
{
  v7 = a3;
  if (a4 == 4 && ![v7 timeControlStatus])
  {
    [(HUCameraController *)self updateCanShowOverlayState];
  }

  else
  {
    v6 = [(HUCameraController *)self accessoryViewController];
    [v6 setCanShowOverlayContent:0];
  }

  [(HUCameraController *)self updateBlurWithPlaybackEngine:v7];
}

- (void)playbackEngine:(id)a3 didUpdateEventCache:(id)a4
{
  v5 = [a4 removedIdentifiers];
  if ([v5 count])
  {
    v6 = [(HUCameraController *)self hasRecordedClips];

    if (!v6)
    {
      [(HUCameraController *)self removePlaybackHistoryUI];
      [(HUCameraController *)self dismissEditInterface];
      v8 = [MEMORY[0x277D144D0] livePosition];
      v7 = [(HUCameraController *)self playbackEngine];
      [v7 setPlaybackPosition:v8];

      return;
    }
  }

  else
  {
  }

  [(HUCameraController *)self _updateRecordedClipInterfaceAvailabilityWithAnimation:1];
}

- (void)playbackEngine:(id)a3 didUpdateMicrophoneEnabled:(BOOL)a4
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = [v5 isMicrophoneEnabled];
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Playback engine did update microphone enabled:%{BOOL}d.", v7, 8u);
  }

  [(HUCameraController *)self updateMicrophoneAndSpeakerStatus];
}

- (void)pauseEngineIfNeeded
{
  v3 = [(HUCameraController *)self playbackEngine];
  if ([v3 engineMode])
  {
  }

  else
  {
    v4 = [(HUCameraController *)self playbackEngine];
    v5 = [v4 isMicrophoneEnabled];

    if (v5)
    {
      [(HUCameraController *)self toggleMicrophoneState];
    }
  }

  v6 = [(HUCameraController *)self playbackEngine];
  [v6 pause];
}

- (void)updateBlurWithPlaybackEngine:(id)a3
{
  v4 = a3;
  v5 = [(HUCameraController *)self blurViewController];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__HUCameraController_updateBlurWithPlaybackEngine___block_invoke;
  v6[3] = &unk_277DB8C28;
  v6[4] = self;
  [v5 updateBlurWithPlaybackEngine:v4 completionHandler:v6];
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

- (double)currentScrubberResolutionForBehavior:(id)a3
{
  v3 = [(HUCameraController *)self clipScrubberViewController];
  [v3 currentScrubberResolution];
  v5 = v4;

  return v5;
}

- (void)playbackControlsDidToggleMuted:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(HUCameraController *)self cameraProfile];
  if (([v5 hf_supportsBidirectionalAudio] & 1) == 0)
  {

    goto LABEL_5;
  }

  v6 = [(HUCameraController *)self playbackEngine];
  v7 = [v6 isMicrophoneEnabled];

  if ((v7 & 1) == 0)
  {
LABEL_5:
    v8 = [(HUCameraController *)self playbackEngine];
    [v8 setPrefersAudioEnabled:!v3];
  }

  if ([MEMORY[0x277D14CE8] isAMac])
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(HUCameraController *)self playbackEngine];
      [v10 streamAudioVolume];
      v14 = 134217984;
      v15 = v11;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Forcing volume update to %.02f.", &v14, 0xCu);
    }

    v12 = [(HUCameraController *)self playbackEngine];
    v13 = [(HUCameraController *)self playbackEngine];
    [v13 streamAudioVolume];
    [v12 setStreamAudioVolume:?];
  }
}

- (void)playbackControlsDidUpdateVisibilityOfLoadingIndicator:(BOOL)a3
{
  v3 = a3;
  v4 = [(HUCameraController *)self accessoryViewController];
  [v4 setShouldShowLoadingIndicatorForClipPlayback:v3];
}

- (void)pictureInPictureDidToggleMicrophone
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(HUCameraController *)self playbackEngine];
  v4 = [v3 isMicrophoneEnabled];
  v5 = [(HUCameraController *)self playbackEngine];
  [v5 setMicrophoneEnabled:v4 ^ 1u];

  v6 = [(HUCameraController *)self playbackEngine];
  v7 = [v6 isMicrophoneEnabled];
  v8 = [(HUCameraController *)self behavior];
  v9 = [v8 behaviorContext];
  [v9 setMicrophoneEnabled:v7];

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(HUCameraController *)self playbackEngine];
    v12[0] = 67109120;
    v12[1] = [v11 isMicrophoneEnabled];
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "Toggled microphone state on: %{BOOL}d.", v12, 8u);
  }
}

- (void)playbackControlsDidChangePlayerVolume:(float)a3
{
  v5 = [(HUCameraController *)self playbackEngine];
  *&v4 = a3;
  [v5 setStreamAudioVolume:v4];
}

- (id)finishPresentation:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 conformsToProtocol:&unk_2824C3AE0])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v8 requiresPresentingViewControllerDismissal];

  if (v9)
  {
    v10 = [(HUCameraController *)self playerViewController];
    v11 = [v10 presentingViewController];

    if (v11)
    {
      v12 = [(HUCameraController *)self playerViewController];
      v13 = [v12 presentingViewController];
      v14 = [v13 hu_dismissViewControllerAnimated:v4];

      goto LABEL_16;
    }
  }

  [(HUCameraController *)self setDisplayingDetailsViewController:0];
  v15 = [(HUCameraController *)self liveContentViewController];
  v16 = [v15 view];
  [v16 setHidden:0];

  v17 = [(HUCameraController *)self playerViewController];
  [v17 setAllowsPictureInPicturePlayback:1];

  if ([(HUCameraController *)self hasRecordedClips])
  {
    v18 = [(HUCameraController *)self footerViewController];
    v19 = [v18 view];
    [v19 setHidden:1];
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

    v18 = [MEMORY[0x277D144D0] livePosition];
    v19 = [(HUCameraController *)self playbackEngine];
    [v19 setPlaybackPosition:v18];
  }

  v21 = [(HUCameraController *)self playbackEngine];
  if (![v21 engineMode])
  {
    v22 = [(HUCameraController *)self playbackEngine];
    v23 = [v22 timeControlStatus];

    if (v23)
    {
      goto LABEL_15;
    }

    v21 = [(HUCameraController *)self playbackEngine];
    [v21 play];
  }

LABEL_15:
  v12 = [(HUCameraController *)self playerViewController];
  v14 = [v12 hu_dismissViewControllerAnimated:v4];
LABEL_16:

  return v14;
}

- (void)itemManager:(id)a3 didUpdateResultsForSourceItem:(id)a4
{
  v5 = a4;
  v6 = [(HUCameraController *)self cameraItem];
  v7 = [v5 isEqual:v6];

  if (v7)
  {

    [(HUCameraController *)self updateCameraStatus];
  }
}

- (void)toggleDemoModeLiveStreamVideo:(BOOL)a3
{
  v4 = !a3;
  v5 = [(HUCameraController *)self demoPlayerView];
  [v5 setHidden:v4];

  v6 = [(HUCameraController *)self demoModeQueuePlayer];
  v7 = v6;
  if (v4)
  {
    [v6 pause];
  }

  else
  {
    [v6 play];
  }
}

- (void)displayCurrentTimeAndDate
{
  v4 = [MEMORY[0x277CBEAA8] date];
  v3 = [(HUCameraController *)self dateDisplayController];
  [v3 updateDisplayDateWithDate:v4 forType:1];
}

- (void)startLiveTimer
{
  v3 = [(HUCameraController *)self liveTimer];

  if (!v3)
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
  v3 = [(HUCameraController *)self liveTimer];

  if (v3)
  {
    v4 = [(HUCameraController *)self liveTimer];
    [v4 invalidate];

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

    v6 = [MEMORY[0x277D75348] systemWhiteColor];
    [(UILabel *)v4 setTextColor:v6];

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
    v6 = [MEMORY[0x277D75348] systemWhiteColor];
    [(UILabel *)v4 setTextColor:v6];

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
    v5 = [(HUCameraController *)self dayLabel];
    v6 = [(HUCameraController *)self timeLabel];
    v7 = [(HUCameraDateDisplayController *)v4 initWithDayOfWeekLabel:v5 timeLabel:v6];

    v8 = self->_dateDisplayController;
    self->_dateDisplayController = v7;

    dateDisplayController = self->_dateDisplayController;
  }

  return dateDisplayController;
}

- (UIView)volumeControlView
{
  v2 = [(HUCameraController *)self playerViewController];
  v3 = [v2 customControlsView];
  v4 = [v3 volumeControlsAreaLayoutGuide];
  v5 = [v4 owningView];

  return v5;
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
    v6 = [MEMORY[0x277D75348] systemBlackColor];
    [(UIView *)v5 setBackgroundColor:v6];

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
    v5 = [(HUCameraController *)self cameraProfile];
    v6 = [v5 accessory];
    v7 = [v6 name];
    [(HUCameraStatusOverlayView *)v4 setStatusString:v7];

    v8 = [(HUCameraController *)self cameraProfile];
    v9 = [v8 userSettings];
    v10 = [v9 hu_indicatorColorForCurrentAccessMode];
    [(HUCameraStatusOverlayView *)v4 setStatusColor:v10];

    v11 = [(HUCameraController *)self cameraProfile];
    v12 = [v11 userSettings];
    v13 = [v12 hu_indicatorImageNameForCurrentAccessMode];
    [(HUCameraStatusOverlayView *)v4 setStatusImageName:v13];

    [(HUCameraStatusOverlayView *)v4 setIsDisplayingForSingleCamera:[(HUCameraController *)self homeHasMultipleCameraProfiles]^ 1];
    v14 = self->_cameraStatusView;
    self->_cameraStatusView = v4;

    cameraStatusView = self->_cameraStatusView;
  }

  return cameraStatusView;
}

- (void)handleSceneDidActivate:(id)a3
{
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Camera player - Scene did become active.", buf, 2u);
  }

  v6 = [v4 object];

  v7 = [(AVPlayerViewController *)self->_playerViewController view];
  v8 = [v7 window];
  v9 = [v8 windowScene];

  if ([v6 isEqual:v9])
  {
    [(HUCameraController *)self setApplicationIsActive:1];
    v10 = [(HUCameraController *)self playbackEngine];
    v11 = [v10 isPictureInPictureModeActive];

    if (v11)
    {
      v12 = [(HUCameraController *)self playerViewController];
      [v12 setAllowsPictureInPicturePlayback:0];

      v13 = [(HUCameraController *)self playbackEngine];
      [v13 setPictureInPictureModeActive:0];
    }

    v14 = [(HUCameraController *)self shouldResumePlaying];
    v15 = HFLogForCategory();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        *v20 = 0;
        _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "Camera Player scene did become active. Resuming clip playback because shouldResumePlaying is true", v20, 2u);
      }

      [(HUCameraController *)self setShouldResumePlaying:0];
      v17 = [(HUCameraController *)self playbackEngine];
      [v17 play];
    }

    else
    {
      if (v16)
      {
        *v19 = 0;
        _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "Camera Player scene did become active. Pausing clip playback because shouldResumePlaying is false", v19, 2u);
      }

      v17 = [(HUCameraController *)self playbackEngine];
      [v17 pause];
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

- (void)handleSceneWillDeactivate:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(HUCameraController *)self playbackEngine];
    v18 = 134217984;
    v19 = [v6 timeControlStatus];
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Camera player - Scene will deactivate, time control status %lu", &v18, 0xCu);
  }

  v7 = [v4 object];

  v8 = [(AVPlayerViewController *)self->_playerViewController view];
  v9 = [v8 window];
  v10 = [v9 windowScene];

  if ([v7 isEqual:v10])
  {
    [(HUCameraController *)self _submitTimelinePinchToZoomEvent];
    [(HUCameraController *)self setApplicationIsActive:0];
    v11 = [(HUCameraController *)self playbackEngine];
    if ([v11 timeControlStatus] == 2)
    {
    }

    else
    {
      v13 = [(HUCameraController *)self playbackEngine];
      v14 = [v13 timeControlStatus];

      if (v14 != 1)
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
      v16 = [(HUCameraController *)self playbackEngine];
      [v16 pause];

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
  v3 = [(HUCameraController *)self playbackEngine];
  v4 = [v3 timeControlStatus];

  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v4 == 2;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Should disable idle timer:%{BOOL}d", v7, 8u);
  }

  v6 = +[HUApplicationManager sharedInstance];
  [v6 setIdleTimerDisabled:v4 == 2 forRequester:self];
}

- (void)networkDidBecomeUnavailable
{
  v5 = [(HUCameraController *)self cameraItem];
  v3 = [v5 accessory];
  if ([v3 isReachable])
  {
  }

  else
  {
    v4 = [MEMORY[0x277D14CE8] isInAirplaneMode];

    if (v4)
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
    v4 = [(HUCameraController *)self clipScrubberViewController];
    v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(v4, "pinchGestureCount")}];
    v12[0] = v5;
    v11[1] = *MEMORY[0x277D134D8];
    v6 = MEMORY[0x277CCABB0];
    v7 = [(HUCameraController *)self clipScrubberViewController];
    v8 = [v6 numberWithInt:{objc_msgSend(v7, "pinchGestureCount") != 0}];
    v12[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

    [MEMORY[0x277D143D8] sendEvent:57 withData:v9];
    v10 = [(HUCameraController *)self clipScrubberViewController];
    [v10 resetPinchGestureCount];
  }
}

- (void)updateUnanalyzedCameraClipTip
{
  if ([(HUCameraController *)self foundCameraClipWithInsufficientAnalysis])
  {
    v3 = [(HUCameraController *)self clipScrubberViewController];
    v4 = [v3 view];
    [v4 alpha];
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
  v3 = [(HUCameraController *)self playbackEngine];
  v4 = [v3 liveCameraSource];
  [v4 aspectRatio];
  if (v5 == 0.0)
  {
    v6 = 1.77777778;
  }

  else
  {
    v6 = v5;
  }

  v8 = [(HUCameraController *)self behavior];
  v7 = [v8 behaviorContext];
  [v7 setLivePreviewAspectRatio:{v6, 1.0}];
}

- (void)updatePlaceholderContent
{
  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    v3 = [(HUCameraController *)self placeholderContentViewController];
    [v3 setCameraPlayerHasContentToShow:0];

    v6 = [(HUCameraController *)self placeholderContentViewController];
    v4 = [v6 view];
    [v4 setHidden:1];
  }

  else
  {
    v6 = [(HUCameraController *)self playerViewController];
    v5 = [v6 isReadyForDisplay];
    v4 = [(HUCameraController *)self placeholderContentViewController];
    [v4 setCameraPlayerHasContentToShow:v5];
  }
}

- (void)_displayAirplaneModeAlert
{
  v3 = [(HUCameraController *)self airplaneAlertController];

  if (!v3)
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
    v14 = [(HUCameraController *)self playerViewController];
    [v14 presentViewController:v7 animated:1 completion:0];

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
  v3 = [(HUCameraController *)self playbackEngine];
  v4 = [v3 playbackPosition];
  v5 = [MEMORY[0x277D144D0] livePosition];
  v6 = [v4 isEqual:v5];

  result = 1;
  if ((v6 & 1) == 0)
  {
    v8 = [(HUCameraController *)self playerConfiguration];
    v9 = [v8 startingPlaybackDate];

    if (!v9)
    {
      return 0;
    }

    v10 = [(HUCameraController *)self playbackEngine];
    v11 = [v10 currentClip];

    if (!v11)
    {
      return 0;
    }

    v12 = [(HUCameraController *)self playbackEngine];
    v13 = [v12 currentClip];
    v14 = [v13 hf_dateInterval];
    v15 = [(HUCameraController *)self playerConfiguration];
    v16 = [v15 startingPlaybackDate];
    v17 = [v14 hf_searchResultForDate:v16];

    if (v17 != 1)
    {
      return 0;
    }
  }

  return result;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  if (HUCameraControllerReadyForDisplayContext == a6)
  {
    v12 = a4;
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v10;
      _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "observed value :%@", buf, 0xCu);
    }

    v14 = [(HUCameraController *)self volumeControlView];
    v15 = [v12 isEqual:v14];

    if (v15)
    {
      [(HUCameraController *)self updateMicrophoneControls];
    }

    else if (([v10 isEqual:@"videoBounds"] & 1) != 0 || objc_msgSend(v10, "isEqual:", @"bounds"))
    {
      v16 = [(HUCameraController *)self playerViewController];
      [v16 videoBounds];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      if (v22 > 1.0 && v24 > 1.0)
      {
        v25 = [(HUCameraController *)self timelapseController];
        [v25 updateVideoBounds:{v18, v20, v22, v24}];

        v26 = [MEMORY[0x277D14498] sharedManager];
        [v26 setVideoSize:{v22, v24}];
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
    v11 = a4;
    [(HUCameraController *)&v27 observeValueForKeyPath:v10 ofObject:v11 change:a5 context:a6];
  }
}

- (void)_showPictureInPicturePlaybackErrorIfNeeded
{
  v3 = [(HUCameraController *)self playbackEngine];
  v4 = [v3 isPictureInPictureModeActive];

  if (v4)
  {
    v5 = [(HUCameraController *)self cameraProfile];
    if ([v5 hf_shouldDisableLiveStream])
    {
      v6 = 1;
    }

    else
    {
      v7 = [(HUCameraController *)self cameraProfile];
      v8 = [v7 hf_cameraManager];
      v9 = [v8 cachedStreamError];
      v6 = v9 != 0;
    }

    v10 = [(HUCameraController *)self cameraProfile];
    v11 = [v10 hf_supportsBidirectionalAudio];

    if (v11)
    {
      v12 = [(HUCameraController *)self behavior];
      v13 = [v12 behaviorContext];
      [v13 setHasMicrophone:!v6];

      v14 = [(HUCameraController *)self playbackEngine];
      LODWORD(v13) = [v14 isMicrophoneEnabled];

      v15 = [(HUCameraController *)self behavior];
      v16 = [v15 behaviorContext];
      [v16 setMicrophoneEnabled:!v6 & v13];
    }

    v20 = [HUCameraErrorContent errorWithTitle:0 description:0];
    v17 = [(HUCameraController *)self liveContentViewController];
    v18 = [v17 cameraView];
    if (v6)
    {
      v19 = v20;
    }

    else
    {
      v19 = 0;
    }

    [v18 setErrorContent:v19];
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
  v2 = [(HUCameraController *)self audioSessionQueue];
  dispatch_async(v2, &__block_literal_global_268_0);
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
  v2 = [(HUCameraController *)self audioSessionQueue];
  dispatch_async(v2, &__block_literal_global_270);
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
    v14 = self;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@ dealloc", buf, 0xCu);
  }

  [(HUCameraController *)self disableAudioSession];
  v4 = [(HUCameraController *)self playerViewController];
  [v4 setDelegate:0];

  [(HUCameraController *)self cleanUpConstraintSets];
  [(HUCameraController *)self tearDownTipsObserver];
  v5 = [MEMORY[0x277D14498] sharedManager];
  [v5 resetForCameraDismissal];

  v6 = [MEMORY[0x277D144F0] sharedManager];
  [v6 setClipManager:0];

  if ([(HUCameraController *)self isObservingReadyForDisplay])
  {
    v7 = [(HUCameraController *)self playerViewController];
    [v7 removeObserver:self forKeyPath:@"readyForDisplay"];

    v8 = [(HUCameraController *)self playerViewController];
    [v8 removeObserver:self forKeyPath:@"videoBounds"];

    v9 = [(HUCameraController *)self volumeControlView];
    [v9 removeObserver:self forKeyPath:@"bounds"];

    v10 = [(HUCameraController *)self playerViewController];
    v11 = [v10 customControlsView];
    [v11 removeObserver:self forKeyPath:@"bounds"];
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
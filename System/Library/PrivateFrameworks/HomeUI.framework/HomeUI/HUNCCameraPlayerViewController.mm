@interface HUNCCameraPlayerViewController
- (BOOL)_shouldAutoPlayOnViewAppearance;
- (BOOL)shouldDisplayMicrophoneControl;
- (HMCameraClip)currentClip;
- (HUCameraLiveButtonView)liveButtonView;
- (HUNCCameraPlayerViewController)initWithCameraProfile:(id)profile notificationUUID:(id)d clipUUID:(id)iD imageURL:(id)l;
- (double)currentScrubberResolutionForBehavior:(id)behavior;
- (id)home;
- (void)_setupConstraintSets;
- (void)_setupPlaybackEngine;
- (void)_updateCameraStatus;
- (void)_updateLivePreviewAspectRatio;
- (void)_updatePlayerVolumeSliderState;
- (void)_updateRecordedClipInterfaceAvailabilityWithAnimation:(BOOL)animation;
- (void)_updateStateForPlaybackPosition:(id)position animated:(BOOL)animated;
- (void)_updateStateForScrubbingStatus:(BOOL)status animated:(BOOL)animated;
- (void)addPlaybackEngineObservation;
- (void)dealloc;
- (void)itemManager:(id)manager didUpdateResultsForSourceItem:(id)item;
- (void)loadCameraClip;
- (void)playbackControlsDidChangePlayerVolume:(float)volume;
- (void)playbackControlsDidToggleMuted:(BOOL)muted;
- (void)playbackControlsDidUpdateVisibilityOfLoadingIndicator:(BOOL)indicator;
- (void)playbackEngine:(id)engine didUpdateEventCache:(id)cache;
- (void)playbackEngine:(id)engine didUpdateLiveCameraSource:(id)source;
- (void)playbackEngine:(id)engine didUpdatePlaybackError:(id)error;
- (void)playbackEngine:(id)engine didUpdatePlaybackPosition:(id)position;
- (void)playbackEngine:(id)engine didUpdateTimeControlStatus:(unint64_t)status;
- (void)playerViewController:(id)controller willTransitionToVisibilityOfPlaybackControls:(BOOL)controls withAnimationCoordinator:(id)coordinator;
- (void)reloadAfterNotificationUpdate;
- (void)reloadForCurrentClip;
- (void)toggleLive;
- (void)toggleMicrophoneState;
- (void)updateLiveButton;
- (void)updateMicrophone;
- (void)updateMicrophoneVisibility;
- (void)updateViewConstraints;
- (void)updateVolumeControlVisibility;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation HUNCCameraPlayerViewController

- (HUNCCameraPlayerViewController)initWithCameraProfile:(id)profile notificationUUID:(id)d clipUUID:(id)iD imageURL:(id)l
{
  v58 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  dCopy = d;
  iDCopy = iD;
  lCopy = l;
  v51.receiver = self;
  v51.super_class = HUNCCameraPlayerViewController;
  v15 = [(HUNCCameraPlayerViewController *)&v51 init];
  if (v15)
  {
    v16 = HFLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v53 = v15;
      v54 = 2112;
      v55 = dCopy;
      v56 = 2112;
      v57 = iDCopy;
      _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "(NC) Launching Camera Player <%p> for notificationUUID:%@ clipUUID:%@", buf, 0x20u);
    }

    v17 = objc_alloc_init(MEMORY[0x277D14458]);
    launchEvent = v15->_launchEvent;
    v15->_launchEvent = v17;

    objc_storeStrong(&v15->_cameraProfile, profile);
    objc_storeStrong(&v15->_notificationUUID, d);
    objc_storeStrong(&v15->_clipUUID, iD);
    v19 = objc_alloc(MEMORY[0x277D144A0]);
    accessory = [profileCopy accessory];
    home = [accessory home];
    hf_characteristicValueManager = [home hf_characteristicValueManager];
    v23 = [v19 initWithProfile:profileCopy valueSource:hf_characteristicValueManager];
    cameraItem = v15->_cameraItem;
    v15->_cameraItem = v23;

    v25 = [[HUCameraPlayerAVBehavior alloc] initWithDelegate:v15];
    behavior = v15->_behavior;
    v15->_behavior = v25;

    [(HUNCCameraPlayerViewController *)v15 addBehavior:v15->_behavior];
    behaviorContext = [(AVHomeIPCameraBehavior *)v15->_behavior behaviorContext];
    [behaviorContext setPlaybackControlsIncludeTransportControls:0];

    behaviorContext2 = [(AVHomeIPCameraBehavior *)v15->_behavior behaviorContext];
    [behaviorContext2 setPlaybackControlsIncludeDisplayModeControls:0];

    behaviorContext3 = [(AVHomeIPCameraBehavior *)v15->_behavior behaviorContext];
    [behaviorContext3 setZoomingEnabled:0];

    [(HUNCCameraPlayerViewController *)v15 _setupPlaybackEngine];
    if (iDCopy)
    {
      [(HUNCCameraPlayerViewController *)v15 loadCameraClip];
    }

    v30 = objc_alloc_init(HUCameraBlurViewController);
    blurViewController = v15->_blurViewController;
    v15->_blurViewController = v30;

    v32 = [HUCameraPlayerAccessoryViewController alloc];
    playbackEngine = [(HUNCCameraPlayerViewController *)v15 playbackEngine];
    v34 = [(HUCameraPlayerAccessoryViewController *)v32 initWithPlaybackEngine:playbackEngine];
    accessoryViewController = v15->_accessoryViewController;
    v15->_accessoryViewController = v34;

    [(HUCameraPlayerAccessoryViewController *)v15->_accessoryViewController setForceLoadingIndicatorToDisplay:1];
    v36 = [HUCameraPlayerLiveContentViewController alloc];
    playbackEngine2 = [(HUNCCameraPlayerViewController *)v15 playbackEngine];
    v38 = [(HUCameraPlayerLiveContentViewController *)v36 initWithPlaybackEngine:playbackEngine2];
    liveContentViewController = v15->_liveContentViewController;
    v15->_liveContentViewController = v38;

    v40 = [[HUNCCameraPlayerPlaceholderContentViewController alloc] initWithImageURL:lCopy];
    placeholderContentViewController = v15->_placeholderContentViewController;
    v15->_placeholderContentViewController = v40;

    v42 = [objc_alloc(MEMORY[0x277D14B08]) initWithDelegate:v15 sourceItem:v15->_cameraItem];
    itemManager = v15->_itemManager;
    v15->_itemManager = v42;

    [(HFItemManager *)v15->_itemManager disableExternalUpdatesWithReason:@"kDisableUpdatesReasonHUNCCameraPlayerViewControllerNotVisible"];
    [(HUNCCameraPlayerViewController *)v15 setDelegate:v15];
    [(HUNCCameraPlayerViewController *)v15 setUpdatesNowPlayingInfoCenter:0];
    mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
    v45 = *MEMORY[0x277CB8030];
    v50 = 0;
    [mEMORY[0x277CB83F8] setCategory:v45 error:&v50];
    v46 = v50;

    if (v46)
    {
      v47 = HFLogForCategory();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v53 = v46;
        _os_log_error_impl(&dword_20CEB6000, v47, OS_LOG_TYPE_ERROR, "Unable to properly set audio playback session with error: %@", buf, 0xCu);
      }
    }

    [(HUNCCameraPlayerViewController *)v15 updateVolumeControlVisibility];
    mEMORY[0x277D14468] = [MEMORY[0x277D14468] sharedDecorator];
  }

  return v15;
}

- (void)viewDidLoad
{
  v89 = *MEMORY[0x277D85DE8];
  v84.receiver = self;
  v84.super_class = HUNCCameraPlayerViewController;
  [(HUNCCameraPlayerViewController *)&v84 viewDidLoad];
  placeholderContentViewController = [(HUNCCameraPlayerViewController *)self placeholderContentViewController];
  [(HUNCCameraPlayerViewController *)self addChildViewController:placeholderContentViewController];

  accessoryViewController = [(HUNCCameraPlayerViewController *)self accessoryViewController];
  [(HUNCCameraPlayerViewController *)self addChildViewController:accessoryViewController];

  blurViewController = [(HUNCCameraPlayerViewController *)self blurViewController];
  [(HUNCCameraPlayerViewController *)self addChildViewController:blurViewController];

  contentOverlayView = [(HUNCCameraPlayerViewController *)self contentOverlayView];
  placeholderContentViewController2 = [(HUNCCameraPlayerViewController *)self placeholderContentViewController];
  view = [placeholderContentViewController2 view];
  [contentOverlayView naui_addAutoLayoutSubview:view];

  contentOverlayView2 = [(HUNCCameraPlayerViewController *)self contentOverlayView];
  blurViewController2 = [(HUNCCameraPlayerViewController *)self blurViewController];
  view2 = [blurViewController2 view];
  [contentOverlayView2 naui_addAutoLayoutSubview:view2];

  contentOverlayView3 = [(HUNCCameraPlayerViewController *)self contentOverlayView];
  accessoryViewController2 = [(HUNCCameraPlayerViewController *)self accessoryViewController];
  view3 = [accessoryViewController2 view];
  [contentOverlayView3 addSubview:view3];

  accessoryViewController3 = [(HUNCCameraPlayerViewController *)self accessoryViewController];
  view4 = [accessoryViewController3 view];
  [view4 setTranslatesAutoresizingMaskIntoConstraints:0];

  accessoryViewController4 = [(HUNCCameraPlayerViewController *)self accessoryViewController];
  view5 = [accessoryViewController4 view];
  leftAnchor = [view5 leftAnchor];
  contentOverlayView4 = [(HUNCCameraPlayerViewController *)self contentOverlayView];
  leftAnchor2 = [contentOverlayView4 leftAnchor];
  v22 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v22 setActive:1];

  accessoryViewController5 = [(HUNCCameraPlayerViewController *)self accessoryViewController];
  view6 = [accessoryViewController5 view];
  rightAnchor = [view6 rightAnchor];
  contentOverlayView5 = [(HUNCCameraPlayerViewController *)self contentOverlayView];
  rightAnchor2 = [contentOverlayView5 rightAnchor];
  v28 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v28 setActive:1];

  accessoryViewController6 = [(HUNCCameraPlayerViewController *)self accessoryViewController];
  view7 = [accessoryViewController6 view];
  topAnchor = [view7 topAnchor];
  contentOverlayView6 = [(HUNCCameraPlayerViewController *)self contentOverlayView];
  topAnchor2 = [contentOverlayView6 topAnchor];
  v34 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v34 setActive:1];

  accessoryViewController7 = [(HUNCCameraPlayerViewController *)self accessoryViewController];
  view8 = [accessoryViewController7 view];
  bottomAnchor = [view8 bottomAnchor];
  contentOverlayView7 = [(HUNCCameraPlayerViewController *)self contentOverlayView];
  bottomAnchor2 = [contentOverlayView7 bottomAnchor];
  v40 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v40 setActive:1];

  blurViewController3 = [(HUNCCameraPlayerViewController *)self blurViewController];
  [blurViewController3 didMoveToParentViewController:self];

  placeholderContentViewController3 = [(HUNCCameraPlayerViewController *)self placeholderContentViewController];
  [placeholderContentViewController3 didMoveToParentViewController:self];

  accessoryViewController8 = [(HUNCCameraPlayerViewController *)self accessoryViewController];
  [accessoryViewController8 didMoveToParentViewController:self];

  playbackEngine = [(HUNCCameraPlayerViewController *)self playbackEngine];
  LODWORD(view8) = [playbackEngine prefersAudioEnabled];
  playerController = [(HUNCCameraPlayerViewController *)self playerController];
  [playerController setMuted:view8 ^ 1];

  cameraProfile = [(HUNCCameraPlayerViewController *)self cameraProfile];
  LODWORD(view8) = [cameraProfile hf_supportsBidirectionalAudio];

  if (view8)
  {
    [(HUNCCameraPlayerViewController *)self setHu_playbackControlsAreVisible:1];
    customControlsView = [(HUNCCameraPlayerViewController *)self customControlsView];
    liveContentViewController = [(HUNCCameraPlayerViewController *)self liveContentViewController];
    microphoneControl = [liveContentViewController microphoneControl];
    [customControlsView addSubview:microphoneControl];

    liveContentViewController2 = [(HUNCCameraPlayerViewController *)self liveContentViewController];
    microphoneControl2 = [liveContentViewController2 microphoneControl];
    [microphoneControl2 addTarget:self action:sel_toggleMicrophoneState forControlEvents:64];

    v52 = HFLogForCategory();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      cameraProfile2 = [(HUNCCameraPlayerViewController *)self cameraProfile];
      accessory = [cameraProfile2 accessory];
      name = [accessory name];
      clipUUID = [(HUNCCameraPlayerViewController *)self clipUUID];
      *buf = 138412546;
      v86 = name;
      v87 = 1024;
      v88 = clipUUID != 0;
      _os_log_impl(&dword_20CEB6000, v52, OS_LOG_TYPE_DEFAULT, "Speaker is supported by camera:%@. Microphone control displayed at top:%{BOOL}d.", buf, 0x12u);
    }

    playbackEngine2 = [(HUNCCameraPlayerViewController *)self playbackEngine];
    isMicrophoneEnabled = [playbackEngine2 isMicrophoneEnabled];
    liveContentViewController3 = [(HUNCCameraPlayerViewController *)self liveContentViewController];
    microphoneControl3 = [liveContentViewController3 microphoneControl];
    [microphoneControl3 setTalking:isMicrophoneEnabled];

    liveContentViewController4 = [(HUNCCameraPlayerViewController *)self liveContentViewController];
    microphoneControl4 = [liveContentViewController4 microphoneControl];
    leftAnchor3 = [microphoneControl4 leftAnchor];
    customControlsView2 = [(HUNCCameraPlayerViewController *)self customControlsView];
    leftAnchor4 = [customControlsView2 leftAnchor];
    v66 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4 constant:8.0];
    [v66 setActive:1];

    liveContentViewController5 = [(HUNCCameraPlayerViewController *)self liveContentViewController];
    microphoneControl5 = [liveContentViewController5 microphoneControl];
    bottomAnchor3 = [microphoneControl5 bottomAnchor];
    customControlsView3 = [(HUNCCameraPlayerViewController *)self customControlsView];
    safeAreaLayoutGuide = [customControlsView3 safeAreaLayoutGuide];
    bottomAnchor4 = [safeAreaLayoutGuide bottomAnchor];
    v73 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-8.0];
    [v73 setActive:1];

    [(HUNCCameraPlayerViewController *)self updateMicrophone];
  }

  else
  {
    liveContentViewController6 = [(HUNCCameraPlayerViewController *)self liveContentViewController];
    microphoneControl6 = [liveContentViewController6 microphoneControl];
    [microphoneControl6 setAlpha:0.0];

    v76 = HFLogForCategory();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      cameraProfile3 = [(HUNCCameraPlayerViewController *)self cameraProfile];
      accessory2 = [cameraProfile3 accessory];
      *buf = 138412290;
      v86 = accessory2;
      _os_log_impl(&dword_20CEB6000, v76, OS_LOG_TYPE_DEFAULT, "Speaker not supported by camera:%@. Will not display microphone control.", buf, 0xCu);
    }
  }

  v79 = HFLogForCategory();
  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v79, OS_LOG_TYPE_DEFAULT, "Notification scrubber viewDidLoad.", buf, 2u);
  }

  accessoryViewController9 = [(HUNCCameraPlayerViewController *)self accessoryViewController];
  [accessoryViewController9 setShouldShowLoadingIndicatorForClipPlayback:1];

  accessoryViewController10 = [(HUNCCameraPlayerViewController *)self accessoryViewController];
  [accessoryViewController10 setCanShowOverlayContent:1];

  customControlsView4 = [(HUNCCameraPlayerViewController *)self customControlsView];
  liveButtonView = [(HUNCCameraPlayerViewController *)self liveButtonView];
  [customControlsView4 addSubview:liveButtonView];

  [(HUNCCameraPlayerViewController *)self _setupConstraintSets];
}

- (void)viewWillAppear:(BOOL)appear
{
  v19 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = HUNCCameraPlayerViewController;
  [(HUNCCameraPlayerViewController *)&v14 viewWillAppear:appear];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
  }

  itemManager = [(HUNCCameraPlayerViewController *)self itemManager];
  [itemManager endDisableExternalUpdatesWithReason:@"kDisableUpdatesReasonHUNCCameraPlayerViewControllerNotVisible"];

  clipUUID = [(HUNCCameraPlayerViewController *)self clipUUID];

  if (!clipUUID)
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "(NC) Starting Live Stream since there is no clipUUID.", buf, 2u);
    }

    livePosition = [MEMORY[0x277D144D0] livePosition];
    playbackEngine = [(HUNCCameraPlayerViewController *)self playbackEngine];
    [playbackEngine setPlaybackPosition:livePosition];

    playbackEngine2 = [(HUNCCameraPlayerViewController *)self playbackEngine];
    [playbackEngine2 play];

    livePosition2 = [MEMORY[0x277D144D0] livePosition];
    [(HUNCCameraPlayerViewController *)self _updateStateForPlaybackPosition:livePosition2 animated:1];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v12 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HUNCCameraPlayerViewController;
  [(HUNCCameraPlayerViewController *)&v7 viewDidAppear:appear];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@ : %@", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HUNCCameraPlayerViewController;
  [(HUNCCameraPlayerViewController *)&v8 viewWillDisappear:disappear];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@ : %@", buf, 0x16u);
  }

  itemManager = [(HUNCCameraPlayerViewController *)self itemManager];
  [itemManager disableExternalUpdatesWithReason:@"kDisableUpdatesReasonHUNCCameraPlayerViewControllerNotVisible"];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v12 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HUNCCameraPlayerViewController;
  [(HUNCCameraPlayerViewController *)&v7 viewDidDisappear:disappear];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@ : %@", buf, 0x16u);
  }
}

- (void)viewWillLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = HUNCCameraPlayerViewController;
  [(HUNCCameraPlayerViewController *)&v10 viewWillLayoutSubviews];
  playbackEngine = [(HUNCCameraPlayerViewController *)self playbackEngine];
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

  view = [(HUNCCameraPlayerViewController *)self view];
  [view bounds];
  v9 = v8;

  if (v6 < 1.0 && v6 > 0.0 && [(HUNCCameraPlayerViewController *)self numberOfAssociatedAccessoriesDisplayed])
  {
    v6 = 1.0;
  }

  [(HUNCCameraPlayerViewController *)self setPreferredContentSize:v9, round(v9 / v6)];
}

- (void)_updateRecordedClipInterfaceAvailabilityWithAnimation:(BOOL)animation
{
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Finished clip prep. Safe to update UI.", buf, 2u);
  }

  v6 = dispatch_time(0, 200000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__HUNCCameraPlayerViewController__updateRecordedClipInterfaceAvailabilityWithAnimation___block_invoke;
  block[3] = &unk_277DB8488;
  block[4] = self;
  v7 = MEMORY[0x277D85CD0];
  dispatch_after(v6, MEMORY[0x277D85CD0], block);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __88__HUNCCameraPlayerViewController__updateRecordedClipInterfaceAvailabilityWithAnimation___block_invoke_2;
  v8[3] = &unk_277DB7EE0;
  v8[4] = self;
  animationCopy = animation;
  dispatch_async(v7, v8);
}

void __88__HUNCCameraPlayerViewController__updateRecordedClipInterfaceAvailabilityWithAnimation___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) notificationUUID];

  if (v2)
  {
    v3 = [*(a1 + 32) miniScrubberViewController];

    if (!v3)
    {
      v4 = [HUNCCameraScrubberViewController alloc];
      v5 = [*(a1 + 32) playbackEngine];
      v6 = [*(a1 + 32) currentClip];
      v7 = [*(a1 + 32) currentClip];
      v8 = [v7 dateOfOccurrence];
      v9 = [(HUNCCameraScrubberViewController *)v4 initWithPlaybackEngine:v5 currentClip:v6 startDate:v8];
      [*(a1 + 32) setMiniScrubberViewController:v9];

      v10 = [*(a1 + 32) liveButtonView];
      v11 = [v10 liveButton];
      [v11 addTarget:*(a1 + 32) action:sel_toggleLive forControlEvents:64];

      v12 = *(a1 + 32);
      v13 = [v12 miniScrubberViewController];
      [v12 addChildViewController:v13];

      v14 = [*(a1 + 32) customControlsView];
      v15 = [*(a1 + 32) miniScrubberViewController];
      v16 = [v15 view];
      [v14 naui_addAutoLayoutSubview:v16];

      v17 = [*(a1 + 32) customControlsView];
      v18 = [*(a1 + 32) liveContentViewController];
      v19 = [v18 microphoneControl];
      [v17 bringSubviewToFront:v19];

      v20 = [*(a1 + 32) customControlsView];
      v21 = [*(a1 + 32) liveButtonView];
      [v20 bringSubviewToFront:v21];

      v22 = [*(a1 + 32) miniScrubberViewController];
      [v22 didMoveToParentViewController:*(a1 + 32)];
    }
  }

  v23 = [*(a1 + 32) scrubberConstraintSet];
  [v23 invalidate];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__HUNCCameraPlayerViewController__updateRecordedClipInterfaceAvailabilityWithAnimation___block_invoke_3;
  aBlock[3] = &unk_277DB8C28;
  aBlock[4] = *(a1 + 32);
  v24 = _Block_copy(aBlock);
  v25 = [*(a1 + 32) view];
  [v25 updateConstraintsIfNeeded];

  if (*(a1 + 40) == 1)
  {
    v26 = MEMORY[0x277D75D18];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __88__HUNCCameraPlayerViewController__updateRecordedClipInterfaceAvailabilityWithAnimation___block_invoke_4;
    v27[3] = &unk_277DB84B0;
    v28 = v24;
    [v26 animateWithDuration:v27 animations:0.3];
  }

  else
  {
    (*(v24 + 2))(v24, 1);
  }
}

void __88__HUNCCameraPlayerViewController__updateRecordedClipInterfaceAvailabilityWithAnimation___block_invoke_3(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  v4 = [*(a1 + 32) miniScrubberViewController];
  v3 = [v4 view];
  [v3 setAlpha:v2];
}

- (id)home
{
  cameraProfile = [(HUNCCameraPlayerViewController *)self cameraProfile];
  accessory = [cameraProfile accessory];
  home = [accessory home];

  return home;
}

- (void)_setupConstraintSets
{
  v36[4] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v18 = MEMORY[0x277CCAAD0];
  liveButtonView = [(HUNCCameraPlayerViewController *)self liveButtonView];
  rightAnchor = [liveButtonView rightAnchor];
  customControlsView = [(HUNCCameraPlayerViewController *)self customControlsView];
  transportControlsAreaLayoutGuide = [customControlsView transportControlsAreaLayoutGuide];
  rightAnchor2 = [transportControlsAreaLayoutGuide rightAnchor];
  v25 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v36[0] = v25;
  liveButtonView2 = [(HUNCCameraPlayerViewController *)self liveButtonView];
  heightAnchor = [liveButtonView2 heightAnchor];
  v22 = [heightAnchor constraintEqualToConstant:44.0];
  v36[1] = v22;
  liveButtonView3 = [(HUNCCameraPlayerViewController *)self liveButtonView];
  widthAnchor = [liveButtonView3 widthAnchor];
  liveButtonView4 = [(HUNCCameraPlayerViewController *)self liveButtonView];
  liveButton = [liveButtonView4 liveButton];
  widthAnchor2 = [liveButton widthAnchor];
  v5 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v36[2] = v5;
  liveButtonView5 = [(HUNCCameraPlayerViewController *)self liveButtonView];
  bottomAnchor = [liveButtonView5 bottomAnchor];
  customControlsView2 = [(HUNCCameraPlayerViewController *)self customControlsView];
  bottomAnchor2 = [customControlsView2 bottomAnchor];
  v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-8.0];
  v36[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:4];
  [v18 activateConstraints:v11];

  v12 = objc_alloc(MEMORY[0x277D2C958]);
  view = [(HUNCCameraPlayerViewController *)self view];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __54__HUNCCameraPlayerViewController__setupConstraintSets__block_invoke;
  v33[3] = &unk_277DC2030;
  objc_copyWeak(&v34, &location);
  v14 = [v12 initWithOwningView:view constraintBuilder:v33];
  [(HUNCCameraPlayerViewController *)self setStaticConstraintSet:v14];

  v15 = objc_alloc(MEMORY[0x277D2C958]);
  view2 = [(HUNCCameraPlayerViewController *)self view];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __54__HUNCCameraPlayerViewController__setupConstraintSets__block_invoke_2;
  v31[3] = &unk_277DC2030;
  objc_copyWeak(&v32, &location);
  v17 = [v15 initWithOwningView:view2 constraintBuilder:v31];
  [(HUNCCameraPlayerViewController *)self setScrubberConstraintSet:v17];

  objc_destroyWeak(&v32);
  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);
}

id __54__HUNCCameraPlayerViewController__setupConstraintSets__block_invoke(uint64_t a1)
{
  v15[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x277CCAAD0];
  v14 = [WeakRetained placeholderContentViewController];
  v3 = [v14 view];
  v4 = [WeakRetained view];
  v5 = [v2 hu_constraintsSizingAnchorProvider:v3 toAnchorProvider:v4];
  v15[0] = v5;
  v6 = MEMORY[0x277CCAAD0];
  v7 = [WeakRetained blurViewController];
  v8 = [v7 view];
  v9 = [WeakRetained view];
  v10 = [v6 hu_constraintsSizingAnchorProvider:v8 toAnchorProvider:v9];
  v15[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v12 = [v11 na_arrayByFlattening];

  return v12;
}

id __54__HUNCCameraPlayerViewController__setupConstraintSets__block_invoke_2(uint64_t a1)
{
  v30[4] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained miniScrubberViewController];
  v3 = [v2 view];
  v4 = [v3 superview];

  if (v4)
  {
    v28 = [WeakRetained miniScrubberViewController];
    v27 = [v28 view];
    v25 = [v27 bottomAnchor];
    v26 = [WeakRetained customControlsView];
    v24 = [v26 bottomAnchor];
    v23 = [v25 constraintEqualToAnchor:v24 constant:-6.0];
    v30[0] = v23;
    v22 = [WeakRetained miniScrubberViewController];
    v21 = [v22 view];
    v19 = [v21 leftAnchor];
    v20 = [WeakRetained customControlsView];
    v18 = [v20 transportControlsAreaLayoutGuide];
    v17 = [v18 leftAnchor];
    v16 = [v19 constraintEqualToAnchor:v17];
    v30[1] = v16;
    v15 = [WeakRetained miniScrubberViewController];
    v5 = [v15 view];
    v6 = [v5 rightAnchor];
    v7 = [WeakRetained liveButtonView];
    v8 = [v7 leftAnchor];
    v9 = [v6 constraintEqualToAnchor:v8];
    v30[2] = v9;
    v10 = [WeakRetained miniScrubberViewController];
    v11 = [v10 view];
    v12 = [v11 heightAnchor];
    v13 = [v12 constraintEqualToConstant:47.0];
    v30[3] = v13;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
  }

  else
  {
    v29 = MEMORY[0x277CBEBF8];
  }

  return v29;
}

- (void)updateViewConstraints
{
  staticConstraintSet = [(HUNCCameraPlayerViewController *)self staticConstraintSet];
  [staticConstraintSet activateIfNeeded];

  scrubberConstraintSet = [(HUNCCameraPlayerViewController *)self scrubberConstraintSet];
  [scrubberConstraintSet activateIfNeeded];

  v5.receiver = self;
  v5.super_class = HUNCCameraPlayerViewController;
  [(HUNCCameraPlayerViewController *)&v5 updateViewConstraints];
}

- (void)reloadAfterNotificationUpdate
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    currentClip = [(HUNCCameraPlayerViewController *)self currentClip];
    v5 = 138412290;
    v6 = currentClip;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "(NC) reloading after Notification Update for currentClip:%@.", &v5, 0xCu);
  }

  [(HUNCCameraPlayerViewController *)self loadCameraClip];
}

- (void)reloadForCurrentClip
{
  v22 = *MEMORY[0x277D85DE8];
  accessoryViewController = [(HUNCCameraPlayerViewController *)self accessoryViewController];
  [accessoryViewController setForceLoadingIndicatorToDisplay:0];

  currentClip = [(HUNCCameraPlayerViewController *)self currentClip];

  v5 = HFLogForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (currentClip)
  {
    if (v6)
    {
      currentClip2 = [(HUNCCameraPlayerViewController *)self currentClip];
      playbackStartDateFromSignificantEvent = [(HUNCCameraPlayerViewController *)self playbackStartDateFromSignificantEvent];
      v18 = 138412546;
      v19 = currentClip2;
      v20 = 2112;
      v21 = playbackStartDateFromSignificantEvent;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(NC) reloading for currentClip:%@ at start position:%@.", &v18, 0x16u);
    }

    currentClip3 = [(HUNCCameraPlayerViewController *)self currentClip];
    isComplete = [currentClip3 isComplete];

    v11 = MEMORY[0x277D144D0];
    if (isComplete)
    {
      playbackStartDateFromSignificantEvent2 = [(HUNCCameraPlayerViewController *)self playbackStartDateFromSignificantEvent];
      v13 = [v11 clipPositionWithDate:playbackStartDateFromSignificantEvent2];
      playbackEngine = [(HUNCCameraPlayerViewController *)self playbackEngine];
      [playbackEngine setPlaybackPosition:v13];

      [(HUNCCameraPlayerViewController *)self _updateRecordedClipInterfaceAvailabilityWithAnimation:1];
      return;
    }

    livePosition = [MEMORY[0x277D144D0] livePosition];
    playbackEngine2 = [(HUNCCameraPlayerViewController *)self playbackEngine];
    [playbackEngine2 setPlaybackPosition:livePosition];
  }

  else
  {
    if (v6)
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(NC) reloading while missing clip. Starting Live Stream.", &v18, 2u);
    }

    livePosition = [MEMORY[0x277D144D0] livePosition];
    playbackEngine3 = [(HUNCCameraPlayerViewController *)self playbackEngine];
    [playbackEngine3 setPlaybackPosition:livePosition];

    [(HUNCCameraPlayerViewController *)self _updateStateForPlaybackPosition:livePosition animated:1];
  }
}

- (void)loadCameraClip
{
  v19 = *MEMORY[0x277D85DE8];
  notificationUUID = [(HUNCCameraPlayerViewController *)self notificationUUID];
  v4 = HFLogForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (notificationUUID)
  {
    if (v5)
    {
      *buf = 138412290;
      v18 = notificationUUID;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(NC) Perform cloud pull:%@.", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v6 = MEMORY[0x277D2C900];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __48__HUNCCameraPlayerViewController_loadCameraClip__block_invoke;
    v15[3] = &unk_277DC2058;
    objc_copyWeak(&v16, buf);
    v7 = [v6 futureWithErrorOnlyHandlerAdapterBlock:v15];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __48__HUNCCameraPlayerViewController_loadCameraClip__block_invoke_2;
    v12[3] = &unk_277DC20A8;
    objc_copyWeak(&v14, buf);
    v13 = notificationUUID;
    v8 = [v7 addSuccessBlock:v12];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__HUNCCameraPlayerViewController_loadCameraClip__block_invoke_44;
    v10[3] = &unk_277DB94D0;
    objc_copyWeak(&v11, buf);
    v9 = [v8 addFailureBlock:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "HUNCCameraPlayer loading with request for clip without notificationUUID. Should this be possible?", buf, 2u);
    }

    [(HUNCCameraPlayerViewController *)self reloadForCurrentClip];
  }
}

void __48__HUNCCameraPlayerViewController_loadCameraClip__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained cameraProfile];
  v5 = [v4 clipManager];
  [v5 performCloudPullWithCompletion:v3];
}

void __48__HUNCCameraPlayerViewController_loadCameraClip__block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained accessoryViewController];
  [v5 setForceLoadingIndicatorToDisplay:0];

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138412290;
    v19 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "(NC) cloud pull complete. Fetch clip using notificationUUID:%@.", buf, 0xCu);
  }

  v8 = [WeakRetained playbackEngine];
  v9 = [v8 fetchClipForSignificantEventWithUUID:*(a1 + 32)];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__HUNCCameraPlayerViewController_loadCameraClip__block_invoke_39;
  v15[3] = &unk_277DC2080;
  objc_copyWeak(&v17, (a1 + 40));
  v16 = *(a1 + 32);
  v10 = [v9 addSuccessBlock:v15];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__HUNCCameraPlayerViewController_loadCameraClip__block_invoke_41;
  v12[3] = &unk_277DB9368;
  objc_copyWeak(&v14, (a1 + 40));
  v13 = *(a1 + 32);
  v11 = [v10 addFailureBlock:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v17);
}

void __48__HUNCCameraPlayerViewController_loadCameraClip__block_invoke_39(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 138412546;
    v26 = v3;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "HUNCCameraPlayer loaded with clip:%@ for notificationUUID:%@.", buf, 0x16u);
  }

  v7 = [v3 dateOfOccurrence];
  [WeakRetained setPlaybackStartDateFromSignificantEvent:v7];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [v3 significantEvents];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 uniqueIdentifier];
        v15 = [v14 isEqual:*(a1 + 32)];

        if (v15)
        {
          v16 = [v13 dateOfOccurrence];
          [WeakRetained setPlaybackStartDateFromSignificantEvent:v16];

          goto LABEL_13;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  [WeakRetained setCurrentClip:v3];
  v17 = HFLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [WeakRetained currentClip];
    v19 = [WeakRetained playbackStartDateFromSignificantEvent];
    *buf = 138412546;
    v26 = v18;
    v27 = 2112;
    v28 = v19;
    _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "HUNCCameraPlayer loaded with currentClip:%@ at start position:%@.", buf, 0x16u);
  }

  if ([v3 isComplete])
  {
    [WeakRetained reloadForCurrentClip];
  }
}

void __48__HUNCCameraPlayerViewController_loadCameraClip__block_invoke_41(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "HUNCCameraPlayer unable to locate clip for notificationUUID:%@ with error:%@.", &v7, 0x16u);
  }

  [WeakRetained reloadForCurrentClip];
}

void __48__HUNCCameraPlayerViewController_loadCameraClip__block_invoke_44(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained accessoryViewController];
  [v5 setForceLoadingIndicatorToDisplay:0];

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_ERROR, "(NC) Failure to perform cloud pull:%@.", &v7, 0xCu);
  }
}

- (void)_setupPlaybackEngine
{
  v3 = objc_alloc(MEMORY[0x277D144C0]);
  home = [(HUNCCameraPlayerViewController *)self home];
  cameraProfile = [(HUNCCameraPlayerViewController *)self cameraProfile];
  v14 = [v3 initWithHome:home cameraProfile:cameraProfile];

  behavior = [(HUNCCameraPlayerViewController *)self behavior];
  [v14 setClipScrubber:behavior];

  notificationUUID = [(HUNCCameraPlayerViewController *)self notificationUUID];
  [v14 setNotificationUUID:notificationUUID];

  clipUUID = [(HUNCCameraPlayerViewController *)self clipUUID];
  [v14 setNotificationClipUUID:clipUUID];

  clipUUID2 = [(HUNCCameraPlayerViewController *)self clipUUID];

  if (clipUUID2)
  {
    v10 = MEMORY[0x277D144D0];
    v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
    v12 = [v10 clipPositionWithDate:v11];
    [v14 setPlaybackPosition:v12];
  }

  v13 = [objc_alloc(MEMORY[0x277D144B8]) initWithConfiguration:v14];
  [(HUNCCameraPlayerViewController *)self setPlaybackEngine:v13];

  [(HUNCCameraPlayerViewController *)self addPlaybackEngineObservation];
}

- (void)addPlaybackEngineObservation
{
  v4 = objc_alloc_init(MEMORY[0x277D144C8]);
  [v4 setPeriodicTimeUpdateInterval:&unk_282493560];
  playbackEngine = [(HUNCCameraPlayerViewController *)self playbackEngine];
  [playbackEngine addObserver:self withOptions:v4];
}

- (void)_updateStateForPlaybackPosition:(id)position animated:(BOOL)animated
{
  contentType = [position contentType];
  accessoryViewController = [(HUNCCameraPlayerViewController *)self accessoryViewController];
  [accessoryViewController setForceLoadingIndicatorToDisplay:0];

  if (contentType)
  {
    liveContentViewController = [(HUNCCameraPlayerViewController *)self liveContentViewController];
    viewIfLoaded = [liveContentViewController viewIfLoaded];
    [viewIfLoaded removeFromSuperview];
  }

  else
  {
    playbackEngine = [(HUNCCameraPlayerViewController *)self playbackEngine];
    cameraProfile = [playbackEngine cameraProfile];
    hf_shouldDisableLiveStream = [cameraProfile hf_shouldDisableLiveStream];

    if (hf_shouldDisableLiveStream)
    {
      goto LABEL_6;
    }

    behavior = [(HUNCCameraPlayerViewController *)self behavior];
    behaviorContext = [behavior behaviorContext];
    liveContentViewController = [behaviorContext livePreviewContainerView];

    liveContentViewController2 = [(HUNCCameraPlayerViewController *)self liveContentViewController];
    view = [liveContentViewController2 view];
    [liveContentViewController naui_addAutoLayoutSubview:view];

    v16 = MEMORY[0x277CCAAD0];
    liveContentViewController3 = [(HUNCCameraPlayerViewController *)self liveContentViewController];
    view2 = [liveContentViewController3 view];
    v19 = [v16 hu_constraintsSizingAnchorProvider:view2 toAnchorProvider:liveContentViewController];
    [v16 activateConstraints:v19];

    [(HUNCCameraPlayerViewController *)self _updateLivePreviewAspectRatio];
    viewIfLoaded = [(HUNCCameraPlayerViewController *)self liveContentViewController];
    cameraView = [viewIfLoaded cameraView];
    [cameraView setBadgeHidden:1];
  }

LABEL_6:
  behavior2 = [(HUNCCameraPlayerViewController *)self behavior];
  behaviorContext2 = [behavior2 behaviorContext];
  [behaviorContext2 setLivePreviewActive:contentType == 0];

  if (contentType)
  {
    playbackEngine2 = [(HUNCCameraPlayerViewController *)self playbackEngine];
    player = [playbackEngine2 player];
    [(HUNCCameraPlayerViewController *)self setPlayer:player];
  }

  else
  {
    [(HUNCCameraPlayerViewController *)self setPlayer:0];
  }

  player2 = [(HUNCCameraPlayerViewController *)self player];

  if (player2)
  {
    player3 = [(HUNCCameraPlayerViewController *)self player];
    [player3 setAllowsExternalPlayback:0];
  }

  playbackEngine3 = [(HUNCCameraPlayerViewController *)self playbackEngine];
  prefersAudioEnabled = [playbackEngine3 prefersAudioEnabled];
  playerController = [(HUNCCameraPlayerViewController *)self playerController];
  [playerController setMuted:prefersAudioEnabled ^ 1u];
}

- (void)_updateStateForScrubbingStatus:(BOOL)status animated:(BOOL)animated
{
  if (status)
  {
    v5 = [(HUNCCameraPlayerViewController *)self behavior:status];
    behaviorContext = [v5 behaviorContext];
    [behaviorContext setPlaybackControlsIncludeDisplayModeControls:0];

    behavior = [(HUNCCameraPlayerViewController *)self behavior];
    behaviorContext2 = [behavior behaviorContext];
    [behaviorContext2 setPlaybackControlsIncludeVolumeControls:0];
  }
}

- (void)_updateLivePreviewAspectRatio
{
  playbackEngine = [(HUNCCameraPlayerViewController *)self playbackEngine];
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

  behavior = [(HUNCCameraPlayerViewController *)self behavior];
  behaviorContext = [behavior behaviorContext];
  [behaviorContext setLivePreviewAspectRatio:{v6, 1.0}];
}

- (void)_updatePlayerVolumeSliderState
{
  playbackEngine = [(HUNCCameraPlayerViewController *)self playbackEngine];
  [playbackEngine streamAudioVolume];
  v4 = v3;
  playerController = [(HUNCCameraPlayerViewController *)self playerController];
  [playerController setVolume:v4];
}

- (BOOL)_shouldAutoPlayOnViewAppearance
{
  playbackEngine = [(HUNCCameraPlayerViewController *)self playbackEngine];
  playbackPosition = [playbackEngine playbackPosition];
  livePosition = [MEMORY[0x277D144D0] livePosition];
  v6 = [playbackPosition isEqual:livePosition];

  result = 1;
  if ((v6 & 1) == 0)
  {
    playbackStartDateFromSignificantEvent = [(HUNCCameraPlayerViewController *)self playbackStartDateFromSignificantEvent];

    if (!playbackStartDateFromSignificantEvent)
    {
      return 0;
    }

    playbackEngine2 = [(HUNCCameraPlayerViewController *)self playbackEngine];
    currentClip = [playbackEngine2 currentClip];

    if (!currentClip)
    {
      return 0;
    }

    playbackEngine3 = [(HUNCCameraPlayerViewController *)self playbackEngine];
    currentClip2 = [playbackEngine3 currentClip];
    hf_dateInterval = [currentClip2 hf_dateInterval];
    playbackStartDateFromSignificantEvent2 = [(HUNCCameraPlayerViewController *)self playbackStartDateFromSignificantEvent];
    v15 = [hf_dateInterval hf_searchResultForDate:playbackStartDateFromSignificantEvent2];

    if (v15 != 1)
    {
      return 0;
    }
  }

  return result;
}

- (void)toggleLive
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Toggle live using button", v6, 2u);
  }

  accessoryViewController = [(HUNCCameraPlayerViewController *)self accessoryViewController];
  [accessoryViewController setShouldShowLoadingIndicatorForClipPlayback:1];

  [(HUNCCameraPlayerViewController *)self updateMicrophone];
  miniScrubberViewController = [(HUNCCameraPlayerViewController *)self miniScrubberViewController];
  [miniScrubberViewController toggleLive];
}

- (void)playerViewController:(id)controller willTransitionToVisibilityOfPlaybackControls:(BOOL)controls withAnimationCoordinator:(id)coordinator
{
  controlsCopy = controls;
  v13 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  [(HUNCCameraPlayerViewController *)self setHu_playbackControlsAreVisible:controlsCopy];
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v12 = controlsCopy;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "Transitioning visibility of playback controls:%{BOOL}d", buf, 8u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __125__HUNCCameraPlayerViewController_playerViewController_willTransitionToVisibilityOfPlaybackControls_withAnimationCoordinator___block_invoke;
  v9[3] = &unk_277DB7EE0;
  v9[4] = self;
  v10 = controlsCopy;
  [coordinatorCopy addCoordinatedAnimations:v9 completion:0];
}

void __125__HUNCCameraPlayerViewController_playerViewController_willTransitionToVisibilityOfPlaybackControls_withAnimationCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) miniScrubberViewController];
  v3 = [v2 isScrubbing];

  if ((v3 & 1) == 0)
  {
    LOBYTE(v4) = *(a1 + 40);
    v5 = v4;
    v6 = [*(a1 + 32) miniScrubberViewController];
    v7 = [v6 view];
    [v7 setAlpha:v5];
  }

  LOBYTE(v4) = *(a1 + 40);
  v8 = v4;
  v9 = [*(a1 + 32) liveButtonView];
  [v9 setAlpha:v8];

  v10 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    [v10 updateMicrophoneVisibility];
    v11 = *(a1 + 32);

    [v11 updateVolumeControlVisibility];
  }

  else
  {
    v13 = [v10 liveContentViewController];
    v12 = [v13 microphoneControl];
    [v12 setAlpha:0.0];
  }
}

- (void)playbackEngine:(id)engine didUpdatePlaybackPosition:(id)position
{
  [(HUNCCameraPlayerViewController *)self _updateStateForPlaybackPosition:position animated:1];

  [(HUNCCameraPlayerViewController *)self updateMicrophone];
}

- (void)playbackEngine:(id)engine didUpdateLiveCameraSource:(id)source
{
  [(HUNCCameraPlayerViewController *)self _updateLivePreviewAspectRatio:engine];
  [(HUNCCameraPlayerViewController *)self updateMicrophone];

  [(HUNCCameraPlayerViewController *)self updateVolumeControlVisibility];
}

- (void)playbackEngine:(id)engine didUpdateTimeControlStatus:(unint64_t)status
{
  v24 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  [(HUNCCameraPlayerViewController *)self updateMicrophone];
  [(HUNCCameraPlayerViewController *)self updateVolumeControlVisibility];
  launchEvent = [(HUNCCameraPlayerViewController *)self launchEvent];

  if (status == 2 && launchEvent)
  {
    clipUUID = [(HUNCCameraPlayerViewController *)self clipUUID];

    v9 = HFLogForCategory();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (clipUUID)
    {
      if (v10)
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "(NC) Send Clip playback launch event after time control update.", &v20, 2u);
      }

      currentClip = [engineCopy currentClip];
      launchEvent2 = [(HUNCCameraPlayerViewController *)self launchEvent];
      [launchEvent2 setCameraClip:currentClip];

      launchEvent3 = [(HUNCCameraPlayerViewController *)self launchEvent];
      [launchEvent3 launchedRecordingWithError:0];
    }

    else
    {
      if (v10)
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "(NC) Send Live Stream launch event after time control update.", &v20, 2u);
      }

      launchEvent3 = [(HUNCCameraPlayerViewController *)self launchEvent];
      [launchEvent3 launchedStreamWithError:0];
    }

    [(HUNCCameraPlayerViewController *)self setLaunchEvent:0];
    goto LABEL_15;
  }

  if (status == 2)
  {
LABEL_15:
    accessoryViewController = [(HUNCCameraPlayerViewController *)self accessoryViewController];
    [accessoryViewController setShouldShowLoadingIndicatorForClipPlayback:0];

    placeholderContentViewController = [(HUNCCameraPlayerViewController *)self placeholderContentViewController];
    view = [placeholderContentViewController view];
    v16 = view;
    v17 = 1;
    goto LABEL_16;
  }

  if (status == 1 && [engineCopy engineMode] == 1)
  {
    placeholderContentViewController = [(HUNCCameraPlayerViewController *)self placeholderContentViewController];
    view = [placeholderContentViewController view];
    v16 = view;
    v17 = 0;
LABEL_16:
    [view setHidden:v17];
  }

  [(HUNCCameraPlayerViewController *)self updateLiveButton];
  v19 = HFLogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = 134218242;
    statusCopy = status;
    v22 = 2112;
    v23 = engineCopy;
    _os_log_debug_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEBUG, "Updated timecontrol status:%lu for %@", &v20, 0x16u);
  }
}

- (void)playbackEngine:(id)engine didUpdatePlaybackError:(id)error
{
  engineCopy = engine;
  errorCopy = error;
  blurViewController = [(HUNCCameraPlayerViewController *)self blurViewController];
  playbackEngine = [(HUNCCameraPlayerViewController *)self playbackEngine];
  [blurViewController updateBlurWithPlaybackEngine:playbackEngine completionHandler:0];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HUNCCameraPlayerViewController_playbackEngine_didUpdatePlaybackError___block_invoke;
  block[3] = &unk_277DB8810;
  block[4] = self;
  v13 = engineCopy;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = engineCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __72__HUNCCameraPlayerViewController_playbackEngine_didUpdatePlaybackError___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) launchEvent];

  if (v2)
  {
    if ([*(a1 + 40) engineMode])
    {
      if ([*(a1 + 40) engineMode] != 1)
      {
LABEL_11:
        [*(a1 + 32) setLaunchEvent:0];
        return;
      }

      v3 = HFLogForCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 48);
        v10 = 138412290;
        v11 = v4;
        _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "(NC) Send Clip playback failure launch event for error:%@", &v10, 0xCu);
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
        v10 = 138412290;
        v11 = v9;
        _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "(NC) Send stream failure launch event for error:%@", &v10, 0xCu);
      }

      v7 = [*(a1 + 32) launchEvent];
      [v7 launchedStreamWithError:*(a1 + 48)];
    }

    goto LABEL_11;
  }
}

- (void)playbackEngine:(id)engine didUpdateEventCache:(id)cache
{
  v5 = objc_opt_class();
  playbackEngine = [(HUNCCameraPlayerViewController *)self playbackEngine];
  cameraClips = [playbackEngine cameraClips];
  firstObject = [cameraClips firstObject];
  if (!firstObject)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v9 = firstObject;
  }

  else
  {
    v9 = 0;
  }

  v10 = firstObject;
  if (!v9)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v12 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v5, objc_opt_class()}];

LABEL_7:
    v10 = 0;
  }

  [(HUNCCameraPlayerViewController *)self setCurrentClip:v10];
  playbackStartDateFromSignificantEvent = [(HUNCCameraPlayerViewController *)self playbackStartDateFromSignificantEvent];

  if (playbackStartDateFromSignificantEvent)
  {
    [(HUNCCameraPlayerViewController *)self reloadForCurrentClip];
  }

  else
  {
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEBUG, "No playback start date. Waiting until fetch complete.", buf, 2u);
    }
  }
}

- (double)currentScrubberResolutionForBehavior:(id)behavior
{
  miniScrubberViewController = [(HUNCCameraPlayerViewController *)self miniScrubberViewController];
  [miniScrubberViewController currentScrubberResolution];
  v5 = v4;

  return v5;
}

- (void)playbackControlsDidToggleMuted:(BOOL)muted
{
  mutedCopy = muted;
  playbackEngine = [(HUNCCameraPlayerViewController *)self playbackEngine];
  [playbackEngine setPrefersAudioEnabled:!mutedCopy];
}

- (void)playbackControlsDidUpdateVisibilityOfLoadingIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  accessoryViewController = [(HUNCCameraPlayerViewController *)self accessoryViewController];
  [accessoryViewController setShouldShowLoadingIndicatorForClipPlayback:indicatorCopy];
}

- (void)playbackControlsDidChangePlayerVolume:(float)volume
{
  playbackEngine = [(HUNCCameraPlayerViewController *)self playbackEngine];
  *&v4 = volume;
  [playbackEngine setStreamAudioVolume:v4];
}

- (void)_updateCameraStatus
{
  accessoryViewController = [(HUNCCameraPlayerViewController *)self accessoryViewController];
  [accessoryViewController hu_reloadData];

  playbackEngine = [(HUNCCameraPlayerViewController *)self playbackEngine];
  engineMode = [playbackEngine engineMode];

  if (!engineMode)
  {
    playbackEngine2 = [(HUNCCameraPlayerViewController *)self playbackEngine];
    [playbackEngine2 play];
  }
}

- (void)itemManager:(id)manager didUpdateResultsForSourceItem:(id)item
{
  v15 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  itemCopy = item;
  cameraItem = [(HUNCCameraPlayerViewController *)self cameraItem];
  v9 = [itemCopy isEqual:cameraItem];

  if (v9)
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412546;
      v12 = managerCopy;
      v13 = 2112;
      v14 = itemCopy;
      _os_log_debug_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEBUG, "Updated camera itemManager:%@ for item:%@", &v11, 0x16u);
    }

    [(HUNCCameraPlayerViewController *)self _updateCameraStatus];
  }
}

- (void)updateMicrophone
{
  v24 = *MEMORY[0x277D85DE8];
  cameraProfile = [(HUNCCameraPlayerViewController *)self cameraProfile];
  hf_supportsBidirectionalAudio = [cameraProfile hf_supportsBidirectionalAudio];

  if (hf_supportsBidirectionalAudio)
  {
    playbackEngine = [(HUNCCameraPlayerViewController *)self playbackEngine];
    isMicrophoneEnabled = [playbackEngine isMicrophoneEnabled];
    liveContentViewController = [(HUNCCameraPlayerViewController *)self liveContentViewController];
    microphoneControl = [liveContentViewController microphoneControl];
    [microphoneControl setTalking:isMicrophoneEnabled];

    [(HUNCCameraPlayerViewController *)self updateMicrophoneVisibility];
  }

  else
  {
    liveContentViewController2 = [(HUNCCameraPlayerViewController *)self liveContentViewController];
    microphoneControl2 = [liveContentViewController2 microphoneControl];
    [microphoneControl2 setAlpha:0.0];
  }

  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    cameraProfile2 = [(HUNCCameraPlayerViewController *)self cameraProfile];
    hf_supportsBidirectionalAudio2 = [cameraProfile2 hf_supportsBidirectionalAudio];
    liveContentViewController3 = [(HUNCCameraPlayerViewController *)self liveContentViewController];
    microphoneControl3 = [liveContentViewController3 microphoneControl];
    [microphoneControl3 alpha];
    v17 = v16 == 0.0;
    playbackEngine2 = [(HUNCCameraPlayerViewController *)self playbackEngine];
    v19[0] = 67109632;
    v19[1] = hf_supportsBidirectionalAudio2;
    v20 = 1024;
    v21 = v17;
    v22 = 1024;
    isLiveStreamPlaying = [playbackEngine2 isLiveStreamPlaying];
    _os_log_debug_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEBUG, "MicrophoneDisplay: BiDirectionalAudio:%{BOOL}d PortraitHidden:%{BOOL}d LiveStreaming:%{BOOL}d", v19, 0x14u);
  }
}

- (void)updateMicrophoneVisibility
{
  shouldDisplayMicrophoneControl = [(HUNCCameraPlayerViewController *)self shouldDisplayMicrophoneControl];
  liveContentViewController = [(HUNCCameraPlayerViewController *)self liveContentViewController];
  microphoneControl = [liveContentViewController microphoneControl];
  v5 = microphoneControl;
  v6 = 0.0;
  if (shouldDisplayMicrophoneControl)
  {
    v6 = 1.0;
  }

  [microphoneControl setAlpha:v6];
}

- (BOOL)shouldDisplayMicrophoneControl
{
  cameraProfile = [(HUNCCameraPlayerViewController *)self cameraProfile];
  if ([cameraProfile hf_supportsBidirectionalAudio])
  {
    playbackEngine = [(HUNCCameraPlayerViewController *)self playbackEngine];
    if ([playbackEngine isLiveStreamPlaying])
    {
      hu_playbackControlsAreVisible = [(HUNCCameraPlayerViewController *)self hu_playbackControlsAreVisible];
    }

    else
    {
      hu_playbackControlsAreVisible = 0;
    }
  }

  else
  {
    hu_playbackControlsAreVisible = 0;
  }

  return hu_playbackControlsAreVisible;
}

- (void)toggleMicrophoneState
{
  v17 = *MEMORY[0x277D85DE8];
  playbackEngine = [(HUNCCameraPlayerViewController *)self playbackEngine];
  isMicrophoneEnabled = [playbackEngine isMicrophoneEnabled];
  playbackEngine2 = [(HUNCCameraPlayerViewController *)self playbackEngine];
  [playbackEngine2 setMicrophoneEnabled:isMicrophoneEnabled ^ 1u];

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    playbackEngine3 = [(HUNCCameraPlayerViewController *)self playbackEngine];
    v16[0] = 67109120;
    v16[1] = [playbackEngine3 isMicrophoneEnabled];
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Toggled microphone state:%{BOOL}d.", v16, 8u);
  }

  playbackEngine4 = [(HUNCCameraPlayerViewController *)self playbackEngine];
  isMicrophoneEnabled2 = [playbackEngine4 isMicrophoneEnabled];

  liveContentViewController = [(HUNCCameraPlayerViewController *)self liveContentViewController];
  microphoneControl = [liveContentViewController microphoneControl];
  v12 = microphoneControl;
  if (isMicrophoneEnabled2)
  {
    [microphoneControl setTalking:1];

    playerController = [(HUNCCameraPlayerViewController *)self playerController];
    [playerController setMuted:0];
  }

  else
  {
    [microphoneControl setTalking:0];

    playerController = [(HUNCCameraPlayerViewController *)self playbackEngine];
    prefersAudioEnabled = [playerController prefersAudioEnabled];
    playerController2 = [(HUNCCameraPlayerViewController *)self playerController];
    [playerController2 setMuted:prefersAudioEnabled ^ 1u];
  }
}

- (void)updateVolumeControlVisibility
{
  playbackEngine = [(HUNCCameraPlayerViewController *)self playbackEngine];
  shouldDisplayVolumeControls = [playbackEngine shouldDisplayVolumeControls];
  behavior = [(HUNCCameraPlayerViewController *)self behavior];
  behaviorContext = [behavior behaviorContext];
  [behaviorContext setPlaybackControlsIncludeVolumeControls:shouldDisplayVolumeControls];
}

- (void)updateLiveButton
{
  liveButtonView = [(HUNCCameraPlayerViewController *)self liveButtonView];
  playbackEngine = [(HUNCCameraPlayerViewController *)self playbackEngine];
  [liveButtonView updateDisplayForStreaming:{objc_msgSend(playbackEngine, "isLiveStreamPlaying")}];
}

- (HUCameraLiveButtonView)liveButtonView
{
  liveButtonView = self->_liveButtonView;
  if (!liveButtonView)
  {
    v4 = objc_alloc_init(HUCameraLiveButtonView);
    [(HUCameraLiveButtonView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = self->_liveButtonView;
    self->_liveButtonView = v4;

    liveButtonView = self->_liveButtonView;
  }

  return liveButtonView;
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  playbackEngine = [(HUNCCameraPlayerViewController *)self playbackEngine];
  [playbackEngine pause];

  playbackEngine2 = [(HUNCCameraPlayerViewController *)self playbackEngine];
  [playbackEngine2 removeObserver:self];

  miniScrubberViewController = [(HUNCCameraPlayerViewController *)self miniScrubberViewController];
  view = [miniScrubberViewController view];
  [view removeFromSuperview];

  miniScrubberViewController2 = [(HUNCCameraPlayerViewController *)self miniScrubberViewController];
  [(HUNCCameraPlayerViewController *)self removeChildViewController:miniScrubberViewController2];

  [(HUNCCameraPlayerViewController *)self setMiniScrubberViewController:0];
  [(HUNCCameraPlayerViewController *)self setDelegate:0];
  [(HUNCCameraPlayerViewController *)self setPlaybackEngine:0];
  liveContentViewController = [(HUNCCameraPlayerViewController *)self liveContentViewController];
  viewIfLoaded = [liveContentViewController viewIfLoaded];
  [viewIfLoaded removeFromSuperview];

  [(HUNCCameraPlayerViewController *)self setLiveContentViewController:0];
  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
  }

  v13.receiver = self;
  v13.super_class = HUNCCameraPlayerViewController;
  [(HUNCCameraPlayerViewController *)&v13 dealloc];
}

- (HMCameraClip)currentClip
{
  WeakRetained = objc_loadWeakRetained(&self->_currentClip);

  return WeakRetained;
}

@end
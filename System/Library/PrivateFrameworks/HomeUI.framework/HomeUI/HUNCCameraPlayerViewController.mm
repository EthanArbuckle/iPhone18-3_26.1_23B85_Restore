@interface HUNCCameraPlayerViewController
- (BOOL)_shouldAutoPlayOnViewAppearance;
- (BOOL)shouldDisplayMicrophoneControl;
- (HMCameraClip)currentClip;
- (HUCameraLiveButtonView)liveButtonView;
- (HUNCCameraPlayerViewController)initWithCameraProfile:(id)a3 notificationUUID:(id)a4 clipUUID:(id)a5 imageURL:(id)a6;
- (double)currentScrubberResolutionForBehavior:(id)a3;
- (id)home;
- (void)_setupConstraintSets;
- (void)_setupPlaybackEngine;
- (void)_updateCameraStatus;
- (void)_updateLivePreviewAspectRatio;
- (void)_updatePlayerVolumeSliderState;
- (void)_updateRecordedClipInterfaceAvailabilityWithAnimation:(BOOL)a3;
- (void)_updateStateForPlaybackPosition:(id)a3 animated:(BOOL)a4;
- (void)_updateStateForScrubbingStatus:(BOOL)a3 animated:(BOOL)a4;
- (void)addPlaybackEngineObservation;
- (void)dealloc;
- (void)itemManager:(id)a3 didUpdateResultsForSourceItem:(id)a4;
- (void)loadCameraClip;
- (void)playbackControlsDidChangePlayerVolume:(float)a3;
- (void)playbackControlsDidToggleMuted:(BOOL)a3;
- (void)playbackControlsDidUpdateVisibilityOfLoadingIndicator:(BOOL)a3;
- (void)playbackEngine:(id)a3 didUpdateEventCache:(id)a4;
- (void)playbackEngine:(id)a3 didUpdateLiveCameraSource:(id)a4;
- (void)playbackEngine:(id)a3 didUpdatePlaybackError:(id)a4;
- (void)playbackEngine:(id)a3 didUpdatePlaybackPosition:(id)a4;
- (void)playbackEngine:(id)a3 didUpdateTimeControlStatus:(unint64_t)a4;
- (void)playerViewController:(id)a3 willTransitionToVisibilityOfPlaybackControls:(BOOL)a4 withAnimationCoordinator:(id)a5;
- (void)reloadAfterNotificationUpdate;
- (void)reloadForCurrentClip;
- (void)toggleLive;
- (void)toggleMicrophoneState;
- (void)updateLiveButton;
- (void)updateMicrophone;
- (void)updateMicrophoneVisibility;
- (void)updateViewConstraints;
- (void)updateVolumeControlVisibility;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation HUNCCameraPlayerViewController

- (HUNCCameraPlayerViewController)initWithCameraProfile:(id)a3 notificationUUID:(id)a4 clipUUID:(id)a5 imageURL:(id)a6
{
  v58 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
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
      v55 = v12;
      v56 = 2112;
      v57 = v13;
      _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "(NC) Launching Camera Player <%p> for notificationUUID:%@ clipUUID:%@", buf, 0x20u);
    }

    v17 = objc_alloc_init(MEMORY[0x277D14458]);
    launchEvent = v15->_launchEvent;
    v15->_launchEvent = v17;

    objc_storeStrong(&v15->_cameraProfile, a3);
    objc_storeStrong(&v15->_notificationUUID, a4);
    objc_storeStrong(&v15->_clipUUID, a5);
    v19 = objc_alloc(MEMORY[0x277D144A0]);
    v20 = [v11 accessory];
    v21 = [v20 home];
    v22 = [v21 hf_characteristicValueManager];
    v23 = [v19 initWithProfile:v11 valueSource:v22];
    cameraItem = v15->_cameraItem;
    v15->_cameraItem = v23;

    v25 = [[HUCameraPlayerAVBehavior alloc] initWithDelegate:v15];
    behavior = v15->_behavior;
    v15->_behavior = v25;

    [(HUNCCameraPlayerViewController *)v15 addBehavior:v15->_behavior];
    v27 = [(AVHomeIPCameraBehavior *)v15->_behavior behaviorContext];
    [v27 setPlaybackControlsIncludeTransportControls:0];

    v28 = [(AVHomeIPCameraBehavior *)v15->_behavior behaviorContext];
    [v28 setPlaybackControlsIncludeDisplayModeControls:0];

    v29 = [(AVHomeIPCameraBehavior *)v15->_behavior behaviorContext];
    [v29 setZoomingEnabled:0];

    [(HUNCCameraPlayerViewController *)v15 _setupPlaybackEngine];
    if (v13)
    {
      [(HUNCCameraPlayerViewController *)v15 loadCameraClip];
    }

    v30 = objc_alloc_init(HUCameraBlurViewController);
    blurViewController = v15->_blurViewController;
    v15->_blurViewController = v30;

    v32 = [HUCameraPlayerAccessoryViewController alloc];
    v33 = [(HUNCCameraPlayerViewController *)v15 playbackEngine];
    v34 = [(HUCameraPlayerAccessoryViewController *)v32 initWithPlaybackEngine:v33];
    accessoryViewController = v15->_accessoryViewController;
    v15->_accessoryViewController = v34;

    [(HUCameraPlayerAccessoryViewController *)v15->_accessoryViewController setForceLoadingIndicatorToDisplay:1];
    v36 = [HUCameraPlayerLiveContentViewController alloc];
    v37 = [(HUNCCameraPlayerViewController *)v15 playbackEngine];
    v38 = [(HUCameraPlayerLiveContentViewController *)v36 initWithPlaybackEngine:v37];
    liveContentViewController = v15->_liveContentViewController;
    v15->_liveContentViewController = v38;

    v40 = [[HUNCCameraPlayerPlaceholderContentViewController alloc] initWithImageURL:v14];
    placeholderContentViewController = v15->_placeholderContentViewController;
    v15->_placeholderContentViewController = v40;

    v42 = [objc_alloc(MEMORY[0x277D14B08]) initWithDelegate:v15 sourceItem:v15->_cameraItem];
    itemManager = v15->_itemManager;
    v15->_itemManager = v42;

    [(HFItemManager *)v15->_itemManager disableExternalUpdatesWithReason:@"kDisableUpdatesReasonHUNCCameraPlayerViewControllerNotVisible"];
    [(HUNCCameraPlayerViewController *)v15 setDelegate:v15];
    [(HUNCCameraPlayerViewController *)v15 setUpdatesNowPlayingInfoCenter:0];
    v44 = [MEMORY[0x277CB83F8] sharedInstance];
    v45 = *MEMORY[0x277CB8030];
    v50 = 0;
    [v44 setCategory:v45 error:&v50];
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
    v48 = [MEMORY[0x277D14468] sharedDecorator];
  }

  return v15;
}

- (void)viewDidLoad
{
  v89 = *MEMORY[0x277D85DE8];
  v84.receiver = self;
  v84.super_class = HUNCCameraPlayerViewController;
  [(HUNCCameraPlayerViewController *)&v84 viewDidLoad];
  v3 = [(HUNCCameraPlayerViewController *)self placeholderContentViewController];
  [(HUNCCameraPlayerViewController *)self addChildViewController:v3];

  v4 = [(HUNCCameraPlayerViewController *)self accessoryViewController];
  [(HUNCCameraPlayerViewController *)self addChildViewController:v4];

  v5 = [(HUNCCameraPlayerViewController *)self blurViewController];
  [(HUNCCameraPlayerViewController *)self addChildViewController:v5];

  v6 = [(HUNCCameraPlayerViewController *)self contentOverlayView];
  v7 = [(HUNCCameraPlayerViewController *)self placeholderContentViewController];
  v8 = [v7 view];
  [v6 naui_addAutoLayoutSubview:v8];

  v9 = [(HUNCCameraPlayerViewController *)self contentOverlayView];
  v10 = [(HUNCCameraPlayerViewController *)self blurViewController];
  v11 = [v10 view];
  [v9 naui_addAutoLayoutSubview:v11];

  v12 = [(HUNCCameraPlayerViewController *)self contentOverlayView];
  v13 = [(HUNCCameraPlayerViewController *)self accessoryViewController];
  v14 = [v13 view];
  [v12 addSubview:v14];

  v15 = [(HUNCCameraPlayerViewController *)self accessoryViewController];
  v16 = [v15 view];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = [(HUNCCameraPlayerViewController *)self accessoryViewController];
  v18 = [v17 view];
  v19 = [v18 leftAnchor];
  v20 = [(HUNCCameraPlayerViewController *)self contentOverlayView];
  v21 = [v20 leftAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  [v22 setActive:1];

  v23 = [(HUNCCameraPlayerViewController *)self accessoryViewController];
  v24 = [v23 view];
  v25 = [v24 rightAnchor];
  v26 = [(HUNCCameraPlayerViewController *)self contentOverlayView];
  v27 = [v26 rightAnchor];
  v28 = [v25 constraintEqualToAnchor:v27];
  [v28 setActive:1];

  v29 = [(HUNCCameraPlayerViewController *)self accessoryViewController];
  v30 = [v29 view];
  v31 = [v30 topAnchor];
  v32 = [(HUNCCameraPlayerViewController *)self contentOverlayView];
  v33 = [v32 topAnchor];
  v34 = [v31 constraintEqualToAnchor:v33];
  [v34 setActive:1];

  v35 = [(HUNCCameraPlayerViewController *)self accessoryViewController];
  v36 = [v35 view];
  v37 = [v36 bottomAnchor];
  v38 = [(HUNCCameraPlayerViewController *)self contentOverlayView];
  v39 = [v38 bottomAnchor];
  v40 = [v37 constraintEqualToAnchor:v39];
  [v40 setActive:1];

  v41 = [(HUNCCameraPlayerViewController *)self blurViewController];
  [v41 didMoveToParentViewController:self];

  v42 = [(HUNCCameraPlayerViewController *)self placeholderContentViewController];
  [v42 didMoveToParentViewController:self];

  v43 = [(HUNCCameraPlayerViewController *)self accessoryViewController];
  [v43 didMoveToParentViewController:self];

  v44 = [(HUNCCameraPlayerViewController *)self playbackEngine];
  LODWORD(v36) = [v44 prefersAudioEnabled];
  v45 = [(HUNCCameraPlayerViewController *)self playerController];
  [v45 setMuted:v36 ^ 1];

  v46 = [(HUNCCameraPlayerViewController *)self cameraProfile];
  LODWORD(v36) = [v46 hf_supportsBidirectionalAudio];

  if (v36)
  {
    [(HUNCCameraPlayerViewController *)self setHu_playbackControlsAreVisible:1];
    v47 = [(HUNCCameraPlayerViewController *)self customControlsView];
    v48 = [(HUNCCameraPlayerViewController *)self liveContentViewController];
    v49 = [v48 microphoneControl];
    [v47 addSubview:v49];

    v50 = [(HUNCCameraPlayerViewController *)self liveContentViewController];
    v51 = [v50 microphoneControl];
    [v51 addTarget:self action:sel_toggleMicrophoneState forControlEvents:64];

    v52 = HFLogForCategory();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = [(HUNCCameraPlayerViewController *)self cameraProfile];
      v54 = [v53 accessory];
      v55 = [v54 name];
      v56 = [(HUNCCameraPlayerViewController *)self clipUUID];
      *buf = 138412546;
      v86 = v55;
      v87 = 1024;
      v88 = v56 != 0;
      _os_log_impl(&dword_20CEB6000, v52, OS_LOG_TYPE_DEFAULT, "Speaker is supported by camera:%@. Microphone control displayed at top:%{BOOL}d.", buf, 0x12u);
    }

    v57 = [(HUNCCameraPlayerViewController *)self playbackEngine];
    v58 = [v57 isMicrophoneEnabled];
    v59 = [(HUNCCameraPlayerViewController *)self liveContentViewController];
    v60 = [v59 microphoneControl];
    [v60 setTalking:v58];

    v61 = [(HUNCCameraPlayerViewController *)self liveContentViewController];
    v62 = [v61 microphoneControl];
    v63 = [v62 leftAnchor];
    v64 = [(HUNCCameraPlayerViewController *)self customControlsView];
    v65 = [v64 leftAnchor];
    v66 = [v63 constraintEqualToAnchor:v65 constant:8.0];
    [v66 setActive:1];

    v67 = [(HUNCCameraPlayerViewController *)self liveContentViewController];
    v68 = [v67 microphoneControl];
    v69 = [v68 bottomAnchor];
    v70 = [(HUNCCameraPlayerViewController *)self customControlsView];
    v71 = [v70 safeAreaLayoutGuide];
    v72 = [v71 bottomAnchor];
    v73 = [v69 constraintEqualToAnchor:v72 constant:-8.0];
    [v73 setActive:1];

    [(HUNCCameraPlayerViewController *)self updateMicrophone];
  }

  else
  {
    v74 = [(HUNCCameraPlayerViewController *)self liveContentViewController];
    v75 = [v74 microphoneControl];
    [v75 setAlpha:0.0];

    v76 = HFLogForCategory();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      v77 = [(HUNCCameraPlayerViewController *)self cameraProfile];
      v78 = [v77 accessory];
      *buf = 138412290;
      v86 = v78;
      _os_log_impl(&dword_20CEB6000, v76, OS_LOG_TYPE_DEFAULT, "Speaker not supported by camera:%@. Will not display microphone control.", buf, 0xCu);
    }
  }

  v79 = HFLogForCategory();
  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v79, OS_LOG_TYPE_DEFAULT, "Notification scrubber viewDidLoad.", buf, 2u);
  }

  v80 = [(HUNCCameraPlayerViewController *)self accessoryViewController];
  [v80 setShouldShowLoadingIndicatorForClipPlayback:1];

  v81 = [(HUNCCameraPlayerViewController *)self accessoryViewController];
  [v81 setCanShowOverlayContent:1];

  v82 = [(HUNCCameraPlayerViewController *)self customControlsView];
  v83 = [(HUNCCameraPlayerViewController *)self liveButtonView];
  [v82 addSubview:v83];

  [(HUNCCameraPlayerViewController *)self _setupConstraintSets];
}

- (void)viewWillAppear:(BOOL)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = HUNCCameraPlayerViewController;
  [(HUNCCameraPlayerViewController *)&v14 viewWillAppear:a3];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    v16 = self;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
  }

  v7 = [(HUNCCameraPlayerViewController *)self itemManager];
  [v7 endDisableExternalUpdatesWithReason:@"kDisableUpdatesReasonHUNCCameraPlayerViewControllerNotVisible"];

  v8 = [(HUNCCameraPlayerViewController *)self clipUUID];

  if (!v8)
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "(NC) Starting Live Stream since there is no clipUUID.", buf, 2u);
    }

    v10 = [MEMORY[0x277D144D0] livePosition];
    v11 = [(HUNCCameraPlayerViewController *)self playbackEngine];
    [v11 setPlaybackPosition:v10];

    v12 = [(HUNCCameraPlayerViewController *)self playbackEngine];
    [v12 play];

    v13 = [MEMORY[0x277D144D0] livePosition];
    [(HUNCCameraPlayerViewController *)self _updateStateForPlaybackPosition:v13 animated:1];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HUNCCameraPlayerViewController;
  [(HUNCCameraPlayerViewController *)&v7 viewDidAppear:a3];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    v9 = self;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@ : %@", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HUNCCameraPlayerViewController;
  [(HUNCCameraPlayerViewController *)&v8 viewWillDisappear:a3];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@ : %@", buf, 0x16u);
  }

  v7 = [(HUNCCameraPlayerViewController *)self itemManager];
  [v7 disableExternalUpdatesWithReason:@"kDisableUpdatesReasonHUNCCameraPlayerViewControllerNotVisible"];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HUNCCameraPlayerViewController;
  [(HUNCCameraPlayerViewController *)&v7 viewDidDisappear:a3];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    v9 = self;
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
  v3 = [(HUNCCameraPlayerViewController *)self playbackEngine];
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

  v7 = [(HUNCCameraPlayerViewController *)self view];
  [v7 bounds];
  v9 = v8;

  if (v6 < 1.0 && v6 > 0.0 && [(HUNCCameraPlayerViewController *)self numberOfAssociatedAccessoriesDisplayed])
  {
    v6 = 1.0;
  }

  [(HUNCCameraPlayerViewController *)self setPreferredContentSize:v9, round(v9 / v6)];
}

- (void)_updateRecordedClipInterfaceAvailabilityWithAnimation:(BOOL)a3
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
  v9 = a3;
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
  v2 = [(HUNCCameraPlayerViewController *)self cameraProfile];
  v3 = [v2 accessory];
  v4 = [v3 home];

  return v4;
}

- (void)_setupConstraintSets
{
  v36[4] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v18 = MEMORY[0x277CCAAD0];
  v30 = [(HUNCCameraPlayerViewController *)self liveButtonView];
  v27 = [v30 rightAnchor];
  v29 = [(HUNCCameraPlayerViewController *)self customControlsView];
  v28 = [v29 transportControlsAreaLayoutGuide];
  v26 = [v28 rightAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v36[0] = v25;
  v24 = [(HUNCCameraPlayerViewController *)self liveButtonView];
  v23 = [v24 heightAnchor];
  v22 = [v23 constraintEqualToConstant:44.0];
  v36[1] = v22;
  v21 = [(HUNCCameraPlayerViewController *)self liveButtonView];
  v19 = [v21 widthAnchor];
  v20 = [(HUNCCameraPlayerViewController *)self liveButtonView];
  v3 = [v20 liveButton];
  v4 = [v3 widthAnchor];
  v5 = [v19 constraintEqualToAnchor:v4];
  v36[2] = v5;
  v6 = [(HUNCCameraPlayerViewController *)self liveButtonView];
  v7 = [v6 bottomAnchor];
  v8 = [(HUNCCameraPlayerViewController *)self customControlsView];
  v9 = [v8 bottomAnchor];
  v10 = [v7 constraintEqualToAnchor:v9 constant:-8.0];
  v36[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:4];
  [v18 activateConstraints:v11];

  v12 = objc_alloc(MEMORY[0x277D2C958]);
  v13 = [(HUNCCameraPlayerViewController *)self view];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __54__HUNCCameraPlayerViewController__setupConstraintSets__block_invoke;
  v33[3] = &unk_277DC2030;
  objc_copyWeak(&v34, &location);
  v14 = [v12 initWithOwningView:v13 constraintBuilder:v33];
  [(HUNCCameraPlayerViewController *)self setStaticConstraintSet:v14];

  v15 = objc_alloc(MEMORY[0x277D2C958]);
  v16 = [(HUNCCameraPlayerViewController *)self view];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __54__HUNCCameraPlayerViewController__setupConstraintSets__block_invoke_2;
  v31[3] = &unk_277DC2030;
  objc_copyWeak(&v32, &location);
  v17 = [v15 initWithOwningView:v16 constraintBuilder:v31];
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
  v3 = [(HUNCCameraPlayerViewController *)self staticConstraintSet];
  [v3 activateIfNeeded];

  v4 = [(HUNCCameraPlayerViewController *)self scrubberConstraintSet];
  [v4 activateIfNeeded];

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
    v4 = [(HUNCCameraPlayerViewController *)self currentClip];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "(NC) reloading after Notification Update for currentClip:%@.", &v5, 0xCu);
  }

  [(HUNCCameraPlayerViewController *)self loadCameraClip];
}

- (void)reloadForCurrentClip
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(HUNCCameraPlayerViewController *)self accessoryViewController];
  [v3 setForceLoadingIndicatorToDisplay:0];

  v4 = [(HUNCCameraPlayerViewController *)self currentClip];

  v5 = HFLogForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = [(HUNCCameraPlayerViewController *)self currentClip];
      v8 = [(HUNCCameraPlayerViewController *)self playbackStartDateFromSignificantEvent];
      v18 = 138412546;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(NC) reloading for currentClip:%@ at start position:%@.", &v18, 0x16u);
    }

    v9 = [(HUNCCameraPlayerViewController *)self currentClip];
    v10 = [v9 isComplete];

    v11 = MEMORY[0x277D144D0];
    if (v10)
    {
      v12 = [(HUNCCameraPlayerViewController *)self playbackStartDateFromSignificantEvent];
      v13 = [v11 clipPositionWithDate:v12];
      v14 = [(HUNCCameraPlayerViewController *)self playbackEngine];
      [v14 setPlaybackPosition:v13];

      [(HUNCCameraPlayerViewController *)self _updateRecordedClipInterfaceAvailabilityWithAnimation:1];
      return;
    }

    v15 = [MEMORY[0x277D144D0] livePosition];
    v17 = [(HUNCCameraPlayerViewController *)self playbackEngine];
    [v17 setPlaybackPosition:v15];
  }

  else
  {
    if (v6)
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(NC) reloading while missing clip. Starting Live Stream.", &v18, 2u);
    }

    v15 = [MEMORY[0x277D144D0] livePosition];
    v16 = [(HUNCCameraPlayerViewController *)self playbackEngine];
    [v16 setPlaybackPosition:v15];

    [(HUNCCameraPlayerViewController *)self _updateStateForPlaybackPosition:v15 animated:1];
  }
}

- (void)loadCameraClip
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(HUNCCameraPlayerViewController *)self notificationUUID];
  v4 = HFLogForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 138412290;
      v18 = v3;
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
    v13 = v3;
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
  v4 = [(HUNCCameraPlayerViewController *)self home];
  v5 = [(HUNCCameraPlayerViewController *)self cameraProfile];
  v14 = [v3 initWithHome:v4 cameraProfile:v5];

  v6 = [(HUNCCameraPlayerViewController *)self behavior];
  [v14 setClipScrubber:v6];

  v7 = [(HUNCCameraPlayerViewController *)self notificationUUID];
  [v14 setNotificationUUID:v7];

  v8 = [(HUNCCameraPlayerViewController *)self clipUUID];
  [v14 setNotificationClipUUID:v8];

  v9 = [(HUNCCameraPlayerViewController *)self clipUUID];

  if (v9)
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
  v3 = [(HUNCCameraPlayerViewController *)self playbackEngine];
  [v3 addObserver:self withOptions:v4];
}

- (void)_updateStateForPlaybackPosition:(id)a3 animated:(BOOL)a4
{
  v5 = [a3 contentType];
  v6 = [(HUNCCameraPlayerViewController *)self accessoryViewController];
  [v6 setForceLoadingIndicatorToDisplay:0];

  if (v5)
  {
    v7 = [(HUNCCameraPlayerViewController *)self liveContentViewController];
    v8 = [v7 viewIfLoaded];
    [v8 removeFromSuperview];
  }

  else
  {
    v9 = [(HUNCCameraPlayerViewController *)self playbackEngine];
    v10 = [v9 cameraProfile];
    v11 = [v10 hf_shouldDisableLiveStream];

    if (v11)
    {
      goto LABEL_6;
    }

    v12 = [(HUNCCameraPlayerViewController *)self behavior];
    v13 = [v12 behaviorContext];
    v7 = [v13 livePreviewContainerView];

    v14 = [(HUNCCameraPlayerViewController *)self liveContentViewController];
    v15 = [v14 view];
    [v7 naui_addAutoLayoutSubview:v15];

    v16 = MEMORY[0x277CCAAD0];
    v17 = [(HUNCCameraPlayerViewController *)self liveContentViewController];
    v18 = [v17 view];
    v19 = [v16 hu_constraintsSizingAnchorProvider:v18 toAnchorProvider:v7];
    [v16 activateConstraints:v19];

    [(HUNCCameraPlayerViewController *)self _updateLivePreviewAspectRatio];
    v8 = [(HUNCCameraPlayerViewController *)self liveContentViewController];
    v20 = [v8 cameraView];
    [v20 setBadgeHidden:1];
  }

LABEL_6:
  v21 = [(HUNCCameraPlayerViewController *)self behavior];
  v22 = [v21 behaviorContext];
  [v22 setLivePreviewActive:v5 == 0];

  if (v5)
  {
    v23 = [(HUNCCameraPlayerViewController *)self playbackEngine];
    v24 = [v23 player];
    [(HUNCCameraPlayerViewController *)self setPlayer:v24];
  }

  else
  {
    [(HUNCCameraPlayerViewController *)self setPlayer:0];
  }

  v25 = [(HUNCCameraPlayerViewController *)self player];

  if (v25)
  {
    v26 = [(HUNCCameraPlayerViewController *)self player];
    [v26 setAllowsExternalPlayback:0];
  }

  v29 = [(HUNCCameraPlayerViewController *)self playbackEngine];
  v27 = [v29 prefersAudioEnabled];
  v28 = [(HUNCCameraPlayerViewController *)self playerController];
  [v28 setMuted:v27 ^ 1u];
}

- (void)_updateStateForScrubbingStatus:(BOOL)a3 animated:(BOOL)a4
{
  if (a3)
  {
    v5 = [(HUNCCameraPlayerViewController *)self behavior:a3];
    v6 = [v5 behaviorContext];
    [v6 setPlaybackControlsIncludeDisplayModeControls:0];

    v8 = [(HUNCCameraPlayerViewController *)self behavior];
    v7 = [v8 behaviorContext];
    [v7 setPlaybackControlsIncludeVolumeControls:0];
  }
}

- (void)_updateLivePreviewAspectRatio
{
  v3 = [(HUNCCameraPlayerViewController *)self playbackEngine];
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

  v8 = [(HUNCCameraPlayerViewController *)self behavior];
  v7 = [v8 behaviorContext];
  [v7 setLivePreviewAspectRatio:{v6, 1.0}];
}

- (void)_updatePlayerVolumeSliderState
{
  v6 = [(HUNCCameraPlayerViewController *)self playbackEngine];
  [v6 streamAudioVolume];
  v4 = v3;
  v5 = [(HUNCCameraPlayerViewController *)self playerController];
  [v5 setVolume:v4];
}

- (BOOL)_shouldAutoPlayOnViewAppearance
{
  v3 = [(HUNCCameraPlayerViewController *)self playbackEngine];
  v4 = [v3 playbackPosition];
  v5 = [MEMORY[0x277D144D0] livePosition];
  v6 = [v4 isEqual:v5];

  result = 1;
  if ((v6 & 1) == 0)
  {
    v8 = [(HUNCCameraPlayerViewController *)self playbackStartDateFromSignificantEvent];

    if (!v8)
    {
      return 0;
    }

    v9 = [(HUNCCameraPlayerViewController *)self playbackEngine];
    v10 = [v9 currentClip];

    if (!v10)
    {
      return 0;
    }

    v11 = [(HUNCCameraPlayerViewController *)self playbackEngine];
    v12 = [v11 currentClip];
    v13 = [v12 hf_dateInterval];
    v14 = [(HUNCCameraPlayerViewController *)self playbackStartDateFromSignificantEvent];
    v15 = [v13 hf_searchResultForDate:v14];

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

  v4 = [(HUNCCameraPlayerViewController *)self accessoryViewController];
  [v4 setShouldShowLoadingIndicatorForClipPlayback:1];

  [(HUNCCameraPlayerViewController *)self updateMicrophone];
  v5 = [(HUNCCameraPlayerViewController *)self miniScrubberViewController];
  [v5 toggleLive];
}

- (void)playerViewController:(id)a3 willTransitionToVisibilityOfPlaybackControls:(BOOL)a4 withAnimationCoordinator:(id)a5
{
  v5 = a4;
  v13 = *MEMORY[0x277D85DE8];
  v7 = a5;
  [(HUNCCameraPlayerViewController *)self setHu_playbackControlsAreVisible:v5];
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v12 = v5;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "Transitioning visibility of playback controls:%{BOOL}d", buf, 8u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __125__HUNCCameraPlayerViewController_playerViewController_willTransitionToVisibilityOfPlaybackControls_withAnimationCoordinator___block_invoke;
  v9[3] = &unk_277DB7EE0;
  v9[4] = self;
  v10 = v5;
  [v7 addCoordinatedAnimations:v9 completion:0];
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

- (void)playbackEngine:(id)a3 didUpdatePlaybackPosition:(id)a4
{
  [(HUNCCameraPlayerViewController *)self _updateStateForPlaybackPosition:a4 animated:1];

  [(HUNCCameraPlayerViewController *)self updateMicrophone];
}

- (void)playbackEngine:(id)a3 didUpdateLiveCameraSource:(id)a4
{
  [(HUNCCameraPlayerViewController *)self _updateLivePreviewAspectRatio:a3];
  [(HUNCCameraPlayerViewController *)self updateMicrophone];

  [(HUNCCameraPlayerViewController *)self updateVolumeControlVisibility];
}

- (void)playbackEngine:(id)a3 didUpdateTimeControlStatus:(unint64_t)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(HUNCCameraPlayerViewController *)self updateMicrophone];
  [(HUNCCameraPlayerViewController *)self updateVolumeControlVisibility];
  v7 = [(HUNCCameraPlayerViewController *)self launchEvent];

  if (a4 == 2 && v7)
  {
    v8 = [(HUNCCameraPlayerViewController *)self clipUUID];

    v9 = HFLogForCategory();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "(NC) Send Clip playback launch event after time control update.", &v20, 2u);
      }

      v11 = [v6 currentClip];
      v12 = [(HUNCCameraPlayerViewController *)self launchEvent];
      [v12 setCameraClip:v11];

      v13 = [(HUNCCameraPlayerViewController *)self launchEvent];
      [v13 launchedRecordingWithError:0];
    }

    else
    {
      if (v10)
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "(NC) Send Live Stream launch event after time control update.", &v20, 2u);
      }

      v13 = [(HUNCCameraPlayerViewController *)self launchEvent];
      [v13 launchedStreamWithError:0];
    }

    [(HUNCCameraPlayerViewController *)self setLaunchEvent:0];
    goto LABEL_15;
  }

  if (a4 == 2)
  {
LABEL_15:
    v18 = [(HUNCCameraPlayerViewController *)self accessoryViewController];
    [v18 setShouldShowLoadingIndicatorForClipPlayback:0];

    v14 = [(HUNCCameraPlayerViewController *)self placeholderContentViewController];
    v15 = [v14 view];
    v16 = v15;
    v17 = 1;
    goto LABEL_16;
  }

  if (a4 == 1 && [v6 engineMode] == 1)
  {
    v14 = [(HUNCCameraPlayerViewController *)self placeholderContentViewController];
    v15 = [v14 view];
    v16 = v15;
    v17 = 0;
LABEL_16:
    [v15 setHidden:v17];
  }

  [(HUNCCameraPlayerViewController *)self updateLiveButton];
  v19 = HFLogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = 134218242;
    v21 = a4;
    v22 = 2112;
    v23 = v6;
    _os_log_debug_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEBUG, "Updated timecontrol status:%lu for %@", &v20, 0x16u);
  }
}

- (void)playbackEngine:(id)a3 didUpdatePlaybackError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HUNCCameraPlayerViewController *)self blurViewController];
  v9 = [(HUNCCameraPlayerViewController *)self playbackEngine];
  [v8 updateBlurWithPlaybackEngine:v9 completionHandler:0];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HUNCCameraPlayerViewController_playbackEngine_didUpdatePlaybackError___block_invoke;
  block[3] = &unk_277DB8810;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
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

- (void)playbackEngine:(id)a3 didUpdateEventCache:(id)a4
{
  v5 = objc_opt_class();
  v6 = [(HUNCCameraPlayerViewController *)self playbackEngine];
  v7 = [v6 cameraClips];
  v8 = [v7 firstObject];
  if (!v8)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v8;
  if (!v9)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v11 handleFailureInFunction:v12 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v5, objc_opt_class()}];

LABEL_7:
    v10 = 0;
  }

  [(HUNCCameraPlayerViewController *)self setCurrentClip:v10];
  v13 = [(HUNCCameraPlayerViewController *)self playbackStartDateFromSignificantEvent];

  if (v13)
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

- (double)currentScrubberResolutionForBehavior:(id)a3
{
  v3 = [(HUNCCameraPlayerViewController *)self miniScrubberViewController];
  [v3 currentScrubberResolution];
  v5 = v4;

  return v5;
}

- (void)playbackControlsDidToggleMuted:(BOOL)a3
{
  v3 = a3;
  v4 = [(HUNCCameraPlayerViewController *)self playbackEngine];
  [v4 setPrefersAudioEnabled:!v3];
}

- (void)playbackControlsDidUpdateVisibilityOfLoadingIndicator:(BOOL)a3
{
  v3 = a3;
  v4 = [(HUNCCameraPlayerViewController *)self accessoryViewController];
  [v4 setShouldShowLoadingIndicatorForClipPlayback:v3];
}

- (void)playbackControlsDidChangePlayerVolume:(float)a3
{
  v5 = [(HUNCCameraPlayerViewController *)self playbackEngine];
  *&v4 = a3;
  [v5 setStreamAudioVolume:v4];
}

- (void)_updateCameraStatus
{
  v3 = [(HUNCCameraPlayerViewController *)self accessoryViewController];
  [v3 hu_reloadData];

  v4 = [(HUNCCameraPlayerViewController *)self playbackEngine];
  v5 = [v4 engineMode];

  if (!v5)
  {
    v6 = [(HUNCCameraPlayerViewController *)self playbackEngine];
    [v6 play];
  }
}

- (void)itemManager:(id)a3 didUpdateResultsForSourceItem:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HUNCCameraPlayerViewController *)self cameraItem];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      _os_log_debug_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEBUG, "Updated camera itemManager:%@ for item:%@", &v11, 0x16u);
    }

    [(HUNCCameraPlayerViewController *)self _updateCameraStatus];
  }
}

- (void)updateMicrophone
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(HUNCCameraPlayerViewController *)self cameraProfile];
  v4 = [v3 hf_supportsBidirectionalAudio];

  if (v4)
  {
    v5 = [(HUNCCameraPlayerViewController *)self playbackEngine];
    v6 = [v5 isMicrophoneEnabled];
    v7 = [(HUNCCameraPlayerViewController *)self liveContentViewController];
    v8 = [v7 microphoneControl];
    [v8 setTalking:v6];

    [(HUNCCameraPlayerViewController *)self updateMicrophoneVisibility];
  }

  else
  {
    v9 = [(HUNCCameraPlayerViewController *)self liveContentViewController];
    v10 = [v9 microphoneControl];
    [v10 setAlpha:0.0];
  }

  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [(HUNCCameraPlayerViewController *)self cameraProfile];
    v13 = [v12 hf_supportsBidirectionalAudio];
    v14 = [(HUNCCameraPlayerViewController *)self liveContentViewController];
    v15 = [v14 microphoneControl];
    [v15 alpha];
    v17 = v16 == 0.0;
    v18 = [(HUNCCameraPlayerViewController *)self playbackEngine];
    v19[0] = 67109632;
    v19[1] = v13;
    v20 = 1024;
    v21 = v17;
    v22 = 1024;
    v23 = [v18 isLiveStreamPlaying];
    _os_log_debug_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEBUG, "MicrophoneDisplay: BiDirectionalAudio:%{BOOL}d PortraitHidden:%{BOOL}d LiveStreaming:%{BOOL}d", v19, 0x14u);
  }
}

- (void)updateMicrophoneVisibility
{
  v3 = [(HUNCCameraPlayerViewController *)self shouldDisplayMicrophoneControl];
  v7 = [(HUNCCameraPlayerViewController *)self liveContentViewController];
  v4 = [v7 microphoneControl];
  v5 = v4;
  v6 = 0.0;
  if (v3)
  {
    v6 = 1.0;
  }

  [v4 setAlpha:v6];
}

- (BOOL)shouldDisplayMicrophoneControl
{
  v3 = [(HUNCCameraPlayerViewController *)self cameraProfile];
  if ([v3 hf_supportsBidirectionalAudio])
  {
    v4 = [(HUNCCameraPlayerViewController *)self playbackEngine];
    if ([v4 isLiveStreamPlaying])
    {
      v5 = [(HUNCCameraPlayerViewController *)self hu_playbackControlsAreVisible];
    }

    else
    {
      v5 = 0;
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
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HUNCCameraPlayerViewController *)self playbackEngine];
  v4 = [v3 isMicrophoneEnabled];
  v5 = [(HUNCCameraPlayerViewController *)self playbackEngine];
  [v5 setMicrophoneEnabled:v4 ^ 1u];

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(HUNCCameraPlayerViewController *)self playbackEngine];
    v16[0] = 67109120;
    v16[1] = [v7 isMicrophoneEnabled];
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Toggled microphone state:%{BOOL}d.", v16, 8u);
  }

  v8 = [(HUNCCameraPlayerViewController *)self playbackEngine];
  v9 = [v8 isMicrophoneEnabled];

  v10 = [(HUNCCameraPlayerViewController *)self liveContentViewController];
  v11 = [v10 microphoneControl];
  v12 = v11;
  if (v9)
  {
    [v11 setTalking:1];

    v13 = [(HUNCCameraPlayerViewController *)self playerController];
    [v13 setMuted:0];
  }

  else
  {
    [v11 setTalking:0];

    v13 = [(HUNCCameraPlayerViewController *)self playbackEngine];
    v14 = [v13 prefersAudioEnabled];
    v15 = [(HUNCCameraPlayerViewController *)self playerController];
    [v15 setMuted:v14 ^ 1u];
  }
}

- (void)updateVolumeControlVisibility
{
  v6 = [(HUNCCameraPlayerViewController *)self playbackEngine];
  v3 = [v6 shouldDisplayVolumeControls];
  v4 = [(HUNCCameraPlayerViewController *)self behavior];
  v5 = [v4 behaviorContext];
  [v5 setPlaybackControlsIncludeVolumeControls:v3];
}

- (void)updateLiveButton
{
  v4 = [(HUNCCameraPlayerViewController *)self liveButtonView];
  v3 = [(HUNCCameraPlayerViewController *)self playbackEngine];
  [v4 updateDisplayForStreaming:{objc_msgSend(v3, "isLiveStreamPlaying")}];
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
  v4 = [(HUNCCameraPlayerViewController *)self playbackEngine];
  [v4 pause];

  v5 = [(HUNCCameraPlayerViewController *)self playbackEngine];
  [v5 removeObserver:self];

  v6 = [(HUNCCameraPlayerViewController *)self miniScrubberViewController];
  v7 = [v6 view];
  [v7 removeFromSuperview];

  v8 = [(HUNCCameraPlayerViewController *)self miniScrubberViewController];
  [(HUNCCameraPlayerViewController *)self removeChildViewController:v8];

  [(HUNCCameraPlayerViewController *)self setMiniScrubberViewController:0];
  [(HUNCCameraPlayerViewController *)self setDelegate:0];
  [(HUNCCameraPlayerViewController *)self setPlaybackEngine:0];
  v9 = [(HUNCCameraPlayerViewController *)self liveContentViewController];
  v10 = [v9 viewIfLoaded];
  [v10 removeFromSuperview];

  [(HUNCCameraPlayerViewController *)self setLiveContentViewController:0];
  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    *buf = 138412546;
    v15 = self;
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
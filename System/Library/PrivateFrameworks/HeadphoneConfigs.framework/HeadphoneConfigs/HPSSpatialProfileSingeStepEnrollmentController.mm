@interface HPSSpatialProfileSingeStepEnrollmentController
- (BOOL)checkAndShowInEarPopup;
- (HPSSpatialProfileSingeStepEnrollmentController)init;
- (id)angleArrayToBinaryString:(id)string;
- (id)getBudsInEarString;
- (void)bluetoothDidBecomeAvailable;
- (void)cancelBlur;
- (void)cancelSpatialAudioProfile;
- (void)captureViewTimerDidFire;
- (void)checkVolume;
- (void)cleanUpSpinner;
- (void)clearBoundingBox;
- (void)continueButtonTapped;
- (void)didReceiveCaptureVideo:(id)video colorImage:(id)image depthImage:(id)depthImage faceObject:(id)object;
- (void)didReceiveStateUpdateForSession:(id)session stateInfo:(id)info;
- (void)forceBlur;
- (void)getBudsInEarString;
- (void)hideEarPillsDots;
- (void)moveToStep:(int)step;
- (void)pauseEnrollment;
- (void)playEarCaptureSoundWithCompletion:(id)completion;
- (void)prepareSpinner;
- (void)pulseEarBoundingBox;
- (void)resetVolume;
- (void)resumeEnrollment;
- (void)retrieveProfile;
- (void)sendTipKitSignal;
- (void)setupAudioVideo;
- (void)setupEarBoundingBox;
- (void)setupEarTutorialView;
- (void)setupEnrollController;
- (void)setupEnrollViewUI;
- (void)setupWelcomeContentView;
- (void)showBudsInEarPopUp:(id)up;
- (void)showEarPillsDots;
- (void)showLandscapeAlert;
- (void)startCaptureViewTimer;
- (void)startEnrollment;
- (void)startFaceInFrameHandlerTimer;
- (void)startPostProcessSpinner;
- (void)startPostProcessTimer;
- (void)startTutorialResumeEnrollTimer;
- (void)startWelcomeSpinner;
- (void)stopCaptureViewTimer;
- (void)stopEnrollment;
- (void)stopFaceInFrameHandlerTimer;
- (void)stopPostProcessSpinner;
- (void)stopPostProcessTimer;
- (void)stopTimers;
- (void)stopTutorialResumeEnrollTimer;
- (void)stopWelcomeSpinner;
- (void)syncProfile;
- (void)triggerFaceInFrameHandlerTimeout;
- (void)triggerPostProcessTimeout;
- (void)updateBoundingBoxHiddenStatus;
- (void)updateCurrentTrackingEar:(id)ear rightEarPoseStatus:(id)status earBoundingBox:(CGRect)box earStatus:(int)earStatus;
- (void)updateFaceTrackingStatus:(CGRect)status;
- (void)userCancelEnrollment;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation HPSSpatialProfileSingeStepEnrollmentController

- (HPSSpatialProfileSingeStepEnrollmentController)init
{
  if (!self)
  {
    return 0;
  }

  v23.receiver = self;
  v23.super_class = HPSSpatialProfileSingeStepEnrollmentController;
  v2 = [(HPSSpatialProfileSingeStepEnrollmentController *)&v23 init];
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  btManager = v2->_btManager;
  v2->_btManager = mEMORY[0x277CF3248];

  v2->_bluetoothBecameAvailable = 0;
  v2->_inEarDetectDisabledPopUpShown = 0;
  v2->_isEarOccluded = 0;
  welcomeImageView = v2->_welcomeImageView;
  v2->_welcomeImageView = 0;

  pillContainerView = v2->_pillContainerView;
  v2->_pillContainerView = 0;

  soundHapticManager = v2->_soundHapticManager;
  v2->_soundHapticManager = 0;

  v2->_currentStep = 4;
  spinner = v2->_spinner;
  v2->_spinner = 0;

  v2->_enrollmentStarted = 0;
  v2->_enrollmentReady = 0;
  v2->_enrollmentPaused = 0;
  v2->_enrollmentCompleted = 0;
  v2->_enrollViewInitialized = 0;
  v2->_enrollmentFirstPhaseComplete = 0;
  v2->_earBoundingBoxDetected = 0;
  v9 = *(MEMORY[0x277CBF3A0] + 16);
  v2->_currentEarBB.origin = *MEMORY[0x277CBF3A0];
  v2->_currentEarBB.size = v9;
  v2->_welcomeSpinnerOn = 0;
  v2->_postProcessSpinnerOn = 0;
  v2->_initialVolume = 0.0;
  v2->_volumeChanged = 0;
  v2->_currentProgress = 0.0;
  v2->_faceDetected = 0;
  v2->_faceStraightZeroAngleCaptured = 0;
  v2->_faceCaptured = 0;
  v2->_faceTooCloseErrorShowing = 0;
  v2->_faceBoundingBoxStatus = 0;
  v2->_completedPosesCount = 0;
  v2->_earCaptureSoundStep = 0;
  v2->_debugMode = 0;
  v2->_isLookingAtPhone = 0;
  v2->_faceInFrameCount = 0;
  frameContext = v2->_frameContext;
  v2->_frameContext = 0;

  frameDetector = v2->_frameDetector;
  v2->_frameDetector = 0;

  v2->_earOcclusionDetectTracker = 0;
  v2->_supressEarOcclusionWarning = 0;
  v2->_occlusionSupressTimeOut = 10;
  v12 = dispatch_queue_create("com.apple.HeadphoneSettings.stepSerialQueue", 0);
  stepSerialQueue = v2->_stepSerialQueue;
  v2->_stepSerialQueue = v12;

  v14 = dispatch_queue_create("com.apple.HeadphoneSettings.visualDetectionQueue", 0);
  visualDetectionQueue = v2->_visualDetectionQueue;
  v2->_visualDetectionQueue = v14;

  v2->_sessionState = 0;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:v2 selector:sel_cancelSpatialAudioProfile name:*MEMORY[0x277D76660] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:v2 selector:sel_bluetoothDidBecomeAvailable name:*MEMORY[0x277CF3168] object:0];

  array = [MEMORY[0x277CBEB18] array];
  cachedTransitionStates = v2->_cachedTransitionStates;
  v2->_cachedTransitionStates = array;

  v20 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v22[0] = 0;
    _os_log_impl(&dword_251143000, v20, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Single step enrollment started.", v22, 2u);
  }

  return v2;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = HPSSpatialProfileSingeStepEnrollmentController;
  [(HPSSpatialProfileSingeStepEnrollmentController *)&v9 viewDidLoad];
  view = [(HPSSpatialProfileSingeStepEnrollmentController *)self view];
  [view size];
  v5 = v4;
  view2 = [(HPSSpatialProfileSingeStepEnrollmentController *)self view];
  [view2 size];
  v8 = v7;

  if (v5 <= v8)
  {
    [(HPSSpatialProfileSingeStepEnrollmentController *)self setupEnrollController];
    [(HPSSpatialProfileSingeStepEnrollmentController *)self setupWelcomeContentView];
    [(HPSSpatialProfileSingeStepEnrollmentController *)self setupAudioVideo];
    [(HPSSpatialProfileSingeStepEnrollmentController *)self setupEarBoundingBox];
    [(HPSSpatialProfileSingeStepEnrollmentController *)self setupEarTutorialView];
    [(HPSSpatialProfileSingeStepEnrollmentController *)self moveToStep:4];
  }

  else
  {
    [(HPSSpatialProfileSingeStepEnrollmentController *)self showLandscapeAlert];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = HPSSpatialProfileSingeStepEnrollmentController;
  [(HPSSpatialProfileSingeStepEnrollmentController *)&v3 viewDidAppear:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Enrollment Controller viewDidDisappear", v5, 2u);
  }

  [(HPSSpatialProfileSingeStepEnrollmentController *)self cancelSpatialAudioProfile];
}

- (void)setupEnrollController
{
  v97[8] = *MEMORY[0x277D85DE8];
  if (!self->_enrollmentSession)
  {
    v3 = objc_alloc_init(MEMORY[0x277D0F968]);
    enrollmentSession = self->_enrollmentSession;
    self->_enrollmentSession = v3;

    [(HRTFEnrollmentSession *)self->_enrollmentSession setDelegate:self];
  }

  v93 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_userCancelEnrollment];
  navigationItem = [(HPSSpatialProfileSingeStepEnrollmentController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v93];

  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(HPSSpatialProfileSingeStepEnrollmentController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  v8 = objc_alloc(MEMORY[0x277D75D18]);
  v9 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  enrollContentView = self->_enrollContentView;
  self->_enrollContentView = v9;

  [(UIView *)self->_enrollContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_initWeak(&location, self);
  v11 = [_TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer alloc];
  v94[0] = MEMORY[0x277D85DD0];
  v94[1] = 3221225472;
  v94[2] = __71__HPSSpatialProfileSingeStepEnrollmentController_setupEnrollController__block_invoke;
  v94[3] = &unk_2796ADC98;
  objc_copyWeak(&v95, &location);
  v12 = [(HPSSpatialProfileSingleStepBottomContainer *)v11 initWithBudsInEarString:v94];
  bottomContainerView = self->_bottomContainerView;
  self->_bottomContainerView = v12;

  [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  infoView = [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView infoView];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [infoView setTitle:v16];

  infoView2 = [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView infoView];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_DETAIL" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [infoView2 setDetailText:v19];

  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"WELCOME_DETAIL" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  learnMoreView = [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView learnMoreView];
  [learnMoreView setText:v21];

  v23 = self->_bottomContainerView;
  v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"CONTINUE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [(HPSSpatialProfileSingleStepBottomContainer *)v23 updateContinueButtonTitleWithTitle:v25];

  [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView updateContinueButtonActionWithTarget:self selector:sel_continueButtonTapped];
  if (self->_debugMode)
  {
    layer = [(UIView *)self->_enrollContentView layer];
    [layer setBorderWidth:1.0];

    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    v28 = systemRedColor;
    cGColor = [systemRedColor CGColor];
    layer2 = [(UIView *)self->_enrollContentView layer];
    [layer2 setBorderColor:cGColor];

    layer3 = [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView layer];
    [layer3 setBorderWidth:1.0];

    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    v33 = systemBlueColor;
    cGColor2 = [systemBlueColor CGColor];
    layer4 = [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView layer];
    [layer4 setBorderColor:cGColor2];

    scrollView = [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView scrollView];
    layer5 = [scrollView layer];
    [layer5 setBorderWidth:1.0];

    systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
    v39 = systemYellowColor;
    cGColor3 = [systemYellowColor CGColor];
    scrollView2 = [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView scrollView];
    layer6 = [scrollView2 layer];
    [layer6 setBorderColor:cGColor3];

    infoView3 = [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView infoView];
    layer7 = [infoView3 layer];
    [layer7 setBorderWidth:2.0];

    systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
    v46 = systemGreenColor;
    cGColor4 = [systemGreenColor CGColor];
    layer8 = [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView layer];
    [layer8 setBorderColor:cGColor4];

    buttonTrayEffectView = [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView buttonTrayEffectView];
    layer9 = [buttonTrayEffectView layer];
    [layer9 setBorderWidth:2.0];

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    v52 = systemGrayColor;
    cGColor5 = [systemGrayColor CGColor];
    buttonTrayEffectView2 = [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView buttonTrayEffectView];
    layer10 = [buttonTrayEffectView2 layer];
    [layer10 setBorderColor:cGColor5];
  }

  view2 = [(HPSSpatialProfileSingeStepEnrollmentController *)self view];
  [view2 addSubview:self->_enrollContentView];

  view3 = [(HPSSpatialProfileSingeStepEnrollmentController *)self view];
  [view3 addSubview:self->_bottomContainerView];

  v70 = MEMORY[0x277CCAAD0];
  topAnchor = [(UIView *)self->_enrollContentView topAnchor];
  view4 = [(HPSSpatialProfileSingeStepEnrollmentController *)self view];
  safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v88 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v97[0] = v88;
  heightAnchor = [(UIView *)self->_enrollContentView heightAnchor];
  view5 = [(HPSSpatialProfileSingeStepEnrollmentController *)self view];
  [view5 frame];
  v85 = [heightAnchor constraintEqualToConstant:v58];
  v97[1] = v85;
  leadingAnchor = [(UIView *)self->_enrollContentView leadingAnchor];
  view6 = [(HPSSpatialProfileSingeStepEnrollmentController *)self view];
  leadingAnchor2 = [view6 leadingAnchor];
  v81 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v97[2] = v81;
  trailingAnchor = [(UIView *)self->_enrollContentView trailingAnchor];
  view7 = [(HPSSpatialProfileSingeStepEnrollmentController *)self view];
  trailingAnchor2 = [view7 trailingAnchor];
  v77 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v97[3] = v77;
  topAnchor3 = [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView topAnchor];
  bottomAnchor = [(UIView *)self->_enrollContentView bottomAnchor];
  v74 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v97[4] = v74;
  leadingAnchor3 = [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView leadingAnchor];
  view8 = [(HPSSpatialProfileSingeStepEnrollmentController *)self view];
  leadingAnchor4 = [view8 leadingAnchor];
  v59 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v97[5] = v59;
  trailingAnchor3 = [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView trailingAnchor];
  view9 = [(HPSSpatialProfileSingeStepEnrollmentController *)self view];
  trailingAnchor4 = [view9 trailingAnchor];
  v63 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v97[6] = v63;
  bottomAnchor2 = [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView bottomAnchor];
  view10 = [(HPSSpatialProfileSingeStepEnrollmentController *)self view];
  bottomAnchor3 = [view10 bottomAnchor];
  v67 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v97[7] = v67;
  v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:8];
  [v70 activateConstraints:v68];

  objc_destroyWeak(&v95);
  objc_destroyWeak(&location);

  v69 = *MEMORY[0x277D85DE8];
}

id __71__HPSSpatialProfileSingeStepEnrollmentController_setupEnrollController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained getBudsInEarString];

  return v2;
}

- (void)setupWelcomeContentView
{
  v35[8] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  welcomeContentView = self->_welcomeContentView;
  self->_welcomeContentView = v3;

  [(UIView *)self->_welcomeContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_enrollContentView addSubview:self->_welcomeContentView];
  v5 = MEMORY[0x277D755B8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v34 = [v5 imageNamed:@"SpatialProfileIcon" inBundle:v6 compatibleWithTraitCollection:0];

  v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v34];
  welcomeImageView = self->_welcomeImageView;
  self->_welcomeImageView = v7;

  [(UIImageView *)self->_welcomeImageView setContentMode:1];
  [(UIImageView *)self->_welcomeImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_welcomeContentView addSubview:self->_welcomeImageView];
  v24 = MEMORY[0x277CCAAD0];
  leadingAnchor = [(UIView *)self->_welcomeContentView leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_enrollContentView leadingAnchor];
  v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v35[0] = v31;
  trailingAnchor = [(UIView *)self->_welcomeContentView trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_enrollContentView trailingAnchor];
  v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v35[1] = v28;
  topAnchor = [(UIView *)self->_welcomeContentView topAnchor];
  topAnchor2 = [(UIView *)self->_enrollContentView topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v35[2] = v25;
  bottomAnchor = [(UIView *)self->_welcomeContentView bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_enrollContentView bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v35[3] = v21;
  widthAnchor = [(UIImageView *)self->_welcomeImageView widthAnchor];
  v9 = [widthAnchor constraintEqualToConstant:240.0];
  v35[4] = v9;
  heightAnchor = [(UIImageView *)self->_welcomeImageView heightAnchor];
  v11 = [heightAnchor constraintEqualToConstant:240.0];
  v35[5] = v11;
  centerXAnchor = [(UIImageView *)self->_welcomeImageView centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_welcomeContentView centerXAnchor];
  v14 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v35[6] = v14;
  centerYAnchor = [(UIImageView *)self->_welcomeImageView centerYAnchor];
  centerYAnchor2 = [(UIView *)self->_welcomeContentView centerYAnchor];
  v17 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v35[7] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:8];
  [v24 activateConstraints:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)setupAudioVideo
{
  v3 = objc_alloc_init(HPSSpatialProfileSingleStepSoundHapticManager);
  soundHapticManager = self->_soundHapticManager;
  self->_soundHapticManager = v3;

  [(HPSSpatialProfileSingleStepSoundHapticManager *)self->_soundHapticManager start];
  v5 = objc_alloc_init(HPSSpatialProfileVideoCaptureSession);
  videoCaptureSession = self->videoCaptureSession;
  self->videoCaptureSession = v5;

  [(HPSSpatialProfileSingeStepEnrollmentController *)self checkVolume];
}

- (void)checkVolume
{
  v15 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
  p_initialVolume = &self->_initialVolume;
  v5 = [mEMORY[0x277D26E58] getVolume:&self->_initialVolume forCategory:@"Audio/Video"];

  v6 = sharedBluetoothSettingsLogComponent();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *p_initialVolume;
      v13 = 134217984;
      v14 = v8;
      _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Initial Volume: %f", &v13, 0xCu);
    }

    if (*p_initialVolume < 0.5)
    {
      v9 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134217984;
        v14 = 0.5;
        _os_log_impl(&dword_251143000, v9, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Initial Volume Too Low, Changing to Min Volume: %f", &v13, 0xCu);
      }

      mEMORY[0x277D26E58]2 = [MEMORY[0x277D26E58] sharedAVSystemController];
      LODWORD(v11) = 0.5;
      [mEMORY[0x277D26E58]2 setVolumeTo:@"Audio/Video" forCategory:v11];

      self->_volumeChanged = 1;
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [HPSSpatialProfileSingeStepEnrollmentController checkVolume];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)resetVolume
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_volumeChanged)
  {
    v3 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      initialVolume = self->_initialVolume;
      v8 = 134217984;
      v9 = initialVolume;
      _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Volume Changed, Reset to Initial Volume: %f", &v8, 0xCu);
    }

    mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
    *&v6 = self->_initialVolume;
    [mEMORY[0x277D26E58] setVolumeTo:@"Audio/Video" forCategory:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setupEnrollViewUI
{
  v53[12] = *MEMORY[0x277D85DE8];
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Setting up Enroll View UI", buf, 2u);
  }

  [(HPSSpatialProfileSingleStepPearlEnrollView *)self->_enrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BKUIPearlEnrollView *)self->_enrollView setDelegate:self];
  [(BKUIPearlEnrollView *)self->_enrollView preEnrollActivate];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [(BKUIPearlEnrollView *)self->_enrollView setBackgroundColor:systemBackgroundColor];

  v5 = [HPSSpatialProfileSingleStepPillContainerView alloc];
  v6 = [(HPSSpatialProfileSingleStepPillContainerView *)v5 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  pillContainerView = self->_pillContainerView;
  self->_pillContainerView = v6;

  [(HPSSpatialProfileSingleStepPillContainerView *)self->_pillContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HPSSpatialProfileSingleStepPillContainerView *)self->_pillContainerView setAlpha:0.0];
  view = [(HPSSpatialProfileSingeStepEnrollmentController *)self view];
  [view frame];
  v10 = v9 / 390.0;

  v11 = v10 < 1.0;
  if (v10 >= 1.0)
  {
    v12 = 5.0;
  }

  else
  {
    v12 = 15.0;
  }

  if (v11)
  {
    v13 = 85.0;
  }

  else
  {
    v13 = 100.0;
  }

  v14 = [[HPSSpatialProfileEarDotsMovieView alloc] initWithFrame:0.0, 0.0, 345.0, v13];
  earDotsMovieView = self->_earDotsMovieView;
  self->_earDotsMovieView = v14;

  [(HPSSpatialProfileEarDotsMovieView *)self->_earDotsMovieView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HPSSpatialProfileEarDotsMovieView *)self->_earDotsMovieView setAlpha:0.0];
  [(UIView *)self->_enrollContentView addSubview:self->_enrollView];
  [(UIView *)self->_enrollContentView addSubview:self->_pillContainerView];
  [(UIView *)self->_enrollContentView addSubview:self->_earDotsMovieView];
  v38 = MEMORY[0x277CCAAD0];
  leadingAnchor = [(HPSSpatialProfileSingleStepPearlEnrollView *)self->_enrollView leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_enrollContentView leadingAnchor];
  v49 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v53[0] = v49;
  trailingAnchor = [(HPSSpatialProfileSingleStepPearlEnrollView *)self->_enrollView trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_enrollContentView trailingAnchor];
  v46 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v53[1] = v46;
  topAnchor = [(HPSSpatialProfileSingleStepPearlEnrollView *)self->_enrollView topAnchor];
  topAnchor2 = [(UIView *)self->_enrollContentView topAnchor];
  v43 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v53[2] = v43;
  bottomAnchor = [(HPSSpatialProfileSingleStepPearlEnrollView *)self->_enrollView bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_enrollContentView bottomAnchor];
  v40 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v53[3] = v40;
  widthAnchor = [(HPSSpatialProfileEarDotsMovieView *)self->_earDotsMovieView widthAnchor];
  v37 = [widthAnchor constraintEqualToConstant:345.0];
  v53[4] = v37;
  heightAnchor = [(HPSSpatialProfileEarDotsMovieView *)self->_earDotsMovieView heightAnchor];
  v35 = [heightAnchor constraintEqualToConstant:v13];
  v53[5] = v35;
  centerXAnchor = [(HPSSpatialProfileEarDotsMovieView *)self->_earDotsMovieView centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_enrollContentView centerXAnchor];
  v32 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v53[6] = v32;
  bottomAnchor3 = [(HPSSpatialProfileEarDotsMovieView *)self->_earDotsMovieView bottomAnchor];
  bottomAnchor4 = [(UIView *)self->_enrollContentView bottomAnchor];
  v29 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v53[7] = v29;
  widthAnchor2 = [(HPSSpatialProfileSingleStepPillContainerView *)self->_pillContainerView widthAnchor];
  v27 = [widthAnchor2 constraintEqualToConstant:345.0];
  v53[8] = v27;
  heightAnchor2 = [(HPSSpatialProfileSingleStepPillContainerView *)self->_pillContainerView heightAnchor];
  v16 = [heightAnchor2 constraintEqualToConstant:100.0];
  v53[9] = v16;
  centerXAnchor3 = [(HPSSpatialProfileSingleStepPillContainerView *)self->_pillContainerView centerXAnchor];
  centerXAnchor4 = [(UIView *)self->_enrollContentView centerXAnchor];
  v19 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v53[10] = v19;
  bottomAnchor5 = [(HPSSpatialProfileSingleStepPillContainerView *)self->_pillContainerView bottomAnchor];
  bottomAnchor6 = [(UIView *)self->_enrollContentView bottomAnchor];
  v22 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:v12];
  v53[11] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:12];
  [v38 activateConstraints:v23];

  [(BKUIPearlEnrollView *)self->_enrollView setState:0 completion:&__block_literal_global_6];
  self->_enrollViewState = 0;
  if (self->_currentStep == 4)
  {
    [(HPSSpatialProfileSingleStepPearlEnrollView *)self->_enrollView setHidden:1];
  }

  view2 = [(HPSSpatialProfileSingeStepEnrollmentController *)self view];
  [view2 setNeedsLayout];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)setupEarTutorialView
{
  v34[8] = *MEMORY[0x277D85DE8];
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Setting up Ear Tutorial", buf, 2u);
  }

  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  tutorialContentView = self->_tutorialContentView;
  self->_tutorialContentView = v4;

  [(UIView *)self->_tutorialContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_enrollContentView addSubview:self->_tutorialContentView];
  v6 = objc_alloc_init(HPSSpatialProfileEarTutorialView);
  earTutorialView = self->_earTutorialView;
  self->_earTutorialView = v6;

  [(HPSSpatialProfileEarTutorialView *)self->_earTutorialView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_tutorialContentView addSubview:self->_earTutorialView];
  v23 = MEMORY[0x277CCAAD0];
  leadingAnchor = [(UIView *)self->_tutorialContentView leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_enrollContentView leadingAnchor];
  v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v34[0] = v30;
  trailingAnchor = [(UIView *)self->_tutorialContentView trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_enrollContentView trailingAnchor];
  v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v34[1] = v27;
  topAnchor = [(UIView *)self->_tutorialContentView topAnchor];
  topAnchor2 = [(UIView *)self->_enrollContentView topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v34[2] = v24;
  bottomAnchor = [(UIView *)self->_tutorialContentView bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_enrollContentView bottomAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v34[3] = v20;
  widthAnchor = [(HPSSpatialProfileEarTutorialView *)self->_earTutorialView widthAnchor];
  v18 = [widthAnchor constraintEqualToConstant:240.0];
  v34[4] = v18;
  heightAnchor = [(HPSSpatialProfileEarTutorialView *)self->_earTutorialView heightAnchor];
  v8 = [heightAnchor constraintEqualToConstant:106.666664];
  v34[5] = v8;
  centerXAnchor = [(HPSSpatialProfileEarTutorialView *)self->_earTutorialView centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_tutorialContentView centerXAnchor];
  v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v34[6] = v11;
  centerYAnchor = [(HPSSpatialProfileEarTutorialView *)self->_earTutorialView centerYAnchor];
  centerYAnchor2 = [(UIView *)self->_tutorialContentView centerYAnchor];
  v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v34[7] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:8];
  [v23 activateConstraints:v15];

  [(UIView *)self->_tutorialContentView setHidden:1];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)startEnrollment
{
  v10 = *MEMORY[0x277D85DE8];
  enrollmentStarted = self->_enrollmentStarted;
  v4 = sharedBluetoothSettingsLogComponent();
  v5 = v4;
  if (enrollmentStarted)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [HPSSpatialProfileSingeStepEnrollmentController startEnrollment];
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      downloadAssetPath = self->_downloadAssetPath;
      v8 = 138412290;
      v9 = downloadAssetPath;
      _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Starting Enrollment downloadAssetPath %@", &v8, 0xCu);
    }

    self->_enrollmentStarted = 1;
    [(HRTFEnrollmentSession *)self->_enrollmentSession startSession:1 withAssetPath:self->_downloadAssetPath then:&__block_literal_global_58];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __65__HPSSpatialProfileSingeStepEnrollmentController_startEnrollment__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    __65__HPSSpatialProfileSingeStepEnrollmentController_startEnrollment__block_invoke_cold_1();
  }

  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Enrollment Started", v3, 2u);
  }
}

- (void)stopEnrollment
{
  enrollmentStarted = self->_enrollmentStarted;
  v4 = sharedBluetoothSettingsLogComponent();
  v5 = v4;
  if (enrollmentStarted)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stopping Enrollment", v6, 2u);
    }

    self->_enrollmentStarted = 0;
    [(HRTFEnrollmentSession *)self->_enrollmentSession stopSession:&__block_literal_global_62];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [HPSSpatialProfileSingeStepEnrollmentController stopEnrollment];
    }
  }
}

void __64__HPSSpatialProfileSingeStepEnrollmentController_stopEnrollment__block_invoke()
{
  v0 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_251143000, v0, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Enrollment Stopped", v1, 2u);
  }
}

- (void)pauseEnrollment
{
  if (self->_enrollmentStarted)
  {
    if (self->_enrollmentPaused)
    {
      v3 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [HPSSpatialProfileSingeStepEnrollmentController pauseEnrollment];
      }
    }

    else
    {
      [(HRTFEnrollmentSession *)self->_enrollmentSession pauseSession];
      self->_enrollmentPaused = 1;
      v3 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Enrollment Paused", v4, 2u);
      }
    }
  }

  else
  {
    v3 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [HPSSpatialProfileSingeStepEnrollmentController pauseEnrollment];
    }
  }
}

- (void)resumeEnrollment
{
  if (self->_enrollmentStarted)
  {
    if (self->_enrollmentPaused)
    {
      [(HRTFEnrollmentSession *)self->_enrollmentSession resumeSession];
      self->_enrollmentPaused = 0;
      v3 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 0;
        v4 = "Spatial Profile: Enrollment Resumed";
        v5 = &v6;
LABEL_7:
        _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
      }
    }

    else
    {
      v3 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [HPSSpatialProfileSingeStepEnrollmentController resumeEnrollment];
      }
    }
  }

  else
  {
    v3 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "Spatial Profile: Cannot Resume Enrollment, NOT Started";
      v5 = buf;
      goto LABEL_7;
    }
  }
}

- (void)moveToStep:(int)step
{
  stepSerialQueue = self->_stepSerialQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke;
  v4[3] = &unk_2796ADDD0;
  v4[4] = self;
  stepCopy = step;
  dispatch_async(stepSerialQueue, v4);
}

void __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke(uint64_t a1)
{
  v2 = dispatch_group_create();
  v3 = dispatch_group_create();
  NSLog(&cfstr_SpatialProfile_17.isa);
  dispatch_group_enter(v2);
  objc_initWeak(&location, *(a1 + 32));
  v4 = *(a1 + 32);
  v5 = *(v4 + 1148);
  *(v4 + 1148) = *(a1 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2;
  block[3] = &unk_2796AD618;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
  v6 = *(a1 + 32);
  v7 = *(v6 + 1148);
  if (v7 > 5)
  {
    if (v7 > 9)
    {
      switch(v7)
      {
        case 10:
          v38 = sharedBluetoothSettingsLogComponent();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_251143000, v38, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> RetrieveProfile", buf, 2u);
          }

          [*(a1 + 32) retrieveProfile];
          goto LABEL_53;
        case 11:
          v43 = sharedBluetoothSettingsLogComponent();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_251143000, v43, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> SyncProfile", buf, 2u);
          }

          [*(a1 + 32) syncProfile];
          goto LABEL_53;
        case 12:
          [*(v6 + 1184) updateStatus:1 EnrollmentResult:@"Success"];
          v23 = sharedBluetoothSettingsLogComponent();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_251143000, v23, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> Completed", buf, 2u);
          }

          v65[0] = MEMORY[0x277D85DD0];
          v65[1] = 3221225472;
          v65[2] = __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_85;
          v65[3] = &unk_2796ADCE0;
          v65[4] = *(a1 + 32);
          v24 = v3;
          v66 = v24;
          v67 = v5;
          v25 = MEMORY[0x277D85CD0];
          dispatch_async(MEMORY[0x277D85CD0], v65);

          v63[0] = MEMORY[0x277D85DD0];
          v63[1] = 3221225472;
          v63[2] = __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_5_89;
          v63[3] = &unk_2796AD618;
          v64 = v2;
          dispatch_group_notify(v24, v25, v63);

          v12 = v66;
          goto LABEL_46;
      }
    }

    else
    {
      switch(v7)
      {
        case 6:
          v30 = sharedBluetoothSettingsLogComponent();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_251143000, v30, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontViewCapturePositionFace", buf, 2u);
          }

          [*(*(a1 + 32) + 1184) initFrameRateDetection];
          [*(*(a1 + 32) + 1184) updateFaceEnrollStart];
          v80[0] = MEMORY[0x277D85DD0];
          v80[1] = 3221225472;
          v80[2] = __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_71;
          v80[3] = &unk_2796ADD08;
          v31 = v3;
          v32 = *(a1 + 32);
          v81 = v31;
          v82 = v32;
          v84 = v5;
          v83 = v2;
          v33 = MEMORY[0x277D85CD0];
          dispatch_async(MEMORY[0x277D85CD0], v80);

          v12 = v81;
          goto LABEL_46;
        case 7:
          v39 = sharedBluetoothSettingsLogComponent();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_251143000, v39, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontViewCaptureMoveHead", buf, 2u);
          }

          v74[0] = MEMORY[0x277D85DD0];
          v74[1] = 3221225472;
          v74[2] = __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_74;
          v74[3] = &unk_2796ADD58;
          v75 = v3;
          objc_copyWeak(&v78, &location);
          v79 = v5;
          v76 = *(a1 + 32);
          v77 = v2;
          v40 = MEMORY[0x277D85CD0];
          dispatch_async(MEMORY[0x277D85CD0], v74);

          objc_destroyWeak(&v78);
          v12 = v75;
          goto LABEL_46;
        case 8:
          *(v6 + 1242) = 1;
          v13 = sharedBluetoothSettingsLogComponent();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontViewCaptureCompleted", buf, 2u);
          }

          [*(*(a1 + 32) + 1184) updateFaceEnrollDuration];
          v68[0] = MEMORY[0x277D85DD0];
          v68[1] = 3221225472;
          v68[2] = __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_78;
          v68[3] = &unk_2796ADDA8;
          v14 = v3;
          v15 = *(a1 + 32);
          v69 = v14;
          v70 = v15;
          v73 = v5;
          objc_copyWeak(&v72, &location);
          v71 = v2;
          v16 = MEMORY[0x277D85CD0];
          dispatch_async(MEMORY[0x277D85CD0], v68);

          objc_destroyWeak(&v72);
          v12 = v69;
          goto LABEL_46;
      }
    }

LABEL_50:
    v44 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_cold_1();
    }

LABEL_53:
    dispatch_group_leave(v2);
    goto LABEL_54;
  }

  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v34 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v34, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> GeneralFailure", buf, 2u);
      }

      [*(*(a1 + 32) + 1184) updateStatus:0 EnrollmentResult:@"Failed"];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_97;
      v48[3] = &unk_2796AD750;
      v35 = v3;
      v36 = *(a1 + 32);
      v49 = v35;
      v50 = v36;
      v37 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v48);

      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_3_108;
      v46[3] = &unk_2796AD618;
      v47 = v2;
      dispatch_group_notify(v35, v37, v46);

      v12 = v49;
    }

    else if (v7 == 4)
    {
      v41 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v41, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> Welcome", buf, 2u);
      }

      v89[0] = MEMORY[0x277D85DD0];
      v89[1] = 3221225472;
      v89[2] = __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_66;
      v89[3] = &unk_2796ADCE0;
      v89[4] = *(a1 + 32);
      v91 = v5;
      v90 = v2;
      v42 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v89);

      v12 = v90;
    }

    else
    {
      v17 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v17, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontView", buf, 2u);
      }

      v18 = *(a1 + 32);
      if (!*(v18 + 1184))
      {
        v19 = objc_alloc_init(HPSSpatialProfileAnalytics);
        v20 = *(a1 + 32);
        v21 = *(v20 + 1184);
        *(v20 + 1184) = v19;

        v18 = *(a1 + 32);
      }

      v85[0] = MEMORY[0x277D85DD0];
      v85[1] = 3221225472;
      v85[2] = __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_69;
      v85[3] = &unk_2796ADD08;
      v85[4] = v18;
      v88 = v5;
      v86 = v3;
      v87 = v2;
      v22 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v85);

      v12 = v86;
    }

    goto LABEL_46;
  }

  if ((v7 - 1) >= 2)
  {
    if (!v7)
    {
      v26 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v26, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> CouldntScanEar", buf, 2u);
      }

      [*(*(a1 + 32) + 1184) updateStatus:0 EnrollmentResult:@"Failed"];
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_93;
      v59[3] = &unk_2796ADCE0;
      v27 = v3;
      v28 = *(a1 + 32);
      v60 = v27;
      v61 = v28;
      v62 = v5;
      v29 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v59);

      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2_94;
      v57[3] = &unk_2796AD618;
      v58 = v2;
      dispatch_group_notify(v27, v29, v57);

      v12 = v60;
      goto LABEL_46;
    }

    goto LABEL_50;
  }

  [*(v6 + 1184) incrementRightEarOcclusionCount];
  [*(*(a1 + 32) + 1184) incrementLeftEarOcclusionCount];
  v8 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> HairCoveringEar", buf, 2u);
  }

  [*(*(a1 + 32) + 1184) updateStatus:0 EnrollmentResult:@"Failed"];
  [*(a1 + 32) forceBlur];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_95;
  v53[3] = &unk_2796ADCE0;
  v9 = v3;
  v10 = *(a1 + 32);
  v54 = v9;
  v55 = v10;
  v56 = v5;
  v11 = MEMORY[0x277D85CD0];
  dispatch_async(MEMORY[0x277D85CD0], v53);

  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2_96;
  v51[3] = &unk_2796AD618;
  v52 = v2;
  dispatch_group_notify(v9, v11, v51);

  v12 = v54;
LABEL_46:

LABEL_54:
  v45 = dispatch_time(0, 3000000000);
  dispatch_group_wait(v2, v45);
  objc_destroyWeak(&location);
}

void __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 1408) scrollView];
  [v1 setContentOffset:1 animated:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
}

void __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_66(uint64_t a1)
{
  [*(*(a1 + 32) + 1408) moveToEnrollmentFromStep:*(a1 + 48) toStep:4];
  if (!+[HPSSpatialProfileManager isProxCardShowed])
  {
    [HPSSpatialProfileManager setProxCardShowed:1];
  }

  [*(a1 + 32) startEnrollment];
  [*(a1 + 32) showContinueButton];
  [*(*(a1 + 32) + 1400) setAlpha:0.0];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_69(uint64_t a1)
{
  [*(*(a1 + 32) + 1056) setHidden:0];
  [*(*(a1 + 32) + 1056) setFaceCaptured:0];
  v2 = *(a1 + 32);
  v3 = v2[126];
  v4 = v2[176];
  v5 = *(a1 + 56);
  v15 = v2[132];
  v13[4] = v2;
  v14 = v3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2_70;
  v13[3] = &unk_2796AD618;
  v6 = v3;
  v7 = v15;
  [v4 moveToEnrollmentFromStep:v5 toStep:5 animateInAlongSide:&v15 animateOutAlongSide:&v14 animatedCompletion:v13];
  v8 = v15;

  v9 = v14;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_3;
  v11[3] = &unk_2796AD618;
  v10 = *(a1 + 40);
  v12 = *(a1 + 48);
  dispatch_group_notify(v10, MEMORY[0x277D85CD0], v11);
}

void __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2_70(uint64_t a1)
{
  [*(*(a1 + 32) + 1000) removeFromSuperview];
  v2 = [*(*(a1 + 32) + 1056) tutorialMovieView];
  [v2 play];
}

void __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_3(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontView Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_71(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = [*(*(a1 + 40) + 1056) tutorialMovieView];
  v3 = *(a1 + 40);
  v4 = *(v3 + 1056);
  v5 = *(v3 + 1408);
  v6 = *(a1 + 56);
  v23 = v2;
  v24 = v4;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2_72;
  v21[3] = &unk_2796AD750;
  v21[4] = v3;
  v22 = *(a1 + 32);
  v7 = v4;
  [v5 moveToEnrollmentFromStep:v6 toStep:6 animateInAlongSide:&v24 animateOutAlongSide:&v23 animatedCompletion:v21];
  v8 = v24;

  v9 = v23;
  dispatch_group_enter(*(a1 + 32));
  v10 = *(a1 + 40);
  v11 = *(v10 + 1048);
  v12 = *(v10 + 1148);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_4;
  v19[3] = &unk_2796AD618;
  v20 = *(a1 + 32);
  [v11 triggerSoundHapticForEnrollmentState:v12 completion:v19];
  [*(a1 + 40) resumeEnrollment];
  dispatch_group_leave(*(a1 + 32));
  v13 = *(a1 + 32);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_5;
  v17 = &unk_2796AD618;
  v18 = *(a1 + 48);
  dispatch_group_notify(v13, MEMORY[0x277D85CD0], &v14);
  [*(a1 + 40) startFaceInFrameHandlerTimer];
}

void __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2_72(uint64_t a1)
{
  *(*(a1 + 32) + 1224) = 5;
  [*(a1 + 32) startCaptureViewTimer];
  v2 = [*(*(a1 + 32) + 1056) pillContainer];
  [v2 setHidden:1];

  dispatch_group_enter(*(a1 + 40));
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 1056);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_3_73;
  v6[3] = &unk_2796AD750;
  v6[4] = v4;
  v7 = v3;
  [v5 setState:3 completion:v6];
}

void __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_5(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontViewCapturePositionFace Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_74(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2_75;
  aBlock[3] = &unk_2796ADD30;
  objc_copyWeak(&v17, (a1 + 56));
  v18 = *(a1 + 64);
  v10 = *(a1 + 32);
  v2 = v10.i64[0];
  v16 = vextq_s8(v10, v10, 8uLL);
  v3 = _Block_copy(aBlock);
  v4 = v3;
  v5 = *(a1 + 40);
  if (*(v5 + 1424) == 5)
  {
    (*(v3 + 2))(v3);
  }

  else
  {
    [*(v5 + 1056) setState:5 completion:v3];
  }

  [*(*(a1 + 40) + 1184) initFrameRateDetection];
  dispatch_group_enter(*(a1 + 32));
  v6 = *(a1 + 40);
  v7 = *(v6 + 1048);
  v8 = *(v6 + 1148);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_3_76;
  v13[3] = &unk_2796AD618;
  v14 = *(a1 + 32);
  [v7 triggerSoundHapticForEnrollmentState:v8 completion:v13];
  v9 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_4_77;
  block[3] = &unk_2796AD618;
  v12 = *(a1 + 48);
  dispatch_group_notify(v9, MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v17);
}

void __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2_75(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained showEarPillsDots];
  [WeakRetained[176] moveToEnrollmentFromStep:*(a1 + 56) toStep:7];
  [*(*(a1 + 32) + 992) bringSubviewToFront:*(*(a1 + 32) + 1088)];
  [*(*(a1 + 32) + 1088) setFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [*(*(a1 + 32) + 1088) setHidden:0];
  *(*(a1 + 32) + 1424) = 5;
  dispatch_group_leave(*(a1 + 40));
}

void __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_4_77(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontViewCaptureMoveHead Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_78(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  [*(*(a1 + 40) + 1056) setFaceCaptured:1];
  [*(a1 + 40) stopCaptureViewTimer];
  [*(a1 + 40) startPostProcessTimer];
  [*(a1 + 40) forceBlur];
  dispatch_group_enter(*(a1 + 32));
  [*(*(a1 + 40) + 1408) moveToEnrollmentFromStep:*(a1 + 64) toStep:8];
  v2 = *(*(a1 + 40) + 1056);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2_79;
  v11[3] = &unk_2796ADD80;
  objc_copyWeak(&v13, (a1 + 56));
  v6 = *(a1 + 32);
  v3 = v6.i64[0];
  v12 = vextq_s8(v6, v6, 8uLL);
  [v2 setState:6 completion:v11];
  dispatch_group_enter(*(a1 + 32));
  v4 = *(*(a1 + 40) + 1048);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_3_80;
  v9[3] = &unk_2796AD618;
  v10 = *(a1 + 32);
  [v4 triggerSoundHapticForEarCaptureState:1 completion:v9];
  dispatch_group_leave(*(a1 + 32));
  v5 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_4_81;
  block[3] = &unk_2796AD618;
  v8 = *(a1 + 48);
  dispatch_group_notify(v5, MEMORY[0x277D85CD0], block);
  [*(a1 + 40) stopFaceInFrameHandlerTimer];
  [*(a1 + 40) sendTipKitSignal];

  objc_destroyWeak(&v13);
}

void __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2_79(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained[132] pillContainer];
  [v2 setHidden:0];

  [*(*(a1 + 32) + 1088) setFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [*(*(a1 + 32) + 1088) setHidden:1];
  [*(*(a1 + 32) + 1088) setAlpha:0.0];
  *(*(a1 + 32) + 1424) = 6;
  dispatch_group_leave(*(a1 + 40));
}

void __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_4_81(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontViewCaptureCompleted Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_85(uint64_t a1)
{
  [*(a1 + 32) stopTimers];
  dispatch_group_enter(*(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(v2 + 1408);
  v4 = *(a1 + 48);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2_86;
  v18[3] = &unk_2796AD618;
  v18[4] = v2;
  [v3 moveToEnrollmentFromStep:v4 toStep:12 completionAction:v18];
  dispatch_group_enter(*(a1 + 40));
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 1056);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_3_87;
  v16[3] = &unk_2796AD750;
  v16[4] = v6;
  v17 = v5;
  [v7 setState:10 completion:v16];
  dispatch_group_enter(*(a1 + 40));
  v8 = *(a1 + 32);
  v9 = *(v8 + 1048);
  v10 = *(v8 + 1148);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_4_88;
  v14 = &unk_2796AD618;
  v15 = *(a1 + 40);
  [v9 triggerSoundHapticForEnrollmentState:v10 completion:&v11];
  [*(*(a1 + 32) + 1400) setAlpha:{0.0, v11, v12, v13, v14}];
  [*(a1 + 32) stopEnrollment];
  [*(a1 + 32) showContinueButton];
  [*(*(a1 + 32) + 1408) updateContinueButtonActionWithTarget:*(a1 + 32) selector:sel_cancelSpatialAudioProfile];
  *(*(a1 + 32) + 1209) = 1;
  dispatch_group_leave(*(a1 + 40));
}

uint64_t __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2_86(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1129] == 1)
  {
    [v2 stopPostProcessSpinner];
    v2 = *(a1 + 32);
  }

  return [v2 stopPostProcessTimer];
}

void __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_5_89(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> Completed Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_93(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  [*(*(a1 + 40) + 1408) moveToEnrollmentFromStep:*(a1 + 48) toStep:0];
  [*(a1 + 40) showContinueButton];
  [*(*(a1 + 40) + 1408) updateContinueButtonActionWithTarget:*(a1 + 40) selector:sel_cancelSpatialAudioProfile];
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2_94(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> CouldntScanEar Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_95(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  [*(*(a1 + 40) + 1408) moveToEnrollmentFromStep:*(a1 + 48) toStep:2];
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2_96(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> HairCoveringEar Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_97(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = [*(*(a1 + 40) + 1408) infoView];
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"GENERAL_FAILURE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v5];

  v6 = [*(*(a1 + 40) + 1408) infoView];
  v7 = *(a1 + 40);
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"GENERAL_FAILURE_DETAIL" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v6 setDetailText:v9];

  v10 = *(*(a1 + 40) + 1408);
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"DONE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v10 updateContinueButtonTitleWithTitle:v12];

  v13 = *(a1 + 40);
  if (*(v13 + 1192))
  {
    [v13 cleanUpSpinner];
    v13 = *(a1 + 40);
  }

  if (*(v13 + 1129) == 1)
  {
    [v13 stopPostProcessSpinner];
    v13 = *(a1 + 40);
  }

  [v13 stopPostProcessTimer];
  [*(*(a1 + 40) + 1400) setAlpha:0.0];
  [*(*(a1 + 40) + 1056) setHidden:1];
  [*(a1 + 40) stopEnrollment];
  [*(a1 + 40) showContinueButton];
  [*(*(a1 + 40) + 1408) updateContinueButtonActionWithTarget:*(a1 + 40) selector:sel_cancelSpatialAudioProfile];
  dispatch_group_leave(*(a1 + 32));
  dispatch_group_enter(*(a1 + 32));
  v14 = *(*(a1 + 40) + 1048);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2_107;
  v15[3] = &unk_2796AD618;
  v16 = *(a1 + 32);
  [v14 triggerSoundHapticForEnrollmentState:3 completion:v15];
}

void __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_3_108(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> GeneralFailure Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)continueButtonTapped
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    currentStep = self->_currentStep;
    sessionState = self->_sessionState;
    v10[0] = 67109376;
    v10[1] = currentStep;
    v11 = 1024;
    v12 = sessionState;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: ContinueButton Tapped Current Step %d, Currente Session %d ", v10, 0xEu);
  }

  if (self->_currentStep == 4)
  {
    if ([(HPSSpatialProfileSingeStepEnrollmentController *)self checkAndShowInEarPopup])
    {
      goto LABEL_17;
    }

    if (([(BluetoothManager *)self->_btManager available]& 1) == 0)
    {
      v6 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10[0]) = 0;
        _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "Spatial Profile: btManager is not available", v10, 2u);
      }

      if (!self->_welcomeSpinnerOn)
      {
        v7 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v10[0]) = 0;
          _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Spatial Profile: btManager is not available starting welcome spinner", v10, 2u);
        }

        [(HPSSpatialProfileSingeStepEnrollmentController *)self startWelcomeSpinner];
      }
    }
  }

  if (self->_enrollmentReady)
  {
    v8 = self->_currentStep;
    if (v8 <= 9)
    {
      [(HPSSpatialProfileSingeStepEnrollmentController *)self moveToStep:(v8 + 1)];
    }
  }

  else if (!self->_welcomeSpinnerOn)
  {
    [(HPSSpatialProfileSingeStepEnrollmentController *)self startWelcomeSpinner];
  }

LABEL_17:
  v9 = *MEMORY[0x277D85DE8];
}

- (void)userCancelEnrollment
{
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: User Cancelled Spatial Audio Profile", v4, 2u);
  }

  [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics updateStatus:0 EnrollmentResult:@"Cancel"];
  [(HPSSpatialProfileSingeStepEnrollmentController *)self cancelSpatialAudioProfile];
}

- (void)stopTimers
{
  [(HPSSpatialProfileSingeStepEnrollmentController *)self stopFaceInFrameHandlerTimer];
  [(HPSSpatialProfileSingeStepEnrollmentController *)self stopCaptureViewTimer];

  [(HPSSpatialProfileSingeStepEnrollmentController *)self stopPostProcessTimer];
}

- (void)cancelSpatialAudioProfile
{
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Cancel Spatial Audio Profile", buf, 2u);
  }

  if (self->_enrollmentStarted)
  {
    [(HPSSpatialProfileSingeStepEnrollmentController *)self stopEnrollment];
  }

  [(HPSSpatialProfileSingeStepEnrollmentController *)self stopTimers];
  [(HPSSpatialProfileSingleStepSoundHapticManager *)self->_soundHapticManager stop];
  [(HPSSpatialProfileSingeStepEnrollmentController *)self resetVolume];
  [(HPSSpatialProfileEarTutorialView *)self->_earTutorialView stopPlayers];
  [(HPSSpatialProfileSingeStepEnrollmentController *)self dismissViewControllerAnimated:1 completion:&__block_literal_global_113];
  if (self->_enrollmentCompleted)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"HPSSpatialAudioProfileUpdated" object:0];
  }

  if (self->dismissalHandler)
  {
    v5 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Executing : Dismiss handler", v6, 2u);
    }

    (*(self->dismissalHandler + 2))();
  }

  [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics submitHPSSpatialProfileEnrollAnalytics];
}

- (void)bluetoothDidBecomeAvailable
{
  self->_bluetoothBecameAvailable = 1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__HPSSpatialProfileSingeStepEnrollmentController_bluetoothDidBecomeAvailable__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __77__HPSSpatialProfileSingeStepEnrollmentController_bluetoothDidBecomeAvailable__block_invoke(uint64_t result)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(*(result + 32) + 1128) == 1)
  {
    v1 = result;
    v2 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(v1 + 32);
      v4 = *(v3 + 1206);
      v5 = [*(v3 + 1280) available];
      v7[0] = 67109376;
      v7[1] = v4;
      v8 = 1024;
      v9 = v5;
      _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: bluetoothDidBecomeAvailable -> stopWelcomeSpinner, _enrollmentReady %d [_btManager available] %d", v7, 0xEu);
    }

    result = [*(v1 + 32) stopWelcomeSpinner];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)retrieveProfile
{
  v7 = *MEMORY[0x277D85DE8];
  [self code];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void __65__HPSSpatialProfileSingeStepEnrollmentController_retrieveProfile__block_invoke_120(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[6];
    v6 = a1[7];
    v8 = 134218240;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Retrive completion : requestedSize = %lu profileSize = %lu", &v8, 0x16u);
  }

  [*(a1[4] + 1176) appendData:v3];
  dispatch_group_leave(*(*(a1[5] + 8) + 40));
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __65__HPSSpatialProfileSingeStepEnrollmentController_retrieveProfile__block_invoke_122(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(a1 + 32) + 1176) length];
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Retrieved Profile Size: %lu", &v6, 0xCu);
  }

  result = [*(a1 + 32) moveToStep:11];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)syncProfile
{
  v14 = *MEMORY[0x277D85DE8];
  profileData = self->_profileData;
  if (profileData && [(NSMutableData *)profileData length])
  {
    v4 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(NSMutableData *)self->_profileData length];
      *buf = 134217984;
      v13 = v5;
      _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Syncing Profile, Size: %lu", buf, 0xCu);
    }

    v6 = [MEMORY[0x277CF3268] soundProfileRecordWithCustomData:self->_profileData];
    v7 = objc_alloc_init(MEMORY[0x277CF3260]);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __61__HPSSpatialProfileSingeStepEnrollmentController_syncProfile__block_invoke;
    v10[3] = &unk_2796ADE20;
    v10[4] = self;
    v11 = v7;
    v8 = v7;
    [v8 createSoundProfileRecord:v6 completion:v10];
  }

  else
  {
    v6 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Cannot Sync Profile, Invalid Profile Data", buf, 2u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __61__HPSSpatialProfileSingeStepEnrollmentController_syncProfile__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sharedBluetoothSettingsLogComponent();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (v3)
  {
    if (v5)
    {
      __61__HPSSpatialProfileSingeStepEnrollmentController_syncProfile__block_invoke_cold_1(v3, v4);
    }
  }

  else if (v5)
  {
    __61__HPSSpatialProfileSingeStepEnrollmentController_syncProfile__block_invoke_cold_2();
  }

  [*(a1 + 32) moveToStep:12];
  [*(a1 + 40) invalidate];
}

- (id)angleArrayToBinaryString:(id)string
{
  v18 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [stringCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = &stru_286339F58;
    v7 = *v14;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(stringCopy);
        }

        if ([*(*(&v13 + 1) + 8 * v8) captured])
        {
          v10 = @"1%@";
        }

        else
        {
          v10 = @"0%@";
        }

        v6 = [MEMORY[0x277CCACA8] stringWithFormat:v10, v9];

        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [stringCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = &stru_286339F58;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)startTutorialResumeEnrollTimer
{
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Start Tutorial automatic Delay Transition timer", buf, 2u);
  }

  if (self->_tutorialResumeEnrollTimer)
  {
    v4 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stopping Tutorial automatic Delay Transition timer…", v9, 2u);
    }

    [(HPSSpatialProfileSingeStepEnrollmentController *)self stopTutorialResumeEnrollTimer];
  }

  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Starting Tutorial automatic Delay Transition timer", v8, 2u);
  }

  v6 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_tutorialResumeEnrollTimerDidFire selector:0 userInfo:0 repeats:3.0];
  tutorialResumeEnrollTimer = self->_tutorialResumeEnrollTimer;
  self->_tutorialResumeEnrollTimer = v6;
}

- (void)stopTutorialResumeEnrollTimer
{
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stopping capture view timer", v5, 2u);
  }

  [(NSTimer *)self->_tutorialResumeEnrollTimer invalidate];
  tutorialResumeEnrollTimer = self->_tutorialResumeEnrollTimer;
  self->_tutorialResumeEnrollTimer = 0;
}

- (void)startCaptureViewTimer
{
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Restart capture view timer", buf, 2u);
  }

  if (self->_captureViewTimer)
  {
    v4 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stopping capture view timer…", v9, 2u);
    }

    [(HPSSpatialProfileSingeStepEnrollmentController *)self stopCaptureViewTimer];
  }

  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Starting capture view timer", v8, 2u);
  }

  v6 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_captureViewTimerDidFire selector:0 userInfo:0 repeats:180.0];
  captureViewTimer = self->_captureViewTimer;
  self->_captureViewTimer = v6;
}

- (void)stopCaptureViewTimer
{
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stopping capture view timer", v5, 2u);
  }

  [(NSTimer *)self->_captureViewTimer invalidate];
  captureViewTimer = self->_captureViewTimer;
  self->_captureViewTimer = 0;
}

- (void)captureViewTimerDidFire
{
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: captureViewTimerDidFire canceling spatial audio profile", buf, 2u);
  }

  v4 = MEMORY[0x277D75110];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"CANCEL_ENROLLMENT_ALERT_PROMPT" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  v7 = [v4 alertControllerWithTitle:v6 message:&stru_286339F58 preferredStyle:1];

  v8 = MEMORY[0x277D750F8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CANCEL_ENROLLMENT_ALERT_PROMPT_BUTTON" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__HPSSpatialProfileSingeStepEnrollmentController_captureViewTimerDidFire__block_invoke;
  v12[3] = &unk_2796AD708;
  v12[4] = self;
  v11 = [v8 actionWithTitle:v10 style:0 handler:v12];
  [v7 addAction:v11];

  [(HPSSpatialProfileSingeStepEnrollmentController *)self presentViewController:v7 animated:1 completion:0];
}

- (id)getBudsInEarString
{
  v44 = *MEMORY[0x277D85DE8];
  [(BluetoothManager *)self->_btManager connectedDevices];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v2 = v40 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v38;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v38 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v37 + 1) + 8 * i);
        if (+[HPSProductUtils isAppleHeadphone:](HPSProductUtils, "isAppleHeadphone:", v7) && ([v7 isTemporaryPaired] & 1) == 0)
        {
          if ([v7 isGenuineAirPods])
          {
            v8 = [BTSDeviceClassic deviceWithDevice:v7];
            v9 = v8;
            if (v8)
            {
              v33 = 3;
              v34 = 3;
              classicDevice = [v8 classicDevice];
              [classicDevice inEarStatusPrimary:&v34 secondary:&v33];

              if (!v34 || !v33)
              {
                classicDevice2 = [v9 classicDevice];
                productId = [classicDevice2 productId];

                0x2000 = [MEMORY[0x277CCACA8] stringWithFormat:@"ACCESSORY_MODEL_NAME_%d", productId - 0x2000];
                v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v16 = [v15 localizedStringForKey:0x2000 value:&stru_286339F58 table:@"SpatialAudioProfile"];
                if ([v16 length] && productId >= 0x200A)
                {

                  if (productId >> 4 <= 0x200)
                  {
                    v17 = 0;
                    goto LABEL_31;
                  }
                }

                else
                {
                }

                if (productId == 8239)
                {
                  0x2000 = @"ACCESSORY_MODEL_NAME_180";
                  v17 = 1;
                }

                else if (productId == 8223)
                {
                  v17 = 0;
                  0x2000 = @"ACCESSORY_MODEL_NAME_10";
                }

                else
                {
                  v17 = 0;
                  if (productId == 8210)
                  {
                    0x2000 = @"ACCESSORY_MODEL_NAME_18";
                  }

                  else
                  {
                    0x2000 = @"ACCESSORY_MODEL_NAME_15";
                  }
                }

LABEL_31:
                v18 = sharedBluetoothSettingsLogComponent();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  classicDevice3 = [v9 classicDevice];
                  name = [classicDevice3 name];
                  *buf = 138412290;
                  v42 = name;
                  _os_log_impl(&dword_251143000, v18, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Device %@, bud in ear", buf, 0xCu);
                }

                uppercaseString = [MGGetStringAnswer() uppercaseString];
                v22 = [@"SPATIAL_AUDIO_PROFILE_IED_WARN_" stringByAppendingFormat:@"%@_%@", uppercaseString, 0x2000];

                v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v11 = [v23 localizedStringForKey:v22 value:&stru_286339F58 table:@"SpatialAudioProfile"];

                switch(productId)
                {
                  case 0x2025u:
                    v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                    v25 = v24;
                    v26 = @"SPATIAL_AUDIO_PROFILE_IED_WARN_IPHONE_ACCESSORY_MODEL_NAME_24";
                    v27 = @"DeviceConfig-B465";
                    break;
                  case 0x201Du:
                    v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                    v25 = v24;
                    v26 = @"SPATIAL_AUDIO_PROFILE_IED_WARN_IPHONE_ACCESSORY_MODEL_NAME_42";
                    v27 = @"DeviceConfig-B498-v2";
                    break;
                  case 0x2017u:
                    v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                    v25 = v24;
                    v26 = @"SPATIAL_AUDIO_PROFILE_IED_WARN_IPHONE_ACCESSORY_MODEL_NAME_23";
                    v27 = @"DeviceConfig-B453";
                    break;
                  default:
LABEL_40:
                    if (v17)
                    {
                      v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                      v30 = [v29 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_IED_WARN_IPHONE_ACCESSORY_MODEL_NAME_180" value:&stru_286339F58 table:@"DeviceConfig-B494b"];

                      v11 = v30;
                    }

                    goto LABEL_43;
                }

                v28 = [v24 localizedStringForKey:v26 value:&stru_286339F58 table:v27];

                v11 = v28;
                goto LABEL_40;
              }
            }
          }

          else
          {
            v9 = sharedBluetoothSettingsLogComponent();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              [(HPSSpatialProfileSingeStepEnrollmentController *)&v35 getBudsInEarString];
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_43:

  v31 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)triggerFaceInFrameHandlerTimeout
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    faceBoundingBoxStatus = self->_faceBoundingBoxStatus;
    *buf = 67109120;
    v13 = faceBoundingBoxStatus;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Update Face Capture %d ", buf, 8u);
  }

  if ((self->_currentStep & 0xFFFFFFFE) == 6)
  {
    if (self->_faceBoundingBoxStatus == 1 && !self->_faceCaptured)
    {
      self->_faceTooCloseErrorShowing = 1;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __82__HPSSpatialProfileSingeStepEnrollmentController_triggerFaceInFrameHandlerTimeout__block_invoke;
      block[3] = &unk_2796AD618;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
      v5 = MEMORY[0x277CBEBB8];
      v6 = 1.0;
      goto LABEL_10;
    }

    if (self->_faceTooCloseErrorShowing)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __82__HPSSpatialProfileSingeStepEnrollmentController_triggerFaceInFrameHandlerTimeout__block_invoke_2;
      v10[3] = &unk_2796AD618;
      v10[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], v10);
      v5 = MEMORY[0x277CBEBB8];
      v6 = 3.0;
LABEL_10:
      v7 = [v5 scheduledTimerWithTimeInterval:self target:sel_triggerFaceInFrameHandlerTimeout selector:0 userInfo:0 repeats:v6];
      faceInFrameHandlerTimer = self->_faceInFrameHandlerTimer;
      self->_faceInFrameHandlerTimer = v7;

      goto LABEL_11;
    }
  }

  [(HPSSpatialProfileSingeStepEnrollmentController *)self stopFaceInFrameHandlerTimer];
LABEL_11:
  v9 = *MEMORY[0x277D85DE8];
}

void __82__HPSSpatialProfileSingeStepEnrollmentController_triggerFaceInFrameHandlerTimeout__block_invoke(uint64_t a1)
{
  v14 = [MEMORY[0x277CBEAF8] currentLocale];
  v2 = [v14 objectForKey:*MEMORY[0x277CBE718]];
  v3 = [v2 BOOLValue];

  v4 = [*(*(a1 + 32) + 1408) infoView];
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"FACE_TOO_CLOSE_TITLE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v4 setTitle:v7];

  v8 = [*(*(a1 + 32) + 1408) infoView];
  v9 = *(a1 + 32);
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = v10;
  if (v3)
  {
    v12 = @"FACE_TOO_CLOSE_DETAIL_METRICS";
  }

  else
  {
    v12 = @"FACE_TOO_CLOSE_DETAIL_IMPERIAL";
  }

  v13 = [v10 localizedStringForKey:v12 value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v8 setDetailText:v13];
}

void __82__HPSSpatialProfileSingeStepEnrollmentController_triggerFaceInFrameHandlerTimeout__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 1243) == 1)
  {
    v3 = [*(v1 + 1408) infoView];
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"SINGLE_STEP_FRONT_VIEW_CAPTURE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
    [v3 setTitle:v6];

    v7 = [*(*(a1 + 32) + 1408) infoView];
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"SINGLE_STEP_FRONT_VIEW_CAPTURE_DETAIL" value:&stru_286339F58 table:@"SpatialAudioProfile"];
    [v7 setDetailText:v10];

    v1 = *(a1 + 32);
  }

  *(v1 + 1243) = 0;
}

- (void)startFaceInFrameHandlerTimer
{
  if (self->_faceInFrameHandlerTimer)
  {
    v3 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Face Tracker Timer already started, stopping it first", buf, 2u);
    }

    [(HPSSpatialProfileSingeStepEnrollmentController *)self stopFaceInFrameHandlerTimer];
  }

  v4 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Face Tracker Timer", v7, 2u);
  }

  v5 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_triggerFaceInFrameHandlerTimeout selector:0 userInfo:0 repeats:3.0];
  faceInFrameHandlerTimer = self->_faceInFrameHandlerTimer;
  self->_faceInFrameHandlerTimer = v5;
}

- (void)stopFaceInFrameHandlerTimer
{
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stopping Face Tracker Timer", v5, 2u);
  }

  [(NSTimer *)self->_faceInFrameHandlerTimer invalidate];
  faceInFrameHandlerTimer = self->_faceInFrameHandlerTimer;
  self->_faceInFrameHandlerTimer = 0;
}

- (void)startPostProcessTimer
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_postProcessTimer)
  {
    v3 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Post Process Timer already started, stopping it first", &v11, 2u);
    }

    [(HPSSpatialProfileSingeStepEnrollmentController *)self stopPostProcessTimer];
  }

  if (MGGetBoolAnswer())
  {
    v4 = 120.0;
  }

  else
  {
    v4 = 240.0;
  }

  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v4;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Starting Post Process Timer %f", &v11, 0xCu);
  }

  v6 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_triggerPostProcessTimeout selector:0 userInfo:0 repeats:v4];
  postProcessTimer = self->_postProcessTimer;
  self->_postProcessTimer = v6;

  v8 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_startPostProcessSpinner selector:0 userInfo:0 repeats:2.0];
  postProcessSpinnerTimer = self->_postProcessSpinnerTimer;
  self->_postProcessSpinnerTimer = v8;

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stopPostProcessTimer
{
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stopping Post Process Timer", v6, 2u);
  }

  [(NSTimer *)self->_postProcessTimer invalidate];
  postProcessTimer = self->_postProcessTimer;
  self->_postProcessTimer = 0;

  [(NSTimer *)self->_postProcessSpinnerTimer invalidate];
  postProcessSpinnerTimer = self->_postProcessSpinnerTimer;
  self->_postProcessSpinnerTimer = 0;
}

- (void)triggerPostProcessTimeout
{
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Triggering Post Process Timeout", v4, 2u);
  }

  [(HPSSpatialProfileSingeStepEnrollmentController *)self moveToStep:3];
}

- (void)didReceiveStateUpdateForSession:(id)session stateInfo:(id)info
{
  v76 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  infoCopy = info;
  v8 = MEMORY[0x277D0F9A0];
  v9 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D0F9A0]];
  if (!v9 || (v10 = v9, [infoCopy objectForKeyedSubscript:*v8], v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [HPSSpatialProfileSingeStepEnrollmentController didReceiveStateUpdateForSession:stateInfo:];
  }

  v12 = [infoCopy objectForKeyedSubscript:*v8];
  integerValue = [v12 integerValue];

  v14 = MEMORY[0x277D0F978];
  v15 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D0F978]];

  if (v15)
  {
    v16 = [infoCopy objectForKeyedSubscript:*v14];
    v17 = v16;
    if (v16)
    {
      [v16 code];
      v18 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v73 = v17;
        _os_log_impl(&dword_251143000, v18, OS_LOG_TYPE_DEFAULT, "Spatial Profile: didReceiveStateUpdateForSession  ERROR: %@ ", buf, 0xCu);
      }

      if (self->_currentStep != 3)
      {
        [(HPSSpatialProfileSingeStepEnrollmentController *)self moveToStep:3];
      }

      v19 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [HPSSpatialProfileSingeStepEnrollmentController didReceiveStateUpdateForSession:v17 stateInfo:?];
      }
    }
  }

  if (self->_sessionState != integerValue)
  {
    v20 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v73 = integerValue;
      _os_log_impl(&dword_251143000, v20, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Frame Rate : Update Session %lu", buf, 0xCu);
    }

    self->_sessionState = integerValue;
  }

  if ((integerValue - 1) <= 1)
  {
    [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics incrementFrameCount];
  }

  v21 = MEMORY[0x277D0F990];
  v22 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D0F990]];

  if (v22)
  {
    v23 = [infoCopy objectForKeyedSubscript:*v21];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [HPSSpatialProfileSingeStepEnrollmentController didReceiveStateUpdateForSession:stateInfo:];
    }

    v24 = [infoCopy objectForKeyedSubscript:*v21];
    [v24 doubleValue];
    v26 = v25;
  }

  else
  {
    v26 = 0.0;
  }

  if (integerValue <= 2)
  {
    if (!integerValue)
    {
      v28 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v60 = "Spatial Profile: State Update: Idle";
        v61 = v28;
        v62 = 2;
        goto LABEL_65;
      }

LABEL_74:

      goto LABEL_75;
    }

    if (integerValue != 1)
    {
      goto LABEL_75;
    }

    v28 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D0F980]];
    yawAngles = [v28 yawAngles];
    v30 = [yawAngles count];

    v31 = MEMORY[0x277CBF3A0];
    if (v28)
    {
      v68 = v30 >> 1;
      [v28 faceBoundingBox];
      if (!CGRectEqualToRect(v77, *v31) && !self->_faceCaptured)
      {
        [v28 faceBoundingBox];
        [(HPSSpatialProfileSingeStepEnrollmentController *)self updateFaceTrackingStatus:?];
      }

      if (!self->_faceStraightZeroAngleCaptured)
      {
        yawAngles2 = [v28 yawAngles];
        v33 = [yawAngles2 objectAtIndexedSubscript:v68];
        captured = [v33 captured];

        if (captured)
        {
          self->_faceStraightZeroAngleCaptured = 1;
          v35 = sharedBluetoothSettingsLogComponent();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            v73 = 0;
            v74 = 1024;
            v75 = 1;
            _os_log_impl(&dword_251143000, v35, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Captured straight face angle %f ->  %d", buf, 0x12u);
          }
        }
      }

      if (self->_faceStraightZeroAngleCaptured && self->_currentStep == 6)
      {
        self->_faceDetected = 1;
        [(HPSSpatialProfileSingleStepPillContainerView *)self->_pillContainerView fillPill:v68 updatePillsForPoseStatus:v28 withCompletion:&__block_literal_global_226];
        v36 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_251143000, v36, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Fill up Straight angle: Transition to View CaptureMoveHead", buf, 2u);
        }

        if (self->_currentStep <= 6)
        {
          [(HPSSpatialProfileSingeStepEnrollmentController *)self moveToStep:7];
        }
      }

      currentStep = self->_currentStep;
      if (currentStep == 7 || currentStep == 2)
      {
        [(HPSSpatialProfileSingleStepSoundHapticManager *)self->_soundHapticManager startEnrollLoop];
        pillContainerView = self->_pillContainerView;
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = __92__HPSSpatialProfileSingeStepEnrollmentController_didReceiveStateUpdateForSession_stateInfo___block_invoke_227;
        v71[3] = &unk_2796ADE48;
        v71[4] = self;
        [(HPSSpatialProfileSingleStepPillContainerView *)pillContainerView updatePillsForPoseStatus:v28 pillCount:&self->_completedPosesCount alongSideAction:v71];
      }
    }

    v39 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D0F970]];
    v40 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D0F988]];
    v41 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D0F998]];
    earCaptureStatus = [v39 earCaptureStatus];
    [v39 earBoundingBox];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    [(HPSSpatialProfileSingeStepEnrollmentController *)self updateCurrentTrackingEar:v40 rightEarPoseStatus:v41 earBoundingBox:earCaptureStatus earStatus:?];
    if (!self->_enrollmentPaused)
    {
      v78.origin.x = v44;
      v78.origin.y = v46;
      v78.size.width = v48;
      v78.size.height = v50;
      if (!CGRectEqualToRect(v78, *v31))
      {
        previewLayer = [(HPSSpatialProfileVideoCaptureSession *)self->videoCaptureSession previewLayer];
        [previewLayer frame];
        [(HPSSpatialProfileSingeStepEnrollmentController *)self translateEarBoundingBox:v44 previewLayerBoundingBox:v46, v48, v50, v52, v53, v54, v55];
      }

      [(HPSSpatialProfileSingeStepEnrollmentController *)self updateBoundingBoxHiddenStatus];
      isEarOccluded = [(HPSSpatialProfileSingeStepEnrollmentController *)self isEarOccluded];
      v57 = self->_currentStep;
      if (isEarOccluded)
      {
        if (v57 != 7)
        {
          goto LABEL_69;
        }

        v58 = 2;
      }

      else
      {
        if (v57 != 2)
        {
          goto LABEL_69;
        }

        v58 = 7;
      }

      [(HPSSpatialProfileSingeStepEnrollmentController *)self moveToStep:v58];
    }

LABEL_69:
    completedPosesCount = self->_completedPosesCount;
    yawAngles3 = [v28 yawAngles];
    if ([yawAngles3 count]<= completedPosesCount)
    {
      faceCaptured = self->_faceCaptured;

      if (faceCaptured)
      {
LABEL_73:

        goto LABEL_74;
      }

      self->_currentProgress = 0.0;
      yawAngles3 = dispatch_get_global_queue(21, 0);
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __92__HPSSpatialProfileSingeStepEnrollmentController_didReceiveStateUpdateForSession_stateInfo___block_invoke_231;
      v70[3] = &unk_2796AD618;
      v70[4] = self;
      dispatch_async(yawAngles3, v70);
    }

    goto LABEL_73;
  }

  switch(integerValue)
  {
    case 3:
      [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics updateSoundProfileCreationDurationStart];
      v28 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v59 = self->_currentStep;
        *buf = 67109120;
        LODWORD(v73) = v59;
        v60 = "Spatial Profile: State Update: Post Process : %d";
        v61 = v28;
        v62 = 8;
LABEL_65:
        _os_log_impl(&dword_251143000, v61, OS_LOG_TYPE_DEFAULT, v60, buf, v62);
        goto LABEL_74;
      }

      goto LABEL_74;
    case 4:
      if (self->_currentStep <= 7)
      {
        [(HPSSpatialProfileSingeStepEnrollmentController *)self moveToStep:8];
      }

      v63 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v63, OS_LOG_TYPE_DEFAULT, "Spatial Profile: State Update: Retrieve Profile", buf, 2u);
      }

      [(HPSSpatialProfileSingeStepEnrollmentController *)self moveToStep:10];
      [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics updateSoundProfileCreationDuration];
      break;
    case 5:
      v27 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [HPSSpatialProfileSingeStepEnrollmentController didReceiveStateUpdateForSession:stateInfo:];
      }

      [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics updateStatus:0 EnrollmentResult:@"Failed"];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __92__HPSSpatialProfileSingeStepEnrollmentController_didReceiveStateUpdateForSession_stateInfo___block_invoke_232;
      block[3] = &unk_2796AD618;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
      break;
  }

LABEL_75:
  if (self->_currentProgress != v26)
  {
    self->_currentProgress = v26;
  }

  v67 = *MEMORY[0x277D85DE8];
}

int *__92__HPSSpatialProfileSingeStepEnrollmentController_didReceiveStateUpdateForSession_stateInfo___block_invoke_227(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 1248) = 0;
  v2 = [*(*(a1 + 32) + 1400) leftSectionCompleted];
  v3 = [*(*(a1 + 32) + 1400) rightSectionCompleted];
  v4 = v3;
  if ((v2 & 1) != 0 || v3)
  {
    v5 = *(a1 + 32);
    if ((*(v5 + 1208) & 1) == 0)
    {
      *(v5 + 1208) = 1;
      [*(*(a1 + 32) + 1048) triggerSoundHapticForEarCaptureState:0 completion:&__block_literal_global_229];
    }
  }

  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(*(a1 + 32) + 1400) leftSectionCompleted];
    v8 = *(*(a1 + 32) + 1428);
    v12[0] = 67109632;
    v12[1] = v7;
    v13 = 1024;
    v14 = v4;
    v15 = 1024;
    v16 = v8;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Phase 2 -> End, L%i R%i _enrollmentUICompletionStepComplete:%i", v12, 0x14u);
  }

  result = [*(*(a1 + 32) + 1400) leftSectionCompleted];
  if (result)
  {
    result = [*(*(a1 + 32) + 1400) rightSectionCompleted];
    if (result)
    {
      if ((*(*(a1 + 32) + 1428) & 1) == 0)
      {
        v10 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v12[0]) = 0;
          _os_log_impl(&dword_251143000, v10, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Phase 2 -> End UI complete", v12, 2u);
        }

        *(*(a1 + 32) + 1428) = 1;
        [*(*(a1 + 32) + 1048) stopEnrollLoop];
        *(*(a1 + 32) + 1244) = 33;
        result = *(a1 + 32);
        if (result[287] <= 7)
        {
          result = [result moveToStep:8];
        }
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void __92__HPSSpatialProfileSingeStepEnrollmentController_didReceiveStateUpdateForSession_stateInfo___block_invoke_2()
{
  v0 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_251143000, v0, OS_LOG_TYPE_DEFAULT, "Spatial Profile: HPSSpatialProfileEarCaptureStep_First complete sound played", v1, 2u);
  }
}

- (void)didReceiveCaptureVideo:(id)video colorImage:(id)image depthImage:(id)depthImage faceObject:(id)object
{
  videoCopy = video;
  imageCopy = image;
  v10 = imageCopy;
  if (self->_enrollViewInitialized)
  {
    visualDetectionQueue = self->_visualDetectionQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __106__HPSSpatialProfileSingeStepEnrollmentController_didReceiveCaptureVideo_colorImage_depthImage_faceObject___block_invoke_243;
    block[3] = &unk_2796AD750;
    v12 = v14;
    v14[0] = imageCopy;
    v14[1] = self;
    dispatch_async(visualDetectionQueue, block);
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __106__HPSSpatialProfileSingeStepEnrollmentController_didReceiveCaptureVideo_colorImage_depthImage_faceObject___block_invoke;
    v15[3] = &unk_2796ADE70;
    v12 = v16;
    v16[0] = videoCopy;
    v16[1] = self;
    v17 = v10;
    dispatch_async(MEMORY[0x277D85CD0], v15);
  }
}

void __106__HPSSpatialProfileSingeStepEnrollmentController_didReceiveCaptureVideo_colorImage_depthImage_faceObject___block_invoke(uint64_t a1)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = sharedBluetoothSettingsLogComponent();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Update Preview Layer", &v32, 2u);
    }

    *(*(a1 + 40) + 1210) = 1;
    [*(*(a1 + 40) + 1160) setPreviewLayer:*(a1 + 32)];
    v5 = [MEMORY[0x277CBF740] contextWithOptions:0];
    v6 = *(a1 + 40);
    v7 = *(v6 + 1384);
    *(v6 + 1384) = v5;

    v8 = MEMORY[0x277CBF748];
    v9 = *MEMORY[0x277CBF710];
    v10 = *(*(a1 + 40) + 1384);
    v35 = *MEMORY[0x277CBF6E0];
    v36[0] = *MEMORY[0x277CBF6D8];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v12 = [v8 detectorOfType:v9 context:v10 options:v11];
    v13 = *(a1 + 40);
    v14 = *(v13 + 1392);
    *(v13 + 1392) = v12;

    v15 = [*(*(a1 + 40) + 1160) previewLayer];
    [v15 setOpacity:0.0];

    v16 = [[HPSSpatialProfileSingleStepPearlEnrollView alloc] initWithVideoCaptureSession:*(*(a1 + 40) + 1160) inSheet:0 squareNeedsPositionLayout:0];
    v17 = *(a1 + 40);
    v18 = *(v17 + 1056);
    *(v17 + 1056) = v16;

    [*(a1 + 40) setupEnrollViewUI];
    [*(a1 + 40) pauseEnrollment];
    v19 = *(a1 + 40) + 1016;
    Width = CVPixelBufferGetWidth([*(a1 + 48) pixelBuffer]);
    Height = CVPixelBufferGetHeight([*(a1 + 48) pixelBuffer]);
    *v19 = 0;
    *(v19 + 8) = 0;
    *(v19 + 16) = Width;
    *(v19 + 24) = Height;
    v22 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(*(a1 + 40) + 1032);
      v23 = *(*(a1 + 40) + 1040);
      v32 = 134218240;
      *v33 = v24;
      *&v33[8] = 2048;
      v34 = v23;
      _os_log_impl(&dword_251143000, v22, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Frame Size  %f %f", &v32, 0x16u);
    }

    v25 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(a1 + 40) + 1128))
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      v32 = 138412290;
      *v33 = v26;
      _os_log_impl(&dword_251143000, v25, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Checking enrollment viewer Spinner %@", &v32, 0xCu);
    }

    *(*(a1 + 40) + 1206) = 1;
    if (*(*(a1 + 40) + 1128) == 1)
    {
      v27 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 40);
        v29 = *(v28 + 1206);
        v30 = [*(v28 + 1280) available];
        v32 = 67109376;
        *v33 = v29;
        *&v33[4] = 1024;
        *&v33[6] = v30;
        _os_log_impl(&dword_251143000, v27, OS_LOG_TYPE_DEFAULT, "Spatial Profile: didReceiveCaptureVideo -> stopWelcomeSpinner, _enrollmentReady %d [_btManager available] %d", &v32, 0xEu);
      }

      [*(a1 + 40) stopWelcomeSpinner];
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __106__HPSSpatialProfileSingeStepEnrollmentController_didReceiveCaptureVideo_colorImage_depthImage_faceObject___block_invoke_cold_1();
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __106__HPSSpatialProfileSingeStepEnrollmentController_didReceiveCaptureVideo_colorImage_depthImage_faceObject___block_invoke_243(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 40) + 1378);
    v3 = MEMORY[0x277CBEAC0];
    v4 = [MEMORY[0x277CCABB0] numberWithInt:6];
    v5 = [v3 dictionaryWithObject:v4 forKey:*MEMORY[0x277CBF700]];

    v6 = [*(*(a1 + 40) + 1392) featuresInImage:*(a1 + 32) options:v5];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (!v7)
    {
      goto LABEL_12;
    }

    v8 = v7;
    v24 = v2;
    v25 = v5;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v11 |= [v14 hasLeftEyePosition];
        v10 |= [v14 hasRightEyePosition];
        v9 |= [v14 hasMouthPosition];
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v8);
    v5 = v25;
    v2 = v24;
    if (v11 & v10 & v9)
    {
      v15 = *(a1 + 40);
      v16 = *(v15 + 1379);
      if (v16 <= 0x63)
      {
        *(v15 + 1379) = v16 + 1;
      }
    }

    else
    {
LABEL_12:
      *(*(a1 + 40) + 1379) = 0;
    }

    *(*(a1 + 40) + 1378) = *(*(a1 + 40) + 1379) > 0x63u;
    if (v2 != *(*(a1 + 40) + 1378))
    {
      v17 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 40);
        v19 = *(v18 + 1378);
        v20 = *(v18 + 1379);
        if (v19)
        {
          v21 = @"At Phone";
        }

        else
        {
          v21 = @"away";
        }

        *buf = 138412546;
        v31 = v21;
        v32 = 1024;
        v33 = v20;
        _os_log_impl(&dword_251143000, v17, OS_LOG_TYPE_DEFAULT, "Spatial Profile: 2 User attention status %@ Count %d", buf, 0x12u);
      }

      v22 = *(a1 + 40);
      if (*(v22 + 1378) == 1)
      {
        *(v22 + 1320) = 0;
        *(*(a1 + 40) + 1292) = 0;
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)updateCurrentTrackingEar:(id)ear rightEarPoseStatus:(id)status earBoundingBox:(CGRect)box earStatus:(int)earStatus
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  v45 = *MEMORY[0x277D85DE8];
  earCopy = ear;
  statusCopy = status;
  v15 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    v16 = NSStringFromRect(v46);
    earOcclusionDetectTracker = self->_earOcclusionDetectTracker;
    v35 = 138413314;
    v36 = earCopy;
    v37 = 2112;
    v38 = statusCopy;
    v39 = 2112;
    v40 = v16;
    v41 = 1024;
    earStatusCopy = earStatus;
    v43 = 2048;
    v44 = earOcclusionDetectTracker;
    _os_log_impl(&dword_251143000, v15, OS_LOG_TYPE_DEFAULT, "Spatial Profile: updateCurrentTrackingEar left:%@  right: %@  box: %@  status:%i tracker:%lu", &v35, 0x30u);
  }

  if (self->_currentStep >= 7)
  {
    isEarOccluded = self->_isEarOccluded;
    if (earStatus <= 2)
    {
      if (earStatus)
      {
        if (earStatus == 2 && !self->_isLookingAtPhone && !self->_earTooClose)
        {
          v19 = 1320;
          goto LABEL_13;
        }
      }

      else
      {
        v22 = self->_earOcclusionDetectTracker;
        if (v22)
        {
          self->_earOcclusionDetectTracker = v22 - 1;
        }

        earTooCloseDetectTracker = self->_earTooCloseDetectTracker;
        if (earTooCloseDetectTracker)
        {
          self->_earTooCloseDetectTracker = earTooCloseDetectTracker - 1;
        }

        v19 = 1304;
        earTooFarDetectTracker = self->_earTooFarDetectTracker;
        if (earTooFarDetectTracker)
        {
          v21 = earTooFarDetectTracker - 1;
          goto LABEL_25;
        }
      }

LABEL_26:
      self->_isEarOccluded = self->_earOcclusionDetectTracker > 9;
      if (self->_earTooFarDetectTracker < 0xA)
      {
        v25 = self->_earTooCloseDetectTracker;
        if (!v25)
        {
          self->_earTooFar = 0;
          goto LABEL_35;
        }
      }

      else
      {
        self->_earTooFar = 1;
        v25 = self->_earTooCloseDetectTracker;
      }

      if (v25 >= 5)
      {
        self->_earTooClose = 1;
        goto LABEL_37;
      }

      if (v25)
      {
        if (self->_earTooClose)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

LABEL_35:
      self->_earTooClose = 0;
LABEL_36:
      if (!self->_earTooFar)
      {
LABEL_38:
        v47.origin.x = x;
        v47.origin.y = y;
        v47.size.width = width;
        v47.size.height = height;
        v26 = CGRectEqualToRect(v47, *MEMORY[0x277CBF3A0]);
        earBoundingBoxDetectTracker = self->_earBoundingBoxDetectTracker;
        if (v26)
        {
          v28 = earBoundingBoxDetectTracker >= 3;
          v29 = earBoundingBoxDetectTracker - 3;
          if (!v28)
          {
            v29 = 0;
          }

          self->_earBoundingBoxDetectTracker = v29;
        }

        else
        {
          v29 = earBoundingBoxDetectTracker + 1;
          self->_earBoundingBoxDetectTracker = v29;
          self->_currentEarBB.origin.x = x;
          self->_currentEarBB.origin.y = y;
          self->_currentEarBB.size.width = width;
          self->_currentEarBB.size.height = height;
        }

        if (v29 >= 0xB)
        {
          v29 = 10;
          self->_earBoundingBoxDetectTracker = 10;
        }

        self->_earBoundingBoxDetected = v29 != 0;
        if (isEarOccluded != self->_isEarOccluded)
        {
          v30 = sharedBluetoothSettingsLogComponent();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = self->_earOcclusionDetectTracker;
            supressEarOcclusionWarning = self->_supressEarOcclusionWarning;
            if (self->_isEarOccluded)
            {
              v33 = "YES";
            }

            else
            {
              v33 = "NO";
            }

            v35 = 136315650;
            v36 = v33;
            v37 = 2048;
            v38 = v31;
            v39 = 1024;
            LODWORD(v40) = supressEarOcclusionWarning;
            _os_log_impl(&dword_251143000, v30, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ear Occlusion changed to %s current number of entries %lu UI supressed = %d", &v35, 0x1Cu);
          }
        }

        goto LABEL_52;
      }

LABEL_37:
      self->_earOcclusionDetectTracker = 0;
      self->_isEarOccluded = 0;
      goto LABEL_38;
    }

    if (earStatus == 3)
    {
      if (self->_isLookingAtPhone)
      {
        goto LABEL_26;
      }

      v19 = 1312;
      v20 = self->_earTooCloseDetectTracker;
      if (v20 >= 6)
      {
        v21 = 5;
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (earStatus != 4)
    {
      goto LABEL_26;
    }

    v19 = 1304;
LABEL_13:
    v20 = *(&self->super.super.super.isa + v19);
    if (v20 >= 0xB)
    {
      v21 = 10;
LABEL_25:
      *(&self->super.super.super.isa + v19) = v21;
      goto LABEL_26;
    }

LABEL_24:
    v21 = v20 + 1;
    goto LABEL_25;
  }

LABEL_52:

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __98__HPSSpatialProfileSingeStepEnrollmentController_translateEarBoundingBox_previewLayerBoundingBox___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __98__HPSSpatialProfileSingeStepEnrollmentController_translateEarBoundingBox_previewLayerBoundingBox___block_invoke_2;
  v2[3] = &unk_2796ADE98;
  v2[4] = *(a1 + 32);
  v3 = *(a1 + 40);
  return [MEMORY[0x277D75D18] animateWithDuration:v2 animations:0.1];
}

uint64_t __98__HPSSpatialProfileSingeStepEnrollmentController_translateEarBoundingBox_previewLayerBoundingBox___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1088) setBounds:{0.0, 0.0, *(a1 + 40), *(a1 + 44)}];
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);
  v4 = *(*(a1 + 32) + 1088);

  return [v4 setCenter:{v2, v3}];
}

- (void)updateBoundingBoxHiddenStatus
{
  v12 = *MEMORY[0x277D85DE8];
  isHidden = [(CEKSubjectIndicatorView *)self->_earBoundingBoxView isHidden];
  if (self->_currentStep == 7)
  {
    if (isHidden != self->_earBoundingBoxDetected)
    {
      goto LABEL_13;
    }

    if (self->_earBoundingBoxDetected)
    {
      [(CEKSubjectIndicatorView *)self->_earBoundingBoxView bounds];
      if (CGRectEqualToRect(v13, *MEMORY[0x277CBF3A0]))
      {
        goto LABEL_13;
      }

      v4 = 0;
      goto LABEL_8;
    }
  }

  else if (isHidden)
  {
    goto LABEL_13;
  }

  v4 = 1;
LABEL_8:
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"Showing";
    if (v4)
    {
      v6 = @"Hidden";
    }

    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Bouding Box Updated : %@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HPSSpatialProfileSingeStepEnrollmentController_updateBoundingBoxHiddenStatus__block_invoke;
  v8[3] = &unk_2796ADEC0;
  v8[4] = self;
  v9 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v8);
LABEL_13:
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __79__HPSSpatialProfileSingeStepEnrollmentController_updateBoundingBoxHiddenStatus__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __79__HPSSpatialProfileSingeStepEnrollmentController_updateBoundingBoxHiddenStatus__block_invoke_2;
  v2[3] = &unk_2796ADEC0;
  v2[4] = *(a1 + 32);
  v3 = *(a1 + 40);
  return [MEMORY[0x277D75D18] animateWithDuration:v2 animations:0.3];
}

- (void)clearBoundingBox
{
  self->_earBoundingBoxDetectTracker = 0;
  self->_earBoundingBoxDetected = 0;
  [(HPSSpatialProfileSingeStepEnrollmentController *)self updateBoundingBoxHiddenStatus];
}

- (void)playEarCaptureSoundWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  if (self->_earCaptureSoundStep == 1)
  {
    soundHapticManager = self->_soundHapticManager;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __84__HPSSpatialProfileSingeStepEnrollmentController_playEarCaptureSoundWithCompletion___block_invoke_2;
    v12[3] = &unk_2796AD618;
    v13 = v5;
    [(HPSSpatialProfileSingleStepSoundHapticManager *)soundHapticManager triggerSoundHapticForEarCaptureState:1 completion:v12];
    v7 = v13;
  }

  else
  {
    if (self->_earCaptureSoundStep)
    {
      dispatch_group_leave(v5);
      goto LABEL_7;
    }

    v6 = self->_soundHapticManager;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __84__HPSSpatialProfileSingeStepEnrollmentController_playEarCaptureSoundWithCompletion___block_invoke;
    v14[3] = &unk_2796AD618;
    v15 = v5;
    [(HPSSpatialProfileSingleStepSoundHapticManager *)v6 triggerSoundHapticForEarCaptureState:0 completion:v14];
    v7 = v15;
  }

LABEL_7:
  ++self->_earCaptureSoundStep;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__HPSSpatialProfileSingeStepEnrollmentController_playEarCaptureSoundWithCompletion___block_invoke_3;
  block[3] = &unk_2796AD5A0;
  v11 = completionCopy;
  v9 = completionCopy;
  dispatch_group_notify(v5, MEMORY[0x277D85CD0], block);
}

uint64_t __84__HPSSpatialProfileSingeStepEnrollmentController_playEarCaptureSoundWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setupEarBoundingBox
{
  v3 = objc_alloc_init(MEMORY[0x277CF7E58]);
  earBoundingBoxView = self->_earBoundingBoxView;
  self->_earBoundingBoxView = v3;

  [(CEKSubjectIndicatorView *)self->_earBoundingBoxView setPulsing:0];
  [(CEKSubjectIndicatorView *)self->_earBoundingBoxView setInactive:1];
  [(CEKSubjectIndicatorView *)self->_earBoundingBoxView setHidden:1];
  enrollContentView = self->_enrollContentView;
  v6 = self->_earBoundingBoxView;

  [(UIView *)enrollContentView addSubview:v6];
}

- (void)pulseEarBoundingBox
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HPSSpatialProfileSingeStepEnrollmentController_pulseEarBoundingBox__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __69__HPSSpatialProfileSingeStepEnrollmentController_pulseEarBoundingBox__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1088) setInactive:0];
  [*(*(a1 + 32) + 1088) startScalingWithExpansionWidth:1 duration:10.0 repeatCount:0.1];
  v2 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HPSSpatialProfileSingeStepEnrollmentController_pulseEarBoundingBox__block_invoke_2;
  block[3] = &unk_2796AD618;
  block[4] = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
}

- (void)showBudsInEarPopUp:(id)up
{
  v37 = *MEMORY[0x277D85DE8];
  upCopy = up;
  classicDevice = [upCopy classicDevice];
  productId = [classicDevice productId];

  0x2000 = [MEMORY[0x277CCACA8] stringWithFormat:@"ACCESSORY_MODEL_NAME_%d", productId - 0x2000];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:0x2000 value:&stru_286339F58 table:@"SpatialAudioProfile"];
  if ([v9 length])
  {
    v10 = productId >= 0x200A;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {

    if (productId >> 4 <= 0x200)
    {
      v11 = 0;
      goto LABEL_15;
    }
  }

  else
  {
  }

  if (productId == 8239)
  {
    0x2000 = @"ACCESSORY_MODEL_NAME_180";
    v11 = 1;
  }

  else if (productId == 8223)
  {
    v11 = 0;
    0x2000 = @"ACCESSORY_MODEL_NAME_10";
  }

  else
  {
    v11 = 0;
    if (productId == 8210)
    {
      0x2000 = @"ACCESSORY_MODEL_NAME_18";
    }

    else
    {
      0x2000 = @"ACCESSORY_MODEL_NAME_15";
    }
  }

LABEL_15:
  v12 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    classicDevice2 = [upCopy classicDevice];
    name = [classicDevice2 name];
    *buf = 138412290;
    v36 = name;
    _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Device %@, bud in ear", buf, 0xCu);
  }

  uppercaseString = [MGGetStringAnswer() uppercaseString];
  v16 = [@"SPATIAL_AUDIO_PROFILE_IED_WARN_" stringByAppendingFormat:@"%@_%@", uppercaseString, 0x2000];

  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:v16 value:&stru_286339F58 table:@"SpatialAudioProfile"];

  switch(productId)
  {
    case 0x2025u:
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v19;
      v21 = @"SPATIAL_AUDIO_PROFILE_IED_WARN_IPHONE_ACCESSORY_MODEL_NAME_24";
      v22 = @"DeviceConfig-B465";
      break;
    case 0x201Du:
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v19;
      v21 = @"SPATIAL_AUDIO_PROFILE_IED_WARN_IPHONE_ACCESSORY_MODEL_NAME_42";
      v22 = @"DeviceConfig-B498-v2";
      break;
    case 0x2017u:
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v19;
      v21 = @"SPATIAL_AUDIO_PROFILE_IED_WARN_IPHONE_ACCESSORY_MODEL_NAME_23";
      v22 = @"DeviceConfig-B453";
      break;
    default:
      goto LABEL_24;
  }

  v23 = [v19 localizedStringForKey:v21 value:&stru_286339F58 table:v22];

  v18 = v23;
LABEL_24:
  if (v11)
  {
    v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_IED_WARN_IPHONE_ACCESSORY_MODEL_NAME_180" value:&stru_286339F58 table:@"DeviceConfig-B494b"];

    v18 = v25;
  }

  v26 = MEMORY[0x277D75110];
  v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v28 = [v27 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_IN_EAR_TEXT" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  v29 = [v26 alertControllerWithTitle:v18 message:v28 preferredStyle:1];

  v30 = MEMORY[0x277D750F8];
  v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v32 = [v31 localizedStringForKey:@"OK" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  v33 = [v30 actionWithTitle:v32 style:0 handler:&__block_literal_global_266];
  [v29 addAction:v33];

  [(HPSSpatialProfileSingeStepEnrollmentController *)self presentViewController:v29 animated:1 completion:0];
  v34 = *MEMORY[0x277D85DE8];
}

- (BOOL)checkAndShowInEarPopup
{
  v26 = *MEMORY[0x277D85DE8];
  [(BluetoothManager *)self->_btManager connectedDevices];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = v24 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    selfCopy = self;
    v6 = *v22;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        if (+[HPSProductUtils isAppleHeadphone:](HPSProductUtils, "isAppleHeadphone:", v8, selfCopy) && ([v8 isTemporaryPaired] & 1) == 0)
        {
          if ([v8 isGenuineAirPods])
          {
            v9 = [BTSDeviceClassic deviceWithDevice:v8];
            if ([v8 inEarDetectEnabled])
            {
              if (v9)
              {
                v17 = 3;
                *buf = 3;
                classicDevice = [v9 classicDevice];
                [classicDevice inEarStatusPrimary:buf secondary:&v17];

                if (!*buf || !v17)
                {
                  [(HPSSpatialProfileSingeStepEnrollmentController *)selfCopy showBudsInEarPopUp:v9];
                  v12 = 1;
LABEL_27:

                  goto LABEL_28;
                }
              }
            }

            else
            {
              v11 = sharedBluetoothSettingsLogComponent();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_251143000, v11, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Please enable the Automatic Ear Detection in Bluetooth Settings", buf, 2u);
              }

              if (v9)
              {
                inEarDetectDisabledPopUpShown = selfCopy->_inEarDetectDisabledPopUpShown;
                if (!inEarDetectDisabledPopUpShown)
                {
                  selfCopy->_inEarDetectDisabledPopUpShown = 1;
                  [(HPSSpatialProfileSingeStepEnrollmentController *)selfCopy showBudsInEarPopUp:v9];
                }

                v12 = !inEarDetectDisabledPopUpShown;
                goto LABEL_27;
              }
            }
          }

          else
          {
            v9 = sharedBluetoothSettingsLogComponent();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              [(HPSSpatialProfileSingeStepEnrollmentController *)&v19 getBudsInEarString];
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_28:

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)showLandscapeAlert
{
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Landscape Mode Detected, not supported, show pop up alert", buf, 2u);
  }

  v4 = MEMORY[0x277D75110];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"LANDSCAPE_MODE_ALERT_TITLE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"LANDSCAPE_MODE_ALERT_DETAIL" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  v9 = [v4 alertControllerWithTitle:v6 message:v8 preferredStyle:1];

  v10 = MEMORY[0x277D750F8];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"OK" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__HPSSpatialProfileSingeStepEnrollmentController_showLandscapeAlert__block_invoke;
  v14[3] = &unk_2796AD708;
  v14[4] = self;
  v13 = [v10 actionWithTitle:v12 style:0 handler:v14];
  [v9 addAction:v13];

  [(HPSSpatialProfileSingeStepEnrollmentController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)showEarPillsDots
{
  pillContainerView = self->_pillContainerView;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__HPSSpatialProfileSingeStepEnrollmentController_showEarPillsDots__block_invoke;
  v4[3] = &unk_2796AD618;
  v4[4] = self;
  [MEMORY[0x277D75D18] transitionWithView:pillContainerView duration:5242880 options:v4 animations:0 completion:0.4];
  [(HPSSpatialProfileEarDotsMovieView *)self->_earDotsMovieView showDots];
}

- (void)hideEarPillsDots
{
  pillContainerView = self->_pillContainerView;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__HPSSpatialProfileSingeStepEnrollmentController_hideEarPillsDots__block_invoke;
  v4[3] = &unk_2796AD618;
  v4[4] = self;
  [MEMORY[0x277D75D18] transitionWithView:pillContainerView duration:5242880 options:v4 animations:0 completion:0.4];
  [(HPSSpatialProfileEarDotsMovieView *)self->_earDotsMovieView hideDots];
}

- (void)prepareSpinner
{
  if (!self->_spinner)
  {
    v3 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinner = self->_spinner;
    self->_spinner = v3;

    [(UIActivityIndicatorView *)self->_spinner setHidesWhenStopped:1];
    [(UIActivityIndicatorView *)self->_spinner setActivityIndicatorViewStyle:100];
    continueButton = [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView continueButton];
    [continueButton bounds];
    v7 = v6 * 0.5;
    continueButton2 = [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView continueButton];
    [continueButton2 bounds];
    [(UIActivityIndicatorView *)self->_spinner setCenter:v7, v9 * 0.5];

    [(UIActivityIndicatorView *)self->_spinner startAnimating];
    continueButton3 = [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView continueButton];
    [continueButton3 addSubview:self->_spinner];
  }
}

- (void)cleanUpSpinner
{
  [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  [(UIActivityIndicatorView *)self->_spinner removeFromSuperview];
  spinner = self->_spinner;
  self->_spinner = 0;
}

- (void)startWelcomeSpinner
{
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Start Welcome Spinner", v9, 2u);
  }

  self->_welcomeSpinnerOn = 1;
  continueButton = [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView continueButton];
  titleLabel = [continueButton titleLabel];
  [titleLabel setHidden:1];

  continueButton2 = [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView continueButton];
  [continueButton2 setUserInteractionEnabled:0];

  [(HPSSpatialProfileSingeStepEnrollmentController *)self prepareSpinner];
  spinner = self->_spinner;
  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  [(UIActivityIndicatorView *)spinner setColor:systemWhiteColor];
}

- (void)stopWelcomeSpinner
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self->_enrollmentReady || ![(BluetoothManager *)self->_btManager available])
  {
    v5 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      enrollmentReady = self->_enrollmentReady;
      available = [(BluetoothManager *)self->_btManager available];
      v12[0] = 67109376;
      v12[1] = enrollmentReady;
      v13 = 1024;
      v14 = available;
      _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: stopWelcomeSpinner failed _enrollmentReady %d [_btManager available] %d", v12, 0xEu);
    }

    goto LABEL_11;
  }

  welcomeSpinnerOn = self->_welcomeSpinnerOn;
  v4 = sharedBluetoothSettingsLogComponent();
  v5 = v4;
  if (!welcomeSpinnerOn)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [HPSSpatialProfileSingeStepEnrollmentController stopWelcomeSpinner];
    }

LABEL_11:

    goto LABEL_12;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stop Welcome Spinner", v12, 2u);
  }

  self->_welcomeSpinnerOn = 0;
  continueButton = [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView continueButton];
  titleLabel = [continueButton titleLabel];
  [titleLabel setHidden:0];

  continueButton2 = [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView continueButton];
  [continueButton2 setUserInteractionEnabled:1];

  [(HPSSpatialProfileSingeStepEnrollmentController *)self cleanUpSpinner];
  [(HPSSpatialProfileSingeStepEnrollmentController *)self continueButtonTapped];
LABEL_12:
  v11 = *MEMORY[0x277D85DE8];
}

- (void)startPostProcessSpinner
{
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Start Post Process Spinner", v14, 2u);
  }

  self->_postProcessSpinnerOn = 1;
  continueButton = [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView continueButton];
  titleLabel = [continueButton titleLabel];
  [titleLabel setHidden:1];

  continueButton2 = [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView continueButton];
  [continueButton2 setUserInteractionEnabled:0];

  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  continueButton3 = [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView continueButton];
  [continueButton3 setTintColor:systemBackgroundColor];

  continueButton4 = [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView continueButton];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [continueButton4 setBackgroundColor:clearColor];

  [(HPSSpatialProfileSingeStepEnrollmentController *)self showContinueButton];
  [(HPSSpatialProfileSingeStepEnrollmentController *)self prepareSpinner];
  continueButton5 = [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView continueButton];
  [continueButton5 setAlpha:1.0];

  spinner = self->_spinner;
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [(UIActivityIndicatorView *)spinner setColor:systemGrayColor];
}

- (void)stopPostProcessSpinner
{
  postProcessSpinnerOn = self->_postProcessSpinnerOn;
  v4 = sharedBluetoothSettingsLogComponent();
  v5 = v4;
  if (postProcessSpinnerOn)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stop Post Process Spinner", v11, 2u);
    }

    self->_postProcessSpinnerOn = 0;
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    continueButton = [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView continueButton];
    [continueButton setTintColor:systemBlueColor];

    continueButton2 = [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView continueButton];
    titleLabel = [continueButton2 titleLabel];
    [titleLabel setHidden:0];

    continueButton3 = [(HPSSpatialProfileSingleStepBottomContainer *)self->_bottomContainerView continueButton];
    [continueButton3 setUserInteractionEnabled:1];

    [(HPSSpatialProfileSingeStepEnrollmentController *)self cleanUpSpinner];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [HPSSpatialProfileSingeStepEnrollmentController stopWelcomeSpinner];
    }
  }
}

- (void)updateFaceTrackingStatus:(CGRect)status
{
  height = status.size.height;
  width = status.size.width;
  y = status.origin.y;
  x = status.origin.x;
  v31 = *MEMORY[0x277D85DE8];
  faceBoundingBoxStatus = self->_faceBoundingBoxStatus;
  v9 = self->_visageFrame.size.height;
  v10 = status.size.width / self->_visageFrame.size.width;
  if (faceBoundingBoxStatus == 1)
  {
    if (v10 >= 0.45)
    {
      goto LABEL_10;
    }

    v11 = 5;
  }

  else
  {
    if (faceBoundingBoxStatus != 5 || v10 <= 0.55)
    {
      goto LABEL_10;
    }

    v11 = 1;
  }

  self->_faceBoundingBoxStatus = v11;
  v12 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = height / v9;
    v14 = self->_faceBoundingBoxStatus;
    v16[0] = 67110912;
    v16[1] = faceBoundingBoxStatus;
    v17 = 1024;
    v18 = v14;
    v19 = 2048;
    v20 = (v10 * 100.0);
    v21 = 2048;
    v22 = (v13 * 100.0);
    v23 = 2048;
    v24 = width;
    v25 = 2048;
    v26 = height;
    v27 = 2048;
    v28 = x;
    v29 = 2048;
    v30 = y;
    _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Face Status changed from %d -> %d Status Ratio [ %f %f ] Face BB [ %f %f , %f %f]", v16, 0x4Au);
  }

LABEL_10:
  v15 = *MEMORY[0x277D85DE8];
}

- (void)cancelBlur
{
  [(HPSSpatialProfileSingleStepPearlEnrollView *)self->_enrollView setPauseBlur:1];
  [(HPSSpatialProfileSingleStepPearlEnrollView *)self->_enrollView setForceBlur:0];
  enrollView = self->_enrollView;

  [(HPSSpatialProfileSingleStepPearlEnrollView *)enrollView setCameraBlurAmount:0 useShade:0 duration:0.0 completion:0.5];
}

- (void)forceBlur
{
  [(HPSSpatialProfileSingleStepPearlEnrollView *)self->_enrollView setPauseBlur:0];
  [(HPSSpatialProfileSingleStepPearlEnrollView *)self->_enrollView setForceBlur:1];
  enrollView = self->_enrollView;

  [(HPSSpatialProfileSingleStepPearlEnrollView *)enrollView setCameraBlurAmount:0 useShade:0 duration:15.0 completion:0.5];
}

- (void)sendTipKitSignal
{
  discoverabilitySignal = [MEMORY[0x277CF1B58] discoverabilitySignal];
  source = [discoverabilitySignal source];
  v4 = objc_alloc(MEMORY[0x277CF1938]);
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v7 = [v4 initWithIdentifier:@"com.apple.HeadphoneSettings.spatial-profile-enrollment-triggered" bundleID:bundleIdentifier context:0];

  [source sendEvent:v7];
  v8 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Signal Sent to TipKit", v9, 2u);
  }
}

void __61__HPSSpatialProfileSingeStepEnrollmentController_syncProfile__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_251143000, a2, OS_LOG_TYPE_ERROR, "Spatial Profile: Profile NOT Synced, Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getBudsInEarString
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_251143000, log, OS_LOG_TYPE_ERROR, "Spatial Profile: Not Genuine Apple Headphone", buf, 2u);
}

- (void)didReceiveStateUpdateForSession:(void *)a1 stateInfo:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

@end
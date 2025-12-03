@interface HPSUISpatialProfileSingeStepEnrollmentController
- (BOOL)checkAndShowInEarPopup;
- (HPSUISpatialProfileSingeStepEnrollmentController)init;
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
- (void)translateEarBoundingBox:(CGRect)box previewLayerBoundingBox:(CGRect)boundingBox;
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

@implementation HPSUISpatialProfileSingeStepEnrollmentController

- (HPSUISpatialProfileSingeStepEnrollmentController)init
{
  if (!self)
  {
    return 0;
  }

  v23.receiver = self;
  v23.super_class = HPSUISpatialProfileSingeStepEnrollmentController;
  v2 = [(HPSUISpatialProfileSingeStepEnrollmentController *)&v23 init];
  mEMORY[0x1E698F468] = [MEMORY[0x1E698F468] sharedInstance];
  btManager = v2->_btManager;
  v2->_btManager = mEMORY[0x1E698F468];

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
  v9 = *(MEMORY[0x1E695F058] + 16);
  v2->_currentEarBB.origin = *MEMORY[0x1E695F058];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v2 selector:sel_cancelSpatialAudioProfile name:*MEMORY[0x1E69DDAC8] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:v2 selector:sel_bluetoothDidBecomeAvailable name:*MEMORY[0x1E698F448] object:0];

  array = [MEMORY[0x1E695DF70] array];
  cachedTransitionStates = v2->_cachedTransitionStates;
  v2->_cachedTransitionStates = array;

  v20 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v22[0] = 0;
    _os_log_impl(&dword_1AC1C3000, v20, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Single step enrollment started.", v22, 2u);
  }

  return v2;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = HPSUISpatialProfileSingeStepEnrollmentController;
  [(HPSUISpatialProfileSingeStepEnrollmentController *)&v9 viewDidLoad];
  view = [(HPSUISpatialProfileSingeStepEnrollmentController *)self view];
  [view size];
  v5 = v4;
  view2 = [(HPSUISpatialProfileSingeStepEnrollmentController *)self view];
  [view2 size];
  v8 = v7;

  if (v5 <= v8)
  {
    [(HPSUISpatialProfileSingeStepEnrollmentController *)self setupEnrollController];
    [(HPSUISpatialProfileSingeStepEnrollmentController *)self setupWelcomeContentView];
    [(HPSUISpatialProfileSingeStepEnrollmentController *)self setupAudioVideo];
    [(HPSUISpatialProfileSingeStepEnrollmentController *)self setupEarBoundingBox];
    [(HPSUISpatialProfileSingeStepEnrollmentController *)self setupEarTutorialView];
    [(HPSUISpatialProfileSingeStepEnrollmentController *)self moveToStep:4];
  }

  else
  {
    [(HPSUISpatialProfileSingeStepEnrollmentController *)self showLandscapeAlert];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = HPSUISpatialProfileSingeStepEnrollmentController;
  [(HPSUISpatialProfileSingeStepEnrollmentController *)&v3 viewDidAppear:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1AC1C3000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Enrollment Controller viewDidDisappear", v5, 2u);
  }

  [(HPSUISpatialProfileSingeStepEnrollmentController *)self cancelSpatialAudioProfile];
}

- (void)setupEnrollController
{
  v96[8] = *MEMORY[0x1E69E9840];
  if (!self->_enrollmentSession)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69A2A88]);
    enrollmentSession = self->_enrollmentSession;
    self->_enrollmentSession = v3;

    [(HRTFEnrollmentSession *)self->_enrollmentSession setDelegate:self];
  }

  v92 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_userCancelEnrollment];
  navigationItem = [(HPSUISpatialProfileSingeStepEnrollmentController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v92];

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view = [(HPSUISpatialProfileSingeStepEnrollmentController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  v8 = objc_alloc(MEMORY[0x1E69DD250]);
  v9 = [v8 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  enrollContentView = self->_enrollContentView;
  self->_enrollContentView = v9;

  [(UIView *)self->_enrollContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_initWeak(&location, self);
  v11 = [_TtC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainer alloc];
  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = __73__HPSUISpatialProfileSingeStepEnrollmentController_setupEnrollController__block_invoke;
  v93[3] = &unk_1E7970AB8;
  objc_copyWeak(&v94, &location);
  v12 = [(HPSUISpatialProfileSingleStepBottomContainer *)v11 initWithBudsInEarString:v93];
  bottomContainerView = self->_bottomContainerView;
  self->_bottomContainerView = v12;

  [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  infoView = [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView infoView];
  v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [infoView setTitle:v16];

  infoView2 = [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView infoView];
  v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_DETAIL" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [infoView2 setDetailText:v19];

  v20 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"WELCOME_DETAIL" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  learnMoreView = [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView learnMoreView];
  [learnMoreView setText:v21];

  v23 = self->_bottomContainerView;
  v24 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"CONTINUE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [(HPSUISpatialProfileSingleStepBottomContainer *)v23 updateContinueButtonTitleWithTitle:v25];

  [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView updateContinueButtonActionWithTarget:self selector:sel_continueButtonTapped];
  if (self->_debugMode)
  {
    layer = [(UIView *)self->_enrollContentView layer];
    [layer setBorderWidth:1.0];

    systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
    v28 = systemRedColor;
    cGColor = [systemRedColor CGColor];
    layer2 = [(UIView *)self->_enrollContentView layer];
    [layer2 setBorderColor:cGColor];

    layer3 = [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView layer];
    [layer3 setBorderWidth:1.0];

    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    v33 = systemBlueColor;
    cGColor2 = [systemBlueColor CGColor];
    layer4 = [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView layer];
    [layer4 setBorderColor:cGColor2];

    scrollView = [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView scrollView];
    layer5 = [scrollView layer];
    [layer5 setBorderWidth:1.0];

    systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
    v39 = systemYellowColor;
    cGColor3 = [systemYellowColor CGColor];
    scrollView2 = [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView scrollView];
    layer6 = [scrollView2 layer];
    [layer6 setBorderColor:cGColor3];

    infoView3 = [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView infoView];
    layer7 = [infoView3 layer];
    [layer7 setBorderWidth:2.0];

    systemGreenColor = [MEMORY[0x1E69DC888] systemGreenColor];
    v46 = systemGreenColor;
    cGColor4 = [systemGreenColor CGColor];
    layer8 = [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView layer];
    [layer8 setBorderColor:cGColor4];

    buttonTrayEffectView = [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView buttonTrayEffectView];
    layer9 = [buttonTrayEffectView layer];
    [layer9 setBorderWidth:2.0];

    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    v52 = systemGrayColor;
    cGColor5 = [systemGrayColor CGColor];
    buttonTrayEffectView2 = [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView buttonTrayEffectView];
    layer10 = [buttonTrayEffectView2 layer];
    [layer10 setBorderColor:cGColor5];
  }

  view2 = [(HPSUISpatialProfileSingeStepEnrollmentController *)self view];
  [view2 addSubview:self->_enrollContentView];

  view3 = [(HPSUISpatialProfileSingeStepEnrollmentController *)self view];
  [view3 addSubview:self->_bottomContainerView];

  v69 = MEMORY[0x1E696ACD8];
  topAnchor = [(UIView *)self->_enrollContentView topAnchor];
  view4 = [(HPSUISpatialProfileSingeStepEnrollmentController *)self view];
  safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v87 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v96[0] = v87;
  heightAnchor = [(UIView *)self->_enrollContentView heightAnchor];
  view5 = [(HPSUISpatialProfileSingeStepEnrollmentController *)self view];
  [view5 frame];
  v84 = [heightAnchor constraintEqualToConstant:v58];
  v96[1] = v84;
  leadingAnchor = [(UIView *)self->_enrollContentView leadingAnchor];
  view6 = [(HPSUISpatialProfileSingeStepEnrollmentController *)self view];
  leadingAnchor2 = [view6 leadingAnchor];
  v80 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v96[2] = v80;
  trailingAnchor = [(UIView *)self->_enrollContentView trailingAnchor];
  view7 = [(HPSUISpatialProfileSingeStepEnrollmentController *)self view];
  trailingAnchor2 = [view7 trailingAnchor];
  v76 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v96[3] = v76;
  topAnchor3 = [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView topAnchor];
  bottomAnchor = [(UIView *)self->_enrollContentView bottomAnchor];
  v73 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v96[4] = v73;
  leadingAnchor3 = [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView leadingAnchor];
  view8 = [(HPSUISpatialProfileSingeStepEnrollmentController *)self view];
  leadingAnchor4 = [view8 leadingAnchor];
  v59 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v96[5] = v59;
  trailingAnchor3 = [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView trailingAnchor];
  view9 = [(HPSUISpatialProfileSingeStepEnrollmentController *)self view];
  trailingAnchor4 = [view9 trailingAnchor];
  v63 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v96[6] = v63;
  bottomAnchor2 = [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView bottomAnchor];
  view10 = [(HPSUISpatialProfileSingeStepEnrollmentController *)self view];
  bottomAnchor3 = [view10 bottomAnchor];
  v67 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v96[7] = v67;
  v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:8];
  [v69 activateConstraints:v68];

  objc_destroyWeak(&v94);
  objc_destroyWeak(&location);
}

id __73__HPSUISpatialProfileSingeStepEnrollmentController_setupEnrollController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained getBudsInEarString];

  return v2;
}

- (void)setupWelcomeContentView
{
  v34[8] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  welcomeContentView = self->_welcomeContentView;
  self->_welcomeContentView = v3;

  [(UIView *)self->_welcomeContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_enrollContentView addSubview:self->_welcomeContentView];
  v5 = MEMORY[0x1E69DCAB8];
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v33 = [v5 imageNamed:@"SpatialProfileIcon" inBundle:v6 compatibleWithTraitCollection:0];

  v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v33];
  welcomeImageView = self->_welcomeImageView;
  self->_welcomeImageView = v7;

  [(UIImageView *)self->_welcomeImageView setContentMode:1];
  [(UIImageView *)self->_welcomeImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_welcomeContentView addSubview:self->_welcomeImageView];
  v23 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(UIView *)self->_welcomeContentView leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_enrollContentView leadingAnchor];
  v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v34[0] = v30;
  trailingAnchor = [(UIView *)self->_welcomeContentView trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_enrollContentView trailingAnchor];
  v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v34[1] = v27;
  topAnchor = [(UIView *)self->_welcomeContentView topAnchor];
  topAnchor2 = [(UIView *)self->_enrollContentView topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v34[2] = v24;
  bottomAnchor = [(UIView *)self->_welcomeContentView bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_enrollContentView bottomAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v34[3] = v20;
  widthAnchor = [(UIImageView *)self->_welcomeImageView widthAnchor];
  v9 = [widthAnchor constraintEqualToConstant:240.0];
  v34[4] = v9;
  heightAnchor = [(UIImageView *)self->_welcomeImageView heightAnchor];
  v11 = [heightAnchor constraintEqualToConstant:240.0];
  v34[5] = v11;
  centerXAnchor = [(UIImageView *)self->_welcomeImageView centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_welcomeContentView centerXAnchor];
  v14 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v34[6] = v14;
  centerYAnchor = [(UIImageView *)self->_welcomeImageView centerYAnchor];
  centerYAnchor2 = [(UIView *)self->_welcomeContentView centerYAnchor];
  v17 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v34[7] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:8];
  [v23 activateConstraints:v18];
}

- (void)setupAudioVideo
{
  v3 = objc_alloc_init(HPSUISpatialProfileSingleStepSoundHapticManager);
  soundHapticManager = self->_soundHapticManager;
  self->_soundHapticManager = v3;

  [(HPSUISpatialProfileSingleStepSoundHapticManager *)self->_soundHapticManager start];
  v5 = objc_alloc_init(HPSUISpatialProfileVideoCaptureSession);
  videoCaptureSession = self->videoCaptureSession;
  self->videoCaptureSession = v5;

  [(HPSUISpatialProfileSingeStepEnrollmentController *)self checkVolume];
}

- (void)checkVolume
{
  v14 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedAVSystemController];
  p_initialVolume = &self->_initialVolume;
  v5 = [mEMORY[0x1E69AED10] getVolume:&self->_initialVolume forCategory:@"Audio/Video"];

  v6 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *p_initialVolume;
      v12 = 134217984;
      v13 = v8;
      _os_log_impl(&dword_1AC1C3000, v7, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Initial Volume: %f", &v12, 0xCu);
    }

    if (*p_initialVolume < 0.5)
    {
      v9 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134217984;
        v13 = 0.5;
        _os_log_impl(&dword_1AC1C3000, v9, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Initial Volume Too Low, Changing to Min Volume: %f", &v12, 0xCu);
      }

      mEMORY[0x1E69AED10]2 = [MEMORY[0x1E69AED10] sharedAVSystemController];
      LODWORD(v11) = 0.5;
      [mEMORY[0x1E69AED10]2 setVolumeTo:@"Audio/Video" forCategory:v11];

      self->_volumeChanged = 1;
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [HPSUISpatialProfileEnrollmentController checkVolume];
    }
  }
}

- (void)resetVolume
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_volumeChanged)
  {
    v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      initialVolume = self->_initialVolume;
      v7 = 134217984;
      v8 = initialVolume;
      _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Volume Changed, Reset to Initial Volume: %f", &v7, 0xCu);
    }

    mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedAVSystemController];
    *&v6 = self->_initialVolume;
    [mEMORY[0x1E69AED10] setVolumeTo:@"Audio/Video" forCategory:v6];
  }
}

- (void)setupEnrollViewUI
{
  v52[12] = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Setting up Enroll View UI", buf, 2u);
  }

  [(HPSUISpatialProfileSingleStepPearlEnrollView *)self->_enrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BKUIPearlEnrollView *)self->_enrollView setDelegate:self];
  [(BKUIPearlEnrollView *)self->_enrollView preEnrollActivate];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(BKUIPearlEnrollView *)self->_enrollView setBackgroundColor:systemBackgroundColor];

  v5 = [HPSUISpatialProfileSingleStepPillContainerView alloc];
  v6 = [(HPSUISpatialProfileSingleStepPillContainerView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  pillContainerView = self->_pillContainerView;
  self->_pillContainerView = v6;

  [(HPSUISpatialProfileSingleStepPillContainerView *)self->_pillContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HPSUISpatialProfileSingleStepPillContainerView *)self->_pillContainerView setAlpha:0.0];
  view = [(HPSUISpatialProfileSingeStepEnrollmentController *)self view];
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

  v14 = [[HPSUISpatialProfileEarDotsMovieView alloc] initWithFrame:0.0, 0.0, 345.0, v13];
  earDotsMovieView = self->_earDotsMovieView;
  self->_earDotsMovieView = v14;

  [(HPSUISpatialProfileEarDotsMovieView *)self->_earDotsMovieView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HPSUISpatialProfileEarDotsMovieView *)self->_earDotsMovieView setAlpha:0.0];
  [(UIView *)self->_enrollContentView addSubview:self->_enrollView];
  [(UIView *)self->_enrollContentView addSubview:self->_pillContainerView];
  [(UIView *)self->_enrollContentView addSubview:self->_earDotsMovieView];
  v37 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(HPSUISpatialProfileSingleStepPearlEnrollView *)self->_enrollView leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_enrollContentView leadingAnchor];
  v48 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v52[0] = v48;
  trailingAnchor = [(HPSUISpatialProfileSingleStepPearlEnrollView *)self->_enrollView trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_enrollContentView trailingAnchor];
  v45 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v52[1] = v45;
  topAnchor = [(HPSUISpatialProfileSingleStepPearlEnrollView *)self->_enrollView topAnchor];
  topAnchor2 = [(UIView *)self->_enrollContentView topAnchor];
  v42 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v52[2] = v42;
  bottomAnchor = [(HPSUISpatialProfileSingleStepPearlEnrollView *)self->_enrollView bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_enrollContentView bottomAnchor];
  v39 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v52[3] = v39;
  widthAnchor = [(HPSUISpatialProfileEarDotsMovieView *)self->_earDotsMovieView widthAnchor];
  v36 = [widthAnchor constraintEqualToConstant:345.0];
  v52[4] = v36;
  heightAnchor = [(HPSUISpatialProfileEarDotsMovieView *)self->_earDotsMovieView heightAnchor];
  v34 = [heightAnchor constraintEqualToConstant:v13];
  v52[5] = v34;
  centerXAnchor = [(HPSUISpatialProfileEarDotsMovieView *)self->_earDotsMovieView centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_enrollContentView centerXAnchor];
  v31 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v52[6] = v31;
  bottomAnchor3 = [(HPSUISpatialProfileEarDotsMovieView *)self->_earDotsMovieView bottomAnchor];
  bottomAnchor4 = [(UIView *)self->_enrollContentView bottomAnchor];
  v28 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v52[7] = v28;
  widthAnchor2 = [(HPSUISpatialProfileSingleStepPillContainerView *)self->_pillContainerView widthAnchor];
  v26 = [widthAnchor2 constraintEqualToConstant:345.0];
  v52[8] = v26;
  heightAnchor2 = [(HPSUISpatialProfileSingleStepPillContainerView *)self->_pillContainerView heightAnchor];
  v16 = [heightAnchor2 constraintEqualToConstant:100.0];
  v52[9] = v16;
  centerXAnchor3 = [(HPSUISpatialProfileSingleStepPillContainerView *)self->_pillContainerView centerXAnchor];
  centerXAnchor4 = [(UIView *)self->_enrollContentView centerXAnchor];
  v19 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v52[10] = v19;
  bottomAnchor5 = [(HPSUISpatialProfileSingleStepPillContainerView *)self->_pillContainerView bottomAnchor];
  bottomAnchor6 = [(UIView *)self->_enrollContentView bottomAnchor];
  v22 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:v12];
  v52[11] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:12];
  [v37 activateConstraints:v23];

  [(BKUIPearlEnrollView *)self->_enrollView setState:0 completion:&__block_literal_global_4];
  self->_enrollViewState = 0;
  if (self->_currentStep == 4)
  {
    [(HPSUISpatialProfileSingleStepPearlEnrollView *)self->_enrollView setHidden:1];
  }

  view2 = [(HPSUISpatialProfileSingeStepEnrollmentController *)self view];
  [view2 setNeedsLayout];
}

- (void)setupEarTutorialView
{
  v33[8] = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Setting up Ear Tutorial", buf, 2u);
  }

  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  tutorialContentView = self->_tutorialContentView;
  self->_tutorialContentView = v4;

  [(UIView *)self->_tutorialContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_enrollContentView addSubview:self->_tutorialContentView];
  v6 = objc_alloc_init(HPSUISpatialProfileEarTutorialView);
  earTutorialView = self->_earTutorialView;
  self->_earTutorialView = v6;

  [(HPSUISpatialProfileEarTutorialView *)self->_earTutorialView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_tutorialContentView addSubview:self->_earTutorialView];
  v22 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(UIView *)self->_tutorialContentView leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_enrollContentView leadingAnchor];
  v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v33[0] = v29;
  trailingAnchor = [(UIView *)self->_tutorialContentView trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_enrollContentView trailingAnchor];
  v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v33[1] = v26;
  topAnchor = [(UIView *)self->_tutorialContentView topAnchor];
  topAnchor2 = [(UIView *)self->_enrollContentView topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v33[2] = v23;
  bottomAnchor = [(UIView *)self->_tutorialContentView bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_enrollContentView bottomAnchor];
  v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v33[3] = v19;
  widthAnchor = [(HPSUISpatialProfileEarTutorialView *)self->_earTutorialView widthAnchor];
  v17 = [widthAnchor constraintEqualToConstant:240.0];
  v33[4] = v17;
  heightAnchor = [(HPSUISpatialProfileEarTutorialView *)self->_earTutorialView heightAnchor];
  v8 = [heightAnchor constraintEqualToConstant:106.666664];
  v33[5] = v8;
  centerXAnchor = [(HPSUISpatialProfileEarTutorialView *)self->_earTutorialView centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_tutorialContentView centerXAnchor];
  v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v33[6] = v11;
  centerYAnchor = [(HPSUISpatialProfileEarTutorialView *)self->_earTutorialView centerYAnchor];
  centerYAnchor2 = [(UIView *)self->_tutorialContentView centerYAnchor];
  v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v33[7] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:8];
  [v22 activateConstraints:v15];

  [(UIView *)self->_tutorialContentView setHidden:1];
}

- (void)startEnrollment
{
  v9 = *MEMORY[0x1E69E9840];
  enrollmentStarted = self->_enrollmentStarted;
  v4 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  v5 = v4;
  if (enrollmentStarted)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [HPSUISpatialProfileEnrollmentController startEnrollment];
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      downloadAssetPath = self->_downloadAssetPath;
      v7 = 138412290;
      v8 = downloadAssetPath;
      _os_log_impl(&dword_1AC1C3000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Starting Enrollment downloadAssetPath %@", &v7, 0xCu);
    }

    self->_enrollmentStarted = 1;
    [(HRTFEnrollmentSession *)self->_enrollmentSession startSession:1 withAssetPath:self->_downloadAssetPath then:&__block_literal_global_345];
  }
}

void __67__HPSUISpatialProfileSingeStepEnrollmentController_startEnrollment__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    __67__HPSUISpatialProfileSingeStepEnrollmentController_startEnrollment__block_invoke_cold_1();
  }

  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Enrollment Started", v3, 2u);
  }
}

- (void)stopEnrollment
{
  enrollmentStarted = self->_enrollmentStarted;
  v4 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  v5 = v4;
  if (enrollmentStarted)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1AC1C3000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stopping Enrollment", v6, 2u);
    }

    self->_enrollmentStarted = 0;
    [(HRTFEnrollmentSession *)self->_enrollmentSession stopSession:&__block_literal_global_349];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [HPSUISpatialProfileEnrollmentController stopEnrollment];
    }
  }
}

void __66__HPSUISpatialProfileSingeStepEnrollmentController_stopEnrollment__block_invoke()
{
  v0 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1AC1C3000, v0, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Enrollment Stopped", v1, 2u);
  }
}

- (void)pauseEnrollment
{
  if (self->_enrollmentStarted)
  {
    if (self->_enrollmentPaused)
    {
      v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [HPSUISpatialProfileEnrollmentController pauseEnrollment];
      }
    }

    else
    {
      [(HRTFEnrollmentSession *)self->_enrollmentSession pauseSession];
      self->_enrollmentPaused = 1;
      v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Enrollment Paused", v4, 2u);
      }
    }
  }

  else
  {
    v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [HPSUISpatialProfileEnrollmentController pauseEnrollment];
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
      v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 0;
        v4 = "Spatial Profile: Enrollment Resumed";
        v5 = &v6;
LABEL_7:
        _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
      }
    }

    else
    {
      v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [HPSUISpatialProfileEnrollmentController resumeEnrollment];
      }
    }
  }

  else
  {
    v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
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
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke;
  v4[3] = &unk_1E7970468;
  v4[4] = self;
  stepCopy = step;
  dispatch_async(stepSerialQueue, v4);
}

void __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke(uint64_t a1)
{
  v2 = dispatch_group_create();
  v3 = dispatch_group_create();
  NSLog(&cfstr_SpatialProfile_0.isa);
  dispatch_group_enter(v2);
  objc_initWeak(&location, *(a1 + 32));
  v4 = *(a1 + 32);
  v5 = *(v4 + 1148);
  *(v4 + 1148) = *(a1 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2;
  block[3] = &unk_1E7970208;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v6 = *(a1 + 32);
  v7 = *(v6 + 1148);
  if (v7 > 5)
  {
    if (v7 > 9)
    {
      switch(v7)
      {
        case 10:
          v38 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AC1C3000, v38, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> RetrieveProfile", buf, 2u);
          }

          [*(a1 + 32) retrieveProfile];
          goto LABEL_53;
        case 11:
          v43 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AC1C3000, v43, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> SyncProfile", buf, 2u);
          }

          [*(a1 + 32) syncProfile];
          goto LABEL_53;
        case 12:
          [*(v6 + 1184) updateStatus:1 EnrollmentResult:@"Success"];
          v23 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AC1C3000, v23, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> Completed", buf, 2u);
          }

          v65[0] = MEMORY[0x1E69E9820];
          v65[1] = 3221225472;
          v65[2] = __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_372;
          v65[3] = &unk_1E7970AE0;
          v65[4] = *(a1 + 32);
          v24 = v3;
          v66 = v24;
          v67 = v5;
          v25 = MEMORY[0x1E69E96A0];
          dispatch_async(MEMORY[0x1E69E96A0], v65);

          v63[0] = MEMORY[0x1E69E9820];
          v63[1] = 3221225472;
          v63[2] = __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_5_376;
          v63[3] = &unk_1E7970208;
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
          v30 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AC1C3000, v30, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontViewCapturePositionFace", buf, 2u);
          }

          [*(*(a1 + 32) + 1184) initFrameRateDetection];
          [*(*(a1 + 32) + 1184) updateFaceEnrollStart];
          v80[0] = MEMORY[0x1E69E9820];
          v80[1] = 3221225472;
          v80[2] = __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_358;
          v80[3] = &unk_1E7970B08;
          v31 = v3;
          v32 = *(a1 + 32);
          v81 = v31;
          v82 = v32;
          v84 = v5;
          v83 = v2;
          v33 = MEMORY[0x1E69E96A0];
          dispatch_async(MEMORY[0x1E69E96A0], v80);

          v12 = v81;
          goto LABEL_46;
        case 7:
          v39 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AC1C3000, v39, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontViewCaptureMoveHead", buf, 2u);
          }

          v74[0] = MEMORY[0x1E69E9820];
          v74[1] = 3221225472;
          v74[2] = __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_361;
          v74[3] = &unk_1E7970B58;
          v75 = v3;
          objc_copyWeak(&v78, &location);
          v79 = v5;
          v76 = *(a1 + 32);
          v77 = v2;
          v40 = MEMORY[0x1E69E96A0];
          dispatch_async(MEMORY[0x1E69E96A0], v74);

          objc_destroyWeak(&v78);
          v12 = v75;
          goto LABEL_46;
        case 8:
          *(v6 + 1242) = 1;
          v13 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AC1C3000, v13, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontViewCaptureCompleted", buf, 2u);
          }

          [*(*(a1 + 32) + 1184) updateFaceEnrollDuration];
          v68[0] = MEMORY[0x1E69E9820];
          v68[1] = 3221225472;
          v68[2] = __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_365;
          v68[3] = &unk_1E7970BA8;
          v14 = v3;
          v15 = *(a1 + 32);
          v69 = v14;
          v70 = v15;
          v73 = v5;
          objc_copyWeak(&v72, &location);
          v71 = v2;
          v16 = MEMORY[0x1E69E96A0];
          dispatch_async(MEMORY[0x1E69E96A0], v68);

          objc_destroyWeak(&v72);
          v12 = v69;
          goto LABEL_46;
      }
    }

LABEL_50:
    v44 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_cold_1();
    }

LABEL_53:
    dispatch_group_leave(v2);
    goto LABEL_54;
  }

  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v34 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC1C3000, v34, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> GeneralFailure", buf, 2u);
      }

      [*(*(a1 + 32) + 1184) updateStatus:0 EnrollmentResult:@"Failed"];
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_384;
      v48[3] = &unk_1E79703C8;
      v35 = v3;
      v36 = *(a1 + 32);
      v49 = v35;
      v50 = v36;
      v37 = MEMORY[0x1E69E96A0];
      dispatch_async(MEMORY[0x1E69E96A0], v48);

      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_3_395;
      v46[3] = &unk_1E7970208;
      v47 = v2;
      dispatch_group_notify(v35, v37, v46);

      v12 = v49;
    }

    else if (v7 == 4)
    {
      v41 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC1C3000, v41, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> Welcome", buf, 2u);
      }

      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v89[2] = __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_353;
      v89[3] = &unk_1E7970AE0;
      v89[4] = *(a1 + 32);
      v91 = v5;
      v90 = v2;
      v42 = MEMORY[0x1E69E96A0];
      dispatch_async(MEMORY[0x1E69E96A0], v89);

      v12 = v90;
    }

    else
    {
      v17 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC1C3000, v17, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontView", buf, 2u);
      }

      v18 = *(a1 + 32);
      if (!*(v18 + 1184))
      {
        v19 = objc_alloc_init(HPSUISpatialProfileAnalytics);
        v20 = *(a1 + 32);
        v21 = *(v20 + 1184);
        *(v20 + 1184) = v19;

        v18 = *(a1 + 32);
      }

      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 3221225472;
      v85[2] = __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_356;
      v85[3] = &unk_1E7970B08;
      v85[4] = v18;
      v88 = v5;
      v86 = v3;
      v87 = v2;
      v22 = MEMORY[0x1E69E96A0];
      dispatch_async(MEMORY[0x1E69E96A0], v85);

      v12 = v86;
    }

    goto LABEL_46;
  }

  if ((v7 - 1) >= 2)
  {
    if (!v7)
    {
      v26 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC1C3000, v26, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> CouldntScanEar", buf, 2u);
      }

      [*(*(a1 + 32) + 1184) updateStatus:0 EnrollmentResult:@"Failed"];
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_380;
      v59[3] = &unk_1E7970AE0;
      v27 = v3;
      v28 = *(a1 + 32);
      v60 = v27;
      v61 = v28;
      v62 = v5;
      v29 = MEMORY[0x1E69E96A0];
      dispatch_async(MEMORY[0x1E69E96A0], v59);

      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2_381;
      v57[3] = &unk_1E7970208;
      v58 = v2;
      dispatch_group_notify(v27, v29, v57);

      v12 = v60;
      goto LABEL_46;
    }

    goto LABEL_50;
  }

  [*(v6 + 1184) incrementRightEarOcclusionCount];
  [*(*(a1 + 32) + 1184) incrementLeftEarOcclusionCount];
  v8 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AC1C3000, v8, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> HairCoveringEar", buf, 2u);
  }

  [*(*(a1 + 32) + 1184) updateStatus:0 EnrollmentResult:@"Failed"];
  [*(a1 + 32) forceBlur];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_382;
  v53[3] = &unk_1E7970AE0;
  v9 = v3;
  v10 = *(a1 + 32);
  v54 = v9;
  v55 = v10;
  v56 = v5;
  v11 = MEMORY[0x1E69E96A0];
  dispatch_async(MEMORY[0x1E69E96A0], v53);

  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2_383;
  v51[3] = &unk_1E7970208;
  v52 = v2;
  dispatch_group_notify(v9, v11, v51);

  v12 = v54;
LABEL_46:

LABEL_54:
  v45 = dispatch_time(0, 3000000000);
  dispatch_group_wait(v2, v45);
  objc_destroyWeak(&location);
}

void __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 1408) scrollView];
  [v1 setContentOffset:1 animated:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
}

void __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_353(uint64_t a1)
{
  [*(*(a1 + 32) + 1408) moveToEnrollmentFromStep:*(a1 + 48) toStep:4];
  if (!+[HPSUISpatialProfileManager isProxCardShowed])
  {
    [HPSUISpatialProfileManager setProxCardShowed:1];
  }

  [*(a1 + 32) startEnrollment];
  [*(a1 + 32) showContinueButton];
  [*(*(a1 + 32) + 1400) setAlpha:0.0];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_356(uint64_t a1)
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
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2_357;
  v13[3] = &unk_1E7970208;
  v6 = v3;
  v7 = v15;
  [v4 moveToEnrollmentFromStep:v5 toStep:5 animateInAlongSide:&v15 animateOutAlongSide:&v14 animatedCompletion:v13];
  v8 = v15;

  v9 = v14;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_3;
  v11[3] = &unk_1E7970208;
  v10 = *(a1 + 40);
  v12 = *(a1 + 48);
  dispatch_group_notify(v10, MEMORY[0x1E69E96A0], v11);
}

void __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2_357(uint64_t a1)
{
  [*(*(a1 + 32) + 1000) removeFromSuperview];
  v2 = [*(*(a1 + 32) + 1056) tutorialMovieView];
  [v2 play];
}

void __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_3(uint64_t a1)
{
  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontView Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_358(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = [*(*(a1 + 40) + 1056) tutorialMovieView];
  v3 = *(a1 + 40);
  v4 = *(v3 + 1056);
  v5 = *(v3 + 1408);
  v6 = *(a1 + 56);
  v23 = v2;
  v24 = v4;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2_359;
  v21[3] = &unk_1E79703C8;
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
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_4;
  v19[3] = &unk_1E7970208;
  v20 = *(a1 + 32);
  [v11 triggerSoundHapticForEnrollmentState:v12 completion:v19];
  [*(a1 + 40) resumeEnrollment];
  dispatch_group_leave(*(a1 + 32));
  v13 = *(a1 + 32);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_5;
  v17 = &unk_1E7970208;
  v18 = *(a1 + 48);
  dispatch_group_notify(v13, MEMORY[0x1E69E96A0], &v14);
  [*(a1 + 40) startFaceInFrameHandlerTimer];
}

void __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2_359(uint64_t a1)
{
  *(*(a1 + 32) + 1224) = 5;
  [*(a1 + 32) startCaptureViewTimer];
  v2 = [*(*(a1 + 32) + 1056) pillContainer];
  [v2 setHidden:1];

  dispatch_group_enter(*(a1 + 40));
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 1056);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_3_360;
  v6[3] = &unk_1E79703C8;
  v6[4] = v4;
  v7 = v3;
  [v5 setState:3 completion:v6];
}

void __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_5(uint64_t a1)
{
  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontViewCapturePositionFace Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_361(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2_362;
  aBlock[3] = &unk_1E7970B30;
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
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_3_363;
  v13[3] = &unk_1E7970208;
  v14 = *(a1 + 32);
  [v7 triggerSoundHapticForEnrollmentState:v8 completion:v13];
  v9 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_4_364;
  block[3] = &unk_1E7970208;
  v12 = *(a1 + 48);
  dispatch_group_notify(v9, MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v17);
}

void __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2_362(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained showEarPillsDots];
  [WeakRetained[176] moveToEnrollmentFromStep:*(a1 + 56) toStep:7];
  [*(*(a1 + 32) + 992) bringSubviewToFront:*(*(a1 + 32) + 1088)];
  [*(*(a1 + 32) + 1088) setFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [*(*(a1 + 32) + 1088) setHidden:0];
  *(*(a1 + 32) + 1424) = 5;
  dispatch_group_leave(*(a1 + 40));
}

void __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_4_364(uint64_t a1)
{
  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontViewCaptureMoveHead Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_365(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  [*(*(a1 + 40) + 1056) setFaceCaptured:1];
  [*(a1 + 40) stopCaptureViewTimer];
  [*(a1 + 40) startPostProcessTimer];
  [*(a1 + 40) forceBlur];
  dispatch_group_enter(*(a1 + 32));
  [*(*(a1 + 40) + 1408) moveToEnrollmentFromStep:*(a1 + 64) toStep:8];
  v2 = *(*(a1 + 40) + 1056);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2_366;
  v11[3] = &unk_1E7970B80;
  objc_copyWeak(&v13, (a1 + 56));
  v6 = *(a1 + 32);
  v3 = v6.i64[0];
  v12 = vextq_s8(v6, v6, 8uLL);
  [v2 setState:6 completion:v11];
  dispatch_group_enter(*(a1 + 32));
  v4 = *(*(a1 + 40) + 1048);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_3_367;
  v9[3] = &unk_1E7970208;
  v10 = *(a1 + 32);
  [v4 triggerSoundHapticForEarCaptureState:1 completion:v9];
  dispatch_group_leave(*(a1 + 32));
  v5 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_4_368;
  block[3] = &unk_1E7970208;
  v8 = *(a1 + 48);
  dispatch_group_notify(v5, MEMORY[0x1E69E96A0], block);
  [*(a1 + 40) stopFaceInFrameHandlerTimer];
  [*(a1 + 40) sendTipKitSignal];

  objc_destroyWeak(&v13);
}

void __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2_366(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained[132] pillContainer];
  [v2 setHidden:0];

  [*(*(a1 + 32) + 1088) setFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [*(*(a1 + 32) + 1088) setHidden:1];
  [*(*(a1 + 32) + 1088) setAlpha:0.0];
  *(*(a1 + 32) + 1424) = 6;
  dispatch_group_leave(*(a1 + 40));
}

void __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_4_368(uint64_t a1)
{
  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontViewCaptureCompleted Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_372(uint64_t a1)
{
  [*(a1 + 32) stopTimers];
  dispatch_group_enter(*(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(v2 + 1408);
  v4 = *(a1 + 48);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2_373;
  v18[3] = &unk_1E7970208;
  v18[4] = v2;
  [v3 moveToEnrollmentFromStep:v4 toStep:12 completionAction:v18];
  dispatch_group_enter(*(a1 + 40));
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 1056);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_3_374;
  v16[3] = &unk_1E79703C8;
  v16[4] = v6;
  v17 = v5;
  [v7 setState:10 completion:v16];
  dispatch_group_enter(*(a1 + 40));
  v8 = *(a1 + 32);
  v9 = *(v8 + 1048);
  v10 = *(v8 + 1148);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_4_375;
  v14 = &unk_1E7970208;
  v15 = *(a1 + 40);
  [v9 triggerSoundHapticForEnrollmentState:v10 completion:&v11];
  [*(*(a1 + 32) + 1400) setAlpha:{0.0, v11, v12, v13, v14}];
  [*(a1 + 32) stopEnrollment];
  [*(a1 + 32) showContinueButton];
  [*(*(a1 + 32) + 1408) updateContinueButtonActionWithTarget:*(a1 + 32) selector:sel_cancelSpatialAudioProfile];
  *(*(a1 + 32) + 1209) = 1;
  dispatch_group_leave(*(a1 + 40));
}

uint64_t __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2_373(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1129] == 1)
  {
    [v2 stopPostProcessSpinner];
    v2 = *(a1 + 32);
  }

  return [v2 stopPostProcessTimer];
}

void __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_5_376(uint64_t a1)
{
  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> Completed Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_380(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  [*(*(a1 + 40) + 1408) moveToEnrollmentFromStep:*(a1 + 48) toStep:0];
  [*(a1 + 40) showContinueButton];
  [*(*(a1 + 40) + 1408) updateContinueButtonActionWithTarget:*(a1 + 40) selector:sel_cancelSpatialAudioProfile];
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2_381(uint64_t a1)
{
  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> CouldntScanEar Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_382(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  [*(*(a1 + 40) + 1408) moveToEnrollmentFromStep:*(a1 + 48) toStep:2];
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2_383(uint64_t a1)
{
  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> HairCoveringEar Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_384(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = [*(*(a1 + 40) + 1408) infoView];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"GENERAL_FAILURE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = [*(*(a1 + 40) + 1408) infoView];
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"GENERAL_FAILURE_DETAIL" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  v8 = *(*(a1 + 40) + 1408);
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"DONE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v8 updateContinueButtonTitleWithTitle:v10];

  v11 = *(a1 + 40);
  if (*(v11 + 1192))
  {
    [v11 cleanUpSpinner];
    v11 = *(a1 + 40);
  }

  if (*(v11 + 1129) == 1)
  {
    [v11 stopPostProcessSpinner];
    v11 = *(a1 + 40);
  }

  [v11 stopPostProcessTimer];
  [*(*(a1 + 40) + 1400) setAlpha:0.0];
  [*(*(a1 + 40) + 1056) setHidden:1];
  [*(a1 + 40) stopEnrollment];
  [*(a1 + 40) showContinueButton];
  [*(*(a1 + 40) + 1408) updateContinueButtonActionWithTarget:*(a1 + 40) selector:sel_cancelSpatialAudioProfile];
  dispatch_group_leave(*(a1 + 32));
  dispatch_group_enter(*(a1 + 32));
  v12 = *(*(a1 + 40) + 1048);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_2_394;
  v13[3] = &unk_1E7970208;
  v14 = *(a1 + 32);
  [v12 triggerSoundHapticForEnrollmentState:3 completion:v13];
}

void __63__HPSUISpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_3_395(uint64_t a1)
{
  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> GeneralFailure Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)continueButtonTapped
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    currentStep = self->_currentStep;
    sessionState = self->_sessionState;
    v9[0] = 67109376;
    v9[1] = currentStep;
    v10 = 1024;
    v11 = sessionState;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: ContinueButton Tapped Current Step %d, Currente Session %d ", v9, 0xEu);
  }

  if (self->_currentStep == 4)
  {
    if ([(HPSUISpatialProfileSingeStepEnrollmentController *)self checkAndShowInEarPopup])
    {
      return;
    }

    if (([(BluetoothManager *)self->_btManager available]& 1) == 0)
    {
      v6 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v9[0]) = 0;
        _os_log_impl(&dword_1AC1C3000, v6, OS_LOG_TYPE_DEFAULT, "Spatial Profile: btManager is not available", v9, 2u);
      }

      if (!self->_welcomeSpinnerOn)
      {
        v7 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v9[0]) = 0;
          _os_log_impl(&dword_1AC1C3000, v7, OS_LOG_TYPE_DEFAULT, "Spatial Profile: btManager is not available starting welcome spinner", v9, 2u);
        }

        [(HPSUISpatialProfileSingeStepEnrollmentController *)self startWelcomeSpinner];
      }
    }
  }

  if (self->_enrollmentReady)
  {
    v8 = self->_currentStep;
    if (v8 <= 9)
    {
      [(HPSUISpatialProfileSingeStepEnrollmentController *)self moveToStep:(v8 + 1)];
    }
  }

  else if (!self->_welcomeSpinnerOn)
  {
    [(HPSUISpatialProfileSingeStepEnrollmentController *)self startWelcomeSpinner];
  }
}

- (void)userCancelEnrollment
{
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: User Cancelled Spatial Audio Profile", v4, 2u);
  }

  [(HPSUISpatialProfileAnalytics *)self->_enrollmentAnalytics updateStatus:0 EnrollmentResult:@"Cancel"];
  [(HPSUISpatialProfileSingeStepEnrollmentController *)self cancelSpatialAudioProfile];
}

- (void)stopTimers
{
  [(HPSUISpatialProfileSingeStepEnrollmentController *)self stopFaceInFrameHandlerTimer];
  [(HPSUISpatialProfileSingeStepEnrollmentController *)self stopCaptureViewTimer];

  [(HPSUISpatialProfileSingeStepEnrollmentController *)self stopPostProcessTimer];
}

- (void)cancelSpatialAudioProfile
{
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Cancel Spatial Audio Profile", buf, 2u);
  }

  if (self->_enrollmentStarted)
  {
    [(HPSUISpatialProfileSingeStepEnrollmentController *)self stopEnrollment];
  }

  [(HPSUISpatialProfileSingeStepEnrollmentController *)self stopTimers];
  [(HPSUISpatialProfileSingleStepSoundHapticManager *)self->_soundHapticManager stop];
  [(HPSUISpatialProfileSingeStepEnrollmentController *)self resetVolume];
  [(HPSUISpatialProfileEarTutorialView *)self->_earTutorialView stopPlayers];
  [(HPSUISpatialProfileSingeStepEnrollmentController *)self dismissViewControllerAnimated:1 completion:&__block_literal_global_400];
  if (self->_enrollmentCompleted)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"HPSSpatialAudioProfileUpdated" object:0];
  }

  if (self->dismissalHandler)
  {
    v5 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1AC1C3000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Executing : Dismiss handler", v6, 2u);
    }

    (*(self->dismissalHandler + 2))();
  }

  [(HPSUISpatialProfileAnalytics *)self->_enrollmentAnalytics submitHPSSpatialProfileEnrollAnalytics];
}

- (void)bluetoothDidBecomeAvailable
{
  self->_bluetoothBecameAvailable = 1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__HPSUISpatialProfileSingeStepEnrollmentController_bluetoothDidBecomeAvailable__block_invoke;
  block[3] = &unk_1E7970208;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __79__HPSUISpatialProfileSingeStepEnrollmentController_bluetoothDidBecomeAvailable__block_invoke(uint64_t result)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 1128) == 1)
  {
    v1 = result;
    v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(v1 + 32);
      v4 = *(v3 + 1206);
      v5 = [*(v3 + 1280) available];
      v6[0] = 67109376;
      v6[1] = v4;
      v7 = 1024;
      v8 = v5;
      _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: bluetoothDidBecomeAvailable -> stopWelcomeSpinner, _enrollmentReady %d [_btManager available] %d", v6, 0xEu);
    }

    return [*(v1 + 32) stopWelcomeSpinner];
  }

  return result;
}

- (void)retrieveProfile
{
  [self code];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void __67__HPSUISpatialProfileSingeStepEnrollmentController_retrieveProfile__block_invoke_407(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[6];
    v6 = a1[7];
    v7 = 134218240;
    v8 = v5;
    v9 = 2048;
    v10 = v6;
    _os_log_impl(&dword_1AC1C3000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Retrive completion : requestedSize = %lu profileSize = %lu", &v7, 0x16u);
  }

  [*(a1[4] + 1176) appendData:v3];
  dispatch_group_leave(*(*(a1[5] + 8) + 40));
}

uint64_t __67__HPSUISpatialProfileSingeStepEnrollmentController_retrieveProfile__block_invoke_409(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(a1 + 32) + 1176) length];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Retrieved Profile Size: %lu", &v5, 0xCu);
  }

  return [*(a1 + 32) moveToStep:11];
}

- (void)syncProfile
{
  v13 = *MEMORY[0x1E69E9840];
  profileData = self->_profileData;
  if (profileData && [(NSMutableData *)profileData length])
  {
    v4 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(NSMutableData *)self->_profileData length];
      *buf = 134217984;
      v12 = v5;
      _os_log_impl(&dword_1AC1C3000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Syncing Profile, Size: %lu", buf, 0xCu);
    }

    v6 = [MEMORY[0x1E698D468] soundProfileRecordWithCustomData:self->_profileData];
    v7 = objc_alloc_init(MEMORY[0x1E698D460]);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63__HPSUISpatialProfileSingeStepEnrollmentController_syncProfile__block_invoke;
    v9[3] = &unk_1E79704B8;
    v9[4] = self;
    v10 = v7;
    v8 = v7;
    [v8 createSoundProfileRecord:v6 completion:v9];
  }

  else
  {
    v6 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AC1C3000, v6, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Cannot Sync Profile, Invalid Profile Data", buf, 2u);
    }
  }
}

void __63__HPSUISpatialProfileSingeStepEnrollmentController_syncProfile__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (v3)
  {
    if (v5)
    {
      __54__HPSUISpatialProfileEnrollmentController_syncProfile__block_invoke_cold_1(v3, v4);
    }
  }

  else if (v5)
  {
    __54__HPSUISpatialProfileEnrollmentController_syncProfile__block_invoke_cold_2();
  }

  [*(a1 + 32) moveToStep:12];
  [*(a1 + 40) invalidate];
}

- (id)angleArrayToBinaryString:(id)string
{
  v17 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [stringCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = &stru_1F20FAB50;
    v7 = *v13;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(stringCopy);
        }

        if ([*(*(&v12 + 1) + 8 * v8) captured])
        {
          v10 = @"1%@";
        }

        else
        {
          v10 = @"0%@";
        }

        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:v10, v9];

        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [stringCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = &stru_1F20FAB50;
  }

  return v6;
}

- (void)startTutorialResumeEnrollTimer
{
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Start Tutorial automatic Delay Transition timer", buf, 2u);
  }

  if (self->_tutorialResumeEnrollTimer)
  {
    v4 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1AC1C3000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stopping Tutorial automatic Delay Transition timer…", v9, 2u);
    }

    [(HPSUISpatialProfileSingeStepEnrollmentController *)self stopTutorialResumeEnrollTimer];
  }

  v5 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1AC1C3000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Starting Tutorial automatic Delay Transition timer", v8, 2u);
  }

  v6 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_tutorialResumeEnrollTimerDidFire selector:0 userInfo:0 repeats:3.0];
  tutorialResumeEnrollTimer = self->_tutorialResumeEnrollTimer;
  self->_tutorialResumeEnrollTimer = v6;
}

- (void)stopTutorialResumeEnrollTimer
{
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stopping capture view timer", v5, 2u);
  }

  [(NSTimer *)self->_tutorialResumeEnrollTimer invalidate];
  tutorialResumeEnrollTimer = self->_tutorialResumeEnrollTimer;
  self->_tutorialResumeEnrollTimer = 0;
}

- (void)startCaptureViewTimer
{
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Restart capture view timer", buf, 2u);
  }

  if (self->_captureViewTimer)
  {
    v4 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1AC1C3000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stopping capture view timer…", v9, 2u);
    }

    [(HPSUISpatialProfileSingeStepEnrollmentController *)self stopCaptureViewTimer];
  }

  v5 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1AC1C3000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Starting capture view timer", v8, 2u);
  }

  v6 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_captureViewTimerDidFire selector:0 userInfo:0 repeats:180.0];
  captureViewTimer = self->_captureViewTimer;
  self->_captureViewTimer = v6;
}

- (void)stopCaptureViewTimer
{
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stopping capture view timer", v5, 2u);
  }

  [(NSTimer *)self->_captureViewTimer invalidate];
  captureViewTimer = self->_captureViewTimer;
  self->_captureViewTimer = 0;
}

- (void)captureViewTimerDidFire
{
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: captureViewTimerDidFire canceling spatial audio profile", buf, 2u);
  }

  v4 = MEMORY[0x1E69DC650];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"CANCEL_ENROLLMENT_ALERT_PROMPT" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  v7 = [v4 alertControllerWithTitle:v6 message:&stru_1F20FAB50 preferredStyle:1];

  v8 = MEMORY[0x1E69DC648];
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CANCEL_ENROLLMENT_ALERT_PROMPT_BUTTON" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__HPSUISpatialProfileSingeStepEnrollmentController_captureViewTimerDidFire__block_invoke;
  v12[3] = &unk_1E79704E0;
  v12[4] = self;
  v11 = [v8 actionWithTitle:v10 style:0 handler:v12];
  [v7 addAction:v11];

  [(HPSUISpatialProfileSingeStepEnrollmentController *)self presentViewController:v7 animated:1 completion:0];
}

- (id)getBudsInEarString
{
  v29 = *MEMORY[0x1E69E9840];
  [(BluetoothManager *)self->_btManager connectedDevices];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = v27 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        if (+[HPSProductUtils isAppleHeadphone:](HPSProductUtils, "isAppleHeadphone:", v8) && ([v8 isTemporaryPaired] & 1) == 0)
        {
          if ([v8 isGenuineAirPods])
          {
            v9 = [BTSDeviceClassic deviceWithDevice:v8];
            v10 = v9;
            if (v9)
            {
              v20 = 3;
              v21 = 3;
              classicDevice = [v9 classicDevice];
              [classicDevice inEarStatusPrimary:&v21 secondary:&v20];

              if (!v21 || !v20)
              {
                classicDevice2 = [v10 classicDevice];
                productId = [classicDevice2 productId];

                0x2000 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ACCESSORY_MODEL_NAME_%d", productId - 0x2000];
                v16 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
                v17 = [v16 localizedStringForKey:0x2000 value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
                if ([v17 length] && productId >= 0x200A)
                {

                  if (productId >> 4 <= 0x200)
                  {
                    goto LABEL_25;
                  }
                }

                else
                {
                }

                0x2000 = @"ACCESSORY_MODEL_NAME_15";
LABEL_25:
                content = [(HPSUISpatialProfileSingeStepEnrollmentController *)self content];
                removeAccessoryFromEar = [content removeAccessoryFromEar];

                goto LABEL_26;
              }
            }
          }

          else
          {
            v10 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              [(HPSUISpatialProfileEnrollmentController *)&buf getBudsInEarString];
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  removeAccessoryFromEar = 0;
LABEL_26:

  return removeAccessoryFromEar;
}

- (void)triggerFaceInFrameHandlerTimeout
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    faceBoundingBoxStatus = self->_faceBoundingBoxStatus;
    *buf = 67109120;
    v12 = faceBoundingBoxStatus;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Update Face Capture %d ", buf, 8u);
  }

  if ((self->_currentStep & 0xFFFFFFFE) != 6)
  {
    goto LABEL_8;
  }

  if (self->_faceBoundingBoxStatus == 1 && !self->_faceCaptured)
  {
    self->_faceTooCloseErrorShowing = 1;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__HPSUISpatialProfileSingeStepEnrollmentController_triggerFaceInFrameHandlerTimeout__block_invoke;
    block[3] = &unk_1E7970208;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v5 = MEMORY[0x1E695DFF0];
    v6 = 1.0;
    goto LABEL_10;
  }

  if (!self->_faceTooCloseErrorShowing)
  {
LABEL_8:
    [(HPSUISpatialProfileSingeStepEnrollmentController *)self stopFaceInFrameHandlerTimer];
    return;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__HPSUISpatialProfileSingeStepEnrollmentController_triggerFaceInFrameHandlerTimeout__block_invoke_2;
  v9[3] = &unk_1E7970208;
  v9[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
  v5 = MEMORY[0x1E695DFF0];
  v6 = 3.0;
LABEL_10:
  v7 = [v5 scheduledTimerWithTimeInterval:self target:sel_triggerFaceInFrameHandlerTimeout selector:0 userInfo:0 repeats:v6];
  faceInFrameHandlerTimer = self->_faceInFrameHandlerTimer;
  self->_faceInFrameHandlerTimer = v7;
}

void __84__HPSUISpatialProfileSingeStepEnrollmentController_triggerFaceInFrameHandlerTimeout__block_invoke(uint64_t a1)
{
  v12 = [MEMORY[0x1E695DF58] currentLocale];
  v2 = [v12 objectForKey:*MEMORY[0x1E695DA08]];
  v3 = [v2 BOOLValue];

  v4 = [*(*(a1 + 32) + 1408) infoView];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"FACE_TOO_CLOSE_TITLE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v4 setTitle:v6];

  v7 = [*(*(a1 + 32) + 1408) infoView];
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = v8;
  if (v3)
  {
    v10 = @"FACE_TOO_CLOSE_DETAIL_METRICS";
  }

  else
  {
    v10 = @"FACE_TOO_CLOSE_DETAIL_IMPERIAL";
  }

  v11 = [v8 localizedStringForKey:v10 value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v7 setDetailText:v11];
}

void __84__HPSUISpatialProfileSingeStepEnrollmentController_triggerFaceInFrameHandlerTimeout__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 1243) == 1)
  {
    v3 = [*(v1 + 1408) infoView];
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"SINGLE_STEP_FRONT_VIEW_CAPTURE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
    [v3 setTitle:v5];

    v6 = [*(*(a1 + 32) + 1408) infoView];
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"SINGLE_STEP_FRONT_VIEW_CAPTURE_DETAIL" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
    [v6 setDetailText:v8];

    v1 = *(a1 + 32);
  }

  *(v1 + 1243) = 0;
}

- (void)startFaceInFrameHandlerTimer
{
  if (self->_faceInFrameHandlerTimer)
  {
    v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Face Tracker Timer already started, stopping it first", buf, 2u);
    }

    [(HPSUISpatialProfileSingeStepEnrollmentController *)self stopFaceInFrameHandlerTimer];
  }

  v4 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1AC1C3000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Face Tracker Timer", v7, 2u);
  }

  v5 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_triggerFaceInFrameHandlerTimeout selector:0 userInfo:0 repeats:3.0];
  faceInFrameHandlerTimer = self->_faceInFrameHandlerTimer;
  self->_faceInFrameHandlerTimer = v5;
}

- (void)stopFaceInFrameHandlerTimer
{
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stopping Face Tracker Timer", v5, 2u);
  }

  [(NSTimer *)self->_faceInFrameHandlerTimer invalidate];
  faceInFrameHandlerTimer = self->_faceInFrameHandlerTimer;
  self->_faceInFrameHandlerTimer = 0;
}

- (void)startPostProcessTimer
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_postProcessTimer)
  {
    v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Post Process Timer already started, stopping it first", &v10, 2u);
    }

    [(HPSUISpatialProfileSingeStepEnrollmentController *)self stopPostProcessTimer];
  }

  if (MGGetBoolAnswer())
  {
    v4 = 120.0;
  }

  else
  {
    v4 = 240.0;
  }

  v5 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = v4;
    _os_log_impl(&dword_1AC1C3000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Starting Post Process Timer %f", &v10, 0xCu);
  }

  v6 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_triggerPostProcessTimeout selector:0 userInfo:0 repeats:v4];
  postProcessTimer = self->_postProcessTimer;
  self->_postProcessTimer = v6;

  v8 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_startPostProcessSpinner selector:0 userInfo:0 repeats:2.0];
  postProcessSpinnerTimer = self->_postProcessSpinnerTimer;
  self->_postProcessSpinnerTimer = v8;
}

- (void)stopPostProcessTimer
{
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stopping Post Process Timer", v6, 2u);
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
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Triggering Post Process Timeout", v4, 2u);
  }

  [(HPSUISpatialProfileSingeStepEnrollmentController *)self moveToStep:3];
}

- (void)didReceiveStateUpdateForSession:(id)session stateInfo:(id)info
{
  v75 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  infoCopy = info;
  v8 = MEMORY[0x1E69A2AC0];
  v9 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E69A2AC0]];
  if (!v9 || (v10 = v9, [infoCopy objectForKeyedSubscript:*v8], v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [HPSUISpatialProfileSingeStepEnrollmentController didReceiveStateUpdateForSession:stateInfo:];
  }

  v12 = [infoCopy objectForKeyedSubscript:*v8];
  integerValue = [v12 integerValue];

  v14 = MEMORY[0x1E69A2A98];
  v15 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E69A2A98]];

  if (v15)
  {
    v16 = [infoCopy objectForKeyedSubscript:*v14];
    v17 = v16;
    if (v16)
    {
      [v16 code];
      v18 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v72 = v17;
        _os_log_impl(&dword_1AC1C3000, v18, OS_LOG_TYPE_DEFAULT, "Spatial Profile: didReceiveStateUpdateForSession  ERROR: %@ ", buf, 0xCu);
      }

      if (self->_currentStep != 3)
      {
        [(HPSUISpatialProfileSingeStepEnrollmentController *)self moveToStep:3];
      }

      v19 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [HPSUISpatialProfileEnrollmentController didReceiveStateUpdateForSession:v17 stateInfo:?];
      }
    }
  }

  if (self->_sessionState != integerValue)
  {
    v20 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v72 = integerValue;
      _os_log_impl(&dword_1AC1C3000, v20, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Frame Rate : Update Session %lu", buf, 0xCu);
    }

    self->_sessionState = integerValue;
  }

  if ((integerValue - 1) <= 1)
  {
    [(HPSUISpatialProfileAnalytics *)self->_enrollmentAnalytics incrementFrameCount];
  }

  v21 = MEMORY[0x1E69A2AB0];
  v22 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E69A2AB0]];

  if (v22)
  {
    v23 = [infoCopy objectForKeyedSubscript:*v21];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [HPSUISpatialProfileSingeStepEnrollmentController didReceiveStateUpdateForSession:stateInfo:];
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
      v28 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
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

    v28 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E69A2AA0]];
    yawAngles = [v28 yawAngles];
    v30 = [yawAngles count];

    v31 = MEMORY[0x1E695F058];
    if (v28)
    {
      v67 = v30 >> 1;
      [v28 faceBoundingBox];
      if (!CGRectEqualToRect(v76, *v31) && !self->_faceCaptured)
      {
        [v28 faceBoundingBox];
        [(HPSUISpatialProfileSingeStepEnrollmentController *)self updateFaceTrackingStatus:?];
      }

      if (!self->_faceStraightZeroAngleCaptured)
      {
        yawAngles2 = [v28 yawAngles];
        v33 = [yawAngles2 objectAtIndexedSubscript:v67];
        captured = [v33 captured];

        if (captured)
        {
          self->_faceStraightZeroAngleCaptured = 1;
          v35 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            v72 = 0;
            v73 = 1024;
            v74 = 1;
            _os_log_impl(&dword_1AC1C3000, v35, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Captured straight face angle %f ->  %d", buf, 0x12u);
          }
        }
      }

      if (self->_faceStraightZeroAngleCaptured && self->_currentStep == 6)
      {
        self->_faceDetected = 1;
        [(HPSUISpatialProfileSingleStepPillContainerView *)self->_pillContainerView fillPill:v67 updatePillsForPoseStatus:v28 withCompletion:&__block_literal_global_471];
        v36 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AC1C3000, v36, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Fill up Straight angle: Transition to View CaptureMoveHead", buf, 2u);
        }

        if (self->_currentStep <= 6)
        {
          [(HPSUISpatialProfileSingeStepEnrollmentController *)self moveToStep:7];
        }
      }

      currentStep = self->_currentStep;
      if (currentStep == 7 || currentStep == 2)
      {
        [(HPSUISpatialProfileSingleStepSoundHapticManager *)self->_soundHapticManager startEnrollLoop];
        pillContainerView = self->_pillContainerView;
        v70[0] = MEMORY[0x1E69E9820];
        v70[1] = 3221225472;
        v70[2] = __94__HPSUISpatialProfileSingeStepEnrollmentController_didReceiveStateUpdateForSession_stateInfo___block_invoke_472;
        v70[3] = &unk_1E7970BD0;
        v70[4] = self;
        [(HPSUISpatialProfileSingleStepPillContainerView *)pillContainerView updatePillsForPoseStatus:v28 pillCount:&self->_completedPosesCount alongSideAction:v70];
      }
    }

    v39 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E69A2A90]];
    v40 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E69A2AA8]];
    v41 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E69A2AB8]];
    earCaptureStatus = [v39 earCaptureStatus];
    [v39 earBoundingBox];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    [(HPSUISpatialProfileSingeStepEnrollmentController *)self updateCurrentTrackingEar:v40 rightEarPoseStatus:v41 earBoundingBox:earCaptureStatus earStatus:?];
    if (!self->_enrollmentPaused)
    {
      v77.origin.x = v44;
      v77.origin.y = v46;
      v77.size.width = v48;
      v77.size.height = v50;
      if (!CGRectEqualToRect(v77, *v31))
      {
        previewLayer = [(HPSUISpatialProfileVideoCaptureSession *)self->videoCaptureSession previewLayer];
        [previewLayer frame];
        [(HPSUISpatialProfileSingeStepEnrollmentController *)self translateEarBoundingBox:v44 previewLayerBoundingBox:v46, v48, v50, v52, v53, v54, v55];
      }

      [(HPSUISpatialProfileSingeStepEnrollmentController *)self updateBoundingBoxHiddenStatus];
      isEarOccluded = [(HPSUISpatialProfileSingeStepEnrollmentController *)self isEarOccluded];
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

      [(HPSUISpatialProfileSingeStepEnrollmentController *)self moveToStep:v58];
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
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __94__HPSUISpatialProfileSingeStepEnrollmentController_didReceiveStateUpdateForSession_stateInfo___block_invoke_476;
      v69[3] = &unk_1E7970208;
      v69[4] = self;
      dispatch_async(yawAngles3, v69);
    }

    goto LABEL_73;
  }

  switch(integerValue)
  {
    case 3:
      [(HPSUISpatialProfileAnalytics *)self->_enrollmentAnalytics updateSoundProfileCreationDurationStart];
      v28 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v59 = self->_currentStep;
        *buf = 67109120;
        LODWORD(v72) = v59;
        v60 = "Spatial Profile: State Update: Post Process : %d";
        v61 = v28;
        v62 = 8;
LABEL_65:
        _os_log_impl(&dword_1AC1C3000, v61, OS_LOG_TYPE_DEFAULT, v60, buf, v62);
        goto LABEL_74;
      }

      goto LABEL_74;
    case 4:
      if (self->_currentStep <= 7)
      {
        [(HPSUISpatialProfileSingeStepEnrollmentController *)self moveToStep:8];
      }

      v63 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC1C3000, v63, OS_LOG_TYPE_DEFAULT, "Spatial Profile: State Update: Retrieve Profile", buf, 2u);
      }

      [(HPSUISpatialProfileSingeStepEnrollmentController *)self moveToStep:10];
      [(HPSUISpatialProfileAnalytics *)self->_enrollmentAnalytics updateSoundProfileCreationDuration];
      break;
    case 5:
      v27 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [HPSUISpatialProfileEnrollmentController didReceiveStateUpdateForSession:stateInfo:];
      }

      [(HPSUISpatialProfileAnalytics *)self->_enrollmentAnalytics updateStatus:0 EnrollmentResult:@"Failed"];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __94__HPSUISpatialProfileSingeStepEnrollmentController_didReceiveStateUpdateForSession_stateInfo___block_invoke_477;
      block[3] = &unk_1E7970208;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      break;
  }

LABEL_75:
  if (self->_currentProgress != v26)
  {
    self->_currentProgress = v26;
  }
}

int *__94__HPSUISpatialProfileSingeStepEnrollmentController_didReceiveStateUpdateForSession_stateInfo___block_invoke_472(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
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
      [*(*(a1 + 32) + 1048) triggerSoundHapticForEarCaptureState:0 completion:&__block_literal_global_474];
    }
  }

  v6 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(*(a1 + 32) + 1400) leftSectionCompleted];
    v8 = *(*(a1 + 32) + 1428);
    v11[0] = 67109632;
    v11[1] = v7;
    v12 = 1024;
    v13 = v4;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_1AC1C3000, v6, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Phase 2 -> End, L%i R%i _enrollmentUICompletionStepComplete:%i", v11, 0x14u);
  }

  result = [*(*(a1 + 32) + 1400) leftSectionCompleted];
  if (result)
  {
    result = [*(*(a1 + 32) + 1400) rightSectionCompleted];
    if (result)
    {
      if ((*(*(a1 + 32) + 1428) & 1) == 0)
      {
        v10 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v11[0]) = 0;
          _os_log_impl(&dword_1AC1C3000, v10, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Phase 2 -> End UI complete", v11, 2u);
        }

        *(*(a1 + 32) + 1428) = 1;
        [*(*(a1 + 32) + 1048) stopEnrollLoop];
        *(*(a1 + 32) + 1244) = 33;
        result = *(a1 + 32);
        if (result[287] <= 7)
        {
          return [result moveToStep:8];
        }
      }
    }
  }

  return result;
}

void __94__HPSUISpatialProfileSingeStepEnrollmentController_didReceiveStateUpdateForSession_stateInfo___block_invoke_2()
{
  v0 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1AC1C3000, v0, OS_LOG_TYPE_DEFAULT, "Spatial Profile: HPSUISpatialProfileEarCaptureStep_First complete sound played", v1, 2u);
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
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __108__HPSUISpatialProfileSingeStepEnrollmentController_didReceiveCaptureVideo_colorImage_depthImage_faceObject___block_invoke_488;
    block[3] = &unk_1E79703C8;
    v12 = v14;
    v14[0] = imageCopy;
    v14[1] = self;
    dispatch_async(visualDetectionQueue, block);
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __108__HPSUISpatialProfileSingeStepEnrollmentController_didReceiveCaptureVideo_colorImage_depthImage_faceObject___block_invoke;
    v15[3] = &unk_1E79703F0;
    v12 = v16;
    v16[0] = videoCopy;
    v16[1] = self;
    v17 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], v15);
  }
}

void __108__HPSUISpatialProfileSingeStepEnrollmentController_didReceiveCaptureVideo_colorImage_depthImage_faceObject___block_invoke(uint64_t a1)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_1AC1C3000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Update Preview Layer", &v31, 2u);
    }

    *(*(a1 + 40) + 1210) = 1;
    [*(*(a1 + 40) + 1160) setPreviewLayer:*(a1 + 32)];
    v5 = [MEMORY[0x1E695F620] contextWithOptions:0];
    v6 = *(a1 + 40);
    v7 = *(v6 + 1384);
    *(v6 + 1384) = v5;

    v8 = MEMORY[0x1E695F638];
    v9 = *MEMORY[0x1E695F5C0];
    v10 = *(*(a1 + 40) + 1384);
    v34 = *MEMORY[0x1E695F5B0];
    v35[0] = *MEMORY[0x1E695F5A8];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v12 = [v8 detectorOfType:v9 context:v10 options:v11];
    v13 = *(a1 + 40);
    v14 = *(v13 + 1392);
    *(v13 + 1392) = v12;

    v15 = [*(*(a1 + 40) + 1160) previewLayer];
    [v15 setOpacity:0.0];

    v16 = [[HPSUISpatialProfileSingleStepPearlEnrollView alloc] initWithVideoCaptureSession:*(*(a1 + 40) + 1160) inSheet:0 squareNeedsPositionLayout:0];
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
    v22 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(*(a1 + 40) + 1032);
      v23 = *(*(a1 + 40) + 1040);
      v31 = 134218240;
      *v32 = v24;
      *&v32[8] = 2048;
      v33 = v23;
      _os_log_impl(&dword_1AC1C3000, v22, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Frame Size  %f %f", &v31, 0x16u);
    }

    v25 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
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

      v31 = 138412290;
      *v32 = v26;
      _os_log_impl(&dword_1AC1C3000, v25, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Checking enrollment viewer Spinner %@", &v31, 0xCu);
    }

    *(*(a1 + 40) + 1206) = 1;
    if (*(*(a1 + 40) + 1128) == 1)
    {
      v27 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 40);
        v29 = *(v28 + 1206);
        v30 = [*(v28 + 1280) available];
        v31 = 67109376;
        *v32 = v29;
        *&v32[4] = 1024;
        *&v32[6] = v30;
        _os_log_impl(&dword_1AC1C3000, v27, OS_LOG_TYPE_DEFAULT, "Spatial Profile: didReceiveCaptureVideo -> stopWelcomeSpinner, _enrollmentReady %d [_btManager available] %d", &v31, 0xEu);
      }

      [*(a1 + 40) stopWelcomeSpinner];
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __99__HPSUISpatialProfileEnrollmentController_didReceiveCaptureVideo_colorImage_depthImage_faceObject___block_invoke_cold_1();
    }
  }
}

void __108__HPSUISpatialProfileSingeStepEnrollmentController_didReceiveCaptureVideo_colorImage_depthImage_faceObject___block_invoke_488(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 40) + 1378);
    v3 = MEMORY[0x1E695DF20];
    v4 = [MEMORY[0x1E696AD98] numberWithInt:6];
    v5 = [v3 dictionaryWithObject:v4 forKey:*MEMORY[0x1E695F5B8]];

    v6 = [*(*(a1 + 40) + 1392) featuresInImage:*(a1 + 32) options:v5];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (!v7)
    {
      goto LABEL_12;
    }

    v8 = v7;
    v23 = v2;
    v24 = v5;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v11 |= [v14 hasLeftEyePosition];
        v10 |= [v14 hasRightEyePosition];
        v9 |= [v14 hasMouthPosition];
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v8);
    v5 = v24;
    v2 = v23;
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
      v17 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
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
        v30 = v21;
        v31 = 1024;
        v32 = v20;
        _os_log_impl(&dword_1AC1C3000, v17, OS_LOG_TYPE_DEFAULT, "Spatial Profile: 2 User attention status %@ Count %d", buf, 0x12u);
      }

      v22 = *(a1 + 40);
      if (*(v22 + 1378) == 1)
      {
        *(v22 + 1320) = 0;
        *(*(a1 + 40) + 1292) = 0;
      }
    }
  }
}

- (void)updateCurrentTrackingEar:(id)ear rightEarPoseStatus:(id)status earBoundingBox:(CGRect)box earStatus:(int)earStatus
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  v44 = *MEMORY[0x1E69E9840];
  earCopy = ear;
  statusCopy = status;
  v15 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    v16 = NSStringFromRect(v45);
    earOcclusionDetectTracker = self->_earOcclusionDetectTracker;
    v34 = 138413314;
    v35 = earCopy;
    v36 = 2112;
    v37 = statusCopy;
    v38 = 2112;
    v39 = v16;
    v40 = 1024;
    earStatusCopy = earStatus;
    v42 = 2048;
    v43 = earOcclusionDetectTracker;
    _os_log_impl(&dword_1AC1C3000, v15, OS_LOG_TYPE_DEFAULT, "Spatial Profile: updateCurrentTrackingEar left:%@  right: %@  box: %@  status:%i tracker:%lu", &v34, 0x30u);
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
        v46.origin.x = x;
        v46.origin.y = y;
        v46.size.width = width;
        v46.size.height = height;
        v26 = CGRectEqualToRect(v46, *MEMORY[0x1E695F058]);
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
          v30 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
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

            v34 = 136315650;
            v35 = v33;
            v36 = 2048;
            v37 = v31;
            v38 = 1024;
            LODWORD(v39) = supressEarOcclusionWarning;
            _os_log_impl(&dword_1AC1C3000, v30, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ear Occlusion changed to %s current number of entries %lu UI supressed = %d", &v34, 0x1Cu);
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
}

- (void)translateEarBoundingBox:(CGRect)box previewLayerBoundingBox:(CGRect)boundingBox
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__HPSUISpatialProfileSingeStepEnrollmentController_translateEarBoundingBox_previewLayerBoundingBox___block_invoke;
  block[3] = &unk_1E7970558;
  block[4] = self;
  v4.f64[0] = boundingBox.size.width;
  v4.f64[1] = boundingBox.size.height;
  _Q7 = vcvtq_f64_f32(vcvt_f32_f64(vdivq_f64(v4, self->_visageFrame.size)));
  height = box.size.height;
  v7 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_f64(box.size, _Q7))), xmmword_1AC30EC80));
  v8 = (0.5 * v7.f32[0]) + _Q7.f64[0] * box.origin.x;
  __asm { FMLA            D3, D1, V7.D[1] }

  v14.f64[0] = boundingBox.size.width - v8;
  v14.f64[1] = _D3;
  y = boundingBox.origin.y;
  block[5] = v7;
  block[6] = vcvt_f32_f64(vaddq_f64(boundingBox.origin, vcvtq_f64_f32(vcvt_f32_f64(v14))));
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __100__HPSUISpatialProfileSingeStepEnrollmentController_translateEarBoundingBox_previewLayerBoundingBox___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __100__HPSUISpatialProfileSingeStepEnrollmentController_translateEarBoundingBox_previewLayerBoundingBox___block_invoke_2;
  v2[3] = &unk_1E7970558;
  v2[4] = *(a1 + 32);
  v3 = *(a1 + 40);
  return [MEMORY[0x1E69DD250] animateWithDuration:v2 animations:0.1];
}

uint64_t __100__HPSUISpatialProfileSingeStepEnrollmentController_translateEarBoundingBox_previewLayerBoundingBox___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1088) setBounds:{0.0, 0.0, *(a1 + 40), *(a1 + 44)}];
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);
  v4 = *(*(a1 + 32) + 1088);

  return [v4 setCenter:{v2, v3}];
}

- (void)updateBoundingBoxHiddenStatus
{
  v11 = *MEMORY[0x1E69E9840];
  isHidden = [(CEKSubjectIndicatorView *)self->_earBoundingBoxView isHidden];
  if (self->_currentStep == 7)
  {
    if (isHidden != self->_earBoundingBoxDetected)
    {
      return;
    }

    if (self->_earBoundingBoxDetected)
    {
      [(CEKSubjectIndicatorView *)self->_earBoundingBoxView bounds];
      if (CGRectEqualToRect(v12, *MEMORY[0x1E695F058]))
      {
        return;
      }

      v4 = 0;
      goto LABEL_8;
    }
  }

  else if (isHidden)
  {
    return;
  }

  v4 = 1;
LABEL_8:
  v5 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"Showing";
    if (v4)
    {
      v6 = @"Hidden";
    }

    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&dword_1AC1C3000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Bouding Box Updated : %@", buf, 0xCu);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__HPSUISpatialProfileSingeStepEnrollmentController_updateBoundingBoxHiddenStatus__block_invoke;
  v7[3] = &unk_1E7970530;
  v7[4] = self;
  v8 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

uint64_t __81__HPSUISpatialProfileSingeStepEnrollmentController_updateBoundingBoxHiddenStatus__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __81__HPSUISpatialProfileSingeStepEnrollmentController_updateBoundingBoxHiddenStatus__block_invoke_2;
  v2[3] = &unk_1E7970530;
  v2[4] = *(a1 + 32);
  v3 = *(a1 + 40);
  return [MEMORY[0x1E69DD250] animateWithDuration:v2 animations:0.3];
}

- (void)clearBoundingBox
{
  self->_earBoundingBoxDetectTracker = 0;
  self->_earBoundingBoxDetected = 0;
  [(HPSUISpatialProfileSingeStepEnrollmentController *)self updateBoundingBoxHiddenStatus];
}

- (void)playEarCaptureSoundWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  if (self->_earCaptureSoundStep == 1)
  {
    soundHapticManager = self->_soundHapticManager;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __86__HPSUISpatialProfileSingeStepEnrollmentController_playEarCaptureSoundWithCompletion___block_invoke_2;
    v12[3] = &unk_1E7970208;
    v13 = v5;
    [(HPSUISpatialProfileSingleStepSoundHapticManager *)soundHapticManager triggerSoundHapticForEarCaptureState:1 completion:v12];
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
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __86__HPSUISpatialProfileSingeStepEnrollmentController_playEarCaptureSoundWithCompletion___block_invoke;
    v14[3] = &unk_1E7970208;
    v15 = v5;
    [(HPSUISpatialProfileSingleStepSoundHapticManager *)v6 triggerSoundHapticForEarCaptureState:0 completion:v14];
    v7 = v15;
  }

LABEL_7:
  ++self->_earCaptureSoundStep;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__HPSUISpatialProfileSingeStepEnrollmentController_playEarCaptureSoundWithCompletion___block_invoke_3;
  block[3] = &unk_1E7970258;
  v11 = completionCopy;
  v9 = completionCopy;
  dispatch_group_notify(v5, MEMORY[0x1E69E96A0], block);
}

uint64_t __86__HPSUISpatialProfileSingeStepEnrollmentController_playEarCaptureSoundWithCompletion___block_invoke_3(uint64_t a1)
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
  v3 = objc_alloc_init(MEMORY[0x1E6993898]);
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
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__HPSUISpatialProfileSingeStepEnrollmentController_pulseEarBoundingBox__block_invoke;
  block[3] = &unk_1E7970208;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __71__HPSUISpatialProfileSingeStepEnrollmentController_pulseEarBoundingBox__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1088) setInactive:0];
  [*(*(a1 + 32) + 1088) startScalingWithExpansionWidth:1 duration:10.0 repeatCount:0.1];
  v2 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__HPSUISpatialProfileSingeStepEnrollmentController_pulseEarBoundingBox__block_invoke_2;
  block[3] = &unk_1E7970208;
  block[4] = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

- (void)showBudsInEarPopUp:(id)up
{
  content = [(HPSUISpatialProfileSingeStepEnrollmentController *)self content];
  removeAccessoryFromEar = [content removeAccessoryFromEar];

  v5 = MEMORY[0x1E69DC650];
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_IN_EAR_TEXT" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  v8 = [v5 alertControllerWithTitle:removeAccessoryFromEar message:v7 preferredStyle:1];

  v9 = MEMORY[0x1E69DC648];
  v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"OK" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  v12 = [v9 actionWithTitle:v11 style:0 handler:&__block_literal_global_511];
  [v8 addAction:v12];

  [(HPSUISpatialProfileSingeStepEnrollmentController *)self presentViewController:v8 animated:1 completion:0];
}

- (BOOL)checkAndShowInEarPopup
{
  v25 = *MEMORY[0x1E69E9840];
  [(BluetoothManager *)self->_btManager connectedDevices];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = v23 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    selfCopy = self;
    v6 = *v21;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        if (+[HPSProductUtils isAppleHeadphone:](HPSProductUtils, "isAppleHeadphone:", v8, selfCopy) && ([v8 isTemporaryPaired] & 1) == 0)
        {
          if ([v8 isGenuineAirPods])
          {
            v9 = [BTSDeviceClassic deviceWithDevice:v8];
            if ([v8 inEarDetectEnabled])
            {
              if (v9)
              {
                v16 = 3;
                *buf = 3;
                classicDevice = [v9 classicDevice];
                [classicDevice inEarStatusPrimary:buf secondary:&v16];

                if (!*buf || !v16)
                {
                  [(HPSUISpatialProfileSingeStepEnrollmentController *)selfCopy showBudsInEarPopUp:v9];
                  v12 = 1;
LABEL_27:

                  goto LABEL_28;
                }
              }
            }

            else
            {
              v11 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1AC1C3000, v11, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Please enable the Automatic Ear Detection in Bluetooth Settings", buf, 2u);
              }

              if (v9)
              {
                inEarDetectDisabledPopUpShown = selfCopy->_inEarDetectDisabledPopUpShown;
                if (!inEarDetectDisabledPopUpShown)
                {
                  selfCopy->_inEarDetectDisabledPopUpShown = 1;
                  [(HPSUISpatialProfileSingeStepEnrollmentController *)selfCopy showBudsInEarPopUp:v9];
                }

                v12 = !inEarDetectDisabledPopUpShown;
                goto LABEL_27;
              }
            }
          }

          else
          {
            v9 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              [(HPSUISpatialProfileEnrollmentController *)&v18 getBudsInEarString];
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_28:

  return v12;
}

- (void)showLandscapeAlert
{
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Landscape Mode Detected, not supported, show pop up alert", buf, 2u);
  }

  v4 = MEMORY[0x1E69DC650];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"LANDSCAPE_MODE_ALERT_TITLE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"LANDSCAPE_MODE_ALERT_DETAIL" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  v9 = [v4 alertControllerWithTitle:v6 message:v8 preferredStyle:1];

  v10 = MEMORY[0x1E69DC648];
  v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"OK" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__HPSUISpatialProfileSingeStepEnrollmentController_showLandscapeAlert__block_invoke;
  v14[3] = &unk_1E79704E0;
  v14[4] = self;
  v13 = [v10 actionWithTitle:v12 style:0 handler:v14];
  [v9 addAction:v13];

  [(HPSUISpatialProfileSingeStepEnrollmentController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)showEarPillsDots
{
  pillContainerView = self->_pillContainerView;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__HPSUISpatialProfileSingeStepEnrollmentController_showEarPillsDots__block_invoke;
  v4[3] = &unk_1E7970208;
  v4[4] = self;
  [MEMORY[0x1E69DD250] transitionWithView:pillContainerView duration:5242880 options:v4 animations:0 completion:0.4];
  [(HPSUISpatialProfileEarDotsMovieView *)self->_earDotsMovieView showDots];
}

- (void)hideEarPillsDots
{
  pillContainerView = self->_pillContainerView;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__HPSUISpatialProfileSingeStepEnrollmentController_hideEarPillsDots__block_invoke;
  v4[3] = &unk_1E7970208;
  v4[4] = self;
  [MEMORY[0x1E69DD250] transitionWithView:pillContainerView duration:5242880 options:v4 animations:0 completion:0.4];
  [(HPSUISpatialProfileEarDotsMovieView *)self->_earDotsMovieView hideDots];
}

- (void)prepareSpinner
{
  if (!self->_spinner)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinner = self->_spinner;
    self->_spinner = v3;

    [(UIActivityIndicatorView *)self->_spinner setHidesWhenStopped:1];
    [(UIActivityIndicatorView *)self->_spinner setActivityIndicatorViewStyle:100];
    continueButton = [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView continueButton];
    [continueButton bounds];
    v7 = v6 * 0.5;
    continueButton2 = [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView continueButton];
    [continueButton2 bounds];
    [(UIActivityIndicatorView *)self->_spinner setCenter:v7, v9 * 0.5];

    [(UIActivityIndicatorView *)self->_spinner startAnimating];
    continueButton3 = [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView continueButton];
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
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Start Welcome Spinner", v9, 2u);
  }

  self->_welcomeSpinnerOn = 1;
  continueButton = [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView continueButton];
  titleLabel = [continueButton titleLabel];
  [titleLabel setHidden:1];

  continueButton2 = [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView continueButton];
  [continueButton2 setUserInteractionEnabled:0];

  [(HPSUISpatialProfileSingeStepEnrollmentController *)self prepareSpinner];
  spinner = self->_spinner;
  systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
  [(UIActivityIndicatorView *)spinner setColor:systemWhiteColor];
}

- (void)stopWelcomeSpinner
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_enrollmentReady || ![(BluetoothManager *)self->_btManager available])
  {
    v5 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      enrollmentReady = self->_enrollmentReady;
      available = [(BluetoothManager *)self->_btManager available];
      v11[0] = 67109376;
      v11[1] = enrollmentReady;
      v12 = 1024;
      v13 = available;
      _os_log_impl(&dword_1AC1C3000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: stopWelcomeSpinner failed _enrollmentReady %d [_btManager available] %d", v11, 0xEu);
    }

    goto LABEL_11;
  }

  welcomeSpinnerOn = self->_welcomeSpinnerOn;
  v4 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  v5 = v4;
  if (!welcomeSpinnerOn)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [HPSUISpatialProfileEnrollmentController stopWelcomeSpinner];
    }

LABEL_11:

    return;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11[0]) = 0;
    _os_log_impl(&dword_1AC1C3000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stop Welcome Spinner", v11, 2u);
  }

  self->_welcomeSpinnerOn = 0;
  continueButton = [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView continueButton];
  titleLabel = [continueButton titleLabel];
  [titleLabel setHidden:0];

  continueButton2 = [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView continueButton];
  [continueButton2 setUserInteractionEnabled:1];

  [(HPSUISpatialProfileSingeStepEnrollmentController *)self cleanUpSpinner];
  [(HPSUISpatialProfileSingeStepEnrollmentController *)self continueButtonTapped];
}

- (void)startPostProcessSpinner
{
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Start Post Process Spinner", v14, 2u);
  }

  self->_postProcessSpinnerOn = 1;
  continueButton = [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView continueButton];
  titleLabel = [continueButton titleLabel];
  [titleLabel setHidden:1];

  continueButton2 = [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView continueButton];
  [continueButton2 setUserInteractionEnabled:0];

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  continueButton3 = [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView continueButton];
  [continueButton3 setTintColor:systemBackgroundColor];

  continueButton4 = [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView continueButton];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [continueButton4 setBackgroundColor:clearColor];

  [(HPSUISpatialProfileSingeStepEnrollmentController *)self showContinueButton];
  [(HPSUISpatialProfileSingeStepEnrollmentController *)self prepareSpinner];
  continueButton5 = [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView continueButton];
  [continueButton5 setAlpha:1.0];

  spinner = self->_spinner;
  systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  [(UIActivityIndicatorView *)spinner setColor:systemGrayColor];
}

- (void)stopPostProcessSpinner
{
  postProcessSpinnerOn = self->_postProcessSpinnerOn;
  v4 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  v5 = v4;
  if (postProcessSpinnerOn)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1AC1C3000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stop Post Process Spinner", v11, 2u);
    }

    self->_postProcessSpinnerOn = 0;
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    continueButton = [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView continueButton];
    [continueButton setTintColor:systemBlueColor];

    continueButton2 = [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView continueButton];
    titleLabel = [continueButton2 titleLabel];
    [titleLabel setHidden:0];

    continueButton3 = [(HPSUISpatialProfileSingleStepBottomContainer *)self->_bottomContainerView continueButton];
    [continueButton3 setUserInteractionEnabled:1];

    [(HPSUISpatialProfileSingeStepEnrollmentController *)self cleanUpSpinner];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [HPSUISpatialProfileEnrollmentController stopWelcomeSpinner];
    }
  }
}

- (void)updateFaceTrackingStatus:(CGRect)status
{
  height = status.size.height;
  width = status.size.width;
  y = status.origin.y;
  x = status.origin.x;
  v30 = *MEMORY[0x1E69E9840];
  faceBoundingBoxStatus = self->_faceBoundingBoxStatus;
  v9 = self->_visageFrame.size.height;
  v10 = status.size.width / self->_visageFrame.size.width;
  if (faceBoundingBoxStatus == 1)
  {
    if (v10 >= 0.45)
    {
      return;
    }

    v11 = 5;
  }

  else
  {
    if (faceBoundingBoxStatus != 5 || v10 <= 0.55)
    {
      return;
    }

    v11 = 1;
  }

  self->_faceBoundingBoxStatus = v11;
  v12 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = height / v9;
    v14 = self->_faceBoundingBoxStatus;
    v15[0] = 67110912;
    v15[1] = faceBoundingBoxStatus;
    v16 = 1024;
    v17 = v14;
    v18 = 2048;
    v19 = (v10 * 100.0);
    v20 = 2048;
    v21 = (v13 * 100.0);
    v22 = 2048;
    v23 = width;
    v24 = 2048;
    v25 = height;
    v26 = 2048;
    v27 = x;
    v28 = 2048;
    v29 = y;
    _os_log_impl(&dword_1AC1C3000, v12, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Face Status changed from %d -> %d Status Ratio [ %f %f ] Face BB [ %f %f , %f %f]", v15, 0x4Au);
  }
}

- (void)cancelBlur
{
  [(HPSUISpatialProfileSingleStepPearlEnrollView *)self->_enrollView setPauseBlur:1];
  [(HPSUISpatialProfileSingleStepPearlEnrollView *)self->_enrollView setForceBlur:0];
  enrollView = self->_enrollView;

  [(HPSUISpatialProfileSingleStepPearlEnrollView *)enrollView setCameraBlurAmount:0 useShade:0 duration:0.0 completion:0.5];
}

- (void)forceBlur
{
  [(HPSUISpatialProfileSingleStepPearlEnrollView *)self->_enrollView setPauseBlur:0];
  [(HPSUISpatialProfileSingleStepPearlEnrollView *)self->_enrollView setForceBlur:1];
  enrollView = self->_enrollView;

  [(HPSUISpatialProfileSingleStepPearlEnrollView *)enrollView setCameraBlurAmount:0 useShade:0 duration:15.0 completion:0.5];
}

- (void)sendTipKitSignal
{
  discoverabilitySignal = [MEMORY[0x1E698F350] discoverabilitySignal];
  source = [discoverabilitySignal source];
  v4 = objc_alloc(MEMORY[0x1E698F278]);
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v7 = [v4 initWithIdentifier:@"com.apple.HeadphoneSettings.spatial-profile-enrollment-triggered" bundleID:bundleIdentifier context:0];

  [source sendEvent:v7];
  v8 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1AC1C3000, v8, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Signal Sent to TipKit", v9, 2u);
  }
}

@end
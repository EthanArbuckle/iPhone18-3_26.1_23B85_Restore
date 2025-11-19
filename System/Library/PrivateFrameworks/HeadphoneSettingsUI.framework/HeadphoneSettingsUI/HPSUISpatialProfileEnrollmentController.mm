@interface HPSUISpatialProfileEnrollmentController
- (BOOL)checkAndShowInEarPopup;
- (BOOL)isEarMovingFast;
- (BOOL)isEarOccluded;
- (BOOL)isEarTooClose;
- (BOOL)isEarTooFar;
- (BOOL)isPresentingWrongEar;
- (HPSUISpatialProfileEnrollmentController)init;
- (id)angleArrayToBinaryString:(id)a3;
- (id)getBudsInEarString;
- (void)alertEarDistanceWarning:(int)a3;
- (void)alertEarEnrollWarning;
- (void)alertOcclusionWarning;
- (void)bluetoothDidBecomeAvailable;
- (void)cancelBlur;
- (void)cancelSpatialAudioProfile;
- (void)captureViewTimerDidFire;
- (void)checkVolume;
- (void)cleanUpSpinner;
- (void)clearBoundingBox;
- (void)continueButtonTapped;
- (void)continueEarDistanceWarning;
- (void)continueOcclusionWarning;
- (void)didReceiveCaptureVideo:(id)a3 colorImage:(id)a4 depthImage:(id)a5 faceObject:(id)a6;
- (void)didReceiveStateUpdateForSession:(id)a3 stateInfo:(id)a4;
- (void)earCentralPartCaptured;
- (void)earLeftPartCaptured;
- (void)earRightPartCaptured;
- (void)fillFacePillsByDirection:(int)a3;
- (void)forceBlur;
- (void)getBudsInEarString;
- (void)hideContinueButton;
- (void)hideEarDistanceWarningContinueButton;
- (void)hideEarPillsDots;
- (void)hideOcclusionContinueButton;
- (void)moveToStep:(int)a3;
- (void)nudgeEar;
- (void)pauseEnrollment;
- (void)playEarCaptureSoundWithCompletion:(id)a3;
- (void)prepareSpinner;
- (void)pulseEarBoundingBox;
- (void)resetVolume;
- (void)restartOcclusionWarnCoolDownTimer;
- (void)resumeEnrollment;
- (void)retrieveProfile;
- (void)sendTipKitSignal;
- (void)setupAudioVideo;
- (void)setupEarBoundingBox;
- (void)setupEarTutorialView;
- (void)setupEnrollController;
- (void)setupEnrollViewUI;
- (void)setupWelcomeContentView;
- (void)showBudsInEarPopUp:(id)a3;
- (void)showContinueButton;
- (void)showEarDistanceWarningContinueButton;
- (void)showEarPillsDots;
- (void)showLandscapeAlert;
- (void)showOcclusionContinueButton;
- (void)startCaptureViewTimer;
- (void)startEarDistanceWarnCoolDownTimer;
- (void)startEarEnrollWarningTimer;
- (void)startEarEnrollmentNudgeTimer;
- (void)startEnrollGuidanceTimer;
- (void)startEnrollment;
- (void)startFaceInFrameHandlerTimer;
- (void)startOcclusionWarnCoolDownTimer;
- (void)startPostProcessSpinner;
- (void)startPostProcessTimer;
- (void)startTutorialResumeEnrollTimer;
- (void)startWelcomeSpinner;
- (void)stopCaptureViewTimer;
- (void)stopEarDistanceWarnCoolDownTimer;
- (void)stopEarEnrollmentNudgeTimer;
- (void)stopEnrollGuidanceTimer;
- (void)stopEnrollment;
- (void)stopFaceInFrameHandlerTimer;
- (void)stopOcclusionWarnCoolDownTimer;
- (void)stopPostProcessSpinner;
- (void)stopPostProcessTimer;
- (void)stopTimers;
- (void)stopTutorialResumeEnrollTimer;
- (void)stopWelcomeSpinner;
- (void)syncProfile;
- (void)translateEarBoundingBox:(CGRect)a3 previewLayerBoundingBox:(CGRect)a4;
- (void)triggerEarDistanceWarnCoolDownTimer;
- (void)triggerEarEnrollmentNudgeTimer;
- (void)triggerEnrollGuidanceTimer;
- (void)triggerFaceInFrameHandlerTimeout;
- (void)triggerOcclusionWarnCoolDownTimer;
- (void)triggerPostProcessTimeout;
- (void)triggerstartEarEnrollWarningTimer;
- (void)tutorialResumeEnrollTimerDidFire;
- (void)updateBoundingBoxHiddenStatus;
- (void)updateCurrentTrackingEar:(id)a3 rightEarPoseStatus:(id)a4 earBoundingBox:(CGRect)a5 earStatus:(int)a6;
- (void)updateEarEnrollText;
- (void)updateFaceTrackingStatus:(CGRect)a3;
- (void)userCancelEnrollment;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation HPSUISpatialProfileEnrollmentController

- (HPSUISpatialProfileEnrollmentController)init
{
  if (!self)
  {
    return 0;
  }

  v41.receiver = self;
  v41.super_class = HPSUISpatialProfileEnrollmentController;
  v2 = [(HPSUISpatialProfileEnrollmentController *)&v41 init];
  v3 = [MEMORY[0x1E698F468] sharedInstance];
  v4 = *(v2 + 177);
  *(v2 + 177) = v3;

  v2[1424] = 0;
  v2[1425] = 0;
  v2[1426] = 0;
  v5 = *(v2 + 138);
  *(v2 + 138) = 0;

  v6 = *(v2 + 131);
  *(v2 + 131) = 0;

  v7 = *(v2 + 132);
  *(v2 + 132) = 0;

  v8 = *(v2 + 133);
  *(v2 + 133) = 0;

  v9 = *(v2 + 145);
  *(v2 + 145) = 0;

  v10 = *(v2 + 143);
  *(v2 + 143) = 0;

  *(v2 + 313) = 0;
  *(v2 + 314) = 0;
  v11 = *(v2 + 163);
  *(v2 + 163) = 0;

  v2[1317] = 0;
  v2[1318] = 0;
  v2[1319] = 0;
  v2[1320] = 0;
  v2[1321] = 0;
  v2[1232] = 0;
  v2[1233] = 0;
  *(v2 + 328) = 0;
  v2[1316] = 0;
  *(v2 + 166) = 0;
  v2[1352] = 0;
  v2[1353] = 0;
  v2[1354] = 0;
  v2[1355] = 0;
  v2[1356] = 0;
  v2[1357] = 0;
  v2[1358] = 0;
  *(v2 + 334) = 0;
  v2[1359] = 0;
  v2[1360] = 0;
  v2[1361] = 0;
  v2[1362] = 0;
  v2[1363] = 0;
  v2[1364] = 0;
  v2[1365] = 0;
  v2[1366] = 0;
  *(v2 + 342) = 0;
  v2[1372] = 0;
  v2[1373] = 0;
  v2[1374] = 0;
  v2[1375] = 0;
  v2[1376] = 0;
  v2[1377] = 0;
  v2[1378] = 0;
  v2[1380] = 0;
  v2[1379] = 0;
  *(v2 + 346) = 0;
  v2[1408] = 0;
  *(v2 + 347) = 0;
  v2[1512] = 0;
  v2[1513] = 0;
  v12 = *(v2 + 190);
  *(v2 + 190) = 0;

  v13 = *(v2 + 191);
  *(v2 + 191) = 0;

  v2[1427] = 0;
  v2[1440] = 0;
  v2[1441] = 10;
  *(v2 + 1464) = 0u;
  *(v2 + 1480) = 0u;
  v2[1442] = 0;
  v2[1460] = 0;
  v2[1443] = 0;
  v2[1456] = 0;
  v2[1457] = 0;
  v2[1458] = 0;
  v2[1459] = 0;
  *(v2 + 188) = 0;
  v14 = *(v2 + 187);
  *(v2 + 187) = 0;

  *(v2 + 192) = 0xC059000000000000;
  *(v2 + 193) = 0xC059000000000000;
  *(v2 + 194) = 0xC059000000000000;
  *(v2 + 195) = 0xC059000000000000;
  *(v2 + 197) = 0x3FE0000000000000;
  *(v2 + 198) = 0xC059000000000000;
  *(v2 + 199) = 0xC059000000000000;
  v15 = *(v2 + 200);
  *(v2 + 200) = 0;

  v16 = dispatch_queue_create("com.apple.HeadphoneSettings.stepSerialQueue", 0);
  v17 = *(v2 + 174);
  *(v2 + 174) = v16;

  v18 = dispatch_queue_create("com.apple.HeadphoneSettings.visualDetectionQueue", 0);
  v19 = *(v2 + 175);
  *(v2 + 175) = v18;

  *(v2 + 158) = 0;
  v20 = objc_alloc(MEMORY[0x1E695DEC8]);
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:30.0];
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:25.0];
  v23 = [MEMORY[0x1E696AD98] numberWithDouble:20.0];
  v24 = [MEMORY[0x1E696AD98] numberWithDouble:15.0];
  v25 = [MEMORY[0x1E696AD98] numberWithDouble:10.0];
  v26 = [MEMORY[0x1E696AD98] numberWithDouble:5.0];
  v27 = [v20 initWithObjects:{v21, v22, v23, v24, v25, v26, 0}];
  v28 = *(v2 + 201);
  *(v2 + 201) = v27;

  v29 = objc_alloc(MEMORY[0x1E695DEC8]);
  v30 = [MEMORY[0x1E696AD98] numberWithDouble:0.5];
  v31 = [MEMORY[0x1E696AD98] numberWithDouble:1.0];
  v32 = [MEMORY[0x1E696AD98] numberWithDouble:1.5];
  v33 = [MEMORY[0x1E696AD98] numberWithDouble:2.0];
  v34 = [MEMORY[0x1E696AD98] numberWithDouble:2.5];
  v35 = [MEMORY[0x1E696AD98] numberWithDouble:3.0];
  v36 = [v29 initWithObjects:{v30, v31, v32, v33, v34, v35, 0}];
  v37 = *(v2 + 202);
  *(v2 + 202) = v36;

  v38 = [MEMORY[0x1E696AD88] defaultCenter];
  [v38 addObserver:v2 selector:sel_cancelSpatialAudioProfile name:*MEMORY[0x1E69DDAC8] object:0];

  v39 = [MEMORY[0x1E696AD88] defaultCenter];
  [v39 addObserver:v2 selector:sel_bluetoothDidBecomeAvailable name:*MEMORY[0x1E698F448] object:0];

  return v2;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = HPSUISpatialProfileEnrollmentController;
  [(HPSUISpatialProfileEnrollmentController *)&v9 viewDidLoad];
  v3 = [(HPSUISpatialProfileEnrollmentController *)self view];
  [v3 size];
  v5 = v4;
  v6 = [(HPSUISpatialProfileEnrollmentController *)self view];
  [v6 size];
  v8 = v7;

  if (v5 <= v8)
  {
    [(HPSUISpatialProfileEnrollmentController *)self setupEnrollController];
    [(HPSUISpatialProfileEnrollmentController *)self setupWelcomeContentView];
    [(HPSUISpatialProfileEnrollmentController *)self setupAudioVideo];
    [(HPSUISpatialProfileEnrollmentController *)self setupEarTutorialView];
    [(HPSUISpatialProfileEnrollmentController *)self setupEarBoundingBox];
    [(HPSUISpatialProfileEnrollmentController *)self moveToStep:0];
  }

  else
  {
    [(HPSUISpatialProfileEnrollmentController *)self showLandscapeAlert];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = HPSUISpatialProfileEnrollmentController;
  [(HPSUISpatialProfileEnrollmentController *)&v3 viewDidAppear:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1AC1C3000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Enrollment Controller viewDidDisappear", v5, 2u);
  }

  [(HPSUISpatialProfileEnrollmentController *)self cancelSpatialAudioProfile];
}

- (void)setupEnrollController
{
  v235[47] = *MEMORY[0x1E69E9840];
  if (!self->_enrollmentSession)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69A2A88]);
    enrollmentSession = self->_enrollmentSession;
    self->_enrollmentSession = v3;

    [(HRTFEnrollmentSession *)self->_enrollmentSession setDelegate:self];
  }

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_userCancelEnrollment];
  v6 = [(HPSUISpatialProfileEnrollmentController *)self navigationItem];
  v229 = v5;
  [v6 setLeftBarButtonItem:v5];

  v7 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v8 = [(HPSUISpatialProfileEnrollmentController *)self view];
  [v8 setBackgroundColor:v7];

  v9 = objc_alloc(MEMORY[0x1E69DD250]);
  v10 = *MEMORY[0x1E695F058];
  v11 = *(MEMORY[0x1E695F058] + 8);
  v12 = *(MEMORY[0x1E695F058] + 16);
  v13 = *(MEMORY[0x1E695F058] + 24);
  v14 = [v9 initWithFrame:{*MEMORY[0x1E695F058], v11, v12, v13}];
  enrollContentView = self->_enrollContentView;
  self->_enrollContentView = v14;

  [(UIView *)self->_enrollContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v10, v11, v12, v13}];
  scrollContentView = self->_scrollContentView;
  self->_scrollContentView = v16;

  [(UIView *)self->_scrollContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [objc_alloc(MEMORY[0x1E69DCEF8]) initWithFrame:{v10, v11, v12, v13}];
  scrollView = self->_scrollView;
  self->_scrollView = v18;

  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = objc_alloc_init(MEMORY[0x1E69DD250]);
  scrollInnerContentView = self->_scrollInnerContentView;
  self->_scrollInnerContentView = v20;

  [(UIView *)self->_scrollInnerContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  scrollInnerStackView = self->_scrollInnerStackView;
  self->_scrollInnerStackView = v22;

  [(UIStackView *)self->_scrollInnerStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_scrollInnerStackView setAxis:1];
  [(UIStackView *)self->_scrollInnerStackView setAlignment:3];
  [(UIStackView *)self->_scrollInnerStackView setDistribution:3];
  v24 = objc_alloc(MEMORY[0x1E69B7D28]);
  v25 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v26 = [v25 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  v27 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v28 = [v27 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_DETAIL" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  v29 = [v24 initWithTitle:v26 detailText:v28 icon:0];
  infoView = self->_infoView;
  self->_infoView = v29;

  [(OBHeaderView *)self->_infoView setTranslatesAutoresizingMaskIntoConstraints:0];
  v31 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  learnMoreView = self->_learnMoreView;
  self->_learnMoreView = v31;

  [(UILabel *)self->_learnMoreView setTranslatesAutoresizingMaskIntoConstraints:0];
  v33 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v34 = [v33 localizedStringForKey:@"WELCOME_DETAIL" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [(UILabel *)self->_learnMoreView setText:v34];

  [(UILabel *)self->_learnMoreView setLineBreakMode:0];
  [(UILabel *)self->_learnMoreView setNumberOfLines:0];
  v35 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [(UILabel *)self->_learnMoreView setFont:v35];

  [(UILabel *)self->_learnMoreView setAdjustsFontForContentSizeCategory:1];
  v36 = [MEMORY[0x1E69DC888] systemGrayColor];
  [(UILabel *)self->_learnMoreView setTextColor:v36];

  [(UILabel *)self->_learnMoreView setTextAlignment:1];
  v37 = [MEMORY[0x1E69B7D00] boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = v37;

  v39 = self->_continueButton;
  v40 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v41 = [v40 localizedStringForKey:@"CONTINUE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [(OBTrayButton *)v39 setTitle:v41 forState:0];

  [(OBTrayButton *)self->_continueButton addTarget:self action:sel_continueButtonTapped forControlEvents:64];
  v42 = [MEMORY[0x1E69B7D00] boldButton];
  occlusionContinueButton = self->_occlusionContinueButton;
  self->_occlusionContinueButton = v42;

  v44 = self->_occlusionContinueButton;
  v45 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v46 = [v45 localizedStringForKey:@"CONTINUE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [(OBTrayButton *)v44 setTitle:v46 forState:0];

  [(OBTrayButton *)self->_occlusionContinueButton addTarget:self action:sel_continueOcclusionWarning forControlEvents:64];
  v47 = [MEMORY[0x1E69B7D00] boldButton];
  earDistanceWarnContinueButton = self->_earDistanceWarnContinueButton;
  self->_earDistanceWarnContinueButton = v47;

  v49 = self->_earDistanceWarnContinueButton;
  v50 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v51 = [v50 localizedStringForKey:@"CONTINUE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [(OBTrayButton *)v49 setTitle:v51 forState:0];

  [(OBTrayButton *)self->_earDistanceWarnContinueButton addTarget:self action:sel_continueEarDistanceWarning forControlEvents:64];
  v52 = objc_alloc(MEMORY[0x1E69DD298]);
  v53 = [MEMORY[0x1E69DC730] effectWithStyle:6];
  v54 = [v52 initWithEffect:v53];
  buttonTrayEffectView = self->_buttonTrayEffectView;
  self->_buttonTrayEffectView = v54;

  [(UIVisualEffectView *)self->_buttonTrayEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
  v56 = objc_alloc_init(MEMORY[0x1E69DD250]);
  spacerViewFirst = self->_spacerViewFirst;
  self->_spacerViewFirst = v56;

  [(UIView *)self->_spacerViewFirst setTranslatesAutoresizingMaskIntoConstraints:0];
  v58 = objc_alloc_init(MEMORY[0x1E69DD250]);
  spacerViewSecond = self->_spacerViewSecond;
  self->_spacerViewSecond = v58;

  [(UIView *)self->_spacerViewSecond setTranslatesAutoresizingMaskIntoConstraints:0];
  if (self->_debugMode)
  {
    v60 = [(UIView *)self->_enrollContentView layer];
    [v60 setBorderWidth:1.0];

    v61 = [MEMORY[0x1E69DC888] systemRedColor];
    v62 = [v61 CGColor];
    v63 = [(UIView *)self->_enrollContentView layer];
    [v63 setBorderColor:v62];

    v64 = [(UIView *)self->_scrollContentView layer];
    [v64 setBorderWidth:1.0];

    v65 = [MEMORY[0x1E69DC888] systemBlueColor];
    v66 = [v65 CGColor];
    v67 = [(UIView *)self->_scrollContentView layer];
    [v67 setBorderColor:v66];

    v68 = [(UIScrollView *)self->_scrollView layer];
    [v68 setBorderWidth:1.0];

    v69 = [MEMORY[0x1E69DC888] systemYellowColor];
    v70 = [v69 CGColor];
    v71 = [(UIScrollView *)self->_scrollView layer];
    [v71 setBorderColor:v70];

    v72 = [(OBHeaderView *)self->_infoView layer];
    [v72 setBorderWidth:2.0];

    v73 = [MEMORY[0x1E69DC888] systemGreenColor];
    v74 = [v73 CGColor];
    v75 = [(OBHeaderView *)self->_infoView layer];
    [v75 setBorderColor:v74];

    v76 = [(UIVisualEffectView *)self->_buttonTrayEffectView layer];
    [v76 setBorderWidth:2.0];

    v77 = [MEMORY[0x1E69DC888] systemGrayColor];
    v78 = [v77 CGColor];
    v79 = [(UIVisualEffectView *)self->_buttonTrayEffectView layer];
    [v79 setBorderColor:v78];
  }

  v80 = [(HPSUISpatialProfileEnrollmentController *)self view];
  [v80 addSubview:self->_enrollContentView];

  v81 = [(HPSUISpatialProfileEnrollmentController *)self view];
  [v81 addSubview:self->_scrollContentView];

  [(UIView *)self->_scrollContentView addSubview:self->_scrollView];
  [(UIView *)self->_scrollContentView addSubview:self->_buttonTrayEffectView];
  [(UIView *)self->_scrollContentView addSubview:self->_continueButton];
  [(UIView *)self->_scrollContentView addSubview:self->_occlusionContinueButton];
  [(UIView *)self->_scrollContentView addSubview:self->_earDistanceWarnContinueButton];
  [(UIScrollView *)self->_scrollView addSubview:self->_scrollInnerContentView];
  [(UIView *)self->_scrollInnerContentView addSubview:self->_scrollInnerStackView];
  [(UIStackView *)self->_scrollInnerStackView addArrangedSubview:self->_infoView];
  [(UIStackView *)self->_scrollInnerStackView addArrangedSubview:self->_spacerViewFirst];
  [(UIStackView *)self->_scrollInnerStackView addArrangedSubview:self->_learnMoreView];
  [(UIStackView *)self->_scrollInnerStackView addArrangedSubview:self->_spacerViewSecond];
  [(HPSUISpatialProfileEnrollmentController *)self hideOcclusionContinueButton];
  [(HPSUISpatialProfileEnrollmentController *)self hideEarDistanceWarningContinueButton];
  v169 = MEMORY[0x1E696ACD8];
  v227 = [(UIView *)self->_enrollContentView topAnchor];
  v228 = [(HPSUISpatialProfileEnrollmentController *)self view];
  v226 = [v228 safeAreaLayoutGuide];
  v225 = [v226 topAnchor];
  v224 = [v227 constraintEqualToAnchor:v225];
  v235[0] = v224;
  v222 = [(UIView *)self->_enrollContentView heightAnchor];
  v223 = [(HPSUISpatialProfileEnrollmentController *)self view];
  [v223 frame];
  v221 = [v222 constraintEqualToConstant:v82];
  v235[1] = v221;
  v219 = [(UIView *)self->_enrollContentView leadingAnchor];
  v220 = [(HPSUISpatialProfileEnrollmentController *)self view];
  v218 = [v220 leadingAnchor];
  v217 = [v219 constraintEqualToAnchor:v218];
  v235[2] = v217;
  v215 = [(UIView *)self->_enrollContentView trailingAnchor];
  v216 = [(HPSUISpatialProfileEnrollmentController *)self view];
  v214 = [v216 trailingAnchor];
  v213 = [v215 constraintEqualToAnchor:v214];
  v235[3] = v213;
  v212 = [(UIView *)self->_scrollContentView topAnchor];
  v230 = [(UIView *)self->_enrollContentView bottomAnchor];
  v211 = [v212 constraintEqualToAnchor:v230 constant:24.0];
  v235[4] = v211;
  v209 = [(UIView *)self->_scrollContentView leadingAnchor];
  v210 = [(HPSUISpatialProfileEnrollmentController *)self view];
  v208 = [v210 leadingAnchor];
  v207 = [v209 constraintEqualToAnchor:v208 constant:24.0];
  v235[5] = v207;
  v205 = [(UIView *)self->_scrollContentView trailingAnchor];
  v206 = [(HPSUISpatialProfileEnrollmentController *)self view];
  v204 = [v206 trailingAnchor];
  v203 = [v205 constraintEqualToAnchor:v204 constant:-24.0];
  v235[6] = v203;
  v201 = [(UIView *)self->_scrollContentView bottomAnchor];
  v202 = [(HPSUISpatialProfileEnrollmentController *)self view];
  v200 = [v202 safeAreaLayoutGuide];
  v199 = [v200 bottomAnchor];
  v198 = [v201 constraintEqualToAnchor:v199];
  v235[7] = v198;
  v197 = [(OBTrayButton *)self->_continueButton leadingAnchor];
  v196 = [(UIView *)self->_scrollContentView leadingAnchor];
  v195 = [v197 constraintEqualToAnchor:v196];
  v235[8] = v195;
  v194 = [(OBTrayButton *)self->_continueButton trailingAnchor];
  v193 = [(UIView *)self->_scrollContentView trailingAnchor];
  v192 = [v194 constraintEqualToAnchor:v193];
  v235[9] = v192;
  v191 = [(OBTrayButton *)self->_continueButton bottomAnchor];
  v190 = [(UIView *)self->_scrollContentView bottomAnchor];
  v189 = [v191 constraintEqualToAnchor:v190];
  v235[10] = v189;
  v188 = [(OBTrayButton *)self->_occlusionContinueButton leadingAnchor];
  v187 = [(UIView *)self->_scrollContentView leadingAnchor];
  v186 = [v188 constraintEqualToAnchor:v187];
  v235[11] = v186;
  v185 = [(OBTrayButton *)self->_occlusionContinueButton trailingAnchor];
  v184 = [(UIView *)self->_scrollContentView trailingAnchor];
  v183 = [v185 constraintEqualToAnchor:v184];
  v235[12] = v183;
  v182 = [(OBTrayButton *)self->_occlusionContinueButton bottomAnchor];
  v181 = [(UIView *)self->_scrollContentView bottomAnchor];
  v180 = [v182 constraintEqualToAnchor:v181];
  v235[13] = v180;
  v178 = [(OBTrayButton *)self->_earDistanceWarnContinueButton leadingAnchor];
  v177 = [(UIView *)self->_scrollContentView leadingAnchor];
  v176 = [v178 constraintEqualToAnchor:v177];
  v235[14] = v176;
  v175 = [(OBTrayButton *)self->_earDistanceWarnContinueButton trailingAnchor];
  v174 = [(UIView *)self->_scrollContentView trailingAnchor];
  v173 = [v175 constraintEqualToAnchor:v174];
  v235[15] = v173;
  v171 = [(OBTrayButton *)self->_earDistanceWarnContinueButton bottomAnchor];
  v170 = [(UIView *)self->_scrollContentView bottomAnchor];
  v168 = [v171 constraintEqualToAnchor:v170];
  v235[16] = v168;
  v166 = [(UIVisualEffectView *)self->_buttonTrayEffectView leadingAnchor];
  v167 = [(HPSUISpatialProfileEnrollmentController *)self view];
  v165 = [v167 leadingAnchor];
  v164 = [v166 constraintEqualToAnchor:v165];
  v235[17] = v164;
  v162 = [(UIVisualEffectView *)self->_buttonTrayEffectView trailingAnchor];
  v163 = [(HPSUISpatialProfileEnrollmentController *)self view];
  v161 = [v163 trailingAnchor];
  v160 = [v162 constraintEqualToAnchor:v161];
  v235[18] = v160;
  v159 = [(UIVisualEffectView *)self->_buttonTrayEffectView topAnchor];
  v179 = [(OBTrayButton *)self->_continueButton topAnchor];
  v158 = [v159 constraintEqualToAnchor:v179 constant:-24.0];
  v235[19] = v158;
  v157 = [(UIVisualEffectView *)self->_buttonTrayEffectView topAnchor];
  v156 = [(OBTrayButton *)self->_occlusionContinueButton topAnchor];
  v155 = [v157 constraintEqualToAnchor:v156 constant:-24.0];
  v235[20] = v155;
  v154 = [(UIVisualEffectView *)self->_buttonTrayEffectView topAnchor];
  v172 = [(OBTrayButton *)self->_earDistanceWarnContinueButton topAnchor];
  v153 = [v154 constraintEqualToAnchor:v172 constant:-24.0];
  v235[21] = v153;
  v151 = [(UIVisualEffectView *)self->_buttonTrayEffectView bottomAnchor];
  v152 = [(HPSUISpatialProfileEnrollmentController *)self view];
  v150 = [v152 bottomAnchor];
  v149 = [v151 constraintEqualToAnchor:v150];
  v235[22] = v149;
  v148 = [(UIScrollView *)self->_scrollView topAnchor];
  v147 = [(UIView *)self->_scrollContentView topAnchor];
  v146 = [v148 constraintEqualToAnchor:v147];
  v235[23] = v146;
  v145 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v144 = [(UIVisualEffectView *)self->_buttonTrayEffectView topAnchor];
  v143 = [v145 constraintEqualToAnchor:v144 constant:24.0];
  v235[24] = v143;
  v142 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v141 = [(UIView *)self->_scrollContentView leadingAnchor];
  v140 = [v142 constraintEqualToAnchor:v141];
  v235[25] = v140;
  v139 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v138 = [(UIView *)self->_scrollContentView trailingAnchor];
  v137 = [v139 constraintEqualToAnchor:v138];
  v235[26] = v137;
  v136 = [(UIView *)self->_scrollInnerContentView topAnchor];
  v135 = [(UIScrollView *)self->_scrollView topAnchor];
  v134 = [v136 constraintEqualToAnchor:v135];
  v235[27] = v134;
  v133 = [(UIView *)self->_scrollInnerContentView bottomAnchor];
  v132 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v131 = [v133 constraintEqualToAnchor:v132];
  v235[28] = v131;
  v130 = [(UIView *)self->_scrollInnerContentView leadingAnchor];
  v129 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v128 = [v130 constraintEqualToAnchor:v129];
  v235[29] = v128;
  v127 = [(UIView *)self->_scrollInnerContentView trailingAnchor];
  v126 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v125 = [v127 constraintEqualToAnchor:v126];
  v235[30] = v125;
  v232 = [(UIView *)self->_scrollInnerContentView widthAnchor];
  v124 = [(UIScrollView *)self->_scrollView widthAnchor];
  v123 = [v232 constraintEqualToAnchor:v124];
  v235[31] = v123;
  v122 = [(UIStackView *)self->_scrollInnerStackView topAnchor];
  v121 = [(UIScrollView *)self->_scrollView topAnchor];
  v120 = [v122 constraintEqualToAnchor:v121];
  v235[32] = v120;
  v119 = [(UIStackView *)self->_scrollInnerStackView bottomAnchor];
  v118 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v117 = [v119 constraintEqualToAnchor:v118];
  v235[33] = v117;
  v116 = [(UIStackView *)self->_scrollInnerStackView leadingAnchor];
  v115 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v114 = [v116 constraintEqualToAnchor:v115];
  v235[34] = v114;
  v113 = [(UIStackView *)self->_scrollInnerStackView trailingAnchor];
  v112 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v111 = [v113 constraintEqualToAnchor:v112];
  v235[35] = v111;
  v110 = [(OBHeaderView *)self->_infoView leadingAnchor];
  v109 = [(UIStackView *)self->_scrollInnerStackView leadingAnchor];
  v108 = [v110 constraintEqualToAnchor:v109];
  v235[36] = v108;
  v234 = [(OBHeaderView *)self->_infoView trailingAnchor];
  v107 = [(UIStackView *)self->_scrollInnerStackView trailingAnchor];
  v106 = [v234 constraintEqualToAnchor:v107];
  v235[37] = v106;
  v105 = [(UILabel *)self->_learnMoreView leadingAnchor];
  v104 = [(UIStackView *)self->_scrollInnerStackView leadingAnchor];
  v103 = [v105 constraintEqualToAnchor:v104];
  v235[38] = v103;
  v102 = [(UILabel *)self->_learnMoreView trailingAnchor];
  v101 = [(UIStackView *)self->_scrollInnerStackView trailingAnchor];
  v100 = [v102 constraintEqualToAnchor:v101];
  v235[39] = v100;
  v233 = [(UILabel *)self->_learnMoreView heightAnchor];
  v99 = [v233 constraintGreaterThanOrEqualToConstant:50.0];
  v235[40] = v99;
  v98 = [(UIView *)self->_spacerViewFirst leadingAnchor];
  v97 = [(UIStackView *)self->_scrollInnerStackView leadingAnchor];
  v96 = [v98 constraintEqualToAnchor:v97];
  v235[41] = v96;
  v95 = [(UIView *)self->_spacerViewFirst trailingAnchor];
  v94 = [(UIStackView *)self->_scrollInnerStackView trailingAnchor];
  v93 = [v95 constraintEqualToAnchor:v94];
  v235[42] = v93;
  v231 = [(UIView *)self->_spacerViewFirst heightAnchor];
  v83 = [v231 constraintEqualToConstant:24.0];
  v235[43] = v83;
  v84 = [(UIView *)self->_spacerViewSecond leadingAnchor];
  v85 = [(UIStackView *)self->_scrollInnerStackView leadingAnchor];
  v86 = [v84 constraintEqualToAnchor:v85];
  v235[44] = v86;
  v87 = [(UIView *)self->_spacerViewSecond trailingAnchor];
  v88 = [(UIStackView *)self->_scrollInnerStackView trailingAnchor];
  v89 = [v87 constraintEqualToAnchor:v88];
  v235[45] = v89;
  v90 = [(UIView *)self->_spacerViewSecond heightAnchor];
  v91 = [v90 constraintEqualToConstant:24.0];
  v235[46] = v91;
  v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:v235 count:47];
  [v169 activateConstraints:v92];
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
  v32 = [(UIView *)self->_welcomeContentView leadingAnchor];
  v31 = [(UIView *)self->_enrollContentView leadingAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v34[0] = v30;
  v29 = [(UIView *)self->_welcomeContentView trailingAnchor];
  v28 = [(UIView *)self->_enrollContentView trailingAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v34[1] = v27;
  v26 = [(UIView *)self->_welcomeContentView topAnchor];
  v25 = [(UIView *)self->_enrollContentView topAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v34[2] = v24;
  v22 = [(UIView *)self->_welcomeContentView bottomAnchor];
  v21 = [(UIView *)self->_enrollContentView bottomAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v34[3] = v20;
  v19 = [(UIImageView *)self->_welcomeImageView widthAnchor];
  v9 = [v19 constraintEqualToConstant:240.0];
  v34[4] = v9;
  v10 = [(UIImageView *)self->_welcomeImageView heightAnchor];
  v11 = [v10 constraintEqualToConstant:240.0];
  v34[5] = v11;
  v12 = [(UIImageView *)self->_welcomeImageView centerXAnchor];
  v13 = [(UIView *)self->_welcomeContentView centerXAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v34[6] = v14;
  v15 = [(UIImageView *)self->_welcomeImageView centerYAnchor];
  v16 = [(UIView *)self->_welcomeContentView centerYAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v34[7] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:8];
  [v23 activateConstraints:v18];
}

- (void)setupAudioVideo
{
  v3 = objc_alloc_init(HPSUISpatialProfileSoundHapticManager);
  soundHapticManager = self->_soundHapticManager;
  self->_soundHapticManager = v3;

  [(HPSUISpatialProfileSoundHapticManager *)self->_soundHapticManager start];
  v5 = objc_alloc_init(HPSUISpatialProfileVideoCaptureSession);
  videoCaptureSession = self->videoCaptureSession;
  self->videoCaptureSession = v5;

  [(HPSUISpatialProfileEnrollmentController *)self checkVolume];
}

- (void)checkVolume
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  p_initialVolume = &self->_initialVolume;
  v5 = [v3 getVolume:&self->_initialVolume forCategory:@"Audio/Video"];

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

      v10 = [MEMORY[0x1E69AED10] sharedAVSystemController];
      LODWORD(v11) = 0.5;
      [v10 setVolumeTo:@"Audio/Video" forCategory:v11];

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

    v5 = [MEMORY[0x1E69AED10] sharedAVSystemController];
    *&v6 = self->_initialVolume;
    [v5 setVolumeTo:@"Audio/Video" forCategory:v6];
  }
}

- (void)setupEnrollViewUI
{
  v51[12] = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Setting up Enroll View UI", buf, 2u);
  }

  [(HPSUISpatialProfileUIPearlEnrollView *)self->_enrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BKUIPearlEnrollView *)self->_enrollView setDelegate:self];
  [(BKUIPearlEnrollView *)self->_enrollView preEnrollActivate];
  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(BKUIPearlEnrollView *)self->_enrollView setBackgroundColor:v4];

  v5 = objc_alloc_init(HPSUISpatialProfileEarPillContainerView);
  earPillContainer = self->_earPillContainer;
  self->_earPillContainer = v5;

  [(HPSUISpatialProfileEarPillContainerView *)self->_earPillContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HPSUISpatialProfileEarPillContainerView *)self->_earPillContainer setAlpha:0.0];
  v7 = [(HPSUISpatialProfileEnrollmentController *)self view];
  [v7 frame];
  v9 = v8 / 390.0;

  v10 = v9 < 1.0;
  if (v9 >= 1.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 10.0;
  }

  if (v10)
  {
    v12 = 85.0;
  }

  else
  {
    v12 = 100.0;
  }

  v13 = [[HPSUISpatialProfileEarDotsMovieView alloc] initWithFrame:0.0, 0.0, 345.0, v12];
  earDotsMovieView = self->_earDotsMovieView;
  self->_earDotsMovieView = v13;

  [(HPSUISpatialProfileEarDotsMovieView *)self->_earDotsMovieView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HPSUISpatialProfileEarDotsMovieView *)self->_earDotsMovieView setAlpha:0.0];
  [(UIView *)self->_enrollContentView addSubview:self->_enrollView];
  [(UIView *)self->_enrollContentView addSubview:self->_earPillContainer];
  [(UIView *)self->_enrollContentView addSubview:self->_earDotsMovieView];
  v37 = MEMORY[0x1E696ACD8];
  v49 = [(HPSUISpatialProfileUIPearlEnrollView *)self->_enrollView leadingAnchor];
  v48 = [(UIView *)self->_enrollContentView leadingAnchor];
  v47 = [v49 constraintEqualToAnchor:v48];
  v51[0] = v47;
  v46 = [(HPSUISpatialProfileUIPearlEnrollView *)self->_enrollView trailingAnchor];
  v45 = [(UIView *)self->_enrollContentView trailingAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v51[1] = v44;
  v43 = [(HPSUISpatialProfileUIPearlEnrollView *)self->_enrollView topAnchor];
  v42 = [(UIView *)self->_enrollContentView topAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v51[2] = v41;
  v40 = [(HPSUISpatialProfileUIPearlEnrollView *)self->_enrollView bottomAnchor];
  v39 = [(UIView *)self->_enrollContentView bottomAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v51[3] = v38;
  v36 = [(HPSUISpatialProfileEarPillContainerView *)self->_earPillContainer widthAnchor];
  v35 = [v36 constraintEqualToConstant:172.5];
  v51[4] = v35;
  v34 = [(HPSUISpatialProfileEarPillContainerView *)self->_earPillContainer heightAnchor];
  v33 = [v34 constraintEqualToConstant:25.0];
  v51[5] = v33;
  v32 = [(HPSUISpatialProfileEarPillContainerView *)self->_earPillContainer centerXAnchor];
  v31 = [(UIView *)self->_enrollContentView centerXAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v51[6] = v30;
  v29 = [(HPSUISpatialProfileEarPillContainerView *)self->_earPillContainer bottomAnchor];
  v28 = [(UIView *)self->_enrollContentView bottomAnchor];
  v27 = [v29 constraintEqualToAnchor:v28 constant:v11];
  v51[7] = v27;
  v26 = [(HPSUISpatialProfileEarDotsMovieView *)self->_earDotsMovieView widthAnchor];
  v25 = [v26 constraintEqualToConstant:345.0];
  v51[8] = v25;
  v24 = [(HPSUISpatialProfileEarDotsMovieView *)self->_earDotsMovieView heightAnchor];
  v15 = [v24 constraintEqualToConstant:v12];
  v51[9] = v15;
  v16 = [(HPSUISpatialProfileEarDotsMovieView *)self->_earDotsMovieView centerXAnchor];
  v17 = [(UIView *)self->_enrollContentView centerXAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  v51[10] = v18;
  v19 = [(HPSUISpatialProfileEarDotsMovieView *)self->_earDotsMovieView bottomAnchor];
  v20 = [(UIView *)self->_enrollContentView bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  v51[11] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:12];
  [v37 activateConstraints:v22];

  [(BKUIPearlEnrollView *)self->_enrollView setState:0 completion:&__block_literal_global_1];
  if (!self->_currentStep)
  {
    [(HPSUISpatialProfileUIPearlEnrollView *)self->_enrollView setHidden:1];
  }

  v23 = [(HPSUISpatialProfileEnrollmentController *)self view];
  [v23 setNeedsLayout];
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
  v31 = [(UIView *)self->_tutorialContentView leadingAnchor];
  v30 = [(UIView *)self->_enrollContentView leadingAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v33[0] = v29;
  v28 = [(UIView *)self->_tutorialContentView trailingAnchor];
  v27 = [(UIView *)self->_enrollContentView trailingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v33[1] = v26;
  v25 = [(UIView *)self->_tutorialContentView topAnchor];
  v24 = [(UIView *)self->_enrollContentView topAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v33[2] = v23;
  v21 = [(UIView *)self->_tutorialContentView bottomAnchor];
  v20 = [(UIView *)self->_enrollContentView bottomAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v33[3] = v19;
  v18 = [(HPSUISpatialProfileEarTutorialView *)self->_earTutorialView widthAnchor];
  v17 = [v18 constraintEqualToConstant:240.0];
  v33[4] = v17;
  v16 = [(HPSUISpatialProfileEarTutorialView *)self->_earTutorialView heightAnchor];
  v8 = [v16 constraintEqualToConstant:106.666664];
  v33[5] = v8;
  v9 = [(HPSUISpatialProfileEarTutorialView *)self->_earTutorialView centerXAnchor];
  v10 = [(UIView *)self->_tutorialContentView centerXAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v33[6] = v11;
  v12 = [(HPSUISpatialProfileEarTutorialView *)self->_earTutorialView centerYAnchor];
  v13 = [(UIView *)self->_tutorialContentView centerYAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v33[7] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:8];
  [v22 activateConstraints:v15];

  [(UIView *)self->_tutorialContentView setHidden:1];
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

- (void)startEnrollment
{
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
      *v6 = 0;
      _os_log_impl(&dword_1AC1C3000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Starting Enrollment", v6, 2u);
    }

    self->_enrollmentStarted = 1;
    [(HRTFEnrollmentSession *)self->_enrollmentSession startSession:1 then:&__block_literal_global_377];
  }
}

void __58__HPSUISpatialProfileEnrollmentController_startEnrollment__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    __58__HPSUISpatialProfileEnrollmentController_startEnrollment__block_invoke_cold_1();
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
    [(HRTFEnrollmentSession *)self->_enrollmentSession stopSession:&__block_literal_global_381];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [HPSUISpatialProfileEnrollmentController stopEnrollment];
    }
  }
}

void __57__HPSUISpatialProfileEnrollmentController_stopEnrollment__block_invoke()
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

- (void)moveToStep:(int)a3
{
  stepSerialQueue = self->_stepSerialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke;
  v4[3] = &unk_1E7970468;
  v4[4] = self;
  v5 = a3;
  dispatch_async(stepSerialQueue, v4);
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke(uint64_t a1)
{
  v2 = dispatch_group_create();
  v3 = dispatch_group_create();
  NSLog(&cfstr_SpatialProfile_0.isa);
  dispatch_group_enter(v2);
  objc_initWeak(&location, *(a1 + 32));
  *(*(a1 + 32) + 1256) = *(*(a1 + 32) + 1252);
  *(*(a1 + 32) + 1252) = *(a1 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_2;
  block[3] = &unk_1E7970208;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v4 = *(a1 + 32);
  switch(*(v4 + 1252))
  {
    case 0:
      v5 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC1C3000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> Welcome", buf, 2u);
      }

      v147[0] = MEMORY[0x1E69E9820];
      v147[1] = 3221225472;
      v147[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_385;
      v147[3] = &unk_1E79703C8;
      v147[4] = *(a1 + 32);
      v148 = v2;
      v6 = MEMORY[0x1E69E96A0];
      dispatch_async(MEMORY[0x1E69E96A0], v147);

      v7 = v148;
      goto LABEL_61;
    case 1:
      v25 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC1C3000, v25, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontView", buf, 2u);
      }

      v26 = *(a1 + 32);
      if (!*(v26 + 1296))
      {
        v27 = objc_alloc_init(HPSUISpatialProfileAnalytics);
        v28 = *(a1 + 32);
        v29 = *(v28 + 1296);
        *(v28 + 1296) = v27;

        v26 = *(a1 + 32);
      }

      v144[0] = MEMORY[0x1E69E9820];
      v144[1] = 3221225472;
      v144[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_388;
      v144[3] = &unk_1E79703F0;
      v144[4] = v26;
      v145 = v3;
      v146 = v2;
      v30 = MEMORY[0x1E69E96A0];
      dispatch_async(MEMORY[0x1E69E96A0], v144);

      v7 = v145;
      goto LABEL_61;
    case 2:
      v43 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC1C3000, v43, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontViewCapturePositionFace", buf, 2u);
      }

      [*(*(a1 + 32) + 1296) initFrameRateDetection];
      [*(*(a1 + 32) + 1296) updateFaceEnrollStart];
      v140[0] = MEMORY[0x1E69E9820];
      v140[1] = 3221225472;
      v140[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_399;
      v140[3] = &unk_1E79703F0;
      v44 = v3;
      v45 = *(a1 + 32);
      v141 = v44;
      v142 = v45;
      v143 = v2;
      v46 = MEMORY[0x1E69E96A0];
      dispatch_async(MEMORY[0x1E69E96A0], v140);

      v7 = v141;
      goto LABEL_61;
    case 3:
      v39 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC1C3000, v39, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontViewCaptureMoveHead", buf, 2u);
      }

      v136[0] = MEMORY[0x1E69E9820];
      v136[1] = 3221225472;
      v136[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_405;
      v136[3] = &unk_1E79703F0;
      v40 = v3;
      v41 = *(a1 + 32);
      v137 = v40;
      v138 = v41;
      v139 = v2;
      v42 = MEMORY[0x1E69E96A0];
      dispatch_async(MEMORY[0x1E69E96A0], v136);

      v7 = v137;
      goto LABEL_61;
    case 4:
      v17 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC1C3000, v17, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontViewCaptureCompleted", buf, 2u);
      }

      [*(*(a1 + 32) + 1296) updateFaceEnrollDuration];
      v132[0] = MEMORY[0x1E69E9820];
      v132[1] = 3221225472;
      v132[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_409;
      v132[3] = &unk_1E79703F0;
      v18 = v3;
      v19 = *(a1 + 32);
      v133 = v18;
      v134 = v19;
      v135 = v2;
      v20 = MEMORY[0x1E69E96A0];
      dispatch_async(MEMORY[0x1E69E96A0], v132);

      v7 = v133;
      goto LABEL_61;
    case 5:
      v31 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC1C3000, v31, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> RightEar", buf, 2u);
      }

      v128[0] = MEMORY[0x1E69E9820];
      v128[1] = 3221225472;
      v128[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_416;
      v128[3] = &unk_1E79703F0;
      v32 = v3;
      v33 = *(a1 + 32);
      v129 = v32;
      v130 = v33;
      v131 = v2;
      v34 = MEMORY[0x1E69E96A0];
      dispatch_async(MEMORY[0x1E69E96A0], v128);

      v7 = v129;
      goto LABEL_61;
    case 6:
      v47 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC1C3000, v47, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> RightEarCaptureHoldPhone", buf, 2u);
      }

      [*(*(a1 + 32) + 1296) updateRightEarEnrollStart];
      v124[0] = MEMORY[0x1E69E9820];
      v124[1] = 3221225472;
      v124[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_429;
      v124[3] = &unk_1E79703F0;
      v48 = v3;
      v49 = *(a1 + 32);
      v125 = v48;
      v126 = v49;
      v127 = v2;
      v50 = MEMORY[0x1E69E96A0];
      dispatch_async(MEMORY[0x1E69E96A0], v124);

      v7 = v125;
      goto LABEL_61;
    case 7:
      v51 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC1C3000, v51, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> RightEarCaptureRotateHead", buf, 2u);
      }

      [*(a1 + 32) startEarEnrollmentNudgeTimer];
      v119[0] = MEMORY[0x1E69E9820];
      v119[1] = 3221225472;
      v119[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_434;
      v119[3] = &unk_1E7970440;
      v52 = v3;
      v53 = *(a1 + 32);
      v120 = v52;
      v121 = v53;
      objc_copyWeak(&v123, &location);
      v122 = v2;
      v54 = MEMORY[0x1E69E96A0];
      dispatch_async(MEMORY[0x1E69E96A0], v119);

      objc_destroyWeak(&v123);
      v7 = v120;
      goto LABEL_61;
    case 8:
      v63 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC1C3000, v63, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> RightEarCaptureCompleted", buf, 2u);
      }

      [*(*(a1 + 32) + 1296) updateRightEarEnrollDuration];
      [*(a1 + 32) stopEarEnrollmentNudgeTimer];
      v114[0] = MEMORY[0x1E69E9820];
      v114[1] = 3221225472;
      v114[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_438;
      v114[3] = &unk_1E7970440;
      v64 = v3;
      v65 = *(a1 + 32);
      v115 = v64;
      v116 = v65;
      objc_copyWeak(&v118, &location);
      v117 = v2;
      v66 = MEMORY[0x1E69E96A0];
      dispatch_async(MEMORY[0x1E69E96A0], v114);

      objc_destroyWeak(&v118);
      v7 = v115;
      goto LABEL_61;
    case 9:
      v59 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC1C3000, v59, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> LeftEar", buf, 2u);
      }

      v110[0] = MEMORY[0x1E69E9820];
      v110[1] = 3221225472;
      v110[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_445;
      v110[3] = &unk_1E79703F0;
      v60 = v3;
      v61 = *(a1 + 32);
      v111 = v60;
      v112 = v61;
      v113 = v2;
      v62 = MEMORY[0x1E69E96A0];
      dispatch_async(MEMORY[0x1E69E96A0], v110);

      v7 = v111;
      goto LABEL_61;
    case 0xA:
      v13 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC1C3000, v13, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> LeftEarCaptureHoldPhone", buf, 2u);
      }

      [*(*(a1 + 32) + 1296) updateLeftEarEnrollStart];
      v106[0] = MEMORY[0x1E69E9820];
      v106[1] = 3221225472;
      v106[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_457;
      v106[3] = &unk_1E79703F0;
      v14 = v3;
      v15 = *(a1 + 32);
      v107 = v14;
      v108 = v15;
      v109 = v2;
      v16 = MEMORY[0x1E69E96A0];
      dispatch_async(MEMORY[0x1E69E96A0], v106);

      v7 = v107;
      goto LABEL_61;
    case 0xB:
      v35 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC1C3000, v35, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> LeftEarCaptureRotateHead", buf, 2u);
      }

      [*(a1 + 32) startEarEnrollmentNudgeTimer];
      v101[0] = MEMORY[0x1E69E9820];
      v101[1] = 3221225472;
      v101[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_462;
      v101[3] = &unk_1E7970440;
      v36 = v3;
      v37 = *(a1 + 32);
      v102 = v36;
      v103 = v37;
      objc_copyWeak(&v105, &location);
      v104 = v2;
      v38 = MEMORY[0x1E69E96A0];
      dispatch_async(MEMORY[0x1E69E96A0], v101);

      objc_destroyWeak(&v105);
      v7 = v102;
      goto LABEL_61;
    case 0xC:
      v21 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC1C3000, v21, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> LeftEarCaptureCompleted", buf, 2u);
      }

      [*(*(a1 + 32) + 1296) updateLeftEarEnrollDuration];
      [*(a1 + 32) stopEarEnrollmentNudgeTimer];
      v96[0] = MEMORY[0x1E69E9820];
      v96[1] = 3221225472;
      v96[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_466;
      v96[3] = &unk_1E7970440;
      v22 = v3;
      v23 = *(a1 + 32);
      v97 = v22;
      v98 = v23;
      objc_copyWeak(&v100, &location);
      v99 = v2;
      v24 = MEMORY[0x1E69E96A0];
      dispatch_async(MEMORY[0x1E69E96A0], v96);

      objc_destroyWeak(&v100);
      v7 = v97;
      goto LABEL_61;
    case 0xE:
      v12 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC1C3000, v12, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> RetrieveProfile", buf, 2u);
      }

      [*(a1 + 32) retrieveProfile];
      goto LABEL_66;
    case 0xF:
      v55 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC1C3000, v55, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> SyncProfile", buf, 2u);
      }

      [*(a1 + 32) syncProfile];
      goto LABEL_66;
    case 0x10:
      [*(v4 + 1296) updateStatus:1 EnrollmentResult:@"Success"];
      v56 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC1C3000, v56, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> Completed", buf, 2u);
      }

      v94[0] = MEMORY[0x1E69E9820];
      v94[1] = 3221225472;
      v94[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_476;
      v94[3] = &unk_1E79703C8;
      v94[4] = *(a1 + 32);
      v57 = v3;
      v95 = v57;
      v58 = MEMORY[0x1E69E96A0];
      dispatch_async(MEMORY[0x1E69E96A0], v94);

      v92[0] = MEMORY[0x1E69E9820];
      v92[1] = 3221225472;
      v92[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_4_488;
      v92[3] = &unk_1E7970208;
      v93 = v2;
      dispatch_group_notify(v57, v58, v92);

      v7 = v95;
      goto LABEL_61;
    case 0x11:
      v71 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC1C3000, v71, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> CouldntScanEar", buf, 2u);
      }

      [*(*(a1 + 32) + 1296) updateStatus:0 EnrollmentResult:@"Failed"];
      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v89[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_492;
      v89[3] = &unk_1E79703C8;
      v72 = v3;
      v73 = *(a1 + 32);
      v90 = v72;
      v91 = v73;
      v74 = MEMORY[0x1E69E96A0];
      dispatch_async(MEMORY[0x1E69E96A0], v89);

      v87[0] = MEMORY[0x1E69E9820];
      v87[1] = 3221225472;
      v87[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_2_502;
      v87[3] = &unk_1E7970208;
      v88 = v2;
      dispatch_group_notify(v72, v74, v87);

      v7 = v90;
      goto LABEL_61;
    case 0x12:
      v67 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC1C3000, v67, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> HairCoveringEar", buf, 2u);
      }

      [*(*(a1 + 32) + 1296) updateStatus:0 EnrollmentResult:@"Failed"];
      v84[0] = MEMORY[0x1E69E9820];
      v84[1] = 3221225472;
      v84[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_503;
      v84[3] = &unk_1E79703C8;
      v68 = v3;
      v69 = *(a1 + 32);
      v85 = v68;
      v86 = v69;
      v70 = MEMORY[0x1E69E96A0];
      dispatch_async(MEMORY[0x1E69E96A0], v84);

      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 3221225472;
      v82[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_2_510;
      v82[3] = &unk_1E7970208;
      v83 = v2;
      dispatch_group_notify(v68, v70, v82);

      v7 = v85;
      goto LABEL_61;
    case 0x13:
      v8 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC1C3000, v8, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> GeneralFailure", buf, 2u);
      }

      [*(*(a1 + 32) + 1296) updateStatus:0 EnrollmentResult:@"Failed"];
      v79[0] = MEMORY[0x1E69E9820];
      v79[1] = 3221225472;
      v79[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_511;
      v79[3] = &unk_1E79703C8;
      v9 = v3;
      v10 = *(a1 + 32);
      v80 = v9;
      v81 = v10;
      v11 = MEMORY[0x1E69E96A0];
      dispatch_async(MEMORY[0x1E69E96A0], v79);

      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 3221225472;
      v77[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_3_519;
      v77[3] = &unk_1E7970208;
      v78 = v2;
      dispatch_group_notify(v9, v11, v77);

      v7 = v80;
LABEL_61:

      break;
    default:
      v76 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_cold_1();
      }

LABEL_66:
      dispatch_group_leave(v2);
      break;
  }

  v75 = dispatch_time(0, 3000000000);
  dispatch_group_wait(v2, v75);
  objc_destroyWeak(&location);
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_385(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1048);
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"CONTINUE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4 forState:0];

  if (!+[HPSUISpatialProfileManager isProxCardShowed])
  {
    [HPSUISpatialProfileManager setProxCardShowed:1];
  }

  [*(a1 + 32) startEnrollment];
  [*(a1 + 32) showContinueButton];
  [*(*(a1 + 32) + 1160) setAlpha:0.0];
  v5 = *(a1 + 40);

  dispatch_group_leave(v5);
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_388(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1032);
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"FRONT_VIEW" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 32) + 1032);
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"FRONT_VIEW_DETAIL" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  v8 = *(*(a1 + 32) + 1048);
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"START_FRONT_VIEW_CAPTURE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v8 setTitle:v10 forState:0];

  [*(*(a1 + 32) + 1096) removeFromSuperview];
  [*(*(a1 + 32) + 1040) removeFromSuperview];
  [*(*(a1 + 32) + 1088) removeFromSuperview];
  [*(*(a1 + 32) + 1152) setHidden:0];
  [*(*(a1 + 32) + 1152) setFaceCaptured:0];
  dispatch_group_enter(*(a1 + 40));
  v11 = *(*(a1 + 32) + 1152);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_2_398;
  v15[3] = &unk_1E7970208;
  v16 = *(a1 + 40);
  [v11 setState:2 completion:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_3;
  v13[3] = &unk_1E7970208;
  v12 = *(a1 + 40);
  v14 = *(a1 + 48);
  dispatch_group_notify(v12, MEMORY[0x1E69E96A0], v13);
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_3(uint64_t a1)
{
  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontView Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_399(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"FRONT_VIEW_CAPTURE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 40) + 1032);
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"FRONT_VIEW_DETAIL" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  *(*(a1 + 40) + 1336) = 5;
  [*(a1 + 40) startCaptureViewTimer];
  [*(a1 + 40) hideContinueButton];
  dispatch_group_enter(*(a1 + 32));
  v8 = *(*(a1 + 40) + 1152);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_2_403;
  v17[3] = &unk_1E7970208;
  v18 = *(a1 + 32);
  [v8 setState:3 completion:v17];
  dispatch_group_enter(*(a1 + 32));
  v9 = *(a1 + 40);
  v10 = *(v9 + 1144);
  v11 = *(v9 + 1252);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_3_404;
  v15[3] = &unk_1E7970208;
  v16 = *(a1 + 32);
  [v10 triggerSoundHapticForEnrollmentState:v11 completion:v15];
  [*(a1 + 40) resumeEnrollment];
  dispatch_group_leave(*(a1 + 32));
  v12 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_4;
  block[3] = &unk_1E7970208;
  v14 = *(a1 + 48);
  dispatch_group_notify(v12, MEMORY[0x1E69E96A0], block);
  [*(a1 + 40) startFaceInFrameHandlerTimer];
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_4(uint64_t a1)
{
  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontViewCapturePositionFace Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_405(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1152);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_2_406;
  v11[3] = &unk_1E7970208;
  v12 = *(a1 + 32);
  [v2 setState:5 completion:v11];
  dispatch_group_enter(*(a1 + 32));
  v3 = *(a1 + 40);
  v4 = *(v3 + 1144);
  v5 = *(v3 + 1252);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_3_407;
  v9[3] = &unk_1E7970208;
  v10 = *(a1 + 32);
  [v4 triggerSoundHapticForEnrollmentState:v5 completion:v9];
  v6 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_4_408;
  block[3] = &unk_1E7970208;
  v8 = *(a1 + 48);
  dispatch_group_notify(v6, MEMORY[0x1E69E96A0], block);
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_4_408(uint64_t a1)
{
  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontViewCaptureMoveHead Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_409(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"FRONT_VIEW_CAPTURE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 40) + 1032);
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"FRONT_VIEW_CAPTURED" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  v8 = *(*(a1 + 40) + 1048);
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CONTINUE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v8 setTitle:v10 forState:0];

  [*(a1 + 40) stopCaptureViewTimer];
  [*(*(a1 + 40) + 1152) setFaceCaptured:1];
  [*(a1 + 40) showContinueButton];
  [*(a1 + 40) forceBlur];
  dispatch_group_enter(*(a1 + 32));
  v11 = *(*(a1 + 40) + 1152);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_2_413;
  v20[3] = &unk_1E7970208;
  v21 = *(a1 + 32);
  [v11 setState:6 completion:v20];
  dispatch_group_enter(*(a1 + 32));
  v12 = *(a1 + 40);
  v13 = *(v12 + 1144);
  v14 = *(v12 + 1252);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_3_414;
  v18[3] = &unk_1E7970208;
  v19 = *(a1 + 32);
  [v13 triggerSoundHapticForEnrollmentState:v14 completion:v18];
  [*(a1 + 40) pauseEnrollment];
  dispatch_group_leave(*(a1 + 32));
  v15 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_4_415;
  block[3] = &unk_1E7970208;
  v17 = *(a1 + 48);
  dispatch_group_notify(v15, MEMORY[0x1E69E96A0], block);
  [*(a1 + 40) stopFaceInFrameHandlerTimer];
  [*(a1 + 40) sendTipKitSignal];
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_4_415(uint64_t a1)
{
  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontViewCaptureCompleted Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_416(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"RIGHT_EAR" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 40) + 1032);
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"RIGHT_EAR_DETAIL" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  v8 = *(*(a1 + 40) + 1048);
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"START_RIGHT_EAR_CAPTURE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v8 setTitle:v10 forState:0];

  [*(*(a1 + 40) + 1168) setHidden:0];
  [*(*(a1 + 40) + 1176) startPlayerRightEar];
  v11 = [*(*(a1 + 40) + 1152) pillContainer];
  [v11 setHidden:1];

  [*(*(a1 + 40) + 1152) setCrosshairsHidden:1];
  [*(*(a1 + 40) + 1152) setPauseBlur:1];
  [*(*(a1 + 40) + 1152) setForceBlur:0];
  [*(*(a1 + 40) + 1152) setHidden:1];
  *(*(a1 + 40) + 1368) = 2;
  *(*(a1 + 40) + 1576) = 0x3FE0000000000000;
  *(*(a1 + 40) + 1584) = 0xC059000000000000;
  *(*(a1 + 40) + 1592) = 0xC059000000000000;
  v12 = *(a1 + 40);
  v13 = *(v12 + 1600);
  *(v12 + 1600) = 0;

  [*(*(a1 + 40) + 1152) setCameraBlurAmount:0 useShade:0 duration:0.0 completion:0.5];
  dispatch_group_enter(*(a1 + 32));
  v14 = *(*(a1 + 40) + 1152);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_2_426;
  v26[3] = &unk_1E7970208;
  v27 = *(a1 + 32);
  [v14 setState:3 completion:v26];
  dispatch_group_enter(*(a1 + 32));
  v15 = *(a1 + 40);
  v16 = *(v15 + 1144);
  v17 = *(v15 + 1252);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_3_427;
  v24[3] = &unk_1E7970208;
  v25 = *(a1 + 32);
  [v16 triggerSoundHapticForEnrollmentState:v17 completion:v24];
  dispatch_group_leave(*(a1 + 32));
  v18 = *(a1 + 32);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_4_428;
  v21[3] = &unk_1E79703C8;
  v19 = *(a1 + 48);
  v20 = *(a1 + 40);
  v22 = v19;
  v23 = v20;
  dispatch_group_notify(v18, MEMORY[0x1E69E96A0], v21);
}

uint64_t __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_4_428(uint64_t a1)
{
  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> RightEar Done", v4, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
  return [*(a1 + 40) startTutorialResumeEnrollTimer];
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_429(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  [*(a1 + 40) stopTutorialResumeEnrollTimer];
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"RIGHT_EAR_CAPTURE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  [*(*(a1 + 40) + 1168) setHidden:1];
  [*(*(a1 + 40) + 1176) stopPlayerRightEar];
  [*(a1 + 40) startCaptureViewTimer];
  [*(a1 + 40) hideContinueButton];
  [*(*(a1 + 40) + 1152) setHidden:0];
  *(*(a1 + 40) + 1426) = 0;
  *(*(a1 + 40) + 1427) = 0;
  *(*(a1 + 40) + 1442) = 0;
  *(*(a1 + 40) + 1443) = 0;
  *(*(a1 + 40) + 1458) = 0;
  *(*(a1 + 40) + 1459) = 0;
  *(*(a1 + 40) + 1544) = 0xC059000000000000;
  *(*(a1 + 40) + 1456) = 0;
  *(*(a1 + 40) + 1457) = 0;
  *(*(a1 + 40) + 1441) = 10;
  [*(a1 + 40) startOcclusionWarnCoolDownTimer];
  [*(a1 + 40) startEarDistanceWarnCoolDownTimer];
  [*(a1 + 40) startEnrollGuidanceTimer];
  [*(*(a1 + 40) + 1296) initFrameRateDetection];
  [*(a1 + 40) resumeEnrollment];
  dispatch_group_leave(*(a1 + 32));
  v5 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_2_433;
  block[3] = &unk_1E7970208;
  v7 = *(a1 + 48);
  dispatch_group_notify(v5, MEMORY[0x1E69E96A0], block);
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_2_433(uint64_t a1)
{
  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> RightEarCaptureHoldPhone Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_434(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"RIGHT_EAR_CAPTURE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  [*(*(a1 + 40) + 992) bringSubviewToFront:*(*(a1 + 40) + 1192)];
  [*(*(a1 + 40) + 1192) setFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [*(*(a1 + 40) + 1184) setAlpha:1.0];
  dispatch_group_enter(*(a1 + 32));
  v5 = *(*(a1 + 40) + 1152);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_2_435;
  v14[3] = &unk_1E7970418;
  objc_copyWeak(&v16, (a1 + 56));
  v15 = *(a1 + 32);
  [v5 setState:5 completion:v14];
  dispatch_group_enter(*(a1 + 32));
  v6 = *(a1 + 40);
  v7 = *(v6 + 1144);
  v8 = *(v6 + 1252);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_3_436;
  v12[3] = &unk_1E7970208;
  v13 = *(a1 + 32);
  [v7 triggerSoundHapticForEnrollmentState:v8 completion:v12];
  dispatch_group_leave(*(a1 + 32));
  v9 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_4_437;
  v10[3] = &unk_1E7970208;
  v11 = *(a1 + 48);
  dispatch_group_notify(v9, MEMORY[0x1E69E96A0], v10);

  objc_destroyWeak(&v16);
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_2_435(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained showEarPillsDots];

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_4_437(uint64_t a1)
{
  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> RightEarCaptureRotateHead Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_438(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  [*(a1 + 40) hideEarDistanceWarningContinueButton];
  [*(a1 + 40) hideOcclusionContinueButton];
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"RIGHT_EAR_CAPTURE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 40) + 1032);
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"RIGHT_EAR_CAPTURED" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  v8 = *(*(a1 + 40) + 1048);
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CONTINUE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v8 setTitle:v10 forState:0];

  [*(a1 + 40) stopCaptureViewTimer];
  [*(a1 + 40) stopEnrollGuidanceTimer];
  [*(*(a1 + 40) + 1192) setHidden:1];
  [*(a1 + 40) showContinueButton];
  [*(a1 + 40) forceBlur];
  [*(a1 + 40) hideEarPillsDots];
  dispatch_group_enter(*(a1 + 32));
  v11 = *(*(a1 + 40) + 1152);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_2_442;
  v20[3] = &unk_1E7970418;
  objc_copyWeak(&v22, (a1 + 56));
  v21 = *(a1 + 32);
  [v11 setState:6 completion:v20];
  dispatch_group_enter(*(a1 + 32));
  v12 = *(a1 + 40);
  v13 = *(v12 + 1144);
  v14 = *(v12 + 1252);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_3_443;
  v18[3] = &unk_1E7970208;
  v19 = *(a1 + 32);
  [v13 triggerSoundHapticForEnrollmentState:v14 completion:v18];
  [*(a1 + 40) pauseEnrollment];
  *(*(a1 + 40) + 1368) = 3;
  dispatch_group_leave(*(a1 + 32));
  v15 = *(a1 + 32);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_4_444;
  v16[3] = &unk_1E7970208;
  v17 = *(a1 + 48);
  dispatch_group_notify(v15, MEMORY[0x1E69E96A0], v16);

  objc_destroyWeak(&v22);
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_2_442(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained[144] pillContainer];
  [v2 setHidden:0];

  dispatch_group_leave(*(a1 + 32));
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_4_444(uint64_t a1)
{
  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> RightEarCaptureCompleted Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_445(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"LEFT_EAR" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 40) + 1032);
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"LEFT_EAR_DETAIL" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  v8 = *(*(a1 + 40) + 1048);
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"START_LEFT_EAR_CAPTURE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v8 setTitle:v10 forState:0];

  [*(*(a1 + 40) + 1168) setHidden:0];
  [*(*(a1 + 40) + 1176) startPlayerLeftEar];
  dispatch_group_enter(*(a1 + 32));
  v11 = *(*(a1 + 40) + 1152);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_2_455;
  v19[3] = &unk_1E7970208;
  v20 = *(a1 + 32);
  [v11 setState:3 completion:v19];
  v12 = [*(*(a1 + 40) + 1152) pillContainer];
  [v12 setHidden:1];

  [*(*(a1 + 40) + 1152) setHidden:1];
  [*(a1 + 40) cancelBlur];
  [*(*(a1 + 40) + 1160) setAlpha:0.0];
  [*(*(a1 + 40) + 1160) resetPillsAnimated:1];
  *(*(a1 + 40) + 1359) = 0;
  *(*(a1 + 40) + 1384) = 2;
  dispatch_group_leave(*(a1 + 32));
  v13 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_3_456;
  block[3] = &unk_1E79703C8;
  v14 = *(a1 + 48);
  v15 = *(a1 + 40);
  v17 = v14;
  v18 = v15;
  dispatch_group_notify(v13, MEMORY[0x1E69E96A0], block);
}

uint64_t __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_3_456(uint64_t a1)
{
  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> LeftEar Done", v4, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
  return [*(a1 + 40) startTutorialResumeEnrollTimer];
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_457(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"LEFT_EAR_CAPTURE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  [*(*(a1 + 40) + 1168) setHidden:1];
  [*(*(a1 + 40) + 1176) stopPlayerLeftEar];
  [*(a1 + 40) stopTutorialResumeEnrollTimer];
  [*(a1 + 40) startCaptureViewTimer];
  [*(a1 + 40) hideContinueButton];
  [*(*(a1 + 40) + 1152) setPauseBlur:1];
  [*(*(a1 + 40) + 1152) setHidden:0];
  v5 = [*(*(a1 + 40) + 1152) pillContainer];
  [v5 setHidden:1];

  *(*(a1 + 40) + 1426) = 0;
  *(*(a1 + 40) + 1442) = 0;
  *(*(a1 + 40) + 1443) = 0;
  *(*(a1 + 40) + 1427) = 0;
  *(*(a1 + 40) + 1456) = 0;
  *(*(a1 + 40) + 1457) = 0;
  *(*(a1 + 40) + 1458) = 0;
  *(*(a1 + 40) + 1459) = 0;
  *(*(a1 + 40) + 1536) = 0xC059000000000000;
  *(*(a1 + 40) + 1441) = 10;
  *(*(a1 + 40) + 1576) = 0x3FE0000000000000;
  *(*(a1 + 40) + 1584) = 0xC059000000000000;
  *(*(a1 + 40) + 1592) = 0xC059000000000000;
  v6 = *(a1 + 40);
  v7 = *(v6 + 1600);
  *(v6 + 1600) = 0;

  v8 = *(a1 + 40);
  v9 = *(v8 + 1576);
  *&v9 = v9;
  [*(v8 + 1144) setEnrollGuidancePitch:v9];
  [*(a1 + 40) startOcclusionWarnCoolDownTimer];
  [*(a1 + 40) startEarDistanceWarnCoolDownTimer];
  [*(a1 + 40) startEnrollGuidanceTimer];
  [*(*(a1 + 40) + 1296) initFrameRateDetection];
  [*(a1 + 40) resumeEnrollment];
  dispatch_group_leave(*(a1 + 32));
  v10 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_2_461;
  block[3] = &unk_1E7970208;
  v12 = *(a1 + 48);
  dispatch_group_notify(v10, MEMORY[0x1E69E96A0], block);
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_2_461(uint64_t a1)
{
  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> LeftEarCaptureHoldPhone Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_462(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"LEFT_EAR_CAPTURE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  dispatch_group_enter(*(a1 + 32));
  v5 = [*(*(a1 + 40) + 1152) pillContainer];
  [v5 setHidden:1];

  v6 = *(*(a1 + 40) + 1152);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_2_463;
  v15[3] = &unk_1E7970418;
  objc_copyWeak(&v17, (a1 + 56));
  v16 = *(a1 + 32);
  [v6 setState:5 completion:v15];
  [*(*(a1 + 40) + 1192) setFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  *(*(a1 + 40) + 1380) = 0;
  *(*(a1 + 40) + 1379) = 0;
  dispatch_group_enter(*(a1 + 32));
  v7 = *(a1 + 40);
  v8 = *(v7 + 1144);
  v9 = *(v7 + 1252);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_3_464;
  v13[3] = &unk_1E7970208;
  v14 = *(a1 + 32);
  [v8 triggerSoundHapticForEnrollmentState:v9 completion:v13];
  [*(a1 + 40) resumeEnrollment];
  dispatch_group_leave(*(a1 + 32));
  v10 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_4_465;
  v11[3] = &unk_1E7970208;
  v12 = *(a1 + 48);
  dispatch_group_notify(v10, MEMORY[0x1E69E96A0], v11);

  objc_destroyWeak(&v17);
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_2_463(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained showEarPillsDots];

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_4_465(uint64_t a1)
{
  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> LeftEarCaptureRotateHead Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_466(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  [*(*(a1 + 40) + 1192) setHidden:1];
  [*(a1 + 40) hideEarDistanceWarningContinueButton];
  [*(a1 + 40) hideOcclusionContinueButton];
  [*(a1 + 40) stopEnrollGuidanceTimer];
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"LEFT_EAR_CAPTURE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 40) + 1032);
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"LEFT_EAR_CAPTURED" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  [*(a1 + 40) stopCaptureViewTimer];
  [*(a1 + 40) startPostProcessTimer];
  [*(a1 + 40) hideEarPillsDots];
  [*(a1 + 40) forceBlur];
  *(*(a1 + 40) + 1384) = 3;
  dispatch_group_enter(*(a1 + 32));
  v8 = *(*(a1 + 40) + 1152);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_2_470;
  v17[3] = &unk_1E7970418;
  objc_copyWeak(&v19, (a1 + 56));
  v18 = *(a1 + 32);
  [v8 setState:6 completion:v17];
  dispatch_group_enter(*(a1 + 32));
  v9 = *(a1 + 40);
  v10 = *(v9 + 1144);
  v11 = *(v9 + 1252);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_3_471;
  v15[3] = &unk_1E7970208;
  v16 = *(a1 + 32);
  [v10 triggerSoundHapticForEnrollmentState:v11 completion:v15];
  dispatch_group_leave(*(a1 + 32));
  v12 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_4_472;
  v13[3] = &unk_1E7970208;
  v14 = *(a1 + 48);
  dispatch_group_notify(v12, MEMORY[0x1E69E96A0], v13);

  objc_destroyWeak(&v19);
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_2_470(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained[144] pillContainer];
  [v2 setHidden:0];

  dispatch_group_leave(*(a1 + 32));
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_4_472(uint64_t a1)
{
  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> LeftEarCaptureCompleted Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_476(uint64_t a1)
{
  [*(a1 + 32) stopTimers];
  dispatch_group_enter(*(a1 + 40));
  v2 = *(*(a1 + 32) + 1032);
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_TITLE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 32) + 1032);
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_COMPLETE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  v8 = *(*(a1 + 32) + 1048);
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"DONE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v8 setTitle:v10 forState:0];

  v11 = *(a1 + 32);
  if (v11[1233] == 1)
  {
    [v11 stopPostProcessSpinner];
    v11 = *(a1 + 32);
  }

  [v11 stopPostProcessTimer];
  dispatch_group_enter(*(a1 + 40));
  v12 = *(*(a1 + 32) + 1152);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_2_486;
  v21[3] = &unk_1E7970208;
  v22 = *(a1 + 40);
  [v12 setState:10 completion:v21];
  dispatch_group_enter(*(a1 + 40));
  v13 = *(a1 + 32);
  v14 = *(v13 + 1144);
  v15 = *(v13 + 1252);
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_3_487;
  v19 = &unk_1E7970208;
  v20 = *(a1 + 40);
  [v14 triggerSoundHapticForEnrollmentState:v15 completion:&v16];
  [*(*(a1 + 32) + 1160) setAlpha:{0.0, v16, v17, v18, v19}];
  [*(a1 + 32) stopEnrollment];
  [*(a1 + 32) showContinueButton];
  [*(*(a1 + 32) + 1048) removeTarget:*(a1 + 32) action:sel_continueButtonTapped forControlEvents:64];
  [*(*(a1 + 32) + 1048) addTarget:*(a1 + 32) action:sel_cancelSpatialAudioProfile forControlEvents:64];
  *(*(a1 + 32) + 1320) = 1;
  dispatch_group_leave(*(a1 + 40));
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_4_488(uint64_t a1)
{
  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> Completed Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_492(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"COULDNT_SCAN_EAR" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 40) + 1032);
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"COULDNT_SCAN_EAR_DETAIL" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  [*(a1 + 40) showContinueButton];
  [*(*(a1 + 40) + 1048) removeTarget:*(a1 + 40) action:sel_continueButtonTapped forControlEvents:64];
  v8 = *(*(a1 + 40) + 1048);
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"SCAN_AGAIN" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v8 setTitle:v10 forState:0];

  [*(*(a1 + 40) + 1048) addTarget:*(a1 + 40) action:sel_cancelSpatialAudioProfile forControlEvents:64];
  v11 = *(a1 + 32);

  dispatch_group_leave(v11);
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_2_502(uint64_t a1)
{
  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> CouldntScanEar Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_503(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"HAIR_COVERING_EAR" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 40) + 1032);
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"HAIR_COVERING_EAR_DETAIL" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  [*(a1 + 40) showContinueButton];
  [*(*(a1 + 40) + 1048) removeTarget:*(a1 + 40) action:sel_continueButtonTapped forControlEvents:64];
  v8 = *(*(a1 + 40) + 1048);
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"SCAN_AGAIN" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v8 setTitle:v10 forState:0];

  [*(*(a1 + 40) + 1048) addTarget:*(a1 + 40) action:sel_cancelSpatialAudioProfile forControlEvents:64];
  v11 = *(a1 + 32);

  dispatch_group_leave(v11);
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_2_510(uint64_t a1)
{
  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> HairCoveringEar Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_511(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"GENERAL_FAILURE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 40) + 1032);
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"GENERAL_FAILURE_DETAIL" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  v8 = *(*(a1 + 40) + 1048);
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"DONE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v8 setTitle:v10 forState:0];

  v11 = *(a1 + 40);
  if (*(v11 + 1304))
  {
    [v11 cleanUpSpinner];
    v11 = *(a1 + 40);
  }

  if (*(v11 + 1233) == 1)
  {
    [v11 stopPostProcessSpinner];
    v11 = *(a1 + 40);
  }

  [v11 stopPostProcessTimer];
  [*(*(a1 + 40) + 1160) setAlpha:0.0];
  [*(*(a1 + 40) + 1152) setHidden:1];
  [*(a1 + 40) stopEnrollment];
  [*(a1 + 40) showContinueButton];
  [*(*(a1 + 40) + 1048) removeTarget:*(a1 + 40) action:sel_continueButtonTapped forControlEvents:64];
  [*(*(a1 + 40) + 1048) addTarget:*(a1 + 40) action:sel_cancelSpatialAudioProfile forControlEvents:64];
  dispatch_group_leave(*(a1 + 32));
  dispatch_group_enter(*(a1 + 32));
  v12 = *(*(a1 + 40) + 1144);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_2_518;
  v13[3] = &unk_1E7970208;
  v14 = *(a1 + 32);
  [v12 triggerSoundHapticForEnrollmentState:19 completion:v13];
}

void __54__HPSUISpatialProfileEnrollmentController_moveToStep___block_invoke_3_519(uint64_t a1)
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
  v14 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    currentStep = self->_currentStep;
    sessionState = self->_sessionState;
    v11[0] = 67109376;
    v11[1] = currentStep;
    v12 = 1024;
    v13 = sessionState;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: ContinueButton Tapped Current Step %d, Currente Session %d ", v11, 0xEu);
  }

  if (!self->_currentStep)
  {
    if ([(HPSUISpatialProfileEnrollmentController *)self checkAndShowInEarPopup])
    {
      return;
    }

    if (([(BluetoothManager *)self->_btManager available]& 1) == 0)
    {
      v9 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11[0]) = 0;
        _os_log_impl(&dword_1AC1C3000, v9, OS_LOG_TYPE_DEFAULT, "Spatial Profile: btManager is not available", v11, 2u);
      }

      if (!self->_welcomeSpinnerOn)
      {
        v10 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v11[0]) = 0;
          _os_log_impl(&dword_1AC1C3000, v10, OS_LOG_TYPE_DEFAULT, "Spatial Profile: btManager is not available starting welcome spinner", v11, 2u);
        }

        [(HPSUISpatialProfileEnrollmentController *)self startWelcomeSpinner];
      }
    }
  }

  if (self->_enrollmentReady)
  {
    v6 = self->_currentStep;
    if (v6 > 13)
    {
      return;
    }

    if (self->_sessionState == 3)
    {
      if (v6 == 12)
      {
        return;
      }

      v7 = self;
      v8 = 12;
    }

    else
    {
      v8 = (v6 + 1);
      v7 = self;
    }

    [(HPSUISpatialProfileEnrollmentController *)v7 moveToStep:v8];
  }

  else if (!self->_welcomeSpinnerOn)
  {
    [(HPSUISpatialProfileEnrollmentController *)self startWelcomeSpinner];
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
  [(HPSUISpatialProfileEnrollmentController *)self cancelSpatialAudioProfile];
}

- (void)stopTimers
{
  [(HPSUISpatialProfileEnrollmentController *)self stopFaceInFrameHandlerTimer];
  [(HPSUISpatialProfileEnrollmentController *)self stopOcclusionWarnCoolDownTimer];
  [(HPSUISpatialProfileEnrollmentController *)self stopEarDistanceWarnCoolDownTimer];
  [(HPSUISpatialProfileEnrollmentController *)self stopEnrollGuidanceTimer];
  [(HPSUISpatialProfileEnrollmentController *)self stopCaptureViewTimer];
  [(HPSUISpatialProfileEnrollmentController *)self stopPostProcessTimer];

  [(HPSUISpatialProfileEnrollmentController *)self stopEarEnrollmentNudgeTimer];
}

- (void)cancelSpatialAudioProfile
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Cancel Spatial Audio Profile", &v13, 2u);
  }

  v4 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    x = self->_currentEarBB.origin.x;
    y = self->_currentEarBB.origin.y;
    width = self->_currentEarBB.size.width;
    height = self->_currentEarBB.size.height;
    leftLastReceivedYaw = self->_leftLastReceivedYaw;
    rightLastReceivedYaw = self->_rightLastReceivedYaw;
    v13 = 134219264;
    v14 = x;
    v15 = 2048;
    v16 = y;
    v17 = 2048;
    v18 = width;
    v19 = 2048;
    v20 = height;
    v21 = 2048;
    v22 = leftLastReceivedYaw;
    v23 = 2048;
    v24 = rightLastReceivedYaw;
    _os_log_impl(&dword_1AC1C3000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: _currentEarBB.origin.x %f , _currentEarBB.origin.y %f , _currentEarBB.size.width %f , _currentEarBB.size.height %f Left Ear Last Yaw %f Right Ear Last Yaw %f", &v13, 0x3Eu);
  }

  if (self->_enrollmentStarted)
  {
    [(HPSUISpatialProfileEnrollmentController *)self stopEnrollment];
  }

  [(HPSUISpatialProfileEnrollmentController *)self stopTimers];
  [(HPSUISpatialProfileSoundHapticManager *)self->_soundHapticManager stop];
  [(HPSUISpatialProfileEnrollmentController *)self resetVolume];
  [(HPSUISpatialProfileEarTutorialView *)self->_earTutorialView stopPlayers];
  [(HPSUISpatialProfileEnrollmentController *)self dismissViewControllerAnimated:1 completion:&__block_literal_global_524];
  if (self->_enrollmentCompleted)
  {
    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 postNotificationName:@"HPSSpatialAudioProfileUpdated" object:0];
  }

  if (self->dismissalHandler)
  {
    v12 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1AC1C3000, v12, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Executing : Dismiss handler", &v13, 2u);
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
  block[2] = __70__HPSUISpatialProfileEnrollmentController_bluetoothDidBecomeAvailable__block_invoke;
  block[3] = &unk_1E7970208;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __70__HPSUISpatialProfileEnrollmentController_bluetoothDidBecomeAvailable__block_invoke(uint64_t result)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 1232) == 1)
  {
    v1 = result;
    v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(v1 + 32);
      v4 = *(v3 + 1318);
      v5 = [*(v3 + 1416) available];
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
  [a1 code];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void __58__HPSUISpatialProfileEnrollmentController_retrieveProfile__block_invoke_531(void *a1, void *a2)
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

  [*(a1[4] + 1288) appendData:v3];
  dispatch_group_leave(*(*(a1[5] + 8) + 40));
}

uint64_t __58__HPSUISpatialProfileEnrollmentController_retrieveProfile__block_invoke_533(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(a1 + 32) + 1288) length];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Retrieved Profile Size: %lu", &v5, 0xCu);
  }

  return [*(a1 + 32) moveToStep:15];
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
    v9[2] = __54__HPSUISpatialProfileEnrollmentController_syncProfile__block_invoke;
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

void __54__HPSUISpatialProfileEnrollmentController_syncProfile__block_invoke(uint64_t a1, void *a2)
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

  [*(a1 + 32) moveToStep:16];
  [*(a1 + 40) invalidate];
}

- (id)angleArrayToBinaryString:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
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
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

    [(HPSUISpatialProfileEnrollmentController *)self stopTutorialResumeEnrollTimer];
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

- (void)tutorialResumeEnrollTimerDidFire
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Tutorial automatic Delay Transition Timer did Fire", v9, 2u);
  }

  currentStep = self->_currentStep;
  if (currentStep == 9 || currentStep == 5)
  {
    v6 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_currentStep;
      enrollmentPaused = self->_enrollmentPaused;
      v9[0] = 67109376;
      v9[1] = v7;
      v10 = 1024;
      v11 = enrollmentPaused;
      _os_log_impl(&dword_1AC1C3000, v6, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Starting enrollment while in Ear tutorial %d Enrollment Status %d", v9, 0xEu);
    }

    if (self->_enrollmentPaused)
    {
      [(HPSUISpatialProfileEnrollmentController *)self resumeEnrollment];
    }
  }
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

    [(HPSUISpatialProfileEnrollmentController *)self stopCaptureViewTimer];
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
  v12[2] = __66__HPSUISpatialProfileEnrollmentController_captureViewTimerDidFire__block_invoke;
  v12[3] = &unk_1E79704E0;
  v12[4] = self;
  v11 = [v8 actionWithTitle:v10 style:0 handler:v12];
  [v7 addAction:v11];

  [(HPSUISpatialProfileEnrollmentController *)self presentViewController:v7 animated:1 completion:0];
}

- (BOOL)isEarOccluded
{
  currentStep = self->_currentStep;
  v3 = currentStep > 0xB;
  v4 = (1 << currentStep) & 0xCC0;
  v5 = v3 || v4 == 0;
  return !v5 && !self->_supressEarOcclusionWarning && self->_isEarOccluded;
}

- (BOOL)isPresentingWrongEar
{
  v27 = *MEMORY[0x1E69E9840];
  if (!self->_supressEarEnrollWarning)
  {
    leftEarStatus = self->_leftEarStatus;
    v4 = leftEarStatus < 1 || leftEarStatus == 3;
    if (!v4 && self->_currentTrackingEar == 2)
    {
      v5 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        supressEarEnrollWarning = self->_supressEarEnrollWarning;
        rightEarStatus = self->_rightEarStatus;
        v8 = self->_leftEarStatus;
        leftEarCaptureCount = self->_leftEarCaptureCount;
        v19 = 67109888;
        v20 = supressEarEnrollWarning;
        v21 = 1024;
        v22 = rightEarStatus;
        v23 = 1024;
        v24 = v8;
        v25 = 1024;
        v26 = leftEarCaptureCount;
        v10 = "Spatial Profile: Detecting right ear during left enrollment Timeout: %d Right ear status %d Left ear status %d Threshold %d";
        v11 = v5;
        v12 = 26;
LABEL_16:
        _os_log_impl(&dword_1AC1C3000, v11, OS_LOG_TYPE_DEFAULT, v10, &v19, v12);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

    v13 = self->_rightEarStatus;
    v14 = v13 < 1 || v13 == 3;
    if (!v14 && self->_currentTrackingEar == 1)
    {
      v5 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v15 = self->_supressEarEnrollWarning;
        v16 = self->_rightEarStatus;
        v17 = self->_leftEarCaptureCount;
        v19 = 67109632;
        v20 = v15;
        v21 = 1024;
        v22 = v16;
        v23 = 1024;
        v24 = v17;
        v10 = "Spatial Profile: Detectin left ear during right enrollment Timeout: %d Right ear status %d Threshold %d";
        v11 = v5;
        v12 = 20;
        goto LABEL_16;
      }

LABEL_17:

      return 1;
    }
  }

  return 0;
}

- (void)alertEarEnrollWarning
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    currentYaw = self->_currentYaw;
    candidateYaw = self->_candidateYaw;
    *buf = 134218240;
    v23 = currentYaw;
    v24 = 2048;
    v25 = candidateYaw;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Error Message *** Enrolling Left ear while right ear enroll is still pending Current yaw %f Candidate Yaw %f ", buf, 0x16u);
  }

  [(HPSUISpatialProfileEnrollmentController *)self pauseEnrollment];
  [(HPSUISpatialProfileEnrollmentController *)self forceBlur];
  [(CEKSubjectIndicatorView *)self->_earBoundingBoxView setHidden:1];
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_WRONG_EAR_LEFT_TITLE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];

  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_WRONG_EAR_LEFT_TEXT" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];

  if (self->_currentTrackingEar == 1)
  {
    v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_WRONG_EAR_RIGHT_TITLE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];

    v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_WRONG_EAR_RIGHT_TEXT" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];

    v9 = v13;
    v7 = v11;
  }

  v14 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v7 message:v9 preferredStyle:1];
  v15 = MEMORY[0x1E69DC648];
  v16 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"CANCEL_ENROLLMENT_ALERT_PROMPT_BUTTON" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __64__HPSUISpatialProfileEnrollmentController_alertEarEnrollWarning__block_invoke;
  v21[3] = &unk_1E79704E0;
  v21[4] = self;
  v18 = [v15 actionWithTitle:v17 style:0 handler:v21];
  [v14 addAction:v18];

  [(HPSUISpatialProfileEnrollmentController *)self presentViewController:v14 animated:1 completion:0];
  stepSerialQueue = self->_stepSerialQueue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __64__HPSUISpatialProfileEnrollmentController_alertEarEnrollWarning__block_invoke_3;
  v20[3] = &unk_1E7970208;
  v20[4] = self;
  dispatch_async(stepSerialQueue, v20);
}

void __64__HPSUISpatialProfileEnrollmentController_alertEarEnrollWarning__block_invoke(uint64_t a1)
{
  [*(a1 + 32) startEarEnrollWarningTimer];
  [*(a1 + 32) cancelBlur];
  [*(a1 + 32) resumeEnrollment];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__HPSUISpatialProfileEnrollmentController_alertEarEnrollWarning__block_invoke_2;
  block[3] = &unk_1E7970208;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __64__HPSUISpatialProfileEnrollmentController_alertEarEnrollWarning__block_invoke_3(uint64_t a1)
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v3 = *(*(a1 + 32) + 1144);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__HPSUISpatialProfileEnrollmentController_alertEarEnrollWarning__block_invoke_4;
  v5[3] = &unk_1E7970208;
  v6 = v2;
  v4 = v2;
  [v3 triggerSoundHapticForEnrollmentState:19 completion:v5];
}

- (id)getBudsInEarString
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
    v15 = self;
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
        if (+[HPSProductUtils isAppleHeadphone:](HPSProductUtils, "isAppleHeadphone:", v8, v15) && ([v8 isTemporaryPaired] & 1) == 0)
        {
          if ([v8 isGenuineAirPods])
          {
            v9 = [BTSDeviceClassic deviceWithDevice:v8];
            v10 = v9;
            if (v9)
            {
              v16 = 3;
              v17 = 3;
              v11 = [v9 classicDevice];
              [v11 inEarStatusPrimary:&v17 secondary:&v16];

              if (!v17 || !v16)
              {
                v13 = [(HPSUISpatialProfileEnrollmentController *)v15 content];
                v12 = [v13 removeAccessoryFromEar];

                goto LABEL_20;
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

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_20:

  return v12;
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

  if ((self->_currentStep & 0xFFFFFFFE) == 2)
  {
    if (self->_faceBoundingBoxStatus == 1 && !self->_faceCaptured)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __75__HPSUISpatialProfileEnrollmentController_triggerFaceInFrameHandlerTimeout__block_invoke;
      block[3] = &unk_1E7970208;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      v5 = MEMORY[0x1E695DFF0];
      v6 = 1.0;
    }

    else
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __75__HPSUISpatialProfileEnrollmentController_triggerFaceInFrameHandlerTimeout__block_invoke_2;
      v9[3] = &unk_1E7970208;
      v9[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], v9);
      v5 = MEMORY[0x1E695DFF0];
      v6 = 3.0;
    }

    v7 = [v5 scheduledTimerWithTimeInterval:self target:sel_triggerFaceInFrameHandlerTimeout selector:0 userInfo:0 repeats:v6];
    faceInFrameHandlerTimer = self->_faceInFrameHandlerTimer;
    self->_faceInFrameHandlerTimer = v7;
  }

  else
  {
    [(HPSUISpatialProfileEnrollmentController *)self stopFaceInFrameHandlerTimer];
  }
}

void __75__HPSUISpatialProfileEnrollmentController_triggerFaceInFrameHandlerTimeout__block_invoke(uint64_t a1)
{
  v12 = [MEMORY[0x1E695DF58] currentLocale];
  v2 = [v12 objectForKey:*MEMORY[0x1E695DA08]];
  v3 = [v2 BOOLValue];

  v4 = *(*(a1 + 32) + 1032);
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"FACE_TOO_CLOSE_TITLE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v4 setTitle:v6];

  v7 = *(*(a1 + 32) + 1032);
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

void __75__HPSUISpatialProfileEnrollmentController_triggerFaceInFrameHandlerTimeout__block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1032);
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"FRONT_VIEW_CAPTURE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 32) + 1032);
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v7 localizedStringForKey:@"FRONT_VIEW_DETAIL" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v6];
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

    [(HPSUISpatialProfileEnrollmentController *)self stopFaceInFrameHandlerTimer];
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

- (void)startOcclusionWarnCoolDownTimer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__HPSUISpatialProfileEnrollmentController_startOcclusionWarnCoolDownTimer__block_invoke;
  block[3] = &unk_1E7970208;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __74__HPSUISpatialProfileEnrollmentController_startOcclusionWarnCoolDownTimer__block_invoke(uint64_t a1, double a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (*(v3 + 1432))
  {
    [v3 stopOcclusionWarnCoolDownTimer];
    v3 = *(a1 + 32);
  }

  *(v3 + 1440) = 1;
  LOBYTE(a2) = *(*(a1 + 32) + 1441);
  v4 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:*&a2 target:? selector:? userInfo:? repeats:?];
  v5 = *(a1 + 32);
  v6 = *(v5 + 1432);
  *(v5 + 1432) = v4;

  v7 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(a1 + 32) + 1441);
    v11[0] = 67109120;
    v11[1] = v8;
    _os_log_impl(&dword_1AC1C3000, v7, OS_LOG_TYPE_DEFAULT, "Spatial Profile:Start Occlusion timer for %dSec", v11, 8u);
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 1441);
  if (v10 <= 0x1E)
  {
    *(v9 + 1441) = v10 + 5;
  }
}

- (void)restartOcclusionWarnCoolDownTimer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__HPSUISpatialProfileEnrollmentController_restartOcclusionWarnCoolDownTimer__block_invoke;
  block[3] = &unk_1E7970208;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __76__HPSUISpatialProfileEnrollmentController_restartOcclusionWarnCoolDownTimer__block_invoke(uint64_t a1, double a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (*(v3 + 1432))
  {
    [v3 stopOcclusionWarnCoolDownTimer];
    v3 = *(a1 + 32);
  }

  *(v3 + 1440) = 1;
  LOBYTE(a2) = *(*(a1 + 32) + 1441);
  v4 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:*&a2 target:? selector:? userInfo:? repeats:?];
  v5 = *(a1 + 32);
  v6 = *(v5 + 1432);
  *(v5 + 1432) = v4;

  v7 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(a1 + 32) + 1441);
    v9[0] = 67109120;
    v9[1] = v8;
    _os_log_impl(&dword_1AC1C3000, v7, OS_LOG_TYPE_DEFAULT, "Spatial Profile:Restart Occlusion warning timer to  %dSec", v9, 8u);
  }
}

- (void)triggerOcclusionWarnCoolDownTimer
{
  v7 = *MEMORY[0x1E69E9840];
  self->_supressEarOcclusionWarning = 0;
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_isLookingAtPhone)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile:Ready to show occlusion error %@", &v5, 0xCu);
  }
}

- (void)stopOcclusionWarnCoolDownTimer
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_isLookingAtPhone)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stopping Occlusion Timer Attention %@", &v6, 0xCu);
  }

  [(NSTimer *)self->_occlusionWarnCoolDownTimer invalidate];
  occlusionWarnCoolDownTimer = self->_occlusionWarnCoolDownTimer;
  self->_occlusionWarnCoolDownTimer = 0;
}

- (void)alertOcclusionWarning
{
  [(HPSUISpatialProfileEnrollmentController *)self updateBoundingBoxHiddenStatus];
  currentStep = self->_currentStep;
  if ((currentStep & 0xFFFFFFFE) == 6)
  {
    [(HPSUISpatialProfileAnalytics *)self->_enrollmentAnalytics incrementRightEarOcclusionCount];
    currentStep = self->_currentStep;
  }

  if ((currentStep & 0xFFFFFFFE) == 0xA)
  {
    [(HPSUISpatialProfileAnalytics *)self->_enrollmentAnalytics incrementLeftEarOcclusionCount];
  }

  [(HPSUISpatialProfileEnrollmentController *)self pauseEnrollment];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__HPSUISpatialProfileEnrollmentController_alertOcclusionWarning__block_invoke;
  block[3] = &unk_1E7970208;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __64__HPSUISpatialProfileEnrollmentController_alertOcclusionWarning__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) getBudsInEarString];
  [*(a1 + 32) clearBoundingBox];
  [*(*(a1 + 32) + 1144) pauseProgressPlayer];
  [*(*(a1 + 32) + 1144) pauseEnrollGuidancePlayer];
  [*(a1 + 32) forceBlur];
  v3 = *(*(a1 + 32) + 1032);
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"OCCLUSION_EAR" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v3 setTitle:v5];

  v6 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"Buds In ear";
    if (!v2)
    {
      v7 = @"General";
    }

    v8 = *(a1 + 32);
    v9 = *(v8 + 1584);
    v10 = *(v8 + 1592);
    *buf = 138412802;
    v24 = v7;
    v25 = 2048;
    v26 = v9;
    v27 = 2048;
    v28 = v10;
    _os_log_impl(&dword_1AC1C3000, v6, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Error Message *** Occlusion detection warning shown to user : %@ Current Yaw %f Candidate Yaw %f", buf, 0x20u);
  }

  v11 = *(a1 + 32);
  if (v2)
  {
    v12 = *(v11 + 1032);
    v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v14 = v13;
    v15 = v2;
LABEL_11:
    v17 = [v13 localizedStringForKey:v15 value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
    [v12 setDetailText:v17];

    goto LABEL_12;
  }

  v16 = *(v11 + 1252) & 0xFFFFFFFE;
  if (v16 == 6)
  {
    v12 = *(v11 + 1032);
    v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v14 = v13;
    v15 = @"OCCLUSION_EAR_DETAIL_RIGHT";
    goto LABEL_11;
  }

  if (v16 == 10)
  {
    v12 = *(v11 + 1032);
    v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v14 = v13;
    v15 = @"OCCLUSION_EAR_DETAIL_LEFT";
    goto LABEL_11;
  }

LABEL_12:
  v18 = dispatch_group_create();
  dispatch_group_enter(v18);
  v19 = *(*(a1 + 32) + 1144);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __64__HPSUISpatialProfileEnrollmentController_alertOcclusionWarning__block_invoke_607;
  v21[3] = &unk_1E7970208;
  v22 = v18;
  v20 = v18;
  [v19 triggerSoundHapticForEnrollmentState:19 completion:v21];
  [*(a1 + 32) showOcclusionContinueButton];
}

- (void)continueOcclusionWarning
{
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Occlusion Continue Button Tapped", buf, 2u);
  }

  [(HPSUISpatialProfileEnrollmentController *)self resumeEnrollment];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__HPSUISpatialProfileEnrollmentController_continueOcclusionWarning__block_invoke;
  block[3] = &unk_1E7970208;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  self->_isEarOccluded = 0;
  self->_earOcclusionDetectTracker = 0;
  [(HPSUISpatialProfileSoundHapticManager *)self->_soundHapticManager playProgressPlayer:self->_currentStep];
  [(HPSUISpatialProfileEnrollmentController *)self startOcclusionWarnCoolDownTimer];
}

uint64_t __67__HPSUISpatialProfileEnrollmentController_continueOcclusionWarning__block_invoke(uint64_t a1)
{
  [*(a1 + 32) cancelBlur];
  [*(a1 + 32) hideOcclusionContinueButton];
  v2 = *(a1 + 32);

  return [v2 updateEarEnrollText];
}

- (void)updateEarEnrollText
{
  v3 = self->_currentStep - 6;
  if (v3 <= 5 && ((0x33u >> v3) & 1) != 0)
  {
    v5 = off_1E7970578[v3];
    v6 = off_1E79705A8[v3];
    infoView = self->_infoView;
    v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:v5 value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
    [(OBHeaderView *)infoView setTitle:v9];

    v10 = self->_infoView;
    v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v11 = [v12 localizedStringForKey:v6 value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
    [(OBHeaderView *)v10 setDetailText:v11];
  }
}

- (void)startEarEnrollWarningTimer
{
  if (self->_startEarEnrollWarningCoolDownTimer)
  {
    v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Wrong ear check", buf, 2u);
    }

    [(NSTimer *)self->_startEarEnrollWarningCoolDownTimer invalidate];
    startEarEnrollWarningCoolDownTimer = self->_startEarEnrollWarningCoolDownTimer;
    self->_startEarEnrollWarningCoolDownTimer = 0;
  }

  self->_supressEarEnrollWarning = 1;
  v5 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1AC1C3000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Wrong ear check shown, wait some time before showing again", v8, 2u);
  }

  v6 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_triggerstartEarEnrollWarningTimer selector:0 userInfo:0 repeats:3.0];
  v7 = self->_startEarEnrollWarningCoolDownTimer;
  self->_startEarEnrollWarningCoolDownTimer = v6;
}

- (void)triggerstartEarEnrollWarningTimer
{
  self->_supressEarEnrollWarning = 0;
  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Wrong Ear warning Process Timeout", v3, 2u);
  }
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

    [(HPSUISpatialProfileEnrollmentController *)self stopPostProcessTimer];
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

  [(HPSUISpatialProfileEnrollmentController *)self moveToStep:19];
}

- (void)didReceiveStateUpdateForSession:(id)a3 stateInfo:(id)a4
{
  v228 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E69A2AC0];
  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69A2AC0]];
  if (!v9 || (v10 = v9, [v7 objectForKeyedSubscript:*v8], v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [HPSUISpatialProfileEnrollmentController didReceiveStateUpdateForSession:stateInfo:];
  }

  v12 = [v7 objectForKeyedSubscript:*v8];
  *&v13 = COERCE_DOUBLE([v12 integerValue]);

  v14 = MEMORY[0x1E69A2A98];
  v15 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69A2A98]];

  if (v15)
  {
    [v7 objectForKeyedSubscript:*v14];
    v16 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v17 = v16;
    if (v16 != 0.0)
    {
      [*&v16 code];
      v18 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v202 = v17;
        _os_log_impl(&dword_1AC1C3000, v18, OS_LOG_TYPE_DEFAULT, "Spatial Profile: didReceiveStateUpdateForSession  ERROR: %@ ", buf, 0xCu);
      }

      if (self->_currentStep != 19)
      {
        [(HPSUISpatialProfileEnrollmentController *)self moveToStep:19];
      }

      v19 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [HPSUISpatialProfileEnrollmentController didReceiveStateUpdateForSession:? stateInfo:?];
      }
    }
  }

  if (self->_sessionState != v13)
  {
    v20 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v202 = *&v13;
      _os_log_impl(&dword_1AC1C3000, v20, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Frame Rate : Update Session %lu", buf, 0xCu);
    }

    self->_sessionState = v13;
  }

  if ((v13 - 1) <= 1)
  {
    [(HPSUISpatialProfileAnalytics *)self->_enrollmentAnalytics incrementFrameCount];
  }

  v21 = MEMORY[0x1E69A2AB0];
  v22 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69A2AB0]];

  if (v22)
  {
    v23 = [v7 objectForKeyedSubscript:*v21];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [HPSUISpatialProfileEnrollmentController didReceiveStateUpdateForSession:stateInfo:];
    }

    v24 = [v7 objectForKeyedSubscript:*v21];
    [v24 doubleValue];
    v26 = v25;
  }

  else
  {
    v26 = 0.0;
  }

  v27 = 0x1EB54B000;
  if (v13 > 2)
  {
    if (v13 != 3)
    {
      if (v13 == 4)
      {
        v67 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AC1C3000, v67, OS_LOG_TYPE_DEFAULT, "Spatial Profile: State Update: Retrieve Profile", buf, 2u);
        }

        currentStep = self->_currentStep;
        if (currentStep == 9 || currentStep == 5)
        {
          v69 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AC1C3000, v69, OS_LOG_TYPE_DEFAULT, "Spatial Profile: detected Post Process when in  Tutorial View, Pivot to next step. ", buf, 2u);
          }

          [(HPSUISpatialProfileEnrollmentController *)self continueButtonTapped];
          currentStep = self->_currentStep;
        }

        if (currentStep != 12)
        {
          if (currentStep <= 10)
          {
            [(HPSUISpatialProfileEnrollmentController *)self moveToStep:11];
          }

          [(HPSUISpatialProfileEnrollmentController *)self moveToStep:12];
        }

        [(HPSUISpatialProfileEnrollmentController *)self moveToStep:14];
        [(HPSUISpatialProfileAnalytics *)self->_enrollmentAnalytics updateSoundProfileCreationDuration];
      }

      else if (v13 == 5)
      {
        v43 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          [HPSUISpatialProfileEnrollmentController didReceiveStateUpdateForSession:stateInfo:];
        }

        [(HPSUISpatialProfileAnalytics *)self->_enrollmentAnalytics updateStatus:0 EnrollmentResult:@"Failed"];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __85__HPSUISpatialProfileEnrollmentController_didReceiveStateUpdateForSession_stateInfo___block_invoke_621;
        block[3] = &unk_1E7970208;
        block[4] = self;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }

      goto LABEL_274;
    }

    [(HPSUISpatialProfileAnalytics *)self->_enrollmentAnalytics updateSoundProfileCreationDurationStart];
    v48 = self->_currentStep;
    if (v48 <= 11 && (v48 == 9 || v48 == 5))
    {
      v49 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC1C3000, v49, OS_LOG_TYPE_DEFAULT, "Spatial Profile: detected Post Process when in  Tutorial View, Pivot to next step. ", buf, 2u);
      }

      v50 = self->_currentStep;
      if (v50 != 12)
      {
        if (v50 <= 10)
        {
          [(HPSUISpatialProfileEnrollmentController *)self moveToStep:11];
        }

        [(HPSUISpatialProfileEnrollmentController *)self moveToStep:12];
      }
    }

    v44 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v51 = self->_currentStep;
      *buf = 67109120;
      LODWORD(v202) = v51;
      v45 = "Spatial Profile: State Update: Post Process : %d";
      v46 = v44;
      v47 = 8;
      goto LABEL_51;
    }

LABEL_52:

    goto LABEL_274;
  }

  if (*&v13 == 0.0)
  {
    v44 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v45 = "Spatial Profile: State Update: Idle";
      v46 = v44;
      v47 = 2;
LABEL_51:
      _os_log_impl(&dword_1AC1C3000, v46, OS_LOG_TYPE_DEFAULT, v45, buf, v47);
      goto LABEL_52;
    }

    goto LABEL_52;
  }

  if (v13 != 1)
  {
    if (v13 != 2)
    {
      goto LABEL_274;
    }

    v28 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69A2A90]];
    v29 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69A2AA8]];
    v30 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69A2AB8]];
    v31 = [v28 earCaptureStatus];
    [v28 earBoundingBox];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    [(HPSUISpatialProfileEnrollmentController *)self updateCurrentTrackingEar:v29 rightEarPoseStatus:v30 earBoundingBox:v31 earStatus:?];
    v40 = self->_currentStep;
    if (v40 == 9)
    {
      if (self->_currentTrackingEar == 1)
      {
        v41 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v42 = "Spatial Profile: Deteceted Left Ear when in Tutorial View, Pivot to enrollment ";
          goto LABEL_164;
        }

LABEL_165:

        [(HPSUISpatialProfileEnrollmentController *)self continueButtonTapped];
      }

LABEL_273:

      goto LABEL_274;
    }

    if (v40 == 5)
    {
      if (self->_currentTrackingEar == 2)
      {
        v41 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v42 = "Spatial Profile: Deteceted Right Ear when in Tutorial View, Pivot to right ear enrollment ";
LABEL_164:
          _os_log_impl(&dword_1AC1C3000, v41, OS_LOG_TYPE_DEFAULT, v42, buf, 2u);
          goto LABEL_165;
        }

        goto LABEL_165;
      }

      goto LABEL_273;
    }

    v100 = sharedBluetoothSettingsLogComponent();
    v174 = v30;
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
    {
      v167 = v28;
      *&v154 = COERCE_DOUBLE(@"NO");
      if (v29 && [v29 hasYawAngle])
      {
        *&v154 = COERCE_DOUBLE(@"YES");
      }

      v170 = v29;
      v155 = @"NO";
      if (v174)
      {
        if ([v174 hasYawAngle])
        {
          v155 = @"YES";
        }

        else
        {
          v155 = @"NO";
        }
      }

      if (v170)
      {
        if ([v170 hasYawAngle])
        {
          [v170 currentYawAngle];
          v156 = v161;
        }

        else
        {
          v156 = 0xC059000000000000;
        }

        if ([v170 hasPitchAngle])
        {
          [v170 currentPitchAngle];
          v157 = v162;
        }

        else
        {
          v157 = 0xC059000000000000;
        }
      }

      else
      {
        v156 = 0xC059000000000000;
        v157 = 0xC059000000000000;
      }

      if (v174)
      {
        if ([v174 hasYawAngle])
        {
          [v174 currentYawAngle];
          v163 = v165;
        }

        else
        {
          v163 = 0xC059000000000000;
        }

        if ([v174 hasPitchAngle])
        {
          [v174 currentPitchAngle];
        }

        else
        {
          v164 = 0xC059000000000000;
        }
      }

      else
      {
        v163 = 0xC059000000000000;
        v164 = 0xC059000000000000;
      }

      v166 = @"YES";
      if (!self->_earBoundingBoxDetected)
      {
        v166 = @"NO";
      }

      *buf = 138415106;
      v202 = *&v154;
      v203 = 2112;
      v204 = v155;
      v205 = 2048;
      v206 = v156;
      v207 = 2048;
      v208 = v157;
      v209 = 2048;
      v210 = v163;
      v211 = 2048;
      v212 = v164;
      v213 = 2112;
      v214 = v166;
      v215 = 2048;
      v216 = v33;
      v217 = 2048;
      v218 = v35;
      v219 = 2048;
      v220 = v37;
      v221 = 2048;
      v222 = v39;
      v223 = 1024;
      v224 = v31;
      _os_log_debug_impl(&dword_1AC1C3000, v100, OS_LOG_TYPE_DEBUG, "Spatial Profile: Left :%@ Right:%@ Yaw-Pitch left (%f ,%f) Right (%f ,%f)Ear Bounding Box: : %@ origin(%f, %f), size(%f, %f) Status %d", buf, 0x76u);
      v27 = 0x1EB54B000;
      v28 = v167;
      v29 = v170;
      v30 = v174;
    }

    if (self->_enrollmentPaused)
    {
LABEL_188:
      if (v30)
      {
        if ([(HPSUISpatialProfileEnrollmentController *)self isPresentingWrongEar])
        {
          v109 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
          if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AC1C3000, v109, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Seeing Left ear When Right is not completed", buf, 2u);
          }

          if (!self->_enrollmentPaused)
          {
            v185[0] = MEMORY[0x1E69E9820];
            v185[1] = 3221225472;
            v185[2] = __85__HPSUISpatialProfileEnrollmentController_didReceiveStateUpdateForSession_stateInfo___block_invoke_619;
            v185[3] = &unk_1E7970208;
            v185[4] = self;
            dispatch_async(MEMORY[0x1E69E96A0], v185);
          }
        }

        else
        {
          v167 = v28;
          v168 = v29;
          v183 = 0u;
          v184 = 0u;
          v181 = 0u;
          v182 = 0u;
          v110 = [v30 yawAngles];
          v111 = [v110 countByEnumeratingWithState:&v181 objects:v200 count:16];
          if (v111)
          {
            v112 = v111;
            v113 = 0;
            v114 = *v182;
            do
            {
              for (i = 0; i != v112; ++i)
              {
                if (*v182 != v114)
                {
                  objc_enumerationMutation(v110);
                }

                v116 = *(*(&v181 + 1) + 8 * i);
                [v116 angle];
                v118 = -v117;
                if (v117 <= -11.0)
                {
                  v122 = v117;
                  v123 = [v116 captured];
                  if (v122 >= -13.0)
                  {
                    if (v123 && !self->_rightEarMidCaptured)
                    {
                      v127 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
                      if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
                      {
                        [v116 angle];
                        *buf = 134218240;
                        v202 = v118;
                        v203 = 2048;
                        v204 = v128;
                        _os_log_impl(&dword_1AC1C3000, v127, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Right Ear: Mid Captured: %f (%f)", buf, 0x16u);
                      }

                      v113 = 1;
                      self->_rightEarMidCaptured = 1;
                      v129 = CACurrentMediaTime();
                      self->_lastEarCaptureTime = v129;
                      self->_enrollGuidancePitch = 0.5;
                      LODWORD(v129) = 0.5;
                      [(HPSUISpatialProfileSoundHapticManager *)self->_soundHapticManager setEnrollGuidancePitch:v129];
                      [(HPSUISpatialProfileEnrollmentController *)self earCentralPartCaptured];
                      [(HPSUISpatialProfileAnalytics *)self->_enrollmentAnalytics updateRightEarMidAnglelDuration];
                    }
                  }

                  else if (v123 && !self->_rightEarFrontCaptured)
                  {
                    v124 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
                    if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
                    {
                      [v116 angle];
                      *buf = 134218240;
                      v202 = v118;
                      v203 = 2048;
                      v204 = v125;
                      _os_log_impl(&dword_1AC1C3000, v124, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Right Ear: Front Captured: %f (%f)", buf, 0x16u);
                    }

                    v113 = 1;
                    self->_rightEarFrontCaptured = 1;
                    v126 = CACurrentMediaTime();
                    self->_lastEarCaptureTime = v126;
                    self->_enrollGuidancePitch = 0.5;
                    LODWORD(v126) = 0.5;
                    [(HPSUISpatialProfileSoundHapticManager *)self->_soundHapticManager setEnrollGuidancePitch:v126];
                    [(HPSUISpatialProfileAnalytics *)self->_enrollmentAnalytics updateRightEarFrontAnglelDuration];
                    [(HPSUISpatialProfileEnrollmentController *)self earLeftPartCaptured];
                  }
                }

                else if ([v116 captured] && !self->_rightEarRearCaptured)
                {
                  v119 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
                  if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
                  {
                    [v116 angle];
                    *buf = 134218240;
                    v202 = v118;
                    v203 = 2048;
                    v204 = v120;
                    _os_log_impl(&dword_1AC1C3000, v119, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Right Ear: Rear Captured: %f (%f)", buf, 0x16u);
                  }

                  v113 = 1;
                  self->_rightEarRearCaptured = 1;
                  self->_lastEarCaptureTime = CACurrentMediaTime();
                  [(HPSUISpatialProfileEnrollmentController *)self earRightPartCaptured];
                  self->_enrollGuidancePitch = 0.5;
                  LODWORD(v121) = 0.5;
                  [(HPSUISpatialProfileSoundHapticManager *)self->_soundHapticManager setEnrollGuidancePitch:v121];
                  [(HPSUISpatialProfileAnalytics *)self->_enrollmentAnalytics updateRightEarBackAnglelDuration];
                }
              }

              v112 = [v110 countByEnumeratingWithState:&v181 objects:v200 count:16];
            }

            while (v112);
          }

          else
          {
            v113 = 0;
          }

          v130 = [v174 remainingYawAngles];
          if ([v130 count])
          {

            v27 = 0x1EB54B000;
            v28 = v167;
            v29 = v168;
            goto LABEL_227;
          }

          rightEarCaptured = self->_rightEarCaptured;

          v27 = 0x1EB54B000;
          v28 = v167;
          v29 = v168;
          if (rightEarCaptured)
          {
LABEL_227:
            if (v29)
            {
              if ([(HPSUISpatialProfileEnrollmentController *)self isPresentingWrongEar])
              {
                v133 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
                v30 = v174;
                if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1AC1C3000, v133, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Seeing Left ear When Right is not completed", buf, 2u);
                }

                if (!self->_enrollmentPaused)
                {
                  v180[0] = MEMORY[0x1E69E9820];
                  v180[1] = 3221225472;
                  v180[2] = __85__HPSUISpatialProfileEnrollmentController_didReceiveStateUpdateForSession_stateInfo___block_invoke_620;
                  v180[3] = &unk_1E7970208;
                  v180[4] = self;
                  dispatch_async(MEMORY[0x1E69E96A0], v180);
                  if ((v113 & 1) == 0)
                  {
                    goto LABEL_273;
                  }

                  goto LABEL_272;
                }
              }

              else if (self->_rightEarStatus == 3)
              {
                v167 = v28;
                v169 = v29;
                v178 = 0u;
                v179 = 0u;
                v176 = 0u;
                v177 = 0u;
                v134 = [v29 yawAngles];
                v135 = [v134 countByEnumeratingWithState:&v176 objects:v199 count:16];
                if (v135)
                {
                  v136 = v135;
                  v137 = *v177;
                  do
                  {
                    for (j = 0; j != v136; ++j)
                    {
                      if (*v177 != v137)
                      {
                        objc_enumerationMutation(v134);
                      }

                      v139 = *(*(&v176 + 1) + 8 * j);
                      [v139 angle];
                      v141 = -v140;
                      if (v140 >= -13.0)
                      {
                        v145 = v140;
                        v146 = [v139 captured];
                        if (v145 <= -11.0)
                        {
                          if (v146 && !self->_leftEarMidCaptured)
                          {
                            v150 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
                            if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
                            {
                              [v139 angle];
                              *buf = 134218240;
                              v202 = v141;
                              v203 = 2048;
                              v204 = v151;
                              _os_log_impl(&dword_1AC1C3000, v150, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Left Ear: Mid Captured: %f (%f)", buf, 0x16u);
                            }

                            v113 = 1;
                            self->_leftEarMidCaptured = 1;
                            v152 = CACurrentMediaTime();
                            self->_lastEarCaptureTime = v152;
                            self->_enrollGuidancePitch = 0.5;
                            LODWORD(v152) = 0.5;
                            [(HPSUISpatialProfileSoundHapticManager *)self->_soundHapticManager setEnrollGuidancePitch:v152];
                            [(HPSUISpatialProfileEnrollmentController *)self earCentralPartCaptured];
                            [(HPSUISpatialProfileAnalytics *)self->_enrollmentAnalytics updateLeftEarMidAnglelDuration];
                          }
                        }

                        else if (v146 && !self->_leftEarFrontCaptured)
                        {
                          v147 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
                          if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
                          {
                            [v139 angle];
                            *buf = 134218240;
                            v202 = v141;
                            v203 = 2048;
                            v204 = v148;
                            _os_log_impl(&dword_1AC1C3000, v147, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Left Ear: Rear Captured: %f (%f)", buf, 0x16u);
                          }

                          v113 = 1;
                          self->_leftEarFrontCaptured = 1;
                          v149 = CACurrentMediaTime();
                          self->_lastEarCaptureTime = v149;
                          self->_enrollGuidancePitch = 0.5;
                          LODWORD(v149) = 0.5;
                          [(HPSUISpatialProfileSoundHapticManager *)self->_soundHapticManager setEnrollGuidancePitch:v149];
                          [(HPSUISpatialProfileEnrollmentController *)self earLeftPartCaptured];
                          [(HPSUISpatialProfileAnalytics *)self->_enrollmentAnalytics updateLeftEarBackAnglelDuration];
                        }
                      }

                      else if ([v139 captured] && !self->_leftEarRearCaptured)
                      {
                        v142 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
                        if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
                        {
                          [v139 angle];
                          *buf = 134218240;
                          v202 = v141;
                          v203 = 2048;
                          v204 = v143;
                          _os_log_impl(&dword_1AC1C3000, v142, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Left Ear: Front Captured: %f (%f)", buf, 0x16u);
                        }

                        v113 = 1;
                        self->_leftEarRearCaptured = 1;
                        v144 = CACurrentMediaTime();
                        self->_lastEarCaptureTime = v144;
                        self->_enrollGuidancePitch = 0.5;
                        LODWORD(v144) = 0.5;
                        [(HPSUISpatialProfileSoundHapticManager *)self->_soundHapticManager setEnrollGuidancePitch:v144];
                        [(HPSUISpatialProfileEnrollmentController *)self earRightPartCaptured];
                        [(HPSUISpatialProfileAnalytics *)self->_enrollmentAnalytics updateLeftEarFrontAnglelDuration];
                      }
                    }

                    v136 = [v134 countByEnumeratingWithState:&v176 objects:v199 count:16];
                  }

                  while (v136);
                }

                v29 = v169;
                v153 = [v169 remainingYawAngles];
                if ([v153 count])
                {

                  v27 = 0x1EB54B000;
                  v28 = v167;
                }

                else
                {
                  leftEarCaptured = self->_leftEarCaptured;

                  v27 = 0x1EB54B000uLL;
                  v28 = v167;
                  if (!leftEarCaptured)
                  {
                    v160 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
                    if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_1AC1C3000, v160, OS_LOG_TYPE_DEFAULT, "Spatial Profile: State Update: Left Ear Captured", buf, 2u);
                    }

                    self->_leftEarCaptured = 1;
                    [(HPSUISpatialProfileEnrollmentController *)self moveToStep:12];
                    v30 = v174;
                    goto LABEL_273;
                  }
                }
              }
            }

            v30 = v174;
            if ((v113 & 1) == 0)
            {
              goto LABEL_273;
            }

LABEL_272:
            [(HPSUISpatialProfileEnrollmentController *)self startOcclusionWarnCoolDownTimer];
            [(HPSUISpatialProfileEnrollmentController *)self startEarDistanceWarnCoolDownTimer];
            goto LABEL_273;
          }

          v132 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
          if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AC1C3000, v132, OS_LOG_TYPE_DEFAULT, "Spatial Profile: State Update: Right Ear Captured", buf, 2u);
          }

          self->_rightEarCaptured = 1;
          [(HPSUISpatialProfileEnrollmentController *)self moveToStep:8];
        }
      }

      v113 = 0;
      goto LABEL_227;
    }

    v230.origin.x = v33;
    v230.origin.y = v35;
    v230.size.width = v37;
    v230.size.height = v39;
    if (!CGRectEqualToRect(v230, *MEMORY[0x1E695F058]))
    {
      v101 = [(HPSUISpatialProfileVideoCaptureSession *)self->videoCaptureSession previewLayer];
      [v101 frame];
      [(HPSUISpatialProfileEnrollmentController *)self translateEarBoundingBox:v33 previewLayerBoundingBox:v35, v37, v39, v102, v103, v104, v105];

      if (!self->_rightEarDetected && self->_currentStep == 6)
      {
        v106 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
        if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AC1C3000, v106, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Right Ear Detected", buf, 2u);
        }

        self->_rightEarDetected = 1;
        [(HPSUISpatialProfileEnrollmentController *)self moveToStep:7];
      }

      if (!self->_leftEarDetected && self->_currentStep == 10)
      {
        v107 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
        if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AC1C3000, v107, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Left Ear Detected", buf, 2u);
        }

        [(HPSUISpatialProfileEnrollmentController *)self pauseEnrollment];
        self->_leftEarDetected = 1;
        [(HPSUISpatialProfileEnrollmentController *)self moveToStep:11];
      }
    }

    [(HPSUISpatialProfileEnrollmentController *)self updateBoundingBoxHiddenStatus];
    if ([(HPSUISpatialProfileEnrollmentController *)self isEarTooClose])
    {
      v108 = 3;
    }

    else if ([(HPSUISpatialProfileEnrollmentController *)self isEarTooFar])
    {
      v108 = 4;
    }

    else
    {
      if (![(HPSUISpatialProfileEnrollmentController *)self isEarMovingFast])
      {
        goto LABEL_186;
      }

      v108 = 5;
    }

    [(HPSUISpatialProfileEnrollmentController *)self alertEarDistanceWarning:v108];
LABEL_186:
    if ([(HPSUISpatialProfileEnrollmentController *)self isEarOccluded])
    {
      [(HPSUISpatialProfileEnrollmentController *)self alertOcclusionWarning];
    }

    goto LABEL_188;
  }

  v52 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69A2AA0]];
  v53 = v52;
  if (v52)
  {
    [v52 faceBoundingBox];
    if (!CGRectEqualToRect(v229, *MEMORY[0x1E695F058]) && !self->_faceCaptured)
    {
      [v53 faceBoundingBox];
      [(HPSUISpatialProfileEnrollmentController *)self updateFaceTrackingStatus:?];
    }

    v172 = v6;
    v173 = v53;
    v171 = v7;
    if (!self->_faceStraightZeroAngleCaptured)
    {
      v197 = 0u;
      v198 = 0u;
      v195 = 0u;
      v196 = 0u;
      v54 = [v53 yawAngles];
      v55 = [v54 countByEnumeratingWithState:&v195 objects:v227 count:16];
      if (v55)
      {
        v56 = v55;
        v57 = *v196;
        do
        {
          for (k = 0; k != v56; ++k)
          {
            if (*v196 != v57)
            {
              objc_enumerationMutation(v54);
            }

            v59 = *(*(&v195 + 1) + 8 * k);
            [v59 angle];
            if (v60 == 0.0 && [v59 captured])
            {
              self->_faceStraightZeroAngleCaptured = 1;
              v61 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
              {
                [v59 angle];
                v63 = v62;
                v64 = [v59 captured];
                *buf = 134218240;
                v202 = v63;
                v203 = 1024;
                LODWORD(v204) = v64;
                _os_log_impl(&dword_1AC1C3000, v61, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Captured straight face angle %f ->  %d", buf, 0x12u);
              }
            }
          }

          v56 = [v54 countByEnumeratingWithState:&v195 objects:v227 count:16];
        }

        while (v56);
      }

      v53 = v173;
    }

    if ([v53 hasYawAngle] && objc_msgSend(v53, "hasPitchAngle"))
    {
      if (self->_faceDetected || !self->_faceStraightZeroAngleCaptured || self->_currentStep != 2)
      {
        goto LABEL_97;
      }

      v65 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC1C3000, v65, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Fill up Straight angle: Transition to View CaptureMoveHead", buf, 2u);
      }

      self->_faceDetected = 1;
      v66 = 3;
    }

    else
    {
      if (!self->_faceDetected || self->_currentStep != 3)
      {
        goto LABEL_97;
      }

      v70 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC1C3000, v70, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Face NOT Detected, Return to previous step", buf, 2u);
      }

      self->_faceDetected = 0;
      v66 = 2;
    }

    [(HPSUISpatialProfileEnrollmentController *)self moveToStep:v66];
LABEL_97:
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v71 = [v53 yawAngles];
    v72 = [v71 countByEnumeratingWithState:&v191 objects:v226 count:16];
    if (!v72)
    {
      goto LABEL_126;
    }

    v73 = v72;
    v74 = *v192;
    while (1)
    {
      for (m = 0; m != v73; ++m)
      {
        if (*v192 != v74)
        {
          objc_enumerationMutation(v71);
        }

        v76 = *(*(&v191 + 1) + 8 * m);
        if (self->_faceDetected)
        {
          [*(*(&v191 + 1) + 8 * m) angle];
          if (v77 > 0.0 && [v76 captured] && !self->_faceRightFilled)
          {
            v82 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
            if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
            {
              [v76 angle];
              *buf = 134217984;
              v202 = v83;
              _os_log_impl(&dword_1AC1C3000, v82, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Fill up Right with Yaw: %f", buf, 0xCu);
            }

            self->_faceRightFilled = 1;
            if (self->_faceUpFilled)
            {
              [(HPSUISpatialProfileEnrollmentController *)self fillFacePillsByDirection:0];
            }

            if (self->_faceDownFilled)
            {
              v81 = 0;
LABEL_122:
              [(HPSUISpatialProfileEnrollmentController *)self fillFacePillsByDirection:v81];
            }

LABEL_123:
            [(HPSUISpatialProfileEnrollmentController *)self fillFacePillsByDirection:0];
            continue;
          }
        }

        if (self->_faceDetected)
        {
          [v76 angle];
          if (v78 < 0.0 && [v76 captured] && !self->_faceLeftFilled)
          {
            v79 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
            {
              [v76 angle];
              *buf = 134217984;
              v202 = v80;
              _os_log_impl(&dword_1AC1C3000, v79, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Fill up Left with Yaw: %f", buf, 0xCu);
            }

            self->_faceLeftFilled = 1;
            if (self->_faceUpFilled)
            {
              [(HPSUISpatialProfileEnrollmentController *)self fillFacePillsByDirection:0];
            }

            if (self->_faceDownFilled)
            {
              v81 = 5;
              goto LABEL_122;
            }

            goto LABEL_123;
          }
        }
      }

      v73 = [v71 countByEnumeratingWithState:&v191 objects:v226 count:16];
      if (!v73)
      {
LABEL_126:

        v189 = 0u;
        v190 = 0u;
        v187 = 0u;
        v188 = 0u;
        v84 = [v173 pitchAngles];
        v85 = [v84 countByEnumeratingWithState:&v187 objects:v225 count:16];
        if (!v85)
        {
          goto LABEL_154;
        }

        v86 = v85;
        v87 = *v188;
        while (1)
        {
          for (n = 0; n != v86; ++n)
          {
            if (*v188 != v87)
            {
              objc_enumerationMutation(v84);
            }

            v89 = *(*(&v187 + 1) + 8 * n);
            if (self->_faceDetected)
            {
              [*(*(&v187 + 1) + 8 * n) angle];
              if (v90 > 0.0 && [v89 captured] && !self->_faceUpFilled)
              {
                v95 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
                if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
                {
                  [v89 angle];
                  *buf = 134217984;
                  v202 = v96;
                  _os_log_impl(&dword_1AC1C3000, v95, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Fill up Up with Pitch: %f", buf, 0xCu);
                }

                self->_faceUpFilled = 1;
                if (self->_faceLeftFilled)
                {
                  [(HPSUISpatialProfileEnrollmentController *)self fillFacePillsByDirection:0];
                }

                v94 = 2;
                if (!self->_faceRightFilled)
                {
                  goto LABEL_151;
                }

LABEL_150:
                [(HPSUISpatialProfileEnrollmentController *)self fillFacePillsByDirection:0];
LABEL_151:
                [(HPSUISpatialProfileEnrollmentController *)self fillFacePillsByDirection:v94];
                continue;
              }
            }

            if (self->_faceDetected)
            {
              [v89 angle];
              if (v91 < 0.0 && [v89 captured] && !self->_faceDownFilled)
              {
                v92 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
                if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
                {
                  [v89 angle];
                  *buf = 134217984;
                  v202 = v93;
                  _os_log_impl(&dword_1AC1C3000, v92, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Fill up Down with Pitch: %f", buf, 0xCu);
                }

                self->_faceDownFilled = 1;
                if (self->_faceLeftFilled)
                {
                  [(HPSUISpatialProfileEnrollmentController *)self fillFacePillsByDirection:5];
                }

                v94 = 6;
                if (!self->_faceRightFilled)
                {
                  goto LABEL_151;
                }

                goto LABEL_150;
              }
            }
          }

          v86 = [v84 countByEnumeratingWithState:&v187 objects:v225 count:16];
          if (!v86)
          {
LABEL_154:

            v7 = v171;
            v6 = v172;
            v27 = 0x1EB54B000uLL;
            v53 = v173;
            goto LABEL_155;
          }
        }
      }
    }
  }

LABEL_155:
  if (v26 == 1.0 && !self->_faceCaptured)
  {
    v97 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      [(BKUIPearlEnrollView *)self->_enrollView percentOfPillsCompleted];
      *buf = 134217984;
      v202 = v98;
      _os_log_impl(&dword_1AC1C3000, v97, OS_LOG_TYPE_DEFAULT, "Spatial Profile: State Update: Face Captured %f", buf, 0xCu);
    }

    self->_faceCaptured = 1;
    *(&self->super.super.super.isa + *(v27 + 1228)) = 0;
    v99 = dispatch_get_global_queue(21, 0);
    v186[0] = MEMORY[0x1E69E9820];
    v186[1] = 3221225472;
    v186[2] = __85__HPSUISpatialProfileEnrollmentController_didReceiveStateUpdateForSession_stateInfo___block_invoke;
    v186[3] = &unk_1E7970208;
    v186[4] = self;
    dispatch_async(v99, v186);
  }

LABEL_274:
  v159 = *(v27 + 1228);
  if (*(&self->super.super.super.isa + v159) != v26)
  {
    *(&self->super.super.super.isa + v159) = v26;
  }
}

uint64_t __85__HPSUISpatialProfileEnrollmentController_didReceiveStateUpdateForSession_stateInfo___block_invoke(uint64_t a1)
{
  sleep(1u);
  v2 = *(a1 + 32);

  return [v2 moveToStep:4];
}

uint64_t __85__HPSUISpatialProfileEnrollmentController_didReceiveStateUpdateForSession_stateInfo___block_invoke_619(uint64_t a1)
{
  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile:Enrolling Wrong ear", v4, 2u);
  }

  return [*(a1 + 32) alertEarEnrollWarning];
}

uint64_t __85__HPSUISpatialProfileEnrollmentController_didReceiveStateUpdateForSession_stateInfo___block_invoke_620(uint64_t a1)
{
  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile:Enrolling Wrong ear", v4, 2u);
  }

  return [*(a1 + 32) alertEarEnrollWarning];
}

- (void)didReceiveCaptureVideo:(id)a3 colorImage:(id)a4 depthImage:(id)a5 faceObject:(id)a6
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (self->_enrollViewInitialized)
  {
    visualDetectionQueue = self->_visualDetectionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __99__HPSUISpatialProfileEnrollmentController_didReceiveCaptureVideo_colorImage_depthImage_faceObject___block_invoke_626;
    block[3] = &unk_1E79703C8;
    v12 = v14;
    v14[0] = v9;
    v14[1] = self;
    dispatch_async(visualDetectionQueue, block);
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __99__HPSUISpatialProfileEnrollmentController_didReceiveCaptureVideo_colorImage_depthImage_faceObject___block_invoke;
    v15[3] = &unk_1E79703F0;
    v12 = v16;
    v16[0] = v8;
    v16[1] = self;
    v17 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], v15);
  }
}

void __99__HPSUISpatialProfileEnrollmentController_didReceiveCaptureVideo_colorImage_depthImage_faceObject___block_invoke(uint64_t a1)
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

    *(*(a1 + 40) + 1321) = 1;
    [*(*(a1 + 40) + 1272) setPreviewLayer:*(a1 + 32)];
    v5 = [MEMORY[0x1E695F620] contextWithOptions:0];
    v6 = *(a1 + 40);
    v7 = *(v6 + 1520);
    *(v6 + 1520) = v5;

    v8 = MEMORY[0x1E695F638];
    v9 = *MEMORY[0x1E695F5C0];
    v10 = *(*(a1 + 40) + 1520);
    v34 = *MEMORY[0x1E695F5B0];
    v35[0] = *MEMORY[0x1E695F5A8];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v12 = [v8 detectorOfType:v9 context:v10 options:v11];
    v13 = *(a1 + 40);
    v14 = *(v13 + 1528);
    *(v13 + 1528) = v12;

    v15 = [*(*(a1 + 40) + 1272) previewLayer];
    [v15 setOpacity:0.0];

    v16 = [[HPSUISpatialProfileUIPearlEnrollView alloc] initWithVideoCaptureSession:*(*(a1 + 40) + 1272) inSheet:0 squareNeedsPositionLayout:0];
    v17 = *(a1 + 40);
    v18 = *(v17 + 1152);
    *(v17 + 1152) = v16;

    [*(a1 + 40) setupEnrollViewUI];
    [*(a1 + 40) pauseEnrollment];
    v19 = *(a1 + 40) + 1112;
    Width = CVPixelBufferGetWidth([*(a1 + 48) pixelBuffer]);
    Height = CVPixelBufferGetHeight([*(a1 + 48) pixelBuffer]);
    *v19 = 0;
    *(v19 + 8) = 0;
    *(v19 + 16) = Width;
    *(v19 + 24) = Height;
    v22 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(*(a1 + 40) + 1128);
      v23 = *(*(a1 + 40) + 1136);
      v31 = 134218240;
      *v32 = v24;
      *&v32[8] = 2048;
      v33 = v23;
      _os_log_impl(&dword_1AC1C3000, v22, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Frame Size  %f %f", &v31, 0x16u);
    }

    v25 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(a1 + 40) + 1232))
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

    *(*(a1 + 40) + 1318) = 1;
    if (*(*(a1 + 40) + 1232) == 1)
    {
      v27 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 40);
        v29 = *(v28 + 1318);
        v30 = [*(v28 + 1416) available];
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

void __99__HPSUISpatialProfileEnrollmentController_didReceiveCaptureVideo_colorImage_depthImage_faceObject___block_invoke_626(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 40) + 1512);
    v3 = MEMORY[0x1E695DF20];
    v4 = [MEMORY[0x1E696AD98] numberWithInt:6];
    v5 = [v3 dictionaryWithObject:v4 forKey:*MEMORY[0x1E695F5B8]];

    v6 = [*(*(a1 + 40) + 1528) featuresInImage:*(a1 + 32) options:v5];
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
      v16 = *(v15 + 1513);
      if (v16 <= 0x63)
      {
        *(v15 + 1513) = v16 + 1;
      }
    }

    else
    {
LABEL_12:
      *(*(a1 + 40) + 1513) = 0;
    }

    *(*(a1 + 40) + 1512) = *(*(a1 + 40) + 1513) > 0x63u;
    if (v2 != *(*(a1 + 40) + 1512))
    {
      v17 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 40);
        v19 = *(v18 + 1512);
        v20 = *(v18 + 1513);
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
      if (*(v22 + 1512) == 1)
      {
        *(v22 + 1427) = 0;
        *(*(a1 + 40) + 1426) = 0;
      }
    }
  }
}

- (void)playEarCaptureSoundWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  if (self->_earCaptureSoundStep == 1)
  {
    soundHapticManager = self->_soundHapticManager;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __77__HPSUISpatialProfileEnrollmentController_playEarCaptureSoundWithCompletion___block_invoke_2;
    v12[3] = &unk_1E7970208;
    v13 = v5;
    [(HPSUISpatialProfileSoundHapticManager *)soundHapticManager triggerSoundHapticForEarCaptureState:1 completion:v12];
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
    v14[2] = __77__HPSUISpatialProfileEnrollmentController_playEarCaptureSoundWithCompletion___block_invoke;
    v14[3] = &unk_1E7970208;
    v15 = v5;
    [(HPSUISpatialProfileSoundHapticManager *)v6 triggerSoundHapticForEarCaptureState:0 completion:v14];
    v7 = v15;
  }

LABEL_7:
  ++self->_earCaptureSoundStep;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__HPSUISpatialProfileEnrollmentController_playEarCaptureSoundWithCompletion___block_invoke_3;
  block[3] = &unk_1E7970258;
  v11 = v4;
  v9 = v4;
  dispatch_group_notify(v5, MEMORY[0x1E69E96A0], block);
}

uint64_t __77__HPSUISpatialProfileEnrollmentController_playEarCaptureSoundWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)showBudsInEarPopUp:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 classicDevice];
    v7 = [v6 name];
    *buf = 138412290;
    v21 = v7;
    _os_log_impl(&dword_1AC1C3000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Device %@, bud in ear", buf, 0xCu);
  }

  v8 = [(HPSUISpatialProfileEnrollmentController *)self content];
  v9 = [v8 removeAccessoryFromEar];

  v10 = MEMORY[0x1E69DC650];
  v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:v9 value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_IN_EAR_TEXT" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  v15 = [v10 alertControllerWithTitle:v12 message:v14 preferredStyle:1];

  v16 = MEMORY[0x1E69DC648];
  v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"OK" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  v19 = [v16 actionWithTitle:v18 style:0 handler:&__block_literal_global_640];
  [v15 addAction:v19];

  [(HPSUISpatialProfileEnrollmentController *)self presentViewController:v15 animated:1 completion:0];
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
    v15 = self;
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
        if (+[HPSProductUtils isAppleHeadphone:](HPSProductUtils, "isAppleHeadphone:", v8, v15) && ([v8 isTemporaryPaired] & 1) == 0)
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
                v10 = [v9 classicDevice];
                [v10 inEarStatusPrimary:buf secondary:&v16];

                if (!*buf || !v16)
                {
                  [(HPSUISpatialProfileEnrollmentController *)v15 showBudsInEarPopUp:v9];
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
                inEarDetectDisabledPopUpShown = v15->_inEarDetectDisabledPopUpShown;
                if (!inEarDetectDisabledPopUpShown)
                {
                  v15->_inEarDetectDisabledPopUpShown = 1;
                  [(HPSUISpatialProfileEnrollmentController *)v15 showBudsInEarPopUp:v9];
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
  v14[2] = __61__HPSUISpatialProfileEnrollmentController_showLandscapeAlert__block_invoke;
  v14[3] = &unk_1E79704E0;
  v14[4] = self;
  v13 = [v10 actionWithTitle:v12 style:0 handler:v14];
  [v9 addAction:v13];

  [(HPSUISpatialProfileEnrollmentController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)fillFacePillsByDirection:(int)a3
{
  v5 = 0;
  if ((a3 - 1) <= 6)
  {
    v5 = qword_1AC30EC98[a3 - 1];
  }

  v7[6] = v3;
  v7[7] = v4;
  stepSerialQueue = self->_stepSerialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__HPSUISpatialProfileEnrollmentController_fillFacePillsByDirection___block_invoke;
  v7[3] = &unk_1E7970508;
  v7[4] = self;
  v7[5] = v5;
  dispatch_async(stepSerialQueue, v7);
}

void __68__HPSUISpatialProfileEnrollmentController_fillFacePillsByDirection___block_invoke(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __68__HPSUISpatialProfileEnrollmentController_fillFacePillsByDirection___block_invoke_2;
  v1[3] = &unk_1E7970508;
  v1[4] = *(a1 + 32);
  v1[5] = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], v1);
}

void __68__HPSUISpatialProfileEnrollmentController_fillFacePillsByDirection___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1152) pillContainer];
  [v2 fillPillsAroundAngle:*(a1 + 40)];
}

- (void)showEarPillsDots
{
  earPillContainer = self->_earPillContainer;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__HPSUISpatialProfileEnrollmentController_showEarPillsDots__block_invoke;
  v4[3] = &unk_1E7970208;
  v4[4] = self;
  [MEMORY[0x1E69DD250] transitionWithView:earPillContainer duration:5242880 options:v4 animations:0 completion:0.4];
  [(HPSUISpatialProfileEarDotsMovieView *)self->_earDotsMovieView showDots];
}

- (void)hideEarPillsDots
{
  earPillContainer = self->_earPillContainer;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__HPSUISpatialProfileEnrollmentController_hideEarPillsDots__block_invoke;
  v4[3] = &unk_1E7970208;
  v4[4] = self;
  [MEMORY[0x1E69DD250] transitionWithView:earPillContainer duration:5242880 options:v4 animations:0 completion:0.4];
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
    [(OBTrayButton *)self->_continueButton bounds];
    v6 = v5 * 0.5;
    [(OBTrayButton *)self->_continueButton bounds];
    [(UIActivityIndicatorView *)self->_spinner setCenter:v6, v7 * 0.5];
    [(UIActivityIndicatorView *)self->_spinner startAnimating];
    continueButton = self->_continueButton;
    v9 = self->_spinner;

    [(OBTrayButton *)continueButton addSubview:v9];
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
    *v7 = 0;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Start Welcome Spinner", v7, 2u);
  }

  self->_welcomeSpinnerOn = 1;
  v4 = [(OBTrayButton *)self->_continueButton titleLabel];
  [v4 setHidden:1];

  [(OBTrayButton *)self->_continueButton setUserInteractionEnabled:0];
  [(HPSUISpatialProfileEnrollmentController *)self prepareSpinner];
  spinner = self->_spinner;
  v6 = [MEMORY[0x1E69DC888] systemWhiteColor];
  [(UIActivityIndicatorView *)spinner setColor:v6];
}

- (void)stopWelcomeSpinner
{
  v12 = *MEMORY[0x1E69E9840];
  if (!self->_enrollmentReady || ![(BluetoothManager *)self->_btManager available])
  {
    v5 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      enrollmentReady = self->_enrollmentReady;
      v8 = [(BluetoothManager *)self->_btManager available];
      v9[0] = 67109376;
      v9[1] = enrollmentReady;
      v10 = 1024;
      v11 = v8;
      _os_log_impl(&dword_1AC1C3000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: stopWelcomeSpinner failed _enrollmentReady %d [_btManager available] %d", v9, 0xEu);
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
    LOWORD(v9[0]) = 0;
    _os_log_impl(&dword_1AC1C3000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stop Welcome Spinner", v9, 2u);
  }

  self->_welcomeSpinnerOn = 0;
  v6 = [(OBTrayButton *)self->_continueButton titleLabel];
  [v6 setHidden:0];

  [(OBTrayButton *)self->_continueButton setUserInteractionEnabled:1];
  [(HPSUISpatialProfileEnrollmentController *)self cleanUpSpinner];
  [(HPSUISpatialProfileEnrollmentController *)self continueButtonTapped];
}

- (void)startPostProcessSpinner
{
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Start Post Process Spinner", v8, 2u);
  }

  self->_postProcessSpinnerOn = 1;
  v4 = [(OBTrayButton *)self->_continueButton titleLabel];
  [v4 setHidden:1];

  [(OBTrayButton *)self->_continueButton setUserInteractionEnabled:0];
  v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(OBTrayButton *)self->_continueButton setTintColor:v5];

  [(HPSUISpatialProfileEnrollmentController *)self showContinueButton];
  [(HPSUISpatialProfileEnrollmentController *)self prepareSpinner];
  spinner = self->_spinner;
  v7 = [MEMORY[0x1E69DC888] systemGrayColor];
  [(UIActivityIndicatorView *)spinner setColor:v7];
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
      *v8 = 0;
      _os_log_impl(&dword_1AC1C3000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stop Post Process Spinner", v8, 2u);
    }

    self->_postProcessSpinnerOn = 0;
    v6 = [MEMORY[0x1E69DC888] systemBlueColor];
    [(OBTrayButton *)self->_continueButton setTintColor:v6];

    v7 = [(OBTrayButton *)self->_continueButton titleLabel];
    [v7 setHidden:0];

    [(OBTrayButton *)self->_continueButton setUserInteractionEnabled:1];
    [(HPSUISpatialProfileEnrollmentController *)self cleanUpSpinner];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [HPSUISpatialProfileEnrollmentController stopWelcomeSpinner];
    }
  }
}

- (void)earLeftPartCaptured
{
  stepSerialQueue = self->_stepSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__HPSUISpatialProfileEnrollmentController_earLeftPartCaptured__block_invoke;
  block[3] = &unk_1E7970208;
  block[4] = self;
  dispatch_async(stepSerialQueue, block);
}

void __62__HPSUISpatialProfileEnrollmentController_earLeftPartCaptured__block_invoke(uint64_t a1)
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  [*(a1 + 32) pulseEarBoundingBox];
  v3 = *(*(a1 + 32) + 1160);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__HPSUISpatialProfileEnrollmentController_earLeftPartCaptured__block_invoke_2;
  v10[3] = &unk_1E7970208;
  v4 = v2;
  v11 = v4;
  [v3 fillLeftPillsWithCompletion:v10];
  dispatch_group_enter(v4);
  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__HPSUISpatialProfileEnrollmentController_earLeftPartCaptured__block_invoke_3;
  v8[3] = &unk_1E7970208;
  v9 = v4;
  v6 = v4;
  [v5 playEarCaptureSoundWithCompletion:v8];
  v7 = dispatch_time(0, 3000000000);
  dispatch_group_wait(v6, v7);
}

- (void)earCentralPartCaptured
{
  stepSerialQueue = self->_stepSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__HPSUISpatialProfileEnrollmentController_earCentralPartCaptured__block_invoke;
  block[3] = &unk_1E7970208;
  block[4] = self;
  dispatch_async(stepSerialQueue, block);
}

void __65__HPSUISpatialProfileEnrollmentController_earCentralPartCaptured__block_invoke(uint64_t a1)
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  [*(a1 + 32) pulseEarBoundingBox];
  v3 = *(*(a1 + 32) + 1160);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__HPSUISpatialProfileEnrollmentController_earCentralPartCaptured__block_invoke_2;
  v10[3] = &unk_1E7970208;
  v4 = v2;
  v11 = v4;
  [v3 fillCentralPillsWithCompletion:v10];
  dispatch_group_enter(v4);
  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__HPSUISpatialProfileEnrollmentController_earCentralPartCaptured__block_invoke_3;
  v8[3] = &unk_1E7970208;
  v9 = v4;
  v6 = v4;
  [v5 playEarCaptureSoundWithCompletion:v8];
  v7 = dispatch_time(0, 3000000000);
  dispatch_group_wait(v6, v7);
}

- (void)earRightPartCaptured
{
  stepSerialQueue = self->_stepSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__HPSUISpatialProfileEnrollmentController_earRightPartCaptured__block_invoke;
  block[3] = &unk_1E7970208;
  block[4] = self;
  dispatch_async(stepSerialQueue, block);
}

void __63__HPSUISpatialProfileEnrollmentController_earRightPartCaptured__block_invoke(uint64_t a1)
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  [*(a1 + 32) pulseEarBoundingBox];
  v3 = *(*(a1 + 32) + 1160);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__HPSUISpatialProfileEnrollmentController_earRightPartCaptured__block_invoke_2;
  v10[3] = &unk_1E7970208;
  v4 = v2;
  v11 = v4;
  [v3 fillRightPillsWithCompletion:v10];
  dispatch_group_enter(v4);
  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__HPSUISpatialProfileEnrollmentController_earRightPartCaptured__block_invoke_3;
  v8[3] = &unk_1E7970208;
  v9 = v4;
  v6 = v4;
  [v5 playEarCaptureSoundWithCompletion:v8];
  v7 = dispatch_time(0, 3000000000);
  dispatch_group_wait(v6, v7);
}

- (void)pulseEarBoundingBox
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__HPSUISpatialProfileEnrollmentController_pulseEarBoundingBox__block_invoke;
  block[3] = &unk_1E7970208;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __62__HPSUISpatialProfileEnrollmentController_pulseEarBoundingBox__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1192) setInactive:0];
  [*(*(a1 + 32) + 1192) startScalingWithExpansionWidth:1 duration:10.0 repeatCount:0.1];
  v2 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__HPSUISpatialProfileEnrollmentController_pulseEarBoundingBox__block_invoke_2;
  block[3] = &unk_1E7970208;
  block[4] = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

- (void)clearBoundingBox
{
  self->_earBoundingBoxDetectTracker = 0;
  self->_earBoundingBoxDetected = 0;
  [(HPSUISpatialProfileEnrollmentController *)self updateBoundingBoxHiddenStatus];
}

- (void)updateBoundingBoxHiddenStatus
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(CEKSubjectIndicatorView *)self->_earBoundingBoxView isHidden];
  currentStep = self->_currentStep;
  if (currentStep == 7 || currentStep == 11)
  {
    if (v3 != self->_earBoundingBoxDetected)
    {
      return;
    }

    if (self->_earBoundingBoxDetected)
    {
      [(CEKSubjectIndicatorView *)self->_earBoundingBoxView bounds];
      if (CGRectEqualToRect(v14, *MEMORY[0x1E695F058]))
      {
        return;
      }

      v6 = 0;
      goto LABEL_12;
    }
  }

  else if (v3)
  {
    return;
  }

  v6 = 1;
LABEL_12:
  v7 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"Showing";
    if (v6)
    {
      v8 = @"Hidden";
    }

    *buf = 138412290;
    v12 = v8;
    _os_log_impl(&dword_1AC1C3000, v7, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Bouding Box Updated : %@", buf, 0xCu);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__HPSUISpatialProfileEnrollmentController_updateBoundingBoxHiddenStatus__block_invoke;
  v9[3] = &unk_1E7970530;
  v9[4] = self;
  v10 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

uint64_t __72__HPSUISpatialProfileEnrollmentController_updateBoundingBoxHiddenStatus__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __72__HPSUISpatialProfileEnrollmentController_updateBoundingBoxHiddenStatus__block_invoke_2;
  v2[3] = &unk_1E7970530;
  v2[4] = *(a1 + 32);
  v3 = *(a1 + 40);
  return [MEMORY[0x1E69DD250] animateWithDuration:v2 animations:0.3];
}

- (void)translateEarBoundingBox:(CGRect)a3 previewLayerBoundingBox:(CGRect)a4
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__HPSUISpatialProfileEnrollmentController_translateEarBoundingBox_previewLayerBoundingBox___block_invoke;
  block[3] = &unk_1E7970558;
  block[4] = self;
  v4.f64[0] = a4.size.width;
  v4.f64[1] = a4.size.height;
  _Q7 = vcvtq_f64_f32(vcvt_f32_f64(vdivq_f64(v4, self->_visageFrame.size)));
  height = a3.size.height;
  v7 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_f64(a3.size, _Q7))), xmmword_1AC30EC80));
  v8 = (0.5 * v7.f32[0]) + _Q7.f64[0] * a3.origin.x;
  __asm { FMLA            D3, D1, V7.D[1] }

  v14.f64[0] = a4.size.width - v8;
  v14.f64[1] = _D3;
  y = a4.origin.y;
  block[5] = v7;
  block[6] = vcvt_f32_f64(vaddq_f64(a4.origin, vcvtq_f64_f32(vcvt_f32_f64(v14))));
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __91__HPSUISpatialProfileEnrollmentController_translateEarBoundingBox_previewLayerBoundingBox___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __91__HPSUISpatialProfileEnrollmentController_translateEarBoundingBox_previewLayerBoundingBox___block_invoke_2;
  v2[3] = &unk_1E7970558;
  v2[4] = *(a1 + 32);
  v3 = *(a1 + 40);
  return [MEMORY[0x1E69DD250] animateWithDuration:v2 animations:0.1];
}

uint64_t __91__HPSUISpatialProfileEnrollmentController_translateEarBoundingBox_previewLayerBoundingBox___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1192) setBounds:{0.0, 0.0, *(a1 + 40), *(a1 + 44)}];
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);
  v4 = *(*(a1 + 32) + 1192);

  return [v4 setCenter:{v2, v3}];
}

- (void)updateFaceTrackingStatus:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v30 = *MEMORY[0x1E69E9840];
  faceBoundingBoxStatus = self->_faceBoundingBoxStatus;
  v9 = self->_visageFrame.size.height;
  v10 = a3.size.width / self->_visageFrame.size.width;
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

- (void)updateCurrentTrackingEar:(id)a3 rightEarPoseStatus:(id)a4 earBoundingBox:(CGRect)a5 earStatus:(int)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v89 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = v14;
  if (v13)
  {
    v78 = [v13 hasYawAngle] != 0;
    if (v15)
    {
LABEL_3:
      v77 = [v15 hasYawAngle] != 0;
      goto LABEL_6;
    }
  }

  else
  {
    v78 = 0;
    if (v14)
    {
      goto LABEL_3;
    }
  }

  v77 = 0;
LABEL_6:
  currentTrackingEar = self->_currentTrackingEar;
  earTooClose = self->_earTooClose;
  earTooFar = self->_earTooFar;
  isEarOccluded = self->_isEarOccluded;
  currentStep = self->_currentStep;
  v19 = currentStep > 0xB;
  v20 = (1 << currentStep) & 0xCC0;
  if (v19 || v20 == 0)
  {
    goto LABEL_40;
  }

  if (a6 > 2)
  {
    switch(a6)
    {
      case 3:
        if (self->_isLookingAtPhone)
        {
          goto LABEL_29;
        }

        v22 = 1443;
        earTooCloseDetectTracker = self->_earTooCloseDetectTracker;
        if (earTooCloseDetectTracker >= 6)
        {
          v24 = 5;
          goto LABEL_28;
        }

        break;
      case 4:
        v22 = 1457;
        earTooCloseDetectTracker = self->_earTooFarDetectTracker;
        if (earTooCloseDetectTracker >= 0xB)
        {
          v24 = 10;
          goto LABEL_28;
        }

        break;
      case 5:
        v22 = 1459;
        earTooCloseDetectTracker = self->_motionBlurrTracker;
        if (earTooCloseDetectTracker >= 0x1F)
        {
          v24 = 30;
LABEL_28:
          *(&self->super.super.super.isa + v22) = v24;
          goto LABEL_29;
        }

        break;
      default:
        goto LABEL_29;
    }

    goto LABEL_27;
  }

  if (a6)
  {
    if (a6 == 2 && !self->_isLookingAtPhone && !earTooClose)
    {
      v22 = 1427;
      earTooCloseDetectTracker = self->_earOcclusionDetectTracker;
      if (earTooCloseDetectTracker >= 0x15)
      {
        v24 = 20;
        goto LABEL_28;
      }

LABEL_27:
      v24 = earTooCloseDetectTracker + 1;
      goto LABEL_28;
    }
  }

  else
  {
    if (self->_earOcclusionDetectTracker)
    {
      --self->_earOcclusionDetectTracker;
    }

    if (self->_earTooCloseDetectTracker)
    {
      --self->_earTooCloseDetectTracker;
    }

    if (self->_earTooFarDetectTracker)
    {
      --self->_earTooFarDetectTracker;
    }

    if (self->_motionBlurrTracker)
    {
      self->_motionBlurrTracker = 0;
    }
  }

LABEL_29:
  self->_isEarOccluded = self->_earOcclusionDetectTracker > 0x13u;
  if (self->_earTooFarDetectTracker < 0xAu)
  {
    if (!self->_earTooCloseDetectTracker)
    {
      self->_earTooFar = 0;
    }
  }

  else
  {
    self->_earTooFar = 1;
  }

  v25 = self->_earTooCloseDetectTracker;
  if (v25 > 4)
  {
    LOBYTE(v25) = 1;
LABEL_36:
    self->_earTooClose = v25;
    goto LABEL_37;
  }

  if (!self->_earTooCloseDetectTracker)
  {
    goto LABEL_36;
  }

LABEL_37:
  self->_motionBlurr = self->_motionBlurrTracker > 0x1Du;
  if (self->_earTooClose || self->_earTooFar)
  {
    self->_earOcclusionDetectTracker = 0;
    self->_isEarOccluded = 0;
  }

LABEL_40:
  v90.origin.x = x;
  v90.origin.y = y;
  v90.size.width = width;
  v90.size.height = height;
  v26 = CGRectEqualToRect(v90, *MEMORY[0x1E695F058]);
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
    self->_earBoundingBoxDetectTracker = earBoundingBoxDetectTracker + 1;
    self->_currentEarBB.origin.x = x;
    self->_currentEarBB.origin.y = y;
    self->_currentEarBB.size.width = width;
    self->_currentEarBB.size.height = height;
    v29 = self->_earBoundingBoxDetectTracker;
  }

  if (v29 >= 0x15u)
  {
    v29 = 20;
    self->_earBoundingBoxDetectTracker = 20;
  }

  self->_earBoundingBoxDetected = v29 != 0;
  if (v78)
  {
    [v13 currentYawAngle];
    if (v30 != -100.0)
    {
      [v13 currentYawAngle];
      self->_leftEarLastYaw = v31;
      [v13 currentYawAngle];
      self->_leftLastReceivedYaw = v32;
      [v13 currentYawAngle];
      self->_currentYaw = v33;
      v34 = [v13 remainingYawAngles];
      pendingYaw = self->_pendingYaw;
      self->_pendingYaw = v34;
    }

    self->_rightEarLastYaw = -100.0;
    ++self->_leftEarCaptureCount;
    leftEarInViewCount = self->_leftEarInViewCount;
    if (leftEarInViewCount <= 0x13)
    {
      self->_leftEarInViewCount = leftEarInViewCount + 1;
    }

    self->_rightEarCaptureCount = 0;
  }

  else
  {
    self->_leftEarCaptureCount = 0;
    if (self->_leftEarInViewCount)
    {
      --self->_leftEarInViewCount;
    }
  }

  if (v77)
  {
    [v15 currentYawAngle];
    if (v37 != -100.0)
    {
      [v15 currentYawAngle];
      self->_rightEarLastYaw = v38;
      [v15 currentYawAngle];
      self->_rightLastReceivedYaw = v39;
      [v15 currentYawAngle];
      self->_currentYaw = v40;
      v41 = [v15 remainingYawAngles];
      v42 = self->_pendingYaw;
      self->_pendingYaw = v41;
    }

    self->_leftEarLastYaw = -100.0;
    ++self->_rightEarCaptureCount;
    rightEarInViewCount = self->_rightEarInViewCount;
    if (rightEarInViewCount <= 0x13)
    {
      self->_rightEarInViewCount = rightEarInViewCount + 1;
    }

    v44 = 1377;
  }

  else
  {
    if (self->_rightEarInViewCount)
    {
      --self->_rightEarInViewCount;
    }

    v44 = 1365;
  }

  *(&self->super.super.super.isa + v44) = 0;
  if (v13)
  {
    if ([v13 hasYawAngle])
    {
      leftEarStatus = self->_leftEarStatus;
      if (leftEarStatus >= 1 && leftEarStatus != 3)
      {
        [v13 currentYawAngle];
        self->_currentYaw = v46;
        v47 = [v13 remainingYawAngles];
        v48 = self->_pendingYaw;
        self->_pendingYaw = v47;
      }
    }
  }

  if (v15)
  {
    if ([v15 hasYawAngle])
    {
      rightEarStatus = self->_rightEarStatus;
      if (rightEarStatus >= 1 && rightEarStatus != 3)
      {
        [v15 currentYawAngle];
        self->_currentYaw = v50;
        v51 = [v15 remainingYawAngles];
        v52 = self->_pendingYaw;
        self->_pendingYaw = v51;
      }
    }
  }

  v53 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    currentYaw = self->_currentYaw;
    candidateYaw = self->_candidateYaw;
    v56 = @"NO";
    if (self->_earTooClose)
    {
      v57 = @"YES";
    }

    else
    {
      v57 = @"NO";
    }

    if (self->_earTooFar)
    {
      v58 = @"YES";
    }

    else
    {
      v58 = @"NO";
    }

    if (self->_motionBlurr)
    {
      v59 = @"YES";
    }

    else
    {
      v59 = @"NO";
    }

    if (self->_isEarOccluded)
    {
      v56 = @"YES";
    }

    *buf = 134219266;
    *v80 = currentYaw;
    *&v80[8] = 2048;
    *v81 = candidateYaw;
    *&v81[8] = 2112;
    v82 = v57;
    v83 = 2112;
    v84 = v58;
    v85 = 2112;
    v86 = v59;
    v87 = 2112;
    v88 = v56;
    _os_log_impl(&dword_1AC1C3000, v53, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Current yaw : %f  < %f >  :  Too Close: %@ Too Far : %@ Motion Blurr: %@ Occlusion (Note other param affect this) : %@", buf, 0x3Eu);
  }

  if (self->_leftEarCaptureCount >= 5u)
  {
    self->_leftEarCaptureCount = 1;
    self->_currentTrackingEar = 1;
  }

  if (self->_rightEarCaptureCount >= 5u)
  {
    self->_rightEarCaptureCount = 1;
    self->_currentTrackingEar = 2;
  }

  if (v78 || v77)
  {
    v60 = self->_currentTrackingEar;
  }

  else
  {
    v60 = 0;
    self->_currentTrackingEar = 0;
  }

  if (v60 != currentTrackingEar)
  {
    v61 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v62 = self->_currentTrackingEar;
      v63 = self->_currentStep;
      *buf = 67109376;
      *v80 = v62;
      *&v80[4] = 1024;
      *&v80[6] = v63;
      _os_log_impl(&dword_1AC1C3000, v61, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ear Tracking Changed to %d Current State %d", buf, 0xEu);
    }
  }

  if (earTooClose != self->_earTooClose || earTooFar != self->_earTooFar || isEarOccluded != self->_isEarOccluded || self->_currentTrackingEar != currentTrackingEar)
  {
    v64 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = @"NO";
      if (self->_earTooClose)
      {
        v66 = @"YES";
      }

      else
      {
        v66 = @"NO";
      }

      motionBlurr = self->_motionBlurr;
      v68 = self->_isEarOccluded;
      if (self->_earTooFar)
      {
        v69 = @"YES";
      }

      else
      {
        v69 = @"NO";
      }

      *buf = 138413058;
      if (motionBlurr)
      {
        v70 = @"YES";
      }

      else
      {
        v70 = @"NO";
      }

      *v80 = v66;
      *&v80[8] = 2112;
      if (v68)
      {
        v65 = @"YES";
      }

      *v81 = v69;
      *&v81[8] = 2112;
      v82 = v70;
      v83 = 2112;
      v84 = v65;
      _os_log_impl(&dword_1AC1C3000, v64, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ear Aggressor parameter Changes Too Close: %@ Too Far : %@ Motion Blurr: %@ Occlusion (Note other param affect this) : %@ ", buf, 0x2Au);
    }

    if (isEarOccluded != self->_isEarOccluded)
    {
      v71 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        if (self->_isEarOccluded)
        {
          v72 = "YES";
        }

        else
        {
          v72 = "NO";
        }

        earOcclusionDetectTracker = self->_earOcclusionDetectTracker;
        supressEarOcclusionWarning = self->_supressEarOcclusionWarning;
        *buf = 136315650;
        *v80 = v72;
        *&v80[8] = 1024;
        *v81 = earOcclusionDetectTracker;
        *&v81[4] = 1024;
        *&v81[6] = supressEarOcclusionWarning;
        _os_log_impl(&dword_1AC1C3000, v71, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ear Occlusion changed to %s current number of entries %d UI supressed = %d", buf, 0x18u);
      }
    }
  }
}

- (void)hideContinueButton
{
  [(OBTrayButton *)self->_continueButton setHidden:1];
  buttonTrayEffectView = self->_buttonTrayEffectView;

  [(UIVisualEffectView *)buttonTrayEffectView setHidden:1];
}

- (void)showContinueButton
{
  [(OBTrayButton *)self->_continueButton setHidden:0];
  buttonTrayEffectView = self->_buttonTrayEffectView;

  [(UIVisualEffectView *)buttonTrayEffectView setHidden:0];
}

- (void)hideOcclusionContinueButton
{
  [(OBTrayButton *)self->_occlusionContinueButton setHidden:1];
  buttonTrayEffectView = self->_buttonTrayEffectView;

  [(UIVisualEffectView *)buttonTrayEffectView setHidden:1];
}

- (void)showOcclusionContinueButton
{
  [(OBTrayButton *)self->_occlusionContinueButton setHidden:0];
  buttonTrayEffectView = self->_buttonTrayEffectView;

  [(UIVisualEffectView *)buttonTrayEffectView setHidden:0];
}

- (BOOL)isEarTooClose
{
  currentStep = self->_currentStep;
  v3 = currentStep > 0xB;
  v4 = (1 << currentStep) & 0xCC0;
  v5 = v3 || v4 == 0;
  return !v5 && !self->_supressEarDistanceWarning && self->_earTooClose;
}

- (BOOL)isEarTooFar
{
  currentStep = self->_currentStep;
  v3 = currentStep > 0xB;
  v4 = (1 << currentStep) & 0xCC0;
  v5 = v3 || v4 == 0;
  return !v5 && !self->_supressEarDistanceWarning && self->_earTooFar;
}

- (BOOL)isEarMovingFast
{
  currentStep = self->_currentStep;
  v3 = currentStep > 0xB;
  v4 = (1 << currentStep) & 0xCC0;
  v5 = v3 || v4 == 0;
  return !v5 && !self->_supressEarDistanceWarning && self->_motionBlurr && !self->_earTooClose && !self->_earTooFar;
}

- (void)startEarDistanceWarnCoolDownTimer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__HPSUISpatialProfileEnrollmentController_startEarDistanceWarnCoolDownTimer__block_invoke;
  block[3] = &unk_1E7970208;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __76__HPSUISpatialProfileEnrollmentController_startEarDistanceWarnCoolDownTimer__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 1448))
  {
    [v2 stopEarDistanceWarnCoolDownTimer];
    v2 = *(a1 + 32);
  }

  *(v2 + 1460) = 1;
  v3 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:*(a1 + 32) target:sel_triggerEarDistanceWarnCoolDownTimer selector:0 userInfo:0 repeats:9.0];
  v4 = *(a1 + 32);
  v5 = *(v4 + 1448);
  *(v4 + 1448) = v3;

  v6 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1AC1C3000, v6, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Start Ear distance Cool down timer", v7, 2u);
  }
}

- (void)triggerEarDistanceWarnCoolDownTimer
{
  self->_supressEarDistanceWarning = 0;
  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ready to show ear too close error", v3, 2u);
  }
}

- (void)stopEarDistanceWarnCoolDownTimer
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    x = self->_currentEarBB.origin.x;
    y = self->_currentEarBB.origin.y;
    width = self->_currentEarBB.size.width;
    height = self->_currentEarBB.size.height;
    v9 = 134218752;
    v10 = x;
    v11 = 2048;
    v12 = y;
    v13 = 2048;
    v14 = width;
    v15 = 2048;
    v16 = height;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stopping ear too close  Timer Current Bounding Box [ %f %f %f %f", &v9, 0x2Au);
  }

  [(NSTimer *)self->_earTooCloseWarnCoolDownTimer invalidate];
  earTooCloseWarnCoolDownTimer = self->_earTooCloseWarnCoolDownTimer;
  self->_earTooCloseWarnCoolDownTimer = 0;
}

- (void)startEnrollGuidanceTimer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__HPSUISpatialProfileEnrollmentController_startEnrollGuidanceTimer__block_invoke;
  block[3] = &unk_1E7970208;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __67__HPSUISpatialProfileEnrollmentController_startEnrollGuidanceTimer__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 1568))
  {
    [*(a1 + 32) stopEnrollGuidanceTimer];
    v2 = *(a1 + 32);
  }

  v3 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:v2 target:sel_triggerEnrollGuidanceTimer selector:0 userInfo:0 repeats:5.0];
  v4 = *(a1 + 32);
  v5 = *(v4 + 1568);
  *(v4 + 1568) = v3;

  v6 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1AC1C3000, v6, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Start Progress Player", v7, 2u);
  }
}

- (void)triggerEnrollGuidanceTimer
{
  *(&v72[2] + 6) = *MEMORY[0x1E69E9840];
  pendingYaw = self->_pendingYaw;
  if (pendingYaw)
  {
    enrollGuidancePitch = self->_enrollGuidancePitch;
    if ([(NSArray *)pendingYaw count])
    {
      candidateYaw = self->_candidateYaw;
      self->_candidateYaw = -100.0;
      v6 = [(NSArray *)self->_pendingYaw firstObject];
      v7 = v6;
      if (v6)
      {
        [v6 floatValue];
        v9 = -v8;
        self->_candidateYaw = v9;
        if (candidateYaw != v9)
        {
          v10 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = self->_candidateYaw;
            *buf = 134218240;
            v67 = candidateYaw;
            v68 = 2048;
            v69 = v11;
            _os_log_impl(&dword_1AC1C3000, v10, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Dynamic enrollment guidance Candidate angle updated %f --> %f", buf, 0x16u);
          }
        }
      }

      leftEarStatus = self->_leftEarStatus;
      v13 = leftEarStatus < 1 || leftEarStatus == 3;
      if (v13 || !self->_leftEarInViewCount)
      {
        rightEarStatus = self->_rightEarStatus;
        v14 = rightEarStatus >= 1 && rightEarStatus != 3 && self->_rightEarInViewCount != 0;
      }

      else
      {
        v14 = 1;
      }

      v17 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        currentYaw = self->_currentYaw;
        v19 = self->_candidateYaw;
        leftEarInViewCount = self->_leftEarInViewCount;
        rightEarInViewCount = self->_rightEarInViewCount;
        v22 = @"NO";
        if (v14)
        {
          v22 = @"YES";
        }

        *buf = 134219010;
        v67 = currentYaw;
        v68 = 2048;
        v69 = v19;
        v70 = 1024;
        *v71 = leftEarInViewCount;
        *&v71[4] = 1024;
        *&v71[6] = rightEarInViewCount;
        LOWORD(v72[0]) = 2112;
        *(v72 + 2) = v22;
        _os_log_impl(&dword_1AC1C3000, v17, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Dynamic enrollment guidance evaluating Feedback Current Yaw %f Target Yaw %f Ear Tracking [L %d R %d] %@", buf, 0x2Cu);
      }

      v23 = self->_candidateYaw;
      if (v23 != -100.0)
      {
        if (v14)
        {
          v58 = 1584;
          v24 = vabdd_f64(v23, self->_currentYaw);
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v59 = v7;
          v25 = self->_feedBackBinning;
          v26 = [(NSArray *)v25 countByEnumeratingWithState:&v61 objects:v65 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = 0;
            v29 = *v62;
            while (2)
            {
              v30 = 0;
              v31 = v28;
              v28 += v27;
              do
              {
                if (*v62 != v29)
                {
                  objc_enumerationMutation(v25);
                }

                v32 = *(*(&v61 + 1) + 8 * v30);
                [v32 floatValue];
                if (v24 > v33)
                {
                  v36 = [(NSArray *)self->_feedBackPitch objectAtIndex:v31];
                  [v36 floatValue];
                  self->_enrollGuidancePitch = v37;
                  v38 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                  {
                    v39 = self->_enrollGuidancePitch;
                    [v32 floatValue];
                    *buf = 134218240;
                    v67 = v39;
                    v68 = 2048;
                    v69 = v40;
                    _os_log_impl(&dword_1AC1C3000, v38, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Dynamic enrollment guidance Calcuated new Pitch %f based on Bin %f ", buf, 0x16u);
                  }

                  v28 = v31;
                  goto LABEL_42;
                }

                ++v31;
                ++v30;
              }

              while (v27 != v30);
              v27 = [(NSArray *)v25 countByEnumeratingWithState:&v61 objects:v65 count:16];
              if (v27)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v28 = 0;
          }

LABEL_42:

          v7 = v59;
          if (v28 > [(NSArray *)self->_feedBackBinning count])
          {
            v41 = [(NSArray *)self->_feedBackPitch lastObject];
            [v41 floatValue];
            self->_enrollGuidancePitch = v42;
            v43 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              v44 = self->_enrollGuidancePitch;
              *buf = 134217984;
              v67 = v44;
              _os_log_impl(&dword_1AC1C3000, v43, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Dynamic enrollment guidance Calcuated new Pitch as lowest %f", buf, 0xCu);
            }
          }

          v45 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v46 = self->_candidateYaw;
            v47 = *(&self->super.super.super.isa + v58);
            v48 = self->_enrollGuidancePitch;
            *buf = 134218752;
            v67 = v46;
            v68 = 2048;
            v69 = v47;
            v70 = 2048;
            *v71 = v24;
            *&v71[8] = 2048;
            *v72 = v48;
            _os_log_impl(&dword_1AC1C3000, v45, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Dynamic enrollment guidance Candidate %f  _currentYaw %f : evaluating Delta %f New Pitch %f ", buf, 0x2Au);
          }

          if (enrollGuidancePitch != self->_enrollGuidancePitch || ![(HPSUISpatialProfileSoundHapticManager *)self->_soundHapticManager isEnrollGuidancePlaying])
          {
            v49 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              v50 = self->_enrollGuidancePitch;
              v51 = [(HPSUISpatialProfileSoundHapticManager *)self->_soundHapticManager isEnrollGuidancePlaying];
              v52 = @"YES";
              *buf = 134218498;
              v67 = enrollGuidancePitch;
              if (v51)
              {
                v52 = @"NO";
              }

              v68 = 2048;
              v69 = v50;
              v70 = 2112;
              *v71 = v52;
              _os_log_impl(&dword_1AC1C3000, v49, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Dynamic enrollment guidance Update Dynamic audio feedback pitch %f -> %f Restart Play %@", buf, 0x20u);
            }

            v53 = self->_enrollGuidancePitch;
            *&v53 = v53;
            [(HPSUISpatialProfileSoundHapticManager *)self->_soundHapticManager setEnrollGuidancePitch:v53];
            if (![(HPSUISpatialProfileSoundHapticManager *)self->_soundHapticManager isEnrollGuidancePlaying])
            {
              [(HPSUISpatialProfileSoundHapticManager *)self->_soundHapticManager playEnrollGuidance:self->_currentStep];
            }
          }
        }

        else
        {
          self->_enrollGuidancePitch = 0.5;
          LODWORD(v23) = 0.5;
          [(HPSUISpatialProfileSoundHapticManager *)self->_soundHapticManager setEnrollGuidancePitch:v23];
          v34 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = self->_enrollGuidancePitch;
            *buf = 134218240;
            v67 = enrollGuidancePitch;
            v68 = 2048;
            v69 = v35;
            _os_log_impl(&dword_1AC1C3000, v34, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Dynamic enrollment guidance Not tracking ear, reset Pitch + Pause Play .%f -> %f", buf, 0x16u);
          }

          [(HPSUISpatialProfileSoundHapticManager *)self->_soundHapticManager pauseEnrollGuidancePlayer];
          self->_currentYaw = -100.0;
        }
      }
    }
  }

  v54 = self->_leftEarStatus;
  v55 = v54 < 1 || v54 == 3;
  if (!v55 || ((v56 = self->_rightEarStatus, v56 >= 1) ? (v57 = v56 == 3) : (v57 = 1), !v57))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__HPSUISpatialProfileEnrollmentController_triggerEnrollGuidanceTimer__block_invoke;
    block[3] = &unk_1E7970208;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __69__HPSUISpatialProfileEnrollmentController_triggerEnrollGuidanceTimer__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1568) = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:*(a1 + 32) target:sel_triggerEnrollGuidanceTimer selector:0 userInfo:0 repeats:0.5];

  return MEMORY[0x1EEE66BB8]();
}

- (void)stopEnrollGuidanceTimer
{
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Dynamic enrollment guidance Stopping Timer", v6, 2u);
  }

  enrollGuidanceTimer = self->_enrollGuidanceTimer;
  if (enrollGuidanceTimer)
  {
    [(NSTimer *)enrollGuidanceTimer invalidate];
    v5 = self->_enrollGuidanceTimer;
    self->_enrollGuidanceTimer = 0;
  }
}

- (void)alertEarDistanceWarning:(int)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    currentYaw = self->_currentYaw;
    candidateYaw = self->_candidateYaw;
    *buf = 67109632;
    v16 = a3;
    v17 = 2048;
    v18 = currentYaw;
    v19 = 2048;
    v20 = candidateYaw;
    _os_log_impl(&dword_1AC1C3000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Error Message *** Ear distance detection warning shown to user %d Current yaw %f Candidate Yaw %f ", buf, 0x1Cu);
  }

  self->_earOcclusionDetectTracker = 0;
  self->_isEarOccluded = 0;
  [(HPSUISpatialProfileEnrollmentController *)self restartOcclusionWarnCoolDownTimer];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__HPSUISpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke;
  block[3] = &unk_1E7970208;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  switch(a3)
  {
    case 5:
      [(HPSUISpatialProfileEnrollmentController *)self pauseEnrollment];
      v8 = v11;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v9 = __67__HPSUISpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke_6;
      break;
    case 4:
      [(HPSUISpatialProfileEnrollmentController *)self pauseEnrollment];
      v8 = v12;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v9 = __67__HPSUISpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke_4;
      break;
    case 3:
      [(HPSUISpatialProfileEnrollmentController *)self pauseEnrollment];
      v8 = v13;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v9 = __67__HPSUISpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke_2;
      break;
    default:
      return;
  }

  v8[2] = v9;
  v8[3] = &unk_1E7970208;
  v8[4] = self;
  v10 = MEMORY[0x1E69E96A0];
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

uint64_t __67__HPSUISpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1144) pauseProgressPlayer];
  v2 = *(*(a1 + 32) + 1144);

  return [v2 pauseEnrollGuidancePlayer];
}

void __67__HPSUISpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) clearBoundingBox];
  [*(a1 + 32) forceBlur];
  v2 = *(*(a1 + 32) + 1032);
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"EAR_TOO_CLOSE_TITLE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = [MEMORY[0x1E695DF58] currentLocale];
  v6 = [v5 objectForKey:*MEMORY[0x1E695DA08]];
  LODWORD(v4) = [v6 BOOLValue];

  v7 = *(*(a1 + 32) + 1032);
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = v8;
  if (v4)
  {
    v10 = @"EAR_TOO_CLOSE_DETAIL_METRICS";
  }

  else
  {
    v10 = @"EAR_TOO_CLOSE_DETAIL_IMPERIAL";
  }

  v11 = [v8 localizedStringForKey:v10 value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v7 setDetailText:v11];

  v12 = dispatch_group_create();
  dispatch_group_enter(v12);
  v13 = *(*(a1 + 32) + 1144);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__HPSUISpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke_3;
  v15[3] = &unk_1E7970208;
  v16 = v12;
  v14 = v12;
  [v13 triggerSoundHapticForEnrollmentState:19 completion:v15];
  [*(a1 + 32) showEarDistanceWarningContinueButton];
}

void __67__HPSUISpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) clearBoundingBox];
  [*(a1 + 32) forceBlur];
  v2 = *(*(a1 + 32) + 1032);
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"EAR_TOO_FAR_TITLE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = [MEMORY[0x1E695DF58] currentLocale];
  v6 = [v5 objectForKey:*MEMORY[0x1E695DA08]];
  LODWORD(v4) = [v6 BOOLValue];

  v7 = *(*(a1 + 32) + 1032);
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = v8;
  if (v4)
  {
    v10 = @"EAR_TOO_CLOSE_DETAIL_METRICS";
  }

  else
  {
    v10 = @"EAR_TOO_CLOSE_DETAIL_IMPERIAL";
  }

  v11 = [v8 localizedStringForKey:v10 value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v7 setDetailText:v11];

  v12 = dispatch_group_create();
  dispatch_group_enter(v12);
  v13 = *(*(a1 + 32) + 1144);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__HPSUISpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke_5;
  v15[3] = &unk_1E7970208;
  v16 = v12;
  v14 = v12;
  [v13 triggerSoundHapticForEnrollmentState:19 completion:v15];
  [*(a1 + 32) showEarDistanceWarningContinueButton];
}

void __67__HPSUISpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) clearBoundingBox];
  [*(a1 + 32) forceBlur];
  v2 = *(*(a1 + 32) + 1032);
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"EAR_TOO_FAST_DETAIL" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [v2 setDetailText:v4];

  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v6 = *(*(a1 + 32) + 1144);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__HPSUISpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke_7;
  v8[3] = &unk_1E7970208;
  v9 = v5;
  v7 = v5;
  [v6 triggerSoundHapticForEnrollmentState:19 completion:v8];
  [*(a1 + 32) showEarDistanceWarningContinueButton];
}

- (void)continueEarDistanceWarning
{
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ear Too close ContinueButton Tapped", buf, 2u);
  }

  [(HPSUISpatialProfileEnrollmentController *)self resumeEnrollment];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__HPSUISpatialProfileEnrollmentController_continueEarDistanceWarning__block_invoke;
  block[3] = &unk_1E7970208;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  self->_isEarOccluded = 0;
  self->_earOcclusionDetectTracker = 0;
  self->_earTooClose = 0;
  self->_earTooCloseDetectTracker = 0;
  self->_earTooFar = 0;
  self->_earTooFarDetectTracker = 0;
  [(HPSUISpatialProfileEnrollmentController *)self startEarDistanceWarnCoolDownTimer];
}

uint64_t __69__HPSUISpatialProfileEnrollmentController_continueEarDistanceWarning__block_invoke(uint64_t a1)
{
  [*(a1 + 32) cancelBlur];
  [*(a1 + 32) hideEarDistanceWarningContinueButton];
  [*(a1 + 32) updateEarEnrollText];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1144);
  v4 = *(v2 + 1252);

  return [v3 playProgressPlayer:v4];
}

- (void)hideEarDistanceWarningContinueButton
{
  [(OBTrayButton *)self->_earDistanceWarnContinueButton setHidden:1];
  buttonTrayEffectView = self->_buttonTrayEffectView;

  [(UIVisualEffectView *)buttonTrayEffectView setHidden:1];
}

- (void)showEarDistanceWarningContinueButton
{
  [(OBTrayButton *)self->_earDistanceWarnContinueButton setHidden:0];
  buttonTrayEffectView = self->_buttonTrayEffectView;

  [(UIVisualEffectView *)buttonTrayEffectView setHidden:0];
}

- (void)startEarEnrollmentNudgeTimer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__HPSUISpatialProfileEnrollmentController_startEarEnrollmentNudgeTimer__block_invoke;
  block[3] = &unk_1E7970208;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __71__HPSUISpatialProfileEnrollmentController_startEarEnrollmentNudgeTimer__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 1496))
  {
    [*(a1 + 32) stopEarEnrollmentNudgeTimer];
    v2 = *(a1 + 32);
  }

  v3 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:v2 target:sel_triggerEarEnrollmentNudgeTimer selector:0 userInfo:1 repeats:20.0];
  v4 = *(a1 + 32);
  v5 = *(v4 + 1496);
  *(v4 + 1496) = v3;

  v6 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1AC1C3000, v6, OS_LOG_TYPE_DEFAULT, "Spatial Profile:Checking ear enrollment nudge", v7, 2u);
  }
}

- (void)triggerEarEnrollmentNudgeTimer
{
  if (self->_rightEarStatus == 3 && self->_leftEarStatus == 3)
  {
    [(HPSUISpatialProfileEnrollmentController *)self stopEarEnrollmentNudgeTimer];
  }

  else
  {
    [(HPSUISpatialProfileEnrollmentController *)self nudgeEar];
  }
}

- (void)nudgeEar
{
  v50 = *MEMORY[0x1E69E9840];
  if (CACurrentMediaTime() - self->_lastEarCaptureTime < 3.0 || self->_enrollmentPaused)
  {
    v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
LABEL_6:

      return;
    }

    v4 = CACurrentMediaTime() - self->_lastEarCaptureTime;
    enrollmentPaused = self->_enrollmentPaused;
    *buf = 134218240;
    *v37 = v4;
    *&v37[8] = 1024;
    LODWORD(v38) = enrollmentPaused;
    v6 = "Spatial Profile:got frame within last %f sec Enrollment Pause status: %d";
    v7 = v3;
    v8 = 18;
LABEL_5:
    _os_log_impl(&dword_1AC1C3000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    goto LABEL_6;
  }

  v9 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  v10 = 0x1EB54B000;
  v11 = 0x1EB54B000;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    leftEarStatus = self->_leftEarStatus;
    leftEarRearCaptured = self->_leftEarRearCaptured;
    leftEarFrontCaptured = self->_leftEarFrontCaptured;
    rightEarStatus = self->_rightEarStatus;
    rightEarFrontCaptured = self->_rightEarFrontCaptured;
    rightEarRearCaptured = self->_rightEarRearCaptured;
    v18 = CACurrentMediaTime() - self->_lastEarCaptureTime;
    candidateYaw = self->_candidateYaw;
    currentYaw = self->_currentYaw;
    *buf = 67111168;
    *v37 = leftEarStatus;
    *&v37[4] = 1024;
    *&v37[6] = leftEarRearCaptured;
    LOWORD(v38) = 1024;
    *(&v38 + 2) = leftEarFrontCaptured;
    HIWORD(v38) = 1024;
    v39 = rightEarStatus;
    v40 = 1024;
    v41 = rightEarFrontCaptured;
    v10 = 0x1EB54B000uLL;
    v42 = 1024;
    v43 = rightEarRearCaptured;
    v11 = 0x1EB54B000uLL;
    v44 = 2048;
    v45 = v18;
    v46 = 2048;
    v47 = candidateYaw;
    v48 = 2048;
    v49 = currentYaw;
    _os_log_impl(&dword_1AC1C3000, v9, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Trigger nudge Left ear Status %d : [ Rear captured : %d Fron Captured : %d ] right ear  Status %d: [ Rear captured : %d Fron Captured : %d ] Time From last detection %f Candidate Yaw %f Current Yaw %f", buf, 0x44u);
  }

  v21 = *(v11 + 1436);
  v22 = *(&self->super.super.super.isa + v21);
  if (v22 == -100.0 || (v23 = *(v10 + 1440), v24 = *(&self->super.super.super.isa + v23), v24 == -100.0))
  {
    v26 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AC1C3000, v26, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ignore Trigger nudge Left ear due to missing yaw", buf, 2u);
    }

    return;
  }

  if (vabdd_f64(v24, v22) <= 10.0)
  {
    v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    v27 = *(&self->super.super.super.isa + v23);
    v28 = *(&self->super.super.super.isa + v21);
    *buf = 134218240;
    *v37 = v27;
    *&v37[8] = 2048;
    v38 = v28;
    v6 = "Spatial Profile: Ignore Trigger nudge Left ear due to lower threshold : Candiate %f - Current %f";
    v7 = v3;
    v8 = 22;
    goto LABEL_5;
  }

  if (self->_rightEarStatus != 2)
  {
    if (self->_leftEarStatus != 2)
    {
      return;
    }

    if (v24 > v22)
    {
LABEL_24:
      v29 = dispatch_time(0, 300000000);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __51__HPSUISpatialProfileEnrollmentController_nudgeEar__block_invoke_5;
      v33[3] = &unk_1E7970208;
      v33[4] = self;
      v30 = MEMORY[0x1E69E96A0];
      v31 = v33;
LABEL_27:
      dispatch_after(v29, v30, v31);
      return;
    }

    goto LABEL_26;
  }

  v25 = dispatch_time(0, 300000000);
  if (v24 <= v22)
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __51__HPSUISpatialProfileEnrollmentController_nudgeEar__block_invoke_3;
    v34[3] = &unk_1E7970208;
    v34[4] = self;
    dispatch_after(v25, MEMORY[0x1E69E96A0], v34);
    if (self->_leftEarStatus != 2)
    {
      return;
    }

LABEL_26:
    v29 = dispatch_time(0, 300000000);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __51__HPSUISpatialProfileEnrollmentController_nudgeEar__block_invoke_7;
    v32[3] = &unk_1E7970208;
    v32[4] = self;
    v30 = MEMORY[0x1E69E96A0];
    v31 = v32;
    goto LABEL_27;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__HPSUISpatialProfileEnrollmentController_nudgeEar__block_invoke;
  block[3] = &unk_1E7970208;
  block[4] = self;
  dispatch_after(v25, MEMORY[0x1E69E96A0], block);
  if (self->_leftEarStatus == 2)
  {
    goto LABEL_24;
  }
}

uint64_t __51__HPSUISpatialProfileEnrollmentController_nudgeEar__block_invoke(uint64_t a1)
{
  [*(a1 + 32) forceBlur];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1152);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__HPSUISpatialProfileEnrollmentController_nudgeEar__block_invoke_2;
  v5[3] = &unk_1E7970208;
  v5[4] = v2;
  return [v3 nudgeRight:v5];
}

_DWORD *__51__HPSUISpatialProfileEnrollmentController_nudgeEar__block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[342] == 2 || result[346] == 2)
  {
    return [result cancelBlur];
  }

  return result;
}

uint64_t __51__HPSUISpatialProfileEnrollmentController_nudgeEar__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) forceBlur];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1152);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__HPSUISpatialProfileEnrollmentController_nudgeEar__block_invoke_4;
  v5[3] = &unk_1E7970208;
  v5[4] = v2;
  return [v3 nudgeLeft:v5];
}

_DWORD *__51__HPSUISpatialProfileEnrollmentController_nudgeEar__block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[342] == 2 || result[346] == 2)
  {
    return [result cancelBlur];
  }

  return result;
}

uint64_t __51__HPSUISpatialProfileEnrollmentController_nudgeEar__block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) forceBlur];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1152);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__HPSUISpatialProfileEnrollmentController_nudgeEar__block_invoke_6;
  v5[3] = &unk_1E7970208;
  v5[4] = v2;
  return [v3 nudgeLeft:v5];
}

_DWORD *__51__HPSUISpatialProfileEnrollmentController_nudgeEar__block_invoke_6(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[342] == 2 || result[346] == 2)
  {
    return [result cancelBlur];
  }

  return result;
}

uint64_t __51__HPSUISpatialProfileEnrollmentController_nudgeEar__block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) forceBlur];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1152);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__HPSUISpatialProfileEnrollmentController_nudgeEar__block_invoke_8;
  v5[3] = &unk_1E7970208;
  v5[4] = v2;
  return [v3 nudgeRight:v5];
}

_DWORD *__51__HPSUISpatialProfileEnrollmentController_nudgeEar__block_invoke_8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[342] == 2 || result[346] == 2)
  {
    return [result cancelBlur];
  }

  return result;
}

- (void)stopEarEnrollmentNudgeTimer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__HPSUISpatialProfileEnrollmentController_stopEarEnrollmentNudgeTimer__block_invoke;
  block[3] = &unk_1E7970208;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __70__HPSUISpatialProfileEnrollmentController_stopEarEnrollmentNudgeTimer__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1496) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1496);
  *(v2 + 1496) = 0;
}

- (void)cancelBlur
{
  [(HPSUISpatialProfileUIPearlEnrollView *)self->_enrollView setPauseBlur:1];
  [(HPSUISpatialProfileUIPearlEnrollView *)self->_enrollView setForceBlur:0];
  enrollView = self->_enrollView;

  [(HPSUISpatialProfileUIPearlEnrollView *)enrollView setCameraBlurAmount:0 useShade:0 duration:0.0 completion:0.5];
}

- (void)forceBlur
{
  [(HPSUISpatialProfileUIPearlEnrollView *)self->_enrollView setPauseBlur:0];
  [(HPSUISpatialProfileUIPearlEnrollView *)self->_enrollView setForceBlur:1];
  enrollView = self->_enrollView;

  [(HPSUISpatialProfileUIPearlEnrollView *)enrollView setCameraBlurAmount:0 useShade:0 duration:15.0 completion:0.5];
}

- (void)sendTipKitSignal
{
  v2 = [MEMORY[0x1E698F350] discoverabilitySignal];
  v3 = [v2 source];
  v4 = objc_alloc(MEMORY[0x1E698F278]);
  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v5 bundleIdentifier];
  v7 = [v4 initWithIdentifier:@"com.apple.HeadphoneSettings.spatial-profile-enrollment-triggered" bundleID:v6 context:0];

  [v3 sendEvent:v7];
  v8 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1AC1C3000, v8, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Signal Sent to TipKit", v9, 2u);
  }
}

void __54__HPSUISpatialProfileEnrollmentController_syncProfile__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AC1C3000, a2, OS_LOG_TYPE_ERROR, "Spatial Profile: Profile NOT Synced, Error: %@", &v2, 0xCu);
}

- (void)getBudsInEarString
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1AC1C3000, log, OS_LOG_TYPE_ERROR, "Spatial Profile: Not Genuine Apple Headphone", buf, 2u);
}

- (void)didReceiveStateUpdateForSession:(void *)a1 stateInfo:.cold.1(void *a1)
{
  [a1 code];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

@end
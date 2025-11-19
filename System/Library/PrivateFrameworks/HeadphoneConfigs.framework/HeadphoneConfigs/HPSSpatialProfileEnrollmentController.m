@interface HPSSpatialProfileEnrollmentController
- (BOOL)checkAndShowInEarPopup;
- (BOOL)isEarMovingFast;
- (BOOL)isEarOccluded;
- (BOOL)isEarTooClose;
- (BOOL)isEarTooFar;
- (BOOL)isPresentingWrongEar;
- (HPSSpatialProfileEnrollmentController)init;
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

@implementation HPSSpatialProfileEnrollmentController

- (HPSSpatialProfileEnrollmentController)init
{
  if (!self)
  {
    return 0;
  }

  v41.receiver = self;
  v41.super_class = HPSSpatialProfileEnrollmentController;
  v2 = [(HPSSpatialProfileEnrollmentController *)&v41 init];
  v3 = [MEMORY[0x277CF3248] sharedInstance];
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
  v20 = objc_alloc(MEMORY[0x277CBEA60]);
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:30.0];
  v22 = [MEMORY[0x277CCABB0] numberWithDouble:25.0];
  v23 = [MEMORY[0x277CCABB0] numberWithDouble:20.0];
  v24 = [MEMORY[0x277CCABB0] numberWithDouble:15.0];
  v25 = [MEMORY[0x277CCABB0] numberWithDouble:10.0];
  v26 = [MEMORY[0x277CCABB0] numberWithDouble:5.0];
  v27 = [v20 initWithObjects:{v21, v22, v23, v24, v25, v26, 0}];
  v28 = *(v2 + 201);
  *(v2 + 201) = v27;

  v29 = objc_alloc(MEMORY[0x277CBEA60]);
  v30 = [MEMORY[0x277CCABB0] numberWithDouble:0.5];
  v31 = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
  v32 = [MEMORY[0x277CCABB0] numberWithDouble:1.5];
  v33 = [MEMORY[0x277CCABB0] numberWithDouble:2.0];
  v34 = [MEMORY[0x277CCABB0] numberWithDouble:2.5];
  v35 = [MEMORY[0x277CCABB0] numberWithDouble:3.0];
  v36 = [v29 initWithObjects:{v30, v31, v32, v33, v34, v35, 0}];
  v37 = *(v2 + 202);
  *(v2 + 202) = v36;

  v38 = [MEMORY[0x277CCAB98] defaultCenter];
  [v38 addObserver:v2 selector:sel_cancelSpatialAudioProfile name:*MEMORY[0x277D76660] object:0];

  v39 = [MEMORY[0x277CCAB98] defaultCenter];
  [v39 addObserver:v2 selector:sel_bluetoothDidBecomeAvailable name:*MEMORY[0x277CF3168] object:0];

  return v2;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = HPSSpatialProfileEnrollmentController;
  [(HPSSpatialProfileEnrollmentController *)&v9 viewDidLoad];
  v3 = [(HPSSpatialProfileEnrollmentController *)self view];
  [v3 size];
  v5 = v4;
  v6 = [(HPSSpatialProfileEnrollmentController *)self view];
  [v6 size];
  v8 = v7;

  if (v5 <= v8)
  {
    [(HPSSpatialProfileEnrollmentController *)self setupEnrollController];
    [(HPSSpatialProfileEnrollmentController *)self setupWelcomeContentView];
    [(HPSSpatialProfileEnrollmentController *)self setupAudioVideo];
    [(HPSSpatialProfileEnrollmentController *)self setupEarTutorialView];
    [(HPSSpatialProfileEnrollmentController *)self setupEarBoundingBox];
    [(HPSSpatialProfileEnrollmentController *)self moveToStep:0];
  }

  else
  {
    [(HPSSpatialProfileEnrollmentController *)self showLandscapeAlert];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = HPSSpatialProfileEnrollmentController;
  [(HPSSpatialProfileEnrollmentController *)&v3 viewDidAppear:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Enrollment Controller viewDidDisappear", v5, 2u);
  }

  [(HPSSpatialProfileEnrollmentController *)self cancelSpatialAudioProfile];
}

- (void)setupEnrollController
{
  v236[47] = *MEMORY[0x277D85DE8];
  if (!self->_enrollmentSession)
  {
    v3 = objc_alloc_init(MEMORY[0x277D0F968]);
    enrollmentSession = self->_enrollmentSession;
    self->_enrollmentSession = v3;

    [(HRTFEnrollmentSession *)self->_enrollmentSession setDelegate:self];
  }

  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_userCancelEnrollment];
  v6 = [(HPSSpatialProfileEnrollmentController *)self navigationItem];
  v230 = v5;
  [v6 setLeftBarButtonItem:v5];

  v7 = [MEMORY[0x277D75348] systemBackgroundColor];
  v8 = [(HPSSpatialProfileEnrollmentController *)self view];
  [v8 setBackgroundColor:v7];

  v9 = objc_alloc(MEMORY[0x277D75D18]);
  v10 = *MEMORY[0x277CBF3A0];
  v11 = *(MEMORY[0x277CBF3A0] + 8);
  v12 = *(MEMORY[0x277CBF3A0] + 16);
  v13 = *(MEMORY[0x277CBF3A0] + 24);
  v14 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], v11, v12, v13}];
  enrollContentView = self->_enrollContentView;
  self->_enrollContentView = v14;

  [(UIView *)self->_enrollContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v10, v11, v12, v13}];
  scrollContentView = self->_scrollContentView;
  self->_scrollContentView = v16;

  [(UIView *)self->_scrollContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [objc_alloc(MEMORY[0x277D759D8]) initWithFrame:{v10, v11, v12, v13}];
  scrollView = self->_scrollView;
  self->_scrollView = v18;

  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = objc_alloc_init(MEMORY[0x277D75D18]);
  scrollInnerContentView = self->_scrollInnerContentView;
  self->_scrollInnerContentView = v20;

  [(UIView *)self->_scrollInnerContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = objc_alloc_init(MEMORY[0x277D75A68]);
  scrollInnerStackView = self->_scrollInnerStackView;
  self->_scrollInnerStackView = v22;

  [(UIStackView *)self->_scrollInnerStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_scrollInnerStackView setAxis:1];
  [(UIStackView *)self->_scrollInnerStackView setAlignment:3];
  [(UIStackView *)self->_scrollInnerStackView setDistribution:3];
  v24 = objc_alloc(MEMORY[0x277D37640]);
  v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v26 = [v25 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v28 = [v27 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_DETAIL" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  v29 = [v24 initWithTitle:v26 detailText:v28 icon:0];
  infoView = self->_infoView;
  self->_infoView = v29;

  [(OBHeaderView *)self->_infoView setTranslatesAutoresizingMaskIntoConstraints:0];
  v31 = objc_alloc_init(MEMORY[0x277D756B8]);
  learnMoreView = self->_learnMoreView;
  self->_learnMoreView = v31;

  [(UILabel *)self->_learnMoreView setTranslatesAutoresizingMaskIntoConstraints:0];
  v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v34 = [v33 localizedStringForKey:@"WELCOME_DETAIL" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [(UILabel *)self->_learnMoreView setText:v34];

  [(UILabel *)self->_learnMoreView setLineBreakMode:0];
  [(UILabel *)self->_learnMoreView setNumberOfLines:0];
  v35 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [(UILabel *)self->_learnMoreView setFont:v35];

  [(UILabel *)self->_learnMoreView setAdjustsFontForContentSizeCategory:1];
  v36 = [MEMORY[0x277D75348] systemGrayColor];
  [(UILabel *)self->_learnMoreView setTextColor:v36];

  [(UILabel *)self->_learnMoreView setTextAlignment:1];
  v37 = [MEMORY[0x277D37618] boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = v37;

  v39 = self->_continueButton;
  v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v41 = [v40 localizedStringForKey:@"CONTINUE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [(OBTrayButton *)v39 setTitle:v41 forState:0];

  [(OBTrayButton *)self->_continueButton addTarget:self action:sel_continueButtonTapped forControlEvents:64];
  v42 = [MEMORY[0x277D37618] boldButton];
  occlusionContinueButton = self->_occlusionContinueButton;
  self->_occlusionContinueButton = v42;

  v44 = self->_occlusionContinueButton;
  v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v46 = [v45 localizedStringForKey:@"CONTINUE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [(OBTrayButton *)v44 setTitle:v46 forState:0];

  [(OBTrayButton *)self->_occlusionContinueButton addTarget:self action:sel_continueOcclusionWarning forControlEvents:64];
  v47 = [MEMORY[0x277D37618] boldButton];
  earDistanceWarnContinueButton = self->_earDistanceWarnContinueButton;
  self->_earDistanceWarnContinueButton = v47;

  v49 = self->_earDistanceWarnContinueButton;
  v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v51 = [v50 localizedStringForKey:@"CONTINUE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [(OBTrayButton *)v49 setTitle:v51 forState:0];

  [(OBTrayButton *)self->_earDistanceWarnContinueButton addTarget:self action:sel_continueEarDistanceWarning forControlEvents:64];
  v52 = objc_alloc(MEMORY[0x277D75D68]);
  v53 = [MEMORY[0x277D75210] effectWithStyle:6];
  v54 = [v52 initWithEffect:v53];
  buttonTrayEffectView = self->_buttonTrayEffectView;
  self->_buttonTrayEffectView = v54;

  [(UIVisualEffectView *)self->_buttonTrayEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
  v56 = objc_alloc_init(MEMORY[0x277D75D18]);
  spacerViewFirst = self->_spacerViewFirst;
  self->_spacerViewFirst = v56;

  [(UIView *)self->_spacerViewFirst setTranslatesAutoresizingMaskIntoConstraints:0];
  v58 = objc_alloc_init(MEMORY[0x277D75D18]);
  spacerViewSecond = self->_spacerViewSecond;
  self->_spacerViewSecond = v58;

  [(UIView *)self->_spacerViewSecond setTranslatesAutoresizingMaskIntoConstraints:0];
  if (self->_debugMode)
  {
    v60 = [(UIView *)self->_enrollContentView layer];
    [v60 setBorderWidth:1.0];

    v61 = [MEMORY[0x277D75348] systemRedColor];
    v62 = [v61 CGColor];
    v63 = [(UIView *)self->_enrollContentView layer];
    [v63 setBorderColor:v62];

    v64 = [(UIView *)self->_scrollContentView layer];
    [v64 setBorderWidth:1.0];

    v65 = [MEMORY[0x277D75348] systemBlueColor];
    v66 = [v65 CGColor];
    v67 = [(UIView *)self->_scrollContentView layer];
    [v67 setBorderColor:v66];

    v68 = [(UIScrollView *)self->_scrollView layer];
    [v68 setBorderWidth:1.0];

    v69 = [MEMORY[0x277D75348] systemYellowColor];
    v70 = [v69 CGColor];
    v71 = [(UIScrollView *)self->_scrollView layer];
    [v71 setBorderColor:v70];

    v72 = [(OBHeaderView *)self->_infoView layer];
    [v72 setBorderWidth:2.0];

    v73 = [MEMORY[0x277D75348] systemGreenColor];
    v74 = [v73 CGColor];
    v75 = [(OBHeaderView *)self->_infoView layer];
    [v75 setBorderColor:v74];

    v76 = [(UIVisualEffectView *)self->_buttonTrayEffectView layer];
    [v76 setBorderWidth:2.0];

    v77 = [MEMORY[0x277D75348] systemGrayColor];
    v78 = [v77 CGColor];
    v79 = [(UIVisualEffectView *)self->_buttonTrayEffectView layer];
    [v79 setBorderColor:v78];
  }

  v80 = [(HPSSpatialProfileEnrollmentController *)self view];
  [v80 addSubview:self->_enrollContentView];

  v81 = [(HPSSpatialProfileEnrollmentController *)self view];
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
  [(HPSSpatialProfileEnrollmentController *)self hideOcclusionContinueButton];
  [(HPSSpatialProfileEnrollmentController *)self hideEarDistanceWarningContinueButton];
  v170 = MEMORY[0x277CCAAD0];
  v228 = [(UIView *)self->_enrollContentView topAnchor];
  v229 = [(HPSSpatialProfileEnrollmentController *)self view];
  v227 = [v229 safeAreaLayoutGuide];
  v226 = [v227 topAnchor];
  v225 = [v228 constraintEqualToAnchor:v226];
  v236[0] = v225;
  v223 = [(UIView *)self->_enrollContentView heightAnchor];
  v224 = [(HPSSpatialProfileEnrollmentController *)self view];
  [v224 frame];
  v222 = [v223 constraintEqualToConstant:v82];
  v236[1] = v222;
  v220 = [(UIView *)self->_enrollContentView leadingAnchor];
  v221 = [(HPSSpatialProfileEnrollmentController *)self view];
  v219 = [v221 leadingAnchor];
  v218 = [v220 constraintEqualToAnchor:v219];
  v236[2] = v218;
  v216 = [(UIView *)self->_enrollContentView trailingAnchor];
  v217 = [(HPSSpatialProfileEnrollmentController *)self view];
  v215 = [v217 trailingAnchor];
  v214 = [v216 constraintEqualToAnchor:v215];
  v236[3] = v214;
  v213 = [(UIView *)self->_scrollContentView topAnchor];
  v231 = [(UIView *)self->_enrollContentView bottomAnchor];
  v212 = [v213 constraintEqualToAnchor:v231 constant:24.0];
  v236[4] = v212;
  v210 = [(UIView *)self->_scrollContentView leadingAnchor];
  v211 = [(HPSSpatialProfileEnrollmentController *)self view];
  v209 = [v211 leadingAnchor];
  v208 = [v210 constraintEqualToAnchor:v209 constant:24.0];
  v236[5] = v208;
  v206 = [(UIView *)self->_scrollContentView trailingAnchor];
  v207 = [(HPSSpatialProfileEnrollmentController *)self view];
  v205 = [v207 trailingAnchor];
  v204 = [v206 constraintEqualToAnchor:v205 constant:-24.0];
  v236[6] = v204;
  v202 = [(UIView *)self->_scrollContentView bottomAnchor];
  v203 = [(HPSSpatialProfileEnrollmentController *)self view];
  v201 = [v203 safeAreaLayoutGuide];
  v200 = [v201 bottomAnchor];
  v199 = [v202 constraintEqualToAnchor:v200];
  v236[7] = v199;
  v198 = [(OBTrayButton *)self->_continueButton leadingAnchor];
  v197 = [(UIView *)self->_scrollContentView leadingAnchor];
  v196 = [v198 constraintEqualToAnchor:v197];
  v236[8] = v196;
  v195 = [(OBTrayButton *)self->_continueButton trailingAnchor];
  v194 = [(UIView *)self->_scrollContentView trailingAnchor];
  v193 = [v195 constraintEqualToAnchor:v194];
  v236[9] = v193;
  v192 = [(OBTrayButton *)self->_continueButton bottomAnchor];
  v191 = [(UIView *)self->_scrollContentView bottomAnchor];
  v190 = [v192 constraintEqualToAnchor:v191];
  v236[10] = v190;
  v189 = [(OBTrayButton *)self->_occlusionContinueButton leadingAnchor];
  v188 = [(UIView *)self->_scrollContentView leadingAnchor];
  v187 = [v189 constraintEqualToAnchor:v188];
  v236[11] = v187;
  v186 = [(OBTrayButton *)self->_occlusionContinueButton trailingAnchor];
  v185 = [(UIView *)self->_scrollContentView trailingAnchor];
  v184 = [v186 constraintEqualToAnchor:v185];
  v236[12] = v184;
  v183 = [(OBTrayButton *)self->_occlusionContinueButton bottomAnchor];
  v182 = [(UIView *)self->_scrollContentView bottomAnchor];
  v181 = [v183 constraintEqualToAnchor:v182];
  v236[13] = v181;
  v179 = [(OBTrayButton *)self->_earDistanceWarnContinueButton leadingAnchor];
  v178 = [(UIView *)self->_scrollContentView leadingAnchor];
  v177 = [v179 constraintEqualToAnchor:v178];
  v236[14] = v177;
  v176 = [(OBTrayButton *)self->_earDistanceWarnContinueButton trailingAnchor];
  v175 = [(UIView *)self->_scrollContentView trailingAnchor];
  v174 = [v176 constraintEqualToAnchor:v175];
  v236[15] = v174;
  v172 = [(OBTrayButton *)self->_earDistanceWarnContinueButton bottomAnchor];
  v171 = [(UIView *)self->_scrollContentView bottomAnchor];
  v169 = [v172 constraintEqualToAnchor:v171];
  v236[16] = v169;
  v167 = [(UIVisualEffectView *)self->_buttonTrayEffectView leadingAnchor];
  v168 = [(HPSSpatialProfileEnrollmentController *)self view];
  v166 = [v168 leadingAnchor];
  v165 = [v167 constraintEqualToAnchor:v166];
  v236[17] = v165;
  v163 = [(UIVisualEffectView *)self->_buttonTrayEffectView trailingAnchor];
  v164 = [(HPSSpatialProfileEnrollmentController *)self view];
  v162 = [v164 trailingAnchor];
  v161 = [v163 constraintEqualToAnchor:v162];
  v236[18] = v161;
  v160 = [(UIVisualEffectView *)self->_buttonTrayEffectView topAnchor];
  v180 = [(OBTrayButton *)self->_continueButton topAnchor];
  v159 = [v160 constraintEqualToAnchor:v180 constant:-24.0];
  v236[19] = v159;
  v158 = [(UIVisualEffectView *)self->_buttonTrayEffectView topAnchor];
  v157 = [(OBTrayButton *)self->_occlusionContinueButton topAnchor];
  v156 = [v158 constraintEqualToAnchor:v157 constant:-24.0];
  v236[20] = v156;
  v155 = [(UIVisualEffectView *)self->_buttonTrayEffectView topAnchor];
  v173 = [(OBTrayButton *)self->_earDistanceWarnContinueButton topAnchor];
  v154 = [v155 constraintEqualToAnchor:v173 constant:-24.0];
  v236[21] = v154;
  v152 = [(UIVisualEffectView *)self->_buttonTrayEffectView bottomAnchor];
  v153 = [(HPSSpatialProfileEnrollmentController *)self view];
  v151 = [v153 bottomAnchor];
  v150 = [v152 constraintEqualToAnchor:v151];
  v236[22] = v150;
  v149 = [(UIScrollView *)self->_scrollView topAnchor];
  v148 = [(UIView *)self->_scrollContentView topAnchor];
  v147 = [v149 constraintEqualToAnchor:v148];
  v236[23] = v147;
  v146 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v145 = [(UIVisualEffectView *)self->_buttonTrayEffectView topAnchor];
  v144 = [v146 constraintEqualToAnchor:v145 constant:24.0];
  v236[24] = v144;
  v143 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v142 = [(UIView *)self->_scrollContentView leadingAnchor];
  v141 = [v143 constraintEqualToAnchor:v142];
  v236[25] = v141;
  v140 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v139 = [(UIView *)self->_scrollContentView trailingAnchor];
  v138 = [v140 constraintEqualToAnchor:v139];
  v236[26] = v138;
  v137 = [(UIView *)self->_scrollInnerContentView topAnchor];
  v136 = [(UIScrollView *)self->_scrollView topAnchor];
  v135 = [v137 constraintEqualToAnchor:v136];
  v236[27] = v135;
  v134 = [(UIView *)self->_scrollInnerContentView bottomAnchor];
  v133 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v132 = [v134 constraintEqualToAnchor:v133];
  v236[28] = v132;
  v131 = [(UIView *)self->_scrollInnerContentView leadingAnchor];
  v130 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v129 = [v131 constraintEqualToAnchor:v130];
  v236[29] = v129;
  v128 = [(UIView *)self->_scrollInnerContentView trailingAnchor];
  v127 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v126 = [v128 constraintEqualToAnchor:v127];
  v236[30] = v126;
  v233 = [(UIView *)self->_scrollInnerContentView widthAnchor];
  v125 = [(UIScrollView *)self->_scrollView widthAnchor];
  v124 = [v233 constraintEqualToAnchor:v125];
  v236[31] = v124;
  v123 = [(UIStackView *)self->_scrollInnerStackView topAnchor];
  v122 = [(UIScrollView *)self->_scrollView topAnchor];
  v121 = [v123 constraintEqualToAnchor:v122];
  v236[32] = v121;
  v120 = [(UIStackView *)self->_scrollInnerStackView bottomAnchor];
  v119 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v118 = [v120 constraintEqualToAnchor:v119];
  v236[33] = v118;
  v117 = [(UIStackView *)self->_scrollInnerStackView leadingAnchor];
  v116 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v115 = [v117 constraintEqualToAnchor:v116];
  v236[34] = v115;
  v114 = [(UIStackView *)self->_scrollInnerStackView trailingAnchor];
  v113 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v112 = [v114 constraintEqualToAnchor:v113];
  v236[35] = v112;
  v111 = [(OBHeaderView *)self->_infoView leadingAnchor];
  v110 = [(UIStackView *)self->_scrollInnerStackView leadingAnchor];
  v109 = [v111 constraintEqualToAnchor:v110];
  v236[36] = v109;
  v235 = [(OBHeaderView *)self->_infoView trailingAnchor];
  v108 = [(UIStackView *)self->_scrollInnerStackView trailingAnchor];
  v107 = [v235 constraintEqualToAnchor:v108];
  v236[37] = v107;
  v106 = [(UILabel *)self->_learnMoreView leadingAnchor];
  v105 = [(UIStackView *)self->_scrollInnerStackView leadingAnchor];
  v104 = [v106 constraintEqualToAnchor:v105];
  v236[38] = v104;
  v103 = [(UILabel *)self->_learnMoreView trailingAnchor];
  v102 = [(UIStackView *)self->_scrollInnerStackView trailingAnchor];
  v101 = [v103 constraintEqualToAnchor:v102];
  v236[39] = v101;
  v234 = [(UILabel *)self->_learnMoreView heightAnchor];
  v100 = [v234 constraintGreaterThanOrEqualToConstant:50.0];
  v236[40] = v100;
  v99 = [(UIView *)self->_spacerViewFirst leadingAnchor];
  v98 = [(UIStackView *)self->_scrollInnerStackView leadingAnchor];
  v97 = [v99 constraintEqualToAnchor:v98];
  v236[41] = v97;
  v96 = [(UIView *)self->_spacerViewFirst trailingAnchor];
  v95 = [(UIStackView *)self->_scrollInnerStackView trailingAnchor];
  v94 = [v96 constraintEqualToAnchor:v95];
  v236[42] = v94;
  v232 = [(UIView *)self->_spacerViewFirst heightAnchor];
  v83 = [v232 constraintEqualToConstant:24.0];
  v236[43] = v83;
  v84 = [(UIView *)self->_spacerViewSecond leadingAnchor];
  v85 = [(UIStackView *)self->_scrollInnerStackView leadingAnchor];
  v86 = [v84 constraintEqualToAnchor:v85];
  v236[44] = v86;
  v87 = [(UIView *)self->_spacerViewSecond trailingAnchor];
  v88 = [(UIStackView *)self->_scrollInnerStackView trailingAnchor];
  v89 = [v87 constraintEqualToAnchor:v88];
  v236[45] = v89;
  v90 = [(UIView *)self->_spacerViewSecond heightAnchor];
  v91 = [v90 constraintEqualToConstant:24.0];
  v236[46] = v91;
  v92 = [MEMORY[0x277CBEA60] arrayWithObjects:v236 count:47];
  [v170 activateConstraints:v92];

  v93 = *MEMORY[0x277D85DE8];
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
  v33 = [(UIView *)self->_welcomeContentView leadingAnchor];
  v32 = [(UIView *)self->_enrollContentView leadingAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v35[0] = v31;
  v30 = [(UIView *)self->_welcomeContentView trailingAnchor];
  v29 = [(UIView *)self->_enrollContentView trailingAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v35[1] = v28;
  v27 = [(UIView *)self->_welcomeContentView topAnchor];
  v26 = [(UIView *)self->_enrollContentView topAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v35[2] = v25;
  v23 = [(UIView *)self->_welcomeContentView bottomAnchor];
  v22 = [(UIView *)self->_enrollContentView bottomAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v35[3] = v21;
  v20 = [(UIImageView *)self->_welcomeImageView widthAnchor];
  v9 = [v20 constraintEqualToConstant:240.0];
  v35[4] = v9;
  v10 = [(UIImageView *)self->_welcomeImageView heightAnchor];
  v11 = [v10 constraintEqualToConstant:240.0];
  v35[5] = v11;
  v12 = [(UIImageView *)self->_welcomeImageView centerXAnchor];
  v13 = [(UIView *)self->_welcomeContentView centerXAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v35[6] = v14;
  v15 = [(UIImageView *)self->_welcomeImageView centerYAnchor];
  v16 = [(UIView *)self->_welcomeContentView centerYAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v35[7] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:8];
  [v24 activateConstraints:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)setupAudioVideo
{
  v3 = objc_alloc_init(HPSSpatialProfileSoundHapticManager);
  soundHapticManager = self->_soundHapticManager;
  self->_soundHapticManager = v3;

  [(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager start];
  v5 = objc_alloc_init(HPSSpatialProfileVideoCaptureSession);
  videoCaptureSession = self->videoCaptureSession;
  self->videoCaptureSession = v5;

  [(HPSSpatialProfileEnrollmentController *)self checkVolume];
}

- (void)checkVolume
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D26E58] sharedAVSystemController];
  p_initialVolume = &self->_initialVolume;
  v5 = [v3 getVolume:&self->_initialVolume forCategory:@"Audio/Video"];

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

      v10 = [MEMORY[0x277D26E58] sharedAVSystemController];
      LODWORD(v11) = 0.5;
      [v10 setVolumeTo:@"Audio/Video" forCategory:v11];

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

    v5 = [MEMORY[0x277D26E58] sharedAVSystemController];
    *&v6 = self->_initialVolume;
    [v5 setVolumeTo:@"Audio/Video" forCategory:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setupEnrollViewUI
{
  v52[12] = *MEMORY[0x277D85DE8];
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Setting up Enroll View UI", buf, 2u);
  }

  [(HPSSpatialProfileUIPearlEnrollView *)self->_enrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BKUIPearlEnrollView *)self->_enrollView setDelegate:self];
  [(BKUIPearlEnrollView *)self->_enrollView preEnrollActivate];
  v4 = [MEMORY[0x277D75348] systemBackgroundColor];
  [(BKUIPearlEnrollView *)self->_enrollView setBackgroundColor:v4];

  v5 = objc_alloc_init(HPSSpatialProfileEarPillContainerView);
  earPillContainer = self->_earPillContainer;
  self->_earPillContainer = v5;

  [(HPSSpatialProfileEarPillContainerView *)self->_earPillContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HPSSpatialProfileEarPillContainerView *)self->_earPillContainer setAlpha:0.0];
  v7 = [(HPSSpatialProfileEnrollmentController *)self view];
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

  v13 = [[HPSSpatialProfileEarDotsMovieView alloc] initWithFrame:0.0, 0.0, 345.0, v12];
  earDotsMovieView = self->_earDotsMovieView;
  self->_earDotsMovieView = v13;

  [(HPSSpatialProfileEarDotsMovieView *)self->_earDotsMovieView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HPSSpatialProfileEarDotsMovieView *)self->_earDotsMovieView setAlpha:0.0];
  [(UIView *)self->_enrollContentView addSubview:self->_enrollView];
  [(UIView *)self->_enrollContentView addSubview:self->_earPillContainer];
  [(UIView *)self->_enrollContentView addSubview:self->_earDotsMovieView];
  v38 = MEMORY[0x277CCAAD0];
  v50 = [(HPSSpatialProfileUIPearlEnrollView *)self->_enrollView leadingAnchor];
  v49 = [(UIView *)self->_enrollContentView leadingAnchor];
  v48 = [v50 constraintEqualToAnchor:v49];
  v52[0] = v48;
  v47 = [(HPSSpatialProfileUIPearlEnrollView *)self->_enrollView trailingAnchor];
  v46 = [(UIView *)self->_enrollContentView trailingAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v52[1] = v45;
  v44 = [(HPSSpatialProfileUIPearlEnrollView *)self->_enrollView topAnchor];
  v43 = [(UIView *)self->_enrollContentView topAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v52[2] = v42;
  v41 = [(HPSSpatialProfileUIPearlEnrollView *)self->_enrollView bottomAnchor];
  v40 = [(UIView *)self->_enrollContentView bottomAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v52[3] = v39;
  v37 = [(HPSSpatialProfileEarPillContainerView *)self->_earPillContainer widthAnchor];
  v36 = [v37 constraintEqualToConstant:172.5];
  v52[4] = v36;
  v35 = [(HPSSpatialProfileEarPillContainerView *)self->_earPillContainer heightAnchor];
  v34 = [v35 constraintEqualToConstant:25.0];
  v52[5] = v34;
  v33 = [(HPSSpatialProfileEarPillContainerView *)self->_earPillContainer centerXAnchor];
  v32 = [(UIView *)self->_enrollContentView centerXAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v52[6] = v31;
  v30 = [(HPSSpatialProfileEarPillContainerView *)self->_earPillContainer bottomAnchor];
  v29 = [(UIView *)self->_enrollContentView bottomAnchor];
  v28 = [v30 constraintEqualToAnchor:v29 constant:v11];
  v52[7] = v28;
  v27 = [(HPSSpatialProfileEarDotsMovieView *)self->_earDotsMovieView widthAnchor];
  v26 = [v27 constraintEqualToConstant:345.0];
  v52[8] = v26;
  v25 = [(HPSSpatialProfileEarDotsMovieView *)self->_earDotsMovieView heightAnchor];
  v15 = [v25 constraintEqualToConstant:v12];
  v52[9] = v15;
  v16 = [(HPSSpatialProfileEarDotsMovieView *)self->_earDotsMovieView centerXAnchor];
  v17 = [(UIView *)self->_enrollContentView centerXAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  v52[10] = v18;
  v19 = [(HPSSpatialProfileEarDotsMovieView *)self->_earDotsMovieView bottomAnchor];
  v20 = [(UIView *)self->_enrollContentView bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  v52[11] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:12];
  [v38 activateConstraints:v22];

  [(BKUIPearlEnrollView *)self->_enrollView setState:0 completion:&__block_literal_global_11];
  if (!self->_currentStep)
  {
    [(HPSSpatialProfileUIPearlEnrollView *)self->_enrollView setHidden:1];
  }

  v23 = [(HPSSpatialProfileEnrollmentController *)self view];
  [v23 setNeedsLayout];

  v24 = *MEMORY[0x277D85DE8];
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
  v32 = [(UIView *)self->_tutorialContentView leadingAnchor];
  v31 = [(UIView *)self->_enrollContentView leadingAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v34[0] = v30;
  v29 = [(UIView *)self->_tutorialContentView trailingAnchor];
  v28 = [(UIView *)self->_enrollContentView trailingAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v34[1] = v27;
  v26 = [(UIView *)self->_tutorialContentView topAnchor];
  v25 = [(UIView *)self->_enrollContentView topAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v34[2] = v24;
  v22 = [(UIView *)self->_tutorialContentView bottomAnchor];
  v21 = [(UIView *)self->_enrollContentView bottomAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v34[3] = v20;
  v19 = [(HPSSpatialProfileEarTutorialView *)self->_earTutorialView widthAnchor];
  v18 = [v19 constraintEqualToConstant:240.0];
  v34[4] = v18;
  v17 = [(HPSSpatialProfileEarTutorialView *)self->_earTutorialView heightAnchor];
  v8 = [v17 constraintEqualToConstant:106.666664];
  v34[5] = v8;
  v9 = [(HPSSpatialProfileEarTutorialView *)self->_earTutorialView centerXAnchor];
  v10 = [(UIView *)self->_tutorialContentView centerXAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v34[6] = v11;
  v12 = [(HPSSpatialProfileEarTutorialView *)self->_earTutorialView centerYAnchor];
  v13 = [(UIView *)self->_tutorialContentView centerYAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v34[7] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:8];
  [v23 activateConstraints:v15];

  [(UIView *)self->_tutorialContentView setHidden:1];
  v16 = *MEMORY[0x277D85DE8];
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

- (void)startEnrollment
{
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
      *v6 = 0;
      _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Starting Enrollment", v6, 2u);
    }

    self->_enrollmentStarted = 1;
    [(HRTFEnrollmentSession *)self->_enrollmentSession startSession:1 then:&__block_literal_global_90];
  }
}

void __56__HPSSpatialProfileEnrollmentController_startEnrollment__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    __56__HPSSpatialProfileEnrollmentController_startEnrollment__block_invoke_cold_1();
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
    [(HRTFEnrollmentSession *)self->_enrollmentSession stopSession:&__block_literal_global_94];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [HPSSpatialProfileSingeStepEnrollmentController stopEnrollment];
    }
  }
}

void __55__HPSSpatialProfileEnrollmentController_stopEnrollment__block_invoke()
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

- (void)moveToStep:(int)a3
{
  stepSerialQueue = self->_stepSerialQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke;
  v4[3] = &unk_2796ADDD0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(stepSerialQueue, v4);
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke(uint64_t a1)
{
  v2 = dispatch_group_create();
  v3 = dispatch_group_create();
  NSLog(&cfstr_SpatialProfile_17.isa);
  dispatch_group_enter(v2);
  objc_initWeak(&location, *(a1 + 32));
  *(*(a1 + 32) + 1256) = *(*(a1 + 32) + 1252);
  *(*(a1 + 32) + 1252) = *(a1 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2;
  block[3] = &unk_2796AD618;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
  v4 = *(a1 + 32);
  switch(*(v4 + 1252))
  {
    case 0:
      v5 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> Welcome", buf, 2u);
      }

      v147[0] = MEMORY[0x277D85DD0];
      v147[1] = 3221225472;
      v147[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_98;
      v147[3] = &unk_2796AD750;
      v147[4] = *(a1 + 32);
      v148 = v2;
      v6 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v147);

      v7 = v148;
      goto LABEL_61;
    case 1:
      v25 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v25, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontView", buf, 2u);
      }

      v26 = *(a1 + 32);
      if (!*(v26 + 1296))
      {
        v27 = objc_alloc_init(HPSSpatialProfileAnalytics);
        v28 = *(a1 + 32);
        v29 = *(v28 + 1296);
        *(v28 + 1296) = v27;

        v26 = *(a1 + 32);
      }

      v144[0] = MEMORY[0x277D85DD0];
      v144[1] = 3221225472;
      v144[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_101;
      v144[3] = &unk_2796ADE70;
      v144[4] = v26;
      v145 = v3;
      v146 = v2;
      v30 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v144);

      v7 = v145;
      goto LABEL_61;
    case 2:
      v43 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v43, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontViewCapturePositionFace", buf, 2u);
      }

      [*(*(a1 + 32) + 1296) initFrameRateDetection];
      [*(*(a1 + 32) + 1296) updateFaceEnrollStart];
      v140[0] = MEMORY[0x277D85DD0];
      v140[1] = 3221225472;
      v140[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_112;
      v140[3] = &unk_2796ADE70;
      v44 = v3;
      v45 = *(a1 + 32);
      v141 = v44;
      v142 = v45;
      v143 = v2;
      v46 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v140);

      v7 = v141;
      goto LABEL_61;
    case 3:
      v39 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v39, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontViewCaptureMoveHead", buf, 2u);
      }

      v136[0] = MEMORY[0x277D85DD0];
      v136[1] = 3221225472;
      v136[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_118;
      v136[3] = &unk_2796ADE70;
      v40 = v3;
      v41 = *(a1 + 32);
      v137 = v40;
      v138 = v41;
      v139 = v2;
      v42 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v136);

      v7 = v137;
      goto LABEL_61;
    case 4:
      v17 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v17, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontViewCaptureCompleted", buf, 2u);
      }

      [*(*(a1 + 32) + 1296) updateFaceEnrollDuration];
      v132[0] = MEMORY[0x277D85DD0];
      v132[1] = 3221225472;
      v132[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_122;
      v132[3] = &unk_2796ADE70;
      v18 = v3;
      v19 = *(a1 + 32);
      v133 = v18;
      v134 = v19;
      v135 = v2;
      v20 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v132);

      v7 = v133;
      goto LABEL_61;
    case 5:
      v31 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v31, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> RightEar", buf, 2u);
      }

      v128[0] = MEMORY[0x277D85DD0];
      v128[1] = 3221225472;
      v128[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_129;
      v128[3] = &unk_2796ADE70;
      v32 = v3;
      v33 = *(a1 + 32);
      v129 = v32;
      v130 = v33;
      v131 = v2;
      v34 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v128);

      v7 = v129;
      goto LABEL_61;
    case 6:
      v47 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v47, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> RightEarCaptureHoldPhone", buf, 2u);
      }

      [*(*(a1 + 32) + 1296) updateRightEarEnrollStart];
      v124[0] = MEMORY[0x277D85DD0];
      v124[1] = 3221225472;
      v124[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_142;
      v124[3] = &unk_2796ADE70;
      v48 = v3;
      v49 = *(a1 + 32);
      v125 = v48;
      v126 = v49;
      v127 = v2;
      v50 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v124);

      v7 = v125;
      goto LABEL_61;
    case 7:
      v51 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v51, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> RightEarCaptureRotateHead", buf, 2u);
      }

      [*(a1 + 32) startEarEnrollmentNudgeTimer];
      v119[0] = MEMORY[0x277D85DD0];
      v119[1] = 3221225472;
      v119[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_147;
      v119[3] = &unk_2796AE4D0;
      v52 = v3;
      v53 = *(a1 + 32);
      v120 = v52;
      v121 = v53;
      objc_copyWeak(&v123, &location);
      v122 = v2;
      v54 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v119);

      objc_destroyWeak(&v123);
      v7 = v120;
      goto LABEL_61;
    case 8:
      v63 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v63, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> RightEarCaptureCompleted", buf, 2u);
      }

      [*(*(a1 + 32) + 1296) updateRightEarEnrollDuration];
      [*(a1 + 32) stopEarEnrollmentNudgeTimer];
      v114[0] = MEMORY[0x277D85DD0];
      v114[1] = 3221225472;
      v114[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_151;
      v114[3] = &unk_2796AE4D0;
      v64 = v3;
      v65 = *(a1 + 32);
      v115 = v64;
      v116 = v65;
      objc_copyWeak(&v118, &location);
      v117 = v2;
      v66 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v114);

      objc_destroyWeak(&v118);
      v7 = v115;
      goto LABEL_61;
    case 9:
      v59 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v59, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> LeftEar", buf, 2u);
      }

      v110[0] = MEMORY[0x277D85DD0];
      v110[1] = 3221225472;
      v110[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_158;
      v110[3] = &unk_2796ADE70;
      v60 = v3;
      v61 = *(a1 + 32);
      v111 = v60;
      v112 = v61;
      v113 = v2;
      v62 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v110);

      v7 = v111;
      goto LABEL_61;
    case 0xA:
      v13 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> LeftEarCaptureHoldPhone", buf, 2u);
      }

      [*(*(a1 + 32) + 1296) updateLeftEarEnrollStart];
      v106[0] = MEMORY[0x277D85DD0];
      v106[1] = 3221225472;
      v106[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_170;
      v106[3] = &unk_2796ADE70;
      v14 = v3;
      v15 = *(a1 + 32);
      v107 = v14;
      v108 = v15;
      v109 = v2;
      v16 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v106);

      v7 = v107;
      goto LABEL_61;
    case 0xB:
      v35 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v35, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> LeftEarCaptureRotateHead", buf, 2u);
      }

      [*(a1 + 32) startEarEnrollmentNudgeTimer];
      v101[0] = MEMORY[0x277D85DD0];
      v101[1] = 3221225472;
      v101[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_175;
      v101[3] = &unk_2796AE4D0;
      v36 = v3;
      v37 = *(a1 + 32);
      v102 = v36;
      v103 = v37;
      objc_copyWeak(&v105, &location);
      v104 = v2;
      v38 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v101);

      objc_destroyWeak(&v105);
      v7 = v102;
      goto LABEL_61;
    case 0xC:
      v21 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v21, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> LeftEarCaptureCompleted", buf, 2u);
      }

      [*(*(a1 + 32) + 1296) updateLeftEarEnrollDuration];
      [*(a1 + 32) stopEarEnrollmentNudgeTimer];
      v96[0] = MEMORY[0x277D85DD0];
      v96[1] = 3221225472;
      v96[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_179;
      v96[3] = &unk_2796AE4D0;
      v22 = v3;
      v23 = *(a1 + 32);
      v97 = v22;
      v98 = v23;
      objc_copyWeak(&v100, &location);
      v99 = v2;
      v24 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v96);

      objc_destroyWeak(&v100);
      v7 = v97;
      goto LABEL_61;
    case 0xE:
      v12 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> RetrieveProfile", buf, 2u);
      }

      [*(a1 + 32) retrieveProfile];
      goto LABEL_66;
    case 0xF:
      v55 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v55, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> SyncProfile", buf, 2u);
      }

      [*(a1 + 32) syncProfile];
      goto LABEL_66;
    case 0x10:
      [*(v4 + 1296) updateStatus:1 EnrollmentResult:@"Success"];
      v56 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v56, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> Completed", buf, 2u);
      }

      v94[0] = MEMORY[0x277D85DD0];
      v94[1] = 3221225472;
      v94[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_189;
      v94[3] = &unk_2796AD750;
      v94[4] = *(a1 + 32);
      v57 = v3;
      v95 = v57;
      v58 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v94);

      v92[0] = MEMORY[0x277D85DD0];
      v92[1] = 3221225472;
      v92[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_201;
      v92[3] = &unk_2796AD618;
      v93 = v2;
      dispatch_group_notify(v57, v58, v92);

      v7 = v95;
      goto LABEL_61;
    case 0x11:
      v71 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v71, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> CouldntScanEar", buf, 2u);
      }

      [*(*(a1 + 32) + 1296) updateStatus:0 EnrollmentResult:@"Failed"];
      v89[0] = MEMORY[0x277D85DD0];
      v89[1] = 3221225472;
      v89[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_205;
      v89[3] = &unk_2796AD750;
      v72 = v3;
      v73 = *(a1 + 32);
      v90 = v72;
      v91 = v73;
      v74 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v89);

      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_215;
      v87[3] = &unk_2796AD618;
      v88 = v2;
      dispatch_group_notify(v72, v74, v87);

      v7 = v90;
      goto LABEL_61;
    case 0x12:
      v67 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v67, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> HairCoveringEar", buf, 2u);
      }

      [*(*(a1 + 32) + 1296) updateStatus:0 EnrollmentResult:@"Failed"];
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_216;
      v84[3] = &unk_2796AD750;
      v68 = v3;
      v69 = *(a1 + 32);
      v85 = v68;
      v86 = v69;
      v70 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v84);

      v82[0] = MEMORY[0x277D85DD0];
      v82[1] = 3221225472;
      v82[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_223;
      v82[3] = &unk_2796AD618;
      v83 = v2;
      dispatch_group_notify(v68, v70, v82);

      v7 = v85;
      goto LABEL_61;
    case 0x13:
      v8 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> GeneralFailure", buf, 2u);
      }

      [*(*(a1 + 32) + 1296) updateStatus:0 EnrollmentResult:@"Failed"];
      v79[0] = MEMORY[0x277D85DD0];
      v79[1] = 3221225472;
      v79[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_224;
      v79[3] = &unk_2796AD750;
      v9 = v3;
      v10 = *(a1 + 32);
      v80 = v9;
      v81 = v10;
      v11 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v79);

      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_3_232;
      v77[3] = &unk_2796AD618;
      v78 = v2;
      dispatch_group_notify(v9, v11, v77);

      v7 = v80;
LABEL_61:

      break;
    default:
      v76 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        __61__HPSSpatialProfileSingeStepEnrollmentController_moveToStep___block_invoke_cold_1();
      }

LABEL_66:
      dispatch_group_leave(v2);
      break;
  }

  v75 = dispatch_time(0, 3000000000);
  dispatch_group_wait(v2, v75);
  objc_destroyWeak(&location);
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_98(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1048);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"CONTINUE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4 forState:0];

  if (!+[HPSSpatialProfileManager isProxCardShowed])
  {
    [HPSSpatialProfileManager setProxCardShowed:1];
  }

  [*(a1 + 32) startEnrollment];
  [*(a1 + 32) showContinueButton];
  [*(*(a1 + 32) + 1160) setAlpha:0.0];
  v5 = *(a1 + 40);

  dispatch_group_leave(v5);
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_101(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"FRONT_VIEW" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 32) + 1032);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"FRONT_VIEW_DETAIL" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  v8 = *(*(a1 + 32) + 1048);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"START_FRONT_VIEW_CAPTURE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v8 setTitle:v10 forState:0];

  [*(*(a1 + 32) + 1096) removeFromSuperview];
  [*(*(a1 + 32) + 1040) removeFromSuperview];
  [*(*(a1 + 32) + 1088) removeFromSuperview];
  [*(*(a1 + 32) + 1152) setHidden:0];
  [*(*(a1 + 32) + 1152) setFaceCaptured:0];
  dispatch_group_enter(*(a1 + 40));
  v11 = *(*(a1 + 32) + 1152);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_111;
  v15[3] = &unk_2796AD618;
  v16 = *(a1 + 40);
  [v11 setState:2 completion:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_3;
  v13[3] = &unk_2796AD618;
  v12 = *(a1 + 40);
  v14 = *(a1 + 48);
  dispatch_group_notify(v12, MEMORY[0x277D85CD0], v13);
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_3(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontView Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_112(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"FRONT_VIEW_CAPTURE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 40) + 1032);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"FRONT_VIEW_DETAIL" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  *(*(a1 + 40) + 1336) = 5;
  [*(a1 + 40) startCaptureViewTimer];
  [*(a1 + 40) hideContinueButton];
  dispatch_group_enter(*(a1 + 32));
  v8 = *(*(a1 + 40) + 1152);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_116;
  v17[3] = &unk_2796AD618;
  v18 = *(a1 + 32);
  [v8 setState:3 completion:v17];
  dispatch_group_enter(*(a1 + 32));
  v9 = *(a1 + 40);
  v10 = *(v9 + 1144);
  v11 = *(v9 + 1252);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_3_117;
  v15[3] = &unk_2796AD618;
  v16 = *(a1 + 32);
  [v10 triggerSoundHapticForEnrollmentState:v11 completion:v15];
  [*(a1 + 40) resumeEnrollment];
  dispatch_group_leave(*(a1 + 32));
  v12 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4;
  block[3] = &unk_2796AD618;
  v14 = *(a1 + 48);
  dispatch_group_notify(v12, MEMORY[0x277D85CD0], block);
  [*(a1 + 40) startFaceInFrameHandlerTimer];
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontViewCapturePositionFace Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_118(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1152);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_119;
  v11[3] = &unk_2796AD618;
  v12 = *(a1 + 32);
  [v2 setState:5 completion:v11];
  dispatch_group_enter(*(a1 + 32));
  v3 = *(a1 + 40);
  v4 = *(v3 + 1144);
  v5 = *(v3 + 1252);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_3_120;
  v9[3] = &unk_2796AD618;
  v10 = *(a1 + 32);
  [v4 triggerSoundHapticForEnrollmentState:v5 completion:v9];
  v6 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_121;
  block[3] = &unk_2796AD618;
  v8 = *(a1 + 48);
  dispatch_group_notify(v6, MEMORY[0x277D85CD0], block);
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_121(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontViewCaptureMoveHead Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_122(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"FRONT_VIEW_CAPTURE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 40) + 1032);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"FRONT_VIEW_CAPTURED" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  v8 = *(*(a1 + 40) + 1048);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CONTINUE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v8 setTitle:v10 forState:0];

  [*(a1 + 40) stopCaptureViewTimer];
  [*(*(a1 + 40) + 1152) setFaceCaptured:1];
  [*(a1 + 40) showContinueButton];
  [*(a1 + 40) forceBlur];
  dispatch_group_enter(*(a1 + 32));
  v11 = *(*(a1 + 40) + 1152);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_126;
  v20[3] = &unk_2796AD618;
  v21 = *(a1 + 32);
  [v11 setState:6 completion:v20];
  dispatch_group_enter(*(a1 + 32));
  v12 = *(a1 + 40);
  v13 = *(v12 + 1144);
  v14 = *(v12 + 1252);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_3_127;
  v18[3] = &unk_2796AD618;
  v19 = *(a1 + 32);
  [v13 triggerSoundHapticForEnrollmentState:v14 completion:v18];
  [*(a1 + 40) pauseEnrollment];
  dispatch_group_leave(*(a1 + 32));
  v15 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_128;
  block[3] = &unk_2796AD618;
  v17 = *(a1 + 48);
  dispatch_group_notify(v15, MEMORY[0x277D85CD0], block);
  [*(a1 + 40) stopFaceInFrameHandlerTimer];
  [*(a1 + 40) sendTipKitSignal];
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_128(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> FrontViewCaptureCompleted Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_129(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"RIGHT_EAR" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 40) + 1032);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"RIGHT_EAR_DETAIL" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  v8 = *(*(a1 + 40) + 1048);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"START_RIGHT_EAR_CAPTURE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
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
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_139;
  v26[3] = &unk_2796AD618;
  v27 = *(a1 + 32);
  [v14 setState:3 completion:v26];
  dispatch_group_enter(*(a1 + 32));
  v15 = *(a1 + 40);
  v16 = *(v15 + 1144);
  v17 = *(v15 + 1252);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_3_140;
  v24[3] = &unk_2796AD618;
  v25 = *(a1 + 32);
  [v16 triggerSoundHapticForEnrollmentState:v17 completion:v24];
  dispatch_group_leave(*(a1 + 32));
  v18 = *(a1 + 32);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_141;
  v21[3] = &unk_2796AD750;
  v19 = *(a1 + 48);
  v20 = *(a1 + 40);
  v22 = v19;
  v23 = v20;
  dispatch_group_notify(v18, MEMORY[0x277D85CD0], v21);
}

uint64_t __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_141(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> RightEar Done", v4, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
  return [*(a1 + 40) startTutorialResumeEnrollTimer];
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_142(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  [*(a1 + 40) stopTutorialResumeEnrollTimer];
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"RIGHT_EAR_CAPTURE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
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
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_146;
  block[3] = &unk_2796AD618;
  v7 = *(a1 + 48);
  dispatch_group_notify(v5, MEMORY[0x277D85CD0], block);
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_146(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> RightEarCaptureHoldPhone Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_147(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"RIGHT_EAR_CAPTURE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  [*(*(a1 + 40) + 992) bringSubviewToFront:*(*(a1 + 40) + 1192)];
  [*(*(a1 + 40) + 1192) setFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [*(*(a1 + 40) + 1184) setAlpha:1.0];
  dispatch_group_enter(*(a1 + 32));
  v5 = *(*(a1 + 40) + 1152);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_148;
  v14[3] = &unk_2796AD818;
  objc_copyWeak(&v16, (a1 + 56));
  v15 = *(a1 + 32);
  [v5 setState:5 completion:v14];
  dispatch_group_enter(*(a1 + 32));
  v6 = *(a1 + 40);
  v7 = *(v6 + 1144);
  v8 = *(v6 + 1252);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_3_149;
  v12[3] = &unk_2796AD618;
  v13 = *(a1 + 32);
  [v7 triggerSoundHapticForEnrollmentState:v8 completion:v12];
  dispatch_group_leave(*(a1 + 32));
  v9 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_150;
  v10[3] = &unk_2796AD618;
  v11 = *(a1 + 48);
  dispatch_group_notify(v9, MEMORY[0x277D85CD0], v10);

  objc_destroyWeak(&v16);
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_148(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained showEarPillsDots];

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_150(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> RightEarCaptureRotateHead Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_151(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  [*(a1 + 40) hideEarDistanceWarningContinueButton];
  [*(a1 + 40) hideOcclusionContinueButton];
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"RIGHT_EAR_CAPTURE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 40) + 1032);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"RIGHT_EAR_CAPTURED" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  v8 = *(*(a1 + 40) + 1048);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CONTINUE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v8 setTitle:v10 forState:0];

  [*(a1 + 40) stopCaptureViewTimer];
  [*(a1 + 40) stopEnrollGuidanceTimer];
  [*(*(a1 + 40) + 1192) setHidden:1];
  [*(a1 + 40) showContinueButton];
  [*(a1 + 40) forceBlur];
  [*(a1 + 40) hideEarPillsDots];
  dispatch_group_enter(*(a1 + 32));
  v11 = *(*(a1 + 40) + 1152);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_155;
  v20[3] = &unk_2796AD818;
  objc_copyWeak(&v22, (a1 + 56));
  v21 = *(a1 + 32);
  [v11 setState:6 completion:v20];
  dispatch_group_enter(*(a1 + 32));
  v12 = *(a1 + 40);
  v13 = *(v12 + 1144);
  v14 = *(v12 + 1252);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_3_156;
  v18[3] = &unk_2796AD618;
  v19 = *(a1 + 32);
  [v13 triggerSoundHapticForEnrollmentState:v14 completion:v18];
  [*(a1 + 40) pauseEnrollment];
  *(*(a1 + 40) + 1368) = 3;
  dispatch_group_leave(*(a1 + 32));
  v15 = *(a1 + 32);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_157;
  v16[3] = &unk_2796AD618;
  v17 = *(a1 + 48);
  dispatch_group_notify(v15, MEMORY[0x277D85CD0], v16);

  objc_destroyWeak(&v22);
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_155(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained[144] pillContainer];
  [v2 setHidden:0];

  dispatch_group_leave(*(a1 + 32));
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_157(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> RightEarCaptureCompleted Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_158(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"LEFT_EAR" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 40) + 1032);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"LEFT_EAR_DETAIL" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  v8 = *(*(a1 + 40) + 1048);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"START_LEFT_EAR_CAPTURE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v8 setTitle:v10 forState:0];

  [*(*(a1 + 40) + 1168) setHidden:0];
  [*(*(a1 + 40) + 1176) startPlayerLeftEar];
  dispatch_group_enter(*(a1 + 32));
  v11 = *(*(a1 + 40) + 1152);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_168;
  v19[3] = &unk_2796AD618;
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
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_3_169;
  block[3] = &unk_2796AD750;
  v14 = *(a1 + 48);
  v15 = *(a1 + 40);
  v17 = v14;
  v18 = v15;
  dispatch_group_notify(v13, MEMORY[0x277D85CD0], block);
}

uint64_t __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_3_169(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> LeftEar Done", v4, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
  return [*(a1 + 40) startTutorialResumeEnrollTimer];
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_170(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"LEFT_EAR_CAPTURE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
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
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_174;
  block[3] = &unk_2796AD618;
  v12 = *(a1 + 48);
  dispatch_group_notify(v10, MEMORY[0x277D85CD0], block);
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_174(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> LeftEarCaptureHoldPhone Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_175(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"LEFT_EAR_CAPTURE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  dispatch_group_enter(*(a1 + 32));
  v5 = [*(*(a1 + 40) + 1152) pillContainer];
  [v5 setHidden:1];

  v6 = *(*(a1 + 40) + 1152);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_176;
  v15[3] = &unk_2796AD818;
  objc_copyWeak(&v17, (a1 + 56));
  v16 = *(a1 + 32);
  [v6 setState:5 completion:v15];
  [*(*(a1 + 40) + 1192) setFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  *(*(a1 + 40) + 1380) = 0;
  *(*(a1 + 40) + 1379) = 0;
  dispatch_group_enter(*(a1 + 32));
  v7 = *(a1 + 40);
  v8 = *(v7 + 1144);
  v9 = *(v7 + 1252);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_3_177;
  v13[3] = &unk_2796AD618;
  v14 = *(a1 + 32);
  [v8 triggerSoundHapticForEnrollmentState:v9 completion:v13];
  [*(a1 + 40) resumeEnrollment];
  dispatch_group_leave(*(a1 + 32));
  v10 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_178;
  v11[3] = &unk_2796AD618;
  v12 = *(a1 + 48);
  dispatch_group_notify(v10, MEMORY[0x277D85CD0], v11);

  objc_destroyWeak(&v17);
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_176(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained showEarPillsDots];

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_178(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> LeftEarCaptureRotateHead Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_179(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  [*(*(a1 + 40) + 1192) setHidden:1];
  [*(a1 + 40) hideEarDistanceWarningContinueButton];
  [*(a1 + 40) hideOcclusionContinueButton];
  [*(a1 + 40) stopEnrollGuidanceTimer];
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"LEFT_EAR_CAPTURE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 40) + 1032);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"LEFT_EAR_CAPTURED" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  [*(a1 + 40) stopCaptureViewTimer];
  [*(a1 + 40) startPostProcessTimer];
  [*(a1 + 40) hideEarPillsDots];
  [*(a1 + 40) forceBlur];
  *(*(a1 + 40) + 1384) = 3;
  dispatch_group_enter(*(a1 + 32));
  v8 = *(*(a1 + 40) + 1152);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_183;
  v17[3] = &unk_2796AD818;
  objc_copyWeak(&v19, (a1 + 56));
  v18 = *(a1 + 32);
  [v8 setState:6 completion:v17];
  dispatch_group_enter(*(a1 + 32));
  v9 = *(a1 + 40);
  v10 = *(v9 + 1144);
  v11 = *(v9 + 1252);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_3_184;
  v15[3] = &unk_2796AD618;
  v16 = *(a1 + 32);
  [v10 triggerSoundHapticForEnrollmentState:v11 completion:v15];
  dispatch_group_leave(*(a1 + 32));
  v12 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_185;
  v13[3] = &unk_2796AD618;
  v14 = *(a1 + 48);
  dispatch_group_notify(v12, MEMORY[0x277D85CD0], v13);

  objc_destroyWeak(&v19);
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_183(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained[144] pillContainer];
  [v2 setHidden:0];

  dispatch_group_leave(*(a1 + 32));
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_185(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> LeftEarCaptureCompleted Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_189(uint64_t a1)
{
  [*(a1 + 32) stopTimers];
  dispatch_group_enter(*(a1 + 40));
  v2 = *(*(a1 + 32) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_TITLE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 32) + 1032);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_COMPLETE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  v8 = *(*(a1 + 32) + 1048);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"DONE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
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
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_199;
  v21[3] = &unk_2796AD618;
  v22 = *(a1 + 40);
  [v12 setState:10 completion:v21];
  dispatch_group_enter(*(a1 + 40));
  v13 = *(a1 + 32);
  v14 = *(v13 + 1144);
  v15 = *(v13 + 1252);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_3_200;
  v19 = &unk_2796AD618;
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

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_4_201(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> Completed Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_205(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"COULDNT_SCAN_EAR" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 40) + 1032);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"COULDNT_SCAN_EAR_DETAIL" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  [*(a1 + 40) showContinueButton];
  [*(*(a1 + 40) + 1048) removeTarget:*(a1 + 40) action:sel_continueButtonTapped forControlEvents:64];
  v8 = *(*(a1 + 40) + 1048);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"SCAN_AGAIN" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v8 setTitle:v10 forState:0];

  [*(*(a1 + 40) + 1048) addTarget:*(a1 + 40) action:sel_cancelSpatialAudioProfile forControlEvents:64];
  v11 = *(a1 + 32);

  dispatch_group_leave(v11);
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_215(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> CouldntScanEar Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_216(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"HAIR_COVERING_EAR" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 40) + 1032);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"HAIR_COVERING_EAR_DETAIL" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  [*(a1 + 40) showContinueButton];
  [*(*(a1 + 40) + 1048) removeTarget:*(a1 + 40) action:sel_continueButtonTapped forControlEvents:64];
  v8 = *(*(a1 + 40) + 1048);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"SCAN_AGAIN" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v8 setTitle:v10 forState:0];

  [*(*(a1 + 40) + 1048) addTarget:*(a1 + 40) action:sel_cancelSpatialAudioProfile forControlEvents:64];
  v11 = *(a1 + 32);

  dispatch_group_leave(v11);
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_223(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Move to Step -> HairCoveringEar Done", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_224(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"GENERAL_FAILURE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 40) + 1032);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"GENERAL_FAILURE_DETAIL" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v7];

  v8 = *(*(a1 + 40) + 1048);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"DONE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
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
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_2_231;
  v13[3] = &unk_2796AD618;
  v14 = *(a1 + 32);
  [v12 triggerSoundHapticForEnrollmentState:19 completion:v13];
}

void __52__HPSSpatialProfileEnrollmentController_moveToStep___block_invoke_3_232(uint64_t a1)
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
  v15 = *MEMORY[0x277D85DE8];
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    currentStep = self->_currentStep;
    sessionState = self->_sessionState;
    v12[0] = 67109376;
    v12[1] = currentStep;
    v13 = 1024;
    v14 = sessionState;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: ContinueButton Tapped Current Step %d, Currente Session %d ", v12, 0xEu);
  }

  if (!self->_currentStep)
  {
    if ([(HPSSpatialProfileEnrollmentController *)self checkAndShowInEarPopup])
    {
      goto LABEL_21;
    }

    if (([(BluetoothManager *)self->_btManager available]& 1) == 0)
    {
      v9 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12[0]) = 0;
        _os_log_impl(&dword_251143000, v9, OS_LOG_TYPE_DEFAULT, "Spatial Profile: btManager is not available", v12, 2u);
      }

      if (!self->_welcomeSpinnerOn)
      {
        v10 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v12[0]) = 0;
          _os_log_impl(&dword_251143000, v10, OS_LOG_TYPE_DEFAULT, "Spatial Profile: btManager is not available starting welcome spinner", v12, 2u);
        }

        [(HPSSpatialProfileEnrollmentController *)self startWelcomeSpinner];
      }
    }
  }

  if (self->_enrollmentReady)
  {
    v6 = self->_currentStep;
    if (v6 <= 13)
    {
      if (self->_sessionState != 3)
      {
        v8 = (v6 + 1);
        v7 = self;
        goto LABEL_20;
      }

      if (v6 != 12)
      {
        v7 = self;
        v8 = 12;
LABEL_20:
        [(HPSSpatialProfileEnrollmentController *)v7 moveToStep:v8];
      }
    }
  }

  else if (!self->_welcomeSpinnerOn)
  {
    [(HPSSpatialProfileEnrollmentController *)self startWelcomeSpinner];
  }

LABEL_21:
  v11 = *MEMORY[0x277D85DE8];
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
  [(HPSSpatialProfileEnrollmentController *)self cancelSpatialAudioProfile];
}

- (void)stopTimers
{
  [(HPSSpatialProfileEnrollmentController *)self stopFaceInFrameHandlerTimer];
  [(HPSSpatialProfileEnrollmentController *)self stopOcclusionWarnCoolDownTimer];
  [(HPSSpatialProfileEnrollmentController *)self stopEarDistanceWarnCoolDownTimer];
  [(HPSSpatialProfileEnrollmentController *)self stopEnrollGuidanceTimer];
  [(HPSSpatialProfileEnrollmentController *)self stopCaptureViewTimer];
  [(HPSSpatialProfileEnrollmentController *)self stopPostProcessTimer];

  [(HPSSpatialProfileEnrollmentController *)self stopEarEnrollmentNudgeTimer];
}

- (void)cancelSpatialAudioProfile
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Cancel Spatial Audio Profile", &v14, 2u);
  }

  v4 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    x = self->_currentEarBB.origin.x;
    y = self->_currentEarBB.origin.y;
    width = self->_currentEarBB.size.width;
    height = self->_currentEarBB.size.height;
    leftLastReceivedYaw = self->_leftLastReceivedYaw;
    rightLastReceivedYaw = self->_rightLastReceivedYaw;
    v14 = 134219264;
    v15 = x;
    v16 = 2048;
    v17 = y;
    v18 = 2048;
    v19 = width;
    v20 = 2048;
    v21 = height;
    v22 = 2048;
    v23 = leftLastReceivedYaw;
    v24 = 2048;
    v25 = rightLastReceivedYaw;
    _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: _currentEarBB.origin.x %f , _currentEarBB.origin.y %f , _currentEarBB.size.width %f , _currentEarBB.size.height %f Left Ear Last Yaw %f Right Ear Last Yaw %f", &v14, 0x3Eu);
  }

  if (self->_enrollmentStarted)
  {
    [(HPSSpatialProfileEnrollmentController *)self stopEnrollment];
  }

  [(HPSSpatialProfileEnrollmentController *)self stopTimers];
  [(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager stop];
  [(HPSSpatialProfileEnrollmentController *)self resetVolume];
  [(HPSSpatialProfileEarTutorialView *)self->_earTutorialView stopPlayers];
  [(HPSSpatialProfileEnrollmentController *)self dismissViewControllerAnimated:1 completion:&__block_literal_global_237];
  if (self->_enrollmentCompleted)
  {
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 postNotificationName:@"HPSSpatialAudioProfileUpdated" object:0];
  }

  if (self->dismissalHandler)
  {
    v12 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Executing : Dismiss handler", &v14, 2u);
    }

    (*(self->dismissalHandler + 2))();
  }

  [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics submitHPSSpatialProfileEnrollAnalytics];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)bluetoothDidBecomeAvailable
{
  self->_bluetoothBecameAvailable = 1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HPSSpatialProfileEnrollmentController_bluetoothDidBecomeAvailable__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __68__HPSSpatialProfileEnrollmentController_bluetoothDidBecomeAvailable__block_invoke(uint64_t result)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(*(result + 32) + 1232) == 1)
  {
    v1 = result;
    v2 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(v1 + 32);
      v4 = *(v3 + 1318);
      v5 = [*(v3 + 1416) available];
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
  [a1 code];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void __56__HPSSpatialProfileEnrollmentController_retrieveProfile__block_invoke_244(void *a1, void *a2)
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

  [*(a1[4] + 1288) appendData:v3];
  dispatch_group_leave(*(*(a1[5] + 8) + 40));
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __56__HPSSpatialProfileEnrollmentController_retrieveProfile__block_invoke_246(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(a1 + 32) + 1288) length];
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Retrieved Profile Size: %lu", &v6, 0xCu);
  }

  result = [*(a1 + 32) moveToStep:15];
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
    v10[2] = __52__HPSSpatialProfileEnrollmentController_syncProfile__block_invoke;
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

void __52__HPSSpatialProfileEnrollmentController_syncProfile__block_invoke(uint64_t a1, void *a2)
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

  [*(a1 + 32) moveToStep:16];
  [*(a1 + 40) invalidate];
}

- (id)angleArrayToBinaryString:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
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
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

    [(HPSSpatialProfileEnrollmentController *)self stopTutorialResumeEnrollTimer];
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

- (void)tutorialResumeEnrollTimerDidFire
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10[0]) = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Tutorial automatic Delay Transition Timer did Fire", v10, 2u);
  }

  currentStep = self->_currentStep;
  if (currentStep == 9 || currentStep == 5)
  {
    v6 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_currentStep;
      enrollmentPaused = self->_enrollmentPaused;
      v10[0] = 67109376;
      v10[1] = v7;
      v11 = 1024;
      v12 = enrollmentPaused;
      _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Starting enrollment while in Ear tutorial %d Enrollment Status %d", v10, 0xEu);
    }

    if (self->_enrollmentPaused)
    {
      [(HPSSpatialProfileEnrollmentController *)self resumeEnrollment];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
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

    [(HPSSpatialProfileEnrollmentController *)self stopCaptureViewTimer];
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
  v12[2] = __64__HPSSpatialProfileEnrollmentController_captureViewTimerDidFire__block_invoke;
  v12[3] = &unk_2796AD708;
  v12[4] = self;
  v11 = [v8 actionWithTitle:v10 style:0 handler:v12];
  [v7 addAction:v11];

  [(HPSSpatialProfileEnrollmentController *)self presentViewController:v7 animated:1 completion:0];
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
  v28 = *MEMORY[0x277D85DE8];
  if (self->_supressEarEnrollWarning)
  {
    goto LABEL_18;
  }

  leftEarStatus = self->_leftEarStatus;
  v4 = leftEarStatus < 1 || leftEarStatus == 3;
  if (!v4 && self->_currentTrackingEar == 2)
  {
    v5 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      supressEarEnrollWarning = self->_supressEarEnrollWarning;
      rightEarStatus = self->_rightEarStatus;
      v8 = self->_leftEarStatus;
      leftEarCaptureCount = self->_leftEarCaptureCount;
      v20 = 67109888;
      v21 = supressEarEnrollWarning;
      v22 = 1024;
      v23 = rightEarStatus;
      v24 = 1024;
      v25 = v8;
      v26 = 1024;
      v27 = leftEarCaptureCount;
      v10 = "Spatial Profile: Detecting right ear during left enrollment Timeout: %d Right ear status %d Left ear status %d Threshold %d";
      v11 = v5;
      v12 = 26;
LABEL_16:
      _os_log_impl(&dword_251143000, v11, OS_LOG_TYPE_DEFAULT, v10, &v20, v12);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v13 = self->_rightEarStatus;
  v14 = v13 < 1 || v13 == 3;
  if (v14 || self->_currentTrackingEar != 1)
  {
LABEL_18:
    result = 0;
    goto LABEL_19;
  }

  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = self->_supressEarEnrollWarning;
    v16 = self->_rightEarStatus;
    v17 = self->_leftEarCaptureCount;
    v20 = 67109632;
    v21 = v15;
    v22 = 1024;
    v23 = v16;
    v24 = 1024;
    v25 = v17;
    v10 = "Spatial Profile: Detectin left ear during right enrollment Timeout: %d Right ear status %d Threshold %d";
    v11 = v5;
    v12 = 20;
    goto LABEL_16;
  }

LABEL_17:

  result = 1;
LABEL_19:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)alertEarEnrollWarning
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    currentYaw = self->_currentYaw;
    candidateYaw = self->_candidateYaw;
    *buf = 134218240;
    v24 = currentYaw;
    v25 = 2048;
    v26 = candidateYaw;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Error Message *** Enrolling Left ear while right ear enroll is still pending Current yaw %f Candidate Yaw %f ", buf, 0x16u);
  }

  [(HPSSpatialProfileEnrollmentController *)self pauseEnrollment];
  [(HPSSpatialProfileEnrollmentController *)self forceBlur];
  [(CEKSubjectIndicatorView *)self->_earBoundingBoxView setHidden:1];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_WRONG_EAR_LEFT_TITLE" value:&stru_286339F58 table:@"SpatialAudioProfile"];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_WRONG_EAR_LEFT_TEXT" value:&stru_286339F58 table:@"SpatialAudioProfile"];

  if (self->_currentTrackingEar == 1)
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_WRONG_EAR_RIGHT_TITLE" value:&stru_286339F58 table:@"SpatialAudioProfile"];

    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_WRONG_EAR_RIGHT_TEXT" value:&stru_286339F58 table:@"SpatialAudioProfile"];

    v9 = v13;
    v7 = v11;
  }

  v14 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:v9 preferredStyle:1];
  v15 = MEMORY[0x277D750F8];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"CANCEL_ENROLLMENT_ALERT_PROMPT_BUTTON" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __62__HPSSpatialProfileEnrollmentController_alertEarEnrollWarning__block_invoke;
  v22[3] = &unk_2796AD708;
  v22[4] = self;
  v18 = [v15 actionWithTitle:v17 style:0 handler:v22];
  [v14 addAction:v18];

  [(HPSSpatialProfileEnrollmentController *)self presentViewController:v14 animated:1 completion:0];
  stepSerialQueue = self->_stepSerialQueue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __62__HPSSpatialProfileEnrollmentController_alertEarEnrollWarning__block_invoke_3;
  v21[3] = &unk_2796AD618;
  v21[4] = self;
  dispatch_async(stepSerialQueue, v21);

  v20 = *MEMORY[0x277D85DE8];
}

void __62__HPSSpatialProfileEnrollmentController_alertEarEnrollWarning__block_invoke(uint64_t a1)
{
  [*(a1 + 32) startEarEnrollWarningTimer];
  [*(a1 + 32) cancelBlur];
  [*(a1 + 32) resumeEnrollment];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__HPSSpatialProfileEnrollmentController_alertEarEnrollWarning__block_invoke_2;
  block[3] = &unk_2796AD618;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __62__HPSSpatialProfileEnrollmentController_alertEarEnrollWarning__block_invoke_3(uint64_t a1)
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v3 = *(*(a1 + 32) + 1144);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__HPSSpatialProfileEnrollmentController_alertEarEnrollWarning__block_invoke_4;
  v5[3] = &unk_2796AD618;
  v6 = v2;
  v4 = v2;
  [v3 triggerSoundHapticForEnrollmentState:19 completion:v5];
}

- (id)getBudsInEarString
{
  v39 = *MEMORY[0x277D85DE8];
  [(BluetoothManager *)self->_btManager connectedDevices];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v2 = v35 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v33;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v33 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        if (+[HPSProductUtils isAppleHeadphone:](HPSProductUtils, "isAppleHeadphone:", v7) && ([v7 isTemporaryPaired] & 1) == 0)
        {
          if ([v7 isGenuineAirPods])
          {
            v8 = [BTSDeviceClassic deviceWithDevice:v7];
            v9 = v8;
            if (v8)
            {
              v28 = 3;
              v29 = 3;
              v10 = [v8 classicDevice];
              [v10 inEarStatusPrimary:&v29 secondary:&v28];

              if (!v29 || !v28)
              {
                v12 = [v9 classicDevice];
                v13 = [v12 productId];

                v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"ACCESSORY_MODEL_NAME_%d", v13 - 0x2000];
                v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v16 = [v15 localizedStringForKey:v14 value:&stru_286339F58 table:@"SpatialAudioProfile"];
                if ([v16 length] && v13 >= 0x200A)
                {

                  if (v13 >> 4 <= 0x200)
                  {
                    v17 = 0;
LABEL_31:
                    v18 = sharedBluetoothSettingsLogComponent();
                    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                    {
                      v19 = [v9 classicDevice];
                      v20 = [v19 name];
                      *buf = 138412290;
                      v37 = v20;
                      _os_log_impl(&dword_251143000, v18, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Device %@, bud in ear", buf, 0xCu);
                    }

                    v21 = [MGGetStringAnswer() uppercaseString];
                    v11 = [@"SPATIAL_AUDIO_PROFILE_IED_WARN_" stringByAppendingFormat:@"%@_%@", v21, v14];

                    if (v13 == 8215)
                    {
                      v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                      v23 = [v22 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_IED_WARN_IPHONE_ACCESSORY_MODEL_NAME_23" value:&stru_286339F58 table:@"DeviceConfig-B453"];

                      v11 = v23;
                    }

                    if (v17)
                    {
                      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                      v25 = [v24 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_IED_WARN_IPHONE_ACCESSORY_MODEL_NAME_180" value:&stru_286339F58 table:@"DeviceConfig-B453"];

                      v11 = v25;
                    }

                    goto LABEL_38;
                  }
                }

                else
                {
                }

                if (v13 == 8239)
                {
                  v14 = @"ACCESSORY_MODEL_NAME_180";
                  v17 = 1;
                }

                else if (v13 == 8223)
                {
                  v17 = 0;
                  v14 = @"ACCESSORY_MODEL_NAME_10";
                }

                else
                {
                  v17 = 0;
                  if (v13 == 8210)
                  {
                    v14 = @"ACCESSORY_MODEL_NAME_18";
                  }

                  else
                  {
                    v14 = @"ACCESSORY_MODEL_NAME_15";
                  }
                }

                goto LABEL_31;
              }
            }
          }

          else
          {
            v9 = sharedBluetoothSettingsLogComponent();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              [(HPSSpatialProfileSingeStepEnrollmentController *)&v30 getBudsInEarString];
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v32 objects:v38 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_38:

  v26 = *MEMORY[0x277D85DE8];

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

  if ((self->_currentStep & 0xFFFFFFFE) == 2)
  {
    if (self->_faceBoundingBoxStatus == 1 && !self->_faceCaptured)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __73__HPSSpatialProfileEnrollmentController_triggerFaceInFrameHandlerTimeout__block_invoke;
      block[3] = &unk_2796AD618;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
      v5 = MEMORY[0x277CBEBB8];
      v6 = 1.0;
    }

    else
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __73__HPSSpatialProfileEnrollmentController_triggerFaceInFrameHandlerTimeout__block_invoke_2;
      v10[3] = &unk_2796AD618;
      v10[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], v10);
      v5 = MEMORY[0x277CBEBB8];
      v6 = 3.0;
    }

    v7 = [v5 scheduledTimerWithTimeInterval:self target:sel_triggerFaceInFrameHandlerTimeout selector:0 userInfo:0 repeats:v6];
    faceInFrameHandlerTimer = self->_faceInFrameHandlerTimer;
    self->_faceInFrameHandlerTimer = v7;
  }

  else
  {
    [(HPSSpatialProfileEnrollmentController *)self stopFaceInFrameHandlerTimer];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __73__HPSSpatialProfileEnrollmentController_triggerFaceInFrameHandlerTimeout__block_invoke(uint64_t a1)
{
  v12 = [MEMORY[0x277CBEAF8] currentLocale];
  v2 = [v12 objectForKey:*MEMORY[0x277CBE718]];
  v3 = [v2 BOOLValue];

  v4 = *(*(a1 + 32) + 1032);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"FACE_TOO_CLOSE_TITLE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v4 setTitle:v6];

  v7 = *(*(a1 + 32) + 1032);
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = v8;
  if (v3)
  {
    v10 = @"FACE_TOO_CLOSE_DETAIL_METRICS";
  }

  else
  {
    v10 = @"FACE_TOO_CLOSE_DETAIL_IMPERIAL";
  }

  v11 = [v8 localizedStringForKey:v10 value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v7 setDetailText:v11];
}

void __73__HPSSpatialProfileEnrollmentController_triggerFaceInFrameHandlerTimeout__block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"FRONT_VIEW_CAPTURE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = *(*(a1 + 32) + 1032);
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v7 localizedStringForKey:@"FRONT_VIEW_DETAIL" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v5 setDetailText:v6];
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

    [(HPSSpatialProfileEnrollmentController *)self stopFaceInFrameHandlerTimer];
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

- (void)startOcclusionWarnCoolDownTimer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HPSSpatialProfileEnrollmentController_startOcclusionWarnCoolDownTimer__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __72__HPSSpatialProfileEnrollmentController_startOcclusionWarnCoolDownTimer__block_invoke(uint64_t a1, double a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (*(v3 + 1432))
  {
    [v3 stopOcclusionWarnCoolDownTimer];
    v3 = *(a1 + 32);
  }

  *(v3 + 1440) = 1;
  LOBYTE(a2) = *(*(a1 + 32) + 1441);
  v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:*&a2 target:? selector:? userInfo:? repeats:?];
  v5 = *(a1 + 32);
  v6 = *(v5 + 1432);
  *(v5 + 1432) = v4;

  v7 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(a1 + 32) + 1441);
    v12[0] = 67109120;
    v12[1] = v8;
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Spatial Profile:Start Occlusion timer for %dSec", v12, 8u);
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 1441);
  if (v10 <= 0x1E)
  {
    *(v9 + 1441) = v10 + 5;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)restartOcclusionWarnCoolDownTimer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HPSSpatialProfileEnrollmentController_restartOcclusionWarnCoolDownTimer__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __74__HPSSpatialProfileEnrollmentController_restartOcclusionWarnCoolDownTimer__block_invoke(uint64_t a1, double a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (*(v3 + 1432))
  {
    [v3 stopOcclusionWarnCoolDownTimer];
    v3 = *(a1 + 32);
  }

  *(v3 + 1440) = 1;
  LOBYTE(a2) = *(*(a1 + 32) + 1441);
  v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:*&a2 target:? selector:? userInfo:? repeats:?];
  v5 = *(a1 + 32);
  v6 = *(v5 + 1432);
  *(v5 + 1432) = v4;

  v7 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(a1 + 32) + 1441);
    v10[0] = 67109120;
    v10[1] = v8;
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Spatial Profile:Restart Occlusion warning timer to  %dSec", v10, 8u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)triggerOcclusionWarnCoolDownTimer
{
  v8 = *MEMORY[0x277D85DE8];
  self->_supressEarOcclusionWarning = 0;
  v3 = sharedBluetoothSettingsLogComponent();
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
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile:Ready to show occlusion error %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopOcclusionWarnCoolDownTimer
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = sharedBluetoothSettingsLogComponent();
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

    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stopping Occlusion Timer Attention %@", &v7, 0xCu);
  }

  [(NSTimer *)self->_occlusionWarnCoolDownTimer invalidate];
  occlusionWarnCoolDownTimer = self->_occlusionWarnCoolDownTimer;
  self->_occlusionWarnCoolDownTimer = 0;

  v6 = *MEMORY[0x277D85DE8];
}

- (void)alertOcclusionWarning
{
  [(HPSSpatialProfileEnrollmentController *)self updateBoundingBoxHiddenStatus];
  currentStep = self->_currentStep;
  if ((currentStep & 0xFFFFFFFE) == 6)
  {
    [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics incrementRightEarOcclusionCount];
    currentStep = self->_currentStep;
  }

  if ((currentStep & 0xFFFFFFFE) == 0xA)
  {
    [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics incrementLeftEarOcclusionCount];
  }

  [(HPSSpatialProfileEnrollmentController *)self pauseEnrollment];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__HPSSpatialProfileEnrollmentController_alertOcclusionWarning__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __62__HPSSpatialProfileEnrollmentController_alertOcclusionWarning__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) getBudsInEarString];
  [*(a1 + 32) clearBoundingBox];
  [*(*(a1 + 32) + 1144) pauseProgressPlayer];
  [*(*(a1 + 32) + 1144) pauseEnrollGuidancePlayer];
  [*(a1 + 32) forceBlur];
  v3 = *(*(a1 + 32) + 1032);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"OCCLUSION_EAR" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v3 setTitle:v5];

  v6 = sharedBluetoothSettingsLogComponent();
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
    v25 = v7;
    v26 = 2048;
    v27 = v9;
    v28 = 2048;
    v29 = v10;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Error Message *** Occlusion detection warning shown to user : %@ Current Yaw %f Candidate Yaw %f", buf, 0x20u);
  }

  v11 = *(a1 + 32);
  if (v2)
  {
    v12 = *(v11 + 1032);
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = v13;
    v15 = v2;
LABEL_11:
    v17 = [v13 localizedStringForKey:v15 value:&stru_286339F58 table:@"SpatialAudioProfile"];
    [v12 setDetailText:v17];

    goto LABEL_12;
  }

  v16 = *(v11 + 1252) & 0xFFFFFFFE;
  if (v16 == 6)
  {
    v12 = *(v11 + 1032);
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = v13;
    v15 = @"OCCLUSION_EAR_DETAIL_RIGHT";
    goto LABEL_11;
  }

  if (v16 == 10)
  {
    v12 = *(v11 + 1032);
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = v13;
    v15 = @"OCCLUSION_EAR_DETAIL_LEFT";
    goto LABEL_11;
  }

LABEL_12:
  v18 = dispatch_group_create();
  dispatch_group_enter(v18);
  v19 = *(*(a1 + 32) + 1144);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __62__HPSSpatialProfileEnrollmentController_alertOcclusionWarning__block_invoke_353;
  v22[3] = &unk_2796AD618;
  v23 = v18;
  v20 = v18;
  [v19 triggerSoundHapticForEnrollmentState:19 completion:v22];
  [*(a1 + 32) showOcclusionContinueButton];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)continueOcclusionWarning
{
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Occlusion Continue Button Tapped", buf, 2u);
  }

  [(HPSSpatialProfileEnrollmentController *)self resumeEnrollment];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HPSSpatialProfileEnrollmentController_continueOcclusionWarning__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  self->_isEarOccluded = 0;
  self->_earOcclusionDetectTracker = 0;
  [(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager playProgressPlayer:self->_currentStep];
  [(HPSSpatialProfileEnrollmentController *)self startOcclusionWarnCoolDownTimer];
}

uint64_t __65__HPSSpatialProfileEnrollmentController_continueOcclusionWarning__block_invoke(uint64_t a1)
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
    v5 = off_2796AE4F0[v3];
    v6 = off_2796AE520[v3];
    infoView = self->_infoView;
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:v5 value:&stru_286339F58 table:@"SpatialAudioProfile"];
    [(OBHeaderView *)infoView setTitle:v9];

    v10 = self->_infoView;
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v12 localizedStringForKey:v6 value:&stru_286339F58 table:@"SpatialAudioProfile"];
    [(OBHeaderView *)v10 setDetailText:v11];
  }
}

- (void)startEarEnrollWarningTimer
{
  if (self->_startEarEnrollWarningCoolDownTimer)
  {
    v3 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Wrong ear check", buf, 2u);
    }

    [(NSTimer *)self->_startEarEnrollWarningCoolDownTimer invalidate];
    startEarEnrollWarningCoolDownTimer = self->_startEarEnrollWarningCoolDownTimer;
    self->_startEarEnrollWarningCoolDownTimer = 0;
  }

  self->_supressEarEnrollWarning = 1;
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Wrong ear check shown, wait some time before showing again", v8, 2u);
  }

  v6 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_triggerstartEarEnrollWarningTimer selector:0 userInfo:0 repeats:3.0];
  v7 = self->_startEarEnrollWarningCoolDownTimer;
  self->_startEarEnrollWarningCoolDownTimer = v6;
}

- (void)triggerstartEarEnrollWarningTimer
{
  self->_supressEarEnrollWarning = 0;
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Wrong Ear warning Process Timeout", v3, 2u);
  }
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

    [(HPSSpatialProfileEnrollmentController *)self stopPostProcessTimer];
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

  [(HPSSpatialProfileEnrollmentController *)self moveToStep:19];
}

- (void)didReceiveStateUpdateForSession:(id)a3 stateInfo:(id)a4
{
  v237 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D0F9A0];
  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x277D0F9A0]];
  if (!v9 || (v10 = v9, [v7 objectForKeyedSubscript:*v8], v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [HPSSpatialProfileEnrollmentController didReceiveStateUpdateForSession:stateInfo:];
  }

  v12 = [v7 objectForKeyedSubscript:*v8];
  *&v13 = COERCE_DOUBLE([v12 integerValue]);

  v14 = MEMORY[0x277D0F978];
  v15 = [v7 objectForKeyedSubscript:*MEMORY[0x277D0F978]];

  if (v15)
  {
    [v7 objectForKeyedSubscript:*v14];
    v16 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v17 = v16;
    if (v16 != 0.0)
    {
      [*&v16 code];
      v18 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v211 = v17;
        _os_log_impl(&dword_251143000, v18, OS_LOG_TYPE_DEFAULT, "Spatial Profile: didReceiveStateUpdateForSession  ERROR: %@ ", buf, 0xCu);
      }

      if (self->_currentStep != 19)
      {
        [(HPSSpatialProfileEnrollmentController *)self moveToStep:19];
      }

      v19 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [HPSSpatialProfileSingeStepEnrollmentController didReceiveStateUpdateForSession:? stateInfo:?];
      }
    }
  }

  if (self->_sessionState != v13)
  {
    v20 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v211 = *&v13;
      _os_log_impl(&dword_251143000, v20, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Frame Rate : Update Session %lu", buf, 0xCu);
    }

    self->_sessionState = v13;
  }

  if ((v13 - 1) <= 1)
  {
    [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics incrementFrameCount];
  }

  v21 = MEMORY[0x277D0F990];
  v22 = [v7 objectForKeyedSubscript:*MEMORY[0x277D0F990]];

  if (v22)
  {
    v23 = [v7 objectForKeyedSubscript:*v21];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [HPSSpatialProfileEnrollmentController didReceiveStateUpdateForSession:stateInfo:];
    }

    v24 = [v7 objectForKeyedSubscript:*v21];
    [v24 doubleValue];
    v26 = v25;
  }

  else
  {
    v26 = 0.0;
  }

  v27 = 0x27F421000;
  if (v13 <= 2)
  {
    if (*&v13 == 0.0)
    {
      v45 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v45, OS_LOG_TYPE_DEFAULT, "Spatial Profile: State Update: Idle", buf, 2u);
      }

      goto LABEL_276;
    }

    if (v13 != 1)
    {
      if (v13 != 2)
      {
        goto LABEL_276;
      }

      v28 = [v7 objectForKeyedSubscript:*MEMORY[0x277D0F970]];
      v29 = [v7 objectForKeyedSubscript:*MEMORY[0x277D0F988]];
      v30 = [v7 objectForKeyedSubscript:*MEMORY[0x277D0F998]];
      v31 = [v28 earCaptureStatus];
      [v28 earBoundingBox];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v182 = v30;
      [(HPSSpatialProfileEnrollmentController *)self updateCurrentTrackingEar:v29 rightEarPoseStatus:v30 earBoundingBox:v31 earStatus:?];
      currentStep = self->_currentStep;
      if (currentStep == 9)
      {
        if (self->_currentTrackingEar == 1)
        {
          v41 = v29;
          v42 = sharedBluetoothSettingsLogComponent();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v43 = "Spatial Profile: Deteceted Left Ear when in Tutorial View, Pivot to enrollment ";
            goto LABEL_164;
          }

LABEL_165:

          [(HPSSpatialProfileEnrollmentController *)self continueButtonTapped];
          v29 = v41;
        }

LABEL_275:

        v27 = 0x27F421000uLL;
        goto LABEL_276;
      }

      if (currentStep == 5)
      {
        if (self->_currentTrackingEar == 2)
        {
          v41 = v29;
          v42 = sharedBluetoothSettingsLogComponent();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v43 = "Spatial Profile: Deteceted Right Ear when in Tutorial View, Pivot to right ear enrollment ";
LABEL_164:
            _os_log_impl(&dword_251143000, v42, OS_LOG_TYPE_DEFAULT, v43, buf, 2u);
            goto LABEL_165;
          }

          goto LABEL_165;
        }

        goto LABEL_275;
      }

      v100 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
      {
        v174 = v28;
        v157 = v6;
        v158 = v29;
        *&v159 = COERCE_DOUBLE(@"NO");
        v160 = v158;
        if (v158 && [v158 hasYawAngle])
        {
          *&v159 = COERCE_DOUBLE(@"YES");
        }

        v161 = @"NO";
        if (v30)
        {
          if ([v30 hasYawAngle])
          {
            v161 = @"YES";
          }

          else
          {
            v161 = @"NO";
          }
        }

        if (v160)
        {
          if ([v160 hasYawAngle])
          {
            [v160 currentYawAngle];
            v162 = v168;
          }

          else
          {
            v162 = 0xC059000000000000;
          }

          if ([v160 hasPitchAngle])
          {
            [v160 currentPitchAngle];
            v163 = v169;
          }

          else
          {
            v163 = 0xC059000000000000;
          }
        }

        else
        {
          v162 = 0xC059000000000000;
          v163 = 0xC059000000000000;
        }

        if (v30)
        {
          if ([v30 hasYawAngle])
          {
            [v30 currentYawAngle];
            v170 = v172;
          }

          else
          {
            v170 = 0xC059000000000000;
          }

          if ([v30 hasPitchAngle])
          {
            [v30 currentPitchAngle];
          }

          else
          {
            v171 = 0xC059000000000000;
          }
        }

        else
        {
          v170 = 0xC059000000000000;
          v171 = 0xC059000000000000;
        }

        v173 = @"YES";
        if (!self->_earBoundingBoxDetected)
        {
          v173 = @"NO";
        }

        *buf = 138415106;
        v211 = *&v159;
        v212 = 2112;
        v213 = v161;
        v214 = 2048;
        v215 = v162;
        v216 = 2048;
        v217 = v163;
        v218 = 2048;
        v219 = v170;
        v220 = 2048;
        v221 = v171;
        v222 = 2112;
        v223 = v173;
        v224 = 2048;
        v225 = v33;
        v226 = 2048;
        v227 = v35;
        v228 = 2048;
        v229 = v37;
        v230 = 2048;
        v231 = v39;
        v232 = 1024;
        v233 = v31;
        _os_log_debug_impl(&dword_251143000, v100, OS_LOG_TYPE_DEBUG, "Spatial Profile: Left :%@ Right:%@ Yaw-Pitch left (%f ,%f) Right (%f ,%f)Ear Bounding Box: : %@ origin(%f, %f), size(%f, %f) Status %d", buf, 0x76u);
        v6 = v157;
        v28 = v174;
        v29 = v160;
      }

      if (self->_enrollmentPaused)
      {
LABEL_188:
        if (v30)
        {
          if ([(HPSSpatialProfileEnrollmentController *)self isPresentingWrongEar])
          {
            v110 = v29;
            v111 = sharedBluetoothSettingsLogComponent();
            if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_251143000, v111, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Seeing Left ear When Right is not completed", buf, 2u);
            }

            if (!self->_enrollmentPaused)
            {
              v194[0] = MEMORY[0x277D85DD0];
              v194[1] = 3221225472;
              v194[2] = __83__HPSSpatialProfileEnrollmentController_didReceiveStateUpdateForSession_stateInfo___block_invoke_365;
              v194[3] = &unk_2796AD618;
              v194[4] = self;
              dispatch_async(MEMORY[0x277D85CD0], v194);
            }

            v112 = 0;
            v29 = v110;
            goto LABEL_229;
          }

          v175 = v29;
          v177 = v6;
          v180 = v7;
          v192 = 0u;
          v193 = 0u;
          v190 = 0u;
          v191 = 0u;
          v113 = [v30 yawAngles];
          v114 = [v113 countByEnumeratingWithState:&v190 objects:v209 count:16];
          if (v114)
          {
            v115 = v114;
            v112 = 0;
            v116 = *v191;
            do
            {
              for (i = 0; i != v115; ++i)
              {
                if (*v191 != v116)
                {
                  objc_enumerationMutation(v113);
                }

                v118 = *(*(&v190 + 1) + 8 * i);
                [v118 angle];
                v120 = -v119;
                if (v119 <= -11.0)
                {
                  v124 = v119;
                  v125 = [v118 captured];
                  if (v124 >= -13.0)
                  {
                    if (v125 && !self->_rightEarMidCaptured)
                    {
                      v129 = sharedBluetoothSettingsLogComponent();
                      if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
                      {
                        [v118 angle];
                        *buf = 134218240;
                        v211 = v120;
                        v212 = 2048;
                        v213 = v130;
                        _os_log_impl(&dword_251143000, v129, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Right Ear: Mid Captured: %f (%f)", buf, 0x16u);
                      }

                      v112 = 1;
                      self->_rightEarMidCaptured = 1;
                      v131 = CACurrentMediaTime();
                      self->_lastEarCaptureTime = v131;
                      self->_enrollGuidancePitch = 0.5;
                      LODWORD(v131) = 0.5;
                      [(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager setEnrollGuidancePitch:v131];
                      [(HPSSpatialProfileEnrollmentController *)self earCentralPartCaptured];
                      [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics updateRightEarMidAnglelDuration];
                    }
                  }

                  else if (v125 && !self->_rightEarFrontCaptured)
                  {
                    v126 = sharedBluetoothSettingsLogComponent();
                    if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
                    {
                      [v118 angle];
                      *buf = 134218240;
                      v211 = v120;
                      v212 = 2048;
                      v213 = v127;
                      _os_log_impl(&dword_251143000, v126, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Right Ear: Front Captured: %f (%f)", buf, 0x16u);
                    }

                    v112 = 1;
                    self->_rightEarFrontCaptured = 1;
                    v128 = CACurrentMediaTime();
                    self->_lastEarCaptureTime = v128;
                    self->_enrollGuidancePitch = 0.5;
                    LODWORD(v128) = 0.5;
                    [(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager setEnrollGuidancePitch:v128];
                    [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics updateRightEarFrontAnglelDuration];
                    [(HPSSpatialProfileEnrollmentController *)self earLeftPartCaptured];
                  }
                }

                else if ([v118 captured] && !self->_rightEarRearCaptured)
                {
                  v121 = sharedBluetoothSettingsLogComponent();
                  if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
                  {
                    [v118 angle];
                    *buf = 134218240;
                    v211 = v120;
                    v212 = 2048;
                    v213 = v122;
                    _os_log_impl(&dword_251143000, v121, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Right Ear: Rear Captured: %f (%f)", buf, 0x16u);
                  }

                  v112 = 1;
                  self->_rightEarRearCaptured = 1;
                  self->_lastEarCaptureTime = CACurrentMediaTime();
                  [(HPSSpatialProfileEnrollmentController *)self earRightPartCaptured];
                  self->_enrollGuidancePitch = 0.5;
                  LODWORD(v123) = 0.5;
                  [(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager setEnrollGuidancePitch:v123];
                  [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics updateRightEarBackAnglelDuration];
                }
              }

              v115 = [v113 countByEnumeratingWithState:&v190 objects:v209 count:16];
            }

            while (v115);
          }

          else
          {
            v112 = 0;
          }

          v132 = [v182 remainingYawAngles];
          if ([v132 count])
          {

            v6 = v177;
            v7 = v180;
LABEL_228:
            v29 = v175;
            goto LABEL_229;
          }

          rightEarCaptured = self->_rightEarCaptured;

          v6 = v177;
          v7 = v180;
          v29 = v175;
          if (!rightEarCaptured)
          {
            v134 = sharedBluetoothSettingsLogComponent();
            if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_251143000, v134, OS_LOG_TYPE_DEFAULT, "Spatial Profile: State Update: Right Ear Captured", buf, 2u);
            }

            self->_rightEarCaptured = 1;
            [(HPSSpatialProfileEnrollmentController *)self moveToStep:8];
            v112 = 0;
            goto LABEL_228;
          }
        }

        else
        {
          v112 = 0;
        }

LABEL_229:
        if (v29)
        {
          if ([(HPSSpatialProfileEnrollmentController *)self isPresentingWrongEar])
          {
            v135 = v29;
            v136 = sharedBluetoothSettingsLogComponent();
            if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_251143000, v136, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Seeing Left ear When Right is not completed", buf, 2u);
            }

            if (!self->_enrollmentPaused)
            {
              v189[0] = MEMORY[0x277D85DD0];
              v189[1] = 3221225472;
              v189[2] = __83__HPSSpatialProfileEnrollmentController_didReceiveStateUpdateForSession_stateInfo___block_invoke_366;
              v189[3] = &unk_2796AD618;
              v189[4] = self;
              dispatch_async(MEMORY[0x277D85CD0], v189);
            }

            v29 = v135;
          }

          else if (self->_rightEarStatus == 3)
          {
            v176 = v29;
            v178 = v6;
            v181 = v7;
            v187 = 0u;
            v188 = 0u;
            v185 = 0u;
            v186 = 0u;
            v137 = [v29 yawAngles];
            v138 = [v137 countByEnumeratingWithState:&v185 objects:v208 count:16];
            if (v138)
            {
              v139 = v138;
              v140 = *v186;
              do
              {
                for (j = 0; j != v139; ++j)
                {
                  if (*v186 != v140)
                  {
                    objc_enumerationMutation(v137);
                  }

                  v142 = *(*(&v185 + 1) + 8 * j);
                  [v142 angle];
                  v144 = -v143;
                  if (v143 >= -13.0)
                  {
                    v148 = v143;
                    v149 = [v142 captured];
                    if (v148 <= -11.0)
                    {
                      if (v149 && !self->_leftEarMidCaptured)
                      {
                        v153 = sharedBluetoothSettingsLogComponent();
                        if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
                        {
                          [v142 angle];
                          *buf = 134218240;
                          v211 = v144;
                          v212 = 2048;
                          v213 = v154;
                          _os_log_impl(&dword_251143000, v153, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Left Ear: Mid Captured: %f (%f)", buf, 0x16u);
                        }

                        v112 = 1;
                        self->_leftEarMidCaptured = 1;
                        v155 = CACurrentMediaTime();
                        self->_lastEarCaptureTime = v155;
                        self->_enrollGuidancePitch = 0.5;
                        LODWORD(v155) = 0.5;
                        [(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager setEnrollGuidancePitch:v155];
                        [(HPSSpatialProfileEnrollmentController *)self earCentralPartCaptured];
                        [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics updateLeftEarMidAnglelDuration];
                      }
                    }

                    else if (v149 && !self->_leftEarFrontCaptured)
                    {
                      v150 = sharedBluetoothSettingsLogComponent();
                      if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
                      {
                        [v142 angle];
                        *buf = 134218240;
                        v211 = v144;
                        v212 = 2048;
                        v213 = v151;
                        _os_log_impl(&dword_251143000, v150, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Left Ear: Rear Captured: %f (%f)", buf, 0x16u);
                      }

                      v112 = 1;
                      self->_leftEarFrontCaptured = 1;
                      v152 = CACurrentMediaTime();
                      self->_lastEarCaptureTime = v152;
                      self->_enrollGuidancePitch = 0.5;
                      LODWORD(v152) = 0.5;
                      [(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager setEnrollGuidancePitch:v152];
                      [(HPSSpatialProfileEnrollmentController *)self earLeftPartCaptured];
                      [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics updateLeftEarBackAnglelDuration];
                    }
                  }

                  else if ([v142 captured] && !self->_leftEarRearCaptured)
                  {
                    v145 = sharedBluetoothSettingsLogComponent();
                    if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
                    {
                      [v142 angle];
                      *buf = 134218240;
                      v211 = v144;
                      v212 = 2048;
                      v213 = v146;
                      _os_log_impl(&dword_251143000, v145, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Left Ear: Front Captured: %f (%f)", buf, 0x16u);
                    }

                    v112 = 1;
                    self->_leftEarRearCaptured = 1;
                    v147 = CACurrentMediaTime();
                    self->_lastEarCaptureTime = v147;
                    self->_enrollGuidancePitch = 0.5;
                    LODWORD(v147) = 0.5;
                    [(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager setEnrollGuidancePitch:v147];
                    [(HPSSpatialProfileEnrollmentController *)self earRightPartCaptured];
                    [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics updateLeftEarFrontAnglelDuration];
                  }
                }

                v139 = [v137 countByEnumeratingWithState:&v185 objects:v208 count:16];
              }

              while (v139);
            }

            v156 = [v176 remainingYawAngles];
            if ([v156 count])
            {

              v6 = v178;
              v7 = v181;
              v29 = v176;
            }

            else
            {
              leftEarCaptured = self->_leftEarCaptured;

              v6 = v178;
              v7 = v181;
              v29 = v176;
              if (!leftEarCaptured)
              {
                v167 = sharedBluetoothSettingsLogComponent();
                if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_251143000, v167, OS_LOG_TYPE_DEFAULT, "Spatial Profile: State Update: Left Ear Captured", buf, 2u);
                }

                self->_leftEarCaptured = 1;
                [(HPSSpatialProfileEnrollmentController *)self moveToStep:12];
                v29 = v176;
                goto LABEL_275;
              }
            }
          }
        }

        if (v112)
        {
          [(HPSSpatialProfileEnrollmentController *)self startOcclusionWarnCoolDownTimer];
          [(HPSSpatialProfileEnrollmentController *)self startEarDistanceWarnCoolDownTimer];
        }

        goto LABEL_275;
      }

      v239.origin.x = v33;
      v239.origin.y = v35;
      v239.size.width = v37;
      v239.size.height = v39;
      if (!CGRectEqualToRect(v239, *MEMORY[0x277CBF3A0]))
      {
        v101 = v29;
        v102 = [(HPSSpatialProfileVideoCaptureSession *)self->videoCaptureSession previewLayer];
        [v102 frame];
        [(HPSSpatialProfileEnrollmentController *)self translateEarBoundingBox:v33 previewLayerBoundingBox:v35, v37, v39, v103, v104, v105, v106];

        if (!self->_rightEarDetected && self->_currentStep == 6)
        {
          v107 = sharedBluetoothSettingsLogComponent();
          if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_251143000, v107, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Right Ear Detected", buf, 2u);
          }

          self->_rightEarDetected = 1;
          [(HPSSpatialProfileEnrollmentController *)self moveToStep:7];
        }

        v29 = v101;
        if (!self->_leftEarDetected && self->_currentStep == 10)
        {
          v108 = sharedBluetoothSettingsLogComponent();
          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_251143000, v108, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Left Ear Detected", buf, 2u);
          }

          [(HPSSpatialProfileEnrollmentController *)self pauseEnrollment];
          self->_leftEarDetected = 1;
          [(HPSSpatialProfileEnrollmentController *)self moveToStep:11];
          v29 = v101;
        }
      }

      [(HPSSpatialProfileEnrollmentController *)self updateBoundingBoxHiddenStatus];
      if ([(HPSSpatialProfileEnrollmentController *)self isEarTooClose])
      {
        v109 = 3;
      }

      else if ([(HPSSpatialProfileEnrollmentController *)self isEarTooFar])
      {
        v109 = 4;
      }

      else
      {
        if (![(HPSSpatialProfileEnrollmentController *)self isEarMovingFast])
        {
          goto LABEL_186;
        }

        v109 = 5;
      }

      [(HPSSpatialProfileEnrollmentController *)self alertEarDistanceWarning:v109];
LABEL_186:
      if ([(HPSSpatialProfileEnrollmentController *)self isEarOccluded])
      {
        [(HPSSpatialProfileEnrollmentController *)self alertOcclusionWarning];
      }

      goto LABEL_188;
    }

    v51 = [v7 objectForKeyedSubscript:*MEMORY[0x277D0F980]];
    v49 = v51;
    if (!v51)
    {
      goto LABEL_155;
    }

    [v51 faceBoundingBox];
    if (!CGRectEqualToRect(v238, *MEMORY[0x277CBF3A0]) && !self->_faceCaptured)
    {
      [v49 faceBoundingBox];
      [(HPSSpatialProfileEnrollmentController *)self updateFaceTrackingStatus:?];
    }

    v179 = v7;
    v183 = v49;
    if (!self->_faceStraightZeroAngleCaptured)
    {
      v206 = 0u;
      v207 = 0u;
      v204 = 0u;
      v205 = 0u;
      v52 = [v49 yawAngles];
      v53 = [v52 countByEnumeratingWithState:&v204 objects:v236 count:16];
      if (v53)
      {
        v54 = v53;
        v55 = *v205;
        do
        {
          for (k = 0; k != v54; ++k)
          {
            if (*v205 != v55)
            {
              objc_enumerationMutation(v52);
            }

            v57 = *(*(&v204 + 1) + 8 * k);
            [v57 angle];
            if (v58 == 0.0 && [v57 captured])
            {
              self->_faceStraightZeroAngleCaptured = 1;
              v59 = sharedBluetoothSettingsLogComponent();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
              {
                [v57 angle];
                v61 = v60;
                v62 = [v57 captured];
                *buf = 134218240;
                v211 = v61;
                v212 = 1024;
                LODWORD(v213) = v62;
                _os_log_impl(&dword_251143000, v59, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Captured straight face angle %f ->  %d", buf, 0x12u);
              }
            }
          }

          v54 = [v52 countByEnumeratingWithState:&v204 objects:v236 count:16];
        }

        while (v54);
      }
    }

    if ([v49 hasYawAngle]&& [v49 hasPitchAngle])
    {
      if (self->_faceDetected || !self->_faceStraightZeroAngleCaptured || self->_currentStep != 2)
      {
        goto LABEL_96;
      }

      v63 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v63, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Fill up Straight angle: Transition to View CaptureMoveHead", buf, 2u);
      }

      self->_faceDetected = 1;
      v64 = 3;
    }

    else
    {
      if (!self->_faceDetected || self->_currentStep != 3)
      {
        goto LABEL_96;
      }

      v68 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v68, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Face NOT Detected, Return to previous step", buf, 2u);
      }

      self->_faceDetected = 0;
      v64 = 2;
    }

    [(HPSSpatialProfileEnrollmentController *)self moveToStep:v64];
LABEL_96:
    v202 = 0u;
    v203 = 0u;
    v200 = 0u;
    v201 = 0u;
    v69 = [v49 yawAngles];
    v70 = [v69 countByEnumeratingWithState:&v200 objects:v235 count:16];
    if (!v70)
    {
      goto LABEL_125;
    }

    v71 = v70;
    v72 = *v201;
    while (1)
    {
      for (m = 0; m != v71; ++m)
      {
        if (*v201 != v72)
        {
          objc_enumerationMutation(v69);
        }

        v74 = *(*(&v200 + 1) + 8 * m);
        if (self->_faceDetected)
        {
          [*(*(&v200 + 1) + 8 * m) angle];
          if (v75 > 0.0 && [v74 captured] && !self->_faceRightFilled)
          {
            v81 = sharedBluetoothSettingsLogComponent();
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
            {
              [v74 angle];
              *buf = 134217984;
              v211 = v82;
              _os_log_impl(&dword_251143000, v81, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Fill up Right with Yaw: %f", buf, 0xCu);
            }

            self->_faceRightFilled = 1;
            if (self->_faceUpFilled)
            {
              [(HPSSpatialProfileEnrollmentController *)self fillFacePillsByDirection:1];
            }

            v79 = 0;
            if (self->_faceDownFilled)
            {
              v80 = 7;
LABEL_121:
              [(HPSSpatialProfileEnrollmentController *)self fillFacePillsByDirection:v80];
            }

LABEL_122:
            [(HPSSpatialProfileEnrollmentController *)self fillFacePillsByDirection:v79];
            continue;
          }
        }

        if (self->_faceDetected)
        {
          [v74 angle];
          if (v76 < 0.0 && [v74 captured] && !self->_faceLeftFilled)
          {
            v77 = sharedBluetoothSettingsLogComponent();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
            {
              [v74 angle];
              *buf = 134217984;
              v211 = v78;
              _os_log_impl(&dword_251143000, v77, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Fill up Left with Yaw: %f", buf, 0xCu);
            }

            self->_faceLeftFilled = 1;
            if (self->_faceUpFilled)
            {
              [(HPSSpatialProfileEnrollmentController *)self fillFacePillsByDirection:3];
            }

            v79 = 4;
            if (self->_faceDownFilled)
            {
              v80 = 5;
              goto LABEL_121;
            }

            goto LABEL_122;
          }
        }
      }

      v71 = [v69 countByEnumeratingWithState:&v200 objects:v235 count:16];
      if (!v71)
      {
LABEL_125:

        v198 = 0u;
        v199 = 0u;
        v196 = 0u;
        v197 = 0u;
        v83 = [v183 pitchAngles];
        v84 = [v83 countByEnumeratingWithState:&v196 objects:v234 count:16];
        if (!v84)
        {
          goto LABEL_154;
        }

        v85 = v84;
        v86 = *v197;
        while (1)
        {
          for (n = 0; n != v85; ++n)
          {
            if (*v197 != v86)
            {
              objc_enumerationMutation(v83);
            }

            v88 = *(*(&v196 + 1) + 8 * n);
            if (self->_faceDetected)
            {
              [*(*(&v196 + 1) + 8 * n) angle];
              if (v89 > 0.0 && [v88 captured] && !self->_faceUpFilled)
              {
                v95 = sharedBluetoothSettingsLogComponent();
                if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
                {
                  [v88 angle];
                  *buf = 134217984;
                  v211 = v96;
                  _os_log_impl(&dword_251143000, v95, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Fill up Up with Pitch: %f", buf, 0xCu);
                }

                self->_faceUpFilled = 1;
                if (self->_faceLeftFilled)
                {
                  [(HPSSpatialProfileEnrollmentController *)self fillFacePillsByDirection:3];
                }

                v93 = 2;
                if (self->_faceRightFilled)
                {
                  v94 = 1;
LABEL_150:
                  [(HPSSpatialProfileEnrollmentController *)self fillFacePillsByDirection:v94];
                }

LABEL_151:
                [(HPSSpatialProfileEnrollmentController *)self fillFacePillsByDirection:v93];
                continue;
              }
            }

            if (self->_faceDetected)
            {
              [v88 angle];
              if (v90 < 0.0 && [v88 captured] && !self->_faceDownFilled)
              {
                v91 = sharedBluetoothSettingsLogComponent();
                if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
                {
                  [v88 angle];
                  *buf = 134217984;
                  v211 = v92;
                  _os_log_impl(&dword_251143000, v91, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Fill up Down with Pitch: %f", buf, 0xCu);
                }

                self->_faceDownFilled = 1;
                if (self->_faceLeftFilled)
                {
                  [(HPSSpatialProfileEnrollmentController *)self fillFacePillsByDirection:5];
                }

                v93 = 6;
                if (self->_faceRightFilled)
                {
                  v94 = 7;
                  goto LABEL_150;
                }

                goto LABEL_151;
              }
            }
          }

          v85 = [v83 countByEnumeratingWithState:&v196 objects:v234 count:16];
          if (!v85)
          {
LABEL_154:

            v7 = v179;
            v27 = 0x27F421000uLL;
            v49 = v183;
LABEL_155:
            if (v26 == 1.0 && !self->_faceCaptured)
            {
              v97 = sharedBluetoothSettingsLogComponent();
              if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
              {
                [(BKUIPearlEnrollView *)self->_enrollView percentOfPillsCompleted];
                *buf = 134217984;
                v211 = v98;
                _os_log_impl(&dword_251143000, v97, OS_LOG_TYPE_DEFAULT, "Spatial Profile: State Update: Face Captured %f", buf, 0xCu);
              }

              self->_faceCaptured = 1;
              *(&self->super.super.super.isa + *(v27 + 4060)) = 0;
              v99 = dispatch_get_global_queue(21, 0);
              v195[0] = MEMORY[0x277D85DD0];
              v195[1] = 3221225472;
              v195[2] = __83__HPSSpatialProfileEnrollmentController_didReceiveStateUpdateForSession_stateInfo___block_invoke;
              v195[3] = &unk_2796AD618;
              v195[4] = self;
              dispatch_async(v99, v195);
            }

LABEL_160:

            goto LABEL_276;
          }
        }
      }
    }
  }

  switch(v13)
  {
    case 3:
      [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics updateSoundProfileCreationDurationStart];
      v46 = self->_currentStep;
      if (v46 <= 11 && (v46 == 9 || v46 == 5))
      {
        v47 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_251143000, v47, OS_LOG_TYPE_DEFAULT, "Spatial Profile: detected Post Process when in  Tutorial View, Pivot to next step. ", buf, 2u);
        }

        v48 = self->_currentStep;
        if (v48 != 12)
        {
          if (v48 <= 10)
          {
            [(HPSSpatialProfileEnrollmentController *)self moveToStep:11];
          }

          [(HPSSpatialProfileEnrollmentController *)self moveToStep:12];
        }
      }

      v49 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = self->_currentStep;
        *buf = 67109120;
        LODWORD(v211) = v50;
        _os_log_impl(&dword_251143000, v49, OS_LOG_TYPE_DEFAULT, "Spatial Profile: State Update: Post Process : %d", buf, 8u);
      }

      goto LABEL_160;
    case 4:
      v65 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v65, OS_LOG_TYPE_DEFAULT, "Spatial Profile: State Update: Retrieve Profile", buf, 2u);
      }

      v66 = self->_currentStep;
      if (v66 == 9 || v66 == 5)
      {
        v67 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_251143000, v67, OS_LOG_TYPE_DEFAULT, "Spatial Profile: detected Post Process when in  Tutorial View, Pivot to next step. ", buf, 2u);
        }

        [(HPSSpatialProfileEnrollmentController *)self continueButtonTapped];
        v66 = self->_currentStep;
      }

      if (v66 != 12)
      {
        if (v66 <= 10)
        {
          [(HPSSpatialProfileEnrollmentController *)self moveToStep:11];
        }

        [(HPSSpatialProfileEnrollmentController *)self moveToStep:12];
      }

      [(HPSSpatialProfileEnrollmentController *)self moveToStep:14];
      [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics updateSoundProfileCreationDuration];
      break;
    case 5:
      v44 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        [HPSSpatialProfileSingeStepEnrollmentController didReceiveStateUpdateForSession:stateInfo:];
      }

      [(HPSSpatialProfileAnalytics *)self->_enrollmentAnalytics updateStatus:0 EnrollmentResult:@"Failed"];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __83__HPSSpatialProfileEnrollmentController_didReceiveStateUpdateForSession_stateInfo___block_invoke_367;
      block[3] = &unk_2796AD618;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
      break;
  }

LABEL_276:
  v165 = *(v27 + 4060);
  if (*(&self->super.super.super.isa + v165) != v26)
  {
    *(&self->super.super.super.isa + v165) = v26;
  }

  v166 = *MEMORY[0x277D85DE8];
}

uint64_t __83__HPSSpatialProfileEnrollmentController_didReceiveStateUpdateForSession_stateInfo___block_invoke(uint64_t a1)
{
  sleep(1u);
  v2 = *(a1 + 32);

  return [v2 moveToStep:4];
}

uint64_t __83__HPSSpatialProfileEnrollmentController_didReceiveStateUpdateForSession_stateInfo___block_invoke_365(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile:Enrolling Wrong ear", v4, 2u);
  }

  return [*(a1 + 32) alertEarEnrollWarning];
}

uint64_t __83__HPSSpatialProfileEnrollmentController_didReceiveStateUpdateForSession_stateInfo___block_invoke_366(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile:Enrolling Wrong ear", v4, 2u);
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
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__HPSSpatialProfileEnrollmentController_didReceiveCaptureVideo_colorImage_depthImage_faceObject___block_invoke_372;
    block[3] = &unk_2796AD750;
    v12 = v14;
    v14[0] = v9;
    v14[1] = self;
    dispatch_async(visualDetectionQueue, block);
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __97__HPSSpatialProfileEnrollmentController_didReceiveCaptureVideo_colorImage_depthImage_faceObject___block_invoke;
    v15[3] = &unk_2796ADE70;
    v12 = v16;
    v16[0] = v8;
    v16[1] = self;
    v17 = v10;
    dispatch_async(MEMORY[0x277D85CD0], v15);
  }
}

void __97__HPSSpatialProfileEnrollmentController_didReceiveCaptureVideo_colorImage_depthImage_faceObject___block_invoke(uint64_t a1)
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

    *(*(a1 + 40) + 1321) = 1;
    [*(*(a1 + 40) + 1272) setPreviewLayer:*(a1 + 32)];
    v5 = [MEMORY[0x277CBF740] contextWithOptions:0];
    v6 = *(a1 + 40);
    v7 = *(v6 + 1520);
    *(v6 + 1520) = v5;

    v8 = MEMORY[0x277CBF748];
    v9 = *MEMORY[0x277CBF710];
    v10 = *(*(a1 + 40) + 1520);
    v35 = *MEMORY[0x277CBF6E0];
    v36[0] = *MEMORY[0x277CBF6D8];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v12 = [v8 detectorOfType:v9 context:v10 options:v11];
    v13 = *(a1 + 40);
    v14 = *(v13 + 1528);
    *(v13 + 1528) = v12;

    v15 = [*(*(a1 + 40) + 1272) previewLayer];
    [v15 setOpacity:0.0];

    v16 = [[HPSSpatialProfileUIPearlEnrollView alloc] initWithVideoCaptureSession:*(*(a1 + 40) + 1272) inSheet:0 squareNeedsPositionLayout:0];
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
    v22 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(*(a1 + 40) + 1128);
      v23 = *(*(a1 + 40) + 1136);
      v32 = 134218240;
      *v33 = v24;
      *&v33[8] = 2048;
      v34 = v23;
      _os_log_impl(&dword_251143000, v22, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Frame Size  %f %f", &v32, 0x16u);
    }

    v25 = sharedBluetoothSettingsLogComponent();
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

      v32 = 138412290;
      *v33 = v26;
      _os_log_impl(&dword_251143000, v25, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Checking enrollment viewer Spinner %@", &v32, 0xCu);
    }

    *(*(a1 + 40) + 1318) = 1;
    if (*(*(a1 + 40) + 1232) == 1)
    {
      v27 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 40);
        v29 = *(v28 + 1318);
        v30 = [*(v28 + 1416) available];
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

void __97__HPSSpatialProfileEnrollmentController_didReceiveCaptureVideo_colorImage_depthImage_faceObject___block_invoke_372(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 40) + 1512);
    v3 = MEMORY[0x277CBEAC0];
    v4 = [MEMORY[0x277CCABB0] numberWithInt:6];
    v5 = [v3 dictionaryWithObject:v4 forKey:*MEMORY[0x277CBF700]];

    v6 = [*(*(a1 + 40) + 1528) featuresInImage:*(a1 + 32) options:v5];
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
      v17 = sharedBluetoothSettingsLogComponent();
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
        v31 = v21;
        v32 = 1024;
        v33 = v20;
        _os_log_impl(&dword_251143000, v17, OS_LOG_TYPE_DEFAULT, "Spatial Profile: 2 User attention status %@ Count %d", buf, 0x12u);
      }

      v22 = *(a1 + 40);
      if (*(v22 + 1512) == 1)
      {
        *(v22 + 1427) = 0;
        *(*(a1 + 40) + 1426) = 0;
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)playEarCaptureSoundWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  if (self->_earCaptureSoundStep == 1)
  {
    soundHapticManager = self->_soundHapticManager;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __75__HPSSpatialProfileEnrollmentController_playEarCaptureSoundWithCompletion___block_invoke_2;
    v12[3] = &unk_2796AD618;
    v13 = v5;
    [(HPSSpatialProfileSoundHapticManager *)soundHapticManager triggerSoundHapticForEarCaptureState:1 completion:v12];
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
    v14[2] = __75__HPSSpatialProfileEnrollmentController_playEarCaptureSoundWithCompletion___block_invoke;
    v14[3] = &unk_2796AD618;
    v15 = v5;
    [(HPSSpatialProfileSoundHapticManager *)v6 triggerSoundHapticForEarCaptureState:0 completion:v14];
    v7 = v15;
  }

LABEL_7:
  ++self->_earCaptureSoundStep;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HPSSpatialProfileEnrollmentController_playEarCaptureSoundWithCompletion___block_invoke_3;
  block[3] = &unk_2796AD5A0;
  v11 = v4;
  v9 = v4;
  dispatch_group_notify(v5, MEMORY[0x277D85CD0], block);
}

uint64_t __75__HPSSpatialProfileEnrollmentController_playEarCaptureSoundWithCompletion___block_invoke_3(uint64_t a1)
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
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 classicDevice];
  v6 = [v5 productId];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"ACCESSORY_MODEL_NAME_%d", v6 - 0x2000];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:v7 value:&stru_286339F58 table:@"SpatialAudioProfile"];
  if ([v9 length])
  {
    v10 = v6 >= 0x200A;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {

    if (v6 >> 4 <= 0x200)
    {
      v11 = 0;
      goto LABEL_15;
    }
  }

  else
  {
  }

  if (v6 == 8239)
  {
    v7 = @"ACCESSORY_MODEL_NAME_180";
    v11 = 1;
  }

  else if (v6 == 8223)
  {
    v11 = 0;
    v7 = @"ACCESSORY_MODEL_NAME_10";
  }

  else
  {
    v11 = 0;
    if (v6 == 8210)
    {
      v7 = @"ACCESSORY_MODEL_NAME_18";
    }

    else
    {
      v7 = @"ACCESSORY_MODEL_NAME_15";
    }
  }

LABEL_15:
  v12 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v4 classicDevice];
    v14 = [v13 name];
    *buf = 138412290;
    v34 = v14;
    _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Device %@, bud in ear", buf, 0xCu);
  }

  v15 = [MGGetStringAnswer() uppercaseString];
  v16 = [@"SPATIAL_AUDIO_PROFILE_IED_WARN_" stringByAppendingFormat:@"%@_%@", v15, v7];

  if (v6 == 8215)
  {
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_IED_WARN_IPHONE_ACCESSORY_MODEL_NAME_23" value:&stru_286339F58 table:@"DeviceConfig-B453"];

    v16 = v18;
  }

  v32 = v4;
  if (v11)
  {
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_IED_WARN_IPHONE_ACCESSORY_MODEL_NAME_180" value:&stru_286339F58 table:@"DeviceConfig-B453"];

    v16 = v20;
  }

  v21 = MEMORY[0x277D75110];
  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:v16 value:&stru_286339F58 table:@"SpatialAudioProfile"];
  v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_IN_EAR_TEXT" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  v26 = [v21 alertControllerWithTitle:v23 message:v25 preferredStyle:1];

  v27 = MEMORY[0x277D750F8];
  v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v29 = [v28 localizedStringForKey:@"OK" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  v30 = [v27 actionWithTitle:v29 style:0 handler:&__block_literal_global_386];
  [v26 addAction:v30];

  [(HPSSpatialProfileEnrollmentController *)self presentViewController:v26 animated:1 completion:0];
  v31 = *MEMORY[0x277D85DE8];
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
    v16 = self;
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
        if (+[HPSProductUtils isAppleHeadphone:](HPSProductUtils, "isAppleHeadphone:", v8, v16) && ([v8 isTemporaryPaired] & 1) == 0)
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
                v10 = [v9 classicDevice];
                [v10 inEarStatusPrimary:buf secondary:&v17];

                if (!*buf || !v17)
                {
                  [(HPSSpatialProfileEnrollmentController *)v16 showBudsInEarPopUp:v9];
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
                inEarDetectDisabledPopUpShown = v16->_inEarDetectDisabledPopUpShown;
                if (!inEarDetectDisabledPopUpShown)
                {
                  v16->_inEarDetectDisabledPopUpShown = 1;
                  [(HPSSpatialProfileEnrollmentController *)v16 showBudsInEarPopUp:v9];
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
  v14[2] = __59__HPSSpatialProfileEnrollmentController_showLandscapeAlert__block_invoke;
  v14[3] = &unk_2796AD708;
  v14[4] = self;
  v13 = [v10 actionWithTitle:v12 style:0 handler:v14];
  [v9 addAction:v13];

  [(HPSSpatialProfileEnrollmentController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)fillFacePillsByDirection:(int)a3
{
  v5 = 0;
  if ((a3 - 1) <= 6)
  {
    v5 = qword_251217D40[a3 - 1];
  }

  v7[6] = v3;
  v7[7] = v4;
  stepSerialQueue = self->_stepSerialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HPSSpatialProfileEnrollmentController_fillFacePillsByDirection___block_invoke;
  v7[3] = &unk_2796AD640;
  v7[4] = self;
  v7[5] = v5;
  dispatch_async(stepSerialQueue, v7);
}

void __66__HPSSpatialProfileEnrollmentController_fillFacePillsByDirection___block_invoke(uint64_t a1)
{
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 3221225472;
  v1[2] = __66__HPSSpatialProfileEnrollmentController_fillFacePillsByDirection___block_invoke_2;
  v1[3] = &unk_2796AD640;
  v1[4] = *(a1 + 32);
  v1[5] = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], v1);
}

void __66__HPSSpatialProfileEnrollmentController_fillFacePillsByDirection___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1152) pillContainer];
  [v2 fillPillsAroundAngle:*(a1 + 40)];
}

- (void)showEarPillsDots
{
  earPillContainer = self->_earPillContainer;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__HPSSpatialProfileEnrollmentController_showEarPillsDots__block_invoke;
  v4[3] = &unk_2796AD618;
  v4[4] = self;
  [MEMORY[0x277D75D18] transitionWithView:earPillContainer duration:5242880 options:v4 animations:0 completion:0.4];
  [(HPSSpatialProfileEarDotsMovieView *)self->_earDotsMovieView showDots];
}

- (void)hideEarPillsDots
{
  earPillContainer = self->_earPillContainer;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__HPSSpatialProfileEnrollmentController_hideEarPillsDots__block_invoke;
  v4[3] = &unk_2796AD618;
  v4[4] = self;
  [MEMORY[0x277D75D18] transitionWithView:earPillContainer duration:5242880 options:v4 animations:0 completion:0.4];
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
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Start Welcome Spinner", v7, 2u);
  }

  self->_welcomeSpinnerOn = 1;
  v4 = [(OBTrayButton *)self->_continueButton titleLabel];
  [v4 setHidden:1];

  [(OBTrayButton *)self->_continueButton setUserInteractionEnabled:0];
  [(HPSSpatialProfileEnrollmentController *)self prepareSpinner];
  spinner = self->_spinner;
  v6 = [MEMORY[0x277D75348] systemWhiteColor];
  [(UIActivityIndicatorView *)spinner setColor:v6];
}

- (void)stopWelcomeSpinner
{
  v13 = *MEMORY[0x277D85DE8];
  if (!self->_enrollmentReady || ![(BluetoothManager *)self->_btManager available])
  {
    v5 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      enrollmentReady = self->_enrollmentReady;
      v8 = [(BluetoothManager *)self->_btManager available];
      v10[0] = 67109376;
      v10[1] = enrollmentReady;
      v11 = 1024;
      v12 = v8;
      _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: stopWelcomeSpinner failed _enrollmentReady %d [_btManager available] %d", v10, 0xEu);
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
    LOWORD(v10[0]) = 0;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stop Welcome Spinner", v10, 2u);
  }

  self->_welcomeSpinnerOn = 0;
  v6 = [(OBTrayButton *)self->_continueButton titleLabel];
  [v6 setHidden:0];

  [(OBTrayButton *)self->_continueButton setUserInteractionEnabled:1];
  [(HPSSpatialProfileEnrollmentController *)self cleanUpSpinner];
  [(HPSSpatialProfileEnrollmentController *)self continueButtonTapped];
LABEL_12:
  v9 = *MEMORY[0x277D85DE8];
}

- (void)startPostProcessSpinner
{
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Start Post Process Spinner", v8, 2u);
  }

  self->_postProcessSpinnerOn = 1;
  v4 = [(OBTrayButton *)self->_continueButton titleLabel];
  [v4 setHidden:1];

  [(OBTrayButton *)self->_continueButton setUserInteractionEnabled:0];
  v5 = [MEMORY[0x277D75348] systemBackgroundColor];
  [(OBTrayButton *)self->_continueButton setTintColor:v5];

  [(HPSSpatialProfileEnrollmentController *)self showContinueButton];
  [(HPSSpatialProfileEnrollmentController *)self prepareSpinner];
  spinner = self->_spinner;
  v7 = [MEMORY[0x277D75348] systemGrayColor];
  [(UIActivityIndicatorView *)spinner setColor:v7];
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
      *v8 = 0;
      _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stop Post Process Spinner", v8, 2u);
    }

    self->_postProcessSpinnerOn = 0;
    v6 = [MEMORY[0x277D75348] systemBlueColor];
    [(OBTrayButton *)self->_continueButton setTintColor:v6];

    v7 = [(OBTrayButton *)self->_continueButton titleLabel];
    [v7 setHidden:0];

    [(OBTrayButton *)self->_continueButton setUserInteractionEnabled:1];
    [(HPSSpatialProfileEnrollmentController *)self cleanUpSpinner];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [HPSSpatialProfileSingeStepEnrollmentController stopWelcomeSpinner];
    }
  }
}

- (void)earLeftPartCaptured
{
  stepSerialQueue = self->_stepSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HPSSpatialProfileEnrollmentController_earLeftPartCaptured__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(stepSerialQueue, block);
}

void __60__HPSSpatialProfileEnrollmentController_earLeftPartCaptured__block_invoke(uint64_t a1)
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  [*(a1 + 32) pulseEarBoundingBox];
  v3 = *(*(a1 + 32) + 1160);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__HPSSpatialProfileEnrollmentController_earLeftPartCaptured__block_invoke_2;
  v10[3] = &unk_2796AD618;
  v4 = v2;
  v11 = v4;
  [v3 fillLeftPillsWithCompletion:v10];
  dispatch_group_enter(v4);
  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__HPSSpatialProfileEnrollmentController_earLeftPartCaptured__block_invoke_3;
  v8[3] = &unk_2796AD618;
  v9 = v4;
  v6 = v4;
  [v5 playEarCaptureSoundWithCompletion:v8];
  v7 = dispatch_time(0, 3000000000);
  dispatch_group_wait(v6, v7);
}

- (void)earCentralPartCaptured
{
  stepSerialQueue = self->_stepSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HPSSpatialProfileEnrollmentController_earCentralPartCaptured__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(stepSerialQueue, block);
}

void __63__HPSSpatialProfileEnrollmentController_earCentralPartCaptured__block_invoke(uint64_t a1)
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  [*(a1 + 32) pulseEarBoundingBox];
  v3 = *(*(a1 + 32) + 1160);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__HPSSpatialProfileEnrollmentController_earCentralPartCaptured__block_invoke_2;
  v10[3] = &unk_2796AD618;
  v4 = v2;
  v11 = v4;
  [v3 fillCentralPillsWithCompletion:v10];
  dispatch_group_enter(v4);
  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__HPSSpatialProfileEnrollmentController_earCentralPartCaptured__block_invoke_3;
  v8[3] = &unk_2796AD618;
  v9 = v4;
  v6 = v4;
  [v5 playEarCaptureSoundWithCompletion:v8];
  v7 = dispatch_time(0, 3000000000);
  dispatch_group_wait(v6, v7);
}

- (void)earRightPartCaptured
{
  stepSerialQueue = self->_stepSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__HPSSpatialProfileEnrollmentController_earRightPartCaptured__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(stepSerialQueue, block);
}

void __61__HPSSpatialProfileEnrollmentController_earRightPartCaptured__block_invoke(uint64_t a1)
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  [*(a1 + 32) pulseEarBoundingBox];
  v3 = *(*(a1 + 32) + 1160);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__HPSSpatialProfileEnrollmentController_earRightPartCaptured__block_invoke_2;
  v10[3] = &unk_2796AD618;
  v4 = v2;
  v11 = v4;
  [v3 fillRightPillsWithCompletion:v10];
  dispatch_group_enter(v4);
  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__HPSSpatialProfileEnrollmentController_earRightPartCaptured__block_invoke_3;
  v8[3] = &unk_2796AD618;
  v9 = v4;
  v6 = v4;
  [v5 playEarCaptureSoundWithCompletion:v8];
  v7 = dispatch_time(0, 3000000000);
  dispatch_group_wait(v6, v7);
}

- (void)pulseEarBoundingBox
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HPSSpatialProfileEnrollmentController_pulseEarBoundingBox__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __60__HPSSpatialProfileEnrollmentController_pulseEarBoundingBox__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1192) setInactive:0];
  [*(*(a1 + 32) + 1192) startScalingWithExpansionWidth:1 duration:10.0 repeatCount:0.1];
  v2 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HPSSpatialProfileEnrollmentController_pulseEarBoundingBox__block_invoke_2;
  block[3] = &unk_2796AD618;
  block[4] = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
}

- (void)clearBoundingBox
{
  self->_earBoundingBoxDetectTracker = 0;
  self->_earBoundingBoxDetected = 0;
  [(HPSSpatialProfileEnrollmentController *)self updateBoundingBoxHiddenStatus];
}

- (void)updateBoundingBoxHiddenStatus
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(CEKSubjectIndicatorView *)self->_earBoundingBoxView isHidden];
  currentStep = self->_currentStep;
  if (currentStep == 7 || currentStep == 11)
  {
    if (v3 != self->_earBoundingBoxDetected)
    {
      goto LABEL_17;
    }

    if (self->_earBoundingBoxDetected)
    {
      [(CEKSubjectIndicatorView *)self->_earBoundingBoxView bounds];
      if (CGRectEqualToRect(v15, *MEMORY[0x277CBF3A0]))
      {
        goto LABEL_17;
      }

      v6 = 0;
      goto LABEL_12;
    }
  }

  else if (v3)
  {
    goto LABEL_17;
  }

  v6 = 1;
LABEL_12:
  v7 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"Showing";
    if (v6)
    {
      v8 = @"Hidden";
    }

    *buf = 138412290;
    v13 = v8;
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Bouding Box Updated : %@", buf, 0xCu);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__HPSSpatialProfileEnrollmentController_updateBoundingBoxHiddenStatus__block_invoke;
  v10[3] = &unk_2796ADEC0;
  v10[4] = self;
  v11 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v10);
LABEL_17:
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __70__HPSSpatialProfileEnrollmentController_updateBoundingBoxHiddenStatus__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __70__HPSSpatialProfileEnrollmentController_updateBoundingBoxHiddenStatus__block_invoke_2;
  v2[3] = &unk_2796ADEC0;
  v2[4] = *(a1 + 32);
  v3 = *(a1 + 40);
  return [MEMORY[0x277D75D18] animateWithDuration:v2 animations:0.3];
}

uint64_t __89__HPSSpatialProfileEnrollmentController_translateEarBoundingBox_previewLayerBoundingBox___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __89__HPSSpatialProfileEnrollmentController_translateEarBoundingBox_previewLayerBoundingBox___block_invoke_2;
  v2[3] = &unk_2796ADE98;
  v2[4] = *(a1 + 32);
  v3 = *(a1 + 40);
  return [MEMORY[0x277D75D18] animateWithDuration:v2 animations:0.1];
}

uint64_t __89__HPSSpatialProfileEnrollmentController_translateEarBoundingBox_previewLayerBoundingBox___block_invoke_2(uint64_t a1)
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
  v31 = *MEMORY[0x277D85DE8];
  faceBoundingBoxStatus = self->_faceBoundingBoxStatus;
  v9 = self->_visageFrame.size.height;
  v10 = a3.size.width / self->_visageFrame.size.width;
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

- (void)updateCurrentTrackingEar:(id)a3 rightEarPoseStatus:(id)a4 earBoundingBox:(CGRect)a5 earStatus:(int)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v90 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = v14;
  if (v13)
  {
    v79 = [v13 hasYawAngle] != 0;
    if (v15)
    {
LABEL_3:
      v78 = [v15 hasYawAngle] != 0;
      goto LABEL_6;
    }
  }

  else
  {
    v79 = 0;
    if (v14)
    {
      goto LABEL_3;
    }
  }

  v78 = 0;
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
  v91.origin.x = x;
  v91.origin.y = y;
  v91.size.width = width;
  v91.size.height = height;
  v26 = CGRectEqualToRect(v91, *MEMORY[0x277CBF3A0]);
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
  if (v79)
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

  if (v78)
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

  v53 = sharedBluetoothSettingsLogComponent();
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
    *v81 = currentYaw;
    *&v81[8] = 2048;
    *v82 = candidateYaw;
    *&v82[8] = 2112;
    v83 = v57;
    v84 = 2112;
    v85 = v58;
    v86 = 2112;
    v87 = v59;
    v88 = 2112;
    v89 = v56;
    _os_log_impl(&dword_251143000, v53, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Current yaw : %f  < %f >  :  Too Close: %@ Too Far : %@ Motion Blurr: %@ Occlusion (Note other param affect this) : %@", buf, 0x3Eu);
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

  if (v79 || v78)
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
    v61 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v62 = self->_currentTrackingEar;
      v63 = self->_currentStep;
      *buf = 67109376;
      *v81 = v62;
      *&v81[4] = 1024;
      *&v81[6] = v63;
      _os_log_impl(&dword_251143000, v61, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ear Tracking Changed to %d Current State %d", buf, 0xEu);
    }
  }

  if (earTooClose != self->_earTooClose || earTooFar != self->_earTooFar || isEarOccluded != self->_isEarOccluded || self->_currentTrackingEar != currentTrackingEar)
  {
    v64 = sharedBluetoothSettingsLogComponent();
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

      *v81 = v66;
      *&v81[8] = 2112;
      if (v68)
      {
        v65 = @"YES";
      }

      *v82 = v69;
      *&v82[8] = 2112;
      v83 = v70;
      v84 = 2112;
      v85 = v65;
      _os_log_impl(&dword_251143000, v64, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ear Aggressor parameter Changes Too Close: %@ Too Far : %@ Motion Blurr: %@ Occlusion (Note other param affect this) : %@ ", buf, 0x2Au);
    }

    if (isEarOccluded != self->_isEarOccluded)
    {
      v71 = sharedBluetoothSettingsLogComponent();
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
        *v81 = v72;
        *&v81[8] = 1024;
        *v82 = earOcclusionDetectTracker;
        *&v82[4] = 1024;
        *&v82[6] = supressEarOcclusionWarning;
        _os_log_impl(&dword_251143000, v71, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ear Occlusion changed to %s current number of entries %d UI supressed = %d", buf, 0x18u);
      }
    }
  }

  v75 = *MEMORY[0x277D85DE8];
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
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HPSSpatialProfileEnrollmentController_startEarDistanceWarnCoolDownTimer__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __74__HPSSpatialProfileEnrollmentController_startEarDistanceWarnCoolDownTimer__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 1448))
  {
    [v2 stopEarDistanceWarnCoolDownTimer];
    v2 = *(a1 + 32);
  }

  *(v2 + 1460) = 1;
  v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:*(a1 + 32) target:sel_triggerEarDistanceWarnCoolDownTimer selector:0 userInfo:0 repeats:9.0];
  v4 = *(a1 + 32);
  v5 = *(v4 + 1448);
  *(v4 + 1448) = v3;

  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Start Ear distance Cool down timer", v7, 2u);
  }
}

- (void)triggerEarDistanceWarnCoolDownTimer
{
  self->_supressEarDistanceWarning = 0;
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ready to show ear too close error", v3, 2u);
  }
}

- (void)stopEarDistanceWarnCoolDownTimer
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    x = self->_currentEarBB.origin.x;
    y = self->_currentEarBB.origin.y;
    width = self->_currentEarBB.size.width;
    height = self->_currentEarBB.size.height;
    v10 = 134218752;
    v11 = x;
    v12 = 2048;
    v13 = y;
    v14 = 2048;
    v15 = width;
    v16 = 2048;
    v17 = height;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Stopping ear too close  Timer Current Bounding Box [ %f %f %f %f", &v10, 0x2Au);
  }

  [(NSTimer *)self->_earTooCloseWarnCoolDownTimer invalidate];
  earTooCloseWarnCoolDownTimer = self->_earTooCloseWarnCoolDownTimer;
  self->_earTooCloseWarnCoolDownTimer = 0;

  v9 = *MEMORY[0x277D85DE8];
}

- (void)startEnrollGuidanceTimer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HPSSpatialProfileEnrollmentController_startEnrollGuidanceTimer__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __65__HPSSpatialProfileEnrollmentController_startEnrollGuidanceTimer__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 1568))
  {
    [*(a1 + 32) stopEnrollGuidanceTimer];
    v2 = *(a1 + 32);
  }

  v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:v2 target:sel_triggerEnrollGuidanceTimer selector:0 userInfo:0 repeats:5.0];
  v4 = *(a1 + 32);
  v5 = *(v4 + 1568);
  *(v4 + 1568) = v3;

  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Start Progress Player", v7, 2u);
  }
}

- (void)triggerEnrollGuidanceTimer
{
  *(&v73[2] + 6) = *MEMORY[0x277D85DE8];
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
          v10 = sharedBluetoothSettingsLogComponent();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = self->_candidateYaw;
            *buf = 134218240;
            v68 = candidateYaw;
            v69 = 2048;
            v70 = v11;
            _os_log_impl(&dword_251143000, v10, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Dynamic enrollment guidance Candidate angle updated %f --> %f", buf, 0x16u);
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

      v17 = sharedBluetoothSettingsLogComponent();
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
        v68 = currentYaw;
        v69 = 2048;
        v70 = v19;
        v71 = 1024;
        *v72 = leftEarInViewCount;
        *&v72[4] = 1024;
        *&v72[6] = rightEarInViewCount;
        LOWORD(v73[0]) = 2112;
        *(v73 + 2) = v22;
        _os_log_impl(&dword_251143000, v17, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Dynamic enrollment guidance evaluating Feedback Current Yaw %f Target Yaw %f Ear Tracking [L %d R %d] %@", buf, 0x2Cu);
      }

      v23 = self->_candidateYaw;
      if (v23 != -100.0)
      {
        if (v14)
        {
          v59 = 1584;
          v24 = vabdd_f64(v23, self->_currentYaw);
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v60 = v7;
          v25 = self->_feedBackBinning;
          v26 = [(NSArray *)v25 countByEnumeratingWithState:&v62 objects:v66 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = 0;
            v29 = *v63;
            while (2)
            {
              v30 = 0;
              v31 = v28;
              v28 += v27;
              do
              {
                if (*v63 != v29)
                {
                  objc_enumerationMutation(v25);
                }

                v32 = *(*(&v62 + 1) + 8 * v30);
                [v32 floatValue];
                if (v24 > v33)
                {
                  v36 = [(NSArray *)self->_feedBackPitch objectAtIndex:v31];
                  [v36 floatValue];
                  self->_enrollGuidancePitch = v37;
                  v38 = sharedBluetoothSettingsLogComponent();
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                  {
                    v39 = self->_enrollGuidancePitch;
                    [v32 floatValue];
                    *buf = 134218240;
                    v68 = v39;
                    v69 = 2048;
                    v70 = v40;
                    _os_log_impl(&dword_251143000, v38, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Dynamic enrollment guidance Calcuated new Pitch %f based on Bin %f ", buf, 0x16u);
                  }

                  v28 = v31;
                  goto LABEL_42;
                }

                ++v31;
                ++v30;
              }

              while (v27 != v30);
              v27 = [(NSArray *)v25 countByEnumeratingWithState:&v62 objects:v66 count:16];
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

          v7 = v60;
          if (v28 > [(NSArray *)self->_feedBackBinning count])
          {
            v41 = [(NSArray *)self->_feedBackPitch lastObject];
            [v41 floatValue];
            self->_enrollGuidancePitch = v42;
            v43 = sharedBluetoothSettingsLogComponent();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              v44 = self->_enrollGuidancePitch;
              *buf = 134217984;
              v68 = v44;
              _os_log_impl(&dword_251143000, v43, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Dynamic enrollment guidance Calcuated new Pitch as lowest %f", buf, 0xCu);
            }
          }

          v45 = sharedBluetoothSettingsLogComponent();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v46 = self->_candidateYaw;
            v47 = *(&self->super.super.super.isa + v59);
            v48 = self->_enrollGuidancePitch;
            *buf = 134218752;
            v68 = v46;
            v69 = 2048;
            v70 = v47;
            v71 = 2048;
            *v72 = v24;
            *&v72[8] = 2048;
            *v73 = v48;
            _os_log_impl(&dword_251143000, v45, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Dynamic enrollment guidance Candidate %f  _currentYaw %f : evaluating Delta %f New Pitch %f ", buf, 0x2Au);
          }

          if (enrollGuidancePitch != self->_enrollGuidancePitch || ![(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager isEnrollGuidancePlaying])
          {
            v49 = sharedBluetoothSettingsLogComponent();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              v50 = self->_enrollGuidancePitch;
              v51 = [(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager isEnrollGuidancePlaying];
              v52 = @"YES";
              *buf = 134218498;
              v68 = enrollGuidancePitch;
              if (v51)
              {
                v52 = @"NO";
              }

              v69 = 2048;
              v70 = v50;
              v71 = 2112;
              *v72 = v52;
              _os_log_impl(&dword_251143000, v49, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Dynamic enrollment guidance Update Dynamic audio feedback pitch %f -> %f Restart Play %@", buf, 0x20u);
            }

            v53 = self->_enrollGuidancePitch;
            *&v53 = v53;
            [(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager setEnrollGuidancePitch:v53];
            if (![(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager isEnrollGuidancePlaying])
            {
              [(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager playEnrollGuidance:self->_currentStep];
            }
          }
        }

        else
        {
          self->_enrollGuidancePitch = 0.5;
          LODWORD(v23) = 0.5;
          [(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager setEnrollGuidancePitch:v23];
          v34 = sharedBluetoothSettingsLogComponent();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = self->_enrollGuidancePitch;
            *buf = 134218240;
            v68 = enrollGuidancePitch;
            v69 = 2048;
            v70 = v35;
            _os_log_impl(&dword_251143000, v34, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Dynamic enrollment guidance Not tracking ear, reset Pitch + Pause Play .%f -> %f", buf, 0x16u);
          }

          [(HPSSpatialProfileSoundHapticManager *)self->_soundHapticManager pauseEnrollGuidancePlayer];
          self->_currentYaw = -100.0;
        }
      }
    }
  }

  v54 = self->_leftEarStatus;
  v55 = v54 < 1 || v54 == 3;
  if (!v55 || ((v56 = self->_rightEarStatus, v56 >= 1) ? (v57 = v56 == 3) : (v57 = 1), !v57))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__HPSSpatialProfileEnrollmentController_triggerEnrollGuidanceTimer__block_invoke;
    block[3] = &unk_2796AD618;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v58 = *MEMORY[0x277D85DE8];
}

uint64_t __67__HPSSpatialProfileEnrollmentController_triggerEnrollGuidanceTimer__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:*(a1 + 32) target:sel_triggerEnrollGuidanceTimer selector:0 userInfo:0 repeats:0.5];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1568);
  *(v3 + 1568) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)stopEnrollGuidanceTimer
{
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Dynamic enrollment guidance Stopping Timer", v6, 2u);
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
  v22 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    currentYaw = self->_currentYaw;
    candidateYaw = self->_candidateYaw;
    *buf = 67109632;
    v17 = a3;
    v18 = 2048;
    v19 = currentYaw;
    v20 = 2048;
    v21 = candidateYaw;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Error Message *** Ear distance detection warning shown to user %d Current yaw %f Candidate Yaw %f ", buf, 0x1Cu);
  }

  self->_earOcclusionDetectTracker = 0;
  self->_isEarOccluded = 0;
  [(HPSSpatialProfileEnrollmentController *)self restartOcclusionWarnCoolDownTimer];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HPSSpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  switch(a3)
  {
    case 5:
      [(HPSSpatialProfileEnrollmentController *)self pauseEnrollment];
      v8 = v12;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v9 = __65__HPSSpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke_6;
      goto LABEL_9;
    case 4:
      [(HPSSpatialProfileEnrollmentController *)self pauseEnrollment];
      v8 = v13;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v9 = __65__HPSSpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke_4;
      goto LABEL_9;
    case 3:
      [(HPSSpatialProfileEnrollmentController *)self pauseEnrollment];
      v8 = v14;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v9 = __65__HPSSpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke_2;
LABEL_9:
      v8[2] = v9;
      v8[3] = &unk_2796AD618;
      v8[4] = self;
      v10 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v8);

      break;
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __65__HPSSpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1144) pauseProgressPlayer];
  v2 = *(*(a1 + 32) + 1144);

  return [v2 pauseEnrollGuidancePlayer];
}

void __65__HPSSpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) clearBoundingBox];
  [*(a1 + 32) forceBlur];
  v2 = *(*(a1 + 32) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"EAR_TOO_CLOSE_TITLE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = [v5 objectForKey:*MEMORY[0x277CBE718]];
  LODWORD(v4) = [v6 BOOLValue];

  v7 = *(*(a1 + 32) + 1032);
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = v8;
  if (v4)
  {
    v10 = @"EAR_TOO_CLOSE_DETAIL_METRICS";
  }

  else
  {
    v10 = @"EAR_TOO_CLOSE_DETAIL_IMPERIAL";
  }

  v11 = [v8 localizedStringForKey:v10 value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v7 setDetailText:v11];

  v12 = dispatch_group_create();
  dispatch_group_enter(v12);
  v13 = *(*(a1 + 32) + 1144);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__HPSSpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke_3;
  v15[3] = &unk_2796AD618;
  v16 = v12;
  v14 = v12;
  [v13 triggerSoundHapticForEnrollmentState:19 completion:v15];
  [*(a1 + 32) showEarDistanceWarningContinueButton];
}

void __65__HPSSpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) clearBoundingBox];
  [*(a1 + 32) forceBlur];
  v2 = *(*(a1 + 32) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"EAR_TOO_FAR_TITLE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setTitle:v4];

  v5 = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = [v5 objectForKey:*MEMORY[0x277CBE718]];
  LODWORD(v4) = [v6 BOOLValue];

  v7 = *(*(a1 + 32) + 1032);
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = v8;
  if (v4)
  {
    v10 = @"EAR_TOO_CLOSE_DETAIL_METRICS";
  }

  else
  {
    v10 = @"EAR_TOO_CLOSE_DETAIL_IMPERIAL";
  }

  v11 = [v8 localizedStringForKey:v10 value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v7 setDetailText:v11];

  v12 = dispatch_group_create();
  dispatch_group_enter(v12);
  v13 = *(*(a1 + 32) + 1144);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__HPSSpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke_5;
  v15[3] = &unk_2796AD618;
  v16 = v12;
  v14 = v12;
  [v13 triggerSoundHapticForEnrollmentState:19 completion:v15];
  [*(a1 + 32) showEarDistanceWarningContinueButton];
}

void __65__HPSSpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) clearBoundingBox];
  [*(a1 + 32) forceBlur];
  v2 = *(*(a1 + 32) + 1032);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"EAR_TOO_FAST_DETAIL" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  [v2 setDetailText:v4];

  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v6 = *(*(a1 + 32) + 1144);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__HPSSpatialProfileEnrollmentController_alertEarDistanceWarning___block_invoke_7;
  v8[3] = &unk_2796AD618;
  v9 = v5;
  v7 = v5;
  [v6 triggerSoundHapticForEnrollmentState:19 completion:v8];
  [*(a1 + 32) showEarDistanceWarningContinueButton];
}

- (void)continueEarDistanceWarning
{
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ear Too close ContinueButton Tapped", buf, 2u);
  }

  [(HPSSpatialProfileEnrollmentController *)self resumeEnrollment];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HPSSpatialProfileEnrollmentController_continueEarDistanceWarning__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  self->_isEarOccluded = 0;
  self->_earOcclusionDetectTracker = 0;
  self->_earTooClose = 0;
  self->_earTooCloseDetectTracker = 0;
  self->_earTooFar = 0;
  self->_earTooFarDetectTracker = 0;
  [(HPSSpatialProfileEnrollmentController *)self startEarDistanceWarnCoolDownTimer];
}

uint64_t __67__HPSSpatialProfileEnrollmentController_continueEarDistanceWarning__block_invoke(uint64_t a1)
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
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HPSSpatialProfileEnrollmentController_startEarEnrollmentNudgeTimer__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __69__HPSSpatialProfileEnrollmentController_startEarEnrollmentNudgeTimer__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 1496))
  {
    [*(a1 + 32) stopEarEnrollmentNudgeTimer];
    v2 = *(a1 + 32);
  }

  v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:v2 target:sel_triggerEarEnrollmentNudgeTimer selector:0 userInfo:1 repeats:20.0];
  v4 = *(a1 + 32);
  v5 = *(v4 + 1496);
  *(v4 + 1496) = v3;

  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "Spatial Profile:Checking ear enrollment nudge", v7, 2u);
  }
}

- (void)triggerEarEnrollmentNudgeTimer
{
  if (self->_rightEarStatus == 3 && self->_leftEarStatus == 3)
  {
    [(HPSSpatialProfileEnrollmentController *)self stopEarEnrollmentNudgeTimer];
  }

  else
  {
    [(HPSSpatialProfileEnrollmentController *)self nudgeEar];
  }
}

- (void)nudgeEar
{
  v51 = *MEMORY[0x277D85DE8];
  if (CACurrentMediaTime() - self->_lastEarCaptureTime < 3.0 || self->_enrollmentPaused)
  {
    v3 = sharedBluetoothSettingsLogComponent();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
LABEL_6:

      goto LABEL_7;
    }

    v4 = CACurrentMediaTime() - self->_lastEarCaptureTime;
    enrollmentPaused = self->_enrollmentPaused;
    *buf = 134218240;
    *v38 = v4;
    *&v38[8] = 1024;
    LODWORD(v39) = enrollmentPaused;
    v6 = "Spatial Profile:got frame within last %f sec Enrollment Pause status: %d";
    v7 = v3;
    v8 = 18;
LABEL_5:
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    goto LABEL_6;
  }

  v10 = sharedBluetoothSettingsLogComponent();
  v11 = &OBJC_IVAR___HPSSpatialProfileEnrollmentController__earCaptureSoundStep;
  v12 = &OBJC_IVAR___HPSSpatialProfileEnrollmentController__earCaptureSoundStep;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    leftEarStatus = self->_leftEarStatus;
    leftEarRearCaptured = self->_leftEarRearCaptured;
    leftEarFrontCaptured = self->_leftEarFrontCaptured;
    rightEarStatus = self->_rightEarStatus;
    rightEarFrontCaptured = self->_rightEarFrontCaptured;
    rightEarRearCaptured = self->_rightEarRearCaptured;
    v19 = CACurrentMediaTime() - self->_lastEarCaptureTime;
    candidateYaw = self->_candidateYaw;
    currentYaw = self->_currentYaw;
    *buf = 67111168;
    *v38 = leftEarStatus;
    *&v38[4] = 1024;
    *&v38[6] = leftEarRearCaptured;
    LOWORD(v39) = 1024;
    *(&v39 + 2) = leftEarFrontCaptured;
    HIWORD(v39) = 1024;
    v40 = rightEarStatus;
    v41 = 1024;
    v42 = rightEarFrontCaptured;
    v11 = &OBJC_IVAR___HPSSpatialProfileEnrollmentController__earCaptureSoundStep;
    v43 = 1024;
    v44 = rightEarRearCaptured;
    v12 = &OBJC_IVAR___HPSSpatialProfileEnrollmentController__earCaptureSoundStep;
    v45 = 2048;
    v46 = v19;
    v47 = 2048;
    v48 = candidateYaw;
    v49 = 2048;
    v50 = currentYaw;
    _os_log_impl(&dword_251143000, v10, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Trigger nudge Left ear Status %d : [ Rear captured : %d Fron Captured : %d ] right ear  Status %d: [ Rear captured : %d Fron Captured : %d ] Time From last detection %f Candidate Yaw %f Current Yaw %f", buf, 0x44u);
  }

  v22 = v12[43];
  v23 = *(&self->super.super.super.isa + v22);
  if (v23 != -100.0)
  {
    v24 = v11[44];
    v25 = *(&self->super.super.super.isa + v24);
    if (v25 != -100.0)
    {
      if (vabdd_f64(v25, v23) <= 10.0)
      {
        v3 = sharedBluetoothSettingsLogComponent();
        if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_6;
        }

        v28 = *(&self->super.super.super.isa + v24);
        v29 = *(&self->super.super.super.isa + v22);
        *buf = 134218240;
        *v38 = v28;
        *&v38[8] = 2048;
        v39 = v29;
        v6 = "Spatial Profile: Ignore Trigger nudge Left ear due to lower threshold : Candiate %f - Current %f";
        v7 = v3;
        v8 = 22;
        goto LABEL_5;
      }

      if (self->_rightEarStatus == 2)
      {
        v26 = dispatch_time(0, 300000000);
        if (v25 > v23)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke;
          block[3] = &unk_2796AD618;
          block[4] = self;
          dispatch_after(v26, MEMORY[0x277D85CD0], block);
          if (self->_leftEarStatus != 2)
          {
            goto LABEL_7;
          }

          goto LABEL_24;
        }

        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke_3;
        v35[3] = &unk_2796AD618;
        v35[4] = self;
        dispatch_after(v26, MEMORY[0x277D85CD0], v35);
        if (self->_leftEarStatus != 2)
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (self->_leftEarStatus != 2)
        {
          goto LABEL_7;
        }

        if (v25 > v23)
        {
LABEL_24:
          v30 = dispatch_time(0, 300000000);
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke_5;
          v34[3] = &unk_2796AD618;
          v34[4] = self;
          v31 = MEMORY[0x277D85CD0];
          v32 = v34;
LABEL_27:
          dispatch_after(v30, v31, v32);
          goto LABEL_7;
        }
      }

      v30 = dispatch_time(0, 300000000);
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke_7;
      v33[3] = &unk_2796AD618;
      v33[4] = self;
      v31 = MEMORY[0x277D85CD0];
      v32 = v33;
      goto LABEL_27;
    }
  }

  v27 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251143000, v27, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ignore Trigger nudge Left ear due to missing yaw", buf, 2u);
  }

LABEL_7:
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke(uint64_t a1)
{
  [*(a1 + 32) forceBlur];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1152);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke_2;
  v5[3] = &unk_2796AD618;
  v5[4] = v2;
  return [v3 nudgeRight:v5];
}

_DWORD *__49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[342] == 2 || result[346] == 2)
  {
    return [result cancelBlur];
  }

  return result;
}

uint64_t __49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) forceBlur];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1152);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke_4;
  v5[3] = &unk_2796AD618;
  v5[4] = v2;
  return [v3 nudgeLeft:v5];
}

_DWORD *__49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[342] == 2 || result[346] == 2)
  {
    return [result cancelBlur];
  }

  return result;
}

uint64_t __49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) forceBlur];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1152);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke_6;
  v5[3] = &unk_2796AD618;
  v5[4] = v2;
  return [v3 nudgeLeft:v5];
}

_DWORD *__49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke_6(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[342] == 2 || result[346] == 2)
  {
    return [result cancelBlur];
  }

  return result;
}

uint64_t __49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) forceBlur];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1152);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke_8;
  v5[3] = &unk_2796AD618;
  v5[4] = v2;
  return [v3 nudgeRight:v5];
}

_DWORD *__49__HPSSpatialProfileEnrollmentController_nudgeEar__block_invoke_8(uint64_t a1)
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
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HPSSpatialProfileEnrollmentController_stopEarEnrollmentNudgeTimer__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __68__HPSSpatialProfileEnrollmentController_stopEarEnrollmentNudgeTimer__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1496) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1496);
  *(v2 + 1496) = 0;
}

- (void)cancelBlur
{
  [(HPSSpatialProfileUIPearlEnrollView *)self->_enrollView setPauseBlur:1];
  [(HPSSpatialProfileUIPearlEnrollView *)self->_enrollView setForceBlur:0];
  enrollView = self->_enrollView;

  [(HPSSpatialProfileUIPearlEnrollView *)enrollView setCameraBlurAmount:0 useShade:0 duration:0.0 completion:0.5];
}

- (void)forceBlur
{
  [(HPSSpatialProfileUIPearlEnrollView *)self->_enrollView setPauseBlur:0];
  [(HPSSpatialProfileUIPearlEnrollView *)self->_enrollView setForceBlur:1];
  enrollView = self->_enrollView;

  [(HPSSpatialProfileUIPearlEnrollView *)enrollView setCameraBlurAmount:0 useShade:0 duration:15.0 completion:0.5];
}

- (void)sendTipKitSignal
{
  v2 = [MEMORY[0x277CF1B58] discoverabilitySignal];
  v3 = [v2 source];
  v4 = objc_alloc(MEMORY[0x277CF1938]);
  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v5 bundleIdentifier];
  v7 = [v4 initWithIdentifier:@"com.apple.HeadphoneSettings.spatial-profile-enrollment-triggered" bundleID:v6 context:0];

  [v3 sendEvent:v7];
  v8 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Signal Sent to TipKit", v9, 2u);
  }
}

@end
@interface BKUIFingerprintEnrollViewController
- (BKUIFingerprintEnrollViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (BOOL)_shouldHideUnlockMessage;
- (BOOL)_topTouchButtonIpad;
- (BOOL)_useAlertHud;
- (BOOL)didTapInValidRectForAlertInstructingWhereToTouch:(id)a3;
- (BOOL)followUPEnrollmentUpSell;
- (BOOL)isModalInPresentation;
- (CGSize)preferredContentSize;
- (id)_deviceAwareLocalizedStringForKey:(id)a3;
- (id)_liftFingerString;
- (id)_placeFingerString;
- (id)_readyString;
- (id)_subtitleFont;
- (unint64_t)_bkDeviceIdentityCount;
- (unint64_t)_bkIdentityCount;
- (void)_animateHeaderTitle:(id)a3;
- (void)_bkIdentityCount;
- (void)_cancelActiveEnrollOperation;
- (void)_cancelEnrollmentAndRestart:(BOOL)a3;
- (void)_cancelEnrollmentMatch;
- (void)_enrollHapticFeedback:(id)a3;
- (void)_finishEnrollmentPhaseTwo;
- (void)_messageTimeout;
- (void)_requestNewAuthToken;
- (void)_resetUIWithTransitionToTutorial:(BOOL)a3;
- (void)_restartEnrollment;
- (void)_setTapRecognizer:(id)a3;
- (void)_showDirtOnSensorAlertView;
- (void)_showLiftYourFinger;
- (void)_showSkipEnrollmentAlert;
- (void)_showSmallCoverageAlertView;
- (void)_skipEnrollment;
- (void)_startEnrollOperation;
- (void)_startExtendEnrollOperation;
- (void)_startMessageTimer:(double)a3;
- (void)_stopBiometricOperations;
- (void)_stopMessageTimer;
- (void)_stopTutorialTransitionToEnrollView;
- (void)_transitionPromptMessage:(id)a3;
- (void)_tutorialContinueButtonPressed;
- (void)applicationWillResignActive:(id)a3;
- (void)cancelEnroll;
- (void)constructAlertView;
- (void)createEnrollUI;
- (void)dealloc;
- (void)didSelectPrimaryButton:(id)a3;
- (void)didSelectSecondaryButton:(id)a3;
- (void)enrollDoneContinueButtonPressed;
- (void)enrollOperation:(id)a3 failedWithReason:(int64_t)a4;
- (void)enrollOperation:(id)a3 finishedWithIdentity:(id)a4;
- (void)enrollOperation:(id)a3 percentCompleted:(int64_t)a4;
- (void)enrollOperation:(id)a3 progressedWithTouchIDInfo:(id)a4;
- (void)enrollProgress:(id)a3;
- (void)extendEnroll:(id)a3 hasUpdated:(BOOL)a4;
- (void)fingerprintCaptureOperation:(id)a3 encounteredCaptureError:(int64_t)a4;
- (void)handleProgress:(unsigned int)a3;
- (void)homeButtonPressed;
- (void)initPromptMessage;
- (void)loadView;
- (void)operation:(id)a3 finishedWithReason:(int64_t)a4;
- (void)operation:(id)a3 presenceStateChanged:(BOOL)a4;
- (void)operation:(id)a3 stateChanged:(int64_t)a4;
- (void)respondToTapGesture:(id)a3;
- (void)restartEnroll;
- (void)restartEnrollPressed:(id)a3;
- (void)showSecondFingerEnrollmentUpSell;
- (void)skipEnrollmentPressed:(id)a3;
- (void)transitionToEnrollView:(BOOL)a3;
- (void)transitionToTutorialView:(BOOL)a3 completion:(id)a4;
- (void)viewDidLoad;
@end

@implementation BKUIFingerprintEnrollViewController

- (BKUIFingerprintEnrollViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v12.receiver = self;
  v12.super_class = BKUIFingerprintEnrollViewController;
  v4 = [(BKUIFingerprintEnrollViewController *)&v12 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = os_log_create("com.apple.biometrickitui", "ResultDelegate");
    bkui_result_delegate_log = v4->bkui_result_delegate_log;
    v4->bkui_result_delegate_log = v5;

    v7 = os_log_create("com.apple.biometrickitui", "BiometricKitDelegate");
    bkui_biometric_kit_delegate_log = v4->bkui_biometric_kit_delegate_log;
    v4->bkui_biometric_kit_delegate_log = v7;

    v9 = os_log_create("com.apple.biometrickitui", "FingerprintEnrollViewController");
    bkui_fingerprint_enroll_view_controller_log = v4->bkui_fingerprint_enroll_view_controller_log;
    v4->bkui_fingerprint_enroll_view_controller_log = v9;
  }

  return v4;
}

- (BOOL)isModalInPresentation
{
  currentProgress = self->_currentProgress;
  v3 = [(BKUIFingerprintEnrollViewController *)self bkIdentity];

  return currentProgress != 0.0 || v3 != 0;
}

- (void)dealloc
{
  [(BKUIFingerprintEnrollViewController *)self _stopMessageTimer];
  [(BKEnrollTouchIDOperation *)self->_bkEnroll cancel];
  v3.receiver = self;
  v3.super_class = BKUIFingerprintEnrollViewController;
  [(BKUIFingerprintEnrollViewController *)&v3 dealloc];
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = BKUIFingerprintEnrollViewController;
  [(BKUIFingerprintEnrollViewController *)&v5 loadView];
  v3 = [MEMORY[0x277D75348] systemBackgroundColor];
  v4 = [(BKUIFingerprintEnrollViewController *)self view];
  [v4 setBackgroundColor:v3];

  [(BKUIFingerprintEnrollViewController *)self setEdgesForExtendedLayout:15];
}

- (void)constructAlertView
{
  if (!self->_alertView)
  {
    v3 = objc_alloc_init(BKUIAlertView);
    alertView = self->_alertView;
    self->_alertView = v3;

    if ([(BKUIFingerprintEnrollViewController *)self _useAlertHud])
    {
      [BKUIBundleSettings floatForUserDefaultsKey:@"fpEnrollAlertHudWhite"];
      if (v5 == 0.0)
      {
        v5 = 0.9;
      }

      self->_alertHudWhite = v5;
      [BKUIBundleSettings floatForUserDefaultsKey:@"fpEnrollAlertHudAlpha"];
      if (v6 == 0.0)
      {
        v6 = 0.8;
      }

      self->_alertHudAlpha = v6;
      [BKUIBundleSettings floatForUserDefaultsKey:@"fpEnrollAlertHudCorners"];
      if (v7 == 0.0)
      {
        v7 = 10.0;
      }

      self->_alertHudCorners = v7;
      [BKUIBundleSettings floatForUserDefaultsKey:@"fpEnrollAlertHudBorder"];
      if (v8 == 0.0)
      {
        v8 = 30.0;
      }

      self->_alertHudBorder = v8;
      [BKUIBundleSettings floatForUserDefaultsKey:@"fpEnrollAlertHudTimeout"];
      [(BKUIAlertView *)self->_alertView setAlertHudTimeout:v9];
      [(BKUIAlertView *)self->_alertView alertHudTimeout];
      if (v10 == 0.0)
      {
        [(BKUIAlertView *)self->_alertView setAlertHudTimeout:3.0];
      }

      [BKUIBundleSettings floatForUserDefaultsKey:@"fpEnrollAlertHudMinDisplayTime"];
      [(BKUIAlertView *)self->_alertView setAlertHudMinDisplayTime:v11];
      [(BKUIAlertView *)self->_alertView alertHudMinDisplayTime];
      if (v12 == 0.0)
      {
        [(BKUIAlertView *)self->_alertView setAlertHudMinDisplayTime:1.0];
      }

      v13 = objc_alloc_init(MEMORY[0x277D75D18]);
      alertHudView = self->_alertHudView;
      self->_alertHudView = v13;

      v15 = [MEMORY[0x277D75348] clearColor];
      [(UIView *)self->_alertHudView setBackgroundColor:v15];

      [(UIView *)self->_alertHudView setTranslatesAutoresizingMaskIntoConstraints:0];
      alertHudCorners = self->_alertHudCorners;
      v17 = [(UIView *)self->_alertHudView layer];
      [v17 setCornerRadius:alertHudCorners];

      v18 = [(UIView *)self->_alertHudView layer];
      [v18 setMasksToBounds:1];

      v19 = [(BKUIFingerprintEnrollViewController *)self view];
      [v19 addSubview:self->_alertHudView];

      [(UIView *)self->_alertHudView setHidden:1];
      v20 = objc_alloc_init(MEMORY[0x277D756B8]);
      alertHudText = self->_alertHudText;
      self->_alertHudText = v20;

      [(UILabel *)self->_alertHudText setTranslatesAutoresizingMaskIntoConstraints:0];
      v22 = self->_alertHudText;
      v23 = [(BKUIFingerprintEnrollViewController *)self _subtitleFont];
      [(UILabel *)v22 setFont:v23];

      [(UILabel *)self->_alertHudText setNumberOfLines:0];
      [(UILabel *)self->_alertHudText setTextAlignment:1];
      [(UIView *)self->_alertHudView addSubview:self->_alertHudText];
      [(BKUIAlertView *)self->_alertView setAlertHudView:self->_alertHudView];
      [(BKUIAlertView *)self->_alertView setAlertHudText:self->_alertHudText];
    }

    v24 = self->_alertHudView;
    if (v24)
    {
      v25 = [(UIView *)v24 widthAnchor];
      v26 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
      v27 = [v26 contentView];
      v28 = [v27 widthAnchor];
      v29 = [v25 constraintEqualToAnchor:v28];
      [v29 setActive:1];

      v30 = [(BKUIFingerprintEnrollViewController *)self view];
      v31 = MEMORY[0x277CCAAD0];
      v32 = self->_alertHudView;
      v33 = [(BKUIFingerprintEnrollViewController *)self view];
      v34 = [v31 constraintWithItem:v32 attribute:9 relatedBy:0 toItem:v33 attribute:9 multiplier:1.0 constant:0.0];
      [v30 addConstraint:v34];

      v35 = [(BKUIFingerprintEnrollViewController *)self view];
      v36 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_alertHudView attribute:10 relatedBy:0 toItem:self->_mesaFirstEnrollView attribute:10 multiplier:1.0 constant:0.0];
      [v35 addConstraint:v36];

      v37 = self->_alertHudView;
      v38 = MEMORY[0x277CCAAD0];
      v39 = _NSDictionaryOfVariableBindings(&cfstr_Alerthudtext.isa, self->_alertHudText, 0);
      v40 = [v38 constraintsWithVisualFormat:@"H:|-[_alertHudText]-|" options:0 metrics:0 views:v39];
      [(UIView *)v37 addConstraints:v40];

      v41 = self->_alertHudView;
      v42 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_alertHudText attribute:9 relatedBy:0 toItem:v41 attribute:9 multiplier:1.0 constant:0.0];
      [(UIView *)v41 addConstraint:v42];

      v43 = self->_alertHudView;
      v44 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_alertHudText attribute:10 relatedBy:0 toItem:v43 attribute:10 multiplier:1.0 constant:0.0];
      [(UIView *)v43 addConstraint:v44];

      v46 = [(BKUIFingerprintEnrollViewController *)self view];
      v45 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_alertHudView attribute:8 relatedBy:0 toItem:self->_alertHudText attribute:8 multiplier:1.0 constant:self->_alertHudBorder];
      [v46 addConstraint:v45];
    }
  }
}

- (void)createEnrollUI
{
  v110[8] = *MEMORY[0x277D85DE8];
  v3 = [(BKUIFingerprintEnrollViewController *)self parentViewController];

  if (v3)
  {
    v4 = [(BKUIFingerprintEnrollViewController *)self view];
    [v4 layoutIfNeeded];
  }

  v5 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
  if (v5)
  {
    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];

    if (!v7)
    {
      v8 = [BKUIFingerPrintEnrollTutorialViewController alloc];
      inBuddy = self->_inBuddy;
      v10 = [(BKUIFingerprintEnrollViewController *)self parentViewController];
      v11 = [v10 view];
      [v11 bounds];
      v12 = [(BKUIFingerPrintEnrollTutorialViewController *)v8 initInBuddy:inBuddy displayRect:?];
      [(BKUIFingerprintEnrollViewController *)self setTutorialController:v12];

      v13 = [(BKUIFingerprintEnrollViewController *)self followUPEnrollmentUpSell];
      v14 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
      [v14 setShowFollowUpEnrollmentUpSellContent:v13];

      v15 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
      v16 = [v15 view];
      [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

      v17 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
      [(BKUIFingerprintEnrollViewController *)self addChildViewController:v17];

      v18 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
      v19 = [v18 view];
      v20 = [(BKUIFingerprintEnrollViewController *)self view];
      [v20 bounds];
      [v19 setFrame:?];

      v21 = [(BKUIFingerprintEnrollViewController *)self view];
      v22 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
      v23 = [v22 view];
      [v21 addSubview:v23];

      v24 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
      [v24 didMoveToParentViewController:self];

      v25 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
      [v25 setDelegate:self];

      v26 = objc_alloc_init(BKUICurvesView);
      mesaFirstEnrollView = self->_mesaFirstEnrollView;
      self->_mesaFirstEnrollView = v26;

      [(BKUICurvesView *)self->_mesaFirstEnrollView setTranslatesAutoresizingMaskIntoConstraints:0];
      v28 = objc_alloc_init(BKUICurvesView);
      mesaSecondEnrollView = self->_mesaSecondEnrollView;
      self->_mesaSecondEnrollView = v28;

      [(BKUICurvesView *)self->_mesaSecondEnrollView setTranslatesAutoresizingMaskIntoConstraints:0];
      v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v31 = self->_mesaFirstEnrollView;
      v32 = [MEMORY[0x277D75348] colorWithRed:0.8 green:0.8 blue:0.8 alpha:1.0];
      [(BKUICurvesView *)v31 loadDataFromXML:v30 name:@"drawing" color:v32];

      [(BKUICurvesView *)self->_mesaFirstEnrollView setSpeed:&unk_2853CCBA0];
      v33 = self->_mesaSecondEnrollView;
      v34 = [MEMORY[0x277D75348] colorWithRed:0.8 green:0.8 blue:0.8 alpha:1.0];
      v109 = v30;
      [(BKUICurvesView *)v33 loadDataFromXML:v30 name:@"extended" color:v34];

      [(BKUICurvesView *)self->_mesaSecondEnrollView setSpeed:&unk_2853CCBA0];
      v35 = [BKUIFingerPrintEnrollmentPhaseViewController alloc];
      v36 = self->_inBuddy;
      v37 = [(BKUIFingerprintEnrollViewController *)self _shouldHideUnlockMessage];
      v38 = [(BKUIFingerprintEnrollViewController *)self followUPEnrollmentUpSell];
      v39 = [(BKUIFingerprintEnrollViewController *)self _placeFingerString];
      v40 = [(BKUIFingerPrintEnrollmentPhaseViewController *)v35 initInBuddy:v36 hideUnlockMessage:v37 showFollowUpSell:v38 headerTitle:v39 firstEnrollView:self->_mesaFirstEnrollView secondEnrollView:self->_mesaSecondEnrollView];
      [(BKUIFingerprintEnrollViewController *)self setEnrollmentControlller:v40];

      v41 = [(BKUIFingerprintEnrollViewController *)self followUPEnrollmentUpSell];
      v42 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
      [v42 setShouldShowFollowupFingerEnrollmentUpSell:v41];

      v43 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
      v44 = [v43 view];
      [v44 setTranslatesAutoresizingMaskIntoConstraints:0];

      v45 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
      [(BKUIFingerprintEnrollViewController *)self addChildViewController:v45];

      v46 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
      v47 = [v46 view];
      v48 = [(BKUIFingerprintEnrollViewController *)self view];
      [v48 bounds];
      [v47 setFrame:?];

      v49 = [(BKUIFingerprintEnrollViewController *)self view];
      v50 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
      v51 = [v50 view];
      [v49 addSubview:v51];

      v52 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
      [v52 didMoveToParentViewController:self];

      v53 = [(BKUIFingerprintEnrollViewController *)self view];
      v54 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
      v55 = [v54 view];
      [v53 bringSubviewToFront:v55];

      v56 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
      [v56 setDelegate:self];

      v88 = MEMORY[0x277CCAAD0];
      v108 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
      v107 = [v108 view];
      v105 = [v107 leadingAnchor];
      v106 = [(BKUIFingerprintEnrollViewController *)self view];
      v104 = [v106 leadingAnchor];
      v103 = [v105 constraintEqualToAnchor:v104];
      v110[0] = v103;
      v102 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
      v101 = [v102 view];
      v99 = [v101 trailingAnchor];
      v100 = [(BKUIFingerprintEnrollViewController *)self view];
      v98 = [v100 trailingAnchor];
      v97 = [v99 constraintEqualToAnchor:v98];
      v110[1] = v97;
      v96 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
      v95 = [v96 view];
      v93 = [v95 topAnchor];
      v94 = [(BKUIFingerprintEnrollViewController *)self view];
      v92 = [v94 topAnchor];
      v91 = [v93 constraintEqualToAnchor:v92];
      v110[2] = v91;
      v90 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
      v89 = [v90 view];
      v86 = [v89 bottomAnchor];
      v87 = [(BKUIFingerprintEnrollViewController *)self view];
      v85 = [v87 bottomAnchor];
      v84 = [v86 constraintEqualToAnchor:v85];
      v110[3] = v84;
      v83 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
      v82 = [v83 view];
      v80 = [v82 leadingAnchor];
      v81 = [(BKUIFingerprintEnrollViewController *)self view];
      v79 = [v81 leadingAnchor];
      v78 = [v80 constraintEqualToAnchor:v79];
      v110[4] = v78;
      v77 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
      v76 = [v77 view];
      v74 = [v76 trailingAnchor];
      v75 = [(BKUIFingerprintEnrollViewController *)self view];
      v73 = [v75 trailingAnchor];
      v72 = [v74 constraintEqualToAnchor:v73];
      v110[5] = v72;
      v71 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
      v70 = [v71 view];
      v68 = [v70 topAnchor];
      v69 = [(BKUIFingerprintEnrollViewController *)self view];
      v57 = [v69 topAnchor];
      v58 = [v68 constraintEqualToAnchor:v57];
      v110[6] = v58;
      v59 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
      v60 = [v59 view];
      v61 = [v60 bottomAnchor];
      v62 = [(BKUIFingerprintEnrollViewController *)self view];
      v63 = [v62 bottomAnchor];
      v64 = [v61 constraintEqualToAnchor:v63];
      v110[7] = v64;
      v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v110 count:8];
      [v88 activateConstraints:v65];

      [(BKUIFingerprintEnrollViewController *)self constructAlertView];
      if (self->_alertHudView)
      {
        v66 = [(BKUIFingerprintEnrollViewController *)self view];
        [v66 bringSubviewToFront:self->_alertHudView];
      }
    }

    v67 = *MEMORY[0x277D85DE8];
  }
}

- (void)viewDidLoad
{
  v30 = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = BKUIFingerprintEnrollViewController;
  [(BKUIFingerprintEnrollViewController *)&v26 viewDidLoad];
  v3 = [MEMORY[0x277CF1BC0] availableDevices];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v29 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v23;
    *&v5 = 138412290;
    v20 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        if ([v10 type] == 1)
        {
          v21 = v7;
          v11 = [MEMORY[0x277CF1BA0] deviceWithDescriptor:v10 error:&v21];
          v12 = v21;

          bkDevice = self->_bkDevice;
          self->_bkDevice = v11;

          if (v12)
          {
            bkui_biometric_kit_delegate_log = self->bkui_biometric_kit_delegate_log;
            if (os_log_type_enabled(bkui_biometric_kit_delegate_log, OS_LOG_TYPE_FAULT))
            {
              *buf = v20;
              v28 = v12;
              _os_log_fault_impl(&dword_241B0A000, bkui_biometric_kit_delegate_log, OS_LOG_TYPE_FAULT, "BKDevice failed to create. Error: %@", buf, 0xCu);
            }

            v7 = v12;
          }

          else
          {
            v7 = 0;
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v22 objects:v29 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  +[BKUIBundleSettings setDefaultSettingsValues];
  v15 = [(BiometricKitUIEnrollViewController *)self propertyForKey:@"IN_BUDDY"];
  self->_inBuddy = [v15 BOOLValue];

  if (![BKUIBundleSettings BOOLForUserDefaultsKey:@"hideEnrollTapScreenMessage"])
  {
    v16 = [(BKUIFingerprintEnrollViewController *)self view];
    [(BKUIFingerprintEnrollViewController *)self _setTapRecognizer:v16];
  }

  v17 = [(BKUIFingerprintEnrollViewController *)self navigationItem];
  [v17 setRightBarButtonItem:0];

  self->_mesaEnrollCompactContainer = 0;
  self->_displayingFirstTitle = 1;
  self->_cancelForRestart = 0;
  v18 = [[BioStreamsEventHelper alloc] initWithBKDeviceType:1 inBuddy:self->_inBuddy];
  [(BKUIFingerprintEnrollViewController *)self setBioStreamEventHelper:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)respondToTapGesture:(id)a3
{
  v11 = a3;
  if (!self->_enrollInProgress && !self->_matchInProgress || ![(BKUIAlertView *)self->_alertView isAlertHidden])
  {
    goto LABEL_11;
  }

  if (!self->_enrollmentPhaseTwo)
  {
    if (![(BKUIFingerprintEnrollViewController *)self didTapInValidRectForAlertInstructingWhereToTouch:v11])
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
  v5 = [v4 view];
  if (([v5 isHidden] & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  v6 = [(BKUIFingerprintEnrollViewController *)self didTapInValidRectForAlertInstructingWhereToTouch:v11];

  if (v6)
  {
LABEL_9:
    alertView = self->_alertView;
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"SET_UP_MESA" value:&stru_2853BB280 table:@"BiometricKitUI"];
    v8 = [(BKUIFingerprintEnrollViewController *)self _deviceAwareLocalizedStringForKey:@"TOUCH_AND_COVER"];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"OK" value:&stru_2853BB280 table:@"BiometricKitUI"];
    [(BKUIAlertView *)alertView show:v5 message:v8 cancelButtonTitle:v10 viewController:self];

    goto LABEL_10;
  }

LABEL_11:
}

- (BOOL)didTapInValidRectForAlertInstructingWhereToTouch:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
  v6 = [v5 view];
  v7 = [v6 isHidden];

  v8 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
  v9 = [v8 view];
  v10 = [v9 isHidden];

  if (v7)
  {
    [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
  }

  else
  {
    [(BKUIFingerprintEnrollViewController *)self tutorialController];
  }
  v11 = ;
  v12 = [v11 buttonTray];
  [v12 frame];
  v14 = v13;

  v15 = [(BKUIFingerprintEnrollViewController *)self view];
  [v15 frame];
  v17 = v16 - v14;

  v18 = [v4 view];
  [v4 locationInView:v18];
  v20 = v19;

  v21 = _BKUILoggingFacility();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    v23 = [MEMORY[0x277CCABB0] numberWithBool:v10];
    v24 = [MEMORY[0x277CCABB0] numberWithBool:v20 < v17];
    v27 = 138413314;
    v28 = v22;
    v29 = 2112;
    v30 = v23;
    v31 = 2048;
    v32 = v20;
    v33 = 2048;
    v34 = v17;
    v35 = 2112;
    v36 = v24;
    _os_log_impl(&dword_241B0A000, v21, OS_LOG_TYPE_DEFAULT, "User tapped on screen: tutorialView [Hidden:%@] enrollmentView [Hidden:%@] tappedY [%f] validY [%f] -> tappedInValidRect [%@]", &v27, 0x34u);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v20 < v17;
}

- (CGSize)preferredContentSize
{
  [MEMORY[0x277D37698] preferredContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)didSelectPrimaryButton:(id)a3
{
  v4 = a3;
  v5 = [(BKUIFingerprintEnrollViewController *)self tutorialController];

  if (v5 == v4)
  {

    [(BKUIFingerprintEnrollViewController *)self tutorialContinueButtonPressed:self];
  }

  else
  {
    v6 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
    if ([v6 enrollViewState] == 3)
    {

LABEL_8:
      [(BKUIFingerprintEnrollViewController *)self _cancelEnrollmentAndRestart:1];
      [(BKUIFingerprintEnrollViewController *)self _resetUI];
      [(BKUIFingerprintEnrollViewController *)self restartEnroll];
      self->_cancelForRestart = 1;
      return;
    }

    v7 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
    v8 = [v7 enrollViewState];

    if (v8 == 4)
    {
      goto LABEL_8;
    }

    if (-[BKUIFingerprintEnrollViewController followUPEnrollmentUpSell](self, "followUPEnrollmentUpSell") && (-[BKUIFingerprintEnrollViewController enrollmentControlller](self, "enrollmentControlller"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 shouldShowFollowupFingerEnrollmentUpSell], v9, v10))
    {
      [(BKUIFingerprintEnrollViewController *)self showSecondFingerEnrollmentUpSell];
      v11 = [(BKUIFingerprintEnrollViewController *)self bkIdentity];
      [(BKUIFingerprintEnrollViewController *)self setFirstFollowUpIdentity:v11];
    }

    else
    {

      [(BKUIFingerprintEnrollViewController *)self enrollDoneContinueButtonPressed];
    }
  }
}

- (void)showSecondFingerEnrollmentUpSell
{
  v3 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
  [v3 setIsSecondEnrollment:1];

  v4 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
  [v4 setShouldShowFollowupFingerEnrollmentUpSell:0];

  v5 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
  [v5 setIsSecondEnrollment:1];

  v6 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
  [v6 setEnrollViewState:0];

  [(BKUIFingerprintEnrollViewController *)self _requestNewAuthToken];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__BKUIFingerprintEnrollViewController_showSecondFingerEnrollmentUpSell__block_invoke;
  v7[3] = &unk_278D09978;
  v7[4] = self;
  [(BKUIFingerprintEnrollViewController *)self transitionToTutorialView:1 completion:v7];
}

void __71__BKUIFingerprintEnrollViewController_showSecondFingerEnrollmentUpSell__block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(*(*(a1 + 32) + 1264), OS_LOG_TYPE_DEBUG))
  {
    __71__BKUIFingerprintEnrollViewController_showSecondFingerEnrollmentUpSell__block_invoke_cold_1();
  }

  v2 = *(a1 + 32);
  if ((v2[1136] & 1) != 0 || (v2[1043] & 1) != 0 || v2[1137] == 1)
  {
    v2[1104] = 1;
    [*(a1 + 32) _stopBiometricOperations];
    v2 = *(a1 + 32);
  }

  [v2 setFingerOn:0];
  [*(a1 + 32) setWaitForFingerLift:0];
  [*(a1 + 32) _resetUIWithTransitionToTutorial:0];
  [*(a1 + 32) _startEnrollOperation];
  v3 = [*(a1 + 32) enrollmentControlller];
  [v3 setEnrollViewState:0];
}

- (void)didSelectSecondaryButton:(id)a3
{
  if ([(BKUIFingerprintEnrollViewController *)self followUPEnrollmentUpSell])
  {
    v4 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
    if ([v4 showFollowUpEnrollmentUpSellContent])
    {
      v5 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
      v6 = [v5 isSecondEnrollment];

      if (v6)
      {

        [(BKUIFingerprintEnrollViewController *)self enrollDoneContinueButtonPressed];
        return;
      }
    }

    else
    {
    }
  }

  [(BKUIFingerprintEnrollViewController *)self tutorialSkipButtonPressed:self];
}

- (void)applicationWillResignActive:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(self->bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEBUG))
  {
    [BKUIFingerprintEnrollViewController applicationWillResignActive:];
  }

  if (self->_showLiftYourFingerMsg)
  {
    self->_showLiftYourFingerMsg = 0;
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__showLiftYourFinger object:0];
  }

  [(BKUIFingerprintEnrollViewController *)self _stopBiometricOperations];
  if (self->_bkIdentity)
  {
    v5 = [(BKUIFingerprintEnrollViewController *)self bkDevice];
    bkIdentity = self->_bkIdentity;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __67__BKUIFingerprintEnrollViewController_applicationWillResignActive___block_invoke;
    v11[3] = &unk_278D09F60;
    v11[4] = self;
    [v5 removeIdentity:bkIdentity reply:v11];
  }

  v7 = [(BKUIFingerprintEnrollViewController *)self firstFollowUpIdentity];

  if (v7)
  {
    v8 = [(BKUIFingerprintEnrollViewController *)self bkDevice];
    v9 = [(BKUIFingerprintEnrollViewController *)self firstFollowUpIdentity];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__BKUIFingerprintEnrollViewController_applicationWillResignActive___block_invoke_100;
    v10[3] = &unk_278D09F60;
    v10[4] = self;
    [v8 removeIdentity:v9 reply:v10];
  }
}

void __67__BKUIFingerprintEnrollViewController_applicationWillResignActive___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = *(*(a1 + 32) + 1264);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __67__BKUIFingerprintEnrollViewController_applicationWillResignActive___block_invoke_cold_1(v6);
    }
  }
}

void __67__BKUIFingerprintEnrollViewController_applicationWillResignActive___block_invoke_100(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = *(*(a1 + 32) + 1264);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __67__BKUIFingerprintEnrollViewController_applicationWillResignActive___block_invoke_cold_1(v6);
    }
  }
}

- (void)_stopBiometricOperations
{
  if (os_log_type_enabled(self->bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEBUG))
  {
    [BKUIFingerprintEnrollViewController _stopBiometricOperations];
  }

  if (self->_enrollInProgress || self->_matchInProgress || self->_waitInProgress)
  {
    [(BKUIFingerprintEnrollViewController *)self _cancelActiveEnrollOperation];
    if (self->_waitInProgress)
    {
      self->_waitInProgress = 0;
      if (!self->_didDisappear)
      {
        [(BKUIFingerprintEnrollViewController *)self _sendEnrollResult:4 identity:0];
      }
    }

    else
    {
      v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v4 = [v3 localizedStringForKey:@"CANCELED" value:&stru_2853BB280 table:@"BiometricKitUI"];
      [(BKUIFingerprintEnrollViewController *)self _failEnrollment:3 withMessage:v4];
    }
  }
}

- (void)enrollProgress:(id)a3
{
  v4 = a3;
  bkui_biometric_kit_delegate_log = self->bkui_biometric_kit_delegate_log;
  if (os_log_type_enabled(bkui_biometric_kit_delegate_log, OS_LOG_TYPE_DEBUG))
  {
    [(BKUIFingerprintEnrollViewController *)bkui_biometric_kit_delegate_log enrollProgress:v4];
  }

  if (self->_didDisappear || [v4 progress] > 254)
  {
    goto LABEL_20;
  }

  if ([v4 message] == 1)
  {
    v6 = [v4 messageDetails];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CF1C20]];
    if ([v7 integerValue])
    {
      v8 = [BKUIBundleSettings BOOLForUserDefaultsKey:@"hideEnrollNewComponentMessage"];

      if (!v8)
      {
        v9 = self->_movedFingerCount + 1;
        self->_movedFingerCount = v9;
        if (v9 == self->_movedFingerThr)
        {
          self->_movedFingerCount = 0;
          p_movedFingerAlertShown = &self->_movedFingerAlertShown;
          if (!self->_movedFingerAlertShown)
          {
            p_alertView = &self->_alertView;
            if ([(BKUIAlertView *)self->_alertView isAlertHidden])
            {
              v12 = @"DONT_MOVE_MUCH";
              v13 = @"FINGER_MOVED";
LABEL_18:
              *p_movedFingerAlertShown = 1;
              v17 = *p_alertView;
              v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v15 = [v14 localizedStringForKey:v13 value:&stru_2853BB280 table:@"BiometricKitUI"];
              v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v19 = [v18 localizedStringForKey:v12 value:&stru_2853BB280 table:@"BiometricKitUI"];
              v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v21 = [v20 localizedStringForKey:@"OK" value:&stru_2853BB280 table:@"BiometricKitUI"];
              [(BKUIAlertView *)v17 show:v15 message:v19 cancelButtonTitle:v21 viewController:self];

              goto LABEL_19;
            }
          }
        }

        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  self->_movedFingerCount = 0;
  v14 = [v4 messageDetails];
  v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277CF1C28]];
  if ([v15 integerValue] != 1)
  {
LABEL_19:

    goto LABEL_20;
  }

  v16 = [BKUIBundleSettings BOOLForUserDefaultsKey:@"hideEnrollStillFingerMessage"];

  if (!v16)
  {
    p_movedFingerAlertShown = &self->_stillFingerAlertShown;
    if (!self->_stillFingerAlertShown)
    {
      p_alertView = &self->_alertView;
      if ([(BKUIAlertView *)self->_alertView isAlertHidden])
      {
        v12 = @"MOVE_FINGER";
        v13 = @"MOVE_FINGER_TITLE";
        goto LABEL_18;
      }
    }
  }

LABEL_20:
  [(BKUIFingerprintEnrollViewController *)self _enrollHapticFeedback:v4];
}

- (void)_enrollHapticFeedback:(id)a3
{
  v4 = a3;
  if (!+[BKUIBundleSettings isFpEnrollHapticFeedbackDisabled])
  {
    v3 = [v4 message];
    if (v3 <= 3)
    {
      [BKUIUtils vibrateForBiometricEvent:(0xEu >> (v3 & 0xF)) & 1];
    }
  }
}

- (void)_showDirtOnSensorAlertView
{
  if (!self->_didDisappear && [(BKUIAlertView *)self->_alertView isAlertHidden])
  {
    alertView = self->_alertView;
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v8 localizedStringForKey:@"DIRT_ON_SENSOR_TITLE" value:&stru_2853BB280 table:@"BiometricKitUI"];
    v5 = [(BKUIFingerprintEnrollViewController *)self _deviceAwareLocalizedStringForKey:@"DIRT_ON_SENSOR"];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"OK" value:&stru_2853BB280 table:@"BiometricKitUI"];
    [(BKUIAlertView *)alertView show:v4 message:v5 cancelButtonTitle:v7 viewController:self];
  }
}

- (void)_showSmallCoverageAlertView
{
  if (!self->_didDisappear && [(BKUIAlertView *)self->_alertView isAlertHidden])
  {
    alertView = self->_alertView;
    v7 = [(BKUIFingerprintEnrollViewController *)self _deviceAwareLocalizedStringForKey:@"COVER_SENSOR_TITLE"];
    v4 = [(BKUIFingerprintEnrollViewController *)self _deviceAwareLocalizedStringForKey:@"COVER_SENSOR"];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"OK" value:&stru_2853BB280 table:@"BiometricKitUI"];
    [(BKUIAlertView *)alertView show:v7 message:v4 cancelButtonTitle:v6 viewController:self];
  }
}

- (void)handleProgress:(unsigned int)a3
{
  v4 = (a3 - 100) / 255.0;
  if (v4 == 1.0)
  {
    self->_currentProgress = 1.0;
  }

  else
  {
    v5 = (1.0 - self->_currentProgress) / (v4 * -8.0 + 10.0) + self->_currentProgress;
    self->_currentProgress = v5;
  }

  v7 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
  *&v6 = self->_currentProgress;
  [v7 setEnrollProgress:self->_mesaFirstEnrollView enrollView:v6];
}

- (void)_cancelEnrollmentAndRestart:(BOOL)a3
{
  bkui_fingerprint_enroll_view_controller_log = self->bkui_fingerprint_enroll_view_controller_log;
  if (os_log_type_enabled(bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEBUG))
  {
    [(BKUIFingerprintEnrollViewController *)a3 _cancelEnrollmentAndRestart:?];
  }

  [(BKUIFingerprintEnrollViewController *)self _stopMessageTimer];
  if (self->_enrollInProgress)
  {
    [(BKEnrollTouchIDOperation *)self->_bkEnroll cancel];
    self->_enrollInProgress = 0;
  }

  self->_restartRequest = a3;
}

- (void)_restartEnrollment
{
  if (os_log_type_enabled(self->bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEBUG))
  {
    [BKUIFingerprintEnrollViewController _restartEnrollment];
  }

  if (self->_enrollInProgress || self->_matchInProgress || self->_waitInProgress)
  {
    self->_cancelForRestart = 1;
    [(BKUIFingerprintEnrollViewController *)self _stopBiometricOperations];
  }

  if ([(BKUIFingerprintEnrollViewController *)self fingerOn])
  {
    [(BKUIFingerprintEnrollViewController *)self setWaitForFingerLift:1];
  }

  [(BKUIFingerprintEnrollViewController *)self _resetUI];
  [(BKUIFingerprintEnrollViewController *)self _startEnrollOperation];
}

- (void)_setTapRecognizer:(id)a3
{
  v4 = MEMORY[0x277D75B80];
  v5 = a3;
  v6 = [[v4 alloc] initWithTarget:self action:sel_respondToTapGesture_];
  [v6 setCancelsTouchesInView:0];
  [v5 addGestureRecognizer:v6];
}

- (void)enrollDoneContinueButtonPressed
{
  bkui_fingerprint_enroll_view_controller_log = self->bkui_fingerprint_enroll_view_controller_log;
  if (os_log_type_enabled(bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_241B0A000, bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEFAULT, "BiometricKitUI: Continue Button Pressed", v4, 2u);
  }

  if (self->_waitInProgress)
  {
    [(BKUIFingerprintEnrollViewController *)self _cancelEnrollmentMatch];
  }

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_restartEnroll object:0];
  [(BKUIFingerprintEnrollViewController *)self _sendEnrollResult:4 identity:0];
}

- (void)skipEnrollmentPressed:(id)a3
{
  bkui_fingerprint_enroll_view_controller_log = self->bkui_fingerprint_enroll_view_controller_log;
  if (os_log_type_enabled(bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_241B0A000, bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEFAULT, "BiometricKitUI: Skip enrollment pressed", v5, 2u);
  }

  [(BKUIFingerprintEnrollViewController *)self _skipEnrollment];
}

- (void)_skipEnrollment
{
  [(BKUIFingerprintEnrollViewController *)self _sendEnrollResult:3 identity:self->_bkIdentity];
  v3 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
  [v3 removeTouchIndicator];
}

- (void)restartEnrollPressed:(id)a3
{
  [(BKUIFingerprintEnrollViewController *)self _sendEnrollResult:9 identity:self->_bkIdentity];

  [(BKUIFingerprintEnrollViewController *)self restartEnroll];
}

- (void)_cancelEnrollmentMatch
{
  if (os_log_type_enabled(self->bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEBUG))
  {
    [BKUIFingerprintEnrollViewController _cancelEnrollmentMatch];
  }

  [(BKUIFingerprintEnrollViewController *)self _stopMessageTimer];
  if (self->_matchInProgress || self->_waitInProgress)
  {
    bkExtendEnroll = self->_bkExtendEnroll;
    if (bkExtendEnroll)
    {
      [(BKExtendEnrollTouchIDOperation *)bkExtendEnroll cancel];
    }

    self->_matchInProgress = 0;
    self->_waitInProgress = 0;
  }
}

- (void)homeButtonPressed
{
  v32 = *MEMORY[0x277D85DE8];
  bkui_fingerprint_enroll_view_controller_log = self->bkui_fingerprint_enroll_view_controller_log;
  if (os_log_type_enabled(bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEFAULT))
  {
    didDisappear = self->_didDisappear;
    alertView = self->_alertView;
    v6 = bkui_fingerprint_enroll_view_controller_log;
    LODWORD(alertView) = [(BKUIAlertView *)alertView isAlertHidden];
    v7 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
    v8 = [v7 view];
    v27[0] = 67109632;
    v27[1] = didDisappear;
    v28 = 1024;
    v29 = alertView;
    v30 = 1024;
    v31 = [v8 isHidden];
    _os_log_impl(&dword_241B0A000, v6, OS_LOG_TYPE_DEFAULT, "BiometricKitUI: WillDisappear %d, alerthidden %d, tutorialhidden %d", v27, 0x14u);
  }

  if (self->_inBuddy && [(BKUIFingerprintEnrollViewController *)self _topTouchButtonIpad])
  {
    v9 = [(BKUIFingerprintEnrollViewController *)self menuAction];

    if (v9)
    {
      v10 = [(BKUIFingerprintEnrollViewController *)self menuAction];
      v10[2]();
LABEL_13:
    }
  }

  else if (!self->_didDisappear)
  {
    if ([(BKUIAlertView *)self->_alertView isAlertHidden])
    {
      v11 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
      v12 = [v11 view];
      v13 = [v12 isHidden];

      if (v13)
      {
        v14 = MGGetBoolAnswer();
        v15 = self->_alertView;
        v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v10 = v16;
        if (v14)
        {
          v17 = [v16 localizedStringForKey:@"TOUCH_LIGHT" value:&stru_2853BB280 table:@"BiometricKitUI-SSHB"];
          v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v19 = [v18 localizedStringForKey:@"LESS_FORCE" value:&stru_2853BB280 table:@"BiometricKitUI-SSHB"];
          v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v21 = [v20 localizedStringForKey:@"CONTINUE" value:&stru_2853BB280 table:@"BiometricKitUI"];
          [(BKUIAlertView *)v15 show:v17 message:v19 cancelButtonTitle:v21 viewController:self];
        }

        else
        {
          v22 = [v16 localizedStringForKey:@"YOU_CLICKED" value:&stru_2853BB280 table:@"BiometricKitUI"];
          v23 = [(BKUIFingerprintEnrollViewController *)self _deviceAwareLocalizedStringForKey:@"REST_NOT_CLICK"];
          v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v25 = [v24 localizedStringForKey:@"CONTINUE" value:&stru_2853BB280 table:@"BiometricKitUI"];
          [(BKUIAlertView *)v15 show:v22 message:v23 cancelButtonTitle:v25 viewController:self];
        }

        goto LABEL_13;
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_cancelActiveEnrollOperation
{
  if (os_log_type_enabled(self->bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEBUG))
  {
    [BKUIFingerprintEnrollViewController _cancelActiveEnrollOperation];
  }

  [(BKUIFingerprintEnrollViewController *)self _stopMessageTimer];
  [(BKUIAlertView *)self->_alertView hideAnimated:1];
  if ([(BKEnrollTouchIDOperation *)self->_bkEnroll state]== 2)
  {
    [(BKEnrollTouchIDOperation *)self->_bkEnroll cancel];
  }

  if ([(BKExtendEnrollTouchIDOperation *)self->_bkExtendEnroll state]== 2)
  {
    [(BKExtendEnrollTouchIDOperation *)self->_bkExtendEnroll cancel];
  }

  self->_enrollInProgress = 0;
  self->_matchInProgress = 0;
}

- (void)restartEnroll
{
  bkui_fingerprint_enroll_view_controller_log = self->bkui_fingerprint_enroll_view_controller_log;
  if (os_log_type_enabled(bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_241B0A000, bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEFAULT, "BiometricKitUI: Restarting enroll", v4, 2u);
  }

  [(BKUIFingerprintEnrollViewController *)self _restartEnrollment];
  if (self->_enrollInProgress)
  {
    [(BKUIFingerprintEnrollViewController *)self _startInitialTutorialAnimated:1];
  }
}

- (void)cancelEnroll
{
  bkui_fingerprint_enroll_view_controller_log = self->bkui_fingerprint_enroll_view_controller_log;
  if (os_log_type_enabled(bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_241B0A000, bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEFAULT, "BiometricKitUI: Canceling enroll", v4, 2u);
  }

  [(BKUIFingerprintEnrollViewController *)self _cancelActiveEnrollOperation];
}

- (void)_showLiftYourFinger
{
  if (self->_showLiftYourFingerMsg)
  {
    self->_showLiftYourFingerMsg = 0;
    v4 = [(BKUIFingerprintEnrollViewController *)self _liftFingerString];
    [(BKUIFingerprintEnrollViewController *)self _animateHeaderTitle:v4];
  }
}

- (id)_subtitleFont
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  if ([v3 userInterfaceIdiom] == 1)
  {
    v4 = MEMORY[0x277D74300];
    if (self->_inBuddy)
    {
      v5 = 20.0;
      goto LABEL_6;
    }
  }

  else
  {
    v4 = MEMORY[0x277D74300];
  }

  v5 = 18.0;
LABEL_6:
  v6 = [v4 systemFontOfSize:v5];

  return v6;
}

- (void)_showSkipEnrollmentAlert
{
  self->_cancelForRestart = 1;
  [(BKUIFingerprintEnrollViewController *)self _cancelEnrollmentAndRestart:0];
  v19 = MGCopyAnswer();
  v3 = MEMORY[0x277D75110];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"SKIP_ENROLLMENT_TITLE" value:&stru_2853BB280 table:@"BiometricKitUI"];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v19 uppercaseString];
  v8 = [@"SKIP_ENROLLMENT_DESCRIPTION_" stringByAppendingString:v7];
  v9 = [v6 localizedStringForKey:v8 value:&stru_2853BB280 table:@"BiometricKitUI"];
  v10 = [v3 alertControllerWithTitle:v5 message:v9 preferredStyle:1];

  v11 = MEMORY[0x277D750F8];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"DONT_USE" value:&stru_2853BB280 table:@"BiometricKitUI"];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __63__BKUIFingerprintEnrollViewController__showSkipEnrollmentAlert__block_invoke;
  v21[3] = &unk_278D09AB0;
  v21[4] = self;
  v14 = [v11 actionWithTitle:v13 style:0 handler:v21];

  v15 = MEMORY[0x277D750F8];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"SET_UP_TOUCH_ID" value:&stru_2853BB280 table:@"BiometricKitUI"];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __63__BKUIFingerprintEnrollViewController__showSkipEnrollmentAlert__block_invoke_2;
  v20[3] = &unk_278D09AB0;
  v20[4] = self;
  v18 = [v15 actionWithTitle:v17 style:0 handler:v20];

  [v10 addAction:v14];
  [v10 addAction:v18];
  [v10 setPreferredAction:v18];
  [(BKUIFingerprintEnrollViewController *)self presentViewController:v10 animated:1 completion:0];
}

void __63__BKUIFingerprintEnrollViewController__showSkipEnrollmentAlert__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _requestNewAuthToken];
  [*(a1 + 32) _startEnrollOperation];
  v2 = [*(a1 + 32) enrollmentControlller];
  [v2 setEnrollViewState:0];
}

- (void)_requestNewAuthToken
{
  v3 = [(BiometricKitUIEnrollViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(BiometricKitUIEnrollViewController *)self delegate];
    [v5 generateAuthToken];
  }
}

- (void)_startEnrollOperation
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3(&dword_241B0A000, v0, v1, "BiometricKitUI: BiometricKit enroll failed. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_startExtendEnrollOperation
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3(&dword_241B0A000, v0, v1, "BiometricKitUI: BiometricKit extend enroll failed. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)enrollOperation:(id)a3 progressedWithTouchIDInfo:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  bkui_biometric_kit_delegate_log = self->bkui_biometric_kit_delegate_log;
  if (os_log_type_enabled(bkui_biometric_kit_delegate_log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = bkui_biometric_kit_delegate_log;
    *buf = 134218240;
    v28 = [v7 progress];
    v29 = 1024;
    v30 = [v7 message];
    _os_log_impl(&dword_241B0A000, v9, OS_LOG_TYPE_DEFAULT, "BiometricKitUI: Enroll progress: %li and message: %u", buf, 0x12u);
  }

  if (self->_didDisappear || [v7 progress] > 254)
  {
    goto LABEL_20;
  }

  if ([v7 message] == 1)
  {
    v10 = [v7 messageDetails];
    v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277CF1C20]];
    if ([v11 integerValue])
    {
      v12 = [BKUIBundleSettings BOOLForUserDefaultsKey:@"hideEnrollNewComponentMessage"];

      if (!v12)
      {
        v13 = self->_movedFingerCount + 1;
        self->_movedFingerCount = v13;
        if (v13 == self->_movedFingerThr)
        {
          self->_movedFingerCount = 0;
          p_movedFingerAlertShown = &self->_movedFingerAlertShown;
          if (!self->_movedFingerAlertShown)
          {
            p_alertView = &self->_alertView;
            if ([(BKUIAlertView *)self->_alertView isAlertHidden])
            {
              v16 = @"DONT_MOVE_MUCH";
              v17 = @"FINGER_MOVED";
LABEL_18:
              *p_movedFingerAlertShown = 1;
              v26 = *p_alertView;
              v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v19 = [v18 localizedStringForKey:v17 value:&stru_2853BB280 table:@"BiometricKitUI"];
              v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v22 = [v21 localizedStringForKey:v16 value:&stru_2853BB280 table:@"BiometricKitUI"];
              v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v24 = [v23 localizedStringForKey:@"OK" value:&stru_2853BB280 table:@"BiometricKitUI"];
              [(BKUIAlertView *)v26 show:v19 message:v22 cancelButtonTitle:v24 viewController:self];

              goto LABEL_19;
            }
          }
        }

        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  self->_movedFingerCount = 0;
  v18 = [v7 messageDetails];
  v19 = [v18 objectForKeyedSubscript:*MEMORY[0x277CF1C28]];
  if ([v19 integerValue] != 1)
  {
LABEL_19:

    goto LABEL_20;
  }

  v20 = [BKUIBundleSettings BOOLForUserDefaultsKey:@"hideEnrollStillFingerMessage"];

  if (!v20)
  {
    p_movedFingerAlertShown = &self->_stillFingerAlertShown;
    if (!self->_stillFingerAlertShown)
    {
      p_alertView = &self->_alertView;
      if ([(BKUIAlertView *)self->_alertView isAlertHidden])
      {
        v16 = @"MOVE_FINGER";
        v17 = @"MOVE_FINGER_TITLE";
        goto LABEL_18;
      }
    }
  }

LABEL_20:
  [(BKUIFingerprintEnrollViewController *)self _enrollHapticFeedback:v7];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)enrollOperation:(id)a3 percentCompleted:(int64_t)a4
{
  self->_bkProgress = a4;
  v6 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
  v5 = self->_bkProgress / 100.0;
  *&v5 = v5;
  [v6 setEnrollProgress:self->_mesaFirstEnrollView enrollView:v5];
}

- (void)enrollOperation:(id)a3 finishedWithIdentity:(id)a4
{
  v5 = a4;
  self->_enrollInProgress = 0;
  [(BKUIFingerprintEnrollViewController *)self _cancelEnrollmentAndRestart:0];
  v6 = [MEMORY[0x277CBEAA8] date];
  enrollmentEndTime = self->_enrollmentEndTime;
  self->_enrollmentEndTime = v6;

  self->_enrollmentPhaseTwo = 1;
  self->_currentProgress = 0.0;
  bkIdentity = self->_bkIdentity;
  self->_bkIdentity = v5;
  v9 = v5;

  [(BKUIAlertView *)self->_alertView hideAnimated:1];
  v10 = [(BKUIFingerprintEnrollViewController *)self bioStreamEventHelper];
  [v10 sendSuccessfulEnrollEvent];

  [(BKUIFingerprintEnrollViewController *)self _sendEnrollResult:1 identity:v9];
  [(BKUIFingerprintEnrollViewController *)self _startTutorial:1];
  v11 = [(BKUIFingerprintEnrollViewController *)self bkDevice];

  if (v11)
  {

    [(BKUIFingerprintEnrollViewController *)self _startExtendEnrollOperation];
  }
}

- (void)enrollOperation:(id)a3 failedWithReason:(int64_t)a4
{
  v6 = a3;
  if (a4 != 1)
  {
    if (a4 == 2)
    {
      v13 = v6;
      [(BKUIFingerprintEnrollViewController *)self _cancelEnrollmentAndRestart:0];
      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = v7;
      v9 = @"FAILED";
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_8;
      }

      v13 = v6;
      [(BKUIFingerprintEnrollViewController *)self _cancelEnrollmentAndRestart:0];
      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = v7;
      v9 = @"TIMEOUT";
    }

    v10 = [v7 localizedStringForKey:v9 value:&stru_2853BB280 table:@"BiometricKitUI"];
    v11 = self;
    v12 = 2;
    goto LABEL_7;
  }

  if (!self->_cancelForRestart)
  {
    v13 = v6;
    [(BKUIFingerprintEnrollViewController *)self _cancelEnrollmentAndRestart:0];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v8 localizedStringForKey:@"CANCELED" value:&stru_2853BB280 table:@"BiometricKitUI"];
    v11 = self;
    v12 = 3;
LABEL_7:
    [(BKUIFingerprintEnrollViewController *)v11 _failEnrollment:v12 withMessage:v10];

    v6 = v13;
    goto LABEL_8;
  }

  self->_cancelForRestart = 0;
LABEL_8:
}

- (void)fingerprintCaptureOperation:(id)a3 encounteredCaptureError:(int64_t)a4
{
  v6 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
  v7 = [v6 view];
  v8 = [v7 isHidden];

  if (!v8)
  {
    return;
  }

  if (os_log_type_enabled(self->bkui_biometric_kit_delegate_log, OS_LOG_TYPE_ERROR))
  {
    [BKUIFingerprintEnrollViewController fingerprintCaptureOperation:encounteredCaptureError:];
  }

  if (a4 > 2)
  {
    if ((a4 - 3) >= 4)
    {
      if (a4 == 7)
      {
        [(BKUIFingerprintEnrollViewController *)self _showDirtOnSensorAlertView];
      }

      return;
    }

    goto LABEL_6;
  }

  if (a4 == 1)
  {
LABEL_6:
    if (self->_enrollmentPhaseTwo)
    {
      v9 = 1168;
LABEL_8:
      [*(&self->super.super.super.super.super.isa + v9) estimateFailed];
      return;
    }

    [(BKUICurvesView *)self->_mesaFirstEnrollView estimateFailed];
    v12.receiver = self;
    v12.super_class = BKUIFingerprintEnrollViewController;
    [(BKUIBundleEnrollViewController *)&v12 statusMessage:78];
    return;
  }

  if (a4 == 2)
  {
    if (!self->_smallCoverageMessage)
    {
      self->_smallCoverageMessage = 1;
      self->_smallCoverageInRowCount = 1;
      v11 = self->_smallCoverageCount + 1;
      self->_smallCoverageCount = v11;
      if (v11 == self->_maxSmallCoverageCount)
      {
        self->_smallCoverageCount = 0;
        [(BKUIFingerprintEnrollViewController *)self _showSmallCoverageAlertView];
      }

      v9 = 1160;
      goto LABEL_8;
    }

    v10 = self->_smallCoverageInRowCount + 1;
    self->_smallCoverageInRowCount = v10;
    if (v10 == 5)
    {
      self->_smallCoverageInRowCount = 0;
      self->_smallCoverageCount = 0;
      [(BKUIFingerprintEnrollViewController *)self _showSmallCoverageAlertView];
    }
  }
}

- (void)extendEnroll:(id)a3 hasUpdated:(BOOL)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
  v7 = [v6 view];
  v8 = [v7 isHidden];

  if (v8)
  {
    [(BKUIFingerprintEnrollViewController *)self _hapticFeedback:1];
    self->_currentProgress = self->_currentProgress + (1.0 / (self->_mesaEnrollSecondPhaseSteps << !a4));
    bkui_biometric_kit_delegate_log = self->bkui_biometric_kit_delegate_log;
    if (os_log_type_enabled(bkui_biometric_kit_delegate_log, OS_LOG_TYPE_INFO))
    {
      currentProgress = self->_currentProgress;
      v15 = 134217984;
      v16 = currentProgress;
      _os_log_impl(&dword_241B0A000, bkui_biometric_kit_delegate_log, OS_LOG_TYPE_INFO, "BiometricKitUI: Extende enroll result current progress: %f", &v15, 0xCu);
    }

    v11 = self->_currentProgress;
    if (v11 > 1.0)
    {
      v11 = 1.0;
    }

    self->_currentProgress = v11;
    v12 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
    *&v13 = self->_currentProgress;
    [v12 setEnrollProgress:self->_mesaSecondEnrollView enrollView:v13];

    if (self->_currentProgress == 1.0)
    {
      [(BKUIFingerprintEnrollViewController *)self _cancelEnrollmentMatch];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)operation:(id)a3 finishedWithReason:(int64_t)a4
{
  if (!self->_enrollmentPhaseTwo)
  {
    return;
  }

  self->_showLiftYourFingerMsg = 0;
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__showLiftYourFinger object:0];
  if ((a4 - 3) < 2)
  {
    [(BKUIFingerprintEnrollViewController *)self _cancelEnrollmentMatch];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v9 localizedStringForKey:@"FAILED" value:&stru_2853BB280 table:@"BiometricKitUI"];
    v7 = self;
    v8 = 2;
LABEL_4:
    [(BKUIFingerprintEnrollViewController *)v7 _failEnrollment:v8 withMessage:v6];

    return;
  }

  if (a4 != 2)
  {
    return;
  }

  if (self->_currentProgress < 1.0)
  {
    if (self->_cancelForRestart)
    {
      self->_cancelForRestart = 0;
      return;
    }

    [(BKUIFingerprintEnrollViewController *)self _cancelEnrollmentMatch];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v9 localizedStringForKey:@"CANCELED" value:&stru_2853BB280 table:@"BiometricKitUI"];
    v7 = self;
    v8 = 3;
    goto LABEL_4;
  }

  [(BKUIFingerprintEnrollViewController *)self _finishEnrollmentPhaseTwo];
}

- (void)operation:(id)a3 stateChanged:(int64_t)a4
{
  if (a4 == 5)
  {
    [(BKUIFingerprintEnrollViewController *)self _showLiftYourFingerWithDelay];
  }

  else if (a4 == 2 && self->_cancelForRestart)
  {
    self->_cancelForRestart = 0;
  }
}

- (void)operation:(id)a3 presenceStateChanged:(BOOL)a4
{
  v4 = a4;
  +[BKUIUtils resetScreenDimming];
  if (v4)
  {
    if (self->_enrollmentPhaseTwo)
    {
      v6 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
      v7 = [v6 view];
      v8 = [v7 isHidden];

      if (v8)
      {
        mesaSecondEnrollView = self->_mesaSecondEnrollView;
        *&v9 = 1.0 / self->_mesaEnrollSecondPhaseSteps;
LABEL_15:

        [(BKUICurvesView *)mesaSecondEnrollView estimateProgress:v9];
        return;
      }

      if (self->_enrollmentPhaseTwo)
      {
        return;
      }
    }

    if (self->_cancelForRestart)
    {
      return;
    }

    [(BKUIFingerprintEnrollViewController *)self _stopTutorialTransitionToEnrollView];
    mesaSecondEnrollView = self->_mesaFirstEnrollView;
    LODWORD(v9) = 1039516303;
    goto LABEL_15;
  }

  if (self->_showLiftYourFingerMsg)
  {
    self->_showLiftYourFingerMsg = 0;
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__showLiftYourFinger object:0];
  }

  if (self->_enrollmentPhaseTwo)
  {
    v11 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
    v12 = [v11 view];
    v13 = [v12 isHidden];

    if (v13)
    {

      [(BKUIFingerprintEnrollViewController *)self initPromptMessage];
      return;
    }

    if (self->_enrollmentPhaseTwo)
    {
      return;
    }
  }

  if (self->_smallCoverageMessage)
  {
    self->_smallCoverageMessage = 0;
    self->_smallCoverageInRowCount = 0;
  }

  [(BKUIFingerprintEnrollViewController *)self initPromptMessage];
  v14.receiver = self;
  v14.super_class = BKUIFingerprintEnrollViewController;
  [(BKUIBundleEnrollViewController *)&v14 afterStatusMessage:64];
}

- (void)_resetUIWithTransitionToTutorial:(BOOL)a3
{
  v3 = a3;
  if (os_log_type_enabled(self->bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEBUG))
  {
    [BKUIFingerprintEnrollViewController _resetUIWithTransitionToTutorial:];
  }

  self->_currentProgress = 0.0;
  self->_showLiftYourFingerMsg = 0;
  self->_smallCoverageMessage = 0;
  self->_smallCoverageCount = 0;
  self->_smallCoverageInRowCount = 0;
  [BKUIBundleSettings floatForUserDefaultsKey:@"fpEnrollMsgTransLength"];
  self->_msgTransLength = v5;
  if (v5 <= 0.0)
  {
    [MEMORY[0x277D75CE0] defaultDurationForTransition:1];
    self->_msgTransLength = v6;
  }

  [BKUIBundleSettings floatForUserDefaultsKey:@"fpEnrollMsgShowTimeout"];
  v8 = v7;
  v9 = v7 > 0.0;
  v10 = 0.5;
  if (v9)
  {
    v10 = v8;
  }

  self->_msgShowTimeout = v10;
  v11 = [BKUIBundleSettings integerForUserDefaultsKey:@"fpEnrollIgnoreTouchOffset"];
  v12 = 40;
  if (v11)
  {
    v12 = v11;
  }

  self->_ignoreTouchOffset = v12;
  v13 = [BKUIBundleSettings integerForUserDefaultsKey:@"fpEnrollSecondPhaseSteps"];
  v14 = 6;
  if (v13)
  {
    v14 = v13;
  }

  self->_mesaEnrollSecondPhaseSteps = v14;
  [BKUIBundleSettings floatForUserDefaultsKey:@"fpEnrollLiftFingerMsgDelay"];
  v16 = v15;
  v17 = v15 == 0.0;
  v18 = 1.5;
  if (!v17)
  {
    v18 = v16;
  }

  self->_liftFingerMsgDelay = v18;
  v19 = [BKUIBundleSettings integerForUserDefaultsKey:@"fpMaxSmallCoverageCount"];
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = 3;
  }

  self->_maxSmallCoverageCount = v20;
  v21 = [BKUIBundleSettings integerForUserDefaultsKey:@"fpMovedFingerCount"];
  self->_movedFingerThr = v21;
  if (!v21)
  {
    if (MGGetSInt32Answer() == 2)
    {
      v22 = 5;
    }

    else
    {
      v22 = 3;
    }

    self->_movedFingerThr = v22;
  }

  v23 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
  [v23 setEnrollProgress:self->_mesaSecondEnrollView enrollView:0.0];

  v24 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
  [v24 setEnrollProgress:self->_mesaFirstEnrollView enrollView:0.0];

  v25 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
  [v25 setEnrollViewState:0];

  v26 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
  [v26 setEnrollViewState:0];

  v27 = [(BKUIFingerprintEnrollViewController *)self view];
  v28 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
  v29 = [v28 view];
  [v27 bringSubviewToFront:v29];

  v30 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
  v31 = [v30 view];
  [v31 setHidden:1];

  v32 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
  v33 = [v32 view];
  [v33 setNeedsLayout];

  v34 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
  v35 = [v34 view];
  [v35 setHidden:0];

  v36 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
  v37 = [v36 view];
  [v37 setNeedsLayout];

  if (v3)
  {
    [(BKUIFingerprintEnrollViewController *)self _startInitialTutorialAnimated:0];
  }

  [(BKUIFingerprintEnrollViewController *)self setTitle:&stru_2853BB280];
}

- (void)_finishEnrollmentPhaseTwo
{
  if (os_log_type_enabled(self->bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEBUG))
  {
    [BKUIFingerprintEnrollViewController _finishEnrollmentPhaseTwo];
  }

  [(BKUIAlertView *)self->_alertView hideAnimated:1];
  [(BKUIFingerprintEnrollViewController *)self _stopMessageTimer];
  v3 = [(BiometricKitUIEnrollViewController *)self propertyForKey:@"BMKUI_TACTILE_CONTINUE"];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    self->_matchInProgress = 0;
    self->_waitInProgress = 1;
    v5 = [MEMORY[0x277CBEAA8] date];
    enrollmentEndTime = self->_enrollmentEndTime;
    self->_enrollmentEndTime = v5;
  }

  else
  {
    [(BKUIFingerprintEnrollViewController *)self _cancelEnrollmentMatch];
  }

  [(BKUIFingerprintEnrollViewController *)self _sendEnrollResult:8 identity:0];
  v7 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
  [v7 setEnrollViewState:2];

  v8 = [(BKUIFingerprintEnrollViewController *)self _readyString];
  [(BKUIFingerprintEnrollViewController *)self _animateHeaderTitle:v8];
}

- (BOOL)_useAlertHud
{
  v2 = [(BiometricKitUIEnrollViewController *)self propertyForKey:@"BMKUI_ALERT_HUD"];
  v3 = ([v2 BOOLValue] & 1) != 0 || +[BKUIBundleSettings BOOLForUserDefaultsKey:](BKUIBundleSettings, "BOOLForUserDefaultsKey:", @"fpEnrollAlertHud");

  return v3;
}

- (BOOL)_shouldHideUnlockMessage
{
  v2 = [(BiometricKitUIEnrollViewController *)self propertyForKey:@"BMKUI_HIDE_UNLOCK_MSG"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (unint64_t)_bkIdentityCount
{
  v3 = [(BKUIFingerprintEnrollViewController *)self bkDevice];
  userid = self->_userid;
  v10 = 0;
  v5 = [v3 identitiesForUser:userid error:&v10];
  v6 = v10;

  if (v6)
  {
    bkui_biometric_kit_delegate_log = self->bkui_biometric_kit_delegate_log;
    if (os_log_type_enabled(bkui_biometric_kit_delegate_log, OS_LOG_TYPE_ERROR))
    {
      [(BKUIFingerprintEnrollViewController *)bkui_biometric_kit_delegate_log _bkIdentityCount];
    }
  }

  v8 = [v5 count];

  return v8;
}

- (unint64_t)_bkDeviceIdentityCount
{
  bkDevice = self->_bkDevice;
  userid = self->_userid;
  v7 = 0;
  v4 = [(BKDeviceTouchID *)bkDevice identitiesForUser:userid error:&v7];
  v5 = [v4 count];

  return v5;
}

- (void)_tutorialContinueButtonPressed
{
  bkui_fingerprint_enroll_view_controller_log = self->bkui_fingerprint_enroll_view_controller_log;
  if (os_log_type_enabled(bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_241B0A000, bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEFAULT, "BiometricKitUI: Tutor button pressed", v4, 2u);
  }

  [(BKUIFingerprintEnrollViewController *)self _stopTutorialTransitionToEnrollView];
}

- (void)_stopTutorialTransitionToEnrollView
{
  if (os_log_type_enabled(self->bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEBUG))
  {
    [BKUIFingerprintEnrollViewController _stopTutorialTransitionToEnrollView];
  }

  v3 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
  v4 = [v3 view];
  v5 = [v4 isHidden];

  if ((v5 & 1) == 0)
  {
    enrollmentPhaseTwo = self->_enrollmentPhaseTwo;
    v7 = os_log_type_enabled(self->bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEBUG);
    if (enrollmentPhaseTwo)
    {
      if (v7)
      {
        [BKUIFingerprintEnrollViewController _stopTutorialTransitionToEnrollView];
      }

      v8 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
      [v8 setEnrollViewState:1];

      [(BKUIFingerprintEnrollViewController *)self initPromptMessage];
    }

    else
    {
      if (v7)
      {
        [BKUIFingerprintEnrollViewController _stopTutorialTransitionToEnrollView];
      }

      v9 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
      [v9 setEnrollViewState:0];

      if (self->_inBuddy)
      {
        [(BKUIFingerprintEnrollViewController *)self _sendEnrollResult:10 identity:0];
      }
    }

    [(BKUIFingerprintEnrollViewController *)self _transitionToEnrollView:1];
  }
}

- (void)transitionToEnrollView:(BOOL)a3
{
  v3 = a3;
  v60 = *MEMORY[0x277D85DE8];
  bkui_fingerprint_enroll_view_controller_log = self->bkui_fingerprint_enroll_view_controller_log;
  if (os_log_type_enabled(bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEFAULT, "BiometricKitUI: transition To Enroll View", buf, 2u);
  }

  v6 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
  v7 = [v6 view];
  v8 = [v7 isHidden];

  if ((v8 & 1) != 0 || !v3)
  {
    v9 = [(BKUIFingerprintEnrollViewController *)self view];
    v10 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
    v11 = [v10 view];
    [v9 bringSubviewToFront:v11];

    v12 = [(BKUIFingerprintEnrollViewController *)self view];
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = [MEMORY[0x277D75418] currentDevice];
    LODWORD(v10) = [v21 bkui_isRTL];

    v22 = [(BKUIFingerprintEnrollViewController *)self view];
    [v22 bounds];
    v24 = v23;

    v25 = -v24;
    if (!v10)
    {
      v25 = v24;
    }

    v26 = v14 + v25;
    v27 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
    v28 = [v27 view];
    [v28 setHidden:0];

    v29 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
    v30 = [v29 view];
    [v30 setFrame:{v26, v16, v18, v20}];

    v31 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
    v32 = [v31 view];
    [v32 setAlpha:1.0];

    v33 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
    v34 = [v33 view];
    [v34 setNeedsLayout];

    v35 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
    v36 = [v35 view];
    [v36 layoutIfNeeded];

    if (v3)
    {
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __62__BKUIFingerprintEnrollViewController_transitionToEnrollView___block_invoke;
      v53[3] = &unk_278D09978;
      v53[4] = self;
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __62__BKUIFingerprintEnrollViewController_transitionToEnrollView___block_invoke_2;
      v52[3] = &unk_278D099C0;
      v52[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v53 animations:v52 completion:0.3];
    }

    else
    {
      v37 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
      v38 = [v37 view];
      v39 = [(BKUIFingerprintEnrollViewController *)self view];
      [v39 bounds];
      [v38 setFrame:?];

      v40 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
      v41 = [v40 view];
      [v41 layoutIfNeeded];

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v42 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
      v43 = [v42 contentView];
      v44 = [v43 subviews];

      v45 = [v44 countByEnumeratingWithState:&v54 objects:v59 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v55;
        do
        {
          for (i = 0; i != v46; ++i)
          {
            if (*v55 != v47)
            {
              objc_enumerationMutation(v44);
            }

            [*(*(&v54 + 1) + 8 * i) setHidden:0];
          }

          v46 = [v44 countByEnumeratingWithState:&v54 objects:v59 count:16];
        }

        while (v46);
      }

      v49 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
      v50 = [v49 view];
      [v50 setHidden:1];
    }
  }

  v51 = *MEMORY[0x277D85DE8];
}

void __62__BKUIFingerprintEnrollViewController_transitionToEnrollView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) enrollmentControlller];
  v3 = [v2 view];
  v4 = [*(a1 + 32) view];
  [v4 bounds];
  [v3 setFrame:?];

  v5 = [*(a1 + 32) enrollmentControlller];
  v6 = [v5 view];
  [v6 layoutIfNeeded];

  v8 = [*(a1 + 32) enrollmentControlller];
  v7 = [v8 contentView];
  [v7 setHidden:0];
}

void __62__BKUIFingerprintEnrollViewController_transitionToEnrollView___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) tutorialController];
  v3 = [v2 view];
  [v3 setHidden:1];

  v5 = [*(a1 + 32) enrollmentControlller];
  v4 = [v5 contentView];
  [v4 setHidden:0];
}

- (void)transitionToTutorialView:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  bkui_fingerprint_enroll_view_controller_log = self->bkui_fingerprint_enroll_view_controller_log;
  if (os_log_type_enabled(bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEFAULT, "BiometricKitUI: transition To Tutorail View", buf, 2u);
  }

  v8 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
  v9 = [v8 view];
  v10 = [v9 isHidden];

  if ((v10 & 1) != 0 || !v4)
  {
    v11 = [(BKUIFingerprintEnrollViewController *)self view];
    v12 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
    v13 = [v12 view];
    [v11 bringSubviewToFront:v13];

    v14 = [(BKUIFingerprintEnrollViewController *)self view];
    [v14 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = [MEMORY[0x277D75418] currentDevice];
    LODWORD(v12) = [v23 bkui_isRTL];

    v24 = [(BKUIFingerprintEnrollViewController *)self view];
    [v24 bounds];
    v26 = v25;

    v27 = -v26;
    if (!v12)
    {
      v27 = v26;
    }

    v28 = v16 + v27;
    v29 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
    v30 = [v29 view];
    [v30 setFrame:{v28, v18, v20, v22}];

    v31 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
    v32 = [v31 view];
    [v32 layoutIfNeeded];

    v33 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
    v34 = [v33 view];
    [v34 setAlpha:1.0];

    v35 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
    v36 = [v35 view];
    [v36 setHidden:0];

    if (v4)
    {
      v37 = MEMORY[0x277D75D18];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __75__BKUIFingerprintEnrollViewController_transitionToTutorialView_completion___block_invoke;
      v47[3] = &unk_278D09978;
      v47[4] = self;
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __75__BKUIFingerprintEnrollViewController_transitionToTutorialView_completion___block_invoke_2;
      v45[3] = &unk_278D0A000;
      v45[4] = self;
      v46 = v6;
      [v37 animateWithDuration:v47 animations:v45 completion:0.3];
    }

    else
    {
      v38 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
      v39 = [v38 view];
      v40 = [(BKUIFingerprintEnrollViewController *)self view];
      [v40 bounds];
      [v39 setFrame:?];

      v41 = [(BKUIFingerprintEnrollViewController *)self tutorialController];
      v42 = [v41 view];
      [v42 layoutIfNeeded];

      v43 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
      v44 = [v43 view];
      [v44 setHidden:1];
    }
  }
}

void __75__BKUIFingerprintEnrollViewController_transitionToTutorialView_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tutorialController];
  v3 = [v2 view];
  v4 = [*(a1 + 32) view];
  [v4 bounds];
  [v3 setFrame:?];

  v6 = [*(a1 + 32) tutorialController];
  v5 = [v6 view];
  [v5 layoutIfNeeded];
}

uint64_t __75__BKUIFingerprintEnrollViewController_transitionToTutorialView_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) enrollmentControlller];
  v3 = [v2 view];
  [v3 setHidden:1];

  v4 = [*(a1 + 32) enrollmentControlller];
  v5 = [v4 view];
  [v5 setNeedsLayout];

  v6 = [*(a1 + 32) tutorialController];
  v7 = [v6 view];
  [v7 setHidden:0];

  result = *(a1 + 40);
  if (result)
  {
    v9 = *(result + 16);

    return v9();
  }

  return result;
}

- (void)initPromptMessage
{
  v3 = [(BKUIFingerprintEnrollViewController *)self _placeFingerString];
  [(BKUIFingerprintEnrollViewController *)self _animateHeaderTitle:v3];
}

- (void)_animateHeaderTitle:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([(NSTimer *)self->_messageTimer isValid])
  {
    objc_storeStrong(&self->_lastPromptMessage, a3);
  }

  else
  {
    lastPromptMessage = self->_lastPromptMessage;
    self->_lastPromptMessage = 0;

    v7 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
    v8 = [v7 headerTitle];
    v9 = [v8 isEqualToString:v5];

    if (v9)
    {
      msgShowTimeout = self->_msgShowTimeout;
    }

    else
    {
      bkui_fingerprint_enroll_view_controller_log = self->bkui_fingerprint_enroll_view_controller_log;
      if (os_log_type_enabled(bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v5;
        _os_log_impl(&dword_241B0A000, bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEFAULT, "BiometricKitUI: Current title set to: %@", &v13, 0xCu);
      }

      [(BKUIFingerprintEnrollViewController *)self _transitionPromptMessage:v5];
      msgShowTimeout = self->_msgTransLength + self->_msgShowTimeout;
    }

    [(BKUIFingerprintEnrollViewController *)self _startMessageTimer:msgShowTimeout];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_startMessageTimer:(double)a3
{
  [(BKUIFingerprintEnrollViewController *)self _stopMessageTimer];
  if (os_log_type_enabled(self->bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEBUG))
  {
    [BKUIFingerprintEnrollViewController _startMessageTimer:];
  }

  v5 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__messageTimeout selector:0 userInfo:0 repeats:a3];
  messageTimer = self->_messageTimer;
  self->_messageTimer = v5;
}

- (void)_stopMessageTimer
{
  if (os_log_type_enabled(self->bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEBUG))
  {
    [BKUIFingerprintEnrollViewController _stopMessageTimer];
  }

  messageTimer = self->_messageTimer;
  if (messageTimer)
  {
    [(NSTimer *)messageTimer invalidate];
    v4 = self->_messageTimer;
    self->_messageTimer = 0;
  }
}

- (void)_messageTimeout
{
  if (os_log_type_enabled(self->bkui_fingerprint_enroll_view_controller_log, OS_LOG_TYPE_DEBUG))
  {
    [BKUIFingerprintEnrollViewController _messageTimeout];
  }

  [(BKUIFingerprintEnrollViewController *)self _stopMessageTimer];
  if (self->_lastPromptMessage)
  {
    [(BKUIFingerprintEnrollViewController *)self _animateHeaderTitle:?];
    lastPromptMessage = self->_lastPromptMessage;
    self->_lastPromptMessage = 0;
  }
}

- (void)_transitionPromptMessage:(id)a3
{
  v4 = a3;
  v5 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
  v6 = [v5 view];
  v7 = [v6 isHidden];

  v8 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
  [v8 updateHeaderWithTitle:v4 animated:v7 ^ 1u heightDifference:0];
}

- (id)_liftFingerString
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"LIFT_YOUR_FINGER" value:&stru_2853BB280 table:@"BiometricKitUI"];

  return v3;
}

- (id)_placeFingerString
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PLACE_YOUR_FINGER" value:&stru_2853BB280 table:@"BiometricKitUI"];

  if ([(BKUIFingerprintEnrollViewController *)self followUPEnrollmentUpSell])
  {
    v5 = [(BKUIFingerprintEnrollViewController *)self enrollmentControlller];
    v6 = [v5 enrollViewState];

    if (v6 == 1)
    {
      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"PLACE_YOUR_FINGER_FOLLOW_UP" value:&stru_2853BB280 table:@"Mesa-j307"];

      v4 = v8;
    }
  }

  return v4;
}

- (id)_readyString
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"MESA_IS_READY" value:&stru_2853BB280 table:@"BiometricKitUI"];

  if ([(BKUIFingerprintEnrollViewController *)self followUPEnrollmentUpSell])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"MESA_IS_READY_FOLLOW_UP" value:&stru_2853BB280 table:@"Mesa-j307"];

    v4 = v6;
  }

  return v4;
}

- (BOOL)followUPEnrollmentUpSell
{
  if (!self->_inBuddy)
  {
    return 0;
  }

  v2 = +[BKUIDevice sharedInstance];
  if ([v2 isIdiomPad])
  {
    v3 = MGGetSInt32Answer() == 2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_topTouchButtonIpad
{
  if (MGGetBoolAnswer())
  {
    v2 = +[BKUIDevice sharedInstance];
    [v2 isIdiomPad];
  }

  return MGGetSInt32Answer() == 2;
}

- (id)_deviceAwareLocalizedStringForKey:(id)a3
{
  v4 = a3;
  v5 = [(BKUIFingerprintEnrollViewController *)self _topTouchButtonIpad];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  if (v5)
  {
    v8 = [v4 stringByAppendingString:@"_FOLLOW_UP"];

    v9 = [v7 localizedStringForKey:v8 value:&stru_2853BB280 table:@"Mesa-j307"];
    v4 = v8;
  }

  else
  {
    v9 = [v6 localizedStringForKey:v4 value:&stru_2853BB280 table:@"BiometricKitUI"];
  }

  return v9;
}

void __67__BKUIFingerprintEnrollViewController_applicationWillResignActive___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_5() localizedDescription];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v4, v5, OS_LOG_TYPE_FAULT, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)enrollProgress:(void *)a1 .cold.1(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a1;
  [OUTLINED_FUNCTION_5() progress];
  [a2 message];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x12u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_cancelEnrollmentAndRestart:(char)a1 .cold.1(char a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1 & 1;
  _os_log_debug_impl(&dword_241B0A000, a2, OS_LOG_TYPE_DEBUG, "BiometricKitUI: Canceling enroll and restart: %i", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)fingerprintCaptureOperation:encounteredCaptureError:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(&dword_241B0A000, v0, OS_LOG_TYPE_ERROR, "BiomtericKitUI: Fingerprint encountered capture error: %li", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_bkIdentityCount
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_5() localizedDescription];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

@end
@interface BKUIPearlEnrollViewController
+ (BOOL)_shouldShowAccessibilityOptionForState:(int)state poseStatus:(id)status;
+ (void)preloadWithCompletion:(id)completion;
- (BKUIButtonTray)buttonTray;
- (BKUIPearlEnrollView)enrollView;
- (BKUIPearlEnrollViewBottomContainer)bottomContainer;
- (BKUIPearlEnrollViewController)initWithPreloadedState:(id)state;
- (BKUIPearlEnrollViewControllerDelegate)delegate;
- (BKUIPearlInstructionView)instructionView;
- (BOOL)hasPeriocularIdentityEnrolled;
- (BOOL)isFinalEnrollment;
- (BOOL)midFlowPeriocularSplashShowing;
- (BOOL)showGlassesSkipUI;
- (UIButton)escapeHatchButton;
- (UIButton)nextStateButton;
- (UIButton)retryMatchOperationButton;
- (UIView)nextStateButtonContainer;
- (double)percentOfPillsCompleted;
- (id)_nextStateButtonTitleForState:(int)state subState:(int)subState;
- (id)currentOperationHandler;
- (id)getEnrollview;
- (unint64_t)enrollmentConfiguration;
- (void)_cancelEnrollOperationForEscapeHatchButtonTap;
- (void)_endEnrollFlowWithError:(id)error;
- (void)_handleEnrollStateOnAppear;
- (void)_handleGlassesSkipAction;
- (void)_logRemovePeriocularFailure:(id)failure;
- (void)_setupUI;
- (void)_updateDebugLabel;
- (void)_updateLeftBarButtonItem;
- (void)animateInstruction;
- (void)animateToSuccessCompletionLayout:(int64_t)layout;
- (void)animateWithOrientation:(int64_t)orientation;
- (void)cancelEnroll;
- (void)cancelEnrollForRotationIfNeeded:(int64_t)needed;
- (void)cleanupEnrollView;
- (void)clearPendingStateWorkItems;
- (void)dealloc;
- (void)didBecomeActive:(id)active;
- (void)didEnterBackground:(id)background;
- (void)didReachLargeNudgePeakForEnrollView:(id)view;
- (void)didReachSmallNudgePeakForEnrollView:(id)view;
- (void)endEnrollFlowWithError:(id)error;
- (void)enrollOperation:(id)operation finishedWithIdentity:(id)identity animateImmediately:(BOOL)immediately;
- (void)enrollView:(id)view didNudgeInDirection:(unint64_t)direction nudgeCount:(unint64_t)count;
- (void)enrollView:(id)view willNudgeInDirection:(unint64_t)direction nudgeCount:(unint64_t)count;
- (void)escapeHatchButtonPressed;
- (void)finalizeInstructionAnimation;
- (void)forceDarkBackground:(BOOL)background animated:(BOOL)animated;
- (void)navigateToMidFlowPeriocularSplashScreenWithPrepareAction:(id)action completionAction:(id)completionAction;
- (void)nextStateButtonPressed:(id)pressed;
- (void)pearlEnrollControllerCompleted;
- (void)primeWithExternalizedAuthContext:(id)context;
- (void)primeWithPasscode:(id)passcode;
- (void)refreshEscapeHatchForCurrentState;
- (void)removeGlassesUI;
- (void)restartEnroll;
- (void)retryPressed;
- (void)returnToEnroll;
- (void)setEnrollmentConfiguration:(unint64_t)configuration;
- (void)setExistingIdentity:(id)identity;
- (void)setStatus:(id)status;
- (void)setupDebugLabel;
- (void)setupDebugUITraits;
- (void)showMaskAndGlassesTutorialWithCompletion:(id)completion;
- (void)startEnroll;
- (void)toggleDebug;
- (void)toggleDebugAndSave;
- (void)traceAnalyticsForEndEnrollFlowWithError:(id)error;
- (void)transitionToSuccessFromPeriocularSplash;
- (void)updateButtonsVisibility;
- (void)updatePeriocularEnrollmentSettings:(id)settings;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willResignActive:(id)active;
@end

@implementation BKUIPearlEnrollViewController

- (void)nextStateButtonPressed:(id)pressed
{
  v59 = *MEMORY[0x277D85DE8];
  pressedCopy = pressed;
  nextStateButton = [(BKUIPearlEnrollViewController *)self nextStateButton];
  [nextStateButton setEnabled:0];

  if ([(BKUIPearlEnrollViewController *)self state]== 2)
  {
    v6 = _BKUILoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241B0A000, v6, OS_LOG_TYPE_DEFAULT, "Next state button pressed, startEnroll...", buf, 2u);
    }

    currentOperationHandler = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    if ([currentOperationHandler supportsPeriocularEnrollment])
    {
      currentOperationHandler2 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
      isEnrollmentAugmentationOnly = [currentOperationHandler2 isEnrollmentAugmentationOnly];

      if (isEnrollmentAugmentationOnly)
      {
        currentOperationHandler3 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
        [currentOperationHandler3 matchUserForSecondPhaseEnrollmentWithCompletionAction:0];

        goto LABEL_44;
      }
    }

    else
    {
    }

    [(BKUIPearlEnrollViewController *)self startEnroll];
    goto LABEL_44;
  }

  if ([(BKUIPearlEnrollViewController *)self state]!= 9)
  {
    if ([(BKUIPearlEnrollViewController *)self state]!= 6 && [(BKUIPearlEnrollViewController *)self state]!= 8 && ![(BKUIPearlEnrollViewController *)self midFlowPeriocularSplashShowing])
    {
      if ([(BKUIPearlEnrollViewController *)self state]== 10)
      {
        if (![(BKUIPearlEnrollViewController *)self inBuddy])
        {
          v38 = objc_alloc_init(getBYFlowSkipControllerClass());
          v39 = getBYFlowSkipIdentifierFaceID();
          [v38 didCompleteFlow:v39];
        }

        objc_initWeak(buf, self);
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __84__BKUIPearlEnrollViewController_ButtonActionWithNavigation__nextStateButtonPressed___block_invoke_4;
        aBlock[3] = &unk_278D09B20;
        objc_copyWeak(&v50, buf);
        aBlock[4] = self;
        v40 = _Block_copy(aBlock);
        bioStreamEventHelper = [(BKUIPearlEnrollViewController *)self bioStreamEventHelper];
        [bioStreamEventHelper sendSuccessfulEnrollEvent];

        [(BKUIPearlEnrollViewController *)self updatePeriocularEnrollmentSettings:v40];
        objc_destroyWeak(&v50);
        objc_destroyWeak(buf);
      }

      goto LABEL_44;
    }

    if ([(BKUIPearlEnrollViewController *)self state]== 8)
    {
      currentOperationHandler4 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        currentOperationHandler5 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
        enrollOperation = [currentOperationHandler5 enrollOperation];
        if (!enrollOperation)
        {
          currentOperationHandler6 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
          supportsPeriocularEnrollment = [currentOperationHandler6 supportsPeriocularEnrollment];

          if (supportsPeriocularEnrollment)
          {
            [(BKUIPearlEnrollViewController *)self updatePeriocularEnrollmentSettings:0];
          }

          goto LABEL_23;
        }
      }
    }

LABEL_23:
    currentOperationHandler7 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    supportsPeriocularEnrollment2 = [currentOperationHandler7 supportsPeriocularEnrollment];

    v26 = _BKUILoggingFacility();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (supportsPeriocularEnrollment2)
    {
      if (v27)
      {
        *buf = 0;
        _os_log_impl(&dword_241B0A000, v26, OS_LOG_TYPE_DEFAULT, "Button Pressed match then start second phase enrollment ...", buf, 2u);
      }

      objc_initWeak(buf, self);
      currentOperationHandler8 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __84__BKUIPearlEnrollViewController_ButtonActionWithNavigation__nextStateButtonPressed___block_invoke_3;
      v51[3] = &unk_278D09950;
      objc_copyWeak(&v52, buf);
      [currentOperationHandler8 matchUserForSecondPhaseEnrollmentWithCompletionAction:v51];

      objc_destroyWeak(&v52);
      objc_destroyWeak(buf);
    }

    else
    {
      if (v27)
      {
        *buf = 0;
        _os_log_impl(&dword_241B0A000, v26, OS_LOG_TYPE_DEFAULT, "Button Pressed start second phase enrollment ...", buf, 2u);
      }

      [(BKUIPearlEnrollViewController *)self setState:7 animated:1];
      [(BKUIPearlEnrollViewController *)self setSubstate:0 animated:1 afterDelay:0.0];
    }

    goto LABEL_44;
  }

  currentOperationHandler9 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  if ([currentOperationHandler9 supportsPeriocularEnrollment])
  {
    currentOperationHandler10 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    glassesFound = [currentOperationHandler10 glassesFound];

    if (glassesFound)
    {
      currentOperationHandler11 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
      enrollOperation2 = [currentOperationHandler11 enrollOperation];

      if (enrollOperation2)
      {
        currentOperationHandler12 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
        v54 = 0;
        v17 = [currentOperationHandler12 completeCurrentEnrollOperationWithError:&v54];
        v18 = v54;

        v19 = _BKUILoggingFacility();
        v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
        if (v17)
        {
          if (v20)
          {
            *buf = 0;
            _os_log_impl(&dword_241B0A000, v19, OS_LOG_TYPE_DEFAULT, "Enroll marked as completed by partial capture!", buf, 2u);
          }
        }

        else
        {
          if (v20)
          {
            *buf = 138412290;
            v58 = v18;
            _os_log_impl(&dword_241B0A000, v19, OS_LOG_TYPE_DEFAULT, "Failed to complete enroll: %@", buf, 0xCu);
          }

          v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to complete enroll for partial capture: %@", v18];
          [(BKUIPearlEnrollViewController *)self setStatus:v48];
        }
      }

      else
      {
        v42 = _BKUILoggingFacility();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_241B0A000, v42, OS_LOG_TYPE_DEFAULT, "Enroll marked subsequent enrollment as completed by partial capture, starting match operation for Glasses Enrollment.", buf, 2u);
        }

        objc_initWeak(buf, self);
        currentOperationHandler13 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __84__BKUIPearlEnrollViewController_ButtonActionWithNavigation__nextStateButtonPressed___block_invoke;
        v55[3] = &unk_278D09950;
        objc_copyWeak(&v56, buf);
        [currentOperationHandler13 matchUserForSecondPhaseEnrollmentWithCompletionAction:v55];

        objc_destroyWeak(&v56);
        objc_destroyWeak(buf);
      }

      goto LABEL_44;
    }
  }

  else
  {
  }

  currentOperationHandler14 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  v53 = 0;
  v30 = [currentOperationHandler14 completeCurrentEnrollOperationWithError:&v53];
  v31 = v53;

  if (v30)
  {
    currentOperationHandler15 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    if ([currentOperationHandler15 enrollmentType] != 1)
    {
LABEL_34:

LABEL_35:
      v34 = _BKUILoggingFacility();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241B0A000, v34, OS_LOG_TYPE_DEFAULT, "Enroll marked as completed by partial capture!", buf, 2u);
      }

      goto LABEL_44;
    }

    currentOperationHandler16 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    if ([currentOperationHandler16 isEnrollmentAugmentationOnly])
    {

      goto LABEL_34;
    }

    v44 = [(BKUIPearlEnrollViewController *)self enrollmentConfiguration]== 0;

    if (v44)
    {
      goto LABEL_35;
    }

    v45 = _BKUILoggingFacility();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241B0A000, v45, OS_LOG_TYPE_DEFAULT, "Enroll marked initial enrollment as completed by partial capture navigate to mid flow Periocular Enable Splash Pane.", buf, 2u);
    }

    [(BKUIPearlEnrollViewController *)self navigateToMidFlowPeriocularSplashScreenWithPrepareAction:0 completionAction:0];
  }

  else
  {
    v35 = _BKUILoggingFacility();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v58 = v31;
      _os_log_impl(&dword_241B0A000, v35, OS_LOG_TYPE_DEFAULT, "Failed to complete enroll: %@", buf, 0xCu);
    }

    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to complete enroll for partial capture: %@", v31];
    [(BKUIPearlEnrollViewController *)self setStatus:v36];
  }

LABEL_44:

  v37 = *MEMORY[0x277D85DE8];
}

void __84__BKUIPearlEnrollViewController_ButtonActionWithNavigation__nextStateButtonPressed___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isFinalEnrollment])
  {
    [WeakRetained setSubstate:0];
  }

  [WeakRetained setState:3 animated:1];
}

void __84__BKUIPearlEnrollViewController_ButtonActionWithNavigation__nextStateButtonPressed___block_invoke_3(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = _BKUILoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = [WeakRetained enrollmentConfiguration];
    _os_log_impl(&dword_241B0A000, v2, OS_LOG_TYPE_DEFAULT, "Button Pressed matched second phase enrollment started ... setting UI to Match enrollment config: %li", &v4, 0xCu);
  }

  if ([WeakRetained isFinalEnrollment])
  {
    [WeakRetained setSubstate:0];
  }

  [WeakRetained setState:3 animated:1];

  v3 = *MEMORY[0x277D85DE8];
}

void __84__BKUIPearlEnrollViewController_ButtonActionWithNavigation__nextStateButtonPressed___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"ENROLL_WITH_VOICEOVER_ALERT_MESSAGE"];
    v5 = [v3 localizedStringForKey:v4 value:&stru_2853BB280 table:@"Pearl-periocular"];

    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"ENROLL_WITH_VOICEOVER_ALERT_TITLE" value:&stru_2853BB280 table:@"Pearl-periocular"];
    v8 = [BKUIAlertController alertControllerWithTitle:v7 message:v5 preferredStyle:1];

    v9 = MEMORY[0x277D750F8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"OK" value:&stru_2853BB280 table:@"Pearl-periocular"];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __84__BKUIPearlEnrollViewController_ButtonActionWithNavigation__nextStateButtonPressed___block_invoke_2;
    v13[3] = &unk_278D09AB0;
    v13[4] = WeakRetained;
    v12 = [v9 actionWithTitle:v11 style:0 handler:v13];
    [v8 addAction:v12];

    [*(a1 + 32) presentViewController:v8 animated:1 completion:0];
  }

  else
  {
    [WeakRetained endEnrollFlowWithError:0];
  }
}

- (void)updatePeriocularEnrollmentSettings:(id)settings
{
  settingsCopy = settings;
  currentOperationHandler = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  v16 = 0;
  v17 = 0;
  v6 = [currentOperationHandler getAuthContextForCredentialError:&v17 authContext:&v16];
  v7 = v17;
  v8 = v16;

  if (v7)
  {
    v9 = _BKUILoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(BKUIPearlEnrollViewController(ButtonActionWithNavigation) *)v7 updatePeriocularEnrollmentSettings:v8, v9];
    }
  }

  enrollmentConfiguration = [(BKUIPearlEnrollViewController *)self enrollmentConfiguration];
  if (enrollmentConfiguration - 3 < 2 || enrollmentConfiguration == 1)
  {
    if (![(BKUIPearlEnrollViewController *)self enrollmentAlreadyHasExistingPeriocularTemplate])
    {
      currentOperationHandler2 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
      identity = [currentOperationHandler2 identity];
      hasPeriocularEnrollment = [identity hasPeriocularEnrollment];

      currentOperationHandler3 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
      device = [currentOperationHandler3 device];
      [BKUIPeriocularEnableSplashViewController setPeriocularFaceIDMatchEnabledForUserConfigurationWithDevice:device credentialSet:v6 authContext:v8 enabled:hasPeriocularEnrollment != 0 completion:settingsCopy];

      goto LABEL_13;
    }
  }

  else if (enrollmentConfiguration)
  {
    goto LABEL_13;
  }

  if (settingsCopy)
  {
    settingsCopy[2](settingsCopy);
  }

LABEL_13:
}

- (BOOL)midFlowPeriocularSplashShowing
{
  midFlowPeriocularSplashController = [(BKUIPearlEnrollViewController *)self midFlowPeriocularSplashController];
  view = [midFlowPeriocularSplashController view];
  window = [view window];
  v5 = window != 0;

  return v5;
}

- (void)navigateToMidFlowPeriocularSplashScreenWithPrepareAction:(id)action completionAction:(id)completionAction
{
  actionCopy = action;
  completionActionCopy = completionAction;
  delegate = [(BKUIPearlEnrollViewController *)self delegate];
  containerView = [delegate containerView];
  [containerView setClipsToBounds:1];

  v10 = dispatch_time(0, 700000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __135__BKUIPearlEnrollViewController_ButtonActionWithNavigation__navigateToMidFlowPeriocularSplashScreenWithPrepareAction_completionAction___block_invoke;
  block[3] = &unk_278D09BC0;
  block[4] = self;
  v14 = completionActionCopy;
  v15 = actionCopy;
  v11 = actionCopy;
  v12 = completionActionCopy;
  dispatch_after(v10, MEMORY[0x277D85CD0], block);
}

void __135__BKUIPearlEnrollViewController_ButtonActionWithNavigation__navigateToMidFlowPeriocularSplashScreenWithPrepareAction_completionAction___block_invoke(uint64_t a1)
{
  v59[4] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, *(a1 + 32));
  v2 = [BKUIPeriocularEnableSplashViewController alloc];
  v3 = [*(a1 + 32) inBuddy];
  v4 = [*(a1 + 32) currentOperationHandler];
  v5 = [v4 device];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __135__BKUIPearlEnrollViewController_ButtonActionWithNavigation__navigateToMidFlowPeriocularSplashScreenWithPrepareAction_completionAction___block_invoke_2;
  v55[3] = &unk_278D09B98;
  v55[4] = *(a1 + 32);
  objc_copyWeak(&v57, &location);
  v56 = *(a1 + 40);
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __135__BKUIPearlEnrollViewController_ButtonActionWithNavigation__navigateToMidFlowPeriocularSplashScreenWithPrepareAction_completionAction___block_invoke_2_30;
  v53[3] = &unk_278D09950;
  objc_copyWeak(&v54, &location);
  v6 = [(BKUIPeriocularEnableSplashViewController *)v2 initInBuddy:v3 bkDevice:v5 upsell:0 withEndEnrollmentActionPrimary:v55 enrollmentActionSecondary:v53];
  [*(a1 + 32) setMidFlowPeriocularSplashController:v6];

  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __135__BKUIPearlEnrollViewController_ButtonActionWithNavigation__navigateToMidFlowPeriocularSplashScreenWithPrepareAction_completionAction___block_invoke_3_31;
  v51[3] = &unk_278D09950;
  objc_copyWeak(&v52, &location);
  v7 = [*(a1 + 32) midFlowPeriocularSplashController];
  [v7 setUserSkippedAction:v51];

  v8 = [*(a1 + 32) parentViewController];
  v9 = [*(a1 + 32) midFlowPeriocularSplashController];
  [v8 addChildViewController:v9];

  v10 = [*(a1 + 32) midFlowPeriocularSplashController];
  v11 = [v10 view];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [*(a1 + 32) delegate];
  v13 = [v12 containerView];
  v14 = [*(a1 + 32) midFlowPeriocularSplashController];
  v15 = [v14 view];
  [v13 addSubview:v15];

  v29 = MEMORY[0x277CCAAD0];
  v49 = [*(a1 + 32) midFlowPeriocularSplashController];
  v48 = [v49 view];
  v45 = [v48 leadingAnchor];
  v47 = [*(a1 + 32) delegate];
  v46 = [v47 containerView];
  v44 = [v46 leadingAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v59[0] = v43;
  v42 = [*(a1 + 32) midFlowPeriocularSplashController];
  v41 = [v42 view];
  v38 = [v41 trailingAnchor];
  v40 = [*(a1 + 32) delegate];
  v39 = [v40 containerView];
  v37 = [v39 trailingAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v59[1] = v36;
  v35 = [*(a1 + 32) midFlowPeriocularSplashController];
  v34 = [v35 view];
  v31 = [v34 topAnchor];
  v33 = [*(a1 + 32) delegate];
  v32 = [v33 containerView];
  v30 = [v32 topAnchor];
  v16 = [v31 constraintEqualToAnchor:v30];
  v59[2] = v16;
  v17 = [*(a1 + 32) midFlowPeriocularSplashController];
  v18 = [v17 view];
  v19 = [v18 bottomAnchor];
  v20 = [*(a1 + 32) delegate];
  v21 = [v20 containerView];
  v22 = [v21 bottomAnchor];
  v23 = [v19 constraintEqualToAnchor:v22];
  v59[3] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:4];
  [v29 activateConstraints:v24];

  v25 = *(a1 + 48);
  if (v25)
  {
    (*(v25 + 16))();
  }

  v26 = +[BKUIPearlEnrollAnimationManager sharedManager];
  v27 = [*(a1 + 32) midFlowPeriocularSplashController];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __135__BKUIPearlEnrollViewController_ButtonActionWithNavigation__navigateToMidFlowPeriocularSplashScreenWithPrepareAction_completionAction___block_invoke_4;
  v50[3] = &unk_278D09978;
  v50[4] = *(a1 + 32);
  [v26 transitionTo:v27 completion:v50];

  objc_destroyWeak(&v52);
  objc_destroyWeak(&v54);

  objc_destroyWeak(&v57);
  objc_destroyWeak(&location);
  v28 = *MEMORY[0x277D85DE8];
}

void __135__BKUIPearlEnrollViewController_ButtonActionWithNavigation__navigateToMidFlowPeriocularSplashScreenWithPrepareAction_completionAction___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setState:3 animated:0];
  v2 = dispatch_time(0, 650000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __135__BKUIPearlEnrollViewController_ButtonActionWithNavigation__navigateToMidFlowPeriocularSplashScreenWithPrepareAction_completionAction___block_invoke_3;
  block[3] = &unk_278D09B70;
  objc_copyWeak(&v6, (a1 + 48));
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  dispatch_after(v2, MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v6);
}

void __135__BKUIPearlEnrollViewController_ButtonActionWithNavigation__navigateToMidFlowPeriocularSplashScreenWithPrepareAction_completionAction___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (([WeakRetained midFlowPeriocularSplashShowing] & 1) == 0)
  {
    v3 = _BKUILoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __135__BKUIPearlEnrollViewController_ButtonActionWithNavigation__navigateToMidFlowPeriocularSplashScreenWithPrepareAction_completionAction___block_invoke_3_cold_1(v3);
    }
  }

  v4 = [WeakRetained midFlowPeriocularSplashController];
  v5 = [v4 view];
  v6 = [v5 layer];
  [v6 removeAllAnimations];

  [MEMORY[0x277CD9FF0] flush];
  v7 = [WeakRetained delegate];
  v8 = [v7 containerView];
  v9 = [WeakRetained view];
  [v8 bringSubviewToFront:v9];

  v10 = [WeakRetained view];
  [v10 setOrigin:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

  v11 = +[BKUIPearlEnrollAnimationManager sharedManager];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __135__BKUIPearlEnrollViewController_ButtonActionWithNavigation__navigateToMidFlowPeriocularSplashScreenWithPrepareAction_completionAction___block_invoke_29;
  v14[3] = &unk_278D09B48;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14[4] = WeakRetained;
  v14[5] = v12;
  v15 = v13;
  [v11 transitionTo:WeakRetained completion:v14];
}

uint64_t __135__BKUIPearlEnrollViewController_ButtonActionWithNavigation__navigateToMidFlowPeriocularSplashScreenWithPrepareAction_completionAction___block_invoke_29(uint64_t a1)
{
  [*(a1 + 32) nextStateButtonPressed:*(a1 + 32)];
  v2 = [*(a1 + 32) midFlowPeriocularSplashController];
  v3 = [v2 view];
  [v3 removeFromSuperview];

  v4 = [*(a1 + 32) parentViewController];
  v5 = [*(a1 + 32) midFlowPeriocularSplashController];
  [v4 removeChildViewController:v5];

  [*(a1 + 40) setNeedsStatusBarAppearanceUpdate];
  result = *(a1 + 48);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void __135__BKUIPearlEnrollViewController_ButtonActionWithNavigation__navigateToMidFlowPeriocularSplashScreenWithPrepareAction_completionAction___block_invoke_2_30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained transitionToSuccessFromPeriocularSplash];
}

void __135__BKUIPearlEnrollViewController_ButtonActionWithNavigation__navigateToMidFlowPeriocularSplashScreenWithPrepareAction_completionAction___block_invoke_3_31(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained transitionToSuccessFromPeriocularSplash];
}

uint64_t __135__BKUIPearlEnrollViewController_ButtonActionWithNavigation__navigateToMidFlowPeriocularSplashScreenWithPrepareAction_completionAction___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) midFlowPeriocularSplashController];
  [v2 didMoveToParentViewController:*(a1 + 32)];

  v3 = [*(a1 + 32) view];
  v4 = [*(a1 + 32) view];
  [v4 bounds];
  [v3 setOrigin:{v5, 0.0}];

  v6 = *(a1 + 32);

  return [v6 setNeedsStatusBarAppearanceUpdate];
}

- (void)escapeHatchButtonPressed
{
  v50 = *MEMORY[0x277D85DE8];
  if ([(BKUIPearlEnrollViewController *)self showGlassesSkipUI])
  {
    v3 = *MEMORY[0x277D85DE8];

    [(BKUIPearlEnrollViewController *)self _handleGlassesSkipAction];
  }

  else
  {
    if (-[BKUIPearlEnrollViewController state](self, "state") == 3 && (-[BKUIPearlEnrollViewController currentOperationHandler](self, "currentOperationHandler"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 shouldShowRetryUI], v4, v5))
    {
      v6 = _BKUILoggingFacility();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_241B0A000, v6, OS_LOG_TYPE_DEFAULT, "BKUIPearl: Pressed escape hatch during match operation fail, showing retry UI ... user skipped", &buf, 2u);
      }

      [(BKUIPearlEnrollViewController *)self _cancelEnrollOperationForEscapeHatchButtonTap];
      objc_initWeak(&buf, self);
      currentOperationHandler = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
      device = [currentOperationHandler device];
      currentOperationHandler2 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
      identity = [currentOperationHandler2 identity];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __85__BKUIPearlEnrollViewController_ButtonActionWithNavigation__escapeHatchButtonPressed__block_invoke;
      v46[3] = &unk_278D09BE8;
      objc_copyWeak(&v47, &buf);
      [device removePeriocularEnrollmentsFromIdentity:identity removeAll:1 reply:v46];

      objc_destroyWeak(&v47);
      objc_destroyWeak(&buf);
    }

    else if ([objc_opt_class() _shouldShowEscapeHatchForState:-[BKUIPearlEnrollViewController state](self inBuddy:{"state"), -[BKUIPearlEnrollViewController inBuddy](self, "inBuddy")}])
    {
      v11 = _BKUILoggingFacility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_241B0A000, v11, OS_LOG_TYPE_DEFAULT, "BKUIPearl: Pressed escape hatch", &buf, 2u);
      }

      currentOperationHandler3 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
      v13 = [currentOperationHandler3 enrollmentType] == 1;

      if (v13)
      {
        v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.biometrickitui.pearl_enroll" code:-2 userInfo:0];
        [(BKUIPearlEnrollViewController *)self endEnrollFlowWithError:v14];
      }

      else
      {
        currentOperationHandler4 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
        isEnrollmentAugmentationOnly = [currentOperationHandler4 isEnrollmentAugmentationOnly];

        if (isEnrollmentAugmentationOnly)
        {
          objc_initWeak(&buf, self);
          currentOperationHandler5 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
          device2 = [currentOperationHandler5 device];
          currentOperationHandler6 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
          identity2 = [currentOperationHandler6 identity];
          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = __85__BKUIPearlEnrollViewController_ButtonActionWithNavigation__escapeHatchButtonPressed__block_invoke_36;
          v44[3] = &unk_278D09BE8;
          objc_copyWeak(&v45, &buf);
          [device2 removePeriocularEnrollmentsFromIdentity:identity2 removeAll:1 reply:v44];

          objc_destroyWeak(&v45);
          objc_destroyWeak(&buf);
        }

        else
        {
          [(BKUIPearlEnrollViewController *)self _cancelEnrollOperationForEscapeHatchButtonTap];
          currentOperationHandler7 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
          enrollOperation = [currentOperationHandler7 enrollOperation];
          [enrollOperation setDelegate:0];

          currentOperationHandler8 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
          v48 = currentOperationHandler8;
          v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
          v33 = [v32 mutableCopy];
          [(BKUIPearlEnrollViewController *)self setOperationHandlers:v33];

          objc_initWeak(&buf, self);
          currentOperationHandler9 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
          device3 = [currentOperationHandler9 device];
          currentOperationHandler10 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
          identity3 = [currentOperationHandler10 identity];
          v41[0] = MEMORY[0x277D85DD0];
          v41[1] = 3221225472;
          v41[2] = __85__BKUIPearlEnrollViewController_ButtonActionWithNavigation__escapeHatchButtonPressed__block_invoke_3;
          v41[3] = &unk_278D09C10;
          objc_copyWeak(&v43, &buf);
          v38 = currentOperationHandler8;
          v42 = v38;
          [device3 removePeriocularEnrollmentsFromIdentity:identity3 removeAll:1 reply:v41];

          objc_destroyWeak(&v43);
          objc_destroyWeak(&buf);
        }
      }
    }

    else
    {
      v15 = objc_opt_class();
      state = [(BKUIPearlEnrollViewController *)self state];
      currentOperationHandler11 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
      poseStatus = [currentOperationHandler11 poseStatus];
      LODWORD(v15) = [v15 _shouldShowAccessibilityOptionForState:state poseStatus:poseStatus];

      if (v15)
      {
        v19 = _BKUILoggingFacility();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 67109120;
          HIDWORD(buf) = [(BKUIPearlEnrollViewController *)self state];
          _os_log_impl(&dword_241B0A000, v19, OS_LOG_TYPE_DEFAULT, "BKUIPearl: Pressed accessibility escape hatch, state = %i", &buf, 8u);
        }

        [(BKUIPearlEnrollViewController *)self setState:9 animated:1];
      }

      else if ([(BKUIPearlEnrollViewController *)self state]== 10)
      {
        currentOperationHandler12 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
        supportsPeriocularEnrollment = [currentOperationHandler12 supportsPeriocularEnrollment];

        if (supportsPeriocularEnrollment)
        {
          v22 = _BKUILoggingFacility();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_241B0A000, v22, OS_LOG_TYPE_DEFAULT, "BKUIPearl: Enroll has completed, but we do have Periocular enrollment support!", &buf, 2u);
          }

          v40[0] = MEMORY[0x277D85DD0];
          v40[1] = 3221225472;
          v40[2] = __85__BKUIPearlEnrollViewController_ButtonActionWithNavigation__escapeHatchButtonPressed__block_invoke_38;
          v40[3] = &unk_278D09978;
          v40[4] = self;
          [(BKUIPearlEnrollViewController *)self updatePeriocularEnrollmentSettings:v40];
        }
      }
    }

    v39 = *MEMORY[0x277D85DE8];
  }
}

void __85__BKUIPearlEnrollViewController_ButtonActionWithNavigation__escapeHatchButtonPressed__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (v5 || (a2 & 1) == 0)
  {
    [WeakRetained _logRemovePeriocularFailure:v5];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__BKUIPearlEnrollViewController_ButtonActionWithNavigation__escapeHatchButtonPressed__block_invoke_2;
  block[3] = &unk_278D09978;
  block[4] = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __85__BKUIPearlEnrollViewController_ButtonActionWithNavigation__escapeHatchButtonPressed__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.biometrickitui.pearl_enroll" code:-2 userInfo:0];
  [v1 endEnrollFlowWithError:v2];
}

void __85__BKUIPearlEnrollViewController_ButtonActionWithNavigation__escapeHatchButtonPressed__block_invoke_36(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (v5 || (a2 & 1) == 0)
  {
    [WeakRetained _logRemovePeriocularFailure:v5];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__BKUIPearlEnrollViewController_ButtonActionWithNavigation__escapeHatchButtonPressed__block_invoke_2_37;
  block[3] = &unk_278D09978;
  block[4] = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __85__BKUIPearlEnrollViewController_ButtonActionWithNavigation__escapeHatchButtonPressed__block_invoke_2_37(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.biometrickitui.pearl_enroll" code:-2 userInfo:0];
  [v1 endEnrollFlowWithError:v2];
}

void __85__BKUIPearlEnrollViewController_ButtonActionWithNavigation__escapeHatchButtonPressed__block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (v5 || (a2 & 1) == 0)
  {
    [WeakRetained _logRemovePeriocularFailure:v5];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __85__BKUIPearlEnrollViewController_ButtonActionWithNavigation__escapeHatchButtonPressed__block_invoke_4;
  v8[3] = &unk_278D09B20;
  objc_copyWeak(&v10, (a1 + 40));
  v9 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v8);

  objc_destroyWeak(&v10);
}

void __85__BKUIPearlEnrollViewController_ButtonActionWithNavigation__escapeHatchButtonPressed__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained enrollView];
  v4 = [v3 pillContainer];
  [v4 setHidden:0];

  v5 = [WeakRetained enrollView];
  [v5 setPillsHidden:0];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __85__BKUIPearlEnrollViewController_ButtonActionWithNavigation__escapeHatchButtonPressed__block_invoke_5;
  v6[3] = &unk_278D09B20;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = *(a1 + 32);
  [WeakRetained _setState:10 animated:1 completion:v6];

  objc_destroyWeak(&v8);
}

void __85__BKUIPearlEnrollViewController_ButtonActionWithNavigation__escapeHatchButtonPressed__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) enrollOperation];
  v3 = [*(a1 + 32) identity];
  [WeakRetained enrollOperation:v2 finishedWithIdentity:v3 animateImmediately:1];
}

void __85__BKUIPearlEnrollViewController_ButtonActionWithNavigation__escapeHatchButtonPressed__block_invoke_38(uint64_t a1)
{
  v2 = _BKUILoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, v2, OS_LOG_TYPE_DEFAULT, "BKUIPearl: updatePeriocularEnrollmentSettings: endEnrollAction completion invoked", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__BKUIPearlEnrollViewController_ButtonActionWithNavigation__escapeHatchButtonPressed__block_invoke_39;
  block[3] = &unk_278D09978;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
  v3 = [*(a1 + 32) parentViewController];
  [v3 startInternalGlassesFlow];
}

- (void)_logRemovePeriocularFailure:(id)failure
{
  v9 = *MEMORY[0x277D85DE8];
  failureCopy = failure;
  v4 = _BKUILoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    localizedDescription = [failureCopy localizedDescription];
    v7 = 138412290;
    v8 = localizedDescription;
    _os_log_impl(&dword_241B0A000, v4, OS_LOG_TYPE_DEFAULT, "removePeriocularEnrollmentsFromIdentity unsucesful %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_cancelEnrollOperationForEscapeHatchButtonTap
{
  currentOperationHandler = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  enrollmentType = [currentOperationHandler enrollmentType];

  currentOperationHandler2 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  v6 = currentOperationHandler2;
  if (enrollmentType == 1)
  {
    [currentOperationHandler2 cancelEnroll];
  }

  else
  {
    [currentOperationHandler2 cancelEnrollPreserveIdentity];
  }
}

+ (BOOL)_shouldShowAccessibilityOptionForState:(int)state poseStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy count])
  {
    v6 = [statusCopy objectAtIndexedSubscript:8];
    v7 = [v6 integerValue] == 3;
  }

  else
  {
    v7 = 0;
  }

  v8 = (state & 0xFFFFFFFD) == 5 && v7;

  return v8;
}

- (void)retryPressed
{
  if ([(BKUIPearlEnrollViewController *)self state]== 3)
  {
    currentOperationHandler = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    shouldShowRetryUI = [currentOperationHandler shouldShowRetryUI];

    if (shouldShowRetryUI)
    {
      currentOperationHandler2 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
      [currentOperationHandler2 retryPressed];

      buttonTray = [(BKUIPearlEnrollViewController *)self buttonTray];
      topLinkButton = [buttonTray topLinkButton];
      [topLinkButton setEnabled:0];
    }
  }
}

- (void)_handleGlassesSkipAction
{
  if ([(BKUIPearlEnrollViewController *)self state]== 3)
  {
    currentOperationHandler = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    if ([currentOperationHandler shouldShowRetryUI])
    {
      currentOperationHandler2 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
      glassesEnforcementError = [currentOperationHandler2 glassesEnforcementError];

      if (glassesEnforcementError)
      {
        v6 = _BKUILoggingFacility();
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_10;
        }

        LOWORD(buf[0]) = 0;
        v7 = "Pressed escape hatch during glasses enforcement error in BKUIPearlEnrollStateNeedsPositioning, showing retry UI ... user skip tapped";
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v6 = _BKUILoggingFacility();
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_10;
  }

  LOWORD(buf[0]) = 0;
  v7 = "Pressed escape hatch during upsell in BKUIPearlEnrollStateSubsequentScanComplete, showing retry UI ... user skip tapped";
LABEL_9:
  _os_log_impl(&dword_241B0A000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
LABEL_10:

  currentOperationHandler3 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  enrollOperation = [currentOperationHandler3 enrollOperation];
  [enrollOperation setDelegate:0];

  objc_initWeak(buf, self);
  if ([(BKUIPearlEnrollViewController *)self enrollmentConfiguration]== 4)
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v10 localizedStringForKey:@"DYNAMIC_MATCH_GLASSES_ENROLL_SKIP_ALERT_BODY" value:&stru_2853BB280 table:@"Pearl-periocular"];
  }

  else
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v10 localizedStringForKey:@"GLASSES_ENROLL_SKIP_ALERT_BODY" value:&stru_2853BB280 table:@"Pearl-periocular"];
  }
  v11 = ;

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"GLASSES_ENROLL_SKIP_ALERT_TITLE" value:&stru_2853BB280 table:@"Pearl-periocular"];
  v14 = [BKUIAlertController alertControllerWithTitle:v13 message:v11 preferredStyle:1];

  v15 = MEMORY[0x277D750F8];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"GLASSES_ENROLL_SKIP_ALERT_SKIP_ACTION" value:&stru_2853BB280 table:@"Pearl-periocular"];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __85__BKUIPearlEnrollViewController_ButtonActionWithNavigation___handleGlassesSkipAction__block_invoke;
  v25[3] = &unk_278D09C38;
  v25[4] = self;
  objc_copyWeak(&v26, buf);
  v18 = [v15 actionWithTitle:v17 style:0 handler:v25];

  v19 = MEMORY[0x277D750F8];
  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"GLASSES_ENROLL_SKIP_ALERT_DONT_SKIP_ACTION" value:&stru_2853BB280 table:@"Pearl-periocular"];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __85__BKUIPearlEnrollViewController_ButtonActionWithNavigation___handleGlassesSkipAction__block_invoke_3;
  v23[3] = &unk_278D09C60;
  objc_copyWeak(&v24, buf);
  v22 = [v19 actionWithTitle:v21 style:1 handler:v23];
  [v14 addAction:v22];

  [v14 bkui_addPreferredAction:v18];
  [(BKUIPearlEnrollViewController *)self presentViewController:v14 animated:1 completion:0];
  objc_destroyWeak(&v24);

  objc_destroyWeak(&v26);
  objc_destroyWeak(buf);
}

void __85__BKUIPearlEnrollViewController_ButtonActionWithNavigation___handleGlassesSkipAction__block_invoke(uint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) currentOperationHandler];
  v3 = [*(a1 + 32) enrollmentConfiguration];
  v4 = _BKUILoggingFacility();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 == 4)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_241B0A000, v4, OS_LOG_TYPE_DEFAULT, "Pressed escape hatch during glasses enforcement error for BKUIPearlEnrollmentConfigurationDynamicMatchWithGlassesAugmentation, user confirmed skip", buf, 2u);
    }

    v6 = *(a1 + 32);
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.biometrickitui.pearl_enroll" code:-2 userInfo:0];
    [v6 endEnrollFlowWithError:v7];
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_241B0A000, v4, OS_LOG_TYPE_DEFAULT, "Pressed escape hatch during during upsell for normal enrollment, user confirmed skip", buf, 2u);
    }

    v22[0] = v2;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v9 = [v8 mutableCopy];
    [*(a1 + 32) setOperationHandlers:v9];

    v10 = [*(a1 + 32) operationHandlers];
    v11 = [v10 lastObject];
    [v11 setGlassesFound:0];

    v12 = [*(a1 + 32) enrollView];
    v13 = [v12 pillContainer];
    v14 = [v13 squareNeedsPositionLayout];

    if (v14)
    {
      v15 = 1000000000;
    }

    else
    {
      v15 = 0;
    }

    v16 = dispatch_time(0, v15);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __85__BKUIPearlEnrollViewController_ButtonActionWithNavigation___handleGlassesSkipAction__block_invoke_52;
    v18[3] = &unk_278D09B20;
    objc_copyWeak(&v20, (a1 + 40));
    v19 = v2;
    dispatch_after(v16, MEMORY[0x277D85CD0], v18);

    objc_destroyWeak(&v20);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __85__BKUIPearlEnrollViewController_ButtonActionWithNavigation___handleGlassesSkipAction__block_invoke_52(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained enrollView];
  [v3 setAlpha:1.0];

  v4 = [WeakRetained enrollView];
  v5 = [v4 pillContainer];
  [v5 setHidden:0];

  v6 = [WeakRetained enrollView];
  [v6 setPillsHidden:0];

  if ([WeakRetained state] == 8)
  {
    v7 = [WeakRetained getEnrollview];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __85__BKUIPearlEnrollViewController_ButtonActionWithNavigation___handleGlassesSkipAction__block_invoke_2;
    v10[3] = &unk_278D09A38;
    v10[4] = WeakRetained;
    v11 = *(a1 + 32);
    [v7 setState:6 completion:v10];
  }

  else
  {
    v8 = [*(a1 + 32) enrollOperation];
    v9 = [*(a1 + 32) identity];
    [WeakRetained enrollOperation:v8 finishedWithIdentity:v9 animateImmediately:1];
  }
}

void __85__BKUIPearlEnrollViewController_ButtonActionWithNavigation___handleGlassesSkipAction__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) enrollOperation];
  v3 = [*(a1 + 40) identity];
  [v2 enrollOperation:v4 finishedWithIdentity:v3 animateImmediately:1];
}

void __85__BKUIPearlEnrollViewController_ButtonActionWithNavigation___handleGlassesSkipAction__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained currentOperationHandler];
  v2 = [WeakRetained currentOperationHandler];
  v3 = [v2 enrollOperation];
  [v3 setDelegate:v1];
}

+ (void)preloadWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_alloc_init(BKUIPearlEnrollControllerPreloadedState);
  v5 = dispatch_group_create();
  v6 = dispatch_get_global_queue(25, 0);
  dispatch_group_enter(v5);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__BKUIPearlEnrollViewController_preloadWithCompletion___block_invoke;
  block[3] = &unk_278D09A38;
  v7 = v4;
  v22 = v7;
  v8 = v5;
  v23 = v8;
  dispatch_async(v6, block);
  dispatch_group_enter(v8);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55__BKUIPearlEnrollViewController_preloadWithCompletion___block_invoke_6;
  v17[3] = &unk_278D09A60;
  v18 = v6;
  v9 = v7;
  v19 = v9;
  v20 = v8;
  v10 = v8;
  v11 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v17);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__BKUIPearlEnrollViewController_preloadWithCompletion___block_invoke_9;
  v14[3] = &unk_278D0A528;
  v15 = v9;
  v16 = completionCopy;
  v12 = v9;
  v13 = completionCopy;
  dispatch_group_notify(v10, v11, v14);
}

void __55__BKUIPearlEnrollViewController_preloadWithCompletion___block_invoke(uint64_t a1)
{
  v2 = _BKUILoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, v2, OS_LOG_TYPE_DEFAULT, "Pearl: Will create audio session", buf, 2u);
  }

  v3 = objc_alloc_init(BKUIPearlAudioSession);
  [*(a1 + 32) cacheAudioSession:v3];
  v4 = _BKUILoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_241B0A000, v4, OS_LOG_TYPE_DEFAULT, "Pearl: Did finish create audio session", v5, 2u);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __55__BKUIPearlEnrollViewController_preloadWithCompletion___block_invoke_6(uint64_t a1)
{
  v2 = _BKUILoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, v2, OS_LOG_TYPE_DEFAULT, "Pearl: Will create video capture session", buf, 2u);
  }

  v3 = objc_alloc_init(BKUIPearlVideoCaptureSession);
  v4 = _BKUILoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, v4, OS_LOG_TYPE_DEFAULT, "Pearl: Did finish create video capture session", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__BKUIPearlEnrollViewController_preloadWithCompletion___block_invoke_8;
  block[3] = &unk_278D09A60;
  v8 = v3;
  v5 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v6 = v3;
  dispatch_async(v5, block);
}

void __55__BKUIPearlEnrollViewController_preloadWithCompletion___block_invoke_8(uint64_t a1)
{
  v2 = _BKUILoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, v2, OS_LOG_TYPE_DEFAULT, "Pearl: Will start video capture session", buf, 2u);
  }

  [*(a1 + 32) startCapture];
  [*(a1 + 40) cacheVideoCaptureSession:*(a1 + 32)];
  v3 = _BKUILoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "Pearl: Did start video capture session", v4, 2u);
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t __55__BKUIPearlEnrollViewController_preloadWithCompletion___block_invoke_9(uint64_t a1)
{
  v2 = _BKUILoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_241B0A000, v2, OS_LOG_TYPE_DEFAULT, "Pearl: All preloading complete", v4, 2u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (BKUIPearlEnrollViewController)initWithPreloadedState:(id)state
{
  v26[1] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v25.receiver = self;
  v25.super_class = BKUIPearlEnrollViewController;
  v6 = [(BKUIPearlEnrollViewController *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_preloadedState, state);
    v8 = dispatch_semaphore_create(0);
    stateSema = v7->_stateSema;
    v7->_stateSema = v8;

    v10 = objc_alloc_init(BKUIPearlEnrollAudioManager);
    audioManager = v7->_audioManager;
    v7->_audioManager = v10;

    [(BKUIPearlEnrollAudioManager *)v7->_audioManager setStateDelegate:v7];
    [(BKUIPearlEnrollAudioManager *)v7->_audioManager setPreloadedState:v7->_preloadedState];
    v12 = objc_opt_new();
    analyticsManager = v7->_analyticsManager;
    v7->_analyticsManager = v12;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_didBecomeActive_ name:*MEMORY[0x277D76648] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v7 selector:sel_willResignActive_ name:*MEMORY[0x277D76768] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v7 selector:sel_didEnterBackground_ name:*MEMORY[0x277D76660] object:0];

    v17 = [[BKUIFaceIDEnrollOperationsHandler alloc] initWithBKPearlEnrollmentType:1];
    v26[0] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    v19 = [v18 mutableCopy];
    operationHandlers = v7->_operationHandlers;
    v7->_operationHandlers = v19;

    v21 = objc_alloc_init(_TtC14BiometricKitUI35EnrollStateDispatchWorkItemsManager);
    workItemsManager = v7->_workItemsManager;
    v7->_workItemsManager = v21;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)currentOperationHandler
{
  operationHandlers = [(BKUIPearlEnrollViewController *)self operationHandlers];
  firstObject = [operationHandlers firstObject];

  return firstObject;
}

- (void)setEnrollmentConfiguration:(unint64_t)configuration
{
  if (configuration == 2)
  {
    configurationCopy = 3;
  }

  else
  {
    configurationCopy = configuration;
  }

  inBuddy = [(BKUIPearlEnrollViewController *)self inBuddy];
  currentOperationHandler = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  credential = [currentOperationHandler credential];
  currentOperationHandler2 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  externalizedAuthContext = [currentOperationHandler2 externalizedAuthContext];
  v9 = [BKUIFaceIDEnrollOperationsHandler handlersForEnrollmentConfiguration:configurationCopy inBuddy:inBuddy delegate:self credential:credential externalizedAuthContext:externalizedAuthContext];
  [(BKUIPearlEnrollViewController *)self setOperationHandlers:v9];
}

- (unint64_t)enrollmentConfiguration
{
  currentOperationHandler = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  enrollmentConfiguration = [currentOperationHandler enrollmentConfiguration];

  return enrollmentConfiguration;
}

- (id)getEnrollview
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  enrollView = self->_enrollView;

  return enrollView;
}

- (void)cleanupEnrollView
{
  v3 = _BKUILoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "BKUIPearl: cleanupEnrollView", v7, 2u);
  }

  enrollView = [(BKUIPearlEnrollViewController *)self enrollView];
  [enrollView postEnrollDeActivate];

  currentOperationHandler = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  [currentOperationHandler cleanupEnroll];

  audioManager = [(BKUIPearlEnrollViewController *)self audioManager];
  [audioManager cleanupHapticsAndSound];

  [(BKUIPearlEnrollViewController *)self setOperationHandlers:0];
}

- (void)_endEnrollFlowWithError:(id)error
{
  errorCopy = error;
  [(BKUIPearlEnrollViewController *)self cleanupEnrollView];
  delegate = [(BKUIPearlEnrollViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(BKUIPearlEnrollViewController *)self delegate];
    [delegate2 pearlEnrollViewController:self finishedEnrollWithError:errorCopy];
  }
}

- (void)endEnrollFlowWithError:(id)error
{
  v51 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = _BKUILoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    localizedDescription = [errorCopy localizedDescription];
    *buf = 138412290;
    v50 = localizedDescription;
    _os_log_impl(&dword_241B0A000, v5, OS_LOG_TYPE_DEFAULT, "Pearl: end enroll flow with error %@", buf, 0xCu);
  }

  [(BKUIPearlEnrollViewController *)self traceAnalyticsForEndEnrollFlowWithError:errorCopy];
  domain = [errorCopy domain];
  if ([domain isEqualToString:@"com.apple.biometrickitui.pearl_enroll"])
  {
    v8 = [errorCopy code] == -1;
  }

  else
  {
    v8 = 0;
  }

  domain2 = [errorCopy domain];
  if ([domain2 isEqualToString:@"com.apple.biometrickitui.pearl_enroll"])
  {
    v10 = [errorCopy code] == -2;
  }

  else
  {
    v10 = 0;
  }

  if (errorCopy != 0 && !v8 && !v10)
  {
    inBuddy = [(BKUIPearlEnrollViewController *)self inBuddy];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"ENROLL_FAILED_GENERIC" value:&stru_2853BB280 table:@"Pearl-periocular"];

    domain3 = [errorCopy domain];
    v44 = inBuddy;
    if (([domain3 isEqualToString:@"com.apple.biometrickitui.biokit"] & 1) == 0)
    {

      code = 0;
      goto LABEL_18;
    }

    code = [errorCopy code];

    if (code > 6)
    {
      if (code != 7)
      {
        if (code != 8)
        {
          goto LABEL_18;
        }

        v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v27 = [v26 localizedStringForKey:@"ENROLL_FAILED_INTERLOCKED_TITLE" value:&stru_2853BB280 table:@"Pearl-periocular"];

        inBuddy2 = [(BKUIPearlEnrollViewController *)self inBuddy];
        v29 = @"ENROLL_FAILED_INTERLOCKED_MESSAGE_SETTINGS";
        if (inBuddy2)
        {
          v29 = @"ENROLL_FAILED_INTERLOCKED_MESSAGE_BUDDY";
        }

        v43 = v27;
LABEL_34:
        v21 = v29;
        v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v19 = [v32 localizedStringForKey:v21 value:&stru_2853BB280 table:@"Pearl-periocular"];

        currentDevice = [MEMORY[0x277D75418] currentDevice];
        userInterfaceIdiom = [currentDevice userInterfaceIdiom];

        if (userInterfaceIdiom != 1)
        {
          v13 = v43;
          goto LABEL_38;
        }

        v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v20 = [v35 localizedStringForKey:v21 value:&stru_2853BB280 table:@"Pearl-j3xx"];

        v19 = v35;
        v13 = v43;
LABEL_36:

        v19 = v20;
LABEL_38:
        v36 = [BKUIAlertController alertControllerWithTitle:v13 message:v19 preferredStyle:1];
        v37 = MEMORY[0x277D750F8];
        v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v39 = [v38 localizedStringForKey:@"OK" value:&stru_2853BB280 table:@"Pearl-periocular"];
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __56__BKUIPearlEnrollViewController_endEnrollFlowWithError___block_invoke;
        v45[3] = &unk_278D0A550;
        v48 = v44;
        v46 = errorCopy;
        selfCopy = self;
        [v37 actionWithTitle:v39 style:0 handler:v45];
        v41 = v40 = v13;
        [v36 addAction:v41];

        [(BKUIPearlEnrollViewController *)self presentViewController:v36 animated:1 completion:0];
        goto LABEL_39;
      }

      v43 = v13;
      inBuddy3 = [(BKUIPearlEnrollViewController *)self inBuddy];
      v29 = @"ENROLL_FAILED_TOO_COLD_SETTINGS";
      v31 = @"ENROLL_FAILED_TOO_COLD_BUDDY";
    }

    else
    {
      if (code != 5)
      {
        if (code == 6)
        {
          v16 = v13;
          v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v18 = [v17 localizedStringForKey:@"ENROLL_FAILED_DIFFERENT_FACE_TITLE" value:&stru_2853BB280 table:@"Pearl-periocular"];

          v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v20 = [v19 localizedStringForKey:@"ENROLL_FAILED_DIFFERENT_FACE_MESSAGE" value:&stru_2853BB280 table:@"Pearl-periocular"];
          v44 = 0;
          v21 = 0;
          v13 = v18;
          goto LABEL_36;
        }

LABEL_18:
        v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        if ([(BKUIPearlEnrollViewController *)self inBuddy])
        {
          v23 = @"ENROLL_FAILED_MESSAGE_BUDDY";
        }

        else
        {
          v23 = @"ENROLL_FAILED_MESSAGE_SETTINGS";
        }

        v19 = [v22 localizedStringForKey:v23 value:&stru_2853BB280 table:@"Pearl-periocular"];

        currentDevice2 = [MEMORY[0x277D75418] currentDevice];
        bkui_IsInternalInstall = [currentDevice2 bkui_IsInternalInstall];

        v21 = 0;
        if (!bkui_IsInternalInstall || !code)
        {
          goto LABEL_38;
        }

        v20 = [v19 stringByAppendingFormat:@"\nInternal Message: Reason %i", code];
        v21 = 0;
        goto LABEL_36;
      }

      v43 = v13;
      inBuddy3 = [(BKUIPearlEnrollViewController *)self inBuddy];
      v29 = @"ENROLL_FAILED_TOO_HOT_SETTINGS";
      v31 = @"ENROLL_FAILED_TOO_HOT_BUDDY";
    }

    if (inBuddy3)
    {
      v29 = v31;
    }

    goto LABEL_34;
  }

  [(BKUIPearlEnrollViewController *)self _endEnrollFlowWithError:errorCopy];
LABEL_39:

  v42 = *MEMORY[0x277D85DE8];
}

void __56__BKUIPearlEnrollViewController_endEnrollFlowWithError___block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4;
  if (*(a1 + 48) == 1)
  {
    v6 = MEMORY[0x277CCA9B8];
    if (v4)
    {
      v10 = *MEMORY[0x277CCA7E8];
      v11[0] = v4;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    }

    else
    {
      v7 = 0;
    }

    v8 = [v6 errorWithDomain:@"com.apple.biometrickitui.pearl_enroll" code:-2 userInfo:v7];

    if (v5)
    {
    }
  }

  else
  {
    v8 = v4;
  }

  [*(a1 + 40) _endEnrollFlowWithError:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)traceAnalyticsForEndEnrollFlowWithError:(id)error
{
  errorCopy = error;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[BKUIPearlEnrollViewController inBuddy](self, "inBuddy")}];
  [dictionary setObject:v5 forKey:@"inBuddy"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_state];
  [dictionary setObject:v6 forKey:@"enrollmentState"];

  currentOperationHandler = [(BKUIPearlEnrollViewController *)self currentOperationHandler];

  if (currentOperationHandler)
  {
    v8 = MEMORY[0x277CCABB0];
    currentOperationHandler2 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    v10 = [v8 numberWithInteger:{objc_msgSend(currentOperationHandler2, "enrollmentType")}];
    [dictionary setObject:v10 forKey:@"enrollmentType"];

    v11 = MEMORY[0x277CCABB0];
    currentOperationHandler3 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    v13 = [v11 numberWithInteger:{objc_msgSend(currentOperationHandler3, "glassesRequirement")}];
    [dictionary setObject:v13 forKey:@"enrollmentNeedsGlasses"];
  }

  if (errorCopy)
  {
    domain = [errorCopy domain];
    v15 = [domain stringByAppendingFormat:@" (%li)", objc_msgSend(errorCopy, "code")];
    [dictionary setObject:v15 forKey:@"error"];
  }

  analyticsManager = [(BKUIPearlEnrollViewController *)self analyticsManager];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];
  [analyticsManager traceEvent:@"com.apple.BKUI.FaceIDEnrollmentEnded" withPayload:v17];
}

- (void)didBecomeActive:(id)active
{
  currentOperationHandler = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  isActive = [currentOperationHandler isActive];

  if (isActive)
  {
    v6 = _BKUILoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_241B0A000, v6, OS_LOG_TYPE_DEFAULT, "Pearl: Resuming enroll due to become active", v7, 2u);
    }

    [(BKUIPearlEnrollViewController *)self _setSuspended:0];
  }
}

- (void)willResignActive:(id)active
{
  currentOperationHandler = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  isActive = [currentOperationHandler isActive];

  if (isActive)
  {
    v6 = _BKUILoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_241B0A000, v6, OS_LOG_TYPE_DEFAULT, "Pearl: Suspending enroll due to resign active", v7, 2u);
    }

    [(BKUIPearlEnrollViewController *)self _setSuspended:1];
  }
}

- (void)didEnterBackground:(id)background
{
  v4 = _BKUILoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, v4, OS_LOG_TYPE_DEFAULT, "Pearl: Entering background now", buf, 2u);
  }

  currentOperationHandler = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  if ([currentOperationHandler isActive])
  {

LABEL_5:
    v6 = _BKUILoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_241B0A000, v6, OS_LOG_TYPE_DEFAULT, "Pearl: Ending enroll due to enter background", v16, 2u);
    }

    if ([(BKUIPearlEnrollViewController *)self hasPeriocularIdentityEnrolled]&& [(BKUIPearlEnrollViewController *)self enrollmentConfiguration]== 4 && [(BKUIPearlEnrollViewController *)self inBuddy])
    {
      v7 = MEMORY[0x277CCA9B8];
      v8 = -2;
LABEL_13:
      v10 = [v7 errorWithDomain:@"com.apple.biometrickitui.pearl_enroll" code:v8 userInfo:0];
      [(BKUIPearlEnrollViewController *)self endEnrollFlowWithError:v10];

      return;
    }

    operationHandlers = [(BKUIPearlEnrollViewController *)self operationHandlers];
    [operationHandlers enumerateObjectsUsingBlock:&__block_literal_global_8];
LABEL_12:

    v7 = MEMORY[0x277CCA9B8];
    v8 = -1;
    goto LABEL_13;
  }

  if ((self->_state - 1) >= 9)
  {
  }

  else
  {
    parentViewController = [(BKUIPearlEnrollViewController *)self parentViewController];
    navigationController = [parentViewController navigationController];
    topViewController = [navigationController topViewController];
    parentViewController2 = [(BKUIPearlEnrollViewController *)self parentViewController];

    if (topViewController == parentViewController2)
    {
      goto LABEL_5;
    }
  }

  if (![(BKUIPearlEnrollViewController *)self inBuddy])
  {
    operationHandlers = _BKUILoggingFacility();
    if (os_log_type_enabled(operationHandlers, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_241B0A000, operationHandlers, OS_LOG_TYPE_DEFAULT, "Pearl: Ending enroll due to enter background in Settings", v15, 2u);
    }

    goto LABEL_12;
  }
}

- (void)dealloc
{
  v3 = _BKUILoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "PearlEnrollVC: dealloc", buf, 2u);
  }

  currentOperationHandler = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  [currentOperationHandler cancelCurrentEnrollmentOperationIfUnfinished];

  [(BKUIPearlEnrollView *)self->_enrollView setState:0 completion:0];
  [(BKUIPearlEnrollViewController *)self cleanupEnrollView];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v6.receiver = self;
  v6.super_class = BKUIPearlEnrollViewController;
  [(BKUIPearlEnrollViewController *)&v6 dealloc];
}

- (void)forceDarkBackground:(BOOL)background animated:(BOOL)animated
{
  if (self->_darkBackground != background)
  {
    v12 = v4;
    v13 = v5;
    animatedCopy = animated;
    self->_darkBackground = background;
    if (self->_state == 10 && !background)
    {
      [(_UIBackdropView *)self->_darkTrayBackdrop setHidden:1];
      [(_UIBackdropView *)self->_lightTrayBackdrop setHidden:1];
    }

    v9 = 0.3;
    v10[1] = 3221225472;
    v10[0] = MEMORY[0x277D85DD0];
    v10[2] = __62__BKUIPearlEnrollViewController_forceDarkBackground_animated___block_invoke;
    v10[3] = &unk_278D0A110;
    if (!animatedCopy)
    {
      v9 = 0.0;
    }

    backgroundCopy = background;
    v10[4] = self;
    [(UIView *)v9 bkui_animateWithDuration:v10 animations:?];
  }
}

void __62__BKUIPearlEnrollViewController_forceDarkBackground_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemBackgroundColor];
  }
  v9 = ;
  v2 = [*(a1 + 32) view];
  [v2 setBackgroundColor:v9];

  v3 = [*(a1 + 32) view];
  v4 = [v3 superview];
  [v4 setBackgroundColor:v9];

  v5 = [*(a1 + 32) enrollView];
  [v5 setBackgroundColor:v9];

  if (*(a1 + 40))
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  [*(*(a1 + 32) + 1008) setAlpha:v6];
  if (*(a1 + 40))
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 1.0;
  }

  [*(*(a1 + 32) + 1016) setAlpha:v7];
  v8 = [*(a1 + 32) instructionView];
  [v8 setDarkMode:*(a1 + 40)];

  [*(a1 + 32) setNeedsStatusBarAppearanceUpdate];
}

- (void)viewDidLoad
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = BKUIPearlEnrollViewController;
  [(BKUIPearlEnrollViewController *)&v12 viewDidLoad];
  v3 = _BKUILoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "BKUIPearl: Setting up enrollVC", &buf, 2u);
  }

  [(BKUIPearlEnrollViewController *)self _setupUI];
  enrollView = [(BKUIPearlEnrollViewController *)self enrollView];
  [enrollView setDelegate:self];

  [(BKUIPearlEnrollViewController *)self setupDebugLabel];
  v5 = [[BioStreamsEventHelper alloc] initWithBKDeviceType:2 inBuddy:[(BKUIPearlEnrollViewController *)self inBuddy]];
  [(BKUIPearlEnrollViewController *)self setBioStreamEventHelper:v5];

  [(BKUIPearlEnrollViewController *)self setEnrollmentAlreadyHasExistingPeriocularTemplate:[(BKUIPearlEnrollViewController *)self hasPeriocularIdentityEnrolled]];
  objc_initWeak(&buf, self);
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v13[2] = objc_opt_class();
  v13[3] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__BKUIPearlEnrollViewController_viewDidLoad__block_invoke;
  v9[3] = &unk_278D09928;
  objc_copyWeak(&v10, &buf);
  v7 = [(BKUIPearlEnrollViewController *)self registerForTraitChanges:v6 withHandler:v9];
  [(BKUIPearlEnrollViewController *)self setTraitChangeRegistration:v7];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&buf);
  v8 = *MEMORY[0x277D85DE8];
}

void __44__BKUIPearlEnrollViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained view];
  [v1 layoutIfNeeded];
}

- (void)setupDebugLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  debugLabel = self->_debugLabel;
  self->_debugLabel = v3;

  v5 = self->_debugLabel;
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [(UILabel *)v5 setTextColor:whiteColor];

  [(UILabel *)self->_debugLabel setTextAlignment:1];
  [(UILabel *)self->_debugLabel setNumberOfLines:0];
  [(UILabel *)self->_debugLabel setHidden:1];
  view = [(BKUIPearlEnrollViewController *)self view];
  [view addSubview:self->_debugLabel];

  if (os_variant_has_internal_ui())
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v9 = [standardUserDefaults BOOLForKey:@"pearlDebugEnroll"];

    if (v9)
    {

      [(BKUIPearlEnrollViewController *)self toggleDebug];
    }
  }
}

- (void)_setupUI
{
  v137[2] = *MEMORY[0x277D85DE8];
  v3 = [BKUIPearlEnrollView alloc];
  acquireCachedVideoCaptureSession = [(BKUIPearlEnrollControllerPreloadedState *)self->_preloadedState acquireCachedVideoCaptureSession];
  v5 = [(BKUIPearlEnrollView *)v3 initWithVideoCaptureSession:acquireCachedVideoCaptureSession inSheet:[(BKUIPearlEnrollViewController *)self inSheet] squareNeedsPositionLayout:0];
  [(BKUIPearlEnrollViewController *)self setEnrollView:v5];

  view = [(BKUIPearlEnrollViewController *)self view];
  enrollView = [(BKUIPearlEnrollViewController *)self enrollView];
  [view addSubview:enrollView];

  enrollView2 = [(BKUIPearlEnrollViewController *)self enrollView];
  [enrollView2 preEnrollActivate];

  enrollView3 = [(BKUIPearlEnrollViewController *)self enrollView];
  [enrollView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = +[BKUIDevice sharedInstance];
  if ([v10 isZoomEnabled])
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom)
    {
      v13 = 480.0;
    }

    else
    {
      v13 = 384.000006;
    }
  }

  else
  {

    v13 = 480.0;
  }

  enrollView4 = [(BKUIPearlEnrollViewController *)self enrollView];
  heightAnchor = [enrollView4 heightAnchor];
  v16 = [heightAnchor constraintEqualToConstant:v13];
  [(BKUIPearlEnrollViewController *)self setEnrollViewHeightConstraint:v16];

  enrollView5 = [(BKUIPearlEnrollViewController *)self enrollView];
  topAnchor = [enrollView5 topAnchor];
  view2 = [(BKUIPearlEnrollViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [(BKUIPearlEnrollViewController *)self setEnrollViewTopConstraint:v22];

  view3 = [(BKUIPearlEnrollViewController *)self view];
  [view3 frame];
  v25 = v24;
  view4 = [(BKUIPearlEnrollViewController *)self view];
  [view4 bounds];
  v28 = v27;

  v29 = [[BKUIButtonTray alloc] initWithFrame:0.0, 0.0, v25, v28];
  v30 = [[BKUIButtonTray alloc] initWithFrame:0.0, 0.0, v25, v28];
  if ([(BKUIPearlEnrollViewController *)self enrollmentConfiguration]!= 4)
  {
    nextStateButton = [(BKUIButtonTray *)v30 nextStateButton];
    [nextStateButton setAlpha:1.0];
  }

  v32 = [BKUIPearlEnrollViewBottomContainer alloc];
  inBuddy = self->_inBuddy;
  v134 = v29;
  v34 = [[BKUIContainerScrollView alloc] initWithFrame:v29 buttonTray:0.0, 0.0, v25, v28];
  v133 = v30;
  v35 = [[BKUIContainerScrollView alloc] initWithFrame:v30 buttonTray:0.0, 0.0, v25, v28];
  v36 = [(BKUIPearlEnrollViewBottomContainer *)v32 initWithFrame:inBuddy inBuddy:v34 scrollView:v35 overlapScrollView:self delegate:0 squareNeedsPositionLayout:0.0, 0.0, v25, v28];
  [(BKUIPearlEnrollViewController *)self setBottomContainer:v36];

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  v39 = 0x277CBE000;
  if (userInterfaceIdiom2 == 1)
  {
    v40 = objc_alloc_init(MEMORY[0x277D756D0]);
    bottomContainer = [(BKUIPearlEnrollViewController *)self bottomContainer];
    [bottomContainer setInstructionBaselineLayoutGuide:v40];

    view5 = [(BKUIPearlEnrollViewController *)self view];
    bottomContainer2 = [(BKUIPearlEnrollViewController *)self bottomContainer];
    instructionBaselineLayoutGuide = [bottomContainer2 instructionBaselineLayoutGuide];
    [view5 addLayoutGuide:instructionBaselineLayoutGuide];

    if ([(BKUIPearlEnrollViewController *)self isDisplayZoomEnabled])
    {
      v45 = 0.64;
    }

    else
    {
      v45 = 0.62;
    }

    bottomContainer3 = [(BKUIPearlEnrollViewController *)self bottomContainer];
    instructionBaselineLayoutGuide2 = [bottomContainer3 instructionBaselineLayoutGuide];
    heightAnchor2 = [instructionBaselineLayoutGuide2 heightAnchor];
    view6 = [(BKUIPearlEnrollViewController *)self view];
    heightAnchor3 = [view6 heightAnchor];
    v51 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3 multiplier:v45];

    enrollView6 = [(BKUIPearlEnrollViewController *)self enrollView];
    heightAnchor4 = [enrollView6 heightAnchor];
    view7 = [(BKUIPearlEnrollViewController *)self view];
    widthAnchor = [view7 widthAnchor];
    inSheet = [(BKUIPearlEnrollViewController *)self inSheet];
    v57 = 1.0;
    if (inSheet)
    {
      v57 = 0.75;
    }

    v58 = [heightAnchor4 constraintEqualToAnchor:widthAnchor multiplier:v57];
    [(BKUIPearlEnrollViewController *)self setEnrollViewHeightConstraint:v58];

    v59 = objc_alloc_init(MEMORY[0x277D756D0]);
    view8 = [(BKUIPearlEnrollViewController *)self view];
    [view8 addLayoutGuide:v59];

    v130 = v59;
    topAnchor3 = [v59 topAnchor];
    view9 = [(BKUIPearlEnrollViewController *)self view];
    topAnchor4 = [view9 topAnchor];
    v64 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    [v64 setActive:1];

    heightAnchor5 = [v59 heightAnchor];
    view10 = [(BKUIPearlEnrollViewController *)self view];
    heightAnchor6 = [view10 heightAnchor];
    v68 = [heightAnchor5 constraintEqualToAnchor:heightAnchor6 multiplier:0.07];
    [v68 setActive:1];

    enrollView7 = [(BKUIPearlEnrollViewController *)self enrollView];
    topAnchor5 = [enrollView7 topAnchor];
    view11 = [(BKUIPearlEnrollViewController *)self view];
    topAnchor6 = [view11 topAnchor];
    v73 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    [(BKUIPearlEnrollViewController *)self setEnrollViewTopConstraint:v73];

    v74 = MEMORY[0x277CCAAD0];
    bottomContainer4 = [(BKUIPearlEnrollViewController *)self bottomContainer];
    instructionBaselineLayoutGuide3 = [bottomContainer4 instructionBaselineLayoutGuide];
    topAnchor7 = [instructionBaselineLayoutGuide3 topAnchor];
    view12 = [(BKUIPearlEnrollViewController *)self view];
    topAnchor8 = [view12 topAnchor];
    v80 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
    v137[0] = v80;
    v137[1] = v51;
    v81 = v51;
    v82 = [MEMORY[0x277CBEA60] arrayWithObjects:v137 count:2];
    v83 = v74;
    v39 = 0x277CBE000uLL;
    [v83 activateConstraints:v82];
  }

  v122 = MEMORY[0x277CCAAD0];
  enrollViewHeightConstraint = [(BKUIPearlEnrollViewController *)self enrollViewHeightConstraint];
  v136[0] = enrollViewHeightConstraint;
  enrollViewTopConstraint = [(BKUIPearlEnrollViewController *)self enrollViewTopConstraint];
  v136[1] = enrollViewTopConstraint;
  enrollView8 = [(BKUIPearlEnrollViewController *)self enrollView];
  widthAnchor2 = [enrollView8 widthAnchor];
  view13 = [(BKUIPearlEnrollViewController *)self view];
  widthAnchor3 = [view13 widthAnchor];
  v86 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
  v136[2] = v86;
  enrollView9 = [(BKUIPearlEnrollViewController *)self enrollView];
  centerXAnchor = [enrollView9 centerXAnchor];
  view14 = [(BKUIPearlEnrollViewController *)self view];
  centerXAnchor2 = [view14 centerXAnchor];
  v91 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v136[3] = v91;
  v92 = [*(v39 + 2656) arrayWithObjects:v136 count:4];
  [v122 activateConstraints:v92];

  currentDevice3 = [MEMORY[0x277D75418] currentDevice];
  LODWORD(widthAnchor3) = [currentDevice3 bkui_IsInternalInstall];

  if (widthAnchor3)
  {
    v94 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_toggleDebugAndSave];
    [v94 setNumberOfTouchesRequired:3];
    view15 = [(BKUIPearlEnrollViewController *)self view];
    [view15 addGestureRecognizer:v94];
  }

  bottomContainer5 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  [bottomContainer5 setTranslatesAutoresizingMaskIntoConstraints:0];

  view16 = [(BKUIPearlEnrollViewController *)self view];
  bottomContainer6 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  [view16 addSubview:bottomContainer6];

  currentDevice4 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom3 = [currentDevice4 userInterfaceIdiom];

  bottomContainer7 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  topAnchor9 = [bottomContainer7 topAnchor];
  if (userInterfaceIdiom3 == 1)
  {
    bottomContainer8 = [(BKUIPearlEnrollViewController *)self bottomContainer];
    instructionBaselineLayoutGuide4 = [bottomContainer8 instructionBaselineLayoutGuide];
    bottomAnchor = [instructionBaselineLayoutGuide4 bottomAnchor];
    v106 = [topAnchor9 constraintEqualToAnchor:bottomAnchor];
    [v106 setActive:1];
  }

  else
  {
    bottomContainer8 = [(BKUIPearlEnrollViewController *)self getEnrollview];
    instructionBaselineLayoutGuide4 = [bottomContainer8 bottomAnchor];
    bottomAnchor = [topAnchor9 constraintEqualToAnchor:instructionBaselineLayoutGuide4 constant:-47.0];
    [bottomAnchor setActive:1];
  }

  v120 = MEMORY[0x277CCAAD0];
  bottomContainer9 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  bottomAnchor2 = [bottomContainer9 bottomAnchor];
  view17 = [(BKUIPearlEnrollViewController *)self view];
  bottomAnchor3 = [view17 bottomAnchor];
  v123 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v135[0] = v123;
  bottomContainer10 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  leadingAnchor = [bottomContainer10 leadingAnchor];
  view18 = [(BKUIPearlEnrollViewController *)self view];
  leadingAnchor2 = [view18 leadingAnchor];
  v109 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v135[1] = v109;
  bottomContainer11 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  trailingAnchor = [bottomContainer11 trailingAnchor];
  view19 = [(BKUIPearlEnrollViewController *)self view];
  trailingAnchor2 = [view19 trailingAnchor];
  v114 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v135[2] = v114;
  v115 = [MEMORY[0x277CBEA60] arrayWithObjects:v135 count:3];
  [v120 activateConstraints:v115];

  bottomContainer12 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  [bottomContainer12 setupInitialUI];

  [(BKUIPearlEnrollViewController *)self _updateLeftBarButtonItem];
  [(BKUIPearlEnrollViewController *)self forceDarkBackground:1 animated:1];
  buttonTray = [(BKUIPearlEnrollViewController *)self buttonTray];
  [buttonTray updateButtonLayout];

  [(BKUIPearlEnrollViewController *)self setupDebugUITraits];
  v118 = *MEMORY[0x277D85DE8];
}

- (void)setupDebugUITraits
{
  view = [(BKUIPearlEnrollViewController *)self view];
  blueColor = [MEMORY[0x277D75348] blueColor];
  v5 = [view bkui_debugBorder:blueColor withWidth:4];

  enrollView = [(BKUIPearlEnrollViewController *)self enrollView];
  purpleColor = [MEMORY[0x277D75348] purpleColor];
  v8 = [enrollView bkui_debugBorder:purpleColor withWidth:6];

  bottomContainer = [(BKUIPearlEnrollViewController *)self bottomContainer];
  yellowColor = [MEMORY[0x277D75348] yellowColor];
  v10 = [bottomContainer bkui_debugBorder:yellowColor withWidth:6];
}

- (BKUIPearlInstructionView)instructionView
{
  bottomContainer = [(BKUIPearlEnrollViewController *)self bottomContainer];
  instructionView = [bottomContainer instructionView];

  return instructionView;
}

- (BKUIPearlEnrollView)enrollView
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  enrollView = self->_enrollView;

  return enrollView;
}

- (BKUIPearlEnrollViewBottomContainer)bottomContainer
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  bottomContainer = self->_bottomContainer;

  return bottomContainer;
}

- (void)viewDidLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = BKUIPearlEnrollViewController;
  [(BKUIPearlEnrollViewController *)&v17 viewDidLayoutSubviews];
  view = [(BKUIPearlEnrollViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UILabel *)self->_debugLabel frame];
  [(UILabel *)self->_debugLabel textRectForBounds:3 limitedToNumberOfLines:0.0, 0.0, v9 * 0.9, 1.79769313e308];
  v13 = v12;
  v14 = (v9 - v9 * 0.9) * 0.5;
  v15 = floorf(v14);
  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  [(UILabel *)self->_debugLabel setFrame:v15, CGRectGetMaxY(v18) - v13 + -10.0, v9 * 0.9, v13];
  enrollView = [(BKUIPearlEnrollViewController *)self enrollView];
  [enrollView setNeedsLayout];
}

- (void)_updateLeftBarButtonItem
{
  v36 = *MEMORY[0x277D85DE8];
  state = self->_state;
  if (state != 9)
  {
    if (state > 2)
    {
      if (state == 10)
      {
        parentViewController = [(BKUIPearlEnrollViewController *)self parentViewController];
        navigationItem = [parentViewController navigationItem];
        [navigationItem setLeftBarButtonItem:0];

        parentViewController2 = [(BKUIPearlEnrollViewController *)self parentViewController];
        navigationItem2 = [parentViewController2 navigationItem];
        [navigationItem2 setHidesBackButton:1];
        goto LABEL_3;
      }

      v20 = _BKUILoggingFacility();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = self->_state;
        LODWORD(buf) = 67109120;
        HIDWORD(buf) = v21;
        _os_log_impl(&dword_241B0A000, v20, OS_LOG_TYPE_DEFAULT, "NavBar: updating for state %i: X", &buf, 8u);
      }

      parentViewController3 = [(BKUIPearlEnrollViewController *)self parentViewController];
      navigationItem3 = [parentViewController3 navigationItem];
      [navigationItem3 setBackAction:0];

      parentViewController4 = [(BKUIPearlEnrollViewController *)self parentViewController];
      navigationItem4 = [parentViewController4 navigationItem];
      [navigationItem4 setBackBarButtonItem:0];

      parentViewController5 = [(BKUIPearlEnrollViewController *)self parentViewController];
      navigationItem5 = [parentViewController5 navigationItem];
      [navigationItem5 setHidesBackButton:1];

      v28 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelEnroll];
      parentViewController6 = [(BKUIPearlEnrollViewController *)self parentViewController];
      navigationItem6 = [parentViewController6 navigationItem];
      [navigationItem6 setLeftBarButtonItem:v28];
    }

    else
    {
      v10 = _BKUILoggingFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_state;
        LODWORD(buf) = 67109120;
        HIDWORD(buf) = v11;
        _os_log_impl(&dword_241B0A000, v10, OS_LOG_TYPE_DEFAULT, "NavBar: updating for state %i: <", &buf, 8u);
      }

      parentViewController7 = [(BKUIPearlEnrollViewController *)self parentViewController];
      navigationItem7 = [parentViewController7 navigationItem];
      [navigationItem7 setLeftBarButtonItem:0];

      objc_initWeak(&buf, self);
      parentViewController8 = [(BKUIPearlEnrollViewController *)self parentViewController];
      navigationItem8 = [parentViewController8 navigationItem];
      v16 = MEMORY[0x277D750C8];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __57__BKUIPearlEnrollViewController__updateLeftBarButtonItem__block_invoke;
      v33[3] = &unk_278D0A598;
      objc_copyWeak(&v34, &buf);
      v17 = [v16 actionWithHandler:v33];
      [navigationItem8 setBackAction:v17];

      objc_destroyWeak(&v34);
      objc_destroyWeak(&buf);
    }

    v31 = *MEMORY[0x277D85DE8];
    return;
  }

  v4 = objc_alloc(MEMORY[0x277D751E0]);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BACK" value:&stru_2853BB280 table:@"Pearl-periocular"];
  parentViewController2 = [v4 initWithTitle:v6 style:0 target:self action:sel_returnToEnroll];

  [parentViewController2 _setShowsBackButtonIndicator:1];
  navigationItem2 = [(BKUIPearlEnrollViewController *)self parentViewController];
  v7NavigationItem = [navigationItem2 navigationItem];
  [v7NavigationItem setLeftBarButtonItem:parentViewController2];

LABEL_3:
  v9 = *MEMORY[0x277D85DE8];
}

void __57__BKUIPearlEnrollViewController__updateLeftBarButtonItem__block_invoke(uint64_t a1)
{
  v2 = _BKUILoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_241B0A000, v2, OS_LOG_TYPE_DEFAULT, "NavBar: tapped back chevron", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cancelEnroll];
  }
}

- (id)_nextStateButtonTitleForState:(int)state subState:(int)subState
{
  currentOperationHandler = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  if ([currentOperationHandler supportsPeriocularEnrollment])
  {
    v8 = [(BKUIPearlEnrollViewController *)self enrollmentConfiguration]!= 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
  if (state <= 7)
  {
    if (state == 2)
    {
      if (subState != 12)
      {
        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v12 = v11;
        v13 = @"START_ENROLL";
        goto LABEL_41;
      }
    }

    else
    {
      if (state != 6)
      {
        goto LABEL_42;
      }

      currentOperationHandler2 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
      if (![currentOperationHandler2 supportsPeriocularEnrollment])
      {

        goto LABEL_40;
      }

      enrollmentConfiguration = [(BKUIPearlEnrollViewController *)self enrollmentConfiguration];

      if (enrollmentConfiguration != 1)
      {
        goto LABEL_40;
      }
    }

LABEL_39:
    v9 = 0;
    goto LABEL_42;
  }

  if (state == 8)
  {
    if ([(BKUIPearlEnrollViewController *)self enrollmentConfiguration])
    {
      if ([(BKUIPearlEnrollViewController *)self isFinalEnrollment])
      {
        currentOperationHandler3 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
        v17 = [currentOperationHandler3 glassesFound] ^ 1;

        if (!v8)
        {
          goto LABEL_35;
        }

LABEL_29:
        currentOperationHandler4 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
        if ([currentOperationHandler4 glassesFound])
        {
          currentOperationHandler5 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
          glassesFound = [currentOperationHandler5 glassesFound];
          if (subState == 15)
          {
            v24 = 0;
          }

          else
          {
            v24 = glassesFound;
          }
        }

        else
        {
          v24 = 1;
        }

LABEL_38:
        if ((v17 | v24))
        {
          goto LABEL_39;
        }

LABEL_40:
        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v12 = v11;
        v13 = @"CONTINUE";
        goto LABEL_41;
      }

      v17 = 0;
      if (v8)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v17 = 1;
      if (v8)
      {
        goto LABEL_29;
      }
    }

LABEL_35:
    v24 = 0;
    goto LABEL_38;
  }

  if (state != 9)
  {
    if (state != 10)
    {
      goto LABEL_42;
    }

    inBuddy = [(BKUIPearlEnrollViewController *)self inBuddy];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = v11;
    if (inBuddy)
    {
      v13 = @"FINISH_ENROLL_BUTTON_BUDDY";
    }

    else
    {
      v13 = @"FINISH_ENROLL_BUTTON_SETTINGS";
    }

    goto LABEL_41;
  }

  currentOperationHandler6 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  if ([currentOperationHandler6 glassesFound])
  {
    currentOperationHandler7 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_40;
    }
  }

  else
  {
  }

  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = v11;
  v13 = @"USE_PARTIAL_CAPTURE";
LABEL_41:
  v9 = [v11 localizedStringForKey:v13 value:&stru_2853BB280 table:@"Pearl-periocular"];

LABEL_42:

  return v9;
}

void __63__BKUIPearlEnrollViewController__setState_animated_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained setState:2 animated:1];
  }

  [*(a1 + 32) setNeedsLayout];
  [*(a1 + 32) layoutIfNeeded];
  if (*(a1 + 56) == 10 && +[BKUIUtils containerEnrollmentStyleEnabled])
  {
    [*(a1 + 32) postEnrollDeActivate];
  }

  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void __63__BKUIPearlEnrollViewController__setState_animated_completion___block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 1072) = 0;
  [*(a1 + 32) finalizeInstructionAnimation];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

uint64_t __63__BKUIPearlEnrollViewController__setState_animated_completion___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 992) contentSize];
  v3 = v2;
  [*(*(a1 + 32) + 992) frame];
  v5 = v4;
  [*(*(a1 + 32) + 992) contentInset];
  v7 = v5 - v6;
  [*(*(a1 + 32) + 992) contentInset];
  if (v3 > v7 - v8)
  {
    [*(*(a1 + 32) + 992) flashScrollIndicators];
  }

  result = *(a1 + 40);
  if (result)
  {
    v10 = *(result + 16);

    return v10();
  }

  return result;
}

void __55__BKUIPearlEnrollViewController__setSubstate_animated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) bottomContainer];
  [v2 updateInstructionViewContentForState:*(*(a1 + 32) + 1116) substate:*(*(a1 + 32) + 1120)];

  v3 = MEMORY[0x277D75D18];
  if (*(a1 + 48))
  {
    v4 = 0.15;
  }

  else
  {
    v4 = 0.0;
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__BKUIPearlEnrollViewController__setSubstate_animated___block_invoke_3;
  v6[3] = &unk_278D09978;
  v7 = *(a1 + 40);
  [(UIView *)v3 bkui_animateWithDuration:v6 animations:0 completion:v4];
  v5 = [*(a1 + 32) view];
  [v5 setNeedsLayout];
}

void __62__BKUIPearlEnrollViewController_setState_animated_afterDelay___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 52);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__BKUIPearlEnrollViewController_setState_animated_afterDelay___block_invoke_2;
  v5[3] = &unk_278D09B20;
  objc_copyWeak(&v6, (a1 + 40));
  v5[4] = *(a1 + 32);
  [v2 _setState:v3 animated:v4 completion:v5];
  objc_destroyWeak(&v6);
}

uint64_t __62__BKUIPearlEnrollViewController_setState_animated_afterDelay___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_semaphore_signal(WeakRetained[132]);
  }

  v3 = *(a1 + 32);
  if (v3[279] == 6)
  {
    v4 = [v3 currentOperationHandler];
    if ([v4 isEnrollmentAugmentationOnly])
    {
    }

    else
    {
      v5 = [*(a1 + 32) enrollmentConfiguration];

      if (v5)
      {
        [(dispatch_semaphore_t *)v7 navigateToMidFlowPeriocularSplashScreenWithPrepareAction:0 completionAction:0];
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

void __62__BKUIPearlEnrollViewController_setState_animated_afterDelay___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (*(WeakRetained + 279) != *(a1 + 64))
  {
    v3 = dispatch_time(0, (*(a1 + 56) * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__BKUIPearlEnrollViewController_setState_animated_afterDelay___block_invoke_4;
    block[3] = &unk_278D0A688;
    block[4] = WeakRetained;
    v7 = *(a1 + 32);
    v4 = v7;
    v9 = v7;
    v10 = *(a1 + 64);
    dispatch_after(v3, MEMORY[0x277D85CD0], block);
    v5 = *(WeakRetained + 132);
    v6 = dispatch_time(0, 3000000000);
    dispatch_semaphore_wait(v5, v6);
  }
}

void __62__BKUIPearlEnrollViewController_setState_animated_afterDelay___block_invoke_4(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1116);
  v4 = *(*(a1 + 48) + 8);
  if (v3 == *(v4 + 24))
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 40) + 16);
    v7 = *MEMORY[0x277D85DE8];

    v6();
  }

  else if (*(a1 + 56) == 5)
  {
    *(v4 + 24) = v3;
    v8 = *(a1 + 40);
    (*(*(a1 + 40) + 16))();
    v9 = _BKUILoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 56);
      v11 = *(*(*(a1 + 48) + 8) + 24);
      v15[0] = 67109376;
      v15[1] = v10;
      v16 = 1024;
      v17 = v11;
      _os_log_impl(&dword_241B0A000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring state-startingState mismatch and moving to BKUIPearlEnrollStateInitialScanInProgress targetState:%i, startState:%i", v15, 0xEu);
    }

    v12 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v13 = *(v2 + 1056);
    v14 = *MEMORY[0x277D85DE8];

    dispatch_semaphore_signal(v13);
  }
}

- (void)clearPendingStateWorkItems
{
  workItemsManager = [(BKUIPearlEnrollViewController *)self workItemsManager];
  [workItemsManager removeAllWorkItems];
}

- (void)toggleDebug
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  bkui_IsInternalInstall = [currentDevice bkui_IsInternalInstall];

  if (bkui_IsInternalInstall)
  {
    enrollView = [(BKUIPearlEnrollViewController *)self enrollView];
    enrollView2 = [(BKUIPearlEnrollViewController *)self enrollView];
    [enrollView setDebugOverlayVisible:{objc_msgSend(enrollView2, "debugOverlayVisible") ^ 1}];

    debugLabel = self->_debugLabel;
    enrollView3 = [(BKUIPearlEnrollViewController *)self enrollView];
    -[UILabel setHidden:](debugLabel, "setHidden:", [enrollView3 debugOverlayVisible] ^ 1);
  }
}

- (void)toggleDebugAndSave
{
  [(BKUIPearlEnrollViewController *)self toggleDebug];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setBool:-[UILabel isHidden](self->_debugLabel forKey:{"isHidden") ^ 1, @"pearlDebugEnroll"}];
}

- (void)_updateDebugLabel
{
  v13 = *MEMORY[0x277D85DE8];
  statusString = self->_statusString;
  if (statusString)
  {
    progressString = self->_progressString;
    if (progressString)
    {
      progressString = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", statusString, progressString];
      text = [(UILabel *)self->_debugLabel text];
      v7 = [progressString isEqualToString:text];

      if ((v7 & 1) == 0)
      {
        v8 = _BKUILoggingFacility();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v12 = progressString;
          _os_log_impl(&dword_241B0A000, v8, OS_LOG_TYPE_DEFAULT, "Status update: %@", buf, 0xCu);
        }

        [(UILabel *)self->_debugLabel setText:progressString];
        view = [(BKUIPearlEnrollViewController *)self view];
        [view setNeedsLayout];
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setStatus:(id)status
{
  statusCopy = status;
  if (([statusCopy isEqualToString:self->_statusString] & 1) == 0)
  {
    objc_storeStrong(&self->_statusString, status);
    [(BKUIPearlEnrollViewController *)self _updateDebugLabel];
  }
}

- (void)pearlEnrollControllerCompleted
{
  delegate = [(BKUIPearlEnrollViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(BKUIPearlEnrollViewController *)self delegate];
    [delegate2 pearlEnrollControllerCompleted:self];
  }
}

- (double)percentOfPillsCompleted
{
  enrollView = [(BKUIPearlEnrollViewController *)self enrollView];
  [enrollView percentOfPillsCompleted];
  v4 = v3;

  return v4;
}

- (void)enrollView:(id)view willNudgeInDirection:(unint64_t)direction nudgeCount:(unint64_t)count
{
  if (!self->_substate)
  {
    v7 = [(BKUIPearlEnrollViewController *)self instructionView:view];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"NUDGE_TEXT" value:&stru_2853BB280 table:@"Pearl-periocular"];
    [v7 setInstruction:v9];

    instructionView = [(BKUIPearlEnrollViewController *)self instructionView];
    [instructionView setDetail:&stru_2853BB280];

    view = [(BKUIPearlEnrollViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)enrollView:(id)view didNudgeInDirection:(unint64_t)direction nudgeCount:(unint64_t)count
{
  viewCopy = view;
  if ((self->_state | 2) == 7 && !self->_substate)
  {
    v19 = viewCopy;
    bottomContainer = [(BKUIPearlEnrollViewController *)self bottomContainer];
    v8 = [bottomContainer _instructionTextForState:self->_state substate:self->_substate];

    bottomContainer2 = [(BKUIPearlEnrollViewController *)self bottomContainer];
    v10 = [bottomContainer2 _detailTextForState:self->_state substate:self->_substate];

    instructionView = [(BKUIPearlEnrollViewController *)self instructionView];
    instruction = [instructionView instruction];
    if ([v8 isEqualToString:instruction])
    {
      instructionView2 = [(BKUIPearlEnrollViewController *)self instructionView];
      v14 = [instructionView2 description];
      v15 = [v10 isEqualToString:v14];

      if (v15)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    instructionView3 = [(BKUIPearlEnrollViewController *)self instructionView];
    [instructionView3 setInstruction:v8];

    instructionView4 = [(BKUIPearlEnrollViewController *)self instructionView];
    [instructionView4 setDetail:v10];

    view = [(BKUIPearlEnrollViewController *)self view];
    [view setNeedsLayout];

LABEL_8:
    viewCopy = v19;
  }
}

- (void)didReachSmallNudgePeakForEnrollView:(id)view
{
  audioManager = [(BKUIPearlEnrollViewController *)self audioManager];
  [audioManager playHaptic:11095 withDelay:0.0];
}

- (void)didReachLargeNudgePeakForEnrollView:(id)view
{
  audioManager = [(BKUIPearlEnrollViewController *)self audioManager];
  [audioManager playHaptic:17239 withDelay:0.0];
}

- (void)cancelEnrollForRotationIfNeeded:(int64_t)needed
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = +[BKUIDevice sharedInstance];
  isRestrictedToLandscapeEnrollment = [v5 isRestrictedToLandscapeEnrollment];

  if (isRestrictedToLandscapeEnrollment)
  {
    if ((needed - 1) <= 2)
    {
      v7 = _BKUILoggingFacility();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134217984;
        neededCopy3 = needed;
LABEL_8:
        _os_log_impl(&dword_241B0A000, v7, OS_LOG_TYPE_DEFAULT, "cancelEnrollForRotationIfNeeded: cancelling now for orientation: %ld", &v10, 0xCu);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if ((needed - 2) <= 2)
  {
    v7 = _BKUILoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      neededCopy3 = needed;
      goto LABEL_8;
    }

LABEL_9:

    currentOperationHandler = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    [currentOperationHandler cancelEnrollForRotation];
    goto LABEL_12;
  }

  currentOperationHandler = _BKUILoggingFacility();
  if (os_log_type_enabled(currentOperationHandler, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    neededCopy3 = needed;
    _os_log_impl(&dword_241B0A000, currentOperationHandler, OS_LOG_TYPE_DEFAULT, "cancelEnrollForRotationIfNeeded: will not cancel for orientation: %ld", &v10, 0xCu);
  }

LABEL_12:

  v9 = *MEMORY[0x277D85DE8];
}

- (void)animateWithOrientation:(int64_t)orientation
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = _BKUILoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    orientationCopy = orientation;
    _os_log_impl(&dword_241B0A000, v5, OS_LOG_TYPE_DEFAULT, "animateWithOrientation: will cancelEnrollForRotationIfNeeded with orientation: %lu", &v7, 0xCu);
  }

  [(BKUIPearlEnrollViewController *)self cancelEnrollForRotationIfNeeded:orientation];
  if ([(BKUIPearlEnrollViewController *)self state]== 10)
  {
    [(BKUIPearlEnrollViewController *)self animateToSuccessCompletionLayout:orientation];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)animateToSuccessCompletionLayout:(int64_t)layout
{
  bottomContainer = [(BKUIPearlEnrollViewController *)self bottomContainer];
  [bottomContainer layoutIfNeeded];

  view = [(BKUIPearlEnrollViewController *)self view];
  [view layoutIfNeeded];
}

- (void)primeWithPasscode:(id)passcode
{
  passcodeCopy = passcode;
  currentOperationHandler = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  [currentOperationHandler setCredential:passcodeCopy];
}

- (void)primeWithExternalizedAuthContext:(id)context
{
  contextCopy = context;
  currentOperationHandler = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  [currentOperationHandler setExternalizedAuthContext:contextCopy];
}

- (void)refreshEscapeHatchForCurrentState
{
  escapeHatchButton = [(BKUIPearlEnrollViewController *)self escapeHatchButton];
  v3 = [(BKUIPearlEnrollViewController *)self _escapeHatchTitleForState:self->_state];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_2853BB280;
  }

  v6 = v5;

  v7 = [escapeHatchButton titleForState:0];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_2853BB280;
  }

  v10 = v9;

  currentOperationHandler = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  if ([currentOperationHandler shouldShowRetryUI])
  {
  }

  else
  {
    v12 = [(__CFString *)v10 isEqualToString:v6];

    if (v12)
    {
      goto LABEL_11;
    }
  }

  [escapeHatchButton setTitle:v6 forState:0];
  [(BKUIPearlEnrollViewController *)self updateButtonsVisibility];
LABEL_11:
}

- (void)updateButtonsVisibility
{
  bottomContainer = [(BKUIPearlEnrollViewController *)self bottomContainer];
  [bottomContainer updateButtonVisibility];
}

- (void)animateInstruction
{
  [(BKUIPearlEnrollViewController *)self updateButtonsVisibility];
  view = [(BKUIPearlEnrollViewController *)self view];
  [view layoutIfNeeded];
}

- (void)transitionToSuccessFromPeriocularSplash
{
  v12[1] = *MEMORY[0x277D85DE8];
  midFlowPeriocularSplashController = [(BKUIPearlEnrollViewController *)self midFlowPeriocularSplashController];
  if (!midFlowPeriocularSplashController)
  {
    [BKUIPearlEnrollViewController transitionToSuccessFromPeriocularSplash];
  }

  currentOperationHandler = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  v12[0] = currentOperationHandler;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v6 = [v5 mutableCopy];
  [(BKUIPearlEnrollViewController *)self setOperationHandlers:v6];

  enrollOperation = [currentOperationHandler enrollOperation];
  identity = [currentOperationHandler identity];
  [(BKUIPearlEnrollViewController *)self enrollOperation:enrollOperation finishedWithIdentity:identity animateImmediately:1];

  v9 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__BKUIPearlEnrollViewController_transitionToSuccessFromPeriocularSplash__block_invoke;
  block[3] = &unk_278D09978;
  block[4] = self;
  dispatch_after(v9, MEMORY[0x277D85CD0], block);

  v10 = *MEMORY[0x277D85DE8];
}

void __72__BKUIPearlEnrollViewController_transitionToSuccessFromPeriocularSplash__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) midFlowPeriocularSplashController];
  v3 = [v2 view];
  v4 = [v3 layer];
  [v4 removeAllAnimations];

  [MEMORY[0x277CD9FF0] flush];
  v5 = [*(a1 + 32) delegate];
  v6 = [v5 containerView];
  v7 = [*(a1 + 32) view];
  [v6 bringSubviewToFront:v7];

  v8 = [*(a1 + 32) view];
  [v8 setOrigin:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

  v9 = +[BKUIPearlEnrollAnimationManager sharedManager];
  v10 = *(a1 + 32);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __72__BKUIPearlEnrollViewController_transitionToSuccessFromPeriocularSplash__block_invoke_2;
  v14 = &unk_278D09978;
  v15 = v10;
  [v9 transitionTo:? completion:?];
}

uint64_t __72__BKUIPearlEnrollViewController_transitionToSuccessFromPeriocularSplash__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) midFlowPeriocularSplashController];
  v3 = [v2 view];
  [v3 removeFromSuperview];

  v4 = [*(a1 + 32) parentViewController];
  v5 = [*(a1 + 32) midFlowPeriocularSplashController];
  [v4 removeChildViewController:v5];

  v6 = *(a1 + 32);

  return [v6 setNeedsStatusBarAppearanceUpdate];
}

- (void)finalizeInstructionAnimation
{
  bottomContainer = [(BKUIPearlEnrollViewController *)self bottomContainer];
  [bottomContainer finalizeInstructionAnimation];

  [(BKUIPearlInstructionView *)self->_animatingInstructionView removeFromSuperview];
  animatingInstructionView = self->_animatingInstructionView;
  self->_animatingInstructionView = 0;

  view = [(BKUIPearlEnrollViewController *)self view];
  [view setNeedsLayout];

  view2 = [(BKUIPearlEnrollViewController *)self view];
  [view2 layoutIfNeeded];
}

- (void)setExistingIdentity:(id)identity
{
  identityCopy = identity;
  currentOperationHandler = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  [currentOperationHandler setIdentity:identityCopy];
}

- (void)startEnroll
{
  currentOperationHandler = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  [currentOperationHandler startEnroll];
}

- (void)restartEnroll
{
  if ([(BKUIPearlEnrollViewController *)self state]>= 3 && [(BKUIPearlEnrollViewController *)self state]!= 9 && [(BKUIPearlEnrollViewController *)self state]!= 8 && [(BKUIPearlEnrollViewController *)self state]!= 10)
  {
    getEnrollview = [(BKUIPearlEnrollViewController *)self getEnrollview];
    [getEnrollview percentOfPillsCompleted];
    v5 = v4;

    if (v5 < 1.0)
    {

      [(BKUIPearlEnrollViewController *)self _enableEnrollUI];
    }
  }
}

- (void)cancelEnroll
{
  if ([(BKUIPearlEnrollViewController *)self inBuddyGlassesFollowUp])
  {
    delegate = [(BKUIPearlEnrollViewController *)self delegate];
    [delegate pearlEnrollViewController:self finishedEnrollWithError:0];

    v4 = _BKUILoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241B0A000, v4, OS_LOG_TYPE_DEFAULT, "Pearl: Moving forward in buddy making current followup enrollment as skip. User has already enrolled Pearl + Perioular + Glasses", buf, 2u);
    }
  }

  else
  {
    v5 = _BKUILoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_241B0A000, v5, OS_LOG_TYPE_DEFAULT, "Pearl: cancelEnroll", v7, 2u);
    }

    currentOperationHandler = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    [currentOperationHandler cancelEnroll];

    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.biometrickitui.pearl_enroll" code:-1 userInfo:0];
    [(BKUIPearlEnrollViewController *)self endEnrollFlowWithError:v4];
  }
}

- (void)returnToEnroll
{
  if (self->_state != 9)
  {
    [BKUIPearlEnrollViewController returnToEnroll];
  }

  previousState = self->_previousState;

  [(BKUIPearlEnrollViewController *)self setState:previousState animated:1];
}

- (void)showMaskAndGlassesTutorialWithCompletion:(id)completion
{
  completionCopy = completion;
  [(BKUIPearlEnrollViewController *)self prepareForAnimationToState:2 fromState:2 subState:12 advancing:1];
  self->_substate = 12;
  v5 = MEMORY[0x277D75D18];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__BKUIPearlEnrollViewController_showMaskAndGlassesTutorialWithCompletion___block_invoke;
  v9[3] = &unk_278D09978;
  v9[4] = self;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__BKUIPearlEnrollViewController_showMaskAndGlassesTutorialWithCompletion___block_invoke_2;
  v7[3] = &unk_278D0A000;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [(UIView *)v5 bkui_animateWithDuration:v9 delay:v7 options:0.3 animations:0.15 completion:?];
}

void __74__BKUIPearlEnrollViewController_showMaskAndGlassesTutorialWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) finalizeInstructionAnimation];
  v2 = [*(a1 + 32) nextStateButton];
  v3 = [*(a1 + 32) _nextStateButtonTitleForState:*(*(a1 + 32) + 1116)];
  [v2 setTitle:v3 forState:0];

  v4 = [*(a1 + 32) escapeHatchButton];
  v5 = [*(a1 + 32) _escapeHatchTitleForState:*(*(a1 + 32) + 1116)];
  [v4 setTitle:v5 forState:0];

  [*(a1 + 32) updateButtonsVisibility];
  v6 = dispatch_time(0, 1500000000);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__BKUIPearlEnrollViewController_showMaskAndGlassesTutorialWithCompletion___block_invoke_3;
  v8[3] = &unk_278D09E98;
  v7 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v7;
  dispatch_after(v6, MEMORY[0x277D85CD0], v8);
}

uint64_t __74__BKUIPearlEnrollViewController_showMaskAndGlassesTutorialWithCompletion___block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 1120) = 0;
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removeGlassesUI
{
  currentOperationHandler = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  if ([currentOperationHandler supportsPeriocularEnrollment])
  {
    enrollmentConfiguration = [(BKUIPearlEnrollViewController *)self enrollmentConfiguration];

    if (enrollmentConfiguration)
    {
      v4 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__BKUIPearlEnrollViewController_removeGlassesUI__block_invoke;
      block[3] = &unk_278D09978;
      block[4] = self;
      dispatch_after(v4, MEMORY[0x277D85CD0], block);
    }
  }

  else
  {
  }
}

uint64_t __48__BKUIPearlEnrollViewController_removeGlassesUI__block_invoke(uint64_t a1)
{
  [*(a1 + 32) prepareForAnimationToState:8 fromState:7 subState:15 advancing:1];
  *(*(a1 + 32) + 1120) = 15;
  v2 = [*(a1 + 32) nextStateButton];
  v3 = [*(a1 + 32) _nextStateButtonTitleForState:*(*(a1 + 32) + 1116)];
  [v2 setTitle:v3 forState:0];

  v4 = [*(a1 + 32) escapeHatchButton];
  v5 = [*(a1 + 32) _escapeHatchTitleForState:*(*(a1 + 32) + 1116)];
  [v4 setTitle:v5 forState:0];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__BKUIPearlEnrollViewController_removeGlassesUI__block_invoke_2;
  v8[3] = &unk_278D09978;
  v9 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__BKUIPearlEnrollViewController_removeGlassesUI__block_invoke_3;
  v7[3] = &unk_278D099C0;
  v7[4] = v9;
  return [(UIView *)MEMORY[0x277D75D18] bkui_animateWithDuration:v8 delay:v7 options:0.3 animations:0.15 completion:?];
}

uint64_t __48__BKUIPearlEnrollViewController_removeGlassesUI__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) finalizeInstructionAnimation];
  v2 = *(a1 + 32);

  return [v2 updateButtonsVisibility];
}

- (void)enrollOperation:(id)operation finishedWithIdentity:(id)identity animateImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  operationCopy = operation;
  identityCopy = identity;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__BKUIPearlEnrollViewController_enrollOperation_finishedWithIdentity_animateImmediately___block_invoke;
  aBlock[3] = &unk_278D09F38;
  v10 = identityCopy;
  v28 = v10;
  selfCopy = self;
  v30 = immediatelyCopy;
  v11 = _Block_copy(aBlock);
  if (-[BKUIPearlEnrollViewController isFinalEnrollment](self, "isFinalEnrollment") || -[BKUIPearlEnrollViewController state](self, "state") == 9 && (!-[BKUIPearlEnrollViewController enrollmentConfiguration](self, "enrollmentConfiguration") || (-[BKUIPearlEnrollViewController currentOperationHandler](self, "currentOperationHandler"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 supportsPeriocularEnrollment], v12, (v13 & 1) == 0)))
  {
    if (immediatelyCopy)
    {
      v11[2](v11);
    }

    else
    {
      v24 = dispatch_time(0, 400000000);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __89__BKUIPearlEnrollViewController_enrollOperation_finishedWithIdentity_animateImmediately___block_invoke_192;
      v25[3] = &unk_278D09E20;
      v26 = v11;
      dispatch_after(v24, MEMORY[0x277D85CD0], v25);
    }
  }

  else
  {
    operationHandlers = [(BKUIPearlEnrollViewController *)self operationHandlers];
    firstObject = [operationHandlers firstObject];

    operationHandlers2 = [(BKUIPearlEnrollViewController *)self operationHandlers];
    [operationHandlers2 removeObjectAtIndex:0];

    currentOperationHandler = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    [currentOperationHandler setIdentity:v10];

    glassesFound = [firstObject glassesFound];
    currentOperationHandler2 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    [currentOperationHandler2 setGlassesFound:glassesFound];

    credential = [firstObject credential];
    currentOperationHandler3 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    [currentOperationHandler3 setCredential:credential];

    externalizedAuthContext = [firstObject externalizedAuthContext];
    currentOperationHandler4 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    [currentOperationHandler4 setExternalizedAuthContext:externalizedAuthContext];

    if ([(BKUIPearlEnrollViewController *)self isFinalEnrollment]&& [(BKUIPearlEnrollViewController *)self enrollmentConfiguration])
    {
      if ([v10 canAddPeriocularEnrollment] && objc_msgSend(firstObject, "glassesFound"))
      {
        [(BKUIPearlEnrollViewController *)self removeGlassesUI];
      }

      else
      {
        [(BKUIPearlEnrollViewController *)self enrollOperation:operationCopy finishedWithIdentity:v10 animateImmediately:0];
      }
    }
  }
}

void __89__BKUIPearlEnrollViewController_enrollOperation_finishedWithIdentity_animateImmediately___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = _BKUILoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) getEnrollview];
    [v4 percentOfPillsCompleted];
    v11 = 138412546;
    v12 = v3;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&dword_241B0A000, v2, OS_LOG_TYPE_DEFAULT, "Finished with identity: %@, UI complete = %f", &v11, 0x16u);
  }

  [*(a1 + 40) setStatus:@"Enroll completed"];
  v6 = [*(a1 + 40) currentOperationHandler];
  [v6 setIdentity:*(a1 + 32)];

  [*(a1 + 40) pearlEnrollControllerCompleted];
  if (*(a1 + 48) == 1)
  {
    v7 = [*(a1 + 40) getEnrollview];
    [v7 setPillsHidden:0];

    v8 = 0.600000024;
    if (*(a1 + 48))
    {
      v8 = 0.0;
    }
  }

  else
  {
    v8 = 0.600000024;
  }

  [*(a1 + 40) setState:10 animated:1 afterDelay:v8];
  v9 = [*(a1 + 40) view];
  [v9 setNeedsLayout];

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)isFinalEnrollment
{
  operationHandlers = [(BKUIPearlEnrollViewController *)self operationHandlers];
  v3 = [operationHandlers count] == 1;

  return v3;
}

- (void)_handleEnrollStateOnAppear
{
  if ([(BKUIPearlEnrollViewController *)self isGlassesEnrollmentOnly])
  {
    [(BKUIPearlEnrollViewController *)self setState:3 animated:1];
    currentOperationHandler = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    [currentOperationHandler matchUserForSecondPhaseEnrollmentWithCompletionAction:0];
  }

  else
  {

    [(BKUIPearlEnrollViewController *)self setState:2 animated:0];
  }
}

- (BOOL)hasPeriocularIdentityEnrolled
{
  v14 = *MEMORY[0x277D85DE8];
  currentOperationHandler = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  device = [currentOperationHandler device];
  v11 = 0;
  v4 = [device identitiesWithError:&v11];
  v5 = v11;

  if (v5)
  {
    v6 = _BKUILoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&dword_241B0A000, v6, OS_LOG_TYPE_DEFAULT, "BKUIPearl:hasPeriocularIdentityEnrolled Error fetching indentity :%@", buf, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_196];
    v8 = [v4 filteredArrayUsingPredicate:v6];
    v7 = [v8 count] != 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)showGlassesSkipUI
{
  if ([(BKUIPearlEnrollViewController *)self state]== 3)
  {
    currentOperationHandler = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    if ([currentOperationHandler shouldShowRetryUI])
    {
      currentOperationHandler2 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
      glassesEnforcementError = [currentOperationHandler2 glassesEnforcementError];
    }

    else
    {
      glassesEnforcementError = 0;
    }
  }

  else
  {
    glassesEnforcementError = 0;
  }

  v6 = [(BKUIPearlEnrollViewController *)self state]== 8 && [(BKUIPearlEnrollViewController *)self substate]== 15;
  if ([(BKUIPearlEnrollViewController *)self state]> 6)
  {
    isKindOfClass = 0;
  }

  else
  {
    currentOperationHandler3 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  if (self->_state == 9)
  {
    currentOperationHandler4 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    if ([currentOperationHandler4 glassesFound])
    {
      currentOperationHandler5 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
      objc_opt_class();
      v11 = objc_opt_isKindOfClass();

      glassesEnforcementError |= v11;
    }
  }

  return (glassesEnforcementError | v6 | isKindOfClass) & 1;
}

- (UIButton)nextStateButton
{
  bottomContainer = [(BKUIPearlEnrollViewController *)self bottomContainer];
  nextStateButton = [bottomContainer nextStateButton];

  return nextStateButton;
}

- (UIButton)escapeHatchButton
{
  bottomContainer = [(BKUIPearlEnrollViewController *)self bottomContainer];
  bottomLinkButton = [bottomContainer bottomLinkButton];

  return bottomLinkButton;
}

- (BKUIButtonTray)buttonTray
{
  bottomContainer = [(BKUIPearlEnrollViewController *)self bottomContainer];
  buttonTray = [bottomContainer buttonTray];

  return buttonTray;
}

- (UIView)nextStateButtonContainer
{
  buttonTray = [(BKUIPearlEnrollViewController *)self buttonTray];
  nextStateButtonContainer = [buttonTray nextStateButtonContainer];

  return nextStateButtonContainer;
}

- (UIButton)retryMatchOperationButton
{
  buttonTray = [(BKUIPearlEnrollViewController *)self buttonTray];
  topLinkButton = [buttonTray topLinkButton];

  return topLinkButton;
}

- (BKUIPearlEnrollViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
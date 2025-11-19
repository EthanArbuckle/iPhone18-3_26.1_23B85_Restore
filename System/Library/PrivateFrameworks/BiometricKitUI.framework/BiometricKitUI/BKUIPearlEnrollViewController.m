@interface BKUIPearlEnrollViewController
+ (BOOL)_shouldShowAccessibilityOptionForState:(int)a3 poseStatus:(id)a4;
+ (void)preloadWithCompletion:(id)a3;
- (BKUIButtonTray)buttonTray;
- (BKUIPearlEnrollView)enrollView;
- (BKUIPearlEnrollViewBottomContainer)bottomContainer;
- (BKUIPearlEnrollViewController)initWithPreloadedState:(id)a3;
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
- (id)_nextStateButtonTitleForState:(int)a3 subState:(int)a4;
- (id)currentOperationHandler;
- (id)getEnrollview;
- (unint64_t)enrollmentConfiguration;
- (void)_cancelEnrollOperationForEscapeHatchButtonTap;
- (void)_endEnrollFlowWithError:(id)a3;
- (void)_handleEnrollStateOnAppear;
- (void)_handleGlassesSkipAction;
- (void)_logRemovePeriocularFailure:(id)a3;
- (void)_setupUI;
- (void)_updateDebugLabel;
- (void)_updateLeftBarButtonItem;
- (void)animateInstruction;
- (void)animateToSuccessCompletionLayout:(int64_t)a3;
- (void)animateWithOrientation:(int64_t)a3;
- (void)cancelEnroll;
- (void)cancelEnrollForRotationIfNeeded:(int64_t)a3;
- (void)cleanupEnrollView;
- (void)clearPendingStateWorkItems;
- (void)dealloc;
- (void)didBecomeActive:(id)a3;
- (void)didEnterBackground:(id)a3;
- (void)didReachLargeNudgePeakForEnrollView:(id)a3;
- (void)didReachSmallNudgePeakForEnrollView:(id)a3;
- (void)endEnrollFlowWithError:(id)a3;
- (void)enrollOperation:(id)a3 finishedWithIdentity:(id)a4 animateImmediately:(BOOL)a5;
- (void)enrollView:(id)a3 didNudgeInDirection:(unint64_t)a4 nudgeCount:(unint64_t)a5;
- (void)enrollView:(id)a3 willNudgeInDirection:(unint64_t)a4 nudgeCount:(unint64_t)a5;
- (void)escapeHatchButtonPressed;
- (void)finalizeInstructionAnimation;
- (void)forceDarkBackground:(BOOL)a3 animated:(BOOL)a4;
- (void)navigateToMidFlowPeriocularSplashScreenWithPrepareAction:(id)a3 completionAction:(id)a4;
- (void)nextStateButtonPressed:(id)a3;
- (void)pearlEnrollControllerCompleted;
- (void)primeWithExternalizedAuthContext:(id)a3;
- (void)primeWithPasscode:(id)a3;
- (void)refreshEscapeHatchForCurrentState;
- (void)removeGlassesUI;
- (void)restartEnroll;
- (void)retryPressed;
- (void)returnToEnroll;
- (void)setEnrollmentConfiguration:(unint64_t)a3;
- (void)setExistingIdentity:(id)a3;
- (void)setStatus:(id)a3;
- (void)setupDebugLabel;
- (void)setupDebugUITraits;
- (void)showMaskAndGlassesTutorialWithCompletion:(id)a3;
- (void)startEnroll;
- (void)toggleDebug;
- (void)toggleDebugAndSave;
- (void)traceAnalyticsForEndEnrollFlowWithError:(id)a3;
- (void)transitionToSuccessFromPeriocularSplash;
- (void)updateButtonsVisibility;
- (void)updatePeriocularEnrollmentSettings:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willResignActive:(id)a3;
@end

@implementation BKUIPearlEnrollViewController

- (void)nextStateButtonPressed:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(BKUIPearlEnrollViewController *)self nextStateButton];
  [v5 setEnabled:0];

  if ([(BKUIPearlEnrollViewController *)self state]== 2)
  {
    v6 = _BKUILoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241B0A000, v6, OS_LOG_TYPE_DEFAULT, "Next state button pressed, startEnroll...", buf, 2u);
    }

    v7 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    if ([v7 supportsPeriocularEnrollment])
    {
      v8 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
      v9 = [v8 isEnrollmentAugmentationOnly];

      if (v9)
      {
        v10 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
        [v10 matchUserForSecondPhaseEnrollmentWithCompletionAction:0];

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
        v41 = [(BKUIPearlEnrollViewController *)self bioStreamEventHelper];
        [v41 sendSuccessfulEnrollEvent];

        [(BKUIPearlEnrollViewController *)self updatePeriocularEnrollmentSettings:v40];
        objc_destroyWeak(&v50);
        objc_destroyWeak(buf);
      }

      goto LABEL_44;
    }

    if ([(BKUIPearlEnrollViewController *)self state]== 8)
    {
      v21 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
        v23 = [v22 enrollOperation];
        if (!v23)
        {
          v46 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
          v47 = [v46 supportsPeriocularEnrollment];

          if (v47)
          {
            [(BKUIPearlEnrollViewController *)self updatePeriocularEnrollmentSettings:0];
          }

          goto LABEL_23;
        }
      }
    }

LABEL_23:
    v24 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    v25 = [v24 supportsPeriocularEnrollment];

    v26 = _BKUILoggingFacility();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (v25)
    {
      if (v27)
      {
        *buf = 0;
        _os_log_impl(&dword_241B0A000, v26, OS_LOG_TYPE_DEFAULT, "Button Pressed match then start second phase enrollment ...", buf, 2u);
      }

      objc_initWeak(buf, self);
      v28 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __84__BKUIPearlEnrollViewController_ButtonActionWithNavigation__nextStateButtonPressed___block_invoke_3;
      v51[3] = &unk_278D09950;
      objc_copyWeak(&v52, buf);
      [v28 matchUserForSecondPhaseEnrollmentWithCompletionAction:v51];

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

  v11 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  if ([v11 supportsPeriocularEnrollment])
  {
    v12 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    v13 = [v12 glassesFound];

    if (v13)
    {
      v14 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
      v15 = [v14 enrollOperation];

      if (v15)
      {
        v16 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
        v54 = 0;
        v17 = [v16 completeCurrentEnrollOperationWithError:&v54];
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
        v43 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __84__BKUIPearlEnrollViewController_ButtonActionWithNavigation__nextStateButtonPressed___block_invoke;
        v55[3] = &unk_278D09950;
        objc_copyWeak(&v56, buf);
        [v43 matchUserForSecondPhaseEnrollmentWithCompletionAction:v55];

        objc_destroyWeak(&v56);
        objc_destroyWeak(buf);
      }

      goto LABEL_44;
    }
  }

  else
  {
  }

  v29 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  v53 = 0;
  v30 = [v29 completeCurrentEnrollOperationWithError:&v53];
  v31 = v53;

  if (v30)
  {
    v32 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    if ([v32 enrollmentType] != 1)
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

    v33 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    if ([v33 isEnrollmentAugmentationOnly])
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

- (void)updatePeriocularEnrollmentSettings:(id)a3
{
  v4 = a3;
  v5 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  v16 = 0;
  v17 = 0;
  v6 = [v5 getAuthContextForCredentialError:&v17 authContext:&v16];
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

  v10 = [(BKUIPearlEnrollViewController *)self enrollmentConfiguration];
  if (v10 - 3 < 2 || v10 == 1)
  {
    if (![(BKUIPearlEnrollViewController *)self enrollmentAlreadyHasExistingPeriocularTemplate])
    {
      v11 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
      v12 = [v11 identity];
      v13 = [v12 hasPeriocularEnrollment];

      v14 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
      v15 = [v14 device];
      [BKUIPeriocularEnableSplashViewController setPeriocularFaceIDMatchEnabledForUserConfigurationWithDevice:v15 credentialSet:v6 authContext:v8 enabled:v13 != 0 completion:v4];

      goto LABEL_13;
    }
  }

  else if (v10)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v4[2](v4);
  }

LABEL_13:
}

- (BOOL)midFlowPeriocularSplashShowing
{
  v2 = [(BKUIPearlEnrollViewController *)self midFlowPeriocularSplashController];
  v3 = [v2 view];
  v4 = [v3 window];
  v5 = v4 != 0;

  return v5;
}

- (void)navigateToMidFlowPeriocularSplashScreenWithPrepareAction:(id)a3 completionAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKUIPearlEnrollViewController *)self delegate];
  v9 = [v8 containerView];
  [v9 setClipsToBounds:1];

  v10 = dispatch_time(0, 700000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __135__BKUIPearlEnrollViewController_ButtonActionWithNavigation__navigateToMidFlowPeriocularSplashScreenWithPrepareAction_completionAction___block_invoke;
  block[3] = &unk_278D09BC0;
  block[4] = self;
  v14 = v7;
  v15 = v6;
  v11 = v6;
  v12 = v7;
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
      v7 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
      v8 = [v7 device];
      v9 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
      v10 = [v9 identity];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __85__BKUIPearlEnrollViewController_ButtonActionWithNavigation__escapeHatchButtonPressed__block_invoke;
      v46[3] = &unk_278D09BE8;
      objc_copyWeak(&v47, &buf);
      [v8 removePeriocularEnrollmentsFromIdentity:v10 removeAll:1 reply:v46];

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

      v12 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
      v13 = [v12 enrollmentType] == 1;

      if (v13)
      {
        v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.biometrickitui.pearl_enroll" code:-2 userInfo:0];
        [(BKUIPearlEnrollViewController *)self endEnrollFlowWithError:v14];
      }

      else
      {
        v23 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
        v24 = [v23 isEnrollmentAugmentationOnly];

        if (v24)
        {
          objc_initWeak(&buf, self);
          v25 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
          v26 = [v25 device];
          v27 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
          v28 = [v27 identity];
          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = __85__BKUIPearlEnrollViewController_ButtonActionWithNavigation__escapeHatchButtonPressed__block_invoke_36;
          v44[3] = &unk_278D09BE8;
          objc_copyWeak(&v45, &buf);
          [v26 removePeriocularEnrollmentsFromIdentity:v28 removeAll:1 reply:v44];

          objc_destroyWeak(&v45);
          objc_destroyWeak(&buf);
        }

        else
        {
          [(BKUIPearlEnrollViewController *)self _cancelEnrollOperationForEscapeHatchButtonTap];
          v29 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
          v30 = [v29 enrollOperation];
          [v30 setDelegate:0];

          v31 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
          v48 = v31;
          v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
          v33 = [v32 mutableCopy];
          [(BKUIPearlEnrollViewController *)self setOperationHandlers:v33];

          objc_initWeak(&buf, self);
          v34 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
          v35 = [v34 device];
          v36 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
          v37 = [v36 identity];
          v41[0] = MEMORY[0x277D85DD0];
          v41[1] = 3221225472;
          v41[2] = __85__BKUIPearlEnrollViewController_ButtonActionWithNavigation__escapeHatchButtonPressed__block_invoke_3;
          v41[3] = &unk_278D09C10;
          objc_copyWeak(&v43, &buf);
          v38 = v31;
          v42 = v38;
          [v35 removePeriocularEnrollmentsFromIdentity:v37 removeAll:1 reply:v41];

          objc_destroyWeak(&v43);
          objc_destroyWeak(&buf);
        }
      }
    }

    else
    {
      v15 = objc_opt_class();
      v16 = [(BKUIPearlEnrollViewController *)self state];
      v17 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
      v18 = [v17 poseStatus];
      LODWORD(v15) = [v15 _shouldShowAccessibilityOptionForState:v16 poseStatus:v18];

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
        v20 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
        v21 = [v20 supportsPeriocularEnrollment];

        if (v21)
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

- (void)_logRemovePeriocularFailure:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _BKUILoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 localizedDescription];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_241B0A000, v4, OS_LOG_TYPE_DEFAULT, "removePeriocularEnrollmentsFromIdentity unsucesful %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_cancelEnrollOperationForEscapeHatchButtonTap
{
  v3 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  v4 = [v3 enrollmentType];

  v5 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  v6 = v5;
  if (v4 == 1)
  {
    [v5 cancelEnroll];
  }

  else
  {
    [v5 cancelEnrollPreserveIdentity];
  }
}

+ (BOOL)_shouldShowAccessibilityOptionForState:(int)a3 poseStatus:(id)a4
{
  v5 = a4;
  if ([v5 count])
  {
    v6 = [v5 objectAtIndexedSubscript:8];
    v7 = [v6 integerValue] == 3;
  }

  else
  {
    v7 = 0;
  }

  v8 = (a3 & 0xFFFFFFFD) == 5 && v7;

  return v8;
}

- (void)retryPressed
{
  if ([(BKUIPearlEnrollViewController *)self state]== 3)
  {
    v3 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    v4 = [v3 shouldShowRetryUI];

    if (v4)
    {
      v5 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
      [v5 retryPressed];

      v7 = [(BKUIPearlEnrollViewController *)self buttonTray];
      v6 = [v7 topLinkButton];
      [v6 setEnabled:0];
    }
  }
}

- (void)_handleGlassesSkipAction
{
  if ([(BKUIPearlEnrollViewController *)self state]== 3)
  {
    v3 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    if ([v3 shouldShowRetryUI])
    {
      v4 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
      v5 = [v4 glassesEnforcementError];

      if (v5)
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

  v8 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  v9 = [v8 enrollOperation];
  [v9 setDelegate:0];

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

+ (void)preloadWithCompletion:(id)a3
{
  v3 = a3;
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
  v16 = v3;
  v12 = v9;
  v13 = v3;
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

- (BKUIPearlEnrollViewController)initWithPreloadedState:(id)a3
{
  v26[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v25.receiver = self;
  v25.super_class = BKUIPearlEnrollViewController;
  v6 = [(BKUIPearlEnrollViewController *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_preloadedState, a3);
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

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:v7 selector:sel_didBecomeActive_ name:*MEMORY[0x277D76648] object:0];

    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v7 selector:sel_willResignActive_ name:*MEMORY[0x277D76768] object:0];

    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    [v16 addObserver:v7 selector:sel_didEnterBackground_ name:*MEMORY[0x277D76660] object:0];

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
  v2 = [(BKUIPearlEnrollViewController *)self operationHandlers];
  v3 = [v2 firstObject];

  return v3;
}

- (void)setEnrollmentConfiguration:(unint64_t)a3
{
  if (a3 == 2)
  {
    v4 = 3;
  }

  else
  {
    v4 = a3;
  }

  v5 = [(BKUIPearlEnrollViewController *)self inBuddy];
  v10 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  v6 = [v10 credential];
  v7 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  v8 = [v7 externalizedAuthContext];
  v9 = [BKUIFaceIDEnrollOperationsHandler handlersForEnrollmentConfiguration:v4 inBuddy:v5 delegate:self credential:v6 externalizedAuthContext:v8];
  [(BKUIPearlEnrollViewController *)self setOperationHandlers:v9];
}

- (unint64_t)enrollmentConfiguration
{
  v2 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  v3 = [v2 enrollmentConfiguration];

  return v3;
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

  v4 = [(BKUIPearlEnrollViewController *)self enrollView];
  [v4 postEnrollDeActivate];

  v5 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  [v5 cleanupEnroll];

  v6 = [(BKUIPearlEnrollViewController *)self audioManager];
  [v6 cleanupHapticsAndSound];

  [(BKUIPearlEnrollViewController *)self setOperationHandlers:0];
}

- (void)_endEnrollFlowWithError:(id)a3
{
  v7 = a3;
  [(BKUIPearlEnrollViewController *)self cleanupEnrollView];
  v4 = [(BKUIPearlEnrollViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(BKUIPearlEnrollViewController *)self delegate];
    [v6 pearlEnrollViewController:self finishedEnrollWithError:v7];
  }
}

- (void)endEnrollFlowWithError:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _BKUILoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 localizedDescription];
    *buf = 138412290;
    v50 = v6;
    _os_log_impl(&dword_241B0A000, v5, OS_LOG_TYPE_DEFAULT, "Pearl: end enroll flow with error %@", buf, 0xCu);
  }

  [(BKUIPearlEnrollViewController *)self traceAnalyticsForEndEnrollFlowWithError:v4];
  v7 = [v4 domain];
  if ([v7 isEqualToString:@"com.apple.biometrickitui.pearl_enroll"])
  {
    v8 = [v4 code] == -1;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 domain];
  if ([v9 isEqualToString:@"com.apple.biometrickitui.pearl_enroll"])
  {
    v10 = [v4 code] == -2;
  }

  else
  {
    v10 = 0;
  }

  if (v4 != 0 && !v8 && !v10)
  {
    v11 = [(BKUIPearlEnrollViewController *)self inBuddy];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"ENROLL_FAILED_GENERIC" value:&stru_2853BB280 table:@"Pearl-periocular"];

    v14 = [v4 domain];
    v44 = v11;
    if (([v14 isEqualToString:@"com.apple.biometrickitui.biokit"] & 1) == 0)
    {

      v15 = 0;
      goto LABEL_18;
    }

    v15 = [v4 code];

    if (v15 > 6)
    {
      if (v15 != 7)
      {
        if (v15 != 8)
        {
          goto LABEL_18;
        }

        v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v27 = [v26 localizedStringForKey:@"ENROLL_FAILED_INTERLOCKED_TITLE" value:&stru_2853BB280 table:@"Pearl-periocular"];

        v28 = [(BKUIPearlEnrollViewController *)self inBuddy];
        v29 = @"ENROLL_FAILED_INTERLOCKED_MESSAGE_SETTINGS";
        if (v28)
        {
          v29 = @"ENROLL_FAILED_INTERLOCKED_MESSAGE_BUDDY";
        }

        v43 = v27;
LABEL_34:
        v21 = v29;
        v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v19 = [v32 localizedStringForKey:v21 value:&stru_2853BB280 table:@"Pearl-periocular"];

        v33 = [MEMORY[0x277D75418] currentDevice];
        v34 = [v33 userInterfaceIdiom];

        if (v34 != 1)
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
        v46 = v4;
        v47 = self;
        [v37 actionWithTitle:v39 style:0 handler:v45];
        v41 = v40 = v13;
        [v36 addAction:v41];

        [(BKUIPearlEnrollViewController *)self presentViewController:v36 animated:1 completion:0];
        goto LABEL_39;
      }

      v43 = v13;
      v30 = [(BKUIPearlEnrollViewController *)self inBuddy];
      v29 = @"ENROLL_FAILED_TOO_COLD_SETTINGS";
      v31 = @"ENROLL_FAILED_TOO_COLD_BUDDY";
    }

    else
    {
      if (v15 != 5)
      {
        if (v15 == 6)
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

        v24 = [MEMORY[0x277D75418] currentDevice];
        v25 = [v24 bkui_IsInternalInstall];

        v21 = 0;
        if (!v25 || !v15)
        {
          goto LABEL_38;
        }

        v20 = [v19 stringByAppendingFormat:@"\nInternal Message: Reason %i", v15];
        v21 = 0;
        goto LABEL_36;
      }

      v43 = v13;
      v30 = [(BKUIPearlEnrollViewController *)self inBuddy];
      v29 = @"ENROLL_FAILED_TOO_HOT_SETTINGS";
      v31 = @"ENROLL_FAILED_TOO_HOT_BUDDY";
    }

    if (v30)
    {
      v29 = v31;
    }

    goto LABEL_34;
  }

  [(BKUIPearlEnrollViewController *)self _endEnrollFlowWithError:v4];
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

- (void)traceAnalyticsForEndEnrollFlowWithError:(id)a3
{
  v18 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[BKUIPearlEnrollViewController inBuddy](self, "inBuddy")}];
  [v4 setObject:v5 forKey:@"inBuddy"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_state];
  [v4 setObject:v6 forKey:@"enrollmentState"];

  v7 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];

  if (v7)
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    v10 = [v8 numberWithInteger:{objc_msgSend(v9, "enrollmentType")}];
    [v4 setObject:v10 forKey:@"enrollmentType"];

    v11 = MEMORY[0x277CCABB0];
    v12 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    v13 = [v11 numberWithInteger:{objc_msgSend(v12, "glassesRequirement")}];
    [v4 setObject:v13 forKey:@"enrollmentNeedsGlasses"];
  }

  if (v18)
  {
    v14 = [v18 domain];
    v15 = [v14 stringByAppendingFormat:@" (%li)", objc_msgSend(v18, "code")];
    [v4 setObject:v15 forKey:@"error"];
  }

  v16 = [(BKUIPearlEnrollViewController *)self analyticsManager];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v4];
  [v16 traceEvent:@"com.apple.BKUI.FaceIDEnrollmentEnded" withPayload:v17];
}

- (void)didBecomeActive:(id)a3
{
  v4 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  v5 = [v4 isActive];

  if (v5)
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

- (void)willResignActive:(id)a3
{
  v4 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  v5 = [v4 isActive];

  if (v5)
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

- (void)didEnterBackground:(id)a3
{
  v4 = _BKUILoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, v4, OS_LOG_TYPE_DEFAULT, "Pearl: Entering background now", buf, 2u);
  }

  v5 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  if ([v5 isActive])
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

    v9 = [(BKUIPearlEnrollViewController *)self operationHandlers];
    [v9 enumerateObjectsUsingBlock:&__block_literal_global_8];
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
    v11 = [(BKUIPearlEnrollViewController *)self parentViewController];
    v12 = [v11 navigationController];
    v13 = [v12 topViewController];
    v14 = [(BKUIPearlEnrollViewController *)self parentViewController];

    if (v13 == v14)
    {
      goto LABEL_5;
    }
  }

  if (![(BKUIPearlEnrollViewController *)self inBuddy])
  {
    v9 = _BKUILoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_241B0A000, v9, OS_LOG_TYPE_DEFAULT, "Pearl: Ending enroll due to enter background in Settings", v15, 2u);
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

  v4 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  [v4 cancelCurrentEnrollmentOperationIfUnfinished];

  [(BKUIPearlEnrollView *)self->_enrollView setState:0 completion:0];
  [(BKUIPearlEnrollViewController *)self cleanupEnrollView];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = BKUIPearlEnrollViewController;
  [(BKUIPearlEnrollViewController *)&v6 dealloc];
}

- (void)forceDarkBackground:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_darkBackground != a3)
  {
    v12 = v4;
    v13 = v5;
    v6 = a4;
    self->_darkBackground = a3;
    if (self->_state == 10 && !a3)
    {
      [(_UIBackdropView *)self->_darkTrayBackdrop setHidden:1];
      [(_UIBackdropView *)self->_lightTrayBackdrop setHidden:1];
    }

    v9 = 0.3;
    v10[1] = 3221225472;
    v10[0] = MEMORY[0x277D85DD0];
    v10[2] = __62__BKUIPearlEnrollViewController_forceDarkBackground_animated___block_invoke;
    v10[3] = &unk_278D0A110;
    if (!v6)
    {
      v9 = 0.0;
    }

    v11 = a3;
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
  v4 = [(BKUIPearlEnrollViewController *)self enrollView];
  [v4 setDelegate:self];

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
  v6 = [MEMORY[0x277D75348] whiteColor];
  [(UILabel *)v5 setTextColor:v6];

  [(UILabel *)self->_debugLabel setTextAlignment:1];
  [(UILabel *)self->_debugLabel setNumberOfLines:0];
  [(UILabel *)self->_debugLabel setHidden:1];
  v7 = [(BKUIPearlEnrollViewController *)self view];
  [v7 addSubview:self->_debugLabel];

  if (os_variant_has_internal_ui())
  {
    v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v9 = [v8 BOOLForKey:@"pearlDebugEnroll"];

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
  v4 = [(BKUIPearlEnrollControllerPreloadedState *)self->_preloadedState acquireCachedVideoCaptureSession];
  v5 = [(BKUIPearlEnrollView *)v3 initWithVideoCaptureSession:v4 inSheet:[(BKUIPearlEnrollViewController *)self inSheet] squareNeedsPositionLayout:0];
  [(BKUIPearlEnrollViewController *)self setEnrollView:v5];

  v6 = [(BKUIPearlEnrollViewController *)self view];
  v7 = [(BKUIPearlEnrollViewController *)self enrollView];
  [v6 addSubview:v7];

  v8 = [(BKUIPearlEnrollViewController *)self enrollView];
  [v8 preEnrollActivate];

  v9 = [(BKUIPearlEnrollViewController *)self enrollView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = +[BKUIDevice sharedInstance];
  if ([v10 isZoomEnabled])
  {
    v11 = [MEMORY[0x277D75418] currentDevice];
    v12 = [v11 userInterfaceIdiom];

    if (v12)
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

  v14 = [(BKUIPearlEnrollViewController *)self enrollView];
  v15 = [v14 heightAnchor];
  v16 = [v15 constraintEqualToConstant:v13];
  [(BKUIPearlEnrollViewController *)self setEnrollViewHeightConstraint:v16];

  v17 = [(BKUIPearlEnrollViewController *)self enrollView];
  v18 = [v17 topAnchor];
  v19 = [(BKUIPearlEnrollViewController *)self view];
  v20 = [v19 safeAreaLayoutGuide];
  v21 = [v20 topAnchor];
  v22 = [v18 constraintEqualToAnchor:v21];
  [(BKUIPearlEnrollViewController *)self setEnrollViewTopConstraint:v22];

  v23 = [(BKUIPearlEnrollViewController *)self view];
  [v23 frame];
  v25 = v24;
  v26 = [(BKUIPearlEnrollViewController *)self view];
  [v26 bounds];
  v28 = v27;

  v29 = [[BKUIButtonTray alloc] initWithFrame:0.0, 0.0, v25, v28];
  v30 = [[BKUIButtonTray alloc] initWithFrame:0.0, 0.0, v25, v28];
  if ([(BKUIPearlEnrollViewController *)self enrollmentConfiguration]!= 4)
  {
    v31 = [(BKUIButtonTray *)v30 nextStateButton];
    [v31 setAlpha:1.0];
  }

  v32 = [BKUIPearlEnrollViewBottomContainer alloc];
  inBuddy = self->_inBuddy;
  v134 = v29;
  v34 = [[BKUIContainerScrollView alloc] initWithFrame:v29 buttonTray:0.0, 0.0, v25, v28];
  v133 = v30;
  v35 = [[BKUIContainerScrollView alloc] initWithFrame:v30 buttonTray:0.0, 0.0, v25, v28];
  v36 = [(BKUIPearlEnrollViewBottomContainer *)v32 initWithFrame:inBuddy inBuddy:v34 scrollView:v35 overlapScrollView:self delegate:0 squareNeedsPositionLayout:0.0, 0.0, v25, v28];
  [(BKUIPearlEnrollViewController *)self setBottomContainer:v36];

  v37 = [MEMORY[0x277D75418] currentDevice];
  v38 = [v37 userInterfaceIdiom];

  v39 = 0x277CBE000;
  if (v38 == 1)
  {
    v40 = objc_alloc_init(MEMORY[0x277D756D0]);
    v41 = [(BKUIPearlEnrollViewController *)self bottomContainer];
    [v41 setInstructionBaselineLayoutGuide:v40];

    v42 = [(BKUIPearlEnrollViewController *)self view];
    v43 = [(BKUIPearlEnrollViewController *)self bottomContainer];
    v44 = [v43 instructionBaselineLayoutGuide];
    [v42 addLayoutGuide:v44];

    if ([(BKUIPearlEnrollViewController *)self isDisplayZoomEnabled])
    {
      v45 = 0.64;
    }

    else
    {
      v45 = 0.62;
    }

    v46 = [(BKUIPearlEnrollViewController *)self bottomContainer];
    v47 = [v46 instructionBaselineLayoutGuide];
    v48 = [v47 heightAnchor];
    v49 = [(BKUIPearlEnrollViewController *)self view];
    v50 = [v49 heightAnchor];
    v51 = [v48 constraintEqualToAnchor:v50 multiplier:v45];

    v52 = [(BKUIPearlEnrollViewController *)self enrollView];
    v53 = [v52 heightAnchor];
    v54 = [(BKUIPearlEnrollViewController *)self view];
    v55 = [v54 widthAnchor];
    v56 = [(BKUIPearlEnrollViewController *)self inSheet];
    v57 = 1.0;
    if (v56)
    {
      v57 = 0.75;
    }

    v58 = [v53 constraintEqualToAnchor:v55 multiplier:v57];
    [(BKUIPearlEnrollViewController *)self setEnrollViewHeightConstraint:v58];

    v59 = objc_alloc_init(MEMORY[0x277D756D0]);
    v60 = [(BKUIPearlEnrollViewController *)self view];
    [v60 addLayoutGuide:v59];

    v130 = v59;
    v61 = [v59 topAnchor];
    v62 = [(BKUIPearlEnrollViewController *)self view];
    v63 = [v62 topAnchor];
    v64 = [v61 constraintEqualToAnchor:v63];
    [v64 setActive:1];

    v65 = [v59 heightAnchor];
    v66 = [(BKUIPearlEnrollViewController *)self view];
    v67 = [v66 heightAnchor];
    v68 = [v65 constraintEqualToAnchor:v67 multiplier:0.07];
    [v68 setActive:1];

    v69 = [(BKUIPearlEnrollViewController *)self enrollView];
    v70 = [v69 topAnchor];
    v71 = [(BKUIPearlEnrollViewController *)self view];
    v72 = [v71 topAnchor];
    v73 = [v70 constraintEqualToAnchor:v72];
    [(BKUIPearlEnrollViewController *)self setEnrollViewTopConstraint:v73];

    v74 = MEMORY[0x277CCAAD0];
    v75 = [(BKUIPearlEnrollViewController *)self bottomContainer];
    v76 = [v75 instructionBaselineLayoutGuide];
    v77 = [v76 topAnchor];
    v78 = [(BKUIPearlEnrollViewController *)self view];
    v79 = [v78 topAnchor];
    v80 = [v77 constraintEqualToAnchor:v79];
    v137[0] = v80;
    v137[1] = v51;
    v81 = v51;
    v82 = [MEMORY[0x277CBEA60] arrayWithObjects:v137 count:2];
    v83 = v74;
    v39 = 0x277CBE000uLL;
    [v83 activateConstraints:v82];
  }

  v122 = MEMORY[0x277CCAAD0];
  v131 = [(BKUIPearlEnrollViewController *)self enrollViewHeightConstraint];
  v136[0] = v131;
  v128 = [(BKUIPearlEnrollViewController *)self enrollViewTopConstraint];
  v136[1] = v128;
  v126 = [(BKUIPearlEnrollViewController *)self enrollView];
  v124 = [v126 widthAnchor];
  v84 = [(BKUIPearlEnrollViewController *)self view];
  v85 = [v84 widthAnchor];
  v86 = [v124 constraintEqualToAnchor:v85];
  v136[2] = v86;
  v87 = [(BKUIPearlEnrollViewController *)self enrollView];
  v88 = [v87 centerXAnchor];
  v89 = [(BKUIPearlEnrollViewController *)self view];
  v90 = [v89 centerXAnchor];
  v91 = [v88 constraintEqualToAnchor:v90];
  v136[3] = v91;
  v92 = [*(v39 + 2656) arrayWithObjects:v136 count:4];
  [v122 activateConstraints:v92];

  v93 = [MEMORY[0x277D75418] currentDevice];
  LODWORD(v85) = [v93 bkui_IsInternalInstall];

  if (v85)
  {
    v94 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_toggleDebugAndSave];
    [v94 setNumberOfTouchesRequired:3];
    v95 = [(BKUIPearlEnrollViewController *)self view];
    [v95 addGestureRecognizer:v94];
  }

  v96 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  [v96 setTranslatesAutoresizingMaskIntoConstraints:0];

  v97 = [(BKUIPearlEnrollViewController *)self view];
  v98 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  [v97 addSubview:v98];

  v99 = [MEMORY[0x277D75418] currentDevice];
  v100 = [v99 userInterfaceIdiom];

  v101 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  v102 = [v101 topAnchor];
  if (v100 == 1)
  {
    v103 = [(BKUIPearlEnrollViewController *)self bottomContainer];
    v104 = [v103 instructionBaselineLayoutGuide];
    v105 = [v104 bottomAnchor];
    v106 = [v102 constraintEqualToAnchor:v105];
    [v106 setActive:1];
  }

  else
  {
    v103 = [(BKUIPearlEnrollViewController *)self getEnrollview];
    v104 = [v103 bottomAnchor];
    v105 = [v102 constraintEqualToAnchor:v104 constant:-47.0];
    [v105 setActive:1];
  }

  v120 = MEMORY[0x277CCAAD0];
  v132 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  v127 = [v132 bottomAnchor];
  v129 = [(BKUIPearlEnrollViewController *)self view];
  v125 = [v129 bottomAnchor];
  v123 = [v127 constraintEqualToAnchor:v125];
  v135[0] = v123;
  v121 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  v119 = [v121 leadingAnchor];
  v107 = [(BKUIPearlEnrollViewController *)self view];
  v108 = [v107 leadingAnchor];
  v109 = [v119 constraintEqualToAnchor:v108];
  v135[1] = v109;
  v110 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  v111 = [v110 trailingAnchor];
  v112 = [(BKUIPearlEnrollViewController *)self view];
  v113 = [v112 trailingAnchor];
  v114 = [v111 constraintEqualToAnchor:v113];
  v135[2] = v114;
  v115 = [MEMORY[0x277CBEA60] arrayWithObjects:v135 count:3];
  [v120 activateConstraints:v115];

  v116 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  [v116 setupInitialUI];

  [(BKUIPearlEnrollViewController *)self _updateLeftBarButtonItem];
  [(BKUIPearlEnrollViewController *)self forceDarkBackground:1 animated:1];
  v117 = [(BKUIPearlEnrollViewController *)self buttonTray];
  [v117 updateButtonLayout];

  [(BKUIPearlEnrollViewController *)self setupDebugUITraits];
  v118 = *MEMORY[0x277D85DE8];
}

- (void)setupDebugUITraits
{
  v3 = [(BKUIPearlEnrollViewController *)self view];
  v4 = [MEMORY[0x277D75348] blueColor];
  v5 = [v3 bkui_debugBorder:v4 withWidth:4];

  v6 = [(BKUIPearlEnrollViewController *)self enrollView];
  v7 = [MEMORY[0x277D75348] purpleColor];
  v8 = [v6 bkui_debugBorder:v7 withWidth:6];

  v11 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  v9 = [MEMORY[0x277D75348] yellowColor];
  v10 = [v11 bkui_debugBorder:v9 withWidth:6];
}

- (BKUIPearlInstructionView)instructionView
{
  v2 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  v3 = [v2 instructionView];

  return v3;
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
  v3 = [(BKUIPearlEnrollViewController *)self view];
  [v3 bounds];
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
  v16 = [(BKUIPearlEnrollViewController *)self enrollView];
  [v16 setNeedsLayout];
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
        v18 = [(BKUIPearlEnrollViewController *)self parentViewController];
        v19 = [v18 navigationItem];
        [v19 setLeftBarButtonItem:0];

        v32 = [(BKUIPearlEnrollViewController *)self parentViewController];
        v7 = [v32 navigationItem];
        [v7 setHidesBackButton:1];
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

      v22 = [(BKUIPearlEnrollViewController *)self parentViewController];
      v23 = [v22 navigationItem];
      [v23 setBackAction:0];

      v24 = [(BKUIPearlEnrollViewController *)self parentViewController];
      v25 = [v24 navigationItem];
      [v25 setBackBarButtonItem:0];

      v26 = [(BKUIPearlEnrollViewController *)self parentViewController];
      v27 = [v26 navigationItem];
      [v27 setHidesBackButton:1];

      v28 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelEnroll];
      v29 = [(BKUIPearlEnrollViewController *)self parentViewController];
      v30 = [v29 navigationItem];
      [v30 setLeftBarButtonItem:v28];
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

      v12 = [(BKUIPearlEnrollViewController *)self parentViewController];
      v13 = [v12 navigationItem];
      [v13 setLeftBarButtonItem:0];

      objc_initWeak(&buf, self);
      v14 = [(BKUIPearlEnrollViewController *)self parentViewController];
      v15 = [v14 navigationItem];
      v16 = MEMORY[0x277D750C8];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __57__BKUIPearlEnrollViewController__updateLeftBarButtonItem__block_invoke;
      v33[3] = &unk_278D0A598;
      objc_copyWeak(&v34, &buf);
      v17 = [v16 actionWithHandler:v33];
      [v15 setBackAction:v17];

      objc_destroyWeak(&v34);
      objc_destroyWeak(&buf);
    }

    v31 = *MEMORY[0x277D85DE8];
    return;
  }

  v4 = objc_alloc(MEMORY[0x277D751E0]);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BACK" value:&stru_2853BB280 table:@"Pearl-periocular"];
  v32 = [v4 initWithTitle:v6 style:0 target:self action:sel_returnToEnroll];

  [v32 _setShowsBackButtonIndicator:1];
  v7 = [(BKUIPearlEnrollViewController *)self parentViewController];
  v8 = [v7 navigationItem];
  [v8 setLeftBarButtonItem:v32];

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

- (id)_nextStateButtonTitleForState:(int)a3 subState:(int)a4
{
  v7 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  if ([v7 supportsPeriocularEnrollment])
  {
    v8 = [(BKUIPearlEnrollViewController *)self enrollmentConfiguration]!= 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
  if (a3 <= 7)
  {
    if (a3 == 2)
    {
      if (a4 != 12)
      {
        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v12 = v11;
        v13 = @"START_ENROLL";
        goto LABEL_41;
      }
    }

    else
    {
      if (a3 != 6)
      {
        goto LABEL_42;
      }

      v14 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
      if (![v14 supportsPeriocularEnrollment])
      {

        goto LABEL_40;
      }

      v15 = [(BKUIPearlEnrollViewController *)self enrollmentConfiguration];

      if (v15 != 1)
      {
        goto LABEL_40;
      }
    }

LABEL_39:
    v9 = 0;
    goto LABEL_42;
  }

  if (a3 == 8)
  {
    if ([(BKUIPearlEnrollViewController *)self enrollmentConfiguration])
    {
      if ([(BKUIPearlEnrollViewController *)self isFinalEnrollment])
      {
        v16 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
        v17 = [v16 glassesFound] ^ 1;

        if (!v8)
        {
          goto LABEL_35;
        }

LABEL_29:
        v21 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
        if ([v21 glassesFound])
        {
          v22 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
          v23 = [v22 glassesFound];
          if (a4 == 15)
          {
            v24 = 0;
          }

          else
          {
            v24 = v23;
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

  if (a3 != 9)
  {
    if (a3 != 10)
    {
      goto LABEL_42;
    }

    v10 = [(BKUIPearlEnrollViewController *)self inBuddy];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = v11;
    if (v10)
    {
      v13 = @"FINISH_ENROLL_BUTTON_BUDDY";
    }

    else
    {
      v13 = @"FINISH_ENROLL_BUTTON_SETTINGS";
    }

    goto LABEL_41;
  }

  v18 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  if ([v18 glassesFound])
  {
    v19 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
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
  v2 = [(BKUIPearlEnrollViewController *)self workItemsManager];
  [v2 removeAllWorkItems];
}

- (void)toggleDebug
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 bkui_IsInternalInstall];

  if (v4)
  {
    v5 = [(BKUIPearlEnrollViewController *)self enrollView];
    v6 = [(BKUIPearlEnrollViewController *)self enrollView];
    [v5 setDebugOverlayVisible:{objc_msgSend(v6, "debugOverlayVisible") ^ 1}];

    debugLabel = self->_debugLabel;
    v8 = [(BKUIPearlEnrollViewController *)self enrollView];
    -[UILabel setHidden:](debugLabel, "setHidden:", [v8 debugOverlayVisible] ^ 1);
  }
}

- (void)toggleDebugAndSave
{
  [(BKUIPearlEnrollViewController *)self toggleDebug];
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v3 setBool:-[UILabel isHidden](self->_debugLabel forKey:{"isHidden") ^ 1, @"pearlDebugEnroll"}];
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
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", statusString, progressString];
      v6 = [(UILabel *)self->_debugLabel text];
      v7 = [v5 isEqualToString:v6];

      if ((v7 & 1) == 0)
      {
        v8 = _BKUILoggingFacility();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v12 = v5;
          _os_log_impl(&dword_241B0A000, v8, OS_LOG_TYPE_DEFAULT, "Status update: %@", buf, 0xCu);
        }

        [(UILabel *)self->_debugLabel setText:v5];
        v9 = [(BKUIPearlEnrollViewController *)self view];
        [v9 setNeedsLayout];
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setStatus:(id)a3
{
  v5 = a3;
  if (([v5 isEqualToString:self->_statusString] & 1) == 0)
  {
    objc_storeStrong(&self->_statusString, a3);
    [(BKUIPearlEnrollViewController *)self _updateDebugLabel];
  }
}

- (void)pearlEnrollControllerCompleted
{
  v3 = [(BKUIPearlEnrollViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(BKUIPearlEnrollViewController *)self delegate];
    [v5 pearlEnrollControllerCompleted:self];
  }
}

- (double)percentOfPillsCompleted
{
  v2 = [(BKUIPearlEnrollViewController *)self enrollView];
  [v2 percentOfPillsCompleted];
  v4 = v3;

  return v4;
}

- (void)enrollView:(id)a3 willNudgeInDirection:(unint64_t)a4 nudgeCount:(unint64_t)a5
{
  if (!self->_substate)
  {
    v7 = [(BKUIPearlEnrollViewController *)self instructionView:a3];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"NUDGE_TEXT" value:&stru_2853BB280 table:@"Pearl-periocular"];
    [v7 setInstruction:v9];

    v10 = [(BKUIPearlEnrollViewController *)self instructionView];
    [v10 setDetail:&stru_2853BB280];

    v11 = [(BKUIPearlEnrollViewController *)self view];
    [v11 setNeedsLayout];
  }
}

- (void)enrollView:(id)a3 didNudgeInDirection:(unint64_t)a4 nudgeCount:(unint64_t)a5
{
  v6 = a3;
  if ((self->_state | 2) == 7 && !self->_substate)
  {
    v19 = v6;
    v7 = [(BKUIPearlEnrollViewController *)self bottomContainer];
    v8 = [v7 _instructionTextForState:self->_state substate:self->_substate];

    v9 = [(BKUIPearlEnrollViewController *)self bottomContainer];
    v10 = [v9 _detailTextForState:self->_state substate:self->_substate];

    v11 = [(BKUIPearlEnrollViewController *)self instructionView];
    v12 = [v11 instruction];
    if ([v8 isEqualToString:v12])
    {
      v13 = [(BKUIPearlEnrollViewController *)self instructionView];
      v14 = [v13 description];
      v15 = [v10 isEqualToString:v14];

      if (v15)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v16 = [(BKUIPearlEnrollViewController *)self instructionView];
    [v16 setInstruction:v8];

    v17 = [(BKUIPearlEnrollViewController *)self instructionView];
    [v17 setDetail:v10];

    v18 = [(BKUIPearlEnrollViewController *)self view];
    [v18 setNeedsLayout];

LABEL_8:
    v6 = v19;
  }
}

- (void)didReachSmallNudgePeakForEnrollView:(id)a3
{
  v3 = [(BKUIPearlEnrollViewController *)self audioManager];
  [v3 playHaptic:11095 withDelay:0.0];
}

- (void)didReachLargeNudgePeakForEnrollView:(id)a3
{
  v3 = [(BKUIPearlEnrollViewController *)self audioManager];
  [v3 playHaptic:17239 withDelay:0.0];
}

- (void)cancelEnrollForRotationIfNeeded:(int64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = +[BKUIDevice sharedInstance];
  v6 = [v5 isRestrictedToLandscapeEnrollment];

  if (v6)
  {
    if ((a3 - 1) <= 2)
    {
      v7 = _BKUILoggingFacility();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134217984;
        v11 = a3;
LABEL_8:
        _os_log_impl(&dword_241B0A000, v7, OS_LOG_TYPE_DEFAULT, "cancelEnrollForRotationIfNeeded: cancelling now for orientation: %ld", &v10, 0xCu);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if ((a3 - 2) <= 2)
  {
    v7 = _BKUILoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = a3;
      goto LABEL_8;
    }

LABEL_9:

    v8 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    [v8 cancelEnrollForRotation];
    goto LABEL_12;
  }

  v8 = _BKUILoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = a3;
    _os_log_impl(&dword_241B0A000, v8, OS_LOG_TYPE_DEFAULT, "cancelEnrollForRotationIfNeeded: will not cancel for orientation: %ld", &v10, 0xCu);
  }

LABEL_12:

  v9 = *MEMORY[0x277D85DE8];
}

- (void)animateWithOrientation:(int64_t)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = _BKUILoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a3;
    _os_log_impl(&dword_241B0A000, v5, OS_LOG_TYPE_DEFAULT, "animateWithOrientation: will cancelEnrollForRotationIfNeeded with orientation: %lu", &v7, 0xCu);
  }

  [(BKUIPearlEnrollViewController *)self cancelEnrollForRotationIfNeeded:a3];
  if ([(BKUIPearlEnrollViewController *)self state]== 10)
  {
    [(BKUIPearlEnrollViewController *)self animateToSuccessCompletionLayout:a3];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)animateToSuccessCompletionLayout:(int64_t)a3
{
  v4 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  [v4 layoutIfNeeded];

  v5 = [(BKUIPearlEnrollViewController *)self view];
  [v5 layoutIfNeeded];
}

- (void)primeWithPasscode:(id)a3
{
  v4 = a3;
  v5 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  [v5 setCredential:v4];
}

- (void)primeWithExternalizedAuthContext:(id)a3
{
  v4 = a3;
  v5 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  [v5 setExternalizedAuthContext:v4];
}

- (void)refreshEscapeHatchForCurrentState
{
  v13 = [(BKUIPearlEnrollViewController *)self escapeHatchButton];
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

  v7 = [v13 titleForState:0];
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

  v11 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  if ([v11 shouldShowRetryUI])
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

  [v13 setTitle:v6 forState:0];
  [(BKUIPearlEnrollViewController *)self updateButtonsVisibility];
LABEL_11:
}

- (void)updateButtonsVisibility
{
  v2 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  [v2 updateButtonVisibility];
}

- (void)animateInstruction
{
  [(BKUIPearlEnrollViewController *)self updateButtonsVisibility];
  v3 = [(BKUIPearlEnrollViewController *)self view];
  [v3 layoutIfNeeded];
}

- (void)transitionToSuccessFromPeriocularSplash
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [(BKUIPearlEnrollViewController *)self midFlowPeriocularSplashController];
  if (!v3)
  {
    [BKUIPearlEnrollViewController transitionToSuccessFromPeriocularSplash];
  }

  v4 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  v12[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v6 = [v5 mutableCopy];
  [(BKUIPearlEnrollViewController *)self setOperationHandlers:v6];

  v7 = [v4 enrollOperation];
  v8 = [v4 identity];
  [(BKUIPearlEnrollViewController *)self enrollOperation:v7 finishedWithIdentity:v8 animateImmediately:1];

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
  v3 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  [v3 finalizeInstructionAnimation];

  [(BKUIPearlInstructionView *)self->_animatingInstructionView removeFromSuperview];
  animatingInstructionView = self->_animatingInstructionView;
  self->_animatingInstructionView = 0;

  v5 = [(BKUIPearlEnrollViewController *)self view];
  [v5 setNeedsLayout];

  v6 = [(BKUIPearlEnrollViewController *)self view];
  [v6 layoutIfNeeded];
}

- (void)setExistingIdentity:(id)a3
{
  v4 = a3;
  v5 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  [v5 setIdentity:v4];
}

- (void)startEnroll
{
  v2 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  [v2 startEnroll];
}

- (void)restartEnroll
{
  if ([(BKUIPearlEnrollViewController *)self state]>= 3 && [(BKUIPearlEnrollViewController *)self state]!= 9 && [(BKUIPearlEnrollViewController *)self state]!= 8 && [(BKUIPearlEnrollViewController *)self state]!= 10)
  {
    v3 = [(BKUIPearlEnrollViewController *)self getEnrollview];
    [v3 percentOfPillsCompleted];
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
    v3 = [(BKUIPearlEnrollViewController *)self delegate];
    [v3 pearlEnrollViewController:self finishedEnrollWithError:0];

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

    v6 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    [v6 cancelEnroll];

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

- (void)showMaskAndGlassesTutorialWithCompletion:(id)a3
{
  v4 = a3;
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
  v8 = v4;
  v6 = v4;
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
  v5 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  if ([v5 supportsPeriocularEnrollment])
  {
    v3 = [(BKUIPearlEnrollViewController *)self enrollmentConfiguration];

    if (v3)
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

- (void)enrollOperation:(id)a3 finishedWithIdentity:(id)a4 animateImmediately:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__BKUIPearlEnrollViewController_enrollOperation_finishedWithIdentity_animateImmediately___block_invoke;
  aBlock[3] = &unk_278D09F38;
  v10 = v9;
  v28 = v10;
  v29 = self;
  v30 = v5;
  v11 = _Block_copy(aBlock);
  if (-[BKUIPearlEnrollViewController isFinalEnrollment](self, "isFinalEnrollment") || -[BKUIPearlEnrollViewController state](self, "state") == 9 && (!-[BKUIPearlEnrollViewController enrollmentConfiguration](self, "enrollmentConfiguration") || (-[BKUIPearlEnrollViewController currentOperationHandler](self, "currentOperationHandler"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 supportsPeriocularEnrollment], v12, (v13 & 1) == 0)))
  {
    if (v5)
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
    v14 = [(BKUIPearlEnrollViewController *)self operationHandlers];
    v15 = [v14 firstObject];

    v16 = [(BKUIPearlEnrollViewController *)self operationHandlers];
    [v16 removeObjectAtIndex:0];

    v17 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    [v17 setIdentity:v10];

    v18 = [v15 glassesFound];
    v19 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    [v19 setGlassesFound:v18];

    v20 = [v15 credential];
    v21 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    [v21 setCredential:v20];

    v22 = [v15 externalizedAuthContext];
    v23 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    [v23 setExternalizedAuthContext:v22];

    if ([(BKUIPearlEnrollViewController *)self isFinalEnrollment]&& [(BKUIPearlEnrollViewController *)self enrollmentConfiguration])
    {
      if ([v10 canAddPeriocularEnrollment] && objc_msgSend(v15, "glassesFound"))
      {
        [(BKUIPearlEnrollViewController *)self removeGlassesUI];
      }

      else
      {
        [(BKUIPearlEnrollViewController *)self enrollOperation:v8 finishedWithIdentity:v10 animateImmediately:0];
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
  v2 = [(BKUIPearlEnrollViewController *)self operationHandlers];
  v3 = [v2 count] == 1;

  return v3;
}

- (void)_handleEnrollStateOnAppear
{
  if ([(BKUIPearlEnrollViewController *)self isGlassesEnrollmentOnly])
  {
    [(BKUIPearlEnrollViewController *)self setState:3 animated:1];
    v3 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    [v3 matchUserForSecondPhaseEnrollmentWithCompletionAction:0];
  }

  else
  {

    [(BKUIPearlEnrollViewController *)self setState:2 animated:0];
  }
}

- (BOOL)hasPeriocularIdentityEnrolled
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
  v3 = [v2 device];
  v11 = 0;
  v4 = [v3 identitiesWithError:&v11];
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
    v3 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    if ([v3 shouldShowRetryUI])
    {
      v4 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
      v5 = [v4 glassesEnforcementError];
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

  v6 = [(BKUIPearlEnrollViewController *)self state]== 8 && [(BKUIPearlEnrollViewController *)self substate]== 15;
  if ([(BKUIPearlEnrollViewController *)self state]> 6)
  {
    isKindOfClass = 0;
  }

  else
  {
    v7 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  if (self->_state == 9)
  {
    v9 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    if ([v9 glassesFound])
    {
      v10 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
      objc_opt_class();
      v11 = objc_opt_isKindOfClass();

      v5 |= v11;
    }
  }

  return (v5 | v6 | isKindOfClass) & 1;
}

- (UIButton)nextStateButton
{
  v2 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  v3 = [v2 nextStateButton];

  return v3;
}

- (UIButton)escapeHatchButton
{
  v2 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  v3 = [v2 bottomLinkButton];

  return v3;
}

- (BKUIButtonTray)buttonTray
{
  v2 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  v3 = [v2 buttonTray];

  return v3;
}

- (UIView)nextStateButtonContainer
{
  v2 = [(BKUIPearlEnrollViewController *)self buttonTray];
  v3 = [v2 nextStateButtonContainer];

  return v3;
}

- (UIButton)retryMatchOperationButton
{
  v2 = [(BKUIPearlEnrollViewController *)self buttonTray];
  v3 = [v2 topLinkButton];

  return v3;
}

- (BKUIPearlEnrollViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
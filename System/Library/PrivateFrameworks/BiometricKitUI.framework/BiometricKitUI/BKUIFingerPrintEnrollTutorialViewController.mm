@interface BKUIFingerPrintEnrollTutorialViewController
- (BKUIEmbeddedEnrollmentSelectionType)delegate;
- (BOOL)_topTouchButtonIpad;
- (CGRect)displayRect;
- (UIImageView)enrollTutorialImageView;
- (double)_contentViewHeight;
- (double)_contentViewTopOffset;
- (id)_detailTextPhase1;
- (id)_devicePrefix;
- (id)_headerTitlePhase1;
- (id)_headerTitlePhase2;
- (id)_videoAssetName;
- (id)combinedTutorialText;
- (id)tutorialImage;
- (id)tutorialText;
- (void)_continuePressed:(id)a3;
- (void)_enrollSkipped:(id)a3;
- (void)_performInitialAnimationSetup;
- (void)_restartAnimation;
- (void)_setupTouchIDAnimation;
- (void)loadAVPlayer;
- (void)setEnrollViewState:(unint64_t)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BKUIFingerPrintEnrollTutorialViewController

- (void)viewDidLoad
{
  v82[4] = *MEMORY[0x277D85DE8];
  v79.receiver = self;
  v79.super_class = BKUIFingerPrintEnrollTutorialViewController;
  [(OBBaseWelcomeController *)&v79 viewDidLoad];
  v3 = os_log_create("com.apple.biometrickitui", "TouchID Tutorial Animation View");
  bkui_animation_view_log = self->bkui_animation_view_log;
  self->bkui_animation_view_log = v3;

  v5 = [(BKUIFingerPrintEnrollTutorialViewController *)self buttonTray];
  [v5 setPrivacyLinkForBundles:&unk_2853CC8C8];

  v6 = [MEMORY[0x277D37618] boldButton];
  [(BKUIFingerPrintEnrollTutorialViewController *)self setContinueButton:v6];

  v7 = [(BKUIFingerPrintEnrollTutorialViewController *)self continueButton];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(BKUIFingerPrintEnrollTutorialViewController *)self continueButton];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CONTINUE" value:&stru_2853BB280 table:@"BiometricKitUI"];
  [v8 setTitle:v10 forState:0];

  v11 = [(BKUIFingerPrintEnrollTutorialViewController *)self continueButton];
  [v11 addTarget:self action:sel__continuePressed_ forControlEvents:64];

  v12 = [(BKUIFingerPrintEnrollTutorialViewController *)self buttonTray];
  v13 = [(BKUIFingerPrintEnrollTutorialViewController *)self continueButton];
  [v12 addButton:v13];

  if ([(BKUIFingerPrintEnrollTutorialViewController *)self inBuddy])
  {
    v14 = [MEMORY[0x277D37650] linkButton];
    [(BKUIFingerPrintEnrollTutorialViewController *)self setSkipButton:v14];

    v15 = [(BKUIFingerPrintEnrollTutorialViewController *)self skipButton];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

    v16 = [(BKUIFingerPrintEnrollTutorialViewController *)self skipButton];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"SKIP_ENROLL" value:&stru_2853BB280 table:@"BiometricKitUI"];
    [v16 setTitle:v18 forState:0];

    v19 = [(BKUIFingerPrintEnrollTutorialViewController *)self skipButton];
    [v19 addTarget:self action:sel__enrollSkipped_ forControlEvents:64];

    v20 = [(BKUIFingerPrintEnrollTutorialViewController *)self buttonTray];
    v21 = [(BKUIFingerPrintEnrollTutorialViewController *)self skipButton];
    [v20 addButton:v21];
  }

  [(BKUIFingerPrintEnrollTutorialViewController *)self setEnrollViewState:0];
  v22 = [(BKUIFingerPrintEnrollTutorialViewController *)self scrollView];
  v23 = [v22 layer];
  [v23 setMasksToBounds:0];

  if ([(BKUIFingerPrintEnrollTutorialViewController *)self _topTouchButtonIpad])
  {
    v24 = [BKUIFingerPrintPosedVideoPlayerView alloc];
    v25 = [(BKUIFingerPrintEnrollTutorialViewController *)self _videoAssetName];
    v26 = [(BKUIFingerPrintEnrollTutorialViewController *)self _devicePrefix];
    v27 = [(BKUIFingerPrintPosedVideoPlayerView *)v24 initWithAssetName:v25 subdirectory:v26];
    [(BKUIFingerPrintEnrollTutorialViewController *)self setPosedVideoPlayerView:v27];

    v28 = [(BKUIFingerPrintEnrollTutorialViewController *)self posedVideoPlayerView];
    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];

    v29 = objc_alloc(MEMORY[0x277D75D18]);
    v75 = [v29 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v75 setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = [v75 layer];
    [v30 setMasksToBounds:1];

    v31 = [(BKUIFingerPrintEnrollTutorialViewController *)self posedVideoPlayerView];
    [v75 addSubview:v31];

    v60 = MEMORY[0x277CCAAD0];
    v73 = [(BKUIFingerPrintEnrollTutorialViewController *)self posedVideoPlayerView];
    v71 = [v73 leadingAnchor];
    v69 = [v75 leadingAnchor];
    v67 = [v71 constraintEqualToAnchor:v69];
    v82[0] = v67;
    v65 = [(BKUIFingerPrintEnrollTutorialViewController *)self posedVideoPlayerView];
    v63 = [v65 trailingAnchor];
    v62 = [v75 trailingAnchor];
    v61 = [v63 constraintEqualToAnchor:v62];
    v82[1] = v61;
    v32 = [(BKUIFingerPrintEnrollTutorialViewController *)self posedVideoPlayerView];
    v33 = [v32 topAnchor];
    v34 = [v75 topAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];
    v82[2] = v35;
    v36 = [(BKUIFingerPrintEnrollTutorialViewController *)self posedVideoPlayerView];
    v37 = [v36 bottomAnchor];
    v38 = [v75 bottomAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];
    v82[3] = v39;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:4];
    [v60 activateConstraints:v40];
  }

  else
  {
    v75 = [(BKUIFingerPrintEnrollTutorialViewController *)self enrollTutorialImageView];
  }

  v41 = [(BKUIFingerPrintEnrollTutorialViewController *)self contentView];
  [v41 addSubview:v75];

  v42 = [(BKUIFingerPrintEnrollTutorialViewController *)self contentView];
  v43 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  [v42 setBackgroundColor:v43];

  v44 = [v75 topAnchor];
  v45 = [(BKUIFingerPrintEnrollTutorialViewController *)self contentView];
  v46 = [v45 topAnchor];
  [(BKUIFingerPrintEnrollTutorialViewController *)self _contentViewTopOffset];
  v47 = [v44 constraintEqualToAnchor:v46 constant:?];
  [(BKUIFingerPrintEnrollTutorialViewController *)self setContentViewTopConstraint:v47];

  v64 = MEMORY[0x277CCAAD0];
  v74 = [(BKUIFingerPrintEnrollTutorialViewController *)self contentViewTopConstraint];
  v81[0] = v74;
  v70 = [v75 bottomAnchor];
  v72 = [(BKUIFingerPrintEnrollTutorialViewController *)self contentView];
  v68 = [v72 bottomAnchor];
  v66 = [v70 constraintEqualToAnchor:v68];
  v81[1] = v66;
  v48 = [v75 leadingAnchor];
  v49 = [(BKUIFingerPrintEnrollTutorialViewController *)self contentView];
  v50 = [v49 leadingAnchor];
  v51 = [v48 constraintEqualToAnchor:v50];
  v81[2] = v51;
  v52 = [v75 trailingAnchor];
  v53 = [(BKUIFingerPrintEnrollTutorialViewController *)self contentView];
  v54 = [v53 trailingAnchor];
  v55 = [v52 constraintEqualToAnchor:v54];
  v81[3] = v55;
  v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:4];
  [v64 activateConstraints:v56];

  [(BKUIFingerPrintEnrollTutorialViewController *)self _setupTouchIDAnimation];
  [(BKUIFingerPrintEnrollTutorialViewController *)self loadAVPlayer];
  objc_initWeak(&location, self);
  v80 = objc_opt_class();
  v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v80 count:1];
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __58__BKUIFingerPrintEnrollTutorialViewController_viewDidLoad__block_invoke;
  v76[3] = &unk_278D09928;
  objc_copyWeak(&v77, &location);
  v58 = [(BKUIFingerPrintEnrollTutorialViewController *)self registerForTraitChanges:v57 withHandler:v76];
  [(BKUIFingerPrintEnrollTutorialViewController *)self setTraitChangeRegistration:v58];

  objc_destroyWeak(&v77);
  objc_destroyWeak(&location);

  v59 = *MEMORY[0x277D85DE8];
}

void __58__BKUIFingerPrintEnrollTutorialViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained tutorialImage];
  v2 = [WeakRetained enrollTutorialImageView];
  [v2 setImage:v1];
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = BKUIFingerPrintEnrollTutorialViewController;
  [(OBBaseWelcomeController *)&v6 viewDidLayoutSubviews];
  [(BKUIFingerPrintEnrollTutorialViewController *)self _contentViewTopOffset];
  v4 = v3;
  v5 = [(BKUIFingerPrintEnrollTutorialViewController *)self contentViewTopConstraint];
  [v5 setConstant:v4];
}

- (void)_performInitialAnimationSetup
{
  v3 = [(BKUIFingerPrintEnrollTutorialViewController *)self animationTimer];

  if (!v3)
  {
    v4 = [(BKUIFingerPrintEnrollTutorialViewController *)self animationController];
    [v4 startAnimation];

    v5 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__restartAnimation selector:0 userInfo:1 repeats:5.0];
    [(BKUIFingerPrintEnrollTutorialViewController *)self setAnimationTimer:v5];
  }
}

- (void)_restartAnimation
{
  v3 = [(BKUIFingerPrintEnrollTutorialViewController *)self animationController];
  [v3 stopAnimation];

  v4 = [(BKUIFingerPrintEnrollTutorialViewController *)self animationController];
  [v4 startAnimation];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = BKUIFingerPrintEnrollTutorialViewController;
  v7 = a4;
  [(OBBaseWelcomeController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __98__BKUIFingerPrintEnrollTutorialViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_278D0A028;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

void __98__BKUIFingerPrintEnrollTutorialViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) posedVideoPlayerView];
  v2 = [*(a1 + 32) view];
  v3 = [v2 window];
  v4 = [v3 windowScene];
  [v5 transitionToOrientation:{objc_msgSend(v4, "interfaceOrientation")}];
}

- (id)tutorialText
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SCAN_FINGER_HOME" value:&stru_2853BB280 table:@"BiometricKitUI"];

  if ([(BKUIFingerPrintEnrollTutorialViewController *)self _topTouchButtonIpad])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"SCAN_FINGER_HOME_FOLLOW_UP" value:&stru_2853BB280 table:@"Mesa-j307"];

    v4 = v6;
  }

  return v4;
}

- (id)combinedTutorialText
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"INTRO_TEXT" value:&stru_2853BB280 table:@"BiometricKitUI"];
  v6 = [(BKUIFingerPrintEnrollTutorialViewController *)self tutorialText];
  v7 = [v3 stringWithFormat:@"%@\n\n%@", v5, v6];

  return v7;
}

- (UIImageView)enrollTutorialImageView
{
  enrollTutorialImageView = self->_enrollTutorialImageView;
  if (!enrollTutorialImageView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D755E8]);
    v5 = self->_enrollTutorialImageView;
    self->_enrollTutorialImageView = v4;

    [(UIImageView *)self->_enrollTutorialImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)self->_enrollTutorialImageView setContentMode:2];
    [(UIImageView *)self->_enrollTutorialImageView setClipsToBounds:0];
    [(UIImageView *)self->_enrollTutorialImageView setAccessibilityIgnoresInvertColors:1];
    v6 = [(BKUIFingerPrintEnrollTutorialViewController *)self tutorialImage];
    [(UIImageView *)self->_enrollTutorialImageView setImage:v6];

    enrollTutorialImageView = self->_enrollTutorialImageView;
  }

  return enrollTutorialImageView;
}

- (id)tutorialImage
{
  v2 = MEMORY[0x277D755B8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v2 userInterfaceStyleSpecificImageInBundle:v3];

  return v4;
}

- (void)_continuePressed:(id)a3
{
  v4 = [(BKUIFingerPrintEnrollTutorialViewController *)self delegate];
  [v4 didSelectPrimaryButton:self];
}

- (void)_enrollSkipped:(id)a3
{
  v4 = [(BKUIFingerPrintEnrollTutorialViewController *)self delegate];
  [v4 didSelectSecondaryButton:self];
}

- (void)setEnrollViewState:(unint64_t)a3
{
  self->_enrollViewState = a3;
  if (a3 - 2 >= 3)
  {
    if (a3 == 1)
    {
      v18 = [(BKUIFingerPrintEnrollTutorialViewController *)self headerView];
      v19 = [(BKUIFingerPrintEnrollTutorialViewController *)self _headerTitlePhase2];
      [v18 setTitle:v19];

      v20 = [(BKUIFingerPrintEnrollTutorialViewController *)self headerView];
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = [v21 localizedStringForKey:@"KEEP_GOING" value:&stru_2853BB280 table:@"BiometricKitUI"];
      [v20 setDetailText:v22];

      v23 = [(BKUIFingerPrintEnrollTutorialViewController *)self headerView];
      [v23 layoutIfNeeded];

      v24 = [(BKUIFingerPrintEnrollTutorialViewController *)self buttonTray];
      [v24 removeAllButtons];

      v25 = [(BKUIFingerPrintEnrollTutorialViewController *)self buttonTray];
      v26 = [(BKUIFingerPrintEnrollTutorialViewController *)self continueButton];
      [v25 addButton:v26];

      v27 = [(BKUIFingerPrintEnrollTutorialViewController *)self tutorialImage];
      v28 = [(BKUIFingerPrintEnrollTutorialViewController *)self enrollTutorialImageView];
      [v28 setImage:v27];

      v36 = [(BKUIFingerPrintEnrollTutorialViewController *)self view];
      [v36 layoutIfNeeded];
    }

    else
    {
      if (a3)
      {
        return;
      }

      v4 = [(BKUIFingerPrintEnrollTutorialViewController *)self headerView];
      v5 = [(BKUIFingerPrintEnrollTutorialViewController *)self _headerTitlePhase1];
      [v4 setTitle:v5];

      v6 = [(BKUIFingerPrintEnrollTutorialViewController *)self tutorialImage];
      v7 = [(BKUIFingerPrintEnrollTutorialViewController *)self enrollTutorialImageView];
      [v7 setImage:v6];

      v8 = [(BKUIFingerPrintEnrollTutorialViewController *)self headerView];
      [v8 layoutIfNeeded];

      v9 = [(BKUIFingerPrintEnrollTutorialViewController *)self buttonTray];
      [v9 removeAllButtons];

      if ([(BKUIFingerPrintEnrollTutorialViewController *)self inBuddy])
      {
        v10 = [(BKUIFingerPrintEnrollTutorialViewController *)self buttonTray];
        v11 = [(BKUIFingerPrintEnrollTutorialViewController *)self continueButton];
        [v10 addButton:v11];

        v12 = [(BKUIFingerPrintEnrollTutorialViewController *)self isSecondEnrollment];
        v13 = [(BKUIFingerPrintEnrollTutorialViewController *)self skipButton];
        v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v15 = v14;
        if (v12)
        {
          v16 = @"SKIP_ENROLL_FOLLOW_UP";
          v17 = @"Mesa-j307";
        }

        else
        {
          v16 = @"SKIP_ENROLL";
          v17 = @"BiometricKitUI";
        }

        v31 = [v14 localizedStringForKey:v16 value:&stru_2853BB280 table:v17];
        [v13 setTitle:v31 forState:0];

        v32 = [(BKUIFingerPrintEnrollTutorialViewController *)self buttonTray];
        v33 = [(BKUIFingerPrintEnrollTutorialViewController *)self skipButton];
        [v32 addButton:v33];

        v29 = [(BKUIFingerPrintEnrollTutorialViewController *)self headerView];
        v30 = [(BKUIFingerPrintEnrollTutorialViewController *)self _detailTextPhase1];
      }

      else
      {
        v29 = [(BKUIFingerPrintEnrollTutorialViewController *)self headerView];
        v30 = [(BKUIFingerPrintEnrollTutorialViewController *)self combinedTutorialText];
      }

      v34 = v30;
      [v29 setDetailText:v30];

      v36 = [(BKUIFingerPrintEnrollTutorialViewController *)self posedVideoPlayerView];
      v35 = [(BKUIFingerPrintEnrollTutorialViewController *)self _videoAssetName];
      [v36 setAssetName:v35];
    }
  }

  else
  {

    [(BKUIFingerPrintEnrollTutorialViewController *)self setEnrollViewState:0];
  }
}

- (double)_contentViewHeight
{
  v3 = [(BKUIFingerPrintEnrollTutorialViewController *)self _topTouchButtonIpad];
  [(BKUIFingerPrintEnrollTutorialViewController *)self displayRect];
  v5 = v4 * 0.36;
  v6 = fmaxf(v5, 200.0);
  if (v3)
  {
    return (v6 + 30.0);
  }

  return v6;
}

- (id)_headerTitlePhase1
{
  if ([(BKUIFingerPrintEnrollTutorialViewController *)self showFollowUpEnrollmentUpSellContent]&& [(BKUIFingerPrintEnrollTutorialViewController *)self isSecondEnrollment])
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = v3;
    v5 = @"SET_UP_MESA_FOLLOW_UP";
    v6 = @"Mesa-j307";
  }

  else
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = v3;
    v5 = @"SET_UP_MESA";
    v6 = @"BiometricKitUI";
  }

  v7 = [v3 localizedStringForKey:v5 value:&stru_2853BB280 table:v6];

  return v7;
}

- (id)_detailTextPhase1
{
  if ([(BKUIFingerPrintEnrollTutorialViewController *)self showFollowUpEnrollmentUpSellContent]&& [(BKUIFingerPrintEnrollTutorialViewController *)self isSecondEnrollment])
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = v3;
    v5 = @"INTRO_TEXT_FOLLOW_UP_SECOND_FINGER_IPAD";
    v6 = @"Mesa-j307";
  }

  else
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = v3;
    v5 = @"INTRO_TEXT";
    v6 = @"BiometricKitUI";
  }

  v7 = [v3 localizedStringForKey:v5 value:&stru_2853BB280 table:v6];

  return v7;
}

- (id)_headerTitlePhase2
{
  v2 = [(BKUIFingerPrintEnrollTutorialViewController *)self _topTouchButtonIpad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (v2)
  {
    v5 = @"ADJUST_GRIP_FOLLOW_UP";
    v6 = @"Mesa-j307";
  }

  else
  {
    v5 = @"ADJUST_GRIP";
    v6 = @"BiometricKitUI";
  }

  v7 = [v3 localizedStringForKey:v5 value:&stru_2853BB280 table:v6];

  return v7;
}

- (id)_videoAssetName
{
  v3 = [(BKUIFingerPrintEnrollTutorialViewController *)self view];
  v4 = [BKUIUtils activeInterfaceOrientationForView:v3];

  v5 = @"_V";
  if (![(BKUIFingerPrintEnrollTutorialViewController *)self enrollViewState])
  {
    if ([(BKUIFingerPrintEnrollTutorialViewController *)self isSecondEnrollment])
    {
      v6 = [(BKUIFingerPrintEnrollTutorialViewController *)self initialInterfaceOrientation];
      v7 = @"_V";
      v8 = @"_H_rotate";
      if ((v4 - 3) >= 2)
      {
        v8 = @"_V";
      }

      if ((v6 - 3) <= 1)
      {
        v9 = v8;
      }

      else
      {
        v9 = @"_V";
      }

      if ((v4 - 3) < 2)
      {
        v7 = @"_H";
      }

      if ((v4 - 1) < 2)
      {
        v7 = @"_V_rotate";
      }

      if ((v6 - 1) <= 1)
      {
        v5 = v7;
      }

      else
      {
        v5 = v9;
      }
    }

    else if ((v4 - 3) < 2)
    {
      v5 = @"_H";
    }
  }

  v10 = [(BKUIFingerPrintEnrollTutorialViewController *)self _devicePrefix];
  v11 = [v10 stringByAppendingString:v5];

  return v11;
}

- (void)loadAVPlayer
{
  if (![(BKUIFingerPrintEnrollTutorialViewController *)self enrollViewState])
  {
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    v4 = [(BKUIFingerPrintEnrollTutorialViewController *)self posedVideoPlayerView];
    v6 = v4;
    if (IsReduceMotionEnabled)
    {
      [v4 setAlpha:0.0];

      v5 = [(BKUIFingerPrintEnrollTutorialViewController *)self posedVideoPlayerView];
      [v5 load];

      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __59__BKUIFingerPrintEnrollTutorialViewController_loadAVPlayer__block_invoke;
      v7[3] = &unk_278D09978;
      v7[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v7 animations:1.0];
    }

    else
    {
      [v4 load];
    }
  }
}

void __59__BKUIFingerPrintEnrollTutorialViewController_loadAVPlayer__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) posedVideoPlayerView];
  [v1 setAlpha:1.0];
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

- (id)_devicePrefix
{
  v2 = @"iPadMini2021";
  v3 = MGGetProductType();
  if (v3 > 2903084587)
  {
    if (v3 == 2903084588 || v3 == 2959111092)
    {
      return v2;
    }

    if (v3 != 4242862982)
    {
      return @"J307";
    }

    return @"iPadEDU2022";
  }

  if (v3 == 1878257790)
  {
    return @"iPadEDU2022";
  }

  if (v3 != 1895344378 && v3 != 2566016329)
  {
    return @"J307";
  }

  return v2;
}

- (void)_setupTouchIDAnimation
{
  v45[4] = *MEMORY[0x277D85DE8];
  v3 = [(BKUIFingerPrintEnrollTutorialViewController *)self posedVideoPlayerView];

  if (!v3)
  {
    v4 = [BKUIAnimationView alloc];
    v5 = [(OBAnimationView *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(BKUIFingerPrintEnrollTutorialViewController *)self setAnimationView:v5];

    v6 = [(BKUIFingerPrintEnrollTutorialViewController *)self animationView];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = [(BKUIFingerPrintEnrollTutorialViewController *)self contentView];
    v8 = [(BKUIFingerPrintEnrollTutorialViewController *)self animationView];
    [v7 addSubview:v8];

    v9 = [(BKUIFingerPrintEnrollTutorialViewController *)self contentView];
    [v9 bounds];
    v11 = v10;
    v12 = [(BKUIFingerPrintEnrollTutorialViewController *)self animationView];
    [v12 topOffsetPercentage];
    v14 = v11 * v13;

    if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
    {
      v14 = v14 + -2.5;
    }

    v37 = MEMORY[0x277CCAAD0];
    v43 = [(BKUIFingerPrintEnrollTutorialViewController *)self animationView];
    v41 = [v43 centerXAnchor];
    v42 = [(BKUIFingerPrintEnrollTutorialViewController *)self view];
    v40 = [v42 centerXAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v45[0] = v39;
    v38 = [(BKUIFingerPrintEnrollTutorialViewController *)self animationView];
    v35 = [v38 topAnchor];
    v36 = [(BKUIFingerPrintEnrollTutorialViewController *)self contentView];
    v15 = [v36 topAnchor];
    v16 = [v35 constraintEqualToAnchor:v15 constant:v14];
    v45[1] = v16;
    v17 = [(BKUIFingerPrintEnrollTutorialViewController *)self animationView];
    v18 = [v17 widthAnchor];
    v19 = [v18 constraintEqualToConstant:32.0];
    v45[2] = v19;
    v20 = [(BKUIFingerPrintEnrollTutorialViewController *)self animationView];
    v21 = [v20 heightAnchor];
    v22 = [v21 constraintEqualToConstant:32.0];
    v45[3] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];
    [v37 activateConstraints:v23];

    v24 = [objc_alloc(MEMORY[0x277D37608]) initWithStateName:@"Start" transitionDuration:0.01 transitionSpeed:1.0];
    v44[0] = v24;
    v25 = [objc_alloc(MEMORY[0x277D37608]) initWithStateName:@"Animate IN" transitionDuration:2.3 transitionSpeed:1.0];
    v44[1] = v25;
    v26 = [objc_alloc(MEMORY[0x277D37608]) initWithStateName:@"Animate OUT" transitionDuration:1.0 transitionSpeed:1.0];
    v44[2] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:3];

    v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v29 = [v28 URLForResource:@"touch_ID_animation" withExtension:@"ca"];

    if (!v29)
    {
      bkui_animation_view_log = self->bkui_animation_view_log;
      if (os_log_type_enabled(bkui_animation_view_log, OS_LOG_TYPE_ERROR))
      {
        [(BKUIFingerPrintEnrollTutorialViewController *)bkui_animation_view_log _setupTouchIDAnimation];
      }
    }

    v31 = objc_alloc(MEMORY[0x277D37600]);
    v32 = [(BKUIFingerPrintEnrollTutorialViewController *)self animationView];
    v33 = [v31 initWithUrlToPackage:v29 animationView:v32 animatedStates:v27 startAtFirstState:0];
    [(BKUIFingerPrintEnrollTutorialViewController *)self setAnimationController:v33];
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (double)_contentViewTopOffset
{
  v3 = [(BKUIFingerPrintEnrollTutorialViewController *)self navigationController];
  v4 = [v3 navigationBar];
  [v4 bounds];
  v6 = -v5;
  v7 = [(BKUIFingerPrintEnrollTutorialViewController *)self navigationController];
  v8 = [v7 view];
  v9 = [v8 window];
  v10 = [v9 windowScene];
  v11 = [v10 statusBarManager];
  [v11 statusBarFrame];
  v13 = v6 - v12;

  v14 = [(BKUIFingerPrintEnrollTutorialViewController *)self presentingViewController];
  if (v14)
  {
    v15 = v14;
    v16 = +[BKUIDevice sharedInstance];
    v17 = [v16 isIdiomPad];

    if (v17)
    {
      v18 = [(BKUIFingerPrintEnrollTutorialViewController *)self navigationController];
      v19 = [v18 navigationBar];
      [v19 bounds];
      v13 = -v20;
    }
  }

  return v13;
}

- (BKUIEmbeddedEnrollmentSelectionType)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)displayRect
{
  x = self->_displayRect.origin.x;
  y = self->_displayRect.origin.y;
  width = self->_displayRect.size.width;
  height = self->_displayRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
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
- (void)_continuePressed:(id)pressed;
- (void)_enrollSkipped:(id)skipped;
- (void)_performInitialAnimationSetup;
- (void)_restartAnimation;
- (void)_setupTouchIDAnimation;
- (void)loadAVPlayer;
- (void)setEnrollViewState:(unint64_t)state;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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

  buttonTray = [(BKUIFingerPrintEnrollTutorialViewController *)self buttonTray];
  [buttonTray setPrivacyLinkForBundles:&unk_2853CC8C8];

  boldButton = [MEMORY[0x277D37618] boldButton];
  [(BKUIFingerPrintEnrollTutorialViewController *)self setContinueButton:boldButton];

  continueButton = [(BKUIFingerPrintEnrollTutorialViewController *)self continueButton];
  [continueButton setTranslatesAutoresizingMaskIntoConstraints:0];

  continueButton2 = [(BKUIFingerPrintEnrollTutorialViewController *)self continueButton];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CONTINUE" value:&stru_2853BB280 table:@"BiometricKitUI"];
  [continueButton2 setTitle:v10 forState:0];

  continueButton3 = [(BKUIFingerPrintEnrollTutorialViewController *)self continueButton];
  [continueButton3 addTarget:self action:sel__continuePressed_ forControlEvents:64];

  buttonTray2 = [(BKUIFingerPrintEnrollTutorialViewController *)self buttonTray];
  continueButton4 = [(BKUIFingerPrintEnrollTutorialViewController *)self continueButton];
  [buttonTray2 addButton:continueButton4];

  if ([(BKUIFingerPrintEnrollTutorialViewController *)self inBuddy])
  {
    linkButton = [MEMORY[0x277D37650] linkButton];
    [(BKUIFingerPrintEnrollTutorialViewController *)self setSkipButton:linkButton];

    skipButton = [(BKUIFingerPrintEnrollTutorialViewController *)self skipButton];
    [skipButton setTranslatesAutoresizingMaskIntoConstraints:0];

    skipButton2 = [(BKUIFingerPrintEnrollTutorialViewController *)self skipButton];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"SKIP_ENROLL" value:&stru_2853BB280 table:@"BiometricKitUI"];
    [skipButton2 setTitle:v18 forState:0];

    skipButton3 = [(BKUIFingerPrintEnrollTutorialViewController *)self skipButton];
    [skipButton3 addTarget:self action:sel__enrollSkipped_ forControlEvents:64];

    buttonTray3 = [(BKUIFingerPrintEnrollTutorialViewController *)self buttonTray];
    skipButton4 = [(BKUIFingerPrintEnrollTutorialViewController *)self skipButton];
    [buttonTray3 addButton:skipButton4];
  }

  [(BKUIFingerPrintEnrollTutorialViewController *)self setEnrollViewState:0];
  scrollView = [(BKUIFingerPrintEnrollTutorialViewController *)self scrollView];
  layer = [scrollView layer];
  [layer setMasksToBounds:0];

  if ([(BKUIFingerPrintEnrollTutorialViewController *)self _topTouchButtonIpad])
  {
    v24 = [BKUIFingerPrintPosedVideoPlayerView alloc];
    _videoAssetName = [(BKUIFingerPrintEnrollTutorialViewController *)self _videoAssetName];
    _devicePrefix = [(BKUIFingerPrintEnrollTutorialViewController *)self _devicePrefix];
    v27 = [(BKUIFingerPrintPosedVideoPlayerView *)v24 initWithAssetName:_videoAssetName subdirectory:_devicePrefix];
    [(BKUIFingerPrintEnrollTutorialViewController *)self setPosedVideoPlayerView:v27];

    posedVideoPlayerView = [(BKUIFingerPrintEnrollTutorialViewController *)self posedVideoPlayerView];
    [posedVideoPlayerView setTranslatesAutoresizingMaskIntoConstraints:0];

    v29 = objc_alloc(MEMORY[0x277D75D18]);
    enrollTutorialImageView = [v29 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [enrollTutorialImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    layer2 = [enrollTutorialImageView layer];
    [layer2 setMasksToBounds:1];

    posedVideoPlayerView2 = [(BKUIFingerPrintEnrollTutorialViewController *)self posedVideoPlayerView];
    [enrollTutorialImageView addSubview:posedVideoPlayerView2];

    v60 = MEMORY[0x277CCAAD0];
    posedVideoPlayerView3 = [(BKUIFingerPrintEnrollTutorialViewController *)self posedVideoPlayerView];
    leadingAnchor = [posedVideoPlayerView3 leadingAnchor];
    leadingAnchor2 = [enrollTutorialImageView leadingAnchor];
    v67 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v82[0] = v67;
    posedVideoPlayerView4 = [(BKUIFingerPrintEnrollTutorialViewController *)self posedVideoPlayerView];
    trailingAnchor = [posedVideoPlayerView4 trailingAnchor];
    trailingAnchor2 = [enrollTutorialImageView trailingAnchor];
    v61 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v82[1] = v61;
    posedVideoPlayerView5 = [(BKUIFingerPrintEnrollTutorialViewController *)self posedVideoPlayerView];
    topAnchor = [posedVideoPlayerView5 topAnchor];
    topAnchor2 = [enrollTutorialImageView topAnchor];
    v35 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v82[2] = v35;
    posedVideoPlayerView6 = [(BKUIFingerPrintEnrollTutorialViewController *)self posedVideoPlayerView];
    bottomAnchor = [posedVideoPlayerView6 bottomAnchor];
    bottomAnchor2 = [enrollTutorialImageView bottomAnchor];
    v39 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v82[3] = v39;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:4];
    [v60 activateConstraints:v40];
  }

  else
  {
    enrollTutorialImageView = [(BKUIFingerPrintEnrollTutorialViewController *)self enrollTutorialImageView];
  }

  contentView = [(BKUIFingerPrintEnrollTutorialViewController *)self contentView];
  [contentView addSubview:enrollTutorialImageView];

  contentView2 = [(BKUIFingerPrintEnrollTutorialViewController *)self contentView];
  secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  [contentView2 setBackgroundColor:secondarySystemBackgroundColor];

  topAnchor3 = [enrollTutorialImageView topAnchor];
  contentView3 = [(BKUIFingerPrintEnrollTutorialViewController *)self contentView];
  topAnchor4 = [contentView3 topAnchor];
  [(BKUIFingerPrintEnrollTutorialViewController *)self _contentViewTopOffset];
  v47 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:?];
  [(BKUIFingerPrintEnrollTutorialViewController *)self setContentViewTopConstraint:v47];

  v64 = MEMORY[0x277CCAAD0];
  contentViewTopConstraint = [(BKUIFingerPrintEnrollTutorialViewController *)self contentViewTopConstraint];
  v81[0] = contentViewTopConstraint;
  bottomAnchor3 = [enrollTutorialImageView bottomAnchor];
  contentView4 = [(BKUIFingerPrintEnrollTutorialViewController *)self contentView];
  bottomAnchor4 = [contentView4 bottomAnchor];
  v66 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v81[1] = v66;
  leadingAnchor3 = [enrollTutorialImageView leadingAnchor];
  contentView5 = [(BKUIFingerPrintEnrollTutorialViewController *)self contentView];
  leadingAnchor4 = [contentView5 leadingAnchor];
  v51 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v81[2] = v51;
  trailingAnchor3 = [enrollTutorialImageView trailingAnchor];
  contentView6 = [(BKUIFingerPrintEnrollTutorialViewController *)self contentView];
  trailingAnchor4 = [contentView6 trailingAnchor];
  v55 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
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
  contentViewTopConstraint = [(BKUIFingerPrintEnrollTutorialViewController *)self contentViewTopConstraint];
  [contentViewTopConstraint setConstant:v4];
}

- (void)_performInitialAnimationSetup
{
  animationTimer = [(BKUIFingerPrintEnrollTutorialViewController *)self animationTimer];

  if (!animationTimer)
  {
    animationController = [(BKUIFingerPrintEnrollTutorialViewController *)self animationController];
    [animationController startAnimation];

    v5 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__restartAnimation selector:0 userInfo:1 repeats:5.0];
    [(BKUIFingerPrintEnrollTutorialViewController *)self setAnimationTimer:v5];
  }
}

- (void)_restartAnimation
{
  animationController = [(BKUIFingerPrintEnrollTutorialViewController *)self animationController];
  [animationController stopAnimation];

  animationController2 = [(BKUIFingerPrintEnrollTutorialViewController *)self animationController];
  [animationController2 startAnimation];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = BKUIFingerPrintEnrollTutorialViewController;
  coordinatorCopy = coordinator;
  [(OBBaseWelcomeController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __98__BKUIFingerPrintEnrollTutorialViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_278D0A028;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
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
  tutorialText = [(BKUIFingerPrintEnrollTutorialViewController *)self tutorialText];
  v7 = [v3 stringWithFormat:@"%@\n\n%@", v5, tutorialText];

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
    tutorialImage = [(BKUIFingerPrintEnrollTutorialViewController *)self tutorialImage];
    [(UIImageView *)self->_enrollTutorialImageView setImage:tutorialImage];

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

- (void)_continuePressed:(id)pressed
{
  delegate = [(BKUIFingerPrintEnrollTutorialViewController *)self delegate];
  [delegate didSelectPrimaryButton:self];
}

- (void)_enrollSkipped:(id)skipped
{
  delegate = [(BKUIFingerPrintEnrollTutorialViewController *)self delegate];
  [delegate didSelectSecondaryButton:self];
}

- (void)setEnrollViewState:(unint64_t)state
{
  self->_enrollViewState = state;
  if (state - 2 >= 3)
  {
    if (state == 1)
    {
      headerView = [(BKUIFingerPrintEnrollTutorialViewController *)self headerView];
      _headerTitlePhase2 = [(BKUIFingerPrintEnrollTutorialViewController *)self _headerTitlePhase2];
      [headerView setTitle:_headerTitlePhase2];

      headerView2 = [(BKUIFingerPrintEnrollTutorialViewController *)self headerView];
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = [v21 localizedStringForKey:@"KEEP_GOING" value:&stru_2853BB280 table:@"BiometricKitUI"];
      [headerView2 setDetailText:v22];

      headerView3 = [(BKUIFingerPrintEnrollTutorialViewController *)self headerView];
      [headerView3 layoutIfNeeded];

      buttonTray = [(BKUIFingerPrintEnrollTutorialViewController *)self buttonTray];
      [buttonTray removeAllButtons];

      buttonTray2 = [(BKUIFingerPrintEnrollTutorialViewController *)self buttonTray];
      continueButton = [(BKUIFingerPrintEnrollTutorialViewController *)self continueButton];
      [buttonTray2 addButton:continueButton];

      tutorialImage = [(BKUIFingerPrintEnrollTutorialViewController *)self tutorialImage];
      enrollTutorialImageView = [(BKUIFingerPrintEnrollTutorialViewController *)self enrollTutorialImageView];
      [enrollTutorialImageView setImage:tutorialImage];

      view = [(BKUIFingerPrintEnrollTutorialViewController *)self view];
      [view layoutIfNeeded];
    }

    else
    {
      if (state)
      {
        return;
      }

      headerView4 = [(BKUIFingerPrintEnrollTutorialViewController *)self headerView];
      _headerTitlePhase1 = [(BKUIFingerPrintEnrollTutorialViewController *)self _headerTitlePhase1];
      [headerView4 setTitle:_headerTitlePhase1];

      tutorialImage2 = [(BKUIFingerPrintEnrollTutorialViewController *)self tutorialImage];
      enrollTutorialImageView2 = [(BKUIFingerPrintEnrollTutorialViewController *)self enrollTutorialImageView];
      [enrollTutorialImageView2 setImage:tutorialImage2];

      headerView5 = [(BKUIFingerPrintEnrollTutorialViewController *)self headerView];
      [headerView5 layoutIfNeeded];

      buttonTray3 = [(BKUIFingerPrintEnrollTutorialViewController *)self buttonTray];
      [buttonTray3 removeAllButtons];

      if ([(BKUIFingerPrintEnrollTutorialViewController *)self inBuddy])
      {
        buttonTray4 = [(BKUIFingerPrintEnrollTutorialViewController *)self buttonTray];
        continueButton2 = [(BKUIFingerPrintEnrollTutorialViewController *)self continueButton];
        [buttonTray4 addButton:continueButton2];

        isSecondEnrollment = [(BKUIFingerPrintEnrollTutorialViewController *)self isSecondEnrollment];
        skipButton = [(BKUIFingerPrintEnrollTutorialViewController *)self skipButton];
        v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v15 = v14;
        if (isSecondEnrollment)
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
        [skipButton setTitle:v31 forState:0];

        buttonTray5 = [(BKUIFingerPrintEnrollTutorialViewController *)self buttonTray];
        skipButton2 = [(BKUIFingerPrintEnrollTutorialViewController *)self skipButton];
        [buttonTray5 addButton:skipButton2];

        headerView6 = [(BKUIFingerPrintEnrollTutorialViewController *)self headerView];
        _detailTextPhase1 = [(BKUIFingerPrintEnrollTutorialViewController *)self _detailTextPhase1];
      }

      else
      {
        headerView6 = [(BKUIFingerPrintEnrollTutorialViewController *)self headerView];
        _detailTextPhase1 = [(BKUIFingerPrintEnrollTutorialViewController *)self combinedTutorialText];
      }

      v34 = _detailTextPhase1;
      [headerView6 setDetailText:_detailTextPhase1];

      view = [(BKUIFingerPrintEnrollTutorialViewController *)self posedVideoPlayerView];
      _videoAssetName = [(BKUIFingerPrintEnrollTutorialViewController *)self _videoAssetName];
      [view setAssetName:_videoAssetName];
    }
  }

  else
  {

    [(BKUIFingerPrintEnrollTutorialViewController *)self setEnrollViewState:0];
  }
}

- (double)_contentViewHeight
{
  _topTouchButtonIpad = [(BKUIFingerPrintEnrollTutorialViewController *)self _topTouchButtonIpad];
  [(BKUIFingerPrintEnrollTutorialViewController *)self displayRect];
  v5 = v4 * 0.36;
  v6 = fmaxf(v5, 200.0);
  if (_topTouchButtonIpad)
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
  _topTouchButtonIpad = [(BKUIFingerPrintEnrollTutorialViewController *)self _topTouchButtonIpad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (_topTouchButtonIpad)
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
  view = [(BKUIFingerPrintEnrollTutorialViewController *)self view];
  v4 = [BKUIUtils activeInterfaceOrientationForView:view];

  v5 = @"_V";
  if (![(BKUIFingerPrintEnrollTutorialViewController *)self enrollViewState])
  {
    if ([(BKUIFingerPrintEnrollTutorialViewController *)self isSecondEnrollment])
    {
      initialInterfaceOrientation = [(BKUIFingerPrintEnrollTutorialViewController *)self initialInterfaceOrientation];
      v7 = @"_V";
      v8 = @"_H_rotate";
      if ((v4 - 3) >= 2)
      {
        v8 = @"_V";
      }

      if ((initialInterfaceOrientation - 3) <= 1)
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

      if ((initialInterfaceOrientation - 1) <= 1)
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

  _devicePrefix = [(BKUIFingerPrintEnrollTutorialViewController *)self _devicePrefix];
  v11 = [_devicePrefix stringByAppendingString:v5];

  return v11;
}

- (void)loadAVPlayer
{
  if (![(BKUIFingerPrintEnrollTutorialViewController *)self enrollViewState])
  {
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    posedVideoPlayerView = [(BKUIFingerPrintEnrollTutorialViewController *)self posedVideoPlayerView];
    v6 = posedVideoPlayerView;
    if (IsReduceMotionEnabled)
    {
      [posedVideoPlayerView setAlpha:0.0];

      posedVideoPlayerView2 = [(BKUIFingerPrintEnrollTutorialViewController *)self posedVideoPlayerView];
      [posedVideoPlayerView2 load];

      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __59__BKUIFingerPrintEnrollTutorialViewController_loadAVPlayer__block_invoke;
      v7[3] = &unk_278D09978;
      v7[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v7 animations:1.0];
    }

    else
    {
      [posedVideoPlayerView load];
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
  posedVideoPlayerView = [(BKUIFingerPrintEnrollTutorialViewController *)self posedVideoPlayerView];

  if (!posedVideoPlayerView)
  {
    v4 = [BKUIAnimationView alloc];
    v5 = [(OBAnimationView *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(BKUIFingerPrintEnrollTutorialViewController *)self setAnimationView:v5];

    animationView = [(BKUIFingerPrintEnrollTutorialViewController *)self animationView];
    [animationView setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(BKUIFingerPrintEnrollTutorialViewController *)self contentView];
    animationView2 = [(BKUIFingerPrintEnrollTutorialViewController *)self animationView];
    [contentView addSubview:animationView2];

    contentView2 = [(BKUIFingerPrintEnrollTutorialViewController *)self contentView];
    [contentView2 bounds];
    v11 = v10;
    animationView3 = [(BKUIFingerPrintEnrollTutorialViewController *)self animationView];
    [animationView3 topOffsetPercentage];
    v14 = v11 * v13;

    if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
    {
      v14 = v14 + -2.5;
    }

    v37 = MEMORY[0x277CCAAD0];
    animationView4 = [(BKUIFingerPrintEnrollTutorialViewController *)self animationView];
    centerXAnchor = [animationView4 centerXAnchor];
    view = [(BKUIFingerPrintEnrollTutorialViewController *)self view];
    centerXAnchor2 = [view centerXAnchor];
    v39 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v45[0] = v39;
    animationView5 = [(BKUIFingerPrintEnrollTutorialViewController *)self animationView];
    topAnchor = [animationView5 topAnchor];
    contentView3 = [(BKUIFingerPrintEnrollTutorialViewController *)self contentView];
    topAnchor2 = [contentView3 topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v14];
    v45[1] = v16;
    animationView6 = [(BKUIFingerPrintEnrollTutorialViewController *)self animationView];
    widthAnchor = [animationView6 widthAnchor];
    v19 = [widthAnchor constraintEqualToConstant:32.0];
    v45[2] = v19;
    animationView7 = [(BKUIFingerPrintEnrollTutorialViewController *)self animationView];
    heightAnchor = [animationView7 heightAnchor];
    v22 = [heightAnchor constraintEqualToConstant:32.0];
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
    animationView8 = [(BKUIFingerPrintEnrollTutorialViewController *)self animationView];
    v33 = [v31 initWithUrlToPackage:v29 animationView:animationView8 animatedStates:v27 startAtFirstState:0];
    [(BKUIFingerPrintEnrollTutorialViewController *)self setAnimationController:v33];
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (double)_contentViewTopOffset
{
  navigationController = [(BKUIFingerPrintEnrollTutorialViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar bounds];
  v6 = -v5;
  navigationController2 = [(BKUIFingerPrintEnrollTutorialViewController *)self navigationController];
  view = [navigationController2 view];
  window = [view window];
  windowScene = [window windowScene];
  statusBarManager = [windowScene statusBarManager];
  [statusBarManager statusBarFrame];
  v13 = v6 - v12;

  presentingViewController = [(BKUIFingerPrintEnrollTutorialViewController *)self presentingViewController];
  if (presentingViewController)
  {
    v15 = presentingViewController;
    v16 = +[BKUIDevice sharedInstance];
    isIdiomPad = [v16 isIdiomPad];

    if (isIdiomPad)
    {
      navigationController3 = [(BKUIFingerPrintEnrollTutorialViewController *)self navigationController];
      navigationBar2 = [navigationController3 navigationBar];
      [navigationBar2 bounds];
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
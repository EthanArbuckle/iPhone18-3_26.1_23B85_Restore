@interface BKUIPearlJindoEnrollViewController
- (BOOL)_isDarkMode;
- (CGSize)_fullEnrollViewSize;
- (id)buttonTray;
- (id)escapeHatchButton;
- (id)nextStateButton;
- (id)nextStateButtonContainer;
- (id)retryMatchOperationButton;
- (void)_handleEnrollStateOnAppear;
- (void)_postBannerToDestinationWithInitialStateCollapsed:(BOOL)collapsed enrollViewStateConfiguration:(id)configuration;
- (void)_prepEnrollViewAndEnrollTutorialMica;
- (void)_sceneDidActivate:(id)activate;
- (void)_sceneWillDeactivate:(id)deactivate;
- (void)_setupUI;
- (void)alertActionTappedFromAlert;
- (void)animateToSuccessCompletionLayout:(int64_t)layout;
- (void)didBecomeActive:(id)active;
- (void)didChangeActiveLayoutMode:(id)mode;
- (void)navigateToMidFlowPeriocularSplashScreenWithPrepareAction:(id)action completionAction:(id)completionAction;
- (void)nextStateButtonPressed:(id)pressed;
- (void)presentableDidAppearAsBanner:(id)banner;
- (void)stateTransitionDidComplete;
- (void)transitionToSuccessFromPeriocularSplash;
- (void)viewDidLoad;
- (void)willResignActive:(id)active;
@end

@implementation BKUIPearlJindoEnrollViewController

- (void)viewDidLoad
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = BKUIPearlJindoEnrollViewController;
  [(BKUIPearlEnrollViewController *)&v14 viewDidLoad];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__sceneWillDeactivate_ name:*MEMORY[0x277D76E78] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__sceneDidActivate_ name:*MEMORY[0x277D76E48] object:0];

  objc_initWeak(&location, self);
  v15[0] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __49__BKUIPearlJindoEnrollViewController_viewDidLoad__block_invoke;
  v11 = &unk_278D09928;
  objc_copyWeak(&v12, &location);
  v6 = [(BKUIPearlJindoEnrollViewController *)self registerForTraitChanges:v5 withHandler:&v8];
  [(BKUIPearlJindoEnrollViewController *)self setTraitChangeRegistration:v6, v8, v9, v10, v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  v7 = *MEMORY[0x277D85DE8];
}

void __49__BKUIPearlJindoEnrollViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained instructionView];
  [v1 setDarkMode:{objc_msgSend(WeakRetained, "_isDarkMode")}];
}

- (void)navigateToMidFlowPeriocularSplashScreenWithPrepareAction:(id)action completionAction:(id)completionAction
{
  actionCopy = action;
  completionActionCopy = completionAction;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __112__BKUIPearlJindoEnrollViewController_navigateToMidFlowPeriocularSplashScreenWithPrepareAction_completionAction___block_invoke;
  v11[3] = &unk_278D09950;
  objc_copyWeak(&v12, &location);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __112__BKUIPearlJindoEnrollViewController_navigateToMidFlowPeriocularSplashScreenWithPrepareAction_completionAction___block_invoke_2;
  v9[3] = &unk_278D09950;
  objc_copyWeak(&v10, &location);
  v8.receiver = self;
  v8.super_class = BKUIPearlJindoEnrollViewController;
  [(BKUIPearlEnrollViewController *)&v8 navigateToMidFlowPeriocularSplashScreenWithPrepareAction:v11 completionAction:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __112__BKUIPearlJindoEnrollViewController_navigateToMidFlowPeriocularSplashScreenWithPrepareAction_completionAction___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained presentable];
  [v1 revoke];
}

void __112__BKUIPearlJindoEnrollViewController_navigateToMidFlowPeriocularSplashScreenWithPrepareAction_completionAction___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _postBannerToDestinationWithInitialStateCollapsed:0];
}

- (void)transitionToSuccessFromPeriocularSplash
{
  enrollView = [(BKUIPearlEnrollViewController *)self enrollView];
  [enrollView setHidden:1];

  v4 = dispatch_time(0, 650000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__BKUIPearlJindoEnrollViewController_transitionToSuccessFromPeriocularSplash__block_invoke;
  block[3] = &unk_278D09978;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

void __77__BKUIPearlJindoEnrollViewController_transitionToSuccessFromPeriocularSplash__block_invoke(uint64_t a1)
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
  v13 = __77__BKUIPearlJindoEnrollViewController_transitionToSuccessFromPeriocularSplash__block_invoke_2;
  v14 = &unk_278D09978;
  v15 = v10;
  [v9 transitionTo:? completion:?];
}

void __77__BKUIPearlJindoEnrollViewController_transitionToSuccessFromPeriocularSplash__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) midFlowPeriocularSplashController];
  v3 = [v2 view];
  [v3 removeFromSuperview];

  v4 = [*(a1 + 32) parentViewController];
  v5 = [*(a1 + 32) midFlowPeriocularSplashController];
  [v4 removeChildViewController:v5];

  [*(a1 + 32) setNeedsStatusBarAppearanceUpdate];
  [*(a1 + 32) _postBannerToDestinationWithInitialStateCollapsed:1];
  v6 = [*(a1 + 32) presentable];
  [v6 collapse];

  v7 = dispatch_time(0, 150000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__BKUIPearlJindoEnrollViewController_transitionToSuccessFromPeriocularSplash__block_invoke_3;
  block[3] = &unk_278D09978;
  block[4] = *(a1 + 32);
  dispatch_after(v7, MEMORY[0x277D85CD0], block);
}

void __77__BKUIPearlJindoEnrollViewController_transitionToSuccessFromPeriocularSplash__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setState:10 animated:1];
  v2 = [*(a1 + 32) enrollView];
  [v2 setHidden:0];
}

- (void)animateToSuccessCompletionLayout:(int64_t)layout
{
  v7.receiver = self;
  v7.super_class = BKUIPearlJindoEnrollViewController;
  [(BKUIPearlEnrollViewController *)&v7 animateToSuccessCompletionLayout:layout];
  presentable = [(BKUIPearlJindoEnrollViewController *)self presentable];
  [presentable collapse];

  v5 = dispatch_time(0, 4000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__BKUIPearlJindoEnrollViewController_animateToSuccessCompletionLayout___block_invoke;
  block[3] = &unk_278D09978;
  block[4] = self;
  dispatch_after(v5, MEMORY[0x277D85CD0], block);
}

void __71__BKUIPearlJindoEnrollViewController_animateToSuccessCompletionLayout___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) presentable];
  [v1 revoke];
}

- (void)presentableDidAppearAsBanner:(id)banner
{
  if ([(BKUIPearlEnrollViewController *)self isGlassesEnrollmentOnly])
  {
    currentOperationHandler = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    [currentOperationHandler matchUserForSecondPhaseEnrollmentWithCompletionAction:0];
  }
}

- (void)_postBannerToDestinationWithInitialStateCollapsed:(BOOL)collapsed enrollViewStateConfiguration:(id)configuration
{
  v33 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  presentable = [(BKUIPearlJindoEnrollViewController *)self presentable];
  if (presentable)
  {
    v7 = presentable;
    presentable2 = [(BKUIPearlJindoEnrollViewController *)self presentable];
    activeLayoutMode = [presentable2 activeLayoutMode];

    if (activeLayoutMode != -1)
    {
      presentable3 = [(BKUIPearlJindoEnrollViewController *)self presentable];
      [presentable3 revoke];
    }
  }

  enrollView = [(BKUIPearlEnrollViewController *)self enrollView];
  [enrollView removeFromSuperview];

  enrollView2 = [(BKUIPearlEnrollViewController *)self enrollView];
  [enrollView2 setAlpha:1.0];

  if (configurationCopy)
  {
    configurationCopy[2](configurationCopy);
  }

  v13 = MEMORY[0x277CF0A80];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleIdentifier = [v14 bundleIdentifier];
  v16 = [v13 bannerSourceForDestination:0 forRequesterIdentifier:bundleIdentifier];

  v17 = [BKUIHostedJindoPresentable alloc];
  enrollView3 = [(BKUIPearlEnrollViewController *)self enrollView];
  v19 = [(BKUIHostedJindoPresentable *)v17 initWithCustomLayout:2 enrollView:enrollView3 destination:0];
  [(BKUIPearlJindoEnrollViewController *)self setPresentable:v19];

  presentable4 = [(BKUIPearlJindoEnrollViewController *)self presentable];
  [presentable4 setObservingDelegate:self];

  v21 = objc_alloc(MEMORY[0x277CBEB38]);
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  v24 = [v21 initWithObjectsAndKeys:{v23, @"Key", 0}];

  userInfoForPosting = [(BKUIHostedJindoPresentable *)self->_presentable userInfoForPosting];
  [v24 addEntriesFromDictionary:userInfoForPosting];

  presentable = self->_presentable;
  v30 = 0;
  LOBYTE(userInfoForPosting) = [v16 postPresentable:presentable options:1 userInfo:v24 error:&v30];
  v27 = v30;
  if ((userInfoForPosting & 1) == 0)
  {
    v28 = _BKUILoggingFacility();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v32 = v27;
      _os_log_impl(&dword_241B0A000, v28, OS_LOG_TYPE_DEFAULT, "Error attempting to post: %{public}@", buf, 0xCu);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_sceneWillDeactivate:(id)deactivate
{
  v17 = *MEMORY[0x277D85DE8];
  deactivateCopy = deactivate;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = _BKUILoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [deactivateCopy description];
    v15 = 138412290;
    v16 = v6;
    _os_log_impl(&dword_241B0A000, v5, OS_LOG_TYPE_DEFAULT, "Scene will deactivate %@", &v15, 0xCu);
  }

  object = [deactivateCopy object];
  view = [(BKUIPearlJindoEnrollViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  if (object != windowScene)
  {
    presentable = _BKUILoggingFacility();
    if (os_log_type_enabled(presentable, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_241B0A000, presentable, OS_LOG_TYPE_DEFAULT, "Scene will deactivate early exit due to non matching windowScene", &v15, 2u);
    }

    goto LABEL_9;
  }

  enrollView = [(BKUIPearlEnrollViewController *)self enrollView];
  isTransitioningToState = [enrollView isTransitioningToState];

  if (!isTransitioningToState)
  {
    presentable = [(BKUIPearlJindoEnrollViewController *)self presentable];
    [presentable revoke];
LABEL_9:

    goto LABEL_10;
  }

  [(BKUIPearlJindoEnrollViewController *)self setJindoNeedsResignActiveRevoke:1];
LABEL_10:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_sceneDidActivate:(id)activate
{
  v15 = *MEMORY[0x277D85DE8];
  activateCopy = activate;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = _BKUILoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [activateCopy description];
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&dword_241B0A000, v5, OS_LOG_TYPE_DEFAULT, "Scene did activate %@", &v13, 0xCu);
  }

  object = [activateCopy object];
  view = [(BKUIPearlJindoEnrollViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  if (object == windowScene)
  {
    [(BKUIPearlJindoEnrollViewController *)self didBecomeActive:activateCopy];
  }

  else
  {
    v11 = _BKUILoggingFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_241B0A000, v11, OS_LOG_TYPE_DEFAULT, "Scene did activate, early exit due to non matching windowScene", &v13, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_setupUI
{
  v143[4] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 URLForResource:@"Enrollment-rings-alpha~iphone" withExtension:@"mov"];

  v139 = v4;
  v5 = [MEMORY[0x277CE6650] assetWithURL:v4];
  [v5 loadValuesAsynchronouslyForKeys:&unk_2853CC838 completionHandler:0];
  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  [mEMORY[0x277CB83F8] setCategory:*MEMORY[0x277CB8020] withOptions:1 error:0];

  v137 = [MEMORY[0x277CE65B0] playerItemWithAsset:v5];
  v7 = [objc_alloc(MEMORY[0x277CE6598]) initWithPlayerItem:v137];
  [v7 setMuted:1];
  [v7 setAllowsExternalPlayback:0];
  view = [(BKUIPearlJindoEnrollViewController *)self view];
  [view bounds];
  v10 = v9;
  view2 = [(BKUIPearlJindoEnrollViewController *)self view];
  [view2 bounds];
  v13 = v12;

  v14 = [BKUIPearlMovieLoopView alloc];
  v15 = *MEMORY[0x277CBF3A0];
  v16 = *(MEMORY[0x277CBF3A0] + 8);
  v17 = *(MEMORY[0x277CBF3A0] + 16);
  v18 = *(MEMORY[0x277CBF3A0] + 24);
  v138 = v5;
  v19 = [(BKUIPearlMovieLoopView *)v14 initWithFrame:v7 player:v5 asset:*MEMORY[0x277CBF3A0], v16, v17, v18];
  [(BKUIPearlMovieLoopView *)v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  v136 = v7;
  [v7 play];
  v20 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v15, v16, v17, v18}];
  [(BKUIPearlJindoEnrollViewController *)self setHostedTutorialMicaView:v20];

  hostedTutorialMicaView = [(BKUIPearlJindoEnrollViewController *)self hostedTutorialMicaView];
  [hostedTutorialMicaView addSubview:v19];

  v120 = MEMORY[0x277CCAAD0];
  widthAnchor = [(BKUIPearlMovieLoopView *)v19 widthAnchor];
  v129 = [widthAnchor constraintEqualToConstant:v10 + -52.0];
  v143[0] = v129;
  heightAnchor = [(BKUIPearlMovieLoopView *)v19 heightAnchor];
  v123 = [heightAnchor constraintEqualToConstant:v13 + -52.0];
  v143[1] = v123;
  bottomAnchor = [(BKUIPearlMovieLoopView *)v19 bottomAnchor];
  hostedTutorialMicaView2 = [(BKUIPearlJindoEnrollViewController *)self hostedTutorialMicaView];
  bottomAnchor2 = [hostedTutorialMicaView2 bottomAnchor];
  v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v143[2] = v25;
  v135 = v19;
  centerXAnchor = [(BKUIPearlMovieLoopView *)v19 centerXAnchor];
  hostedTutorialMicaView3 = [(BKUIPearlJindoEnrollViewController *)self hostedTutorialMicaView];
  centerXAnchor2 = [hostedTutorialMicaView3 centerXAnchor];
  v29 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v143[3] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v143 count:4];
  [v120 activateConstraints:v30];

  hostedTutorialMicaView4 = [(BKUIPearlJindoEnrollViewController *)self hostedTutorialMicaView];
  [hostedTutorialMicaView4 setTranslatesAutoresizingMaskIntoConstraints:0];

  view3 = [(BKUIPearlJindoEnrollViewController *)self view];
  hostedTutorialMicaView5 = [(BKUIPearlJindoEnrollViewController *)self hostedTutorialMicaView];
  [view3 addSubview:hostedTutorialMicaView5];

  v118 = MEMORY[0x277CCAAD0];
  hostedTutorialMicaView6 = [(BKUIPearlJindoEnrollViewController *)self hostedTutorialMicaView];
  topAnchor = [hostedTutorialMicaView6 topAnchor];
  view4 = [(BKUIPearlJindoEnrollViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v121 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v142[0] = v121;
  hostedTutorialMicaView7 = [(BKUIPearlJindoEnrollViewController *)self hostedTutorialMicaView];
  heightAnchor2 = [hostedTutorialMicaView7 heightAnchor];
  view5 = [(BKUIPearlJindoEnrollViewController *)self view];
  [view5 bounds];
  v38 = [heightAnchor2 constraintEqualToConstant:v37 + 26.0];
  v142[1] = v38;
  hostedTutorialMicaView8 = [(BKUIPearlJindoEnrollViewController *)self hostedTutorialMicaView];
  widthAnchor2 = [hostedTutorialMicaView8 widthAnchor];
  view6 = [(BKUIPearlJindoEnrollViewController *)self view];
  [view6 bounds];
  v43 = [widthAnchor2 constraintEqualToConstant:v42];
  v142[2] = v43;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v142 count:3];
  [v118 activateConstraints:v44];

  hostedTutorialMicaView9 = [(BKUIPearlJindoEnrollViewController *)self hostedTutorialMicaView];
  centerXAnchor3 = [hostedTutorialMicaView9 centerXAnchor];
  view7 = [(BKUIPearlJindoEnrollViewController *)self view];
  centerXAnchor4 = [view7 centerXAnchor];
  v49 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [(BKUIPearlJindoEnrollViewController *)self setHostedTutorialMicaViewCenterConstraint:v49];

  hostedTutorialMicaViewCenterConstraint = [(BKUIPearlJindoEnrollViewController *)self hostedTutorialMicaViewCenterConstraint];
  [hostedTutorialMicaViewCenterConstraint setActive:1];

  [(BKUIPearlJindoEnrollViewController *)self _prepEnrollViewAndEnrollTutorialMica];
  v51 = [BKUIButtonTray alloc];
  view8 = [(BKUIPearlJindoEnrollViewController *)self view];
  [view8 bounds];
  v53 = [(BKUIButtonTray *)v51 initWithFrame:?];
  [(BKUIPearlEnrollViewController *)self setButtonTray:v53];

  buttonTray = [(BKUIPearlJindoEnrollViewController *)self buttonTray];
  bottomLinkButton = [buttonTray bottomLinkButton];
  [(BKUIPearlEnrollViewController *)self setEscapeHatchButton:bottomLinkButton];

  buttonTray2 = [(BKUIPearlJindoEnrollViewController *)self buttonTray];
  nextStateButton = [buttonTray2 nextStateButton];
  [(BKUIPearlEnrollViewController *)self setNextStateButton:nextStateButton];

  buttonTray3 = [(BKUIPearlJindoEnrollViewController *)self buttonTray];
  nextStateButtonContainer = [buttonTray3 nextStateButtonContainer];
  [(BKUIPearlEnrollViewController *)self setNextStateButtonContainer:nextStateButtonContainer];

  view9 = [(BKUIPearlJindoEnrollViewController *)self view];
  [view9 frame];
  v62 = v61;
  view10 = [(BKUIPearlJindoEnrollViewController *)self view];
  [view10 bounds];
  v65 = v64;

  v66 = [[BKUIButtonTray alloc] initWithFrame:1 willUseActionDelegate:0.0, 0.0, v62, v65];
  v67 = [[BKUIButtonTray alloc] initWithFrame:1 willUseActionDelegate:0.0, 0.0, v62, v65];
  v68 = [BKUIJindoBottomContainer alloc];
  inBuddy = [(BKUIPearlEnrollViewController *)self inBuddy];
  v134 = v66;
  v70 = [[BKUIJindoContainerScrollview alloc] initWithFrame:v66 buttonTray:0.0, 0.0, v62, v65];
  v131 = v67;
  v71 = [[BKUIJindoContainerScrollview alloc] initWithFrame:v67 buttonTray:0.0, 0.0, v62, v65];
  v72 = [(BKUIPearlEnrollViewBottomContainer *)v68 initWithFrame:inBuddy inBuddy:v70 scrollView:v71 overlapScrollView:self delegate:1 squareNeedsPositionLayout:0.0, 0.0, v62, v65];
  [(BKUIPearlEnrollViewController *)self setBottomContainer:v72];

  buttonTray4 = [(BKUIPearlJindoEnrollViewController *)self buttonTray];
  topLinkButton = [buttonTray4 topLinkButton];
  [(BKUIPearlEnrollViewController *)self setRetryMatchOperationButton:topLinkButton];

  retryMatchOperationButton = [(BKUIPearlJindoEnrollViewController *)self retryMatchOperationButton];
  titleLabel = [retryMatchOperationButton titleLabel];
  [titleLabel setAdjustsFontSizeToFitWidth:1];

  retryMatchOperationButton2 = [(BKUIPearlJindoEnrollViewController *)self retryMatchOperationButton];
  [retryMatchOperationButton2 addTarget:self action:sel_retryPressed forControlEvents:64];

  nextStateButton2 = [(BKUIPearlJindoEnrollViewController *)self nextStateButton];
  [nextStateButton2 addTarget:self action:sel_nextStateButtonPressed_ forControlEvents:0x2000];

  escapeHatchButton = [(BKUIPearlJindoEnrollViewController *)self escapeHatchButton];
  [escapeHatchButton addTarget:self action:sel_escapeHatchButtonPressed forControlEvents:0x2000];

  buttonTray5 = [(BKUIPearlJindoEnrollViewController *)self buttonTray];
  bottomLinkButton2 = [buttonTray5 bottomLinkButton];
  [(BKUIPearlEnrollViewController *)self setEscapeHatchButton:bottomLinkButton2];

  bottomContainer = [(BKUIPearlEnrollViewController *)self bottomContainer];
  [bottomContainer setTranslatesAutoresizingMaskIntoConstraints:0];

  view11 = [(BKUIPearlJindoEnrollViewController *)self view];
  bottomContainer2 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  [view11 addSubview:bottomContainer2];

  bottomContainer3 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  topAnchor3 = [bottomContainer3 topAnchor];
  view12 = [(BKUIPearlJindoEnrollViewController *)self view];
  topAnchor4 = [view12 topAnchor];
  v89 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [(BKUIPearlJindoEnrollViewController *)self setBottomContainerTopConstraint:v89];

  v114 = MEMORY[0x277CCAAD0];
  bottomContainerTopConstraint = [(BKUIPearlJindoEnrollViewController *)self bottomContainerTopConstraint];
  v141[0] = bottomContainerTopConstraint;
  bottomContainer4 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  bottomAnchor3 = [bottomContainer4 bottomAnchor];
  view13 = [(BKUIPearlJindoEnrollViewController *)self view];
  bottomAnchor4 = [view13 bottomAnchor];
  v116 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v141[1] = v116;
  bottomContainer5 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  leadingAnchor = [bottomContainer5 leadingAnchor];
  view14 = [(BKUIPearlJindoEnrollViewController *)self view];
  leadingAnchor2 = [view14 leadingAnchor];
  v92 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v141[2] = v92;
  bottomContainer6 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  trailingAnchor = [bottomContainer6 trailingAnchor];
  view15 = [(BKUIPearlJindoEnrollViewController *)self view];
  trailingAnchor2 = [view15 trailingAnchor];
  v97 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v141[3] = v97;
  v98 = [MEMORY[0x277CBEA60] arrayWithObjects:v141 count:4];
  [v114 activateConstraints:v98];

  bottomContainer7 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  [bottomContainer7 setupInitialUI];

  [(BKUIPearlEnrollViewController *)self _updateLeftBarButtonItem];
  view16 = [(BKUIPearlJindoEnrollViewController *)self view];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [view16 setBackgroundColor:systemBackgroundColor];

  view17 = [(BKUIPearlJindoEnrollViewController *)self view];
  superview = [view17 superview];
  systemBackgroundColor2 = [MEMORY[0x277D75348] systemBackgroundColor];
  [superview setBackgroundColor:systemBackgroundColor2];

  instructionView = [(BKUIPearlEnrollViewController *)self instructionView];
  [instructionView setDarkMode:{-[BKUIPearlJindoEnrollViewController _isDarkMode](self, "_isDarkMode")}];

  [(BKUIPearlJindoEnrollViewController *)self setNeedsStatusBarAppearanceUpdate];
  buttonTray6 = [(BKUIPearlJindoEnrollViewController *)self buttonTray];
  [buttonTray6 updateButtonLayout];

  enrollView = [(BKUIPearlEnrollViewController *)self enrollView];
  [enrollView setTransitionDelegate:self];

  if ([(BKUIPearlEnrollViewController *)self isGlassesEnrollmentOnly])
  {
    v140[0] = MEMORY[0x277D85DD0];
    v140[1] = 3221225472;
    v140[2] = __46__BKUIPearlJindoEnrollViewController__setupUI__block_invoke;
    v140[3] = &unk_278D09978;
    v140[4] = self;
    [(BKUIPearlJindoEnrollViewController *)self _postBannerToDestinationWithInitialStateCollapsed:0 enrollViewStateConfiguration:v140];
  }

  view18 = [(BKUIPearlJindoEnrollViewController *)self view];
  [view18 bounds];
  v110 = v109 + 26.0 + 40.0;
  bottomContainerTopConstraint2 = [(BKUIPearlJindoEnrollViewController *)self bottomContainerTopConstraint];
  [bottomContainerTopConstraint2 setConstant:v110];

  v112 = *MEMORY[0x277D85DE8];
}

void __46__BKUIPearlJindoEnrollViewController__setupUI__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hostedTutorialMicaView];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) enrollView];
  [v3 setPillsHidden:1];

  [*(a1 + 32) setState:2 animated:0];
  objc_initWeak(&location, *(a1 + 32));
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__BKUIPearlJindoEnrollViewController__setupUI__block_invoke_2;
  v5[3] = &unk_278D09950;
  objc_copyWeak(&v6, &location);
  [v4 _setState:3 animated:0 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __46__BKUIPearlJindoEnrollViewController__setupUI__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained enrollView];
  [v1 setNeedsLayout];
}

- (void)willResignActive:(id)active
{
  v5.receiver = self;
  v5.super_class = BKUIPearlJindoEnrollViewController;
  [(BKUIPearlEnrollViewController *)&v5 willResignActive:active];
  presentable = [(BKUIPearlJindoEnrollViewController *)self presentable];
  [presentable revoke];
}

- (void)didBecomeActive:(id)active
{
  v11.receiver = self;
  v11.super_class = BKUIPearlJindoEnrollViewController;
  [(BKUIPearlEnrollViewController *)&v11 didBecomeActive:active];
  view = [(BKUIPearlJindoEnrollViewController *)self view];
  window = [view window];

  if (window)
  {
    parentViewController = [(BKUIPearlJindoEnrollViewController *)self parentViewController];
    childViewControllers = [parentViewController childViewControllers];
    v8 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global];
    v9 = [childViewControllers filteredArrayUsingPredicate:v8];
    v10 = [v9 count];

    if (!v10 && [(BKUIPearlEnrollViewController *)self state]!= 10 && [(BKUIPearlEnrollViewController *)self state]!= 2)
    {
      [(BKUIPearlJindoEnrollViewController *)self _postBannerToDestinationWithInitialStateCollapsed:0];
    }
  }
}

uint64_t __54__BKUIPearlJindoEnrollViewController_didBecomeActive___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)nextStateButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  nextStateButton = [(BKUIPearlJindoEnrollViewController *)self nextStateButton];
  [nextStateButton setEnabled:0];

  if (![(BKUIPearlEnrollViewController *)self isGlassesEnrollmentOnly]&& [(BKUIPearlEnrollViewController *)self state]== 2)
  {
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

          goto LABEL_12;
        }
      }

      else
      {
      }

      [(BKUIPearlEnrollViewController *)self startEnroll];
    }

LABEL_12:
    v12 = dispatch_time(0, 400000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__BKUIPearlJindoEnrollViewController_nextStateButtonPressed___block_invoke;
    block[3] = &unk_278D09978;
    block[4] = self;
    dispatch_after(v12, MEMORY[0x277D85CD0], block);
    goto LABEL_13;
  }

  v13.receiver = self;
  v13.super_class = BKUIPearlJindoEnrollViewController;
  [(BKUIPearlEnrollViewController *)&v13 nextStateButtonPressed:pressedCopy];
  nextStateButton2 = [(BKUIPearlJindoEnrollViewController *)self nextStateButton];
  [nextStateButton2 setEnabled:1];

LABEL_13:
}

uint64_t __61__BKUIPearlJindoEnrollViewController_nextStateButtonPressed___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __61__BKUIPearlJindoEnrollViewController_nextStateButtonPressed___block_invoke_2;
  v3[3] = &unk_278D09978;
  v3[4] = v1;
  return [v1 _postBannerToDestinationWithInitialStateCollapsed:0 enrollViewStateConfiguration:v3];
}

void __61__BKUIPearlJindoEnrollViewController_nextStateButtonPressed___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) hostedTutorialMicaView];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) nextStateButton];
  [v3 setEnabled:1];
}

- (BOOL)_isDarkMode
{
  traitCollection = [(BKUIPearlJindoEnrollViewController *)self traitCollection];
  v3 = [traitCollection userInterfaceStyle] == 2;

  return v3;
}

- (CGSize)_fullEnrollViewSize
{
  v3 = +[BKUIDevice sharedInstance];
  isZoomEnabled = [v3 isZoomEnabled];

  view = [(BKUIPearlJindoEnrollViewController *)self view];
  [view bounds];
  v7 = v6;
  view2 = [(BKUIPearlJindoEnrollViewController *)self view];
  [view2 bounds];
  v10 = v9;

  v11 = 30.0;
  if (!isZoomEnabled)
  {
    v11 = -15.0;
  }

  v12 = v7 + v11;
  v13 = v10 + v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)_handleEnrollStateOnAppear
{
  if (![(BKUIPearlEnrollViewController *)self isGlassesEnrollmentOnly])
  {
    v8.receiver = self;
    v8.super_class = BKUIPearlJindoEnrollViewController;
    [(BKUIPearlEnrollViewController *)&v8 _handleEnrollStateOnAppear];
    enrollView = [(BKUIPearlEnrollViewController *)self enrollView];
    [enrollView setAlpha:0.0];

    objc_initWeak(&location, self);
    enrollView2 = [(BKUIPearlEnrollViewController *)self enrollView];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __64__BKUIPearlJindoEnrollViewController__handleEnrollStateOnAppear__block_invoke;
    v5[3] = &unk_278D09950;
    objc_copyWeak(&v6, &location);
    [enrollView2 setState:3 completion:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __64__BKUIPearlJindoEnrollViewController__handleEnrollStateOnAppear__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained enrollView];
  [v1 setNeedsLayout];

  v2 = [WeakRetained enrollView];
  [v2 layoutIfNeeded];
}

- (void)_prepEnrollViewAndEnrollTutorialMica
{
  v33[2] = *MEMORY[0x277D85DE8];
  v3 = [BKUIJindoPositioningGuideView alloc];
  v29 = [(BKUIPearlPositioningGuideView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v4 = [BKUIPearlEnrollView alloc];
  [(BKUIPearlJindoEnrollViewController *)self _fullEnrollViewSize];
  v6 = v5;
  [(BKUIPearlJindoEnrollViewController *)self _fullEnrollViewSize];
  v8 = v7;
  preloadedState = [(BKUIPearlEnrollViewController *)self preloadedState];
  acquireCachedVideoCaptureSession = [preloadedState acquireCachedVideoCaptureSession];
  v11 = [(BKUIPearlEnrollView *)v4 initWithFrame:acquireCachedVideoCaptureSession videoCaptureSession:[(BKUIPearlEnrollViewController *)self inSheet] inSheet:v29 positioningGuideView:1 squareNeedsPositionLayout:0.0, 0.0, v6, v8];
  [(BKUIPearlEnrollViewController *)self setEnrollView:v11];

  enrollView = [(BKUIPearlEnrollViewController *)self enrollView];
  [enrollView setTranslatesAutoresizingMaskIntoConstraints:0];

  v28 = MEMORY[0x277CCAAD0];
  enrollView2 = [(BKUIPearlEnrollViewController *)self enrollView];
  widthAnchor = [enrollView2 widthAnchor];
  [(BKUIPearlJindoEnrollViewController *)self _fullEnrollViewSize];
  v15 = [widthAnchor constraintEqualToConstant:?];
  v33[0] = v15;
  enrollView3 = [(BKUIPearlEnrollViewController *)self enrollView];
  heightAnchor = [enrollView3 heightAnchor];
  enrollView4 = [(BKUIPearlEnrollViewController *)self enrollView];
  widthAnchor2 = [enrollView4 widthAnchor];
  v20 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
  v33[1] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  [v28 activateConstraints:v21];

  enrollView5 = [(BKUIPearlEnrollViewController *)self enrollView];
  [enrollView5 preEnrollActivate];

  if (![(BKUIPearlEnrollViewController *)self isGlassesEnrollmentOnly])
  {
    hostedTutorialMicaView = [(BKUIPearlJindoEnrollViewController *)self hostedTutorialMicaView];
    enrollView6 = [(BKUIPearlEnrollViewController *)self enrollView];
    [hostedTutorialMicaView addSubview:enrollView6];

    enrollView7 = [(BKUIPearlEnrollViewController *)self enrollView];
    [enrollView7 setAlpha:0.0];

    objc_initWeak(&location, self);
    enrollView8 = [(BKUIPearlEnrollViewController *)self enrollView];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __74__BKUIPearlJindoEnrollViewController__prepEnrollViewAndEnrollTutorialMica__block_invoke;
    v30[3] = &unk_278D09950;
    objc_copyWeak(&v31, &location);
    [enrollView8 setState:2 completion:v30];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __74__BKUIPearlJindoEnrollViewController__prepEnrollViewAndEnrollTutorialMica__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained enrollView];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __74__BKUIPearlJindoEnrollViewController__prepEnrollViewAndEnrollTutorialMica__block_invoke_2;
  v4[3] = &unk_278D09950;
  objc_copyWeak(&v5, (a1 + 32));
  [v3 setState:3 completion:v4];

  objc_destroyWeak(&v5);
}

void __74__BKUIPearlJindoEnrollViewController__prepEnrollViewAndEnrollTutorialMica__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained enrollView];
  [v1 setNeedsLayout];

  v2 = [WeakRetained enrollView];
  [v2 layoutIfNeeded];
}

- (void)stateTransitionDidComplete
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ([(BKUIPearlJindoEnrollViewController *)self jindoNeedsResignActiveRevoke])
  {
    [(BKUIPearlJindoEnrollViewController *)self setJindoNeedsResignActiveRevoke:0];
    presentable = [(BKUIPearlJindoEnrollViewController *)self presentable];
    [presentable revoke];
  }
}

- (id)nextStateButton
{
  bottomContainer = [(BKUIPearlEnrollViewController *)self bottomContainer];
  nextStateButton = [bottomContainer nextStateButton];

  return nextStateButton;
}

- (id)escapeHatchButton
{
  state = [(BKUIPearlEnrollViewController *)self state];
  if (state > 0xA)
  {
    v5 = 0;
  }

  else
  {
    if (((1 << state) & 0x747) != 0)
    {
      buttonTray = [(BKUIPearlJindoEnrollViewController *)self buttonTray];
      [buttonTray bottomLinkButton];
    }

    else
    {
      buttonTray = [(BKUIPearlJindoEnrollViewController *)self buttonTray];
      [buttonTray topLinkButton];
    }
    v5 = ;
  }

  return v5;
}

- (id)buttonTray
{
  bottomContainer = [(BKUIPearlEnrollViewController *)self bottomContainer];
  buttonTray = [bottomContainer buttonTray];

  return buttonTray;
}

- (id)nextStateButtonContainer
{
  buttonTray = [(BKUIPearlJindoEnrollViewController *)self buttonTray];
  nextStateButtonContainer = [buttonTray nextStateButtonContainer];

  return nextStateButtonContainer;
}

- (id)retryMatchOperationButton
{
  buttonTray = [(BKUIPearlJindoEnrollViewController *)self buttonTray];
  topLinkButton = [buttonTray topLinkButton];

  return topLinkButton;
}

- (void)alertActionTappedFromAlert
{
  if ([(BKUIPearlEnrollViewController *)self state]!= 10)
  {

    [(BKUIPearlJindoEnrollViewController *)self _postBannerToDestinationWithInitialStateCollapsed:0];
  }
}

- (void)didChangeActiveLayoutMode:(id)mode
{
  v17 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  view = [(BKUIPearlJindoEnrollViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  if (windowScene)
  {
    view2 = [(BKUIPearlJindoEnrollViewController *)self view];
    window2 = [view2 window];
    windowScene2 = [window2 windowScene];
    v11 = [windowScene2 activationState] == 0;
  }

  else
  {
    v11 = 0;
  }

  if ([modeCopy activeLayoutMode] >= 2 && !v11)
  {
    presentable = [(BKUIPearlJindoEnrollViewController *)self presentable];
    [presentable revoke];

    v13 = _BKUILoggingFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = modeCopy;
      _os_log_impl(&dword_241B0A000, v13, OS_LOG_TYPE_DEFAULT, "Element did clean up and auto-revoke %@", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end
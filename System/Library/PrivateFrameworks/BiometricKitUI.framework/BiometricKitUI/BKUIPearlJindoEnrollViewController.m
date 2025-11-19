@interface BKUIPearlJindoEnrollViewController
- (BOOL)_isDarkMode;
- (CGSize)_fullEnrollViewSize;
- (id)buttonTray;
- (id)escapeHatchButton;
- (id)nextStateButton;
- (id)nextStateButtonContainer;
- (id)retryMatchOperationButton;
- (void)_handleEnrollStateOnAppear;
- (void)_postBannerToDestinationWithInitialStateCollapsed:(BOOL)a3 enrollViewStateConfiguration:(id)a4;
- (void)_prepEnrollViewAndEnrollTutorialMica;
- (void)_sceneDidActivate:(id)a3;
- (void)_sceneWillDeactivate:(id)a3;
- (void)_setupUI;
- (void)alertActionTappedFromAlert;
- (void)animateToSuccessCompletionLayout:(int64_t)a3;
- (void)didBecomeActive:(id)a3;
- (void)didChangeActiveLayoutMode:(id)a3;
- (void)navigateToMidFlowPeriocularSplashScreenWithPrepareAction:(id)a3 completionAction:(id)a4;
- (void)nextStateButtonPressed:(id)a3;
- (void)presentableDidAppearAsBanner:(id)a3;
- (void)stateTransitionDidComplete;
- (void)transitionToSuccessFromPeriocularSplash;
- (void)viewDidLoad;
- (void)willResignActive:(id)a3;
@end

@implementation BKUIPearlJindoEnrollViewController

- (void)viewDidLoad
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = BKUIPearlJindoEnrollViewController;
  [(BKUIPearlEnrollViewController *)&v14 viewDidLoad];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__sceneWillDeactivate_ name:*MEMORY[0x277D76E78] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel__sceneDidActivate_ name:*MEMORY[0x277D76E48] object:0];

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

- (void)navigateToMidFlowPeriocularSplashScreenWithPrepareAction:(id)a3 completionAction:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v3 = [(BKUIPearlEnrollViewController *)self enrollView];
  [v3 setHidden:1];

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

- (void)animateToSuccessCompletionLayout:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = BKUIPearlJindoEnrollViewController;
  [(BKUIPearlEnrollViewController *)&v7 animateToSuccessCompletionLayout:a3];
  v4 = [(BKUIPearlJindoEnrollViewController *)self presentable];
  [v4 collapse];

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

- (void)presentableDidAppearAsBanner:(id)a3
{
  if ([(BKUIPearlEnrollViewController *)self isGlassesEnrollmentOnly])
  {
    v4 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
    [v4 matchUserForSecondPhaseEnrollmentWithCompletionAction:0];
  }
}

- (void)_postBannerToDestinationWithInitialStateCollapsed:(BOOL)a3 enrollViewStateConfiguration:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(BKUIPearlJindoEnrollViewController *)self presentable];
  if (v6)
  {
    v7 = v6;
    v8 = [(BKUIPearlJindoEnrollViewController *)self presentable];
    v9 = [v8 activeLayoutMode];

    if (v9 != -1)
    {
      v10 = [(BKUIPearlJindoEnrollViewController *)self presentable];
      [v10 revoke];
    }
  }

  v11 = [(BKUIPearlEnrollViewController *)self enrollView];
  [v11 removeFromSuperview];

  v12 = [(BKUIPearlEnrollViewController *)self enrollView];
  [v12 setAlpha:1.0];

  if (v5)
  {
    v5[2](v5);
  }

  v13 = MEMORY[0x277CF0A80];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 bundleIdentifier];
  v16 = [v13 bannerSourceForDestination:0 forRequesterIdentifier:v15];

  v17 = [BKUIHostedJindoPresentable alloc];
  v18 = [(BKUIPearlEnrollViewController *)self enrollView];
  v19 = [(BKUIHostedJindoPresentable *)v17 initWithCustomLayout:2 enrollView:v18 destination:0];
  [(BKUIPearlJindoEnrollViewController *)self setPresentable:v19];

  v20 = [(BKUIPearlJindoEnrollViewController *)self presentable];
  [v20 setObservingDelegate:self];

  v21 = objc_alloc(MEMORY[0x277CBEB38]);
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  v24 = [v21 initWithObjectsAndKeys:{v23, @"Key", 0}];

  v25 = [(BKUIHostedJindoPresentable *)self->_presentable userInfoForPosting];
  [v24 addEntriesFromDictionary:v25];

  presentable = self->_presentable;
  v30 = 0;
  LOBYTE(v25) = [v16 postPresentable:presentable options:1 userInfo:v24 error:&v30];
  v27 = v30;
  if ((v25 & 1) == 0)
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

- (void)_sceneWillDeactivate:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = _BKUILoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 description];
    v15 = 138412290;
    v16 = v6;
    _os_log_impl(&dword_241B0A000, v5, OS_LOG_TYPE_DEFAULT, "Scene will deactivate %@", &v15, 0xCu);
  }

  v7 = [v4 object];
  v8 = [(BKUIPearlJindoEnrollViewController *)self view];
  v9 = [v8 window];
  v10 = [v9 windowScene];

  if (v7 != v10)
  {
    v11 = _BKUILoggingFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_241B0A000, v11, OS_LOG_TYPE_DEFAULT, "Scene will deactivate early exit due to non matching windowScene", &v15, 2u);
    }

    goto LABEL_9;
  }

  v12 = [(BKUIPearlEnrollViewController *)self enrollView];
  v13 = [v12 isTransitioningToState];

  if (!v13)
  {
    v11 = [(BKUIPearlJindoEnrollViewController *)self presentable];
    [v11 revoke];
LABEL_9:

    goto LABEL_10;
  }

  [(BKUIPearlJindoEnrollViewController *)self setJindoNeedsResignActiveRevoke:1];
LABEL_10:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_sceneDidActivate:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = _BKUILoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 description];
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&dword_241B0A000, v5, OS_LOG_TYPE_DEFAULT, "Scene did activate %@", &v13, 0xCu);
  }

  v7 = [v4 object];
  v8 = [(BKUIPearlJindoEnrollViewController *)self view];
  v9 = [v8 window];
  v10 = [v9 windowScene];

  if (v7 == v10)
  {
    [(BKUIPearlJindoEnrollViewController *)self didBecomeActive:v4];
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
  v6 = [MEMORY[0x277CB83F8] sharedInstance];
  [v6 setCategory:*MEMORY[0x277CB8020] withOptions:1 error:0];

  v137 = [MEMORY[0x277CE65B0] playerItemWithAsset:v5];
  v7 = [objc_alloc(MEMORY[0x277CE6598]) initWithPlayerItem:v137];
  [v7 setMuted:1];
  [v7 setAllowsExternalPlayback:0];
  v8 = [(BKUIPearlJindoEnrollViewController *)self view];
  [v8 bounds];
  v10 = v9;
  v11 = [(BKUIPearlJindoEnrollViewController *)self view];
  [v11 bounds];
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

  v21 = [(BKUIPearlJindoEnrollViewController *)self hostedTutorialMicaView];
  [v21 addSubview:v19];

  v120 = MEMORY[0x277CCAAD0];
  v132 = [(BKUIPearlMovieLoopView *)v19 widthAnchor];
  v129 = [v132 constraintEqualToConstant:v10 + -52.0];
  v143[0] = v129;
  v126 = [(BKUIPearlMovieLoopView *)v19 heightAnchor];
  v123 = [v126 constraintEqualToConstant:v13 + -52.0];
  v143[1] = v123;
  v22 = [(BKUIPearlMovieLoopView *)v19 bottomAnchor];
  v23 = [(BKUIPearlJindoEnrollViewController *)self hostedTutorialMicaView];
  v24 = [v23 bottomAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];
  v143[2] = v25;
  v135 = v19;
  v26 = [(BKUIPearlMovieLoopView *)v19 centerXAnchor];
  v27 = [(BKUIPearlJindoEnrollViewController *)self hostedTutorialMicaView];
  v28 = [v27 centerXAnchor];
  v29 = [v26 constraintEqualToAnchor:v28];
  v143[3] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v143 count:4];
  [v120 activateConstraints:v30];

  v31 = [(BKUIPearlJindoEnrollViewController *)self hostedTutorialMicaView];
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];

  v32 = [(BKUIPearlJindoEnrollViewController *)self view];
  v33 = [(BKUIPearlJindoEnrollViewController *)self hostedTutorialMicaView];
  [v32 addSubview:v33];

  v118 = MEMORY[0x277CCAAD0];
  v133 = [(BKUIPearlJindoEnrollViewController *)self hostedTutorialMicaView];
  v127 = [v133 topAnchor];
  v130 = [(BKUIPearlJindoEnrollViewController *)self view];
  v124 = [v130 topAnchor];
  v121 = [v127 constraintEqualToAnchor:v124];
  v142[0] = v121;
  v34 = [(BKUIPearlJindoEnrollViewController *)self hostedTutorialMicaView];
  v35 = [v34 heightAnchor];
  v36 = [(BKUIPearlJindoEnrollViewController *)self view];
  [v36 bounds];
  v38 = [v35 constraintEqualToConstant:v37 + 26.0];
  v142[1] = v38;
  v39 = [(BKUIPearlJindoEnrollViewController *)self hostedTutorialMicaView];
  v40 = [v39 widthAnchor];
  v41 = [(BKUIPearlJindoEnrollViewController *)self view];
  [v41 bounds];
  v43 = [v40 constraintEqualToConstant:v42];
  v142[2] = v43;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v142 count:3];
  [v118 activateConstraints:v44];

  v45 = [(BKUIPearlJindoEnrollViewController *)self hostedTutorialMicaView];
  v46 = [v45 centerXAnchor];
  v47 = [(BKUIPearlJindoEnrollViewController *)self view];
  v48 = [v47 centerXAnchor];
  v49 = [v46 constraintEqualToAnchor:v48];
  [(BKUIPearlJindoEnrollViewController *)self setHostedTutorialMicaViewCenterConstraint:v49];

  v50 = [(BKUIPearlJindoEnrollViewController *)self hostedTutorialMicaViewCenterConstraint];
  [v50 setActive:1];

  [(BKUIPearlJindoEnrollViewController *)self _prepEnrollViewAndEnrollTutorialMica];
  v51 = [BKUIButtonTray alloc];
  v52 = [(BKUIPearlJindoEnrollViewController *)self view];
  [v52 bounds];
  v53 = [(BKUIButtonTray *)v51 initWithFrame:?];
  [(BKUIPearlEnrollViewController *)self setButtonTray:v53];

  v54 = [(BKUIPearlJindoEnrollViewController *)self buttonTray];
  v55 = [v54 bottomLinkButton];
  [(BKUIPearlEnrollViewController *)self setEscapeHatchButton:v55];

  v56 = [(BKUIPearlJindoEnrollViewController *)self buttonTray];
  v57 = [v56 nextStateButton];
  [(BKUIPearlEnrollViewController *)self setNextStateButton:v57];

  v58 = [(BKUIPearlJindoEnrollViewController *)self buttonTray];
  v59 = [v58 nextStateButtonContainer];
  [(BKUIPearlEnrollViewController *)self setNextStateButtonContainer:v59];

  v60 = [(BKUIPearlJindoEnrollViewController *)self view];
  [v60 frame];
  v62 = v61;
  v63 = [(BKUIPearlJindoEnrollViewController *)self view];
  [v63 bounds];
  v65 = v64;

  v66 = [[BKUIButtonTray alloc] initWithFrame:1 willUseActionDelegate:0.0, 0.0, v62, v65];
  v67 = [[BKUIButtonTray alloc] initWithFrame:1 willUseActionDelegate:0.0, 0.0, v62, v65];
  v68 = [BKUIJindoBottomContainer alloc];
  v69 = [(BKUIPearlEnrollViewController *)self inBuddy];
  v134 = v66;
  v70 = [[BKUIJindoContainerScrollview alloc] initWithFrame:v66 buttonTray:0.0, 0.0, v62, v65];
  v131 = v67;
  v71 = [[BKUIJindoContainerScrollview alloc] initWithFrame:v67 buttonTray:0.0, 0.0, v62, v65];
  v72 = [(BKUIPearlEnrollViewBottomContainer *)v68 initWithFrame:v69 inBuddy:v70 scrollView:v71 overlapScrollView:self delegate:1 squareNeedsPositionLayout:0.0, 0.0, v62, v65];
  [(BKUIPearlEnrollViewController *)self setBottomContainer:v72];

  v73 = [(BKUIPearlJindoEnrollViewController *)self buttonTray];
  v74 = [v73 topLinkButton];
  [(BKUIPearlEnrollViewController *)self setRetryMatchOperationButton:v74];

  v75 = [(BKUIPearlJindoEnrollViewController *)self retryMatchOperationButton];
  v76 = [v75 titleLabel];
  [v76 setAdjustsFontSizeToFitWidth:1];

  v77 = [(BKUIPearlJindoEnrollViewController *)self retryMatchOperationButton];
  [v77 addTarget:self action:sel_retryPressed forControlEvents:64];

  v78 = [(BKUIPearlJindoEnrollViewController *)self nextStateButton];
  [v78 addTarget:self action:sel_nextStateButtonPressed_ forControlEvents:0x2000];

  v79 = [(BKUIPearlJindoEnrollViewController *)self escapeHatchButton];
  [v79 addTarget:self action:sel_escapeHatchButtonPressed forControlEvents:0x2000];

  v80 = [(BKUIPearlJindoEnrollViewController *)self buttonTray];
  v81 = [v80 bottomLinkButton];
  [(BKUIPearlEnrollViewController *)self setEscapeHatchButton:v81];

  v82 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  [v82 setTranslatesAutoresizingMaskIntoConstraints:0];

  v83 = [(BKUIPearlJindoEnrollViewController *)self view];
  v84 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  [v83 addSubview:v84];

  v85 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  v86 = [v85 topAnchor];
  v87 = [(BKUIPearlJindoEnrollViewController *)self view];
  v88 = [v87 topAnchor];
  v89 = [v86 constraintEqualToAnchor:v88];
  [(BKUIPearlJindoEnrollViewController *)self setBottomContainerTopConstraint:v89];

  v114 = MEMORY[0x277CCAAD0];
  v128 = [(BKUIPearlJindoEnrollViewController *)self bottomContainerTopConstraint];
  v141[0] = v128;
  v125 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  v119 = [v125 bottomAnchor];
  v122 = [(BKUIPearlJindoEnrollViewController *)self view];
  v117 = [v122 bottomAnchor];
  v116 = [v119 constraintEqualToAnchor:v117];
  v141[1] = v116;
  v115 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  v113 = [v115 leadingAnchor];
  v90 = [(BKUIPearlJindoEnrollViewController *)self view];
  v91 = [v90 leadingAnchor];
  v92 = [v113 constraintEqualToAnchor:v91];
  v141[2] = v92;
  v93 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  v94 = [v93 trailingAnchor];
  v95 = [(BKUIPearlJindoEnrollViewController *)self view];
  v96 = [v95 trailingAnchor];
  v97 = [v94 constraintEqualToAnchor:v96];
  v141[3] = v97;
  v98 = [MEMORY[0x277CBEA60] arrayWithObjects:v141 count:4];
  [v114 activateConstraints:v98];

  v99 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  [v99 setupInitialUI];

  [(BKUIPearlEnrollViewController *)self _updateLeftBarButtonItem];
  v100 = [(BKUIPearlJindoEnrollViewController *)self view];
  v101 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v100 setBackgroundColor:v101];

  v102 = [(BKUIPearlJindoEnrollViewController *)self view];
  v103 = [v102 superview];
  v104 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v103 setBackgroundColor:v104];

  v105 = [(BKUIPearlEnrollViewController *)self instructionView];
  [v105 setDarkMode:{-[BKUIPearlJindoEnrollViewController _isDarkMode](self, "_isDarkMode")}];

  [(BKUIPearlJindoEnrollViewController *)self setNeedsStatusBarAppearanceUpdate];
  v106 = [(BKUIPearlJindoEnrollViewController *)self buttonTray];
  [v106 updateButtonLayout];

  v107 = [(BKUIPearlEnrollViewController *)self enrollView];
  [v107 setTransitionDelegate:self];

  if ([(BKUIPearlEnrollViewController *)self isGlassesEnrollmentOnly])
  {
    v140[0] = MEMORY[0x277D85DD0];
    v140[1] = 3221225472;
    v140[2] = __46__BKUIPearlJindoEnrollViewController__setupUI__block_invoke;
    v140[3] = &unk_278D09978;
    v140[4] = self;
    [(BKUIPearlJindoEnrollViewController *)self _postBannerToDestinationWithInitialStateCollapsed:0 enrollViewStateConfiguration:v140];
  }

  v108 = [(BKUIPearlJindoEnrollViewController *)self view];
  [v108 bounds];
  v110 = v109 + 26.0 + 40.0;
  v111 = [(BKUIPearlJindoEnrollViewController *)self bottomContainerTopConstraint];
  [v111 setConstant:v110];

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

- (void)willResignActive:(id)a3
{
  v5.receiver = self;
  v5.super_class = BKUIPearlJindoEnrollViewController;
  [(BKUIPearlEnrollViewController *)&v5 willResignActive:a3];
  v4 = [(BKUIPearlJindoEnrollViewController *)self presentable];
  [v4 revoke];
}

- (void)didBecomeActive:(id)a3
{
  v11.receiver = self;
  v11.super_class = BKUIPearlJindoEnrollViewController;
  [(BKUIPearlEnrollViewController *)&v11 didBecomeActive:a3];
  v4 = [(BKUIPearlJindoEnrollViewController *)self view];
  v5 = [v4 window];

  if (v5)
  {
    v6 = [(BKUIPearlJindoEnrollViewController *)self parentViewController];
    v7 = [v6 childViewControllers];
    v8 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global];
    v9 = [v7 filteredArrayUsingPredicate:v8];
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

- (void)nextStateButtonPressed:(id)a3
{
  v4 = a3;
  v5 = [(BKUIPearlJindoEnrollViewController *)self nextStateButton];
  [v5 setEnabled:0];

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

      v7 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
      if ([v7 supportsPeriocularEnrollment])
      {
        v8 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
        v9 = [v8 isEnrollmentAugmentationOnly];

        if (v9)
        {
          v10 = [(BKUIPearlEnrollViewController *)self currentOperationHandler];
          [v10 matchUserForSecondPhaseEnrollmentWithCompletionAction:0];

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
  [(BKUIPearlEnrollViewController *)&v13 nextStateButtonPressed:v4];
  v11 = [(BKUIPearlJindoEnrollViewController *)self nextStateButton];
  [v11 setEnabled:1];

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
  v2 = [(BKUIPearlJindoEnrollViewController *)self traitCollection];
  v3 = [v2 userInterfaceStyle] == 2;

  return v3;
}

- (CGSize)_fullEnrollViewSize
{
  v3 = +[BKUIDevice sharedInstance];
  v4 = [v3 isZoomEnabled];

  v5 = [(BKUIPearlJindoEnrollViewController *)self view];
  [v5 bounds];
  v7 = v6;
  v8 = [(BKUIPearlJindoEnrollViewController *)self view];
  [v8 bounds];
  v10 = v9;

  v11 = 30.0;
  if (!v4)
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
    v3 = [(BKUIPearlEnrollViewController *)self enrollView];
    [v3 setAlpha:0.0];

    objc_initWeak(&location, self);
    v4 = [(BKUIPearlEnrollViewController *)self enrollView];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __64__BKUIPearlJindoEnrollViewController__handleEnrollStateOnAppear__block_invoke;
    v5[3] = &unk_278D09950;
    objc_copyWeak(&v6, &location);
    [v4 setState:3 completion:v5];

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
  v9 = [(BKUIPearlEnrollViewController *)self preloadedState];
  v10 = [v9 acquireCachedVideoCaptureSession];
  v11 = [(BKUIPearlEnrollView *)v4 initWithFrame:v10 videoCaptureSession:[(BKUIPearlEnrollViewController *)self inSheet] inSheet:v29 positioningGuideView:1 squareNeedsPositionLayout:0.0, 0.0, v6, v8];
  [(BKUIPearlEnrollViewController *)self setEnrollView:v11];

  v12 = [(BKUIPearlEnrollViewController *)self enrollView];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v28 = MEMORY[0x277CCAAD0];
  v13 = [(BKUIPearlEnrollViewController *)self enrollView];
  v14 = [v13 widthAnchor];
  [(BKUIPearlJindoEnrollViewController *)self _fullEnrollViewSize];
  v15 = [v14 constraintEqualToConstant:?];
  v33[0] = v15;
  v16 = [(BKUIPearlEnrollViewController *)self enrollView];
  v17 = [v16 heightAnchor];
  v18 = [(BKUIPearlEnrollViewController *)self enrollView];
  v19 = [v18 widthAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  v33[1] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  [v28 activateConstraints:v21];

  v22 = [(BKUIPearlEnrollViewController *)self enrollView];
  [v22 preEnrollActivate];

  if (![(BKUIPearlEnrollViewController *)self isGlassesEnrollmentOnly])
  {
    v23 = [(BKUIPearlJindoEnrollViewController *)self hostedTutorialMicaView];
    v24 = [(BKUIPearlEnrollViewController *)self enrollView];
    [v23 addSubview:v24];

    v25 = [(BKUIPearlEnrollViewController *)self enrollView];
    [v25 setAlpha:0.0];

    objc_initWeak(&location, self);
    v26 = [(BKUIPearlEnrollViewController *)self enrollView];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __74__BKUIPearlJindoEnrollViewController__prepEnrollViewAndEnrollTutorialMica__block_invoke;
    v30[3] = &unk_278D09950;
    objc_copyWeak(&v31, &location);
    [v26 setState:2 completion:v30];

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
    v3 = [(BKUIPearlJindoEnrollViewController *)self presentable];
    [v3 revoke];
  }
}

- (id)nextStateButton
{
  v2 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  v3 = [v2 nextStateButton];

  return v3;
}

- (id)escapeHatchButton
{
  v3 = [(BKUIPearlEnrollViewController *)self state];
  if (v3 > 0xA)
  {
    v5 = 0;
  }

  else
  {
    if (((1 << v3) & 0x747) != 0)
    {
      v4 = [(BKUIPearlJindoEnrollViewController *)self buttonTray];
      [v4 bottomLinkButton];
    }

    else
    {
      v4 = [(BKUIPearlJindoEnrollViewController *)self buttonTray];
      [v4 topLinkButton];
    }
    v5 = ;
  }

  return v5;
}

- (id)buttonTray
{
  v2 = [(BKUIPearlEnrollViewController *)self bottomContainer];
  v3 = [v2 buttonTray];

  return v3;
}

- (id)nextStateButtonContainer
{
  v2 = [(BKUIPearlJindoEnrollViewController *)self buttonTray];
  v3 = [v2 nextStateButtonContainer];

  return v3;
}

- (id)retryMatchOperationButton
{
  v2 = [(BKUIPearlJindoEnrollViewController *)self buttonTray];
  v3 = [v2 topLinkButton];

  return v3;
}

- (void)alertActionTappedFromAlert
{
  if ([(BKUIPearlEnrollViewController *)self state]!= 10)
  {

    [(BKUIPearlJindoEnrollViewController *)self _postBannerToDestinationWithInitialStateCollapsed:0];
  }
}

- (void)didChangeActiveLayoutMode:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(BKUIPearlJindoEnrollViewController *)self view];
  v6 = [v5 window];
  v7 = [v6 windowScene];
  if (v7)
  {
    v8 = [(BKUIPearlJindoEnrollViewController *)self view];
    v9 = [v8 window];
    v10 = [v9 windowScene];
    v11 = [v10 activationState] == 0;
  }

  else
  {
    v11 = 0;
  }

  if ([v4 activeLayoutMode] >= 2 && !v11)
  {
    v12 = [(BKUIPearlJindoEnrollViewController *)self presentable];
    [v12 revoke];

    v13 = _BKUILoggingFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v4;
      _os_log_impl(&dword_241B0A000, v13, OS_LOG_TYPE_DEFAULT, "Element did clean up and auto-revoke %@", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end
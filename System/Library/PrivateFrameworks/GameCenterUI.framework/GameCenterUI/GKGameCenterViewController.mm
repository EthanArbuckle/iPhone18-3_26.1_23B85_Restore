@interface GKGameCenterViewController
- (BOOL)shouldShowPlayForChallenge;
- (BOOL)shouldShowPlayForTurnBasedMatch;
- (BOOL)shouldShowQuitForTurnBasedMatch;
- (GKGameCenterViewController)init;
- (GKGameCenterViewController)initWithAchievementID:(NSString *)achievementID;
- (GKGameCenterViewController)initWithGame:(id)game hostPID:(int)d restrictionMode:(int64_t)mode deeplink:(id)deeplink launchContext:(id)context;
- (GKGameCenterViewController)initWithLeaderboard:(GKLeaderboard *)leaderboard playerScope:(GKLeaderboardPlayerScope)playerScope;
- (GKGameCenterViewController)initWithLeaderboardID:(NSString *)leaderboardID playerScope:(GKLeaderboardPlayerScope)playerScope timeScope:(GKLeaderboardTimeScope)timeScope;
- (GKGameCenterViewController)initWithLeaderboardSetID:(id)d;
- (GKGameCenterViewController)initWithPlayer:(id)player;
- (GKGameCenterViewController)initWithState:(GKGameCenterViewControllerState)state;
- (id)constructInitialState;
- (id)gameCenterDelegate;
- (void)_setupChildViewController;
- (void)_setupRemoteViewController;
- (void)animateTransition:(id)transition;
- (void)checkArcadeStateWithCompletion:(id)completion;
- (void)dealloc;
- (void)extensionDidFinishWithError:(id)error;
- (void)loadView;
- (void)notifyDelegateOnWillFinish;
- (void)presentOverlayWithInitialState:(id)state;
- (void)setLeaderboardIdentifier:(NSString *)leaderboardIdentifier;
- (void)setLeaderboardPlayerScope:(int64_t)scope;
- (void)setLeaderboardTimeScope:(GKLeaderboardTimeScope)leaderboardTimeScope;
- (void)setRemoteViewController:(id)controller;
- (void)setViewState:(GKGameCenterViewControllerState)viewState;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation GKGameCenterViewController

- (GKGameCenterViewController)init
{
  v5.receiver = self;
  v5.super_class = GKGameCenterViewController;
  v2 = [(GKGameCenterViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_viewState = -1;
    v2->_leaderboardTimeScope = 2;
    v2->_leaderboardPlayerScope = 1;
    [(GKGameCenterViewController *)v2 _commonInit];
  }

  return v3;
}

- (GKGameCenterViewController)initWithState:(GKGameCenterViewControllerState)state
{
  v7.receiver = self;
  v7.super_class = GKGameCenterViewController;
  v4 = [(GKGameCenterViewController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_viewState = state;
    v4->_leaderboardTimeScope = 2;
    v4->_leaderboardPlayerScope = 1;
    [(GKGameCenterViewController *)v4 _commonInit];
  }

  return v5;
}

- (GKGameCenterViewController)initWithLeaderboardID:(NSString *)leaderboardID playerScope:(GKLeaderboardPlayerScope)playerScope timeScope:(GKLeaderboardTimeScope)timeScope
{
  v9 = leaderboardID;
  v13.receiver = self;
  v13.super_class = GKGameCenterViewController;
  v10 = [(GKGameCenterViewController *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_viewState = 0;
    objc_storeStrong(&v10->_leaderboardIdentifier, leaderboardID);
    v11->_leaderboardTimeScope = timeScope;
    v11->_leaderboardPlayerScope = playerScope;
    [(GKGameCenterViewController *)v11 _commonInit];
  }

  return v11;
}

- (GKGameCenterViewController)initWithLeaderboard:(GKLeaderboard *)leaderboard playerScope:(GKLeaderboardPlayerScope)playerScope
{
  v7 = leaderboard;
  v11.receiver = self;
  v11.super_class = GKGameCenterViewController;
  v8 = [(GKGameCenterViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_viewState = 0;
    v8->_leaderboardTimeScope = 2;
    v8->_leaderboardPlayerScope = playerScope;
    objc_storeStrong(&v8->_leaderboard, leaderboard);
    [(GKGameCenterViewController *)v9 _commonInit];
  }

  return v9;
}

- (GKGameCenterViewController)initWithLeaderboardSetID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = GKGameCenterViewController;
  v6 = [(GKGameCenterViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_viewState = 0;
    objc_storeStrong(&v6->_leaderboardSetIdentifier, d);
    [(GKGameCenterViewController *)v7 _commonInit];
  }

  return v7;
}

- (GKGameCenterViewController)initWithAchievementID:(NSString *)achievementID
{
  v5 = achievementID;
  v9.receiver = self;
  v9.super_class = GKGameCenterViewController;
  v6 = [(GKGameCenterViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_viewState = 1;
    objc_storeStrong(&v6->_achievementIdentifier, achievementID);
    [(GKGameCenterViewController *)v7 _commonInit];
  }

  return v7;
}

- (GKGameCenterViewController)initWithPlayer:(id)player
{
  playerCopy = player;
  v11.receiver = self;
  v11.super_class = GKGameCenterViewController;
  v5 = [(GKGameCenterViewController *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v5->_viewState = 3;
    internal = [playerCopy internal];
    playerID = [internal playerID];
    playerIdentifier = v6->_playerIdentifier;
    v6->_playerIdentifier = playerID;

    [(GKGameCenterViewController *)v6 _commonInit];
  }

  return v6;
}

- (void)dealloc
{
  if (!*MEMORY[0x277D0C2A0])
  {
    v3 = GKOSLoggers();
  }

  v4 = *MEMORY[0x277D0C2C8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24DE53000, v4, OS_LOG_TYPE_INFO, "GKGameCenterViewController dealloc", buf, 2u);
  }

  [(GKExtensionRemoteViewController *)self->_remoteViewController cancelExtension];
  v5.receiver = self;
  v5.super_class = GKGameCenterViewController;
  [(GKGameCenterViewController *)&v5 dealloc];
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v5 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77230]];
  v6 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77240]];
  containerView = [transitionCopy containerView];
  if ([(GKGameCenterViewController *)self isPresenting])
  {
    view = [v5 view];
    [view frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    view2 = [v6 view];
    [view2 setFrame:{v10, v12, v14, v16}];

    view3 = [v6 view];
    [view3 setAutoresizingMask:18];

    view4 = [v6 view];
    [containerView addSubview:view4];

    view5 = [v6 view];
    [view5 layoutIfNeeded];

    view6 = [v5 view];
    [view6 layoutIfNeeded];

    [transitionCopy completeTransition:1];
  }

  else
  {
    remoteViewController = [(GKGameCenterViewController *)self remoteViewController];

    if (remoteViewController)
    {
      remoteViewController2 = [(GKGameCenterViewController *)self remoteViewController];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __48__GKGameCenterViewController_animateTransition___block_invoke;
      v26[3] = &unk_27966AED8;
      v27 = transitionCopy;
      v28 = v5;
      v29 = v6;
      [remoteViewController2 tearDownExtensionWithReply:v26];
    }

    else
    {
      [transitionCopy completeTransition:1];
      view7 = [v5 view];
      [view7 removeFromSuperview];

      view8 = [v6 view];
      [view8 layoutIfNeeded];
    }
  }
}

void __48__GKGameCenterViewController_animateTransition___block_invoke(id *a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__GKGameCenterViewController_animateTransition___block_invoke_2;
  block[3] = &unk_27966A9A8;
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __48__GKGameCenterViewController_animateTransition___block_invoke_2(id *a1)
{
  [a1[4] completeTransition:1];
  v2 = [a1[5] view];
  [v2 removeFromSuperview];

  v3 = [a1[6] view];
  [v3 layoutIfNeeded];
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = GKGameCenterViewController;
  [(GKGameCenterViewController *)&v7 loadView];
  mEMORY[0x277D0C1D8] = [MEMORY[0x277D0C1D8] shared];
  isGameCenterDisabled = [mEMORY[0x277D0C1D8] isGameCenterDisabled];

  if (isGameCenterDisabled)
  {
    v5 = objc_alloc(MEMORY[0x277D75D18]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v6 setAlpha:0.0];
    [(GKGameCenterViewController *)self setView:v6];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  local = [MEMORY[0x277D0C138] local];
  [local hideAccessPoint];

  remoteViewController = [(GKGameCenterViewController *)self remoteViewController];

  if (!remoteViewController)
  {
    [(GKGameCenterViewController *)self _setupChildViewController];
    goto LABEL_7;
  }

  alertController = [(GKGameCenterViewController *)self alertController];
  if (!alertController)
  {
    viewControllers = [(GKGameCenterViewController *)self viewControllers];
    v9 = [viewControllers count];

    if (v9)
    {
      goto LABEL_6;
    }

    alertController = [(GKGameCenterViewController *)self remoteViewController];
    [(UINavigationController *)self _updateViewControllerStackWithViewController:alertController];
  }

LABEL_6:
  remoteViewController2 = [(GKGameCenterViewController *)self remoteViewController];
  [remoteViewController2 setDelegate:self];

LABEL_7:
  v13.receiver = self;
  v13.super_class = GKGameCenterViewController;
  [(GKGameCenterViewController *)&v13 viewWillAppear:appearCopy];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    [(GKGameCenterViewController *)self _setClipsToBounds:0];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = GKGameCenterViewController;
  [(GKGameCenterViewController *)&v7 viewDidAppear:appear];
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter postNotificationName:@"GameControllerNavigation_GKInGameViewAppeared" object:0 userInfo:0 deliverImmediately:1];

  alertController = [(GKGameCenterViewController *)self alertController];

  if (alertController)
  {
    alertController2 = [(GKGameCenterViewController *)self alertController];
    [(GKGameCenterViewController *)self presentViewController:alertController2 animated:1 completion:&__block_literal_global_15];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v9.receiver = self;
  v9.super_class = GKGameCenterViewController;
  [(GKGameCenterViewController *)&v9 viewDidDisappear:disappear];
  [(UINavigationController *)self _updateViewControllerStackWithViewController:0];
  [(GKGameCenterViewController *)self setRemoteViewController:0];
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter postNotificationName:@"GameControllerNavigation_GKInGameViewDisappeared" object:0 userInfo:0 deliverImmediately:1];

  local = [MEMORY[0x277D0C138] local];
  [local showAccessPoint];

  if (!*MEMORY[0x277D0C2A0])
  {
    v6 = GKOSLoggers();
  }

  v7 = *MEMORY[0x277D0C2C8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_24DE53000, v7, OS_LOG_TYPE_INFO, "GKGameCenterViewController viewDidDisappear: cancelExtension", v8, 2u);
  }

  [(GKExtensionRemoteViewController *)self->_remoteViewController cancelExtension];
}

- (void)_setupChildViewController
{
  restrictionMode = [(GKGameCenterViewController *)self restrictionMode];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__GKGameCenterViewController__setupChildViewController__block_invoke;
  v13[3] = &unk_2796699A8;
  v13[4] = self;
  v4 = [(GKGameCenterViewController *)self _gkInGameUIUnavailableAlertWithRestrictionMode:restrictionMode dismissHandler:v13];
  [(GKGameCenterViewController *)self setAlertController:v4];

  alertController = [(GKGameCenterViewController *)self alertController];

  if (!alertController)
  {
    view = [(GKGameCenterViewController *)self view];
    [view setAlpha:1.0];

    [(GKGameCenterViewController *)self setNavigationBarHidden:1];
    [(GKGameCenterViewController *)self setWantsFullScreenLayout:1];
    [(GKGameCenterViewController *)self setTransitioningDelegate:self];
    [(GKGameCenterViewController *)self setModalPresentationStyle:4];
    [(GKGameCenterViewController *)self setModalPresentationCapturesStatusBarAppearance:1];
    presentingViewController = [(GKGameCenterViewController *)self presentingViewController];
    if (presentingViewController)
    {
      v8 = presentingViewController;
      isPresentingOverlay = [(GKGameCenterViewController *)self isPresentingOverlay];

      if (!isPresentingOverlay)
      {
        [(GKGameCenterViewController *)self _beginDelayingPresentation:&__block_literal_global_54 cancellationHandler:5.0];
        objc_initWeak(&location, self);
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __55__GKGameCenterViewController__setupChildViewController__block_invoke_55;
        v10[3] = &unk_27966A8E0;
        objc_copyWeak(&v11, &location);
        v10[4] = self;
        [(GKGameCenterViewController *)self checkArcadeStateWithCompletion:v10];
        objc_destroyWeak(&v11);
        objc_destroyWeak(&location);
      }
    }
  }
}

uint64_t __55__GKGameCenterViewController__setupChildViewController__block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v3 = GKOSLoggers();
    }

    v4 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __55__GKGameCenterViewController__setupChildViewController__block_invoke_2_cold_1(v4);
    }
  }

  return a2 ^ 1u;
}

void __55__GKGameCenterViewController__setupChildViewController__block_invoke_55(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setIsArcade:a2];
  v4 = [*(a1 + 32) constructInitialState];
  [*(a1 + 32) presentOverlayWithInitialState:v4];
  [*(a1 + 32) setIsPresentingOverlay:1];
  [WeakRetained _endDelayingPresentation];
}

- (void)_setupRemoteViewController
{
  v3 = +[GKDashboardHostViewController dashboardExtension];
  if (v3)
  {
    [GKExtensionRemoteViewController setupCallbackBlocksForExtension:v3 withParentViewController:self];
    [(GKGameCenterViewController *)self _beginDelayingPresentation:&__block_literal_global_59 cancellationHandler:5.0];
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __56__GKGameCenterViewController__setupRemoteViewController__block_invoke_60;
    v4[3] = &unk_27966AF28;
    v5 = v3;
    objc_copyWeak(&v6, &location);
    [(GKGameCenterViewController *)self checkArcadeStateWithCompletion:v4];
    objc_destroyWeak(&v6);

    objc_destroyWeak(&location);
  }
}

uint64_t __56__GKGameCenterViewController__setupRemoteViewController__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v3 = GKOSLoggers();
    }

    v4 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __56__GKGameCenterViewController__setupRemoteViewController__block_invoke_cold_1(v4);
    }
  }

  return a2 ^ 1u;
}

void __56__GKGameCenterViewController__setupRemoteViewController__block_invoke_60(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__GKGameCenterViewController__setupRemoteViewController__block_invoke_2;
  v4[3] = &unk_27966AF00;
  objc_copyWeak(&v5, (a1 + 40));
  v6 = a2;
  [GKExtensionRemoteViewController viewControllerForExtension:v3 inputItems:0 completionHandler:v4];
  objc_destroyWeak(&v5);
}

void __56__GKGameCenterViewController__setupRemoteViewController__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsArcade:*(a1 + 40)];
  if (v8)
  {
    v7 = v8;
    [WeakRetained setRemoteViewController:v7];
    [WeakRetained _updateViewControllerStackWithViewController:v7];
  }

  else
  {
    [WeakRetained extensionDidFinishWithError:v5];
  }
}

- (id)constructInitialState
{
  v42 = *MEMORY[0x277D85DE8];
  if (![(GKGameCenterViewController *)self isArcade])
  {
    currentGame = [MEMORY[0x277D0C048] currentGame];
    v4 = currentGame;
    if (currentGame)
    {
      [currentGame gameInfo];
      v5 = BYTE5(v35);
    }

    else
    {
      v5 = 0;
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
    }

    [(GKGameCenterViewController *)self setIsArcade:v5 & 1, v35, v36, v37];
  }

  v6 = MEMORY[0x277CBEB38];
  v7 = +[GKExtensionRemoteViewController initialItemsForExtension];
  v8 = [v6 dictionaryWithDictionary:v7];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_viewState];
  [v8 setObject:v9 forKeyedSubscript:@"viewState"];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:self->_leaderboardTimeScope];
  [v8 setObject:v10 forKeyedSubscript:@"leaderboardTimeScope"];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_leaderboardPlayerScope];
  [v8 setObject:v11 forKeyedSubscript:@"leaderboardPlayerScope"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[GKGameCenterViewController shouldShowPlayForChallenge](self, "shouldShowPlayForChallenge")}];
  [v8 setObject:v12 forKeyedSubscript:@"shouldShowPlayForChallenge"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[GKGameCenterViewController shouldShowPlayForTurnBasedMatch](self, "shouldShowPlayForTurnBasedMatch")}];
  [v8 setObject:v13 forKeyedSubscript:@"MatchesShowPlayForMatch"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[GKGameCenterViewController shouldShowQuitForTurnBasedMatch](self, "shouldShowQuitForTurnBasedMatch")}];
  [v8 setObject:v14 forKeyedSubscript:@"MatchesShowQuitForMatch"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[GKGameCenterViewController isArcade](self, "isArcade")}];
  [v8 setObject:v15 forKeyedSubscript:@"isArcadeGame"];

  launchContext = [(GKGameCenterViewController *)self launchContext];
  [v8 setObject:launchContext forKeyedSubscript:@"launchContext"];

  leaderboardIdentifier = self->_leaderboardIdentifier;
  if (leaderboardIdentifier)
  {
    [v8 setObject:leaderboardIdentifier forKeyedSubscript:@"leaderboardIdentifier"];
  }

  leaderboardSetIdentifier = self->_leaderboardSetIdentifier;
  if (leaderboardSetIdentifier)
  {
    [v8 setObject:leaderboardSetIdentifier forKeyedSubscript:@"leaderboardSetIdentifier"];
  }

  gameBundleID = self->_gameBundleID;
  if (gameBundleID)
  {
    [v8 setObject:gameBundleID forKeyedSubscript:@"gameBundleID"];
  }

  leaderboard = self->_leaderboard;
  if (leaderboard)
  {
    internal = [(GKLeaderboard *)leaderboard internal];
    [v8 setObject:internal forKeyedSubscript:@"leaderboardInternal"];
  }

  leaderboardTitle = self->_leaderboardTitle;
  if (leaderboardTitle)
  {
    [v8 setObject:leaderboardTitle forKeyedSubscript:@"leaderboardTitle"];
  }

  achievementIdentifier = self->_achievementIdentifier;
  if (achievementIdentifier)
  {
    [v8 setObject:achievementIdentifier forKeyedSubscript:@"achievementIdentifier"];
  }

  activityIdentifier = self->_activityIdentifier;
  if (activityIdentifier)
  {
    [v8 setObject:activityIdentifier forKeyedSubscript:@"dashboardActivityID"];
  }

  playerIdentifier = self->_playerIdentifier;
  if (playerIdentifier)
  {
    [v8 setObject:playerIdentifier forKeyedSubscript:@"dashboardPlayerID"];
  }

  playerAlias = self->_playerAlias;
  if (playerAlias)
  {
    [v8 setObject:playerAlias forKeyedSubscript:@"dashboardPlayerAlias"];
  }

  if (self->_actualGame && self->_actualHostPID >= 1)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v27 = GKOSLoggers();
    }

    v28 = *MEMORY[0x277D0C2C8];
    if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
    {
      actualGame = self->_actualGame;
      v30 = v28;
      bundleIdentifier = [(GKGame *)actualGame bundleIdentifier];
      v32 = [MEMORY[0x277CCABB0] numberWithInt:self->_actualHostPID];
      *buf = 138412546;
      v39 = bundleIdentifier;
      v40 = 2112;
      v41 = v32;
      _os_log_impl(&dword_24DE53000, v30, OS_LOG_TYPE_INFO, "GKGameCenterViewController is overriding game.bundleIdentifier=%@ hostPID=%@", buf, 0x16u);
    }

    [v8 setObject:self->_actualGame forKeyedSubscript:@"currentGame"];
    v33 = [MEMORY[0x277CCABB0] numberWithInt:self->_actualHostPID];
    [v8 setObject:v33 forKeyedSubscript:@"HostPIDKey"];
  }

  return v8;
}

- (void)setRemoteViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_remoteViewController != controllerCopy)
  {
    objc_storeStrong(&self->_remoteViewController, controller);
    [(GKDashboardHostViewController *)self->_remoteViewController setDelegate:self];
    constructInitialState = [(GKGameCenterViewController *)self constructInitialState];
    objc_initWeak(&location, self);
    remoteViewController = self->_remoteViewController;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__GKGameCenterViewController_setRemoteViewController___block_invoke;
    v8[3] = &unk_27966AE80;
    objc_copyWeak(&v9, &location);
    [(GKExtensionRemoteViewController *)remoteViewController setInitialState:constructInitialState withReply:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __54__GKGameCenterViewController_setRemoteViewController___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__GKGameCenterViewController_setRemoteViewController___block_invoke_2;
  block[3] = &unk_279669FE0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __54__GKGameCenterViewController_setRemoteViewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _endDelayingPresentation];
}

- (void)checkArcadeStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = MEMORY[0x277D0C020];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKGameCenterViewController_iOS.m", 530, "-[GKGameCenterViewController checkArcadeStateWithCompletion:]"];
  v6 = [v4 dispatchGroupWithName:v5];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__GKGameCenterViewController_checkArcadeStateWithCompletion___block_invoke;
  v13[3] = &unk_27966A148;
  v7 = v6;
  v14 = v7;
  [v7 perform:v13];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__GKGameCenterViewController_checkArcadeStateWithCompletion___block_invoke_3;
  v10[3] = &unk_27966A958;
  v11 = v7;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = v7;
  [v9 notifyOnMainQueueWithBlock:v10];
}

void __61__GKGameCenterViewController_checkArcadeStateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D0C010] proxyForLocalPlayer];
  v5 = [v4 profileService];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__GKGameCenterViewController_checkArcadeStateWithCompletion___block_invoke_2;
  v7[3] = &unk_27966AF50;
  v8 = *(a1 + 32);
  v9 = v3;
  v6 = v3;
  [v5 getOcelotStateForCurrentAppWithHandler:v7];
}

uint64_t __61__GKGameCenterViewController_checkArcadeStateWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  [*(a1 + 32) setResult:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

uint64_t __61__GKGameCenterViewController_checkArcadeStateWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  [v2 BOOLValue];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)extensionDidFinishWithError:(id)error
{
  [(GKGameCenterViewController *)self notifyDelegateOnWillFinish];
  if (+[GKDashboardHostViewController dismissAutomaticallyAfterExtensionCompletion])
  {
    presentingViewController = [(GKGameCenterViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }

  [(UINavigationController *)self _updateViewControllerStackWithViewController:0];

  [(GKGameCenterViewController *)self setRemoteViewController:0];
}

- (BOOL)shouldShowPlayForChallenge
{
  localPlayer = [MEMORY[0x277D0C138] localPlayer];
  eventEmitter = [localPlayer eventEmitter];
  v4 = [eventEmitter listenerRegisteredForSelector:sel_player_wantsToPlayChallenge_];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    challengeEventHandler = [MEMORY[0x277D0BFF8] challengeEventHandler];
    delegate = [challengeEventHandler delegate];

    v5 = objc_opt_respondsToSelector();
  }

  return v5 & 1;
}

- (BOOL)shouldShowPlayForTurnBasedMatch
{
  localPlayer = [MEMORY[0x277D0C138] localPlayer];
  eventEmitter = [localPlayer eventEmitter];
  v4 = [eventEmitter listenerRegisteredForSelector:sel_player_receivedTurnEventForMatch_didBecomeActive_];

  return v4;
}

- (BOOL)shouldShowQuitForTurnBasedMatch
{
  localPlayer = [MEMORY[0x277D0C138] localPlayer];
  eventEmitter = [localPlayer eventEmitter];
  v4 = [eventEmitter listenerRegisteredForSelector:sel_player_wantsToQuitMatch_];

  return v4;
}

- (void)setViewState:(GKGameCenterViewControllerState)viewState
{
  if (self->_viewState != viewState)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v5 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
    {
      [GKGameCenterViewController setViewState:];
    }

    self->_viewState = viewState;
    remoteViewController = self->_remoteViewController;
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:viewState];
    [(GKDashboardHostViewController *)remoteViewController hostDidChangeViewState:v7];

    if (self->_viewState)
    {
      leaderboardIdentifier = [(GKGameCenterViewController *)self leaderboardIdentifier];

      if (leaderboardIdentifier)
      {
        leaderboardIdentifier = self->_leaderboardIdentifier;
        self->_leaderboardIdentifier = 0;
      }
    }
  }
}

- (void)setLeaderboardIdentifier:(NSString *)leaderboardIdentifier
{
  v5 = leaderboardIdentifier;
  if (![(NSString *)self->_leaderboardIdentifier isEqualToString:v5])
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v6 = GKOSLoggers();
    }

    v7 = *MEMORY[0x277D0C2A8];
    if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
    {
      [(GKGameCenterViewController *)v5 setLeaderboardIdentifier:v7];
    }

    objc_storeStrong(&self->_leaderboardIdentifier, leaderboardIdentifier);
    if (self->_leaderboardIdentifier)
    {
      [(GKDashboardHostViewController *)self->_remoteViewController hostDidChangeLeaderboardIdentifier:?];
      self->_viewState = 0;
    }
  }
}

- (void)setLeaderboardTimeScope:(GKLeaderboardTimeScope)leaderboardTimeScope
{
  if (self->_leaderboardTimeScope != leaderboardTimeScope)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v5 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
    {
      [GKGameCenterViewController setLeaderboardTimeScope:];
    }

    self->_leaderboardTimeScope = leaderboardTimeScope;
    remoteViewController = self->_remoteViewController;
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:leaderboardTimeScope];
    [(GKDashboardHostViewController *)remoteViewController hostDidChangeLeaderboardTimeScope:v7];
  }
}

- (void)setLeaderboardPlayerScope:(int64_t)scope
{
  if (self->_leaderboardPlayerScope != scope)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v5 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
    {
      [GKGameCenterViewController setLeaderboardPlayerScope:];
    }

    self->_leaderboardPlayerScope = scope;
    remoteViewController = self->_remoteViewController;
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:scope];
    [(GKDashboardHostViewController *)remoteViewController hostDidChangeLeaderboardPlayerScope:v7];
  }
}

- (id)gameCenterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_gameCenterDelegate);

  return WeakRetained;
}

- (GKGameCenterViewController)initWithGame:(id)game hostPID:(int)d restrictionMode:(int64_t)mode deeplink:(id)deeplink launchContext:(id)context
{
  v57 = *MEMORY[0x277D85DE8];
  gameCopy = game;
  deeplinkCopy = deeplink;
  contextCopy = context;
  if (!*MEMORY[0x277D0C2A0])
  {
    v16 = GKOSLoggers();
  }

  v17 = *MEMORY[0x277D0C2C8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
  {
    contextCopy2 = context;
    v18 = contextCopy;
    modeCopy = mode;
    v20 = gameCopy;
    actualGame = self->_actualGame;
    v22 = MEMORY[0x277CCABB0];
    dCopy = d;
    actualHostPID = self->_actualHostPID;
    v24 = v17;
    v25 = [v22 numberWithInt:actualHostPID];
    *buf = 138413314;
    v48 = actualGame;
    gameCopy = v20;
    mode = modeCopy;
    contextCopy = v18;
    context = contextCopy2;
    v49 = 2112;
    v50 = v25;
    v51 = 2048;
    modeCopy2 = mode;
    v53 = 2112;
    v54 = deeplinkCopy;
    v55 = 2112;
    v56 = contextCopy;
    _os_log_impl(&dword_24DE53000, v24, OS_LOG_TYPE_INFO, "GKGameCenterViewController.initWithGame:%@\n hostPID:%@\n restrictionMode:%ld\n deeplink:%@\n launchContext:%@", buf, 0x34u);

    d = dCopy;
  }

  v46.receiver = self;
  v46.super_class = GKGameCenterViewController;
  v26 = [(GKGameCenterViewController *)&v46 init];
  if (v26)
  {
    v27 = [deeplinkCopy objectForKeyedSubscript:*MEMORY[0x277D0BD98]];
    if ([v27 isEqualToString:*MEMORY[0x277D0BDA0]])
    {
      v26->_viewState = 0;
      v28 = [deeplinkCopy objectForKeyedSubscript:*MEMORY[0x277D0BD90]];
      leaderboardIdentifier = v26->_leaderboardIdentifier;
      v26->_leaderboardIdentifier = v28;

      v30 = [deeplinkCopy objectForKeyedSubscript:*MEMORY[0x277D0BDA8]];
      leaderboardTitle = v26->_leaderboardTitle;
      v26->_leaderboardTitle = v30;

      v32 = [deeplinkCopy objectForKeyedSubscript:*MEMORY[0x277D0BDC0]];
      playerIdentifier = v26->_playerIdentifier;
      v26->_playerIdentifier = v32;

      v34 = [deeplinkCopy objectForKeyedSubscript:*MEMORY[0x277D0BDB8]];
      v35 = 1576;
    }

    else if ([v27 isEqualToString:*MEMORY[0x277D0BDB0]])
    {
      v26->_viewState = 3;
      v34 = [deeplinkCopy objectForKeyedSubscript:*MEMORY[0x277D0BDC0]];
      v35 = 1560;
    }

    else if ([v27 isEqualToString:*MEMORY[0x277D0BD80]])
    {
      v26->_viewState = 1;
      v36 = [deeplinkCopy objectForKeyedSubscript:*MEMORY[0x277D0BD78]];
      achievementIdentifier = v26->_achievementIdentifier;
      v26->_achievementIdentifier = v36;

      v38 = [deeplinkCopy objectForKeyedSubscript:*MEMORY[0x277D0BDB8]];
      gameBundleID = v26->_gameBundleID;
      v26->_gameBundleID = v38;

      v40 = [deeplinkCopy objectForKeyedSubscript:*MEMORY[0x277D0BDC0]];
      v41 = v26->_playerIdentifier;
      v26->_playerIdentifier = v40;

      v34 = [deeplinkCopy objectForKeyedSubscript:*MEMORY[0x277D0BDA8]];
      v35 = 1568;
    }

    else
    {
      if (![v27 isEqualToString:*MEMORY[0x277D0BD88]])
      {
        v26->_viewState = -1;
        goto LABEL_15;
      }

      v26->_viewState = 4;
      v34 = [deeplinkCopy objectForKeyedSubscript:*MEMORY[0x277D0BD90]];
      v35 = 1552;
    }

    v42 = *(&v26->super.super.super.super.isa + v35);
    *(&v26->super.super.super.super.isa + v35) = v34;

LABEL_15:
    v26->_leaderboardTimeScope = 2;
    v26->_leaderboardPlayerScope = 1;
    objc_storeStrong(&v26->_actualGame, game);
    v26->_actualHostPID = d;
    v26->_restrictionMode = mode;
    objc_storeStrong(&v26->_launchContext, context);
    [(GKGameCenterViewController *)v26 _setupChildViewController];
  }

  return v26;
}

- (void)notifyDelegateOnWillFinish
{
  gameCenterDelegate = [(GKGameCenterViewController *)self gameCenterDelegate];
  if (objc_opt_respondsToSelector())
  {
    [gameCenterDelegate gameCenterViewControllerDidFinish:self];
  }
}

- (void)presentOverlayWithInitialState:(id)state
{
  v4 = sub_24E347C08();
  selfCopy = self;
  GKGameCenterViewController.presentOverlay(initialState:)(v4);
}

- (void)setLeaderboardIdentifier:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = *a2;
  OUTLINED_FUNCTION_1_1(&dword_24DE53000, a2, a3, "API set leaderboardIdentifier %@ (was: %@)", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end
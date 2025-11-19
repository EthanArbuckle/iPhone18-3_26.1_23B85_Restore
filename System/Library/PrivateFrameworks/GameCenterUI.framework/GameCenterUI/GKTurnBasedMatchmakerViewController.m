@interface GKTurnBasedMatchmakerViewController
- (BOOL)shouldShowPlayForTurnBasedMatch;
- (BOOL)shouldShowQuitForTurnBasedMatch;
- (GKTurnBasedMatchmakerViewController)init;
- (id)initWithMatchRequest:(GKMatchRequest *)request;
- (id)turnBasedMatchmakerDelegate;
- (void)_setupChildViewController;
- (void)_setupRemoteViewController;
- (void)authenticationChanged:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)extensionDidFinishWithError:(id)a3;
- (void)finishWithError:(id)a3;
- (void)finishWithMatch:(id)a3;
- (void)loadView;
- (void)playerQuitMatch:(id)a3;
- (void)setRemoteViewController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation GKTurnBasedMatchmakerViewController

- (id)initWithMatchRequest:(GKMatchRequest *)request
{
  v4 = request;
  v13.receiver = self;
  v13.super_class = GKTurnBasedMatchmakerViewController;
  v5 = [(GKTurnBasedMatchmakerViewController *)&v13 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [(GKMatchRequest *)v4 copy];
    matchRequest = v5->_matchRequest;
    v5->_matchRequest = v6;

    v5->_showExistingMatches = 1;
    [(GKTurnBasedMatchmakerViewController *)v5 _setupChildViewController];
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = *MEMORY[0x277D0BCD0];
    v10 = [MEMORY[0x277D0C138] localPlayer];
    [v8 addObserver:v5 selector:sel_authenticationChanged_ name:v9 object:v10];

    v11 = [MEMORY[0x277D0C138] localPlayer];
    [v11 registerListener:v5];
  }

  return v5;
}

- (GKTurnBasedMatchmakerViewController)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@: must use one of the designated initializers", self}];

  return 0;
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
    _os_log_impl(&dword_24DE53000, v4, OS_LOG_TYPE_INFO, "GKTurnBasedMatchmakerViewController dealloc", buf, 2u);
  }

  [(GKExtensionRemoteViewController *)self->_remoteViewController cancelExtension];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = GKTurnBasedMatchmakerViewController;
  [(GKTurnBasedMatchmakerViewController *)&v6 dealloc];
}

- (void)loadView
{
  v2.receiver = self;
  v2.super_class = GKTurnBasedMatchmakerViewController;
  [(GKTurnBasedMatchmakerViewController *)&v2 loadView];
}

- (void)_setupChildViewController
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__GKTurnBasedMatchmakerViewController__setupChildViewController__block_invoke;
  v5[3] = &unk_2796699A8;
  v5[4] = self;
  v3 = [(GKTurnBasedMatchmakerViewController *)self _gkInGameUIUnavailableAlertWithRestrictionMode:2 dismissHandler:v5];
  [(GKTurnBasedMatchmakerViewController *)self setAlertController:v3];

  v4 = [(GKTurnBasedMatchmakerViewController *)self alertController];

  if (!v4)
  {
    [(GKTurnBasedMatchmakerViewController *)self setNavigationBarHidden:1];
    [(GKTurnBasedMatchmakerViewController *)self setWantsFullScreenLayout:1];
    [(GKTurnBasedMatchmakerViewController *)self setModalPresentationStyle:17];
    if (!self->_remoteViewController)
    {
      [(GKTurnBasedMatchmakerViewController *)self _setupRemoteViewController];
    }
  }
}

- (void)_setupRemoteViewController
{
  v3 = +[GKTurnBasedMatchmakerHostViewController turnBasedMatchmakerExtension];
  if (v3)
  {
    [GKExtensionRemoteViewController setupCallbackBlocksForExtension:v3 withParentViewController:self];
    [(GKTurnBasedMatchmakerViewController *)self _beginDelayingPresentation:&__block_literal_global_13 cancellationHandler:5.0];
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __65__GKTurnBasedMatchmakerViewController__setupRemoteViewController__block_invoke_46;
    v4[3] = &unk_27966AE58;
    objc_copyWeak(&v5, &location);
    v4[4] = self;
    [GKExtensionRemoteViewController viewControllerForExtension:v3 inputItems:0 completionHandler:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

uint64_t __65__GKTurnBasedMatchmakerViewController__setupRemoteViewController__block_invoke(uint64_t a1, int a2)
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
      __65__GKTurnBasedMatchmakerViewController__setupRemoteViewController__block_invoke_cold_1(v4);
    }
  }

  return a2 ^ 1u;
}

void __65__GKTurnBasedMatchmakerViewController__setupRemoteViewController__block_invoke_46(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = v7;
    [WeakRetained setRemoteViewController:v6];
    [WeakRetained _updateViewControllerStackWithViewController:v6];
  }

  else
  {
    [*(a1 + 32) extensionDidFinishWithError:a3];
  }
}

- (void)extensionDidFinishWithError:(id)a3
{
  [(GKTurnBasedMatchmakerViewController *)self finishWithError:a3];
  [(UINavigationController *)self _updateViewControllerStackWithViewController:0];

  [(GKTurnBasedMatchmakerViewController *)self setRemoteViewController:0];
}

- (void)setRemoteViewController:(id)a3
{
  v5 = a3;
  if (self->_remoteViewController != v5)
  {
    objc_storeStrong(&self->_remoteViewController, a3);
    v6 = [(GKTurnBasedMatchmakerViewController *)self remoteViewController];
    [v6 setDelegate:self];

    v7 = MEMORY[0x277CBEB38];
    v8 = +[GKExtensionRemoteViewController initialItemsForExtension];
    v9 = [v7 dictionaryWithDictionary:v8];

    v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[GKTurnBasedMatchmakerViewController shouldShowPlayForTurnBasedMatch](self, "shouldShowPlayForTurnBasedMatch")}];
    [v9 setObject:v10 forKeyedSubscript:@"MatchesShowPlayForMatch"];

    v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[GKTurnBasedMatchmakerViewController shouldShowQuitForTurnBasedMatch](self, "shouldShowQuitForTurnBasedMatch")}];
    [v9 setObject:v11 forKeyedSubscript:@"MatchesShowQuitForMatch"];

    v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_showExistingMatches];
    [v9 setObject:v12 forKeyedSubscript:@"MatchesShowExistingMatches"];

    matchRequest = self->_matchRequest;
    if (matchRequest)
    {
      v14 = [(GKMatchRequest *)matchRequest internal];
      [v9 setObject:v14 forKeyedSubscript:@"MatchesMatchRequestInternal"];
    }

    objc_initWeak(&location, self);
    v15 = [(GKTurnBasedMatchmakerViewController *)self remoteViewController];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __63__GKTurnBasedMatchmakerViewController_setRemoteViewController___block_invoke;
    v16[3] = &unk_27966AE80;
    objc_copyWeak(&v17, &location);
    [v15 setInitialState:v9 withReply:v16];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __63__GKTurnBasedMatchmakerViewController_setRemoteViewController___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__GKTurnBasedMatchmakerViewController_setRemoteViewController___block_invoke_2;
  block[3] = &unk_279669FE0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __63__GKTurnBasedMatchmakerViewController_setRemoteViewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _endDelayingPresentation];
}

- (BOOL)shouldShowPlayForTurnBasedMatch
{
  v3 = [MEMORY[0x277D0C138] localPlayer];
  v4 = [v3 eventEmitter];
  v5 = [v4 listenerRegisteredForSelector:sel_player_receivedTurnEventForMatch_didBecomeActive_];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(GKTurnBasedMatchmakerViewController *)self turnBasedMatchmakerDelegate];
    v6 = objc_opt_respondsToSelector();
  }

  return v6 & 1;
}

- (BOOL)shouldShowQuitForTurnBasedMatch
{
  v3 = [MEMORY[0x277D0C138] localPlayer];
  v4 = [v3 eventEmitter];
  v5 = [v4 listenerRegisteredForSelector:sel_player_wantsToQuitMatch_];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(GKTurnBasedMatchmakerViewController *)self turnBasedMatchmakerDelegate];
    v6 = objc_opt_respondsToSelector();
  }

  return v6 & 1;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = GKTurnBasedMatchmakerViewController;
  [(GKTurnBasedMatchmakerViewController *)&v3 viewDidLoad];
  [(GKTurnBasedMatchmakerViewController *)self setOverrideUserInterfaceStyle:2];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277D0C138] local];
  [v5 hideAccessPoint];

  v6 = [(GKTurnBasedMatchmakerViewController *)self remoteViewController];

  if (!v6)
  {
    [(GKTurnBasedMatchmakerViewController *)self _setupChildViewController];
    goto LABEL_7;
  }

  v7 = [(GKTurnBasedMatchmakerViewController *)self alertController];
  if (!v7)
  {
    v8 = [(GKTurnBasedMatchmakerViewController *)self viewControllers];
    v9 = [v8 count];

    if (v9)
    {
      goto LABEL_6;
    }

    v7 = [(GKTurnBasedMatchmakerViewController *)self remoteViewController];
    [(UINavigationController *)self _updateViewControllerStackWithViewController:v7];
  }

LABEL_6:
  v10 = [(GKTurnBasedMatchmakerViewController *)self remoteViewController];
  [v10 setDelegate:self];

LABEL_7:
  v14.receiver = self;
  v14.super_class = GKTurnBasedMatchmakerViewController;
  [(GKTurnBasedMatchmakerViewController *)&v14 viewWillAppear:v3];
  v11 = [(GKTurnBasedMatchmakerViewController *)self matchRequest];
  v12 = [v11 isIncorrectlyInvitingPlayers];

  if (v12)
  {
    v13 = [MEMORY[0x277CCA9B8] userErrorForCode:30 userInfo:0];
    [(GKTurnBasedMatchmakerViewController *)self finishWithError:v13];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = GKTurnBasedMatchmakerViewController;
  [(GKTurnBasedMatchmakerViewController *)&v6 viewDidAppear:a3];
  v4 = [(GKTurnBasedMatchmakerViewController *)self alertController];

  if (v4)
  {
    v5 = [(GKTurnBasedMatchmakerViewController *)self alertController];
    [(GKTurnBasedMatchmakerViewController *)self presentViewController:v5 animated:1 completion:&__block_literal_global_67];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = GKTurnBasedMatchmakerViewController;
  [(GKTurnBasedMatchmakerViewController *)&v8 viewDidDisappear:a3];
  [(UINavigationController *)self _updateViewControllerStackWithViewController:0];
  v4 = [MEMORY[0x277D0C138] local];
  [v4 showAccessPoint];

  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  v6 = *MEMORY[0x277D0C2C8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_24DE53000, v6, OS_LOG_TYPE_INFO, "GKTurnBasedMatchmakerVC viewDidDisappear: cancelExtension", v7, 2u);
  }

  [(GKExtensionRemoteViewController *)self->_remoteViewController cancelExtension];
}

- (void)cancel
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(GKTurnBasedMatchmakerViewController *)self turnBasedMatchmakerDelegate];
  [v4 turnBasedMatchmakerViewControllerWasCancelled:self];
}

- (void)finishWithError:(id)a3
{
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v6 = [v4 defaultCenter];
  [v6 removeObserver:self];

  v7 = [(GKTurnBasedMatchmakerViewController *)self turnBasedMatchmakerDelegate];
  [v7 turnBasedMatchmakerViewController:self didFailWithError:v5];
}

- (void)finishWithMatch:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self];

  v6 = [(GKTurnBasedMatchmakerViewController *)self turnBasedMatchmakerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 turnBasedMatchmakerViewController:self didFindMatch:v4];
  }

  else
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v7 = GKOSLoggers();
    }

    v8 = *MEMORY[0x277D0C288];
    if (os_log_type_enabled(*MEMORY[0x277D0C288], OS_LOG_TYPE_ERROR))
    {
      [GKTurnBasedMatchmakerViewController finishWithMatch:v8];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__GKTurnBasedMatchmakerViewController_finishWithMatch___block_invoke;
    block[3] = &unk_2796699A8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v9 = [MEMORY[0x277D0C138] localPlayer];
  v10 = [v9 eventEmitter];
  [v10 player:v9 receivedTurnEventForMatch:v4 didBecomeActive:1];
}

- (void)playerQuitMatch:(id)a3
{
  v7 = a3;
  v4 = [(GKTurnBasedMatchmakerViewController *)self turnBasedMatchmakerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 turnBasedMatchmakerViewController:self playerQuitForMatch:v7];
  }

  v5 = [MEMORY[0x277D0C138] localPlayer];
  v6 = [v5 eventEmitter];
  [v6 player:v5 wantsToQuitMatch:v7];
}

- (void)authenticationChanged:(id)a3
{
  v4 = [a3 userInfo];
  v10 = [v4 objectForKey:*MEMORY[0x277D0BCE0]];

  v5 = [MEMORY[0x277D0C138] localPlayer];
  if (([v5 isAuthenticated] & 1) == 0)
  {

    goto LABEL_5;
  }

  v6 = [MEMORY[0x277D0C138] localPlayer];
  v7 = [v6 internal];
  v8 = [v7 playerID];
  v9 = [v8 isEqualToString:v10];

  if ((v9 & 1) == 0)
  {
LABEL_5:
    [(GKTurnBasedMatchmakerViewController *)self cancel];
  }
}

- (id)turnBasedMatchmakerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->turnBasedMatchmakerDelegate);

  return WeakRetained;
}

@end
@interface GKMatchmakerViewController
- (BOOL)userCancelledMatching;
- (GKInternalPlayerPickerDelegate)internalPlayerPickerDelegate;
- (GKMatchmakerViewController)init;
- (GKMatchmakerViewController)initWithPlayerPickerDelegate:(id)delegate andPlayerPickerContext:(id)context;
- (OS_dispatch_queue)cancellingQueue;
- (OS_dispatch_queue)invitationQueue;
- (id)initWithInvite:(GKInvite *)invite;
- (id)initWithMatchRequest:(GKMatchRequest *)request;
- (id)matchmakerDelegate;
- (id)registerGroupActivitySharingControllerItemProvider:(id)provider;
- (void)_setupChildViewController;
- (void)_setupRemoteViewController;
- (void)activateGroupActivities;
- (void)addPlayersToMatch:(GKMatch *)match;
- (void)authenticationChanged:(id)changed;
- (void)cancel;
- (void)cancelMatching;
- (void)cancelPendingInviteToPlayer:(id)player;
- (void)cancelWithoutNotifyingDelegate;
- (void)createMatchForAcceptedInvite;
- (void)dealloc;
- (void)disconnectFromMatch;
- (void)endGroupActivities;
- (void)extensionDidFinishWithError:(id)error;
- (void)finishWithError:(id)error;
- (void)finishWithMatch;
- (void)finishWithPlayers;
- (void)groupActivityJoiningPlayer:(id)player devicePushToken:(id)token participantServerIdentifier:(id)identifier;
- (void)handleRecipientPropertiesNeededForPlayer:(id)player completionHandler:(id)handler;
- (void)inviteSharePlayPlayer:(id)player;
- (void)invitedPlayer:(id)player responded:(int64_t)responded;
- (void)inviterCancelledNotification:(id)notification;
- (void)match:(id)match didReceiveData:(id)data fromRemotePlayer:(id)player;
- (void)match:(id)match player:(id)player didChangeConnectionState:(int64_t)state;
- (void)playerPickerDidCancel;
- (void)playerPickerDidPickPlayers:(id)players;
- (void)presentSharePlaySharingController;
- (void)recipientPropertiesNeededForPlayer:(id)player;
- (void)setBrowsingForNearbyPlayers:(BOOL)players;
- (void)setConnectingStateForPlayer:(id)player;
- (void)setDefaultInvitationMessage:(NSString *)defaultInvitationMessage;
- (void)setHosted:(BOOL)hosted;
- (void)setHostedPlayer:(GKPlayer *)player didConnect:(BOOL)connected;
- (void)setHostedPlayer:(NSString *)playerID connected:(BOOL)connected;
- (void)setHostedPlayerReady:(NSString *)playerID;
- (void)setMatchmakingMode:(GKMatchmakingMode)matchmakingMode;
- (void)setRemoteViewController:(id)controller;
- (void)setShareInvitees:(id)invitees;
- (void)setUserCancelledMatching:(BOOL)matching;
- (void)setupNotifications;
- (void)shareMatchWithRequest:(id)request handler:(id)handler;
- (void)sharePlayEligibilityChanged:(id)changed;
- (void)sharePlaySharingControllerResultSucceeded:(BOOL)succeeded;
- (void)startMatchingWithRequest:(id)request devicePushToken:(id)token;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation GKMatchmakerViewController

- (id)initWithMatchRequest:(GKMatchRequest *)request
{
  v4 = request;
  reporter = [MEMORY[0x277D0C1F8] reporter];
  [reporter reportEvent:*MEMORY[0x277D0BED8] reportable:v4];

  v14.receiver = self;
  v14.super_class = GKMatchmakerViewController;
  v6 = [(GKMatchmakerViewController *)&v14 init];
  if (v6)
  {
    v7 = [(GKMatchRequest *)v4 copy];
    matchRequest = v6->_matchRequest;
    v6->_matchRequest = v7;

    if ([(GKMatchRequest *)v4 restrictToAutomatch])
    {
      v6->_matchmakingMode = 2;
    }

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    hostedPlayers = v6->_hostedPlayers;
    v6->_hostedPlayers = v9;

    [(GKMatchmakerViewController *)v6 setupNotifications];
    [(GKMatchmakerViewController *)v6 _setupChildViewController];
    v11 = v6->_matchRequest;
    matchmaker = [(GKMatchmakerViewController *)v6 matchmaker];
    [matchmaker setCurrentMatchRequest:v11];
  }

  return v6;
}

- (id)initWithInvite:(GKInvite *)invite
{
  v4 = invite;
  v8.receiver = self;
  v8.super_class = GKMatchmakerViewController;
  v5 = [(GKMatchmakerViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(GKMatchmakerViewController *)v5 setAcceptedInvite:v4];
    [(GKMatchmakerViewController *)v6 setHosted:[(GKInvite *)v4 isHosted]];
    [(GKMatchmakerViewController *)v6 setupNotifications];
    [(GKMatchmakerViewController *)v6 _setupChildViewController];
  }

  return v6;
}

- (GKMatchmakerViewController)initWithPlayerPickerDelegate:(id)delegate andPlayerPickerContext:(id)context
{
  delegateCopy = delegate;
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = GKMatchmakerViewController;
  v8 = [(GKMatchmakerViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_internalPlayerPickerDelegate, delegateCopy);
    objc_storeStrong(&v9->_playerPickerContext, context);
    [(GKMatchmakerViewController *)v9 _setupChildViewController];
  }

  return v9;
}

- (GKMatchmakerViewController)init
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
    _os_log_impl(&dword_24DE53000, v4, OS_LOG_TYPE_INFO, "GKMatchmakerViewController dealloc", buf, 2u);
  }

  [(GKExtensionRemoteViewController *)self->_remoteViewController cancelExtension];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  playerPickerContext = [(GKMatchmakerViewController *)self playerPickerContext];

  if (!playerPickerContext)
  {
    matchmaker = [(GKMatchmakerViewController *)self matchmaker];
    [matchmaker cancel];
  }

  v8.receiver = self;
  v8.super_class = GKMatchmakerViewController;
  [(GKMatchmakerViewController *)&v8 dealloc];
}

- (void)setupNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *MEMORY[0x277D0B970];
  localPlayer = [MEMORY[0x277D0C138] localPlayer];
  [defaultCenter addObserver:self selector:sel_localPlayerAcceptedGameInvite_ name:v3 object:localPlayer];

  v5 = *MEMORY[0x277D0BD60];
  localPlayer2 = [MEMORY[0x277D0C138] localPlayer];
  [defaultCenter addObserver:self selector:sel_playersToInvite_ name:v5 object:localPlayer2];

  v7 = *MEMORY[0x277D0BCD0];
  localPlayer3 = [MEMORY[0x277D0C138] localPlayer];
  [defaultCenter addObserver:self selector:sel_authenticationChanged_ name:v7 object:localPlayer3];

  [defaultCenter addObserver:self selector:sel_applicationWillEnterForeground_ name:*MEMORY[0x277D76758] object:0];
  [defaultCenter addObserver:self selector:sel_inviteSharePlayPlayer_ name:*MEMORY[0x277D0BB68] object:0];
  [defaultCenter addObserver:self selector:sel_sharePlayEligibilityChanged_ name:*MEMORY[0x277D0BB60] object:0];
}

- (void)_setupChildViewController
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__GKMatchmakerViewController__setupChildViewController__block_invoke;
  v5[3] = &unk_2796699A8;
  v5[4] = self;
  v3 = [(GKMatchmakerViewController *)self _gkInGameUIUnavailableAlertWithRestrictionMode:2 dismissHandler:v5];
  [(GKMatchmakerViewController *)self setAlertController:v3];

  alertController = [(GKMatchmakerViewController *)self alertController];

  if (!alertController)
  {
    [(GKMatchmakerViewController *)self setNavigationBarHidden:1];
    [(GKMatchmakerViewController *)self setWantsFullScreenLayout:1];
    [(GKMatchmakerViewController *)self setModalPresentationStyle:17];
    [(GKMatchmakerViewController *)self setModalTransitionStyle:2];
    if (!self->_remoteViewController)
    {
      [(GKMatchmakerViewController *)self _setupRemoteViewController];
    }
  }
}

- (void)_setupRemoteViewController
{
  v3 = +[GKMatchmakerHostViewController matchmakerExtension];
  if (v3)
  {
    [GKExtensionRemoteViewController setupCallbackBlocksForExtension:v3 withParentViewController:self];
    [(GKMatchmakerViewController *)self _beginDelayingPresentation:&__block_literal_global_32 cancellationHandler:5.0];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __56__GKMatchmakerViewController__setupRemoteViewController__block_invoke_57;
    v4[3] = &unk_27966C438;
    v4[4] = self;
    [GKExtensionRemoteViewController viewControllerForExtension:v3 inputItems:0 completionHandler:v4];
  }
}

uint64_t __56__GKMatchmakerViewController__setupRemoteViewController__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v3 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_ERROR))
    {
      __56__GKMatchmakerViewController__setupRemoteViewController__block_invoke_cold_1();
    }
  }

  return a2 ^ 1u;
}

void __56__GKMatchmakerViewController__setupRemoteViewController__block_invoke_57(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = v5;
    if (!*MEMORY[0x277D0C2A0])
    {
      v8 = GKOSLoggers();
    }

    v9 = *MEMORY[0x277D0C2B0];
    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      *buf = 134218240;
      v17 = v7;
      v18 = 2048;
      v19 = v10;
      _os_log_impl(&dword_24DE53000, v9, OS_LOG_TYPE_INFO, "Setting remoteViewController[%p] for GKMatchmakerViewController[%p]", buf, 0x16u);
    }

    [*(a1 + 32) setRemoteViewController:v7];
    [*(a1 + 32) _updateViewControllerStackWithViewController:v7];
    v11 = MEMORY[0x277D0C020];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMatchmakerViewController_iOS.m", 216, "-[GKMatchmakerViewController _setupRemoteViewController]_block_invoke"];
    v13 = [v11 dispatchGroupWithName:v12];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__GKMatchmakerViewController__setupRemoteViewController__block_invoke_2;
    v15[3] = &unk_27966A148;
    v15[4] = *(a1 + 32);
    [v13 perform:v15];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__GKMatchmakerViewController__setupRemoteViewController__block_invoke_67;
    v14[3] = &unk_2796699A8;
    v14[4] = *(a1 + 32);
    [v13 notifyOnMainQueueWithBlock:v14];
  }

  else
  {
    [*(a1 + 32) extensionDidFinishWithError:v6];
  }
}

void __56__GKMatchmakerViewController__setupRemoteViewController__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D0C010] proxyForLocalPlayer];
  v5 = [v4 multiplayerService];
  v6 = [*(a1 + 32) acceptedInvite];
  v7 = [v6 sessionToken];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__GKMatchmakerViewController__setupRemoteViewController__block_invoke_3;
  v9[3] = &unk_27966AF50;
  v9[4] = *(a1 + 32);
  v10 = v3;
  v8 = v3;
  [v5 hasCanceledMultiplayerInitiateBulletinForSessionToken:v7 handler:v9];
}

uint64_t __56__GKMatchmakerViewController__setupRemoteViewController__block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v3 = GKOSLoggers();
    }

    v4 = *MEMORY[0x277D0C2B0];
    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_24DE53000, v4, OS_LOG_TYPE_INFO, "the acceptedInvite is canceled, need to dismiss the extension. set inviterCancelNotificaitonReceived = YES", v6, 2u);
    }

    [*(a1 + 32) setInviterCancelNotificaitonReceived:1];
  }

  return (*(*(a1 + 40) + 16))();
}

void __56__GKMatchmakerViewController__setupRemoteViewController__block_invoke_67(uint64_t a1)
{
  if ([*(a1 + 32) inviterCancelNotificaitonReceived])
  {
    v2 = [*(a1 + 32) remoteViewController];
    [v2 inviterCancelled];

    if (!*MEMORY[0x277D0C2A0])
    {
      v3 = GKOSLoggers();
    }

    v4 = *MEMORY[0x277D0C2B0];
    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_24DE53000, v4, OS_LOG_TYPE_INFO, "GKMatchmakterViewController: inviterCancelledNotification - Invite Cancelled", v5, 2u);
    }
  }
}

- (void)extensionDidFinishWithError:(id)error
{
  [(GKMatchmakerViewController *)self finishWithError:error];
  [(UINavigationController *)self _updateViewControllerStackWithViewController:0];

  [(GKMatchmakerViewController *)self setRemoteViewController:0];
}

- (void)setRemoteViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_remoteViewController != controllerCopy)
  {
    objc_storeStrong(&self->_remoteViewController, controller);
    remoteViewController = [(GKMatchmakerViewController *)self remoteViewController];
    [remoteViewController setDelegate:self];

    v7 = MEMORY[0x277CBEB38];
    v8 = +[GKExtensionRemoteViewController initialItemsForExtension];
    v9 = [v7 dictionaryWithDictionary:v8];

    v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_hosted];
    [v9 setObject:v10 forKeyedSubscript:@"MatchesHosted"];

    v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_matchmakingMode];
    [v9 setObject:v11 forKeyedSubscript:@"MatchesMatchmakingMode"];

    v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_canStartWithMinimumPlayers];
    [v9 setObject:v12 forKeyedSubscript:@"MatchesFastStartEnabled"];

    v13 = MEMORY[0x277CCABB0];
    matchmaker = [(GKMatchmakerViewController *)self matchmaker];
    v15 = [v13 numberWithBool:{objc_msgSend(matchmaker, "isEligibleForGroupSession")}];
    [v9 setObject:v15 forKeyedSubscript:@"MatchesGroupSessionEligible"];

    v16 = MEMORY[0x277CCABB0];
    matchmaker2 = [(GKMatchmakerViewController *)self matchmaker];
    v18 = [v16 numberWithBool:{objc_msgSend(matchmaker2, "isEntitledToUseGroupActivities")}];
    [v9 setObject:v18 forKeyedSubscript:@"EntitledToGroupActivities"];

    playerPickerContext = [(GKMatchmakerViewController *)self playerPickerContext];
    [v9 setObject:playerPickerContext forKeyedSubscript:@"playerPickerContext"];

    matchRequest = self->_matchRequest;
    if (matchRequest)
    {
      internal = [(GKMatchRequest *)matchRequest internal];
      [v9 setObject:internal forKeyedSubscript:@"MatchesMatchRequestInternal"];
    }

    acceptedInvite = self->_acceptedInvite;
    if (acceptedInvite)
    {
      internal2 = [(GKInvite *)acceptedInvite internal];
      [v9 setObject:internal2 forKeyedSubscript:@"MatchesAcceptedInviteInternal"];
    }

    match = self->_match;
    if (match)
    {
      players = [(GKMatch *)match players];
      v26 = [players _gkMapWithBlock:&__block_literal_global_76];

      [v9 setObject:v26 forKeyedSubscript:@"PlayerInternalsKey"];
    }

    remoteViewController = self->_remoteViewController;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __54__GKMatchmakerViewController_setRemoteViewController___block_invoke_2;
    v29[3] = &unk_279669C90;
    v29[4] = self;
    selfCopy = self;
    [(GKExtensionRemoteViewController *)remoteViewController setInitialState:v9 withReply:v29];
  }
}

void __54__GKMatchmakerViewController_setRemoteViewController___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__GKMatchmakerViewController_setRemoteViewController___block_invoke_3;
  block[3] = &unk_2796699A8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)viewDidLoad
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  local = [MEMORY[0x277D0C138] local];
  [local hideAccessPoint];

  remoteViewController = [(GKMatchmakerViewController *)self remoteViewController];

  if (remoteViewController)
  {
    alertController = [(GKMatchmakerViewController *)self alertController];
    if (!alertController)
    {
      viewControllers = [(GKMatchmakerViewController *)self viewControllers];
      v9 = [viewControllers count];

      if (v9)
      {
        goto LABEL_5;
      }

      alertController = [(GKMatchmakerViewController *)self remoteViewController];
      [(UINavigationController *)self _updateViewControllerStackWithViewController:alertController];
    }

LABEL_5:
    remoteViewController2 = [(GKMatchmakerViewController *)self remoteViewController];
    [remoteViewController2 setDelegate:self];
  }

  v15.receiver = self;
  v15.super_class = GKMatchmakerViewController;
  [(GKMatchmakerViewController *)&v15 viewWillAppear:appearCopy];
  acceptedInvite = self->_acceptedInvite;
  if (acceptedInvite && ![(GKInvite *)acceptedInvite isHosted])
  {
    [(GKMatchmakerViewController *)self createMatchForAcceptedInvite];
  }

  else
  {
    matchRequest = [(GKMatchmakerViewController *)self matchRequest];
    isIncorrectlyInvitingPlayers = [matchRequest isIncorrectlyInvitingPlayers];

    if (isIncorrectlyInvitingPlayers)
    {
      v14 = [MEMORY[0x277CCA9B8] userErrorForCode:30 userInfo:0];
      [(GKMatchmakerViewController *)self finishWithError:v14];
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = GKMatchmakerViewController;
  [(GKMatchmakerViewController *)&v6 viewDidAppear:appear];
  alertController = [(GKMatchmakerViewController *)self alertController];

  if (alertController)
  {
    alertController2 = [(GKMatchmakerViewController *)self alertController];
    [(GKMatchmakerViewController *)self presentViewController:alertController2 animated:1 completion:&__block_literal_global_87];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = GKMatchmakerViewController;
  [(GKMatchmakerViewController *)&v8 viewDidDisappear:disappear];
  [(UINavigationController *)self _updateViewControllerStackWithViewController:0];
  local = [MEMORY[0x277D0C138] local];
  [local showAccessPoint];

  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  v6 = *MEMORY[0x277D0C2C8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_24DE53000, v6, OS_LOG_TYPE_INFO, "GKMatchmakerVC viewDidDisappear: cancelExtension", v7, 2u);
  }

  [(GKExtensionRemoteViewController *)self->_remoteViewController cancelExtension];
}

- (void)setHosted:(BOOL)hosted
{
  v3 = hosted;
  self->_hosted = hosted;
  [(GKMatchmakerHostViewController *)self->_remoteViewController setHosted:?];
  matchRequest = [(GKMatchmakerViewController *)self matchRequest];
  internal = [matchRequest internal];
  [internal setMatchType:v3];
}

- (void)setMatchmakingMode:(GKMatchmakingMode)matchmakingMode
{
  self->_matchmakingMode = matchmakingMode;
  if (matchmakingMode == GKMatchmakingModeNearbyOnly)
  {
    mEMORY[0x277D0C1D8] = [MEMORY[0x277D0C1D8] shared];
    shouldAllowNearbyMultiplayer = [mEMORY[0x277D0C1D8] shouldAllowNearbyMultiplayer];

    if (shouldAllowNearbyMultiplayer)
    {
      matchRequest = self->_matchRequest;
      if (!matchRequest || ![(GKMatchRequest *)matchRequest restrictToAutomatch])
      {
        goto LABEL_5;
      }

      v9 = MEMORY[0x277CBEAD8];
      v10 = *MEMORY[0x277CBE660];
      v11 = @"unable to set nearby only when restrictToAutomatch of the match request has been set to YES.";
    }

    else
    {
      v9 = MEMORY[0x277CBEAD8];
      v10 = *MEMORY[0x277CBE660];
      v11 = @"unable to set nearby only due to player restrictions";
    }

    v12 = [v9 exceptionWithName:v10 reason:v11 userInfo:0];
    objc_exception_throw(v12);
  }

LABEL_5:
  remoteViewController = self->_remoteViewController;

  [(GKMatchmakerHostViewController *)remoteViewController setMatchmakingMode:matchmakingMode];
}

- (void)setHostedPlayer:(GKPlayer *)player didConnect:(BOOL)connected
{
  v4 = connected;
  remoteViewController = self->_remoteViewController;
  internal = [(GKPlayer *)player internal];
  [(GKMatchmakerHostViewController *)remoteViewController setPlayer:internal connected:v4];
}

- (void)setHostedPlayer:(NSString *)playerID connected:(BOOL)connected
{
  v4 = connected;
  v6 = playerID;
  if (GKApplicationLinkedOnOrAfter())
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C288], OS_LOG_TYPE_ERROR))
    {
      [GKMatchmakerViewController setHostedPlayer:connected:];
    }
  }

  else
  {
    internalRepresentation = [MEMORY[0x277D0C1C8] internalRepresentation];
    [internalRepresentation setPlayerID:v6];
    [(GKMatchmakerHostViewController *)self->_remoteViewController setPlayer:internalRepresentation connected:v4];
  }
}

- (void)addPlayersToMatch:(GKMatch *)match
{
  objc_storeStrong(&self->_match, match);
  v5 = match;
  match = [(GKMatchmakerViewController *)self match];
  [match setInviteDelegate:self];

  match2 = [(GKMatchmakerViewController *)self match];
  [match2 setFastStartStateActive:0];

  remoteViewController = self->_remoteViewController;
  players = [(GKMatch *)v5 players];
  v9 = [players _gkMapWithBlock:&__block_literal_global_105];
  [(GKMatchmakerHostViewController *)remoteViewController setExistingPlayers:v9];
}

- (void)setDefaultInvitationMessage:(NSString *)defaultInvitationMessage
{
  if (defaultInvitationMessage)
  {
    matchRequest = self->_matchRequest;
    if (matchRequest)
    {
      v5 = defaultInvitationMessage;
      [(GKMatchRequest *)matchRequest setInviteMessage:v5];
      serviceViewControllerProxy = [(_UIRemoteViewController *)self->_remoteViewController serviceViewControllerProxy];
      [serviceViewControllerProxy setDefaultInvitationMessage:v5];
    }
  }
}

- (void)setHostedPlayerReady:(NSString *)playerID
{
  v4 = playerID;
  if (GKApplicationLinkedOnOrAfter())
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v5 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C288], OS_LOG_TYPE_ERROR))
    {
      [GKMatchmakerViewController setHostedPlayerReady:];
    }
  }

  else
  {
    [(GKMatchmakerViewController *)self setHostedPlayer:v4 connected:1];
  }
}

- (void)cancel
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)cancelWithoutNotifyingDelegate
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  matchmaker = [(GKMatchmakerViewController *)self matchmaker];
  [matchmaker cancel];

  matchmaker2 = [(GKMatchmakerViewController *)self matchmaker];
  [matchmaker2 stopBrowsingForNearbyPlayers];

  [(GKMatchRequest *)self->_matchRequest setRecipientResponseHandler:0];
  match = self->_match;
  if (match)
  {
    v8 = 5;
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:&v8 length:4];
    [(GKMatch *)match sendInviteData:v7];

    [(GKMatch *)self->_match setInviteDelegate:0];
    [(GKMatchmakerViewController *)self setMatch:0];
  }
}

- (OS_dispatch_queue)cancellingQueue
{
  if (cancellingQueue_onceToken != -1)
  {
    [GKMatchmakerViewController cancellingQueue];
  }

  v3 = cancellingQueue_sCancellingQueue;

  return v3;
}

uint64_t __45__GKMatchmakerViewController_cancellingQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.gamecenter.matchmakerviewcontroller.cancelqueue", MEMORY[0x277D85CD8]);
  v1 = cancellingQueue_sCancellingQueue;
  cancellingQueue_sCancellingQueue = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (OS_dispatch_queue)invitationQueue
{
  if (invitationQueue_onceTokenForInvitationQueue != -1)
  {
    [GKMatchmakerViewController invitationQueue];
  }

  v3 = invitationQueue_sInvitationQueue;

  return v3;
}

void __45__GKMatchmakerViewController_invitationQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.gamecenter.matchmakerviewcontroller.invitationQueue", v2);
  v1 = invitationQueue_sInvitationQueue;
  invitationQueue_sInvitationQueue = v0;
}

- (BOOL)userCancelledMatching
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  cancellingQueue = [(GKMatchmakerViewController *)self cancellingQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__GKMatchmakerViewController_userCancelledMatching__block_invoke;
  v5[3] = &unk_27966B9A0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(cancellingQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)setUserCancelledMatching:(BOOL)matching
{
  cancellingQueue = [(GKMatchmakerViewController *)self cancellingQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__GKMatchmakerViewController_setUserCancelledMatching___block_invoke;
  v6[3] = &unk_27966A890;
  v6[4] = self;
  matchingCopy = matching;
  dispatch_barrier_async(cancellingQueue, v6);
}

- (void)cancelMatching
{
  v3 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v4 = GKOSLoggers();
  }

  v5 = *MEMORY[0x277D0C2C8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24DE53000, v5, OS_LOG_TYPE_INFO, "GKMatchmakerViewController: cancelMatching", buf, 2u);
  }

  [(GKMatchmakerViewController *)self setUserCancelledMatching:1];
  if (!*v3)
  {
    v6 = GKOSLoggers();
  }

  v7 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_24DE53000, v7, OS_LOG_TYPE_INFO, "userCancelledMatching, set shared matchmaker matching to NO", v10, 2u);
  }

  matchmaker = [(GKMatchmakerViewController *)self matchmaker];
  [matchmaker userCancelledMatching];

  matchmaker2 = [(GKMatchmakerViewController *)self matchmaker];
  [matchmaker2 cancel];
}

- (void)finishWithError:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v6 = GKOSLoggers();
  }

  v7 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = errorCopy;
    _os_log_impl(&dword_24DE53000, v7, OS_LOG_TYPE_INFO, "GKMatchmakerViewController finish with error: %@", buf, 0xCu);
  }

  if (![(GKMatchmakerViewController *)self canStartWithMinimumPlayers])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self];

    matchmaker = [(GKMatchmakerViewController *)self matchmaker];
    [matchmaker cancel];

    matchmaker2 = [(GKMatchmakerViewController *)self matchmaker];
    [matchmaker2 stopBrowsingForNearbyPlayers];

    [(GKMatchRequest *)self->_matchRequest setRecipientResponseHandler:0];
  }

  matchmaker3 = [(GKMatchmakerViewController *)self matchmaker];
  v12 = matchmaker3;
  if (errorCopy)
  {
    [matchmaker3 endGroupActivity];

    match = [(GKMatchmakerViewController *)self match];
    [match setInviteDelegate:0];

    matchmaker4 = [(GKMatchmakerViewController *)self matchmaker];
    errorCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", errorCopy];
    [matchmaker4 promptForRadarWithDescriptionAddition:errorCopy];

    match = self->_match;
    self->_match = 0;

    matchmakerDelegate = [(GKMatchmakerViewController *)self matchmakerDelegate];
    if (matchmakerDelegate)
    {
      if (objc_opt_respondsToSelector())
      {
        [matchmakerDelegate matchmakerViewController:self didFailWithError:errorCopy];
      }

      else
      {
        if (!*v5)
        {
          v19 = GKOSLoggers();
        }

        if (os_log_type_enabled(*MEMORY[0x277D0C288], OS_LOG_TYPE_ERROR))
        {
          [GKMatchmakerViewController finishWithError:];
        }
      }
    }

    else
    {
      if (!*v5)
      {
        v18 = GKOSLoggers();
      }

      if (os_log_type_enabled(*MEMORY[0x277D0C288], OS_LOG_TYPE_ERROR))
      {
        [GKMatchmakerViewController finishWithError:];
      }
    }

    domain = [errorCopy domain];
    v21 = [domain isEqualToString:*MEMORY[0x277D0BA78]];

    if (v21 && [errorCopy code] == 35)
    {
      proxyForLocalPlayer = [MEMORY[0x277D0C010] proxyForLocalPlayer];
      utilityService = [proxyForLocalPlayer utilityService];
      [utilityService openICloudSettings];
    }
  }

  else
  {
    [matchmaker3 resetGroupActivity];

    if (self->_hosted)
    {
      [(GKMatchmakerViewController *)self finishWithPlayers];
    }

    else
    {
      [(GKMatchmakerViewController *)self finishWithMatch];
      [(GKMatch *)self->_match setFastStartStateActive:[(GKMatchmakerViewController *)self canStartWithMinimumPlayers]];
    }
  }
}

- (void)finishWithMatch
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)finishWithPlayers
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

id __47__GKMatchmakerViewController_finishWithPlayers__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 internal];
  v3 = [v2 playerID];

  return v3;
}

- (void)playerPickerDidPickPlayers:(id)players
{
  v10 = *MEMORY[0x277D85DE8];
  _gkPlayersFromInternals = [players _gkPlayersFromInternals];
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  v6 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = _gkPlayersFromInternals;
    _os_log_impl(&dword_24DE53000, v6, OS_LOG_TYPE_INFO, "Client - player picker - didPickPlayers: %@", &v8, 0xCu);
  }

  internalPlayerPickerDelegate = [(GKMatchmakerViewController *)self internalPlayerPickerDelegate];
  [internalPlayerPickerDelegate internalPlayerPickerDidPickPlayers:_gkPlayersFromInternals];
}

- (void)playerPickerDidCancel
{
  if (!*MEMORY[0x277D0C2A0])
  {
    v3 = GKOSLoggers();
  }

  v4 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_24DE53000, v4, OS_LOG_TYPE_INFO, "Client - player picker - playerPickerDidCancel, didCancel", v6, 2u);
  }

  internalPlayerPickerDelegate = [(GKMatchmakerViewController *)self internalPlayerPickerDelegate];
  [internalPlayerPickerDelegate internalPlayerPickerDidCancel];
}

- (void)createMatchForAcceptedInvite
{
  reporter = [MEMORY[0x277D0C1F8] reporter];
  [reporter recordInviteeUILaunchTimestamp];

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__GKMatchmakerViewController_createMatchForAcceptedInvite__block_invoke;
  v4[3] = &unk_2796699A8;
  v4[4] = self;
  [MEMORY[0x277D0BFD0] named:@"createMatchForAcceptedInvite" execute:v4];
}

void __58__GKMatchmakerViewController_createMatchForAcceptedInvite__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) matchmaker];
  v3 = [*(a1 + 32) acceptedInvite];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__GKMatchmakerViewController_createMatchForAcceptedInvite__block_invoke_2;
  v4[3] = &unk_27966C480;
  v4[4] = *(a1 + 32);
  [v2 matchForInvite:v3 completionHandler:v4];
}

void __58__GKMatchmakerViewController_createMatchForAcceptedInvite__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    [*(a1 + 32) setMatch:v5];
    v8 = *(a1 + 32);
    v9 = [v8 match];
    [v9 setInviteDelegate:v8];
  }

  else if (v6)
  {
    [*(a1 + 32) finishWithError:v6];
  }

  else
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v10 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_ERROR))
    {
      __58__GKMatchmakerViewController_createMatchForAcceptedInvite__block_invoke_2_cold_1();
    }
  }
}

- (void)shareMatchWithRequest:(id)request handler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    requestCopy = request;
    match = [(GKMatchmakerViewController *)self match];

    if (!match)
    {
      matchmaker = [(GKMatchmakerViewController *)self matchmaker];
      newMatch = [matchmaker newMatch];
      [(GKMatchmakerViewController *)self setMatch:newMatch];

      match2 = [(GKMatchmakerViewController *)self match];
      [match2 setInviteDelegate:self];
    }

    matchmaker2 = [(GKMatchmakerViewController *)self matchmaker];
    match = self->_match;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__GKMatchmakerViewController_shareMatchWithRequest_handler___block_invoke;
    v14[3] = &unk_27966C4A8;
    v15 = handlerCopy;
    [matchmaker2 loadURLForMatch:match matchRequest:requestCopy completionHandler:v14];
  }
}

uint64_t __60__GKMatchmakerViewController_shareMatchWithRequest_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setShareInvitees:(id)invitees
{
  inviteesCopy = invitees;
  matchmaker = [(GKMatchmakerViewController *)self matchmaker];
  match = [(GKMatchmakerViewController *)self match];
  [matchmaker setShareInvitees:inviteesCopy forMatch:match propagateToDaemon:1];

  objc_initWeak(&location, self);
  v8 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v9, &location);
  v7 = [(GKMatchmakerViewController *)self matchmaker:v8];
  [v7 setRecipientResponseHandler:&v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __47__GKMatchmakerViewController_setShareInvitees___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invitedPlayer:v5 responded:a3];
}

- (void)startMatchingWithRequest:(id)request devicePushToken:(id)token
{
  v34 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  tokenCopy = token;
  v8 = objc_alloc_init(MEMORY[0x277CCAD78]);
  v9 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v10 = GKOSLoggers();
  }

  v11 = MEMORY[0x277D0C2B0];
  v12 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    *&buf[4] = requestCopy;
    *&buf[12] = 2112;
    *&buf[14] = tokenCopy;
    *&buf[22] = 2112;
    v31 = v8;
    _os_log_impl(&dword_24DE53000, v12, OS_LOG_TYPE_INFO, "GKMatchmakerVC start matching with request: %@, pushToken: %@. UUID: %@", buf, 0x20u);
  }

  invitationGroup = [(GKMatchmakerViewController *)self invitationGroup];
  v14 = invitationGroup == 0;

  if (v14)
  {
    if (!*v9)
    {
      v15 = GKOSLoggers();
    }

    v16 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v8;
      _os_log_impl(&dword_24DE53000, v16, OS_LOG_TYPE_INFO, "Creating invitation group for matchmakerVC. UUID: %@", buf, 0xCu);
    }

    v17 = MEMORY[0x277D0C020];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMatchmakerViewController_iOS.m", 714, "-[GKMatchmakerViewController startMatchingWithRequest:devicePushToken:]"];
    v19 = [v17 dispatchGroupWithName:v18];
    [(GKMatchmakerViewController *)self setInvitationGroup:v19];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v31 = __Block_byref_object_copy__6;
  v32 = __Block_byref_object_dispose__6;
  v33 = 0;
  invitationQueue = [(GKMatchmakerViewController *)self invitationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__GKMatchmakerViewController_startMatchingWithRequest_devicePushToken___block_invoke;
  block[3] = &unk_27966C638;
  v25 = v8;
  v26 = requestCopy;
  v28 = tokenCopy;
  v29 = buf;
  selfCopy = self;
  v21 = tokenCopy;
  v22 = requestCopy;
  v23 = v8;
  dispatch_async(invitationQueue, block);

  _Block_object_dispose(buf, 8);
}

void __71__GKMatchmakerViewController_startMatchingWithRequest_devicePushToken___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v3 = GKOSLoggers();
  }

  v4 = MEMORY[0x277D0C2B0];
  v5 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    *buf = 138412290;
    v26 = v6;
    _os_log_impl(&dword_24DE53000, v5, OS_LOG_TYPE_INFO, "GKMatchmakerVC entered async queue. UUID: %@", buf, 0xCu);
  }

  v7 = [objc_alloc(MEMORY[0x277D0C148]) initWithInternalRepresentation:*(a1 + 40)];
  [*(a1 + 48) setMatchRequest:v7];
  [*(a1 + 48) setUserCancelledMatching:0];
  v8 = [*(a1 + 48) invitationGroup];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __71__GKMatchmakerViewController_startMatchingWithRequest_devicePushToken___block_invoke_142;
  v20[3] = &unk_27966C610;
  v21 = *(a1 + 32);
  v9 = v7;
  v10 = *(a1 + 48);
  v22 = v9;
  v23 = v10;
  v19 = *(a1 + 56);
  v11 = v19;
  v24 = v19;
  [v8 perform:v20];

  v12 = [*(a1 + 48) invitationGroup];
  v13 = [v12 waitWithTimeout:5.0];

  if (v13)
  {
    if (!*v2)
    {
      v14 = GKOSLoggers();
    }

    v15 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      __71__GKMatchmakerViewController_startMatchingWithRequest_devicePushToken___block_invoke_cold_1((a1 + 40), a1 + 64, v15);
    }
  }

  if (!*v2)
  {
    v16 = GKOSLoggers();
  }

  v17 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
  {
    v18 = *(a1 + 32);
    *buf = 138412290;
    v26 = v18;
    _os_log_impl(&dword_24DE53000, v17, OS_LOG_TYPE_INFO, "After invitation group wait or timeout. UUID: %@", buf, 0xCu);
  }
}

void __71__GKMatchmakerViewController_startMatchingWithRequest_devicePushToken___block_invoke_142(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!*MEMORY[0x277D0C2A0])
  {
    v4 = GKOSLoggers();
  }

  v5 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    *buf = 138412290;
    v22 = v6;
    _os_log_impl(&dword_24DE53000, v5, OS_LOG_TYPE_INFO, "Performed invitation group. UUID: %@", buf, 0xCu);
  }

  v7 = MEMORY[0x277D0BFD0];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMatchmakerViewController_iOS.m", 727, "-[GKMatchmakerViewController startMatchingWithRequest:devicePushToken:]_block_invoke"];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__GKMatchmakerViewController_startMatchingWithRequest_devicePushToken___block_invoke_2;
  v16[3] = &unk_27966C5E8;
  v9 = *(a1 + 40);
  v20 = *(a1 + 64);
  *&v10 = v9;
  *(&v10 + 1) = *(a1 + 48);
  v15 = v10;
  v11 = *(a1 + 32);
  v19 = v3;
  v12 = *(a1 + 56);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  v17 = v15;
  v18 = v13;
  v14 = v3;
  [v7 named:v8 execute:v16];
}

void __71__GKMatchmakerViewController_startMatchingWithRequest_devicePushToken___block_invoke_2(uint64_t a1)
{
  v72 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) removeLocalPlayerFromPlayersToInvite];
  v2 = [*(a1 + 32) recipients];
  v3 = [v2 _gkNonGuestPlayersFromPlayers];
  v4 = [v3 count];
  v5 = v4 != 0;

  if (v4)
  {
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __71__GKMatchmakerViewController_startMatchingWithRequest_devicePushToken___block_invoke_3;
    v67[3] = &unk_27966C4F8;
    v6 = *(a1 + 32);
    v67[4] = *(a1 + 40);
    [v6 setRecipientResponseHandler:v67];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__GKMatchmakerViewController_startMatchingWithRequest_devicePushToken___block_invoke_4;
  aBlock[3] = &unk_27966C520;
  v66 = v4 != 0;
  aBlock[4] = *(a1 + 40);
  v7 = _Block_copy(aBlock);
  v8 = [*(a1 + 40) isHosted];
  v9 = *(a1 + 40);
  if (v8)
  {
    v10 = [v9 hostedPlayers];
    v11 = [v10 count];

    v12 = [*(a1 + 40) hostedPlayers];
    v13 = [MEMORY[0x277D0C138] localPlayer];
    v14 = [v12 containsObject:v13];

    if (!*MEMORY[0x277D0C2A0])
    {
      v15 = GKOSLoggers();
    }

    v16 = v11 + (v14 ^ 1u);
    v17 = *MEMORY[0x277D0C2B0];
    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 40);
      v19 = v17;
      v20 = [v18 hostedPlayers];
      *buf = 138412290;
      v69 = v20;
      _os_log_impl(&dword_24DE53000, v19, OS_LOG_TYPE_INFO, "Adding players for Hosted Match Request: %@", buf, 0xCu);
    }

    v21 = MEMORY[0x277D0BFD0];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __71__GKMatchmakerViewController_startMatchingWithRequest_devicePushToken___block_invoke_147;
    v59[3] = &unk_27966C570;
    v22 = &v60.i64[1];
    v50 = *(a1 + 32);
    v23 = v50.i64[0];
    v60 = vextq_s8(v50, v50, 8uLL);
    v63[2] = v16;
    v24 = &v62;
    v63[1] = *(a1 + 72);
    v62 = v7;
    v64 = v5;
    v25 = &v61;
    v61 = *(a1 + 48);
    v26 = v63;
    v63[0] = *(a1 + 64);
    v27 = v7;
    [v21 named:@"Adding Players for Hosted Match Request" execute:v59];
  }

  else
  {
    v28 = [v9 match];

    v29 = MEMORY[0x277D0C2A0];
    v30 = MEMORY[0x277D0C2B0];
    if (!v28)
    {
      v31 = [*(a1 + 40) matchmaker];
      v32 = [v31 newMatch];
      [*(a1 + 40) setMatch:v32];

      v33 = *(a1 + 40);
      v34 = [v33 match];
      [v34 setInviteDelegate:v33];

      if (!*v29)
      {
        v35 = GKOSLoggers();
      }

      v36 = *v30;
      if (os_log_type_enabled(*v30, OS_LOG_TYPE_INFO))
      {
        v37 = *(a1 + 40);
        v38 = v36;
        v39 = [v37 match];
        v40 = *(a1 + 48);
        *buf = 138412546;
        v69 = v39;
        v70 = 2112;
        v71 = v40;
        _os_log_impl(&dword_24DE53000, v38, OS_LOG_TYPE_INFO, "Created a new GKMatch: %@. UUID: %@", buf, 0x16u);
      }
    }

    if (!*v29)
    {
      v41 = GKOSLoggers();
    }

    v42 = *v30;
    if (os_log_type_enabled(*v30, OS_LOG_TYPE_INFO))
    {
      v43 = *(a1 + 40);
      v44 = v42;
      v45 = [v43 match];
      *buf = 138412290;
      v69 = v45;
      _os_log_impl(&dword_24DE53000, v44, OS_LOG_TYPE_INFO, "Adding players to Match: %@", buf, 0xCu);
    }

    v46 = MEMORY[0x277D0BFD0];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __71__GKMatchmakerViewController_startMatchingWithRequest_devicePushToken___block_invoke_153;
    v52[3] = &unk_27966C5C0;
    v22 = &v53.i64[1];
    v51 = *(a1 + 32);
    v47 = v51.i64[0];
    v53 = vextq_s8(v51, v51, 8uLL);
    v24 = &v54;
    v48 = *(a1 + 56);
    v58 = *(a1 + 72);
    v25 = &v56;
    v54 = v48;
    v56 = v7;
    v26 = &v55;
    v55 = *(a1 + 48);
    v57 = *(a1 + 64);
    v49 = v7;
    [v46 named:@"Add Players To Match" execute:v52];
  }
}

void __71__GKMatchmakerViewController_startMatchingWithRequest_devicePushToken___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 remoteViewController];
  v6 = v5;
  if (v2 == 1)
  {
    [v5 setInvitesFailedWithError:v4];
  }

  else
  {
    [v5 setAutomatchFailedWithError:v4];
  }
}

void __71__GKMatchmakerViewController_startMatchingWithRequest_devicePushToken___block_invoke_147(uint64_t a1)
{
  v2 = [*(a1 + 32) matchmaker];
  v3 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__GKMatchmakerViewController_startMatchingWithRequest_devicePushToken___block_invoke_2_148;
  v7[3] = &unk_27966C548;
  v4 = *(a1 + 80);
  v11 = *(a1 + 72);
  v5 = *(a1 + 56);
  v12 = *(a1 + 88);
  v6 = *(a1 + 32);
  v9 = v5;
  v7[4] = v6;
  v8 = *(a1 + 48);
  v10 = *(a1 + 64);
  [v2 addPlayersForHostedMatchRequest:v3 existingPlayerCount:v4 completionHandler:v7];
}

void __71__GKMatchmakerViewController_startMatchingWithRequest_devicePushToken___block_invoke_2_148(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
    (*(*(a1 + 48) + 16))();
  }

  else if ((*(a1 + 72) & 1) == 0)
  {
    v7 = [v5 count];
    v8 = [*(a1 + 32) hostedPlayers];
    [v8 addObjectsFromArray:v5];

    v9 = [*(a1 + 32) remoteViewController];
    [v9 setAutomatchPlayerCount:v7];

    if (v7)
    {
      [*(a1 + 32) finishWithPlayers];
    }
  }

  if (!*MEMORY[0x277D0C2A0])
  {
    v10 = GKOSLoggers();
  }

  v11 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 40);
    v13 = 138412290;
    v14 = v12;
    _os_log_impl(&dword_24DE53000, v11, OS_LOG_TYPE_INFO, "Done invitation group from addPlayersForHosted. UUID: %@", &v13, 0xCu);
  }

  (*(*(a1 + 56) + 16))();
}

void __71__GKMatchmakerViewController_startMatchingWithRequest_devicePushToken___block_invoke_153(uint64_t a1)
{
  v2 = [*(a1 + 32) matchmaker];
  v3 = [*(a1 + 32) match];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__GKMatchmakerViewController_startMatchingWithRequest_devicePushToken___block_invoke_2_154;
  v7[3] = &unk_27966C598;
  v6 = *(a1 + 80);
  v7[4] = *(a1 + 32);
  v11 = v6;
  v9 = *(a1 + 64);
  v8 = *(a1 + 56);
  v10 = *(a1 + 72);
  [v2 addPlayersToMatch:v3 matchRequest:v4 devicePushToken:v5 completionHandler:v7];
}

void __71__GKMatchmakerViewController_startMatchingWithRequest_devicePushToken___block_invoke_2_154(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) userCancelledMatching])
  {
    if (!v3)
    {
      v3 = [MEMORY[0x277CCA9B8] userErrorForCode:2 underlyingError:0];
    }

    [*(a1 + 32) setUserCancelledMatching:0];
  }

  if (v3)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v3);
    (*(*(a1 + 48) + 16))();
    v4 = [*(a1 + 32) match];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v3];
    [v4 promptRadarAndRequestRemoteLogsWithDescriptionAddition:v5];
  }

  if (!*MEMORY[0x277D0C2A0])
  {
    v6 = GKOSLoggers();
  }

  v7 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 40);
    *buf = 138412290;
    v10 = v8;
    _os_log_impl(&dword_24DE53000, v7, OS_LOG_TYPE_INFO, "Done invitation group from addPlayersToMatch. UUID: %@", buf, 0xCu);
  }

  (*(*(a1 + 56) + 16))();
}

- (void)cancelPendingInviteToPlayer:(id)player
{
  playerCopy = player;
  v5 = MEMORY[0x277D0BFD0];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMatchmakerViewController_iOS.m", 810, "-[GKMatchmakerViewController cancelPendingInviteToPlayer:]"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__GKMatchmakerViewController_cancelPendingInviteToPlayer___block_invoke;
  v8[3] = &unk_279669E48;
  v8[4] = self;
  v9 = playerCopy;
  v7 = playerCopy;
  [v5 named:v6 execute:v8];
}

void __58__GKMatchmakerViewController_cancelPendingInviteToPlayer___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) matchmaker];
  v2 = [MEMORY[0x277D0C170] canonicalizedPlayerForInternal:*(a1 + 40)];
  [v3 cancelPendingInviteToPlayer:v2];
}

- (void)groupActivityJoiningPlayer:(id)player devicePushToken:(id)token participantServerIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  playerCopy = player;
  tokenCopy = token;
  identifierCopy = identifier;
  v11 = MEMORY[0x277D0C2A0];
  v12 = *MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v13 = GKOSLoggers();
    v12 = *v11;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = playerCopy;
    v18 = 2112;
    v19 = identifierCopy;
    _os_log_impl(&dword_24DE53000, v12, OS_LOG_TYPE_DEFAULT, "groupActivityJoiningPlayer player: %@, participantID: %@", &v16, 0x16u);
  }

  remoteViewController = self->_remoteViewController;
  internal = [playerCopy internal];
  [(GKMatchmakerHostViewController *)remoteViewController groupActivityJoiningPlayer:internal devicePushToken:tokenCopy participantServerIdentifier:identifierCopy];
}

- (void)invitedPlayer:(id)player responded:(int64_t)responded
{
  v29 = *MEMORY[0x277D85DE8];
  playerCopy = player;
  v7 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v8 = GKOSLoggers();
  }

  v9 = *MEMORY[0x277D0C2C8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
  {
    LOWORD(v25) = 0;
    _os_log_impl(&dword_24DE53000, v9, OS_LOG_TYPE_INFO, "GKMatchMakerViewController: invitedPlayer: responded:", &v25, 2u);
  }

  if (!*v7)
  {
    v10 = GKOSLoggers();
  }

  v11 = MEMORY[0x277D0C2B0];
  v12 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    internal = [playerCopy internal];
    v15 = [internal debugDescription];
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:responded];
    v25 = 138412546;
    v26 = v15;
    v27 = 2112;
    v28 = v16;
    _os_log_impl(&dword_24DE53000, v13, OS_LOG_TYPE_INFO, "Invited player: %@ responded: %@", &v25, 0x16u);
  }

  if (!responded && self->_hosted)
  {
    if (!*v7)
    {
      v17 = GKOSLoggers();
    }

    v18 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_24DE53000, v18, OS_LOG_TYPE_INFO, "    ---> GKInviteeResponseAccepted", &v25, 2u);
    }

    [(NSMutableArray *)self->_hostedPlayers addObject:playerCopy];
    matchmakerDelegate = [(GKMatchmakerViewController *)self matchmakerDelegate];
    if (objc_opt_respondsToSelector())
    {
      [matchmakerDelegate matchmakerViewController:self hostedPlayerDidAccept:playerCopy];
    }

    else if (objc_opt_respondsToSelector())
    {
      internal2 = [playerCopy internal];
      playerID = [internal2 playerID];
      [matchmakerDelegate matchmakerViewController:self didReceiveAcceptFromHostedPlayer:playerID];
    }

    else
    {
      if (!*v7)
      {
        v22 = GKOSLoggers();
      }

      if (os_log_type_enabled(*MEMORY[0x277D0C288], OS_LOG_TYPE_ERROR))
      {
        [GKMatchmakerViewController invitedPlayer:responded:];
      }
    }
  }

  remoteViewController = self->_remoteViewController;
  internal3 = [playerCopy internal];
  [(GKMatchmakerHostViewController *)remoteViewController setPlayer:internal3 responded:responded];
}

- (void)match:(id)match didReceiveData:(id)data fromRemotePlayer:(id)player
{
  remoteViewController = self->_remoteViewController;
  dataCopy = data;
  internal = [player internal];
  [(GKMatchmakerHostViewController *)remoteViewController setPlayer:internal sentData:dataCopy];
}

- (void)match:(id)match player:(id)player didChangeConnectionState:(int64_t)state
{
  remoteViewController = self->_remoteViewController;
  internal = [player internal];
  [(GKMatchmakerHostViewController *)remoteViewController setPlayer:internal connected:state == 1];
}

- (void)setBrowsingForNearbyPlayers:(BOOL)players
{
  v5 = MEMORY[0x277D0BFD0];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMatchmakerViewController_iOS.m", 869, "-[GKMatchmakerViewController setBrowsingForNearbyPlayers:]"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__GKMatchmakerViewController_setBrowsingForNearbyPlayers___block_invoke;
  v7[3] = &unk_27966A890;
  playersCopy = players;
  v7[4] = self;
  [v5 named:v6 execute:v7];
}

void __58__GKMatchmakerViewController_setBrowsingForNearbyPlayers___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) matchmaker];
  v4 = v3;
  if (v2 == 1)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __58__GKMatchmakerViewController_setBrowsingForNearbyPlayers___block_invoke_2;
    v5[3] = &unk_27966C660;
    v5[4] = *(a1 + 32);
    [v3 startBrowsingForNearbyPlayersWithHandler:v5];
  }

  else
  {
    [v3 stopBrowsingForNearbyPlayers];
  }
}

void __58__GKMatchmakerViewController_setBrowsingForNearbyPlayers___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v8 = [v4 remoteViewController];
  v6 = [v5 internal];

  v7 = [v6 playerID];
  [v8 setNearbyPlayer:v7 reachable:a3];
}

- (void)activateGroupActivities
{
  if (!*MEMORY[0x277D0C2A0])
  {
    v3 = GKOSLoggers();
  }

  v4 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_24DE53000, v4, OS_LOG_TYPE_INFO, "Game Center trying to activate GroupActivity", v6, 2u);
  }

  matchmaker = [(GKMatchmakerViewController *)self matchmaker];
  [matchmaker activateGroupActivityWithHandler:&__block_literal_global_162];
}

void __53__GKMatchmakerViewController_activateGroupActivities__block_invoke(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (!*MEMORY[0x277D0C2A0])
  {
    v3 = GKOSLoggers();
  }

  v4 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&dword_24DE53000, v4, OS_LOG_TYPE_INFO, "Game Center done activating GroupActivity, success: %hhd", v5, 8u);
  }
}

- (void)endGroupActivities
{
  if (!*MEMORY[0x277D0C2A0])
  {
    v3 = GKOSLoggers();
  }

  v4 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_24DE53000, v4, OS_LOG_TYPE_INFO, "Game Center trying to activate GroupActivity", v6, 2u);
  }

  matchmaker = [(GKMatchmakerViewController *)self matchmaker];
  [matchmaker endGroupActivity];
}

- (void)presentSharePlaySharingController
{
  v3 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v4 = GKOSLoggers();
  }

  v5 = MEMORY[0x277D0C2B0];
  v6 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_24DE53000, v6, OS_LOG_TYPE_INFO, "Game Center trying to present SharePlay sharing view controller", v11, 2u);
  }

  if ([MEMORY[0x277CCA8D8] _gkMainBundleIsGameCenterSystemProcess])
  {
    if (!*v3)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
    {
      [GKMatchmakerViewController presentSharePlaySharingController];
    }
  }

  else
  {
    matchmaker = [(GKMatchmakerViewController *)self matchmaker];
    sharingControllerItemProvider = [matchmaker sharingControllerItemProvider];

    v10 = [(GKMatchmakerViewController *)self registerGroupActivitySharingControllerItemProvider:sharingControllerItemProvider];
    [(GKMatchmakerViewController *)self presentViewController:v10 animated:1 completion:0];
  }
}

- (void)disconnectFromMatch
{
  match = [(GKMatchmakerViewController *)self match];

  if (match)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v4 = GKOSLoggers();
    }

    v5 = *MEMORY[0x277D0C2B0];
    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24DE53000, v5, OS_LOG_TYPE_INFO, "Game Center trying to disconnect from match.", buf, 2u);
    }

    v9 = 5;
    match2 = [(GKMatchmakerViewController *)self match];
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:&v9 length:4];
    [match2 sendInviteData:v7];

    match3 = [(GKMatchmakerViewController *)self match];
    [match3 setInviteDelegate:0];

    [(GKMatchmakerViewController *)self setMatch:0];
  }
}

- (void)setConnectingStateForPlayer:(id)player
{
  remoteViewController = self->_remoteViewController;
  internal = [player internal];
  [(GKMatchmakerHostViewController *)remoteViewController setConnectingStateForPlayer:internal];
}

- (void)inviterCancelledNotification:(id)notification
{
  notificationCopy = notification;
  v5 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v6 = GKOSLoggers();
  }

  v7 = *MEMORY[0x277D0C2C8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24DE53000, v7, OS_LOG_TYPE_INFO, "GKMatchmakterViewController: inviterCancelledNotification", buf, 2u);
  }

  acceptedInvite = [(GKMatchmakerViewController *)self acceptedInvite];

  if (acceptedInvite)
  {
    userInfo = [notificationCopy userInfo];
    v10 = [userInfo objectForKey:*MEMORY[0x277D0BC10]];

    if (!v10)
    {
      userInfo2 = [notificationCopy userInfo];
      v12 = [userInfo2 objectForKeyedSubscript:@"session-token"];

      if (v12)
      {
        v10 = [v12 base64EncodedStringWithOptions:0];
      }

      else
      {
        v10 = 0;
      }
    }

    acceptedInvite2 = [(GKMatchmakerViewController *)self acceptedInvite];
    inviteID = [acceptedInvite2 inviteID];
    v15 = [inviteID isEqualToString:v10];

    if (v15)
    {
      remoteViewController = [(GKMatchmakerViewController *)self remoteViewController];

      if (remoteViewController)
      {
        remoteViewController2 = [(GKMatchmakerViewController *)self remoteViewController];
        [remoteViewController2 inviterCancelled];

        if (!*v5)
        {
          v18 = GKOSLoggers();
        }

        v19 = *MEMORY[0x277D0C2B0];
        if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
        {
          *v22 = 0;
          _os_log_impl(&dword_24DE53000, v19, OS_LOG_TYPE_INFO, "GKMatchmakterViewController: inviterCancelledNotification - Invite Cancelled", v22, 2u);
        }
      }

      else
      {
        if (!*v5)
        {
          v20 = GKOSLoggers();
        }

        v21 = *MEMORY[0x277D0C2B0];
        if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
        {
          *v23 = 0;
          _os_log_impl(&dword_24DE53000, v21, OS_LOG_TYPE_INFO, "the remote view controller has not been up yet, set inviterCancelNotificaitonReceived = YES", v23, 2u);
        }

        [(GKMatchmakerViewController *)self setInviterCancelNotificaitonReceived:1];
      }
    }
  }
}

- (void)inviteSharePlayPlayer:(id)player
{
  v19 = *MEMORY[0x277D85DE8];
  playerCopy = player;
  v5 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v6 = GKOSLoggers();
  }

  v7 = MEMORY[0x277D0C2B0];
  v8 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v15 = 138412290;
    v16 = playerCopy;
    _os_log_impl(&dword_24DE53000, v8, OS_LOG_TYPE_INFO, "inviteSharePlayPlayer: %@", &v15, 0xCu);
  }

  userInfo = [playerCopy userInfo];
  v10 = [userInfo objectForKeyedSubscript:@"player"];
  v11 = [userInfo objectForKeyedSubscript:@"pushToken"];
  v12 = [userInfo objectForKeyedSubscript:@"participantIdentifier"];
  if (v10 && v11)
  {
    [(GKMatchmakerViewController *)self groupActivityJoiningPlayer:v10 devicePushToken:v11 participantServerIdentifier:v12];
  }

  else
  {
    if (!*v5)
    {
      v13 = GKOSLoggers();
    }

    v14 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
    {
      v15 = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_24DE53000, v14, OS_LOG_TYPE_INFO, "cannot call groupActivityJoiningPlayer as something is nil. player: %@, pushToken: %@", &v15, 0x16u);
    }
  }
}

- (void)sharePlayEligibilityChanged:(id)changed
{
  v12 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  v6 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = changedCopy;
    _os_log_impl(&dword_24DE53000, v6, OS_LOG_TYPE_INFO, "sharePlayEligibilityChanged: %@", &v10, 0xCu);
  }

  userInfo = [changedCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"isEligibleForGroupSession"];
  bOOLValue = [v8 BOOLValue];

  [(GKMatchmakerHostViewController *)self->_remoteViewController setEligibilityForGroupSession:bOOLValue];
}

- (void)sharePlaySharingControllerResultSucceeded:(BOOL)succeeded
{
  succeededCopy = succeeded;
  v12 = *MEMORY[0x277D85DE8];
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  v6 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = v6;
    v9 = [v7 numberWithBool:succeededCopy];
    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&dword_24DE53000, v8, OS_LOG_TYPE_INFO, "sharePlaySharingControllerResultSucceeded: %@", &v10, 0xCu);
  }

  [(GKMatchmakerHostViewController *)self->_remoteViewController setSharePlaySharingControllerResult:succeededCopy];
}

- (void)recipientPropertiesNeededForPlayer:(id)player
{
  playerCopy = player;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__GKMatchmakerViewController_recipientPropertiesNeededForPlayer___block_invoke;
  v6[3] = &unk_27966C6A8;
  objc_copyWeak(&v8, &location);
  v5 = playerCopy;
  v7 = v5;
  [(GKMatchmakerViewController *)self handleRecipientPropertiesNeededForPlayer:v5 completionHandler:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __65__GKMatchmakerViewController_recipientPropertiesNeededForPlayer___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [WeakRetained remoteViewController];
    [v4 recipientPropertiesProvided:v3 forPlayer:*(a1 + 32)];
  }
}

- (void)authenticationChanged:(id)changed
{
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x277D0BCE0]];

  if (!self->_alertController)
  {
    localPlayer = [MEMORY[0x277D0C138] localPlayer];
    if ([localPlayer isAuthenticated])
    {
      localPlayer2 = [MEMORY[0x277D0C138] localPlayer];
      internal = [localPlayer2 internal];
      playerID = [internal playerID];
      v11 = [playerID isEqualToString:v6];

      if (v11)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    if (!*MEMORY[0x277D0C2A0])
    {
      v12 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_DEBUG))
    {
      [GKMatchmakerViewController authenticationChanged:];
    }

    [(GKMatchmakerViewController *)self cancel];
  }

LABEL_11:
}

- (id)matchmakerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->matchmakerDelegate);

  return WeakRetained;
}

- (GKInternalPlayerPickerDelegate)internalPlayerPickerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_internalPlayerPickerDelegate);

  return WeakRetained;
}

- (id)registerGroupActivitySharingControllerItemProvider:(id)provider
{
  providerCopy = provider;
  selfCopy = self;
  GKMatchmakerViewController.registerSharingControllerItemProvider(itemProvider:)(v6, providerCopy);
  v8 = v7;

  return v8;
}

- (void)handleRecipientPropertiesNeededForPlayer:(id)player completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  _Block_copy(v6);
  playerCopy = player;
  selfCopy = self;
  sub_24E25B34C(player, selfCopy, v6);
  _Block_release(v6);
}

void __56__GKMatchmakerViewController__setupRemoteViewController__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)finishWithError:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)finishWithError:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __58__GKMatchmakerViewController_createMatchForAcceptedInvite__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __71__GKMatchmakerViewController_startMatchingWithRequest_devicePushToken___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*(*a2 + 8) + 40);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&dword_24DE53000, log, OS_LOG_TYPE_ERROR, "Timeout while starting matching with request: %@. Error: %@", &v5, 0x16u);
}

- (void)invitedPlayer:responded:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)authenticationChanged:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(&dword_24DE53000, v0, OS_LOG_TYPE_DEBUG, "GKMatchmakerViewController_iOS authenticationChanged with notification: %@", v1, 0xCu);
}

@end
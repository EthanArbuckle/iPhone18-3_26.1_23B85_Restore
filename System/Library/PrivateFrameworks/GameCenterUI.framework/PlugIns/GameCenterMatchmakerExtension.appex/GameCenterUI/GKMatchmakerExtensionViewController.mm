@interface GKMatchmakerExtensionViewController
- (GKMatchmakerExtensionViewController)initWithCoder:(id)coder;
- (id)hostObjectProxy;
- (void)activateGroupActivitiesForMultiplayerP2PViewController:(id)controller;
- (void)applicationWillEnterForeground;
- (void)constructContentViewController;
- (void)disconnectMatchForMultiplayerP2PViewController:(id)controller;
- (void)dismissWithGameController;
- (void)endGroupActivitiesForMultiplayerP2PViewController:(id)controller;
- (void)messageFromClient:(id)client;
- (void)multiplayerP2PViewController:(id)controller cancelInviteToPlayer:(id)player;
- (void)multiplayerP2PViewController:(id)controller didFinishWithError:(id)error;
- (void)multiplayerP2PViewController:(id)controller sendData:(id)data;
- (void)multiplayerP2PViewController:(id)controller setShareInvitees:(id)invitees;
- (void)multiplayerP2PViewController:(id)controller shareMatchWithRequest:(id)request handler:(id)handler;
- (void)multiplayerP2PViewController:(id)controller startMatchingWithRequest:(id)request;
- (void)multiplayerP2PViewController:(id)controller startMatchingWithRequest:(id)request devicePushToken:(id)token;
- (void)multiplayerP2PViewControllerCancelMatching:(id)matching;
- (void)multiplayerP2PViewControllerPresentSharePlaySharingController:(id)controller;
- (void)multiplayerPicker:(id)picker didPickPlayers:(id)players messageGroups:(id)groups customMessage:(id)message;
- (void)multiplayerPickerDidCancel:(id)cancel;
- (void)navigateToSharePlayChiclet;
- (void)requestRecipientProperties:(id)properties;
- (void)setCanStartWithMinimumPlayers:(BOOL)players;
- (void)setDefaultInvitationMessage:(id)message;
- (void)setExistingPlayers:(id)players;
- (void)setHosted:(BOOL)hosted;
- (void)setInitialState:(id)state withReply:(id)reply;
- (void)setIsEligibleForGroupSession:(BOOL)session;
- (void)setMatchmakingMode:(int64_t)mode;
- (void)setNearbyPlayer:(id)player reachable:(BOOL)reachable;
- (void)startBrowsingForNearbyPlayersWithReachableHandler:(id)handler;
- (void)stopBrowsingForNearbyPlayers;
@end

@implementation GKMatchmakerExtensionViewController

- (GKMatchmakerExtensionViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = GKMatchmakerExtensionViewController;
  v3 = [(GKMatchmakerExtensionViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(GKMatchmakerExtensionViewController *)v3 setAlwaysShowDoneButton:0];
  }

  return v4;
}

- (void)setInitialState:(id)state withReply:(id)reply
{
  stateCopy = state;
  replyCopy = reply;
  v8 = [stateCopy objectForKeyedSubscript:GKExtensionItemMatchesHosted];
  -[GKMatchmakerExtensionViewController setHosted:](self, "setHosted:", [v8 BOOLValue]);

  v9 = [stateCopy objectForKeyedSubscript:GKExtensionItemMatchesMatchmakingMode];
  -[GKMatchmakerExtensionViewController setMatchmakingMode:](self, "setMatchmakingMode:", [v9 integerValue]);

  v10 = [stateCopy objectForKeyedSubscript:GKExtensionItemMatchesFastStartEnabled];
  -[GKMatchmakerExtensionViewController setCanStartWithMinimumPlayers:](self, "setCanStartWithMinimumPlayers:", [v10 BOOLValue]);

  v11 = [stateCopy objectForKeyedSubscript:GKExtensionItemMatchesGroupSessionEligible];
  -[GKMatchmakerExtensionViewController setIsEligibleForGroupSession:](self, "setIsEligibleForGroupSession:", [v11 BOOLValue]);

  v12 = [stateCopy objectForKeyedSubscript:GKExtensionItemEntitledToGroupActivities];
  -[GKMatchmakerExtensionViewController setIsEntitledToUseGroupActivities:](self, "setIsEntitledToUseGroupActivities:", [v12 BOOLValue]);

  v13 = [stateCopy objectForKeyedSubscript:@"playerPickerContext"];
  [(GKMatchmakerExtensionViewController *)self setPlayerPickerContext:v13];

  v14 = [stateCopy objectForKeyedSubscript:GKExtensionItemPlayerInternalsKey];
  [(GKMatchmakerExtensionViewController *)self setExistingPlayers:v14];

  v15 = [stateCopy objectForKeyedSubscript:GKExtensionItemMatchesMatchRequestInternal];
  if (v15)
  {
    v16 = [[GKMatchRequest alloc] initWithInternalRepresentation:v15];
    [(GKMatchmakerExtensionViewController *)self setMatchRequest:v16];
  }

  v17 = [stateCopy objectForKeyedSubscript:GKExtensionItemMatchesAcceptedInviteInternal];
  if (v17)
  {
    v18 = [[GKInvite alloc] initWithInternalRepresentation:v17];
    [(GKMatchmakerExtensionViewController *)self setAcceptedInvite:v18];
  }

  v19.receiver = self;
  v19.super_class = GKMatchmakerExtensionViewController;
  [(GKMatchmakerExtensionViewController *)&v19 setInitialState:stateCopy withReply:replyCopy];
}

- (void)constructContentViewController
{
  acceptedInvite = [(GKMatchmakerExtensionViewController *)self acceptedInvite];
  if (acceptedInvite || ([(GKMatchmakerExtensionViewController *)self matchRequest], (acceptedInvite = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    playerPickerContext = [(GKMatchmakerExtensionViewController *)self playerPickerContext];

    if (!playerPickerContext)
    {
      return;
    }
  }

  playerPickerContext2 = [(GKMatchmakerExtensionViewController *)self playerPickerContext];

  if (playerPickerContext2)
  {
    v5 = [GKDashboardMultiplayerPickerViewController alloc];
    playerPickerContext3 = [(GKMatchmakerExtensionViewController *)self playerPickerContext];
    maxPlayers = [playerPickerContext3 maxPlayers];
    playerPickerContext4 = [(GKMatchmakerExtensionViewController *)self playerPickerContext];
    excludedPlayers = [playerPickerContext4 excludedPlayers];
    playerPickerContext5 = [(GKMatchmakerExtensionViewController *)self playerPickerContext];
    delegatedContentViewController = [v5 initWithMaxSelectable:maxPlayers hiddenPlayers:excludedPlayers nearbyOnly:0 pickerOrigin:{objc_msgSend(playerPickerContext5, "pickerOrigin")}];

    [delegatedContentViewController setMultiplayerPickerDelegate:self];
    [delegatedContentViewController setNearbyDelegate:self];
    v12 = +[GKPreferences shared];
    [delegatedContentViewController setSupportsNearby:{objc_msgSend(v12, "shouldAllowNearbyMultiplayer")}];

LABEL_8:
    [(GKMatchmakerExtensionViewController *)self setContentViewController:delegatedContentViewController];
    goto LABEL_9;
  }

  acceptedInvite2 = [(GKMatchmakerExtensionViewController *)self acceptedInvite];

  if (acceptedInvite2)
  {
    v14 = [GKMultiplayerP2PViewController alloc];
    acceptedInvite3 = [(GKMatchmakerExtensionViewController *)self acceptedInvite];
    v16 = [v14 initWithAcceptedInvite:acceptedInvite3];
    [(GKMatchmakerExtensionViewController *)self setDelegatedContentViewController:v16];

    delegatedContentViewController = [(GKMatchmakerExtensionViewController *)self delegatedContentViewController];
    goto LABEL_8;
  }

  matchRequest = [(GKMatchmakerExtensionViewController *)self matchRequest];

  if (matchRequest)
  {
    v34 = [GKMultiplayerP2PViewController alloc];
    matchRequest2 = [(GKMatchmakerExtensionViewController *)self matchRequest];
    v36 = [v34 initWithMatchRequest:matchRequest2];
    [(GKMatchmakerExtensionViewController *)self setDelegatedContentViewController:v36];

    canStartWithMinimumPlayers = [(GKMatchmakerExtensionViewController *)self canStartWithMinimumPlayers];
    delegatedContentViewController2 = [(GKMatchmakerExtensionViewController *)self delegatedContentViewController];
    [delegatedContentViewController2 setCanStartWithMinimumPlayers:canStartWithMinimumPlayers];

    matchRequest3 = [(GKMatchmakerExtensionViewController *)self matchRequest];
    v40 = +[GKGame currentGame];
    delegatedContentViewController3 = [(GKMatchmakerExtensionViewController *)self delegatedContentViewController];
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_100002504;
    v53[3] = &unk_100020960;
    v53[4] = self;
    v42 = [_TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController viewControllerWithRequest:matchRequest3 game:v40 multiplayerViewController:delegatedContentViewController3 dismissHandler:v53];
    [(GKMatchmakerExtensionViewController *)self setContentViewController:v42];

    matchmakingMode = [(GKMatchmakerExtensionViewController *)self matchmakingMode];
    contentViewController = [(GKMatchmakerExtensionViewController *)self contentViewController];
    [contentViewController setOriginalMatchmakingMode:matchmakingMode];

    isEligibleForGroupSession = [(GKMatchmakerExtensionViewController *)self isEligibleForGroupSession];
    contentViewController2 = [(GKMatchmakerExtensionViewController *)self contentViewController];
    [contentViewController2 setIsEligibleForGroupSession:isEligibleForGroupSession];

    isEntitledToUseGroupActivities = [(GKMatchmakerExtensionViewController *)self isEntitledToUseGroupActivities];
    contentViewController3 = [(GKMatchmakerExtensionViewController *)self contentViewController];
    [contentViewController3 setIsEntitledToUseGroupActivities:isEntitledToUseGroupActivities];

    goto LABEL_10;
  }

  v49 = [NSString stringWithFormat:@"Configuration failure for GKMatchmakerExtensionViewController."];
  v50 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/GameCenterMatchmakerExtension/GKMatchmakerExtensionViewController.m"];
  lastPathComponent = [v50 lastPathComponent];
  delegatedContentViewController = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (NO)\n[%s (%s:%d)]", v49, "-[GKMatchmakerExtensionViewController constructContentViewController]", [lastPathComponent UTF8String], 143);

  [NSException raise:@"GameKit Exception" format:@"%@", delegatedContentViewController];
LABEL_9:

LABEL_10:
  playerPickerContext6 = [(GKMatchmakerExtensionViewController *)self playerPickerContext];

  if (!playerPickerContext6)
  {
    v18 = +[GKGame currentGame];
    multiplayerViewController = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
    [multiplayerViewController setGame:v18];

    hosted = [(GKMatchmakerExtensionViewController *)self hosted];
    multiplayerViewController2 = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
    [multiplayerViewController2 setHosted:hosted];

    matchmakingMode2 = [(GKMatchmakerExtensionViewController *)self matchmakingMode];
    multiplayerViewController3 = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
    [multiplayerViewController3 setMatchmakingMode:matchmakingMode2];

    existingPlayers = [(GKMatchmakerExtensionViewController *)self existingPlayers];
    v25 = [existingPlayers count];

    if (v25)
    {
      multiplayerViewController4 = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
      existingPlayers2 = [(GKMatchmakerExtensionViewController *)self existingPlayers];
      [multiplayerViewController4 setExistingPlayers:existingPlayers2];

      contentViewController4 = [(GKMatchmakerExtensionViewController *)self contentViewController];

      if (contentViewController4)
      {
        contentViewController5 = [(GKMatchmakerExtensionViewController *)self contentViewController];
        [contentViewController5 setSkipModeSelection:1];
      }
    }

    multiplayerViewController5 = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
    [multiplayerViewController5 setDelegate:self];

    multiplayerViewController6 = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
    [multiplayerViewController6 setNearbyDelegate:self];
  }

  [(GKMatchmakerExtensionViewController *)self setAdjustTopConstraint:0];
  v52.receiver = self;
  v52.super_class = GKMatchmakerExtensionViewController;
  [(GKMatchmakerExtensionViewController *)&v52 constructContentViewController];
}

- (void)messageFromClient:(id)client
{
  clientCopy = client;
  v5 = GKExtensionProtocolSecureCodedClasses();
  v21 = 0;
  v6 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v5 fromData:clientCopy error:&v21];
  v7 = v21;

  if (v7)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      sub_100014018(v7, v9);
    }
  }

  v10 = [v6 objectForKeyedSubscript:GKExtensionMessageCommandKey];
  integerValue = [v10 integerValue];

  v12 = [v6 objectForKeyedSubscript:GKExtensionMessageParamKey];
  if (!os_log_GKGeneral)
  {
    v13 = GKOSLoggers();
  }

  v14 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Got messageFromClient: %@", buf, 0xCu);
  }

  switch(integerValue)
  {
    case 0x1BuLL:
      -[GKMatchmakerExtensionViewController setHosted:](self, "setHosted:", [v12 BOOLValue]);
      break;
    case 0x1CuLL:
      v19 = [[GKMatchRequest alloc] initWithInternalRepresentation:v12];
      [(GKMatchmakerExtensionViewController *)self setMatchRequest:v19];
      goto LABEL_26;
    case 0x1DuLL:
      v19 = [[GKInvite alloc] initWithInternalRepresentation:v12];
      [(GKMatchmakerExtensionViewController *)self setAcceptedInvite:v19];
      goto LABEL_26;
    case 0x1EuLL:
      [(GKMatchmakerExtensionViewController *)self setExistingPlayers:v12];
      break;
    case 0x1FuLL:
      [(GKMatchmakerExtensionViewController *)self setDefaultInvitationMessage:v12];
      break;
    case 0x20uLL:
      multiplayerViewController = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
      [multiplayerViewController setAutomatchPlayerCount:{objc_msgSend(v12, "integerValue")}];
      goto LABEL_32;
    case 0x21uLL:
      multiplayerViewController = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
      v16 = [v6 objectForKeyedSubscript:GKExtensionMessagePlayerInternal];
      [multiplayerViewController setPlayer:v16 responded:{objc_msgSend(v12, "integerValue")}];
      goto LABEL_31;
    case 0x22uLL:
      multiplayerViewController = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
      v16 = [v6 objectForKeyedSubscript:GKExtensionMessagePlayerInternal];
      [multiplayerViewController setPlayer:v16 connected:{objc_msgSend(v12, "BOOLValue")}];
      goto LABEL_31;
    case 0x23uLL:
      multiplayerViewController = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
      v16 = [v6 objectForKeyedSubscript:GKExtensionMessagePlayerInternal];
      [multiplayerViewController setPlayer:v16 sentData:v12];
      goto LABEL_31;
    case 0x24uLL:
      multiplayerViewController = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
      [multiplayerViewController setInvitesFailedWithError:v12];
      goto LABEL_32;
    case 0x25uLL:
      multiplayerViewController = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
      [multiplayerViewController setAutomatchFailedWithError:v12];
      goto LABEL_32;
    case 0x26uLL:
      multiplayerViewController = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
      [multiplayerViewController inviterCancelled];
      goto LABEL_32;
    case 0x27uLL:
      v19 = [v6 objectForKeyedSubscript:GKExtensionMessagePlayerID];
      -[GKMatchmakerExtensionViewController setNearbyPlayer:reachable:](self, "setNearbyPlayer:reachable:", v19, [v12 BOOLValue]);
LABEL_26:

      break;
    case 0x28uLL:
      [(GKMatchmakerExtensionViewController *)self applicationWillEnterForeground];
      break;
    case 0x29uLL:
      break;
    case 0x30uLL:
      multiplayerViewController = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
      v16 = [v6 objectForKeyedSubscript:GKExtensionMessagePlayerInternal];
      [multiplayerViewController setConnectingStateForPlayer:v16];
      goto LABEL_31;
    case 0x31uLL:
      -[GKMatchmakerExtensionViewController setMatchmakingMode:](self, "setMatchmakingMode:", [v12 integerValue]);
      break;
    case 0x33uLL:
      -[GKMatchmakerExtensionViewController setCanStartWithMinimumPlayers:](self, "setCanStartWithMinimumPlayers:", [v12 BOOLValue]);
      break;
    case 0x34uLL:
      multiplayerViewController = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
      v16 = [v6 objectForKeyedSubscript:GKExtensionMessagePlayerInternal];
      v17 = [v12 objectForKeyedSubscript:@"pushToken"];
      v18 = [v12 objectForKeyedSubscript:@"participantIdentifier"];
      [multiplayerViewController groupActivityJoiningPlayer:v16 devicePushToken:v17 participantServerIdentifier:v18];

      goto LABEL_31;
    case 0x38uLL:
      -[GKMatchmakerExtensionViewController setIsEligibleForGroupSession:](self, "setIsEligibleForGroupSession:", [v12 BOOLValue]);
      break;
    case 0x3AuLL:
      if ([v12 BOOLValue])
      {
        [(GKMatchmakerExtensionViewController *)self navigateToSharePlayChiclet];
      }

      break;
    case 0x3DuLL:
      multiplayerViewController = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
      v16 = [v6 objectForKeyedSubscript:GKExtensionMessagePlayerInternal];
      [multiplayerViewController updateRecipientProperties:v12 forPlayer:v16];
LABEL_31:

LABEL_32:
      break;
    default:
      v20.receiver = self;
      v20.super_class = GKMatchmakerExtensionViewController;
      [(GKMatchmakerExtensionViewController *)&v20 messageFromClient:clientCopy];
      break;
  }
}

- (void)setHosted:(BOOL)hosted
{
  hostedCopy = hosted;
  self->_hosted = hosted;
  contentViewController = [(GKMatchmakerExtensionViewController *)self contentViewController];

  if (contentViewController)
  {
    multiplayerViewController = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
    [multiplayerViewController setHosted:hostedCopy];
  }
}

- (void)setCanStartWithMinimumPlayers:(BOOL)players
{
  playersCopy = players;
  self->_canStartWithMinimumPlayers = players;
  contentViewController = [(GKMatchmakerExtensionViewController *)self contentViewController];

  if (contentViewController)
  {
    multiplayerViewController = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
    [multiplayerViewController setCanStartWithMinimumPlayers:playersCopy];
  }
}

- (void)setIsEligibleForGroupSession:(BOOL)session
{
  sessionCopy = session;
  self->_isEligibleForGroupSession = session;
  contentViewController = [(GKMatchmakerExtensionViewController *)self contentViewController];

  if (contentViewController)
  {
    contentViewController2 = [(GKMatchmakerExtensionViewController *)self contentViewController];
    [contentViewController2 setIsEligibleForGroupSession:sessionCopy];
  }
}

- (void)navigateToSharePlayChiclet
{
  contentViewController = [(GKMatchmakerExtensionViewController *)self contentViewController];

  if (contentViewController)
  {
    contentViewController2 = [(GKMatchmakerExtensionViewController *)self contentViewController];
    [contentViewController2 launchSharePlayChiclet];
  }
}

- (void)setMatchmakingMode:(int64_t)mode
{
  self->_matchmakingMode = mode;
  contentViewController = [(GKMatchmakerExtensionViewController *)self contentViewController];

  if (contentViewController)
  {
    multiplayerViewController = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
    [multiplayerViewController setMatchmakingMode:mode];
  }
}

- (void)setExistingPlayers:(id)players
{
  playersCopy = players;
  if (self->_existingPlayers != playersCopy)
  {
    objc_storeStrong(&self->_existingPlayers, players);
    contentViewController = [(GKMatchmakerExtensionViewController *)self contentViewController];
    if (contentViewController)
    {
      v6 = contentViewController;
      v7 = [(NSArray *)self->_existingPlayers count];

      if (v7)
      {
        multiplayerViewController = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
        [multiplayerViewController setExistingPlayers:playersCopy];
      }
    }
  }
}

- (void)setDefaultInvitationMessage:(id)message
{
  messageCopy = message;
  matchRequest = [(GKMatchmakerExtensionViewController *)self matchRequest];
  inviteMessage = [matchRequest inviteMessage];

  if (inviteMessage != messageCopy)
  {
    matchRequest2 = [(GKMatchmakerExtensionViewController *)self matchRequest];
    [matchRequest2 setInviteMessage:messageCopy];

    contentViewController = [(GKMatchmakerExtensionViewController *)self contentViewController];

    if (contentViewController)
    {
      inviteMessage2 = [(GKMatchRequest *)self->_matchRequest inviteMessage];
      multiplayerViewController = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
      [multiplayerViewController setDefaultInvitationMessage:inviteMessage2];
    }
  }
}

- (void)setNearbyPlayer:(id)player reachable:(BOOL)reachable
{
  reachableCopy = reachable;
  playerCopy = player;
  nearbyPlayerHandler = [(GKMatchmakerExtensionViewController *)self nearbyPlayerHandler];

  if (nearbyPlayerHandler)
  {
    nearbyPlayerHandler2 = [(GKMatchmakerExtensionViewController *)self nearbyPlayerHandler];
    (nearbyPlayerHandler2)[2](nearbyPlayerHandler2, playerCopy, reachableCopy);
  }
}

- (void)applicationWillEnterForeground
{
  v3 = +[GKPreferences shared];
  [v3 invalidate];

  multiplayerViewController = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
  [multiplayerViewController applicationWillEnterForeground];
}

- (id)hostObjectProxy
{
  extensionContext = [(GKMatchmakerExtensionViewController *)self extensionContext];
  _auxiliaryConnection = [extensionContext _auxiliaryConnection];
  v4 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&stru_1000209A0];

  return v4;
}

- (void)multiplayerP2PViewController:(id)controller didFinishWithError:(id)error
{
  errorCopy = error;
  v5 = [NSMutableDictionary dictionaryWithObjectsAndKeys:&off_1000211B8, GKExtensionMessageCommandKey, 0];
  if (errorCopy)
  {
    [v5 setObject:errorCopy forKeyedSubscript:GKExtensionMessageParamKey];
  }

  [(GKMatchmakerExtensionViewController *)self sendMessageToClient:v5];
}

- (void)multiplayerP2PViewController:(id)controller shareMatchWithRequest:(id)request handler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  hostObjectProxy = [(GKMatchmakerExtensionViewController *)self hostObjectProxy];
  internal = [requestCopy internal];

  [hostObjectProxy shareMatchWithRequest:internal handler:handlerCopy];
}

- (void)multiplayerP2PViewController:(id)controller setShareInvitees:(id)invitees
{
  v7[0] = GKExtensionMessageCommandKey;
  v7[1] = GKExtensionMessageParamKey;
  v8[0] = &off_1000211D0;
  v8[1] = invitees;
  inviteesCopy = invitees;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  [(GKMatchmakerExtensionViewController *)self sendMessageToClient:v6];
}

- (void)multiplayerP2PViewController:(id)controller startMatchingWithRequest:(id)request
{
  v8[0] = &off_1000211E8;
  v7[0] = GKExtensionMessageCommandKey;
  v7[1] = GKExtensionMessageParamKey;
  internal = [request internal];
  v8[1] = internal;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  [(GKMatchmakerExtensionViewController *)self sendMessageToClient:v6];
}

- (void)multiplayerP2PViewController:(id)controller startMatchingWithRequest:(id)request devicePushToken:(id)token
{
  v13[0] = @"request";
  tokenCopy = token;
  internal = [request internal];
  v13[1] = @"pushToken";
  v14[0] = internal;
  v14[1] = tokenCopy;
  v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

  v11[0] = GKExtensionMessageCommandKey;
  v11[1] = GKExtensionMessageParamKey;
  v12[0] = &off_100021200;
  v12[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];

  [(GKMatchmakerExtensionViewController *)self sendMessageToClient:v10];
}

- (void)activateGroupActivitiesForMultiplayerP2PViewController:(id)controller
{
  v5[0] = GKExtensionMessageCommandKey;
  v5[1] = GKExtensionMessageParamKey;
  v6[0] = &off_100021218;
  v6[1] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  [(GKMatchmakerExtensionViewController *)self sendMessageToClient:v4];
}

- (void)endGroupActivitiesForMultiplayerP2PViewController:(id)controller
{
  v5[0] = GKExtensionMessageCommandKey;
  v5[1] = GKExtensionMessageParamKey;
  v6[0] = &off_100021230;
  v6[1] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  [(GKMatchmakerExtensionViewController *)self sendMessageToClient:v4];
}

- (void)multiplayerP2PViewControllerPresentSharePlaySharingController:(id)controller
{
  v5[0] = GKExtensionMessageCommandKey;
  v5[1] = GKExtensionMessageParamKey;
  v6[0] = &off_100021248;
  v6[1] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  [(GKMatchmakerExtensionViewController *)self sendMessageToClient:v4];
}

- (void)disconnectMatchForMultiplayerP2PViewController:(id)controller
{
  v5[0] = GKExtensionMessageCommandKey;
  v5[1] = GKExtensionMessageParamKey;
  v6[0] = &off_100021260;
  v6[1] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  [(GKMatchmakerExtensionViewController *)self sendMessageToClient:v4];
}

- (void)multiplayerP2PViewController:(id)controller cancelInviteToPlayer:(id)player
{
  v7[0] = GKExtensionMessageCommandKey;
  v7[1] = GKExtensionMessageParamKey;
  v8[0] = &off_100021278;
  v8[1] = player;
  playerCopy = player;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  [(GKMatchmakerExtensionViewController *)self sendMessageToClient:v6];
}

- (void)multiplayerP2PViewController:(id)controller sendData:(id)data
{
  v7[0] = GKExtensionMessageCommandKey;
  v7[1] = GKExtensionMessageParamKey;
  v8[0] = &off_100021290;
  v8[1] = data;
  dataCopy = data;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  [(GKMatchmakerExtensionViewController *)self sendMessageToClient:v6];
}

- (void)multiplayerP2PViewControllerCancelMatching:(id)matching
{
  v5 = GKExtensionMessageCommandKey;
  v6 = &off_1000212A8;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [(GKMatchmakerExtensionViewController *)self sendMessageToClient:v4];
}

- (void)startBrowsingForNearbyPlayersWithReachableHandler:(id)handler
{
  [(GKMatchmakerExtensionViewController *)self setNearbyPlayerHandler:handler];
  v5[0] = GKExtensionMessageCommandKey;
  v5[1] = GKExtensionMessageParamKey;
  v6[0] = &off_1000212C0;
  v6[1] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  [(GKMatchmakerExtensionViewController *)self sendMessageToClient:v4];
}

- (void)stopBrowsingForNearbyPlayers
{
  v4[0] = GKExtensionMessageCommandKey;
  v4[1] = GKExtensionMessageParamKey;
  v5[0] = &off_1000212C0;
  v5[1] = &__kCFBooleanFalse;
  v3 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];
  [(GKMatchmakerExtensionViewController *)self sendMessageToClient:v3];
}

- (void)requestRecipientProperties:(id)properties
{
  v6[0] = GKExtensionMessageCommandKey;
  v6[1] = GKExtensionMessageParamKey;
  v7[0] = &off_1000212D8;
  v7[1] = properties;
  propertiesCopy = properties;
  v5 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  [(GKMatchmakerExtensionViewController *)self sendMessageToClient:v5];
}

- (void)dismissWithGameController
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GameController: GKMatchmakerExtensionViewController was dismissed by the game controller.", v5, 2u);
  }

  [(GKMatchmakerExtensionViewController *)self extensionIsCanceling];
}

- (void)multiplayerPicker:(id)picker didPickPlayers:(id)players messageGroups:(id)groups customMessage:(id)message
{
  pickerCopy = picker;
  playersCopy = players;
  groupsCopy = groups;
  messageCopy = message;
  if (!os_log_GKGeneral)
  {
    v14 = GKOSLoggers();
  }

  v15 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v22 = playersCopy;
    v23 = 2112;
    v24 = messageCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Extension - player picker - didPickPlayers: %@, customMessage: %@", buf, 0x16u);
  }

  v16 = +[NSMutableDictionary dictionary];
  _gkInternalsFromPlayers = [playersCopy _gkInternalsFromPlayers];
  [v16 setObject:_gkInternalsFromPlayers forKeyedSubscript:@"players"];

  v19[0] = GKExtensionMessageCommandKey;
  v19[1] = GKExtensionMessageParamKey;
  v20[0] = &off_1000212F0;
  v20[1] = v16;
  v18 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  [(GKMatchmakerExtensionViewController *)self sendMessageToClient:v18];

  [pickerCopy dismissViewControllerAnimated:1 completion:0];
  [(GKMatchmakerExtensionViewController *)self extensionIsCanceling];
}

- (void)multiplayerPickerDidCancel:(id)cancel
{
  v9 = GKExtensionMessageCommandKey;
  v10 = &off_100021308;
  cancelCopy = cancel;
  v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [(GKMatchmakerExtensionViewController *)self sendMessageToClient:v5];

  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
  }

  v7 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Extension - player picker - didCancel", v8, 2u);
  }

  [cancelCopy dismissViewControllerAnimated:1 completion:0];

  [(GKMatchmakerExtensionViewController *)self extensionIsCanceling];
}

@end
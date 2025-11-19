@interface GKMatchmakerExtensionViewController
- (GKMatchmakerExtensionViewController)initWithCoder:(id)a3;
- (id)hostObjectProxy;
- (void)activateGroupActivitiesForMultiplayerP2PViewController:(id)a3;
- (void)applicationWillEnterForeground;
- (void)constructContentViewController;
- (void)disconnectMatchForMultiplayerP2PViewController:(id)a3;
- (void)dismissWithGameController;
- (void)endGroupActivitiesForMultiplayerP2PViewController:(id)a3;
- (void)messageFromClient:(id)a3;
- (void)multiplayerP2PViewController:(id)a3 cancelInviteToPlayer:(id)a4;
- (void)multiplayerP2PViewController:(id)a3 didFinishWithError:(id)a4;
- (void)multiplayerP2PViewController:(id)a3 sendData:(id)a4;
- (void)multiplayerP2PViewController:(id)a3 setShareInvitees:(id)a4;
- (void)multiplayerP2PViewController:(id)a3 shareMatchWithRequest:(id)a4 handler:(id)a5;
- (void)multiplayerP2PViewController:(id)a3 startMatchingWithRequest:(id)a4;
- (void)multiplayerP2PViewController:(id)a3 startMatchingWithRequest:(id)a4 devicePushToken:(id)a5;
- (void)multiplayerP2PViewControllerCancelMatching:(id)a3;
- (void)multiplayerP2PViewControllerPresentSharePlaySharingController:(id)a3;
- (void)multiplayerPicker:(id)a3 didPickPlayers:(id)a4 messageGroups:(id)a5 customMessage:(id)a6;
- (void)multiplayerPickerDidCancel:(id)a3;
- (void)navigateToSharePlayChiclet;
- (void)requestRecipientProperties:(id)a3;
- (void)setCanStartWithMinimumPlayers:(BOOL)a3;
- (void)setDefaultInvitationMessage:(id)a3;
- (void)setExistingPlayers:(id)a3;
- (void)setHosted:(BOOL)a3;
- (void)setInitialState:(id)a3 withReply:(id)a4;
- (void)setIsEligibleForGroupSession:(BOOL)a3;
- (void)setMatchmakingMode:(int64_t)a3;
- (void)setNearbyPlayer:(id)a3 reachable:(BOOL)a4;
- (void)startBrowsingForNearbyPlayersWithReachableHandler:(id)a3;
- (void)stopBrowsingForNearbyPlayers;
@end

@implementation GKMatchmakerExtensionViewController

- (GKMatchmakerExtensionViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = GKMatchmakerExtensionViewController;
  v3 = [(GKMatchmakerExtensionViewController *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(GKMatchmakerExtensionViewController *)v3 setAlwaysShowDoneButton:0];
  }

  return v4;
}

- (void)setInitialState:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:GKExtensionItemMatchesHosted];
  -[GKMatchmakerExtensionViewController setHosted:](self, "setHosted:", [v8 BOOLValue]);

  v9 = [v6 objectForKeyedSubscript:GKExtensionItemMatchesMatchmakingMode];
  -[GKMatchmakerExtensionViewController setMatchmakingMode:](self, "setMatchmakingMode:", [v9 integerValue]);

  v10 = [v6 objectForKeyedSubscript:GKExtensionItemMatchesFastStartEnabled];
  -[GKMatchmakerExtensionViewController setCanStartWithMinimumPlayers:](self, "setCanStartWithMinimumPlayers:", [v10 BOOLValue]);

  v11 = [v6 objectForKeyedSubscript:GKExtensionItemMatchesGroupSessionEligible];
  -[GKMatchmakerExtensionViewController setIsEligibleForGroupSession:](self, "setIsEligibleForGroupSession:", [v11 BOOLValue]);

  v12 = [v6 objectForKeyedSubscript:GKExtensionItemEntitledToGroupActivities];
  -[GKMatchmakerExtensionViewController setIsEntitledToUseGroupActivities:](self, "setIsEntitledToUseGroupActivities:", [v12 BOOLValue]);

  v13 = [v6 objectForKeyedSubscript:@"playerPickerContext"];
  [(GKMatchmakerExtensionViewController *)self setPlayerPickerContext:v13];

  v14 = [v6 objectForKeyedSubscript:GKExtensionItemPlayerInternalsKey];
  [(GKMatchmakerExtensionViewController *)self setExistingPlayers:v14];

  v15 = [v6 objectForKeyedSubscript:GKExtensionItemMatchesMatchRequestInternal];
  if (v15)
  {
    v16 = [[GKMatchRequest alloc] initWithInternalRepresentation:v15];
    [(GKMatchmakerExtensionViewController *)self setMatchRequest:v16];
  }

  v17 = [v6 objectForKeyedSubscript:GKExtensionItemMatchesAcceptedInviteInternal];
  if (v17)
  {
    v18 = [[GKInvite alloc] initWithInternalRepresentation:v17];
    [(GKMatchmakerExtensionViewController *)self setAcceptedInvite:v18];
  }

  v19.receiver = self;
  v19.super_class = GKMatchmakerExtensionViewController;
  [(GKMatchmakerExtensionViewController *)&v19 setInitialState:v6 withReply:v7];
}

- (void)constructContentViewController
{
  v3 = [(GKMatchmakerExtensionViewController *)self acceptedInvite];
  if (v3 || ([(GKMatchmakerExtensionViewController *)self matchRequest], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v32 = [(GKMatchmakerExtensionViewController *)self playerPickerContext];

    if (!v32)
    {
      return;
    }
  }

  v4 = [(GKMatchmakerExtensionViewController *)self playerPickerContext];

  if (v4)
  {
    v5 = [GKDashboardMultiplayerPickerViewController alloc];
    v6 = [(GKMatchmakerExtensionViewController *)self playerPickerContext];
    v7 = [v6 maxPlayers];
    v8 = [(GKMatchmakerExtensionViewController *)self playerPickerContext];
    v9 = [v8 excludedPlayers];
    v10 = [(GKMatchmakerExtensionViewController *)self playerPickerContext];
    v11 = [v5 initWithMaxSelectable:v7 hiddenPlayers:v9 nearbyOnly:0 pickerOrigin:{objc_msgSend(v10, "pickerOrigin")}];

    [v11 setMultiplayerPickerDelegate:self];
    [v11 setNearbyDelegate:self];
    v12 = +[GKPreferences shared];
    [v11 setSupportsNearby:{objc_msgSend(v12, "shouldAllowNearbyMultiplayer")}];

LABEL_8:
    [(GKMatchmakerExtensionViewController *)self setContentViewController:v11];
    goto LABEL_9;
  }

  v13 = [(GKMatchmakerExtensionViewController *)self acceptedInvite];

  if (v13)
  {
    v14 = [GKMultiplayerP2PViewController alloc];
    v15 = [(GKMatchmakerExtensionViewController *)self acceptedInvite];
    v16 = [v14 initWithAcceptedInvite:v15];
    [(GKMatchmakerExtensionViewController *)self setDelegatedContentViewController:v16];

    v11 = [(GKMatchmakerExtensionViewController *)self delegatedContentViewController];
    goto LABEL_8;
  }

  v33 = [(GKMatchmakerExtensionViewController *)self matchRequest];

  if (v33)
  {
    v34 = [GKMultiplayerP2PViewController alloc];
    v35 = [(GKMatchmakerExtensionViewController *)self matchRequest];
    v36 = [v34 initWithMatchRequest:v35];
    [(GKMatchmakerExtensionViewController *)self setDelegatedContentViewController:v36];

    v37 = [(GKMatchmakerExtensionViewController *)self canStartWithMinimumPlayers];
    v38 = [(GKMatchmakerExtensionViewController *)self delegatedContentViewController];
    [v38 setCanStartWithMinimumPlayers:v37];

    v39 = [(GKMatchmakerExtensionViewController *)self matchRequest];
    v40 = +[GKGame currentGame];
    v41 = [(GKMatchmakerExtensionViewController *)self delegatedContentViewController];
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_100002504;
    v53[3] = &unk_100020960;
    v53[4] = self;
    v42 = [_TtC29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewController viewControllerWithRequest:v39 game:v40 multiplayerViewController:v41 dismissHandler:v53];
    [(GKMatchmakerExtensionViewController *)self setContentViewController:v42];

    v43 = [(GKMatchmakerExtensionViewController *)self matchmakingMode];
    v44 = [(GKMatchmakerExtensionViewController *)self contentViewController];
    [v44 setOriginalMatchmakingMode:v43];

    v45 = [(GKMatchmakerExtensionViewController *)self isEligibleForGroupSession];
    v46 = [(GKMatchmakerExtensionViewController *)self contentViewController];
    [v46 setIsEligibleForGroupSession:v45];

    v47 = [(GKMatchmakerExtensionViewController *)self isEntitledToUseGroupActivities];
    v48 = [(GKMatchmakerExtensionViewController *)self contentViewController];
    [v48 setIsEntitledToUseGroupActivities:v47];

    goto LABEL_10;
  }

  v49 = [NSString stringWithFormat:@"Configuration failure for GKMatchmakerExtensionViewController."];
  v50 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/GameCenterMatchmakerExtension/GKMatchmakerExtensionViewController.m"];
  v51 = [v50 lastPathComponent];
  v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (NO)\n[%s (%s:%d)]", v49, "-[GKMatchmakerExtensionViewController constructContentViewController]", [v51 UTF8String], 143);

  [NSException raise:@"GameKit Exception" format:@"%@", v11];
LABEL_9:

LABEL_10:
  v17 = [(GKMatchmakerExtensionViewController *)self playerPickerContext];

  if (!v17)
  {
    v18 = +[GKGame currentGame];
    v19 = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
    [v19 setGame:v18];

    v20 = [(GKMatchmakerExtensionViewController *)self hosted];
    v21 = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
    [v21 setHosted:v20];

    v22 = [(GKMatchmakerExtensionViewController *)self matchmakingMode];
    v23 = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
    [v23 setMatchmakingMode:v22];

    v24 = [(GKMatchmakerExtensionViewController *)self existingPlayers];
    v25 = [v24 count];

    if (v25)
    {
      v26 = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
      v27 = [(GKMatchmakerExtensionViewController *)self existingPlayers];
      [v26 setExistingPlayers:v27];

      v28 = [(GKMatchmakerExtensionViewController *)self contentViewController];

      if (v28)
      {
        v29 = [(GKMatchmakerExtensionViewController *)self contentViewController];
        [v29 setSkipModeSelection:1];
      }
    }

    v30 = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
    [v30 setDelegate:self];

    v31 = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
    [v31 setNearbyDelegate:self];
  }

  [(GKMatchmakerExtensionViewController *)self setAdjustTopConstraint:0];
  v52.receiver = self;
  v52.super_class = GKMatchmakerExtensionViewController;
  [(GKMatchmakerExtensionViewController *)&v52 constructContentViewController];
}

- (void)messageFromClient:(id)a3
{
  v4 = a3;
  v5 = GKExtensionProtocolSecureCodedClasses();
  v21 = 0;
  v6 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v5 fromData:v4 error:&v21];
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
  v11 = [v10 integerValue];

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

  switch(v11)
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
      v15 = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
      [v15 setAutomatchPlayerCount:{objc_msgSend(v12, "integerValue")}];
      goto LABEL_32;
    case 0x21uLL:
      v15 = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
      v16 = [v6 objectForKeyedSubscript:GKExtensionMessagePlayerInternal];
      [v15 setPlayer:v16 responded:{objc_msgSend(v12, "integerValue")}];
      goto LABEL_31;
    case 0x22uLL:
      v15 = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
      v16 = [v6 objectForKeyedSubscript:GKExtensionMessagePlayerInternal];
      [v15 setPlayer:v16 connected:{objc_msgSend(v12, "BOOLValue")}];
      goto LABEL_31;
    case 0x23uLL:
      v15 = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
      v16 = [v6 objectForKeyedSubscript:GKExtensionMessagePlayerInternal];
      [v15 setPlayer:v16 sentData:v12];
      goto LABEL_31;
    case 0x24uLL:
      v15 = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
      [v15 setInvitesFailedWithError:v12];
      goto LABEL_32;
    case 0x25uLL:
      v15 = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
      [v15 setAutomatchFailedWithError:v12];
      goto LABEL_32;
    case 0x26uLL:
      v15 = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
      [v15 inviterCancelled];
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
      v15 = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
      v16 = [v6 objectForKeyedSubscript:GKExtensionMessagePlayerInternal];
      [v15 setConnectingStateForPlayer:v16];
      goto LABEL_31;
    case 0x31uLL:
      -[GKMatchmakerExtensionViewController setMatchmakingMode:](self, "setMatchmakingMode:", [v12 integerValue]);
      break;
    case 0x33uLL:
      -[GKMatchmakerExtensionViewController setCanStartWithMinimumPlayers:](self, "setCanStartWithMinimumPlayers:", [v12 BOOLValue]);
      break;
    case 0x34uLL:
      v15 = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
      v16 = [v6 objectForKeyedSubscript:GKExtensionMessagePlayerInternal];
      v17 = [v12 objectForKeyedSubscript:@"pushToken"];
      v18 = [v12 objectForKeyedSubscript:@"participantIdentifier"];
      [v15 groupActivityJoiningPlayer:v16 devicePushToken:v17 participantServerIdentifier:v18];

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
      v15 = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
      v16 = [v6 objectForKeyedSubscript:GKExtensionMessagePlayerInternal];
      [v15 updateRecipientProperties:v12 forPlayer:v16];
LABEL_31:

LABEL_32:
      break;
    default:
      v20.receiver = self;
      v20.super_class = GKMatchmakerExtensionViewController;
      [(GKMatchmakerExtensionViewController *)&v20 messageFromClient:v4];
      break;
  }
}

- (void)setHosted:(BOOL)a3
{
  v3 = a3;
  self->_hosted = a3;
  v5 = [(GKMatchmakerExtensionViewController *)self contentViewController];

  if (v5)
  {
    v6 = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
    [v6 setHosted:v3];
  }
}

- (void)setCanStartWithMinimumPlayers:(BOOL)a3
{
  v3 = a3;
  self->_canStartWithMinimumPlayers = a3;
  v5 = [(GKMatchmakerExtensionViewController *)self contentViewController];

  if (v5)
  {
    v6 = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
    [v6 setCanStartWithMinimumPlayers:v3];
  }
}

- (void)setIsEligibleForGroupSession:(BOOL)a3
{
  v3 = a3;
  self->_isEligibleForGroupSession = a3;
  v5 = [(GKMatchmakerExtensionViewController *)self contentViewController];

  if (v5)
  {
    v6 = [(GKMatchmakerExtensionViewController *)self contentViewController];
    [v6 setIsEligibleForGroupSession:v3];
  }
}

- (void)navigateToSharePlayChiclet
{
  v3 = [(GKMatchmakerExtensionViewController *)self contentViewController];

  if (v3)
  {
    v4 = [(GKMatchmakerExtensionViewController *)self contentViewController];
    [v4 launchSharePlayChiclet];
  }
}

- (void)setMatchmakingMode:(int64_t)a3
{
  self->_matchmakingMode = a3;
  v5 = [(GKMatchmakerExtensionViewController *)self contentViewController];

  if (v5)
  {
    v6 = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
    [v6 setMatchmakingMode:a3];
  }
}

- (void)setExistingPlayers:(id)a3
{
  v9 = a3;
  if (self->_existingPlayers != v9)
  {
    objc_storeStrong(&self->_existingPlayers, a3);
    v5 = [(GKMatchmakerExtensionViewController *)self contentViewController];
    if (v5)
    {
      v6 = v5;
      v7 = [(NSArray *)self->_existingPlayers count];

      if (v7)
      {
        v8 = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
        [v8 setExistingPlayers:v9];
      }
    }
  }
}

- (void)setDefaultInvitationMessage:(id)a3
{
  v10 = a3;
  v4 = [(GKMatchmakerExtensionViewController *)self matchRequest];
  v5 = [v4 inviteMessage];

  if (v5 != v10)
  {
    v6 = [(GKMatchmakerExtensionViewController *)self matchRequest];
    [v6 setInviteMessage:v10];

    v7 = [(GKMatchmakerExtensionViewController *)self contentViewController];

    if (v7)
    {
      v8 = [(GKMatchRequest *)self->_matchRequest inviteMessage];
      v9 = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
      [v9 setDefaultInvitationMessage:v8];
    }
  }
}

- (void)setNearbyPlayer:(id)a3 reachable:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  v6 = [(GKMatchmakerExtensionViewController *)self nearbyPlayerHandler];

  if (v6)
  {
    v7 = [(GKMatchmakerExtensionViewController *)self nearbyPlayerHandler];
    (v7)[2](v7, v8, v4);
  }
}

- (void)applicationWillEnterForeground
{
  v3 = +[GKPreferences shared];
  [v3 invalidate];

  v4 = [(GKMatchmakerExtensionViewController *)self multiplayerViewController];
  [v4 applicationWillEnterForeground];
}

- (id)hostObjectProxy
{
  v2 = [(GKMatchmakerExtensionViewController *)self extensionContext];
  v3 = [v2 _auxiliaryConnection];
  v4 = [v3 remoteObjectProxyWithErrorHandler:&stru_1000209A0];

  return v4;
}

- (void)multiplayerP2PViewController:(id)a3 didFinishWithError:(id)a4
{
  v6 = a4;
  v5 = [NSMutableDictionary dictionaryWithObjectsAndKeys:&off_1000211B8, GKExtensionMessageCommandKey, 0];
  if (v6)
  {
    [v5 setObject:v6 forKeyedSubscript:GKExtensionMessageParamKey];
  }

  [(GKMatchmakerExtensionViewController *)self sendMessageToClient:v5];
}

- (void)multiplayerP2PViewController:(id)a3 shareMatchWithRequest:(id)a4 handler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v10 = [(GKMatchmakerExtensionViewController *)self hostObjectProxy];
  v9 = [v8 internal];

  [v10 shareMatchWithRequest:v9 handler:v7];
}

- (void)multiplayerP2PViewController:(id)a3 setShareInvitees:(id)a4
{
  v7[0] = GKExtensionMessageCommandKey;
  v7[1] = GKExtensionMessageParamKey;
  v8[0] = &off_1000211D0;
  v8[1] = a4;
  v5 = a4;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  [(GKMatchmakerExtensionViewController *)self sendMessageToClient:v6];
}

- (void)multiplayerP2PViewController:(id)a3 startMatchingWithRequest:(id)a4
{
  v8[0] = &off_1000211E8;
  v7[0] = GKExtensionMessageCommandKey;
  v7[1] = GKExtensionMessageParamKey;
  v5 = [a4 internal];
  v8[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  [(GKMatchmakerExtensionViewController *)self sendMessageToClient:v6];
}

- (void)multiplayerP2PViewController:(id)a3 startMatchingWithRequest:(id)a4 devicePushToken:(id)a5
{
  v13[0] = @"request";
  v7 = a5;
  v8 = [a4 internal];
  v13[1] = @"pushToken";
  v14[0] = v8;
  v14[1] = v7;
  v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

  v11[0] = GKExtensionMessageCommandKey;
  v11[1] = GKExtensionMessageParamKey;
  v12[0] = &off_100021200;
  v12[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];

  [(GKMatchmakerExtensionViewController *)self sendMessageToClient:v10];
}

- (void)activateGroupActivitiesForMultiplayerP2PViewController:(id)a3
{
  v5[0] = GKExtensionMessageCommandKey;
  v5[1] = GKExtensionMessageParamKey;
  v6[0] = &off_100021218;
  v6[1] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  [(GKMatchmakerExtensionViewController *)self sendMessageToClient:v4];
}

- (void)endGroupActivitiesForMultiplayerP2PViewController:(id)a3
{
  v5[0] = GKExtensionMessageCommandKey;
  v5[1] = GKExtensionMessageParamKey;
  v6[0] = &off_100021230;
  v6[1] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  [(GKMatchmakerExtensionViewController *)self sendMessageToClient:v4];
}

- (void)multiplayerP2PViewControllerPresentSharePlaySharingController:(id)a3
{
  v5[0] = GKExtensionMessageCommandKey;
  v5[1] = GKExtensionMessageParamKey;
  v6[0] = &off_100021248;
  v6[1] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  [(GKMatchmakerExtensionViewController *)self sendMessageToClient:v4];
}

- (void)disconnectMatchForMultiplayerP2PViewController:(id)a3
{
  v5[0] = GKExtensionMessageCommandKey;
  v5[1] = GKExtensionMessageParamKey;
  v6[0] = &off_100021260;
  v6[1] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  [(GKMatchmakerExtensionViewController *)self sendMessageToClient:v4];
}

- (void)multiplayerP2PViewController:(id)a3 cancelInviteToPlayer:(id)a4
{
  v7[0] = GKExtensionMessageCommandKey;
  v7[1] = GKExtensionMessageParamKey;
  v8[0] = &off_100021278;
  v8[1] = a4;
  v5 = a4;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  [(GKMatchmakerExtensionViewController *)self sendMessageToClient:v6];
}

- (void)multiplayerP2PViewController:(id)a3 sendData:(id)a4
{
  v7[0] = GKExtensionMessageCommandKey;
  v7[1] = GKExtensionMessageParamKey;
  v8[0] = &off_100021290;
  v8[1] = a4;
  v5 = a4;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  [(GKMatchmakerExtensionViewController *)self sendMessageToClient:v6];
}

- (void)multiplayerP2PViewControllerCancelMatching:(id)a3
{
  v5 = GKExtensionMessageCommandKey;
  v6 = &off_1000212A8;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [(GKMatchmakerExtensionViewController *)self sendMessageToClient:v4];
}

- (void)startBrowsingForNearbyPlayersWithReachableHandler:(id)a3
{
  [(GKMatchmakerExtensionViewController *)self setNearbyPlayerHandler:a3];
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

- (void)requestRecipientProperties:(id)a3
{
  v6[0] = GKExtensionMessageCommandKey;
  v6[1] = GKExtensionMessageParamKey;
  v7[0] = &off_1000212D8;
  v7[1] = a3;
  v4 = a3;
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

- (void)multiplayerPicker:(id)a3 didPickPlayers:(id)a4 messageGroups:(id)a5 customMessage:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!os_log_GKGeneral)
  {
    v14 = GKOSLoggers();
  }

  v15 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v22 = v11;
    v23 = 2112;
    v24 = v13;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Extension - player picker - didPickPlayers: %@, customMessage: %@", buf, 0x16u);
  }

  v16 = +[NSMutableDictionary dictionary];
  v17 = [v11 _gkInternalsFromPlayers];
  [v16 setObject:v17 forKeyedSubscript:@"players"];

  v19[0] = GKExtensionMessageCommandKey;
  v19[1] = GKExtensionMessageParamKey;
  v20[0] = &off_1000212F0;
  v20[1] = v16;
  v18 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  [(GKMatchmakerExtensionViewController *)self sendMessageToClient:v18];

  [v10 dismissViewControllerAnimated:1 completion:0];
  [(GKMatchmakerExtensionViewController *)self extensionIsCanceling];
}

- (void)multiplayerPickerDidCancel:(id)a3
{
  v9 = GKExtensionMessageCommandKey;
  v10 = &off_100021308;
  v4 = a3;
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

  [v4 dismissViewControllerAnimated:1 completion:0];

  [(GKMatchmakerExtensionViewController *)self extensionIsCanceling];
}

@end
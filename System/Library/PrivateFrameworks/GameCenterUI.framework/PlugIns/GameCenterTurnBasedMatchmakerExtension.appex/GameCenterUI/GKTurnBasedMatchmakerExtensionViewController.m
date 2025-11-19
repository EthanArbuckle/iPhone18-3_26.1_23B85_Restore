@interface GKTurnBasedMatchmakerExtensionViewController
- (id)hostObjectProxy;
- (void)constructContentViewController;
- (void)dismissWithGameController;
- (void)finishWithTurnBasedMatch:(id)a3;
- (void)messageFromClient:(id)a3;
- (void)quitTurnBasedMatch:(id)a3;
- (void)refreshMatches;
- (void)setInitialState:(id)a3 withReply:(id)a4;
- (void)turnBasedViewController:(id)a3 didFailWithError:(id)a4;
- (void)turnBasedViewController:(id)a3 didFindMatch:(id)a4;
- (void)turnBasedViewController:(id)a3 playerQuitForMatch:(id)a4;
@end

@implementation GKTurnBasedMatchmakerExtensionViewController

- (void)setInitialState:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:GKExtensionItemMatchesShowPlayForMatch];
  -[GKTurnBasedMatchmakerExtensionViewController setShowPlay:](self, "setShowPlay:", [v8 BOOLValue]);

  v9 = [v6 objectForKeyedSubscript:GKExtensionItemMatchesShowQuitForMatch];
  -[GKTurnBasedMatchmakerExtensionViewController setShowQuit:](self, "setShowQuit:", [v9 BOOLValue]);

  v10 = [v6 objectForKeyedSubscript:GKExtensionItemMatchesShowExistingMatches];
  -[GKTurnBasedMatchmakerExtensionViewController setShowExistingMatches:](self, "setShowExistingMatches:", [v10 BOOLValue]);

  v11 = [v6 objectForKeyedSubscript:GKExtensionItemMatchesMatchRequestInternal];
  if (v11)
  {
    v12 = [[GKMatchRequest alloc] initWithInternalRepresentation:v11];
    [(GKTurnBasedMatchmakerExtensionViewController *)self setMatchRequest:v12];
  }

  v13.receiver = self;
  v13.super_class = GKTurnBasedMatchmakerExtensionViewController;
  [(GKTurnBasedMatchmakerExtensionViewController *)&v13 setInitialState:v6 withReply:v7];
}

- (void)constructContentViewController
{
  v3 = [(GKTurnBasedMatchmakerExtensionViewController *)self matchRequest];

  if (v3)
  {
    [(GKTurnBasedMatchmakerExtensionViewController *)self setAdjustTopConstraint:0];
    [(GKTurnBasedMatchmakerExtensionViewController *)self setAlwaysShowDoneButton:0];
    v4 = [GKTurnBasedMatchesViewController alloc];
    v5 = [(GKTurnBasedMatchmakerExtensionViewController *)self matchRequest];
    v6 = [v4 initWithMatchRequest:v5];
    [(GKTurnBasedMatchmakerExtensionViewController *)self setContentViewController:v6];

    v7 = +[GKGame currentGame];
    v8 = [(GKTurnBasedMatchmakerExtensionViewController *)self turnBasedViewController];
    [v8 setGame:v7];

    v9 = [(GKTurnBasedMatchmakerExtensionViewController *)self turnBasedViewController];
    [v9 setDelegate:self];

    showExistingMatches = self->_showExistingMatches;
    v11 = [(GKTurnBasedMatchmakerExtensionViewController *)self turnBasedViewController];
    [v11 setShowExistingMatches:showExistingMatches];

    showPlay = self->_showPlay;
    v13 = [(GKTurnBasedMatchmakerExtensionViewController *)self turnBasedViewController];
    [v13 setShowPlay:showPlay];

    showQuit = self->_showQuit;
    v15 = [(GKTurnBasedMatchmakerExtensionViewController *)self turnBasedViewController];
    [v15 setShowQuit:showQuit];

    v16.receiver = self;
    v16.super_class = GKTurnBasedMatchmakerExtensionViewController;
    [(GKTurnBasedMatchmakerExtensionViewController *)&v16 constructContentViewController];
  }
}

- (void)messageFromClient:(id)a3
{
  v4 = a3;
  v5 = GKExtensionProtocolSecureCodedClasses();
  v16 = 0;
  v6 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v5 fromData:v4 error:&v16];
  v7 = v16;

  if (v7)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100001A6C(v7, v9);
    }
  }

  v10 = [v6 objectForKeyedSubscript:GKExtensionMessageCommandKey];
  v11 = [v10 integerValue];

  v12 = [v6 objectForKeyedSubscript:GKExtensionMessageParamKey];
  v13 = v12;
  if (v11 <= 27)
  {
    if (v11 == 16)
    {
      -[GKTurnBasedMatchmakerExtensionViewController setShowPlay:](self, "setShowPlay:", [v12 BOOLValue]);
      goto LABEL_18;
    }

    if (v11 == 17)
    {
      -[GKTurnBasedMatchmakerExtensionViewController setShowQuit:](self, "setShowQuit:", [v12 BOOLValue]);
      goto LABEL_18;
    }

LABEL_17:
    v15.receiver = self;
    v15.super_class = GKTurnBasedMatchmakerExtensionViewController;
    [(GKTurnBasedMatchmakerExtensionViewController *)&v15 messageFromClient:v4];
    goto LABEL_18;
  }

  if (v11 == 43)
  {
    [(GKTurnBasedMatchmakerExtensionViewController *)self refreshMatches];
    goto LABEL_18;
  }

  if (v11 == 42)
  {
    -[GKTurnBasedMatchmakerExtensionViewController setShowExistingMatches:](self, "setShowExistingMatches:", [v12 BOOLValue]);
    goto LABEL_18;
  }

  if (v11 != 28)
  {
    goto LABEL_17;
  }

  v14 = [[GKMatchRequest alloc] initWithInternalRepresentation:v12];
  [(GKTurnBasedMatchmakerExtensionViewController *)self setMatchRequest:v14];

LABEL_18:
}

- (void)refreshMatches
{
  v2 = [(GKTurnBasedMatchmakerExtensionViewController *)self turnBasedViewController];
  [v2 setNeedsReload];
}

- (id)hostObjectProxy
{
  v2 = [(GKTurnBasedMatchmakerExtensionViewController *)self extensionContext];
  v3 = [v2 _auxiliaryConnection];
  v4 = [v3 remoteObjectProxyWithErrorHandler:&stru_100004190];

  return v4;
}

- (void)finishWithTurnBasedMatch:(id)a3
{
  v7[0] = &off_1000041F8;
  v6[0] = GKExtensionMessageCommandKey;
  v6[1] = GKExtensionMessageParamKey;
  v4 = [a3 internal];
  v7[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(GKTurnBasedMatchmakerExtensionViewController *)self sendMessageToClient:v5];
}

- (void)quitTurnBasedMatch:(id)a3
{
  v7[0] = &off_100004210;
  v6[0] = GKExtensionMessageCommandKey;
  v6[1] = GKExtensionMessageParamKey;
  v4 = [a3 internal];
  v7[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(GKTurnBasedMatchmakerExtensionViewController *)self sendMessageToClient:v5];
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
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "GameController: GKTurnBasedMatchmakerExtensionViewController was dismissed by the game controller.", v5, 2u);
  }

  [(GKTurnBasedMatchmakerExtensionViewController *)self extensionIsCanceling];
}

- (void)turnBasedViewController:(id)a3 didFailWithError:(id)a4
{
  v6 = a4;
  v5 = [NSMutableDictionary dictionaryWithObjectsAndKeys:&off_100004228, GKExtensionMessageCommandKey, 0];
  if (v6)
  {
    [v5 setObject:v6 forKeyedSubscript:GKExtensionMessageParamKey];
  }

  [(GKTurnBasedMatchmakerExtensionViewController *)self sendMessageToClient:v5];
}

- (void)turnBasedViewController:(id)a3 didFindMatch:(id)a4
{
  v8[0] = &off_1000041F8;
  v7[0] = GKExtensionMessageCommandKey;
  v7[1] = GKExtensionMessageParamKey;
  v5 = [a4 internal];
  v8[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  [(GKTurnBasedMatchmakerExtensionViewController *)self sendMessageToClient:v6];
}

- (void)turnBasedViewController:(id)a3 playerQuitForMatch:(id)a4
{
  v8[0] = &off_100004210;
  v7[0] = GKExtensionMessageCommandKey;
  v7[1] = GKExtensionMessageParamKey;
  v5 = [a4 internal];
  v8[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  [(GKTurnBasedMatchmakerExtensionViewController *)self sendMessageToClient:v6];
}

@end
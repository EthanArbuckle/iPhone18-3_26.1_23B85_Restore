@interface GKTurnBasedMatchmakerExtensionViewController
- (id)hostObjectProxy;
- (void)constructContentViewController;
- (void)dismissWithGameController;
- (void)finishWithTurnBasedMatch:(id)match;
- (void)messageFromClient:(id)client;
- (void)quitTurnBasedMatch:(id)match;
- (void)refreshMatches;
- (void)setInitialState:(id)state withReply:(id)reply;
- (void)turnBasedViewController:(id)controller didFailWithError:(id)error;
- (void)turnBasedViewController:(id)controller didFindMatch:(id)match;
- (void)turnBasedViewController:(id)controller playerQuitForMatch:(id)match;
@end

@implementation GKTurnBasedMatchmakerExtensionViewController

- (void)setInitialState:(id)state withReply:(id)reply
{
  stateCopy = state;
  replyCopy = reply;
  v8 = [stateCopy objectForKeyedSubscript:GKExtensionItemMatchesShowPlayForMatch];
  -[GKTurnBasedMatchmakerExtensionViewController setShowPlay:](self, "setShowPlay:", [v8 BOOLValue]);

  v9 = [stateCopy objectForKeyedSubscript:GKExtensionItemMatchesShowQuitForMatch];
  -[GKTurnBasedMatchmakerExtensionViewController setShowQuit:](self, "setShowQuit:", [v9 BOOLValue]);

  v10 = [stateCopy objectForKeyedSubscript:GKExtensionItemMatchesShowExistingMatches];
  -[GKTurnBasedMatchmakerExtensionViewController setShowExistingMatches:](self, "setShowExistingMatches:", [v10 BOOLValue]);

  v11 = [stateCopy objectForKeyedSubscript:GKExtensionItemMatchesMatchRequestInternal];
  if (v11)
  {
    v12 = [[GKMatchRequest alloc] initWithInternalRepresentation:v11];
    [(GKTurnBasedMatchmakerExtensionViewController *)self setMatchRequest:v12];
  }

  v13.receiver = self;
  v13.super_class = GKTurnBasedMatchmakerExtensionViewController;
  [(GKTurnBasedMatchmakerExtensionViewController *)&v13 setInitialState:stateCopy withReply:replyCopy];
}

- (void)constructContentViewController
{
  matchRequest = [(GKTurnBasedMatchmakerExtensionViewController *)self matchRequest];

  if (matchRequest)
  {
    [(GKTurnBasedMatchmakerExtensionViewController *)self setAdjustTopConstraint:0];
    [(GKTurnBasedMatchmakerExtensionViewController *)self setAlwaysShowDoneButton:0];
    v4 = [GKTurnBasedMatchesViewController alloc];
    matchRequest2 = [(GKTurnBasedMatchmakerExtensionViewController *)self matchRequest];
    v6 = [v4 initWithMatchRequest:matchRequest2];
    [(GKTurnBasedMatchmakerExtensionViewController *)self setContentViewController:v6];

    v7 = +[GKGame currentGame];
    turnBasedViewController = [(GKTurnBasedMatchmakerExtensionViewController *)self turnBasedViewController];
    [turnBasedViewController setGame:v7];

    turnBasedViewController2 = [(GKTurnBasedMatchmakerExtensionViewController *)self turnBasedViewController];
    [turnBasedViewController2 setDelegate:self];

    showExistingMatches = self->_showExistingMatches;
    turnBasedViewController3 = [(GKTurnBasedMatchmakerExtensionViewController *)self turnBasedViewController];
    [turnBasedViewController3 setShowExistingMatches:showExistingMatches];

    showPlay = self->_showPlay;
    turnBasedViewController4 = [(GKTurnBasedMatchmakerExtensionViewController *)self turnBasedViewController];
    [turnBasedViewController4 setShowPlay:showPlay];

    showQuit = self->_showQuit;
    turnBasedViewController5 = [(GKTurnBasedMatchmakerExtensionViewController *)self turnBasedViewController];
    [turnBasedViewController5 setShowQuit:showQuit];

    v16.receiver = self;
    v16.super_class = GKTurnBasedMatchmakerExtensionViewController;
    [(GKTurnBasedMatchmakerExtensionViewController *)&v16 constructContentViewController];
  }
}

- (void)messageFromClient:(id)client
{
  clientCopy = client;
  v5 = GKExtensionProtocolSecureCodedClasses();
  v16 = 0;
  v6 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v5 fromData:clientCopy error:&v16];
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
  integerValue = [v10 integerValue];

  v12 = [v6 objectForKeyedSubscript:GKExtensionMessageParamKey];
  v13 = v12;
  if (integerValue <= 27)
  {
    if (integerValue == 16)
    {
      -[GKTurnBasedMatchmakerExtensionViewController setShowPlay:](self, "setShowPlay:", [v12 BOOLValue]);
      goto LABEL_18;
    }

    if (integerValue == 17)
    {
      -[GKTurnBasedMatchmakerExtensionViewController setShowQuit:](self, "setShowQuit:", [v12 BOOLValue]);
      goto LABEL_18;
    }

LABEL_17:
    v15.receiver = self;
    v15.super_class = GKTurnBasedMatchmakerExtensionViewController;
    [(GKTurnBasedMatchmakerExtensionViewController *)&v15 messageFromClient:clientCopy];
    goto LABEL_18;
  }

  if (integerValue == 43)
  {
    [(GKTurnBasedMatchmakerExtensionViewController *)self refreshMatches];
    goto LABEL_18;
  }

  if (integerValue == 42)
  {
    -[GKTurnBasedMatchmakerExtensionViewController setShowExistingMatches:](self, "setShowExistingMatches:", [v12 BOOLValue]);
    goto LABEL_18;
  }

  if (integerValue != 28)
  {
    goto LABEL_17;
  }

  v14 = [[GKMatchRequest alloc] initWithInternalRepresentation:v12];
  [(GKTurnBasedMatchmakerExtensionViewController *)self setMatchRequest:v14];

LABEL_18:
}

- (void)refreshMatches
{
  turnBasedViewController = [(GKTurnBasedMatchmakerExtensionViewController *)self turnBasedViewController];
  [turnBasedViewController setNeedsReload];
}

- (id)hostObjectProxy
{
  extensionContext = [(GKTurnBasedMatchmakerExtensionViewController *)self extensionContext];
  _auxiliaryConnection = [extensionContext _auxiliaryConnection];
  v4 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&stru_100004190];

  return v4;
}

- (void)finishWithTurnBasedMatch:(id)match
{
  v7[0] = &off_1000041F8;
  v6[0] = GKExtensionMessageCommandKey;
  v6[1] = GKExtensionMessageParamKey;
  internal = [match internal];
  v7[1] = internal;
  v5 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(GKTurnBasedMatchmakerExtensionViewController *)self sendMessageToClient:v5];
}

- (void)quitTurnBasedMatch:(id)match
{
  v7[0] = &off_100004210;
  v6[0] = GKExtensionMessageCommandKey;
  v6[1] = GKExtensionMessageParamKey;
  internal = [match internal];
  v7[1] = internal;
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

- (void)turnBasedViewController:(id)controller didFailWithError:(id)error
{
  errorCopy = error;
  v5 = [NSMutableDictionary dictionaryWithObjectsAndKeys:&off_100004228, GKExtensionMessageCommandKey, 0];
  if (errorCopy)
  {
    [v5 setObject:errorCopy forKeyedSubscript:GKExtensionMessageParamKey];
  }

  [(GKTurnBasedMatchmakerExtensionViewController *)self sendMessageToClient:v5];
}

- (void)turnBasedViewController:(id)controller didFindMatch:(id)match
{
  v8[0] = &off_1000041F8;
  v7[0] = GKExtensionMessageCommandKey;
  v7[1] = GKExtensionMessageParamKey;
  internal = [match internal];
  v8[1] = internal;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  [(GKTurnBasedMatchmakerExtensionViewController *)self sendMessageToClient:v6];
}

- (void)turnBasedViewController:(id)controller playerQuitForMatch:(id)match
{
  v8[0] = &off_100004210;
  v7[0] = GKExtensionMessageCommandKey;
  v7[1] = GKExtensionMessageParamKey;
  internal = [match internal];
  v8[1] = internal;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  [(GKTurnBasedMatchmakerExtensionViewController *)self sendMessageToClient:v6];
}

@end
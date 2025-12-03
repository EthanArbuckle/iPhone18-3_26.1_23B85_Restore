@interface GKChallengeIssueExtensionViewController
- (BOOL)_useBackdropViewForWindowBackground;
- (GKChallengeIssueExtensionViewController)initWithCoder:(id)coder;
- (id)hostObjectProxy;
- (void)constructContentViewController;
- (void)setInitialState:(id)state withReply:(id)reply;
@end

@implementation GKChallengeIssueExtensionViewController

- (GKChallengeIssueExtensionViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = GKChallengeIssueExtensionViewController;
  v3 = [(GKChallengeIssueExtensionViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(GKChallengeIssueExtensionViewController *)v3 setAlwaysShowDoneButton:0];
    [(GKChallengeIssueExtensionViewController *)v4 setForcePicker:0];
  }

  return v4;
}

- (void)setInitialState:(id)state withReply:(id)reply
{
  v6 = GKExtensionItemChallengeInternalKey;
  replyCopy = reply;
  stateCopy = state;
  v9 = [stateCopy objectForKeyedSubscript:v6];
  v10 = [GKChallenge challengeForInternalRepresentation:v9];
  [(GKChallengeIssueExtensionViewController *)self setChallenge:v10];

  v11 = [stateCopy objectForKeyedSubscript:GKExtensionItemMessageKey];
  [(GKChallengeIssueExtensionViewController *)self setDefaultMessage:v11];

  v12 = [stateCopy objectForKeyedSubscript:GKExtensionItemForcePickerKey];
  -[GKChallengeIssueExtensionViewController setForcePicker:](self, "setForcePicker:", [v12 BOOLValue]);

  v13 = [stateCopy objectForKeyedSubscript:GKExtensionItemPlayerInternalsKey];
  v14 = [v13 _gkMapWithBlock:&stru_1000041A8];
  [(GKChallengeIssueExtensionViewController *)self setPlayers:v14];

  v15.receiver = self;
  v15.super_class = GKChallengeIssueExtensionViewController;
  [(GKChallengeIssueExtensionViewController *)&v15 setInitialState:stateCopy withReply:replyCopy];
}

- (void)constructContentViewController
{
  v3 = objc_alloc_init(UIViewController);
  [(GKChallengeIssueExtensionViewController *)self setContentViewController:v3];

  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_1000011B8;
  v10[4] = sub_1000011C8;
  selfCopy = self;
  challenge = selfCopy->_challenge;
  players = selfCopy->_players;
  defaultMessage = selfCopy->_defaultMessage;
  forcePicker = selfCopy->_forcePicker;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000011D0;
  v9[3] = &unk_1000041D0;
  v9[4] = selfCopy;
  v9[5] = v10;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001274;
  v8[3] = &unk_100004238;
  v8[4] = v10;
  [GKChallengeComposeController composeAndSendFlowForChallenge:challenge selectPlayers:players defaultMessage:defaultMessage forcePicker:forcePicker readyHandler:v9 completionHandler:v8];
  _Block_object_dispose(v10, 8);
}

- (BOOL)_useBackdropViewForWindowBackground
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v5 = +[GKGame currentGame];
    v4 = [v5 isGameCenter] ^ 1;
  }

  return v4;
}

- (id)hostObjectProxy
{
  extensionContext = [(GKChallengeIssueExtensionViewController *)self extensionContext];
  _auxiliaryConnection = [extensionContext _auxiliaryConnection];
  v6 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&stru_100004278];

  if (!v6)
  {
    sub_100001664(a2, self);
  }

  return v6;
}

@end
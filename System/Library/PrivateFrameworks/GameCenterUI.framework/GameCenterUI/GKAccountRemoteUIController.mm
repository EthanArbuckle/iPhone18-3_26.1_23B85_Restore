@interface GKAccountRemoteUIController
+ (void)accountRemoteUIControllerForPlayer:(id)player mode:(int64_t)mode completionHandler:(id)handler;
+ (void)accountRemoteUIControllerForPlayer:(id)player mode:(int64_t)mode url:(id)url postBody:(id)body completionHandler:(id)handler;
- (GKAccountRemoteUIController)initWithMode:(int64_t)mode;
- (GKAccountRemoteUIController)initWithMode:(int64_t)mode player:(id)player;
- (id)bagKey;
- (id)fallbackURL;
- (id)postBodyForInitialLoad;
- (void)fireCompletionHandler;
- (void)takeValuesFromClientInfo:(id)info withCompletionHandler:(id)handler;
- (void)updatePostbackDictionary:(id)dictionary withHandler:(id)handler;
@end

@implementation GKAccountRemoteUIController

+ (void)accountRemoteUIControllerForPlayer:(id)player mode:(int64_t)mode completionHandler:(id)handler
{
  handlerCopy = handler;
  playerCopy = player;
  [objc_opt_class() accountRemoteUIControllerForPlayer:playerCopy mode:mode url:0 postBody:0 completionHandler:handlerCopy];
}

+ (void)accountRemoteUIControllerForPlayer:(id)player mode:(int64_t)mode url:(id)url postBody:(id)body completionHandler:(id)handler
{
  playerCopy = player;
  urlCopy = url;
  bodyCopy = body;
  handlerCopy = handler;
  if (handlerCopy)
  {
    localPlayer = [MEMORY[0x277D0C138] localPlayer];
    [localPlayer setInsideAuthenticatorInvocation:1];

    v16 = MEMORY[0x277D0C020];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKAccountRemoteUIController.m", 45, "+[GKAccountRemoteUIController accountRemoteUIControllerForPlayer:mode:url:postBody:completionHandler:]"];
    v18 = [v16 dispatchGroupWithName:v17];

    v19 = [[GKAccountRemoteUIController alloc] initWithMode:mode player:playerCopy];
    v20 = v19;
    if (urlCopy)
    {
      [(GKAccountRemoteUIController *)v19 setUrl:urlCopy];
      if (bodyCopy)
      {
        [(GKAccountRemoteUIController *)v20 setPostBody:bodyCopy];
      }
    }

    else
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __102__GKAccountRemoteUIController_accountRemoteUIControllerForPlayer_mode_url_postBody_completionHandler___block_invoke;
      v26[3] = &unk_279669A20;
      v27 = v19;
      v28 = playerCopy;
      [v18 perform:v26];
    }

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __102__GKAccountRemoteUIController_accountRemoteUIControllerForPlayer_mode_url_postBody_completionHandler___block_invoke_2;
    v22[3] = &unk_279669A48;
    v23 = v20;
    v25 = handlerCopy;
    v24 = playerCopy;
    v21 = v20;
    [v18 notifyOnMainQueueWithBlock:v22];
  }
}

void __102__GKAccountRemoteUIController_accountRemoteUIControllerForPlayer_mode_url_postBody_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 bagKey];
  [v3 configureFromBagKey:v5 player:*(a1 + 40) withCompletionHandler:v4];
}

void __102__GKAccountRemoteUIController_accountRemoteUIControllerForPlayer_mode_url_postBody_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  if (v2)
  {
    v3 = *(a1 + 48);
    v6 = [*(a1 + 32) error];
    (*(v3 + 16))(v3, 0, v6);
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __102__GKAccountRemoteUIController_accountRemoteUIControllerForPlayer_mode_url_postBody_completionHandler___block_invoke_3;
    v7[3] = &unk_279669A70;
    v9 = *(a1 + 48);
    v8 = *(a1 + 32);
    [v4 loadInitialRemoteUIForPlayer:v5 handler:v7];
  }
}

void __102__GKAccountRemoteUIController_accountRemoteUIControllerForPlayer_mode_url_postBody_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__GKAccountRemoteUIController_accountRemoteUIControllerForPlayer_mode_url_postBody_completionHandler___block_invoke_4;
  block[3] = &unk_279669A48;
  v6 = v3;
  v8 = *(a1 + 40);
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __102__GKAccountRemoteUIController_accountRemoteUIControllerForPlayer_mode_url_postBody_completionHandler___block_invoke_4(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  if (v2)
  {
    return (*(v3 + 16))(v3, 0);
  }

  else
  {
    return (*(v3 + 16))(v3, a1[5]);
  }
}

- (GKAccountRemoteUIController)initWithMode:(int64_t)mode
{
  v8.receiver = self;
  v8.super_class = GKAccountRemoteUIController;
  v4 = [(GKRemoteUIController *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_mode = mode;
    v6 = v4;
  }

  return v5;
}

- (GKAccountRemoteUIController)initWithMode:(int64_t)mode player:(id)player
{
  playerCopy = player;
  v11.receiver = self;
  v11.super_class = GKAccountRemoteUIController;
  v7 = [(GKRemoteUIController *)&v11 init];
  v8 = v7;
  if (v7)
  {
    [(GKRemoteUIController *)v7 setPlayerForRemoteUI:playerCopy];
    v8->_mode = mode;
    v9 = v8;
  }

  return v8;
}

- (void)fireCompletionHandler
{
  error = [(GKRemoteUIController *)self error];
  if (error || ![(GKAccountRemoteUIController *)self authenticatePlayerOnCompletion])
  {
  }

  else if ([(GKAccountRemoteUIController *)self mode]!= 3)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __52__GKAccountRemoteUIController_fireCompletionHandler__block_invoke;
    v4[3] = &unk_2796699A8;
    v4[4] = self;
    [(GKRemoteUIController *)self updateAccountAndMarkComplete:1 completionHandler:v4];
    return;
  }

  v5.receiver = self;
  v5.super_class = GKAccountRemoteUIController;
  [(GKRemoteUIController *)&v5 fireCompletionHandler];
}

void __52__GKAccountRemoteUIController_fireCompletionHandler__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D0C138] localPlayer];
  [v2 setInsideAuthenticatorInvocation:0];
  if ([*(a1 + 32) mode] == 1 && objc_msgSend(v2, "isPurpleBuddyAccount"))
  {
    [v2 setNewToGameCenter:1];
  }

  v3.receiver = *(a1 + 32);
  v3.super_class = GKAccountRemoteUIController;
  objc_msgSendSuper2(&v3, sel_fireCompletionHandler);
}

- (id)fallbackURL
{
  if ([(GKAccountRemoteUIController *)self mode]== 3)
  {
    v2 = 0;
  }

  else
  {
    v3 = GKGameCenterUIFrameworkBundle();
    v2 = [v3 URLForResource:@"GameCenterMissingUI" withExtension:@"xml"];
  }

  return v2;
}

- (id)bagKey
{
  mode = [(GKAccountRemoteUIController *)self mode];
  if ((mode - 1) <= 2)
  {
    mode = **(&unk_279669A90 + (mode - 1));
  }

  return mode;
}

- (id)postBodyForInitialLoad
{
  v16.receiver = self;
  v16.super_class = GKAccountRemoteUIController;
  postBodyForInitialLoad = [(GKRemoteUIController *)&v16 postBodyForInitialLoad];
  authToken = [(GKRemoteUIController *)self authToken];

  if (authToken)
  {
    authToken2 = [(GKRemoteUIController *)self authToken];
    [postBodyForInitialLoad setObject:authToken2 forKeyedSubscript:@"authToken"];
  }

  pushToken = [(GKRemoteUIController *)self pushToken];

  if (pushToken)
  {
    pushToken2 = [(GKRemoteUIController *)self pushToken];
    [postBodyForInitialLoad setObject:pushToken2 forKeyedSubscript:@"pushToken"];
  }

  appleID = [(GKRemoteUIController *)self appleID];

  if (appleID)
  {
    altDSID = [(GKRemoteUIController *)self altDSID];
    if (altDSID)
    {
      [postBodyForInitialLoad setObject:altDSID forKeyedSubscript:@"appleID"];
    }

    else
    {
      appleID2 = [(GKRemoteUIController *)self appleID];
      [postBodyForInitialLoad setObject:appleID2 forKeyedSubscript:@"appleID"];
    }
  }

  playerID = [(GKRemoteUIController *)self playerID];

  if (playerID)
  {
    playerID2 = [(GKRemoteUIController *)self playerID];
    [postBodyForInitialLoad setObject:playerID2 forKeyedSubscript:@"playerID"];
  }

  availableExternalServices = [(GKAccountRemoteUIController *)self availableExternalServices];

  if (availableExternalServices)
  {
    availableExternalServices2 = [(GKAccountRemoteUIController *)self availableExternalServices];
    [postBodyForInitialLoad setObject:availableExternalServices2 forKeyedSubscript:@"availableExternalServices"];
  }

  if (self->_postBody)
  {
    [postBodyForInitialLoad addEntriesFromDictionary:?];
  }

  return postBodyForInitialLoad;
}

- (void)takeValuesFromClientInfo:(id)info withCompletionHandler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  v8 = [infoCopy objectForKeyedSubscript:@"finished"];
  v9 = [infoCopy objectForKeyedSubscript:@"isAuthenticated"];
  v10 = v9;
  if (v9)
  {
    -[GKAccountRemoteUIController setAuthenticatePlayerOnCompletion:](self, "setAuthenticatePlayerOnCompletion:", [v9 BOOLValue]);
  }

  if (v8)
  {
    -[GKAccountRemoteUIController setAuthenticatePlayerOnCompletion:](self, "setAuthenticatePlayerOnCompletion:", [v8 BOOLValue]);
  }

  if ([(GKAccountRemoteUIController *)self mode]== 1)
  {
    v11 = [infoCopy objectForKeyedSubscript:@"alias"];

    if (!v11)
    {
      [(GKAccountRemoteUIController *)self setAuthenticatePlayerOnCompletion:0];
    }
  }

  v12.receiver = self;
  v12.super_class = GKAccountRemoteUIController;
  [(GKRemoteUIController *)&v12 takeValuesFromClientInfo:infoCopy withCompletionHandler:handlerCopy];
}

- (void)updatePostbackDictionary:(id)dictionary withHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler);
  }
}

@end
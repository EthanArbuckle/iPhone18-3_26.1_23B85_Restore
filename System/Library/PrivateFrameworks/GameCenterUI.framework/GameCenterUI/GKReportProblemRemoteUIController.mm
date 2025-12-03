@interface GKReportProblemRemoteUIController
+ (id)controllerForProblemPlayer:(id)player completionHandler:(id)handler;
- (GKReportProblemRemoteUIController)initWithProblemPlayer:(id)player;
- (id)fallbackURL;
- (id)postBodyForInitialLoad;
- (int)preferredLayoutStyle;
@end

@implementation GKReportProblemRemoteUIController

+ (id)controllerForProblemPlayer:(id)player completionHandler:(id)handler
{
  playerCopy = player;
  handlerCopy = handler;
  if (!playerCopy)
  {
    [GKReportProblemRemoteUIController controllerForProblemPlayer:a2 completionHandler:self];
  }

  internal = [playerCopy internal];
  playerID = [internal playerID];

  if (!playerID)
  {
    [GKReportProblemRemoteUIController controllerForProblemPlayer:a2 completionHandler:self];
    if (!handlerCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (handlerCopy)
  {
LABEL_5:
    v13 = [[GKReportProblemRemoteUIController alloc] initWithProblemPlayer:playerCopy];
    v14 = handlerCopy;
    v11 = v13;
    gk_dispatch_as_group();
  }

LABEL_6:

  return 0;
}

void __82__GKReportProblemRemoteUIController_controllerForProblemPlayer_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __82__GKReportProblemRemoteUIController_controllerForProblemPlayer_completionHandler___block_invoke_2;
  v12 = &unk_27966A148;
  v13 = *(a1 + 32);
  v4 = a2;
  gk_dispatch_group_do();
  v5 = dispatch_queue_create(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__GKReportProblemRemoteUIController_controllerForProblemPlayer_completionHandler___block_invoke_3;
  block[3] = &unk_27966A958;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  dispatch_group_notify(v4, v5, block);
}

void __82__GKReportProblemRemoteUIController_controllerForProblemPlayer_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 bagKey];
  v4 = [MEMORY[0x277D0C138] localPlayer];
  [v2 configureFromBagKey:v5 player:v4 withCompletionHandler:v3];
}

void __82__GKReportProblemRemoteUIController_controllerForProblemPlayer_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  if (v2)
  {
    v3 = *(a1 + 40);
    v5 = [*(a1 + 32) error];
    (*(v3 + 16))(v3, 0, v5);
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __82__GKReportProblemRemoteUIController_controllerForProblemPlayer_completionHandler___block_invoke_4;
    v6[3] = &unk_279669A70;
    v4 = *(a1 + 32);
    v8 = *(a1 + 40);
    v7 = *(a1 + 32);
    [v4 loadInitialRemoteUIWithHandler:v6];
  }
}

uint64_t __82__GKReportProblemRemoteUIController_controllerForProblemPlayer_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    return (*(v3 + 16))(v3, 0, a2);
  }

  else
  {
    return (*(v3 + 16))(v3, *(a1 + 32));
  }
}

- (GKReportProblemRemoteUIController)initWithProblemPlayer:(id)player
{
  playerCopy = player;
  v10.receiver = self;
  v10.super_class = GKReportProblemRemoteUIController;
  v6 = [(GKRemoteUIController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_problemPlayer, player);
    v8 = v7;
  }

  return v7;
}

- (int)preferredLayoutStyle
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return userInterfaceIdiom == 1;
}

- (id)fallbackURL
{
  v2 = GKGameCenterUIFrameworkBundle();
  v3 = [v2 URLForResource:@"GameCenterMissingUI" withExtension:@"xml"];

  return v3;
}

- (id)postBodyForInitialLoad
{
  v15.receiver = self;
  v15.super_class = GKReportProblemRemoteUIController;
  postBodyForInitialLoad = [(GKRemoteUIController *)&v15 postBodyForInitialLoad];
  playerID = [(GKRemoteUIController *)self playerID];

  if (playerID)
  {
    playerID2 = [(GKRemoteUIController *)self playerID];
    [postBodyForInitialLoad setObject:playerID2 forKeyedSubscript:@"playerID"];
  }

  authToken = [(GKRemoteUIController *)self authToken];

  if (authToken)
  {
    authToken2 = [(GKRemoteUIController *)self authToken];
    [postBodyForInitialLoad setObject:authToken2 forKeyedSubscript:@"authToken"];
  }

  problemPlayer = [(GKReportProblemRemoteUIController *)self problemPlayer];
  internal = [problemPlayer internal];
  playerID3 = [internal playerID];

  if (playerID3)
  {
    problemPlayer2 = [(GKReportProblemRemoteUIController *)self problemPlayer];
    internal2 = [problemPlayer2 internal];
    playerID4 = [internal2 playerID];
    [postBodyForInitialLoad setObject:playerID4 forKeyedSubscript:@"problemPlayerID"];
  }

  return postBodyForInitialLoad;
}

+ (void)controllerForProblemPlayer:(uint64_t)a1 completionHandler:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GKReportProblemRemoteUIController.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"problemPlayer!=nil"}];
}

+ (void)controllerForProblemPlayer:(uint64_t)a1 completionHandler:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GKReportProblemRemoteUIController.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"problemPlayer.internal.playerID!=nil"}];
}

@end
@interface GKReportProblemRemoteUIController
+ (id)controllerForProblemPlayer:(id)a3 completionHandler:(id)a4;
- (GKReportProblemRemoteUIController)initWithProblemPlayer:(id)a3;
- (id)fallbackURL;
- (id)postBodyForInitialLoad;
- (int)preferredLayoutStyle;
@end

@implementation GKReportProblemRemoteUIController

+ (id)controllerForProblemPlayer:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [GKReportProblemRemoteUIController controllerForProblemPlayer:a2 completionHandler:a1];
  }

  v9 = [v7 internal];
  v10 = [v9 playerID];

  if (!v10)
  {
    [GKReportProblemRemoteUIController controllerForProblemPlayer:a2 completionHandler:a1];
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v8)
  {
LABEL_5:
    v13 = [[GKReportProblemRemoteUIController alloc] initWithProblemPlayer:v7];
    v14 = v8;
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

- (GKReportProblemRemoteUIController)initWithProblemPlayer:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = GKReportProblemRemoteUIController;
  v6 = [(GKRemoteUIController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_problemPlayer, a3);
    v8 = v7;
  }

  return v7;
}

- (int)preferredLayoutStyle
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  return v3 == 1;
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
  v3 = [(GKRemoteUIController *)&v15 postBodyForInitialLoad];
  v4 = [(GKRemoteUIController *)self playerID];

  if (v4)
  {
    v5 = [(GKRemoteUIController *)self playerID];
    [v3 setObject:v5 forKeyedSubscript:@"playerID"];
  }

  v6 = [(GKRemoteUIController *)self authToken];

  if (v6)
  {
    v7 = [(GKRemoteUIController *)self authToken];
    [v3 setObject:v7 forKeyedSubscript:@"authToken"];
  }

  v8 = [(GKReportProblemRemoteUIController *)self problemPlayer];
  v9 = [v8 internal];
  v10 = [v9 playerID];

  if (v10)
  {
    v11 = [(GKReportProblemRemoteUIController *)self problemPlayer];
    v12 = [v11 internal];
    v13 = [v12 playerID];
    [v3 setObject:v13 forKeyedSubscript:@"problemPlayerID"];
  }

  return v3;
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
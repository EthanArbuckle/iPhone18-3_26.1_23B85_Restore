@interface GKDashboardHostViewController
+ (id)dashboardExtension;
- (GKDashboardHostViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (GKGameCenterViewController)delegate;
- (id)extensionObjectProxy;
- (void)extensionIsCanceling;
- (void)extensionIsFinishing;
- (void)finishWithMatch:(id)a3;
- (void)hostDidChangeLeaderboardIdentifier:(id)a3;
- (void)hostDidChangeLeaderboardPlayerScope:(id)a3;
- (void)hostDidChangeLeaderboardTimeScope:(id)a3;
- (void)hostDidChangeViewState:(id)a3;
- (void)hostSupportsShowingPlayForChallenge:(BOOL)a3;
- (void)hostSupportsShowingPlayForTurnBasedMatch:(BOOL)a3;
- (void)hostSupportsShowingQuitForTurnBasedMatch:(BOOL)a3;
- (void)messageFromExtension:(id)a3;
- (void)playPressedForChallenge:(id)a3;
- (void)playerQuitMatch:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation GKDashboardHostViewController

+ (id)dashboardExtension
{
  if (dashboardExtension_onceToken != -1)
  {
    +[GKDashboardHostViewController dashboardExtension];
  }

  v3 = dashboardExtension_extension;

  return v3;
}

void __51__GKDashboardHostViewController_dashboardExtension__block_invoke()
{
  v5 = 0;
  v0 = [MEMORY[0x277CCA9C8] _gkExtensionWithIdentifier:@"com.apple.GameCenterUI.GameCenterDashboardExtension" error:&v5];
  v1 = v5;
  v2 = dashboardExtension_extension;
  dashboardExtension_extension = v0;

  if (v1)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v3 = GKOSLoggers();
    }

    v4 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __51__GKDashboardHostViewController_dashboardExtension__block_invoke_cold_1(v1, v4);
    }
  }
}

- (GKDashboardHostViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = GKDashboardHostViewController;
  v4 = [(GKDashboardHostViewController *)&v8 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D82BB8]);
    dashboardAssetController = v4->_dashboardAssetController;
    v4->_dashboardAssetController = v5;
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277D0C138] local];
  [v5 hideAccessPoint];

  v6.receiver = self;
  v6.super_class = GKDashboardHostViewController;
  [(GKExtensionRemoteViewController *)&v6 viewWillAppear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = GKDashboardHostViewController;
  [(GKExtensionRemoteViewController *)&v4 viewDidDisappear:a3];
  v3 = [MEMORY[0x277D0C138] local];
  [v3 showAccessPoint];
}

- (id)extensionObjectProxy
{
  v3 = [(GKExtensionRemoteViewController *)self extension];
  v4 = [(GKExtensionRemoteViewController *)self requestIdentifier];
  v5 = [v3 _extensionContextForUUID:v4];

  v6 = [v5 _auxiliaryConnection];
  v7 = [v6 remoteObjectProxyWithErrorHandler:&__block_literal_global_9_0];

  return v7;
}

void __53__GKDashboardHostViewController_extensionObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!*MEMORY[0x277D0C2A0])
  {
    v3 = GKOSLoggers();
  }

  v4 = *MEMORY[0x277D0C2A8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    __58__GKChallengeIssueHostViewController_extensionObjectProxy__block_invoke_cold_1(v4, v2);
  }
}

- (void)hostDidChangeViewState:(id)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"MessageCommandKey";
  v7[1] = @"MessageParamKey";
  v8[0] = &unk_2861890A8;
  v8[1] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v8 forKeys:v7 count:2];

  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v6];
}

- (void)hostDidChangeLeaderboardIdentifier:(id)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"MessageCommandKey";
  v7[1] = @"MessageParamKey";
  v8[0] = &unk_2861890C0;
  v8[1] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v8 forKeys:v7 count:2];

  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v6];
}

- (void)hostDidChangeLeaderboardTimeScope:(id)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"MessageCommandKey";
  v7[1] = @"MessageParamKey";
  v8[0] = &unk_2861890D8;
  v8[1] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v8 forKeys:v7 count:2];

  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v6];
}

- (void)hostDidChangeLeaderboardPlayerScope:(id)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"MessageCommandKey";
  v7[1] = @"MessageParamKey";
  v8[0] = &unk_2861890F0;
  v8[1] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v8 forKeys:v7 count:2];

  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v6];
}

- (void)hostSupportsShowingPlayForChallenge:(BOOL)a3
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"MessageCommandKey";
  v6[1] = @"MessageParamKey";
  v7[0] = &unk_286189108;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v5];
}

- (void)hostSupportsShowingPlayForTurnBasedMatch:(BOOL)a3
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"MessageCommandKey";
  v6[1] = @"MessageParamKey";
  v7[0] = &unk_286189120;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v5];
}

- (void)hostSupportsShowingQuitForTurnBasedMatch:(BOOL)a3
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"MessageCommandKey";
  v6[1] = @"MessageParamKey";
  v7[0] = &unk_286189138;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v5];
}

- (void)messageFromExtension:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CCAAC8];
  v6 = GKExtensionProtocolSecureCodedClasses();
  v16 = 0;
  v7 = [v5 unarchivedObjectOfClasses:v6 fromData:v4 error:&v16];
  v8 = v16;

  if (v8)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v9 = GKOSLoggers();
    }

    v10 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      [(GKDashboardHostViewController *)v8 messageFromExtension:v10];
    }
  }

  v11 = [v7 objectForKeyedSubscript:@"MessageCommandKey"];
  v12 = [v11 integerValue];

  v13 = [v7 objectForKeyedSubscript:@"MessageParamKey"];
  if (v12 <= 7)
  {
    switch(v12)
    {
      case 5:
        v14 = [(GKDashboardHostViewController *)self delegate];
        [v14 setViewStateFromExtension:{objc_msgSend(v13, "integerValue")}];
        goto LABEL_23;
      case 6:
        v14 = [(GKDashboardHostViewController *)self delegate];
        [v14 setLeaderboardIdentifierFromExtension:v13];
        goto LABEL_23;
      case 7:
        v14 = [(GKDashboardHostViewController *)self delegate];
        [v14 setLeaderboardTimeScopeFromExtension:{objc_msgSend(v13, "integerValue")}];
LABEL_23:

        goto LABEL_24;
    }

LABEL_19:
    v15.receiver = self;
    v15.super_class = GKDashboardHostViewController;
    [(GKExtensionRemoteViewController *)&v15 messageFromExtension:v4];
    goto LABEL_24;
  }

  if (v12 > 10)
  {
    if (v12 == 11)
    {
      [(GKDashboardHostViewController *)self playerQuitMatch:v13];
      goto LABEL_24;
    }

    if (v12 == 50)
    {
      v14 = [(GKDashboardHostViewController *)self delegate];
      [v14 setLeaderboardPlayerScopeFromExtension:{objc_msgSend(v13, "integerValue")}];
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  if (v12 == 8)
  {
    [(GKDashboardHostViewController *)self playPressedForChallenge:v13];
    goto LABEL_24;
  }

  if (v12 != 10)
  {
    goto LABEL_19;
  }

  [(GKDashboardHostViewController *)self finishWithMatch:v13];
LABEL_24:
}

- (void)playPressedForChallenge:(id)a3
{
  v7 = [MEMORY[0x277D0BFF0] challengeForInternalRepresentation:a3];
  v3 = [MEMORY[0x277D0BFF8] challengeEventHandler];
  v4 = [v3 delegate];

  if (objc_opt_respondsToSelector())
  {
    [v4 localPlayerDidSelectChallenge:v7];
  }

  v5 = [MEMORY[0x277D0C138] localPlayer];
  v6 = [v5 eventEmitter];
  [v6 player:v5 wantsToPlayChallenge:v7];
}

- (void)finishWithMatch:(id)a3
{
  v3 = MEMORY[0x277D0C138];
  v4 = a3;
  v7 = [v3 localPlayer];
  v5 = [v7 eventEmitter];
  v6 = [objc_alloc(MEMORY[0x277D0C238]) initWithInternalRepresentation:v4];

  [v5 player:v7 receivedTurnEventForMatch:v6 didBecomeActive:1];
}

- (void)playerQuitMatch:(id)a3
{
  v3 = MEMORY[0x277D0C138];
  v4 = a3;
  v7 = [v3 localPlayer];
  v5 = [v7 eventEmitter];
  v6 = [objc_alloc(MEMORY[0x277D0C238]) initWithInternalRepresentation:v4];

  [v5 player:v7 wantsToQuitMatch:v6];
}

- (void)extensionIsCanceling
{
  v3 = [(GKDashboardHostViewController *)self delegate];
  [v3 notifyDelegateOnWillFinish];

  v4.receiver = self;
  v4.super_class = GKDashboardHostViewController;
  [(GKExtensionRemoteViewController *)&v4 extensionIsCanceling];
}

- (void)extensionIsFinishing
{
  v3 = [(GKDashboardHostViewController *)self delegate];
  [v3 notifyDelegateOnWillFinish];

  v4.receiver = self;
  v4.super_class = GKDashboardHostViewController;
  [(GKExtensionRemoteViewController *)&v4 extensionIsFinishing];
}

- (GKGameCenterViewController)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateWeak);

  return WeakRetained;
}

void __51__GKDashboardHostViewController_dashboardExtension__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24DE53000, a2, OS_LOG_TYPE_ERROR, "Error loading Game Center dashboard extension, %@", &v2, 0xCu);
}

- (void)messageFromExtension:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24DE53000, a2, OS_LOG_TYPE_ERROR, "error while decoding messageFromExtension in GKDashboardHostViewController:%@", &v2, 0xCu);
}

@end
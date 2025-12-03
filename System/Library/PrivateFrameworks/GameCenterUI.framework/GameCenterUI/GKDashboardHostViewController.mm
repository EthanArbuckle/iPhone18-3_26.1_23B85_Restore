@interface GKDashboardHostViewController
+ (id)dashboardExtension;
- (GKDashboardHostViewController)initWithNibName:(id)name bundle:(id)bundle;
- (GKGameCenterViewController)delegate;
- (id)extensionObjectProxy;
- (void)extensionIsCanceling;
- (void)extensionIsFinishing;
- (void)finishWithMatch:(id)match;
- (void)hostDidChangeLeaderboardIdentifier:(id)identifier;
- (void)hostDidChangeLeaderboardPlayerScope:(id)scope;
- (void)hostDidChangeLeaderboardTimeScope:(id)scope;
- (void)hostDidChangeViewState:(id)state;
- (void)hostSupportsShowingPlayForChallenge:(BOOL)challenge;
- (void)hostSupportsShowingPlayForTurnBasedMatch:(BOOL)match;
- (void)hostSupportsShowingQuitForTurnBasedMatch:(BOOL)match;
- (void)messageFromExtension:(id)extension;
- (void)playPressedForChallenge:(id)challenge;
- (void)playerQuitMatch:(id)match;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
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

- (GKDashboardHostViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = GKDashboardHostViewController;
  v4 = [(GKDashboardHostViewController *)&v8 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D82BB8]);
    dashboardAssetController = v4->_dashboardAssetController;
    v4->_dashboardAssetController = v5;
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  local = [MEMORY[0x277D0C138] local];
  [local hideAccessPoint];

  v6.receiver = self;
  v6.super_class = GKDashboardHostViewController;
  [(GKExtensionRemoteViewController *)&v6 viewWillAppear:appearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = GKDashboardHostViewController;
  [(GKExtensionRemoteViewController *)&v4 viewDidDisappear:disappear];
  local = [MEMORY[0x277D0C138] local];
  [local showAccessPoint];
}

- (id)extensionObjectProxy
{
  extension = [(GKExtensionRemoteViewController *)self extension];
  requestIdentifier = [(GKExtensionRemoteViewController *)self requestIdentifier];
  v5 = [extension _extensionContextForUUID:requestIdentifier];

  _auxiliaryConnection = [v5 _auxiliaryConnection];
  v7 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_9_0];

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

- (void)hostDidChangeViewState:(id)state
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"MessageCommandKey";
  v7[1] = @"MessageParamKey";
  v8[0] = &unk_2861890A8;
  v8[1] = state;
  v4 = MEMORY[0x277CBEAC0];
  stateCopy = state;
  v6 = [v4 dictionaryWithObjects:v8 forKeys:v7 count:2];

  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v6];
}

- (void)hostDidChangeLeaderboardIdentifier:(id)identifier
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"MessageCommandKey";
  v7[1] = @"MessageParamKey";
  v8[0] = &unk_2861890C0;
  v8[1] = identifier;
  v4 = MEMORY[0x277CBEAC0];
  identifierCopy = identifier;
  v6 = [v4 dictionaryWithObjects:v8 forKeys:v7 count:2];

  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v6];
}

- (void)hostDidChangeLeaderboardTimeScope:(id)scope
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"MessageCommandKey";
  v7[1] = @"MessageParamKey";
  v8[0] = &unk_2861890D8;
  v8[1] = scope;
  v4 = MEMORY[0x277CBEAC0];
  scopeCopy = scope;
  v6 = [v4 dictionaryWithObjects:v8 forKeys:v7 count:2];

  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v6];
}

- (void)hostDidChangeLeaderboardPlayerScope:(id)scope
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"MessageCommandKey";
  v7[1] = @"MessageParamKey";
  v8[0] = &unk_2861890F0;
  v8[1] = scope;
  v4 = MEMORY[0x277CBEAC0];
  scopeCopy = scope;
  v6 = [v4 dictionaryWithObjects:v8 forKeys:v7 count:2];

  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v6];
}

- (void)hostSupportsShowingPlayForChallenge:(BOOL)challenge
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"MessageCommandKey";
  v6[1] = @"MessageParamKey";
  v7[0] = &unk_286189108;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:challenge];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v5];
}

- (void)hostSupportsShowingPlayForTurnBasedMatch:(BOOL)match
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"MessageCommandKey";
  v6[1] = @"MessageParamKey";
  v7[0] = &unk_286189120;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:match];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v5];
}

- (void)hostSupportsShowingQuitForTurnBasedMatch:(BOOL)match
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"MessageCommandKey";
  v6[1] = @"MessageParamKey";
  v7[0] = &unk_286189138;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:match];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v5];
}

- (void)messageFromExtension:(id)extension
{
  extensionCopy = extension;
  v5 = MEMORY[0x277CCAAC8];
  v6 = GKExtensionProtocolSecureCodedClasses();
  v16 = 0;
  v7 = [v5 unarchivedObjectOfClasses:v6 fromData:extensionCopy error:&v16];
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
  integerValue = [v11 integerValue];

  v13 = [v7 objectForKeyedSubscript:@"MessageParamKey"];
  if (integerValue <= 7)
  {
    switch(integerValue)
    {
      case 5:
        delegate = [(GKDashboardHostViewController *)self delegate];
        [delegate setViewStateFromExtension:{objc_msgSend(v13, "integerValue")}];
        goto LABEL_23;
      case 6:
        delegate = [(GKDashboardHostViewController *)self delegate];
        [delegate setLeaderboardIdentifierFromExtension:v13];
        goto LABEL_23;
      case 7:
        delegate = [(GKDashboardHostViewController *)self delegate];
        [delegate setLeaderboardTimeScopeFromExtension:{objc_msgSend(v13, "integerValue")}];
LABEL_23:

        goto LABEL_24;
    }

LABEL_19:
    v15.receiver = self;
    v15.super_class = GKDashboardHostViewController;
    [(GKExtensionRemoteViewController *)&v15 messageFromExtension:extensionCopy];
    goto LABEL_24;
  }

  if (integerValue > 10)
  {
    if (integerValue == 11)
    {
      [(GKDashboardHostViewController *)self playerQuitMatch:v13];
      goto LABEL_24;
    }

    if (integerValue == 50)
    {
      delegate = [(GKDashboardHostViewController *)self delegate];
      [delegate setLeaderboardPlayerScopeFromExtension:{objc_msgSend(v13, "integerValue")}];
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  if (integerValue == 8)
  {
    [(GKDashboardHostViewController *)self playPressedForChallenge:v13];
    goto LABEL_24;
  }

  if (integerValue != 10)
  {
    goto LABEL_19;
  }

  [(GKDashboardHostViewController *)self finishWithMatch:v13];
LABEL_24:
}

- (void)playPressedForChallenge:(id)challenge
{
  v7 = [MEMORY[0x277D0BFF0] challengeForInternalRepresentation:challenge];
  challengeEventHandler = [MEMORY[0x277D0BFF8] challengeEventHandler];
  delegate = [challengeEventHandler delegate];

  if (objc_opt_respondsToSelector())
  {
    [delegate localPlayerDidSelectChallenge:v7];
  }

  localPlayer = [MEMORY[0x277D0C138] localPlayer];
  eventEmitter = [localPlayer eventEmitter];
  [eventEmitter player:localPlayer wantsToPlayChallenge:v7];
}

- (void)finishWithMatch:(id)match
{
  v3 = MEMORY[0x277D0C138];
  matchCopy = match;
  localPlayer = [v3 localPlayer];
  eventEmitter = [localPlayer eventEmitter];
  v6 = [objc_alloc(MEMORY[0x277D0C238]) initWithInternalRepresentation:matchCopy];

  [eventEmitter player:localPlayer receivedTurnEventForMatch:v6 didBecomeActive:1];
}

- (void)playerQuitMatch:(id)match
{
  v3 = MEMORY[0x277D0C138];
  matchCopy = match;
  localPlayer = [v3 localPlayer];
  eventEmitter = [localPlayer eventEmitter];
  v6 = [objc_alloc(MEMORY[0x277D0C238]) initWithInternalRepresentation:matchCopy];

  [eventEmitter player:localPlayer wantsToQuitMatch:v6];
}

- (void)extensionIsCanceling
{
  delegate = [(GKDashboardHostViewController *)self delegate];
  [delegate notifyDelegateOnWillFinish];

  v4.receiver = self;
  v4.super_class = GKDashboardHostViewController;
  [(GKExtensionRemoteViewController *)&v4 extensionIsCanceling];
}

- (void)extensionIsFinishing
{
  delegate = [(GKDashboardHostViewController *)self delegate];
  [delegate notifyDelegateOnWillFinish];

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
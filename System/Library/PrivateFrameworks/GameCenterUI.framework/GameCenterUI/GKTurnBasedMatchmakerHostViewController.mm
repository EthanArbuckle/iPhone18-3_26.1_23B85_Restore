@interface GKTurnBasedMatchmakerHostViewController
+ (id)turnBasedMatchmakerExtension;
- (GKTurnBasedMatchmakerViewController)delegate;
- (id)extensionObjectProxy;
- (void)extensionIsCanceling;
- (void)messageFromExtension:(id)extension;
- (void)refreshMatches;
- (void)setMatchRequestInternal:(id)internal;
- (void)setShowExistingMatches:(BOOL)matches;
- (void)setShowPlay:(BOOL)play;
- (void)setShowQuit:(BOOL)quit;
@end

@implementation GKTurnBasedMatchmakerHostViewController

+ (id)turnBasedMatchmakerExtension
{
  if (turnBasedMatchmakerExtension_onceToken != -1)
  {
    +[GKTurnBasedMatchmakerHostViewController turnBasedMatchmakerExtension];
  }

  v3 = turnBasedMatchmakerExtension_extension;

  return v3;
}

void __71__GKTurnBasedMatchmakerHostViewController_turnBasedMatchmakerExtension__block_invoke()
{
  v5 = 0;
  v0 = [MEMORY[0x277CCA9C8] _gkExtensionWithIdentifier:@"com.apple.GameCenterUI.GameCenterTurnBasedMatchmakerExtension" error:&v5];
  v1 = v5;
  v2 = turnBasedMatchmakerExtension_extension;
  turnBasedMatchmakerExtension_extension = v0;

  if (v1)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v3 = GKOSLoggers();
    }

    v4 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __71__GKTurnBasedMatchmakerHostViewController_turnBasedMatchmakerExtension__block_invoke_cold_1(v1, v4);
    }
  }
}

- (id)extensionObjectProxy
{
  extension = [(GKExtensionRemoteViewController *)self extension];
  requestIdentifier = [(GKExtensionRemoteViewController *)self requestIdentifier];
  v5 = [extension _extensionContextForUUID:requestIdentifier];

  _auxiliaryConnection = [v5 _auxiliaryConnection];
  v7 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_3];

  return v7;
}

void __63__GKTurnBasedMatchmakerHostViewController_extensionObjectProxy__block_invoke(uint64_t a1, void *a2)
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

- (void)setMatchRequestInternal:(id)internal
{
  v8[2] = *MEMORY[0x277D85DE8];
  if (internal)
  {
    v7[0] = @"MessageCommandKey";
    v7[1] = @"MessageParamKey";
    v8[0] = &unk_2861891B0;
    v8[1] = internal;
    v4 = MEMORY[0x277CBEAC0];
    internalCopy = internal;
    v6 = [v4 dictionaryWithObjects:v8 forKeys:v7 count:2];

    [(GKExtensionRemoteViewController *)self sendMessageToExtension:v6];
  }
}

- (void)setShowExistingMatches:(BOOL)matches
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"MessageCommandKey";
  v6[1] = @"MessageParamKey";
  v7[0] = &unk_2861891C8;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:matches];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v5];
}

- (void)setShowPlay:(BOOL)play
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"MessageCommandKey";
  v6[1] = @"MessageParamKey";
  v7[0] = &unk_2861891E0;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:play];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v5];
}

- (void)setShowQuit:(BOOL)quit
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"MessageCommandKey";
  v6[1] = @"MessageParamKey";
  v7[0] = &unk_2861891F8;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:quit];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v5];
}

- (void)refreshMatches
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"MessageCommandKey";
  v5[0] = &unk_286189210;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v3];
}

- (void)messageFromExtension:(id)extension
{
  extensionCopy = extension;
  v5 = MEMORY[0x277CCAAC8];
  v6 = GKExtensionProtocolSecureCodedClasses();
  v18 = 0;
  v7 = [v5 unarchivedObjectOfClasses:v6 fromData:extensionCopy error:&v18];
  v8 = v18;

  if (v8)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v9 = GKOSLoggers();
    }

    v10 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      [(GKTurnBasedMatchmakerHostViewController *)v8 messageFromExtension:v10];
    }
  }

  v11 = [v7 objectForKeyedSubscript:@"MessageCommandKey"];
  integerValue = [v11 integerValue];

  v13 = [v7 objectForKeyedSubscript:@"MessageParamKey"];
  if (integerValue == 19)
  {
    delegate = [(GKTurnBasedMatchmakerHostViewController *)self delegate];
    [delegate finishWithError:v13];
  }

  else
  {
    if (integerValue == 11)
    {
      v14 = [objc_alloc(MEMORY[0x277D0C238]) initWithInternalRepresentation:v13];
      delegate2 = [(GKTurnBasedMatchmakerHostViewController *)self delegate];
      [delegate2 playerQuitMatch:v14];
    }

    else
    {
      if (integerValue != 10)
      {
        v17.receiver = self;
        v17.super_class = GKTurnBasedMatchmakerHostViewController;
        [(GKExtensionRemoteViewController *)&v17 messageFromExtension:extensionCopy];
        goto LABEL_14;
      }

      v14 = [objc_alloc(MEMORY[0x277D0C238]) initWithInternalRepresentation:v13];
      delegate2 = [(GKTurnBasedMatchmakerHostViewController *)self delegate];
      [delegate2 finishWithMatch:v14];
    }
  }

LABEL_14:
}

- (void)extensionIsCanceling
{
  delegate = [(GKTurnBasedMatchmakerHostViewController *)self delegate];
  [delegate cancel];
}

- (GKTurnBasedMatchmakerViewController)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __71__GKTurnBasedMatchmakerHostViewController_turnBasedMatchmakerExtension__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24DE53000, a2, OS_LOG_TYPE_ERROR, "Error loading Game Center turn based matchmaker extension, %@", &v2, 0xCu);
}

- (void)messageFromExtension:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24DE53000, a2, OS_LOG_TYPE_ERROR, "error while decoding messageFromExtension archive in GKTurnBasedMatchmakerHostViewController:%@", &v2, 0xCu);
}

@end
@interface GKChallengeIssueHostViewController
+ (id)challengeExtension;
- (GKHostedChallengeIssueController)delegate;
- (id)extensionObjectProxy;
- (void)extensionIsCanceling;
- (void)messageFromExtension:(id)extension;
@end

@implementation GKChallengeIssueHostViewController

+ (id)challengeExtension
{
  if (challengeExtension_onceToken != -1)
  {
    +[GKChallengeIssueHostViewController challengeExtension];
  }

  v3 = challengeExtension_extension;

  return v3;
}

void __56__GKChallengeIssueHostViewController_challengeExtension__block_invoke()
{
  v5 = 0;
  v0 = [MEMORY[0x277CCA9C8] _gkExtensionWithIdentifier:@"com.apple.GameCenterUI.GameCenterChallengeIssueExtension" error:&v5];
  v1 = v5;
  v2 = challengeExtension_extension;
  challengeExtension_extension = v0;

  if (v1)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v3 = GKOSLoggers();
    }

    v4 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __56__GKChallengeIssueHostViewController_challengeExtension__block_invoke_cold_1(v1, v4);
    }
  }
}

- (void)messageFromExtension:(id)extension
{
  extensionCopy = extension;
  v5 = MEMORY[0x277CCAAC8];
  v6 = GKExtensionProtocolSecureCodedClasses();
  v19 = 0;
  v7 = [v5 unarchivedObjectOfClasses:v6 fromData:extensionCopy error:&v19];
  v8 = v19;

  if (v8)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v9 = GKOSLoggers();
    }

    v10 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      [(GKChallengeIssueHostViewController *)v8 messageFromExtension:v10];
    }
  }

  v11 = [v7 objectForKeyedSubscript:@"MessageCommandKey"];
  integerValue = [v11 integerValue];

  if (integerValue == 45)
  {
    v13 = [v7 objectForKeyedSubscript:@"PlayerList"];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 _gkMapWithBlock:&__block_literal_global_4];
    }

    else
    {
      v15 = 0;
    }

    v16 = [v7 objectForKeyedSubscript:@"ChallengeMessage"];
    delegate = [(GKChallengeIssueHostViewController *)self delegate];
    [delegate doneWithPlayers:v15 message:v16];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = GKChallengeIssueHostViewController;
    [(GKExtensionRemoteViewController *)&v18 messageFromExtension:extensionCopy];
  }
}

id __59__GKChallengeIssueHostViewController_messageFromExtension___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D0C170];
  v3 = a2;
  v4 = [[v2 alloc] initWithInternalRepresentation:v3];

  return v4;
}

- (void)extensionIsCanceling
{
  delegate = [(GKChallengeIssueHostViewController *)self delegate];
  [delegate doneWithPlayers:0 message:0];
}

- (id)extensionObjectProxy
{
  extension = [(GKExtensionRemoteViewController *)self extension];
  requestIdentifier = [(GKExtensionRemoteViewController *)self requestIdentifier];
  v5 = [extension _extensionContextForUUID:requestIdentifier];

  _auxiliaryConnection = [v5 _auxiliaryConnection];
  v7 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_8_0];

  return v7;
}

void __58__GKChallengeIssueHostViewController_extensionObjectProxy__block_invoke(uint64_t a1, void *a2)
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

- (GKHostedChallengeIssueController)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateWeak);

  return WeakRetained;
}

void __56__GKChallengeIssueHostViewController_challengeExtension__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24DE53000, a2, OS_LOG_TYPE_ERROR, "Error loading Game Center challenge issue extension, %@", &v2, 0xCu);
}

- (void)messageFromExtension:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24DE53000, a2, OS_LOG_TYPE_ERROR, "error while decoding messageFromExtension in GKChallengeIssueHostViewController:%@", &v2, 0xCu);
}

void __58__GKChallengeIssueHostViewController_extensionObjectProxy__block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 localizedDescription];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&dword_24DE53000, v3, OS_LOG_TYPE_DEBUG, "error calling extension - %@", &v5, 0xCu);
}

@end
@interface GKMatchmakerHostViewController
+ (id)matchmakerExtension;
- (GKMatchmakerViewController)delegate;
- (id)extensionObjectProxy;
- (void)applicationWillEnterForeground;
- (void)extensionIsCanceling;
- (void)extensionIsFinishing;
- (void)groupActivityJoiningPlayer:(id)player devicePushToken:(id)token participantServerIdentifier:(id)identifier;
- (void)inviterCancelled;
- (void)messageFromExtension:(id)extension;
- (void)recipientPropertiesProvided:(id)provided forPlayer:(id)player;
- (void)setAcceptedInviteInternal:(id)internal;
- (void)setAutomatchFailedWithError:(id)error;
- (void)setAutomatchPlayerCount:(int64_t)count;
- (void)setCanStartWithMinimumPlayers:(BOOL)players;
- (void)setConnectingStateForPlayer:(id)player;
- (void)setDefaultInvitationMessage:(id)message;
- (void)setEligibilityForGroupSession:(BOOL)session;
- (void)setExistingPlayers:(id)players;
- (void)setFailedWithError:(id)error;
- (void)setHosted:(BOOL)hosted;
- (void)setInvitesFailedWithError:(id)error;
- (void)setMatchRequestInternal:(id)internal;
- (void)setMatchmakingMode:(int64_t)mode;
- (void)setNearbyPlayer:(id)player reachable:(BOOL)reachable;
- (void)setPlayer:(id)player connected:(BOOL)connected;
- (void)setPlayer:(id)player responded:(int64_t)responded;
- (void)setPlayer:(id)player sentData:(id)data;
- (void)setSharePlaySharingControllerResult:(BOOL)result;
- (void)shareMatchWithRequest:(id)request handler:(id)handler;
@end

@implementation GKMatchmakerHostViewController

+ (id)matchmakerExtension
{
  if (matchmakerExtension_onceToken != -1)
  {
    +[GKMatchmakerHostViewController matchmakerExtension];
  }

  v3 = matchmakerExtension_extension;

  return v3;
}

void __53__GKMatchmakerHostViewController_matchmakerExtension__block_invoke()
{
  v5 = 0;
  v0 = [MEMORY[0x277CCA9C8] _gkExtensionWithIdentifier:@"com.apple.GameCenterUI.GameCenterMatchmakerExtension" error:&v5];
  v1 = v5;
  v2 = matchmakerExtension_extension;
  matchmakerExtension_extension = v0;

  if (v1)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v3 = GKOSLoggers();
    }

    v4 = *MEMORY[0x277D0C2B0];
    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_ERROR))
    {
      __53__GKMatchmakerHostViewController_matchmakerExtension__block_invoke_cold_1(v1, v4);
    }
  }
}

- (id)extensionObjectProxy
{
  extension = [(GKExtensionRemoteViewController *)self extension];
  requestIdentifier = [(GKExtensionRemoteViewController *)self requestIdentifier];
  v5 = [extension _extensionContextForUUID:requestIdentifier];

  _auxiliaryConnection = [v5 _auxiliaryConnection];
  v7 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_3_0];

  return v7;
}

void __54__GKMatchmakerHostViewController_extensionObjectProxy__block_invoke(uint64_t a1, void *a2)
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
    v8[0] = &unk_286189378;
    v8[1] = internal;
    v4 = MEMORY[0x277CBEAC0];
    internalCopy = internal;
    v6 = [v4 dictionaryWithObjects:v8 forKeys:v7 count:2];

    [(GKExtensionRemoteViewController *)self sendMessageToExtension:v6];
  }
}

- (void)setAcceptedInviteInternal:(id)internal
{
  v8[2] = *MEMORY[0x277D85DE8];
  if (internal)
  {
    v7[0] = @"MessageCommandKey";
    v7[1] = @"MessageParamKey";
    v8[0] = &unk_286189390;
    v8[1] = internal;
    v4 = MEMORY[0x277CBEAC0];
    internalCopy = internal;
    v6 = [v4 dictionaryWithObjects:v8 forKeys:v7 count:2];

    [(GKExtensionRemoteViewController *)self sendMessageToExtension:v6];
  }
}

- (void)setHosted:(BOOL)hosted
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"MessageCommandKey";
  v6[1] = @"MessageParamKey";
  v7[0] = &unk_2861893A8;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:hosted];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v5];
}

- (void)setMatchmakingMode:(int64_t)mode
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"MessageCommandKey";
  v6[1] = @"MessageParamKey";
  v7[0] = &unk_2861893C0;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:mode];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v5];
}

- (void)setCanStartWithMinimumPlayers:(BOOL)players
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"MessageCommandKey";
  v6[1] = @"MessageParamKey";
  v7[0] = &unk_2861893D8;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:players];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v5];
}

- (void)setEligibilityForGroupSession:(BOOL)session
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"MessageCommandKey";
  v6[1] = @"MessageParamKey";
  v7[0] = &unk_2861893F0;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:session];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v5];
}

- (void)setSharePlaySharingControllerResult:(BOOL)result
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"MessageCommandKey";
  v6[1] = @"MessageParamKey";
  v7[0] = &unk_286189408;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:result];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v5];
}

- (void)setExistingPlayers:(id)players
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"MessageCommandKey";
  v7[1] = @"MessageParamKey";
  v8[0] = &unk_286189420;
  v8[1] = players;
  v4 = MEMORY[0x277CBEAC0];
  playersCopy = players;
  v6 = [v4 dictionaryWithObjects:v8 forKeys:v7 count:2];

  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v6];
}

- (void)setDefaultInvitationMessage:(id)message
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"MessageCommandKey";
  v7[1] = @"MessageParamKey";
  v8[0] = &unk_286189438;
  v8[1] = message;
  v4 = MEMORY[0x277CBEAC0];
  messageCopy = message;
  v6 = [v4 dictionaryWithObjects:v8 forKeys:v7 count:2];

  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v6];
}

- (void)setAutomatchPlayerCount:(int64_t)count
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"MessageCommandKey";
  v6[1] = @"MessageParamKey";
  v7[0] = &unk_286189450;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:count];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v5];
}

- (void)groupActivityJoiningPlayer:(id)player devicePushToken:(id)token participantServerIdentifier:(id)identifier
{
  v17[3] = *MEMORY[0x277D85DE8];
  v16[0] = @"MessageCommandKey";
  v16[1] = @"PlayerInternal";
  v17[0] = &unk_286189468;
  v17[1] = player;
  v16[2] = @"MessageParamKey";
  v14[0] = @"pushToken";
  v14[1] = @"participantIdentifier";
  v15[0] = token;
  v15[1] = identifier;
  v8 = MEMORY[0x277CBEAC0];
  identifierCopy = identifier;
  tokenCopy = token;
  playerCopy = player;
  v12 = [v8 dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];

  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v13];
}

- (void)setPlayer:(id)player responded:(int64_t)responded
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"MessageCommandKey";
  v10[1] = @"PlayerInternal";
  v11[0] = &unk_286189480;
  v11[1] = player;
  v10[2] = @"MessageParamKey";
  v6 = MEMORY[0x277CCABB0];
  playerCopy = player;
  v8 = [v6 numberWithInteger:responded];
  v11[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v9];
}

- (void)setConnectingStateForPlayer:(id)player
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"MessageCommandKey";
  v7[1] = @"PlayerInternal";
  v8[0] = &unk_286189498;
  v8[1] = player;
  v4 = MEMORY[0x277CBEAC0];
  playerCopy = player;
  v6 = [v4 dictionaryWithObjects:v8 forKeys:v7 count:2];

  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v6];
}

- (void)setPlayer:(id)player connected:(BOOL)connected
{
  connectedCopy = connected;
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"MessageCommandKey";
  v10[1] = @"PlayerInternal";
  v11[0] = &unk_2861894B0;
  v11[1] = player;
  v10[2] = @"MessageParamKey";
  v6 = MEMORY[0x277CCABB0];
  playerCopy = player;
  v8 = [v6 numberWithBool:connectedCopy];
  v11[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v9];
}

- (void)setPlayer:(id)player sentData:(id)data
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"MessageCommandKey";
  v10[1] = @"PlayerInternal";
  v11[0] = &unk_2861894C8;
  v11[1] = player;
  v10[2] = @"MessageParamKey";
  v11[2] = data;
  v6 = MEMORY[0x277CBEAC0];
  dataCopy = data;
  playerCopy = player;
  v9 = [v6 dictionaryWithObjects:v11 forKeys:v10 count:3];

  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v9];
}

- (void)setInvitesFailedWithError:(id)error
{
  errorCopy = error;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{&unk_2861894E0, @"MessageCommandKey", 0}];
  if (errorCopy)
  {
    [v4 setObject:errorCopy forKeyedSubscript:@"MessageParamKey"];
  }

  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v4];
}

- (void)setAutomatchFailedWithError:(id)error
{
  errorCopy = error;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{&unk_2861894F8, @"MessageCommandKey", 0}];
  if (errorCopy)
  {
    [v4 setObject:errorCopy forKeyedSubscript:@"MessageParamKey"];
  }

  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v4];
}

- (void)setFailedWithError:(id)error
{
  errorCopy = error;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{&unk_286189510, @"MessageCommandKey", 0}];
  if (errorCopy)
  {
    [v4 setObject:errorCopy forKeyedSubscript:@"MessageParamKey"];
  }

  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v4];
}

- (void)inviterCancelled
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"MessageCommandKey";
  v5[0] = &unk_286189528;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v3];
}

- (void)setNearbyPlayer:(id)player reachable:(BOOL)reachable
{
  reachableCopy = reachable;
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"MessageCommandKey";
  v10[1] = @"PlayerID";
  v11[0] = &unk_286189540;
  v11[1] = player;
  v10[2] = @"MessageParamKey";
  v6 = MEMORY[0x277CCABB0];
  playerCopy = player;
  v8 = [v6 numberWithBool:reachableCopy];
  v11[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v9];
}

- (void)applicationWillEnterForeground
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"MessageCommandKey";
  v5[0] = &unk_286189558;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v3];
}

- (void)recipientPropertiesProvided:(id)provided forPlayer:(id)player
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"MessageCommandKey";
  v10[1] = @"MessageParamKey";
  v11[0] = &unk_286189570;
  v11[1] = provided;
  v10[2] = @"PlayerInternal";
  v11[2] = player;
  v6 = MEMORY[0x277CBEAC0];
  playerCopy = player;
  providedCopy = provided;
  v9 = [v6 dictionaryWithObjects:v11 forKeys:v10 count:3];

  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v9];
}

- (void)messageFromExtension:(id)extension
{
  v25 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  v5 = MEMORY[0x277CCAAC8];
  v6 = GKExtensionProtocolSecureCodedClasses();
  v22 = 0;
  v7 = [v5 unarchivedObjectOfClasses:v6 fromData:extensionCopy error:&v22];
  v8 = v22;

  v9 = MEMORY[0x277D0C2A0];
  v10 = MEMORY[0x277D0C2B0];
  if (v8)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v11 = GKOSLoggers();
    }

    v12 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      [(GKMatchmakerHostViewController *)v8 messageFromExtension:v12];
    }
  }

  v13 = [v7 objectForKeyedSubscript:@"MessageCommandKey"];
  integerValue = [v13 integerValue];

  v15 = [v7 objectForKeyedSubscript:@"MessageParamKey"];
  if (!*v9)
  {
    v16 = GKOSLoggers();
  }

  v17 = *v10;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v24 = v7;
    _os_log_impl(&dword_24DE53000, v17, OS_LOG_TYPE_INFO, "Got message from extension: %@", buf, 0xCu);
  }

  if (integerValue <= 52)
  {
    if (integerValue <= 22)
    {
      switch(integerValue)
      {
        case 19:
          delegate = [(GKMatchmakerHostViewController *)self delegate];
          [delegate finishWithError:v15];
          goto LABEL_46;
        case 21:
          delegate = [(GKMatchmakerHostViewController *)self delegate];
          [delegate setShareInvitees:v15];
          goto LABEL_46;
        case 22:
          delegate = [(GKMatchmakerHostViewController *)self delegate];
          [delegate startMatchingWithRequest:v15 devicePushToken:0];
          goto LABEL_46;
      }
    }

    else
    {
      if (integerValue <= 24)
      {
        delegate = [(GKMatchmakerHostViewController *)self delegate];
        if (integerValue == 23)
        {
          [delegate cancelPendingInviteToPlayer:v15];
        }

        else
        {
          [delegate sendData:v15];
        }

        goto LABEL_46;
      }

      if (integerValue == 25)
      {
        delegate = [(GKMatchmakerHostViewController *)self delegate];
        [delegate cancelMatching];
        goto LABEL_46;
      }

      if (integerValue == 26)
      {
        delegate = [(GKMatchmakerHostViewController *)self delegate];
        [delegate setBrowsingForNearbyPlayers:{objc_msgSend(v15, "BOOLValue")}];
        goto LABEL_46;
      }
    }
  }

  else if (integerValue > 58)
  {
    if (integerValue > 62)
    {
      if (integerValue == 63)
      {
        delegate = [(GKMatchmakerHostViewController *)self delegate];
        v19 = [v15 objectForKeyedSubscript:@"players"];
        [delegate playerPickerDidPickPlayers:v19];
        goto LABEL_43;
      }

      if (integerValue == 64)
      {
        delegate = [(GKMatchmakerHostViewController *)self delegate];
        [delegate playerPickerDidCancel];
        goto LABEL_46;
      }
    }

    else
    {
      if (integerValue == 59)
      {
        delegate = [(GKMatchmakerHostViewController *)self delegate];
        [delegate disconnectFromMatch];
        goto LABEL_46;
      }

      if (integerValue == 60)
      {
        delegate = [(GKMatchmakerHostViewController *)self delegate];
        [delegate recipientPropertiesNeededForPlayer:v15];
        goto LABEL_46;
      }
    }
  }

  else
  {
    if (integerValue <= 54)
    {
      if (integerValue != 53)
      {
        delegate = [(GKMatchmakerHostViewController *)self delegate];
        [delegate activateGroupActivities];
LABEL_46:

        goto LABEL_47;
      }

      delegate = [(GKMatchmakerHostViewController *)self delegate];
      v19 = [v15 objectForKeyedSubscript:@"request"];
      v20 = [v15 objectForKeyedSubscript:@"pushToken"];
      [delegate startMatchingWithRequest:v19 devicePushToken:v20];

LABEL_43:
      goto LABEL_46;
    }

    if (integerValue == 55)
    {
      delegate = [(GKMatchmakerHostViewController *)self delegate];
      [delegate endGroupActivities];
      goto LABEL_46;
    }

    if (integerValue == 57)
    {
      delegate = [(GKMatchmakerHostViewController *)self delegate];
      [delegate presentSharePlaySharingController];
      goto LABEL_46;
    }
  }

  v21.receiver = self;
  v21.super_class = GKMatchmakerHostViewController;
  [(GKExtensionRemoteViewController *)&v21 messageFromExtension:extensionCopy];
LABEL_47:
}

- (void)shareMatchWithRequest:(id)request handler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  delegate = [(GKMatchmakerHostViewController *)self delegate];
  [delegate shareMatchWithRequest:requestCopy handler:handlerCopy];
}

- (void)extensionIsCanceling
{
  delegate = [(GKMatchmakerHostViewController *)self delegate];
  [delegate cancel];
}

- (void)extensionIsFinishing
{
  delegate = [(GKMatchmakerHostViewController *)self delegate];
  [delegate cancel];
}

- (GKMatchmakerViewController)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __53__GKMatchmakerHostViewController_matchmakerExtension__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24DE53000, a2, OS_LOG_TYPE_ERROR, "Error loading Game Center matchmaker extension, %@", &v2, 0xCu);
}

- (void)messageFromExtension:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24DE53000, a2, OS_LOG_TYPE_ERROR, "error while decoding messageFromExtension archive in GKMatchmakerHostViewController:%@", &v2, 0xCu);
}

@end
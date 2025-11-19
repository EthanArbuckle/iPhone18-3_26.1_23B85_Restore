@interface GKMatchmakerHostViewController
+ (id)matchmakerExtension;
- (GKMatchmakerViewController)delegate;
- (id)extensionObjectProxy;
- (void)applicationWillEnterForeground;
- (void)extensionIsCanceling;
- (void)extensionIsFinishing;
- (void)groupActivityJoiningPlayer:(id)a3 devicePushToken:(id)a4 participantServerIdentifier:(id)a5;
- (void)inviterCancelled;
- (void)messageFromExtension:(id)a3;
- (void)recipientPropertiesProvided:(id)a3 forPlayer:(id)a4;
- (void)setAcceptedInviteInternal:(id)a3;
- (void)setAutomatchFailedWithError:(id)a3;
- (void)setAutomatchPlayerCount:(int64_t)a3;
- (void)setCanStartWithMinimumPlayers:(BOOL)a3;
- (void)setConnectingStateForPlayer:(id)a3;
- (void)setDefaultInvitationMessage:(id)a3;
- (void)setEligibilityForGroupSession:(BOOL)a3;
- (void)setExistingPlayers:(id)a3;
- (void)setFailedWithError:(id)a3;
- (void)setHosted:(BOOL)a3;
- (void)setInvitesFailedWithError:(id)a3;
- (void)setMatchRequestInternal:(id)a3;
- (void)setMatchmakingMode:(int64_t)a3;
- (void)setNearbyPlayer:(id)a3 reachable:(BOOL)a4;
- (void)setPlayer:(id)a3 connected:(BOOL)a4;
- (void)setPlayer:(id)a3 responded:(int64_t)a4;
- (void)setPlayer:(id)a3 sentData:(id)a4;
- (void)setSharePlaySharingControllerResult:(BOOL)a3;
- (void)shareMatchWithRequest:(id)a3 handler:(id)a4;
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
  v3 = [(GKExtensionRemoteViewController *)self extension];
  v4 = [(GKExtensionRemoteViewController *)self requestIdentifier];
  v5 = [v3 _extensionContextForUUID:v4];

  v6 = [v5 _auxiliaryConnection];
  v7 = [v6 remoteObjectProxyWithErrorHandler:&__block_literal_global_3_0];

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

- (void)setMatchRequestInternal:(id)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7[0] = @"MessageCommandKey";
    v7[1] = @"MessageParamKey";
    v8[0] = &unk_286189378;
    v8[1] = a3;
    v4 = MEMORY[0x277CBEAC0];
    v5 = a3;
    v6 = [v4 dictionaryWithObjects:v8 forKeys:v7 count:2];

    [(GKExtensionRemoteViewController *)self sendMessageToExtension:v6];
  }
}

- (void)setAcceptedInviteInternal:(id)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7[0] = @"MessageCommandKey";
    v7[1] = @"MessageParamKey";
    v8[0] = &unk_286189390;
    v8[1] = a3;
    v4 = MEMORY[0x277CBEAC0];
    v5 = a3;
    v6 = [v4 dictionaryWithObjects:v8 forKeys:v7 count:2];

    [(GKExtensionRemoteViewController *)self sendMessageToExtension:v6];
  }
}

- (void)setHosted:(BOOL)a3
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"MessageCommandKey";
  v6[1] = @"MessageParamKey";
  v7[0] = &unk_2861893A8;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v5];
}

- (void)setMatchmakingMode:(int64_t)a3
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"MessageCommandKey";
  v6[1] = @"MessageParamKey";
  v7[0] = &unk_2861893C0;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v5];
}

- (void)setCanStartWithMinimumPlayers:(BOOL)a3
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"MessageCommandKey";
  v6[1] = @"MessageParamKey";
  v7[0] = &unk_2861893D8;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v5];
}

- (void)setEligibilityForGroupSession:(BOOL)a3
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"MessageCommandKey";
  v6[1] = @"MessageParamKey";
  v7[0] = &unk_2861893F0;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v5];
}

- (void)setSharePlaySharingControllerResult:(BOOL)a3
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"MessageCommandKey";
  v6[1] = @"MessageParamKey";
  v7[0] = &unk_286189408;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v5];
}

- (void)setExistingPlayers:(id)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"MessageCommandKey";
  v7[1] = @"MessageParamKey";
  v8[0] = &unk_286189420;
  v8[1] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v8 forKeys:v7 count:2];

  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v6];
}

- (void)setDefaultInvitationMessage:(id)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"MessageCommandKey";
  v7[1] = @"MessageParamKey";
  v8[0] = &unk_286189438;
  v8[1] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v8 forKeys:v7 count:2];

  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v6];
}

- (void)setAutomatchPlayerCount:(int64_t)a3
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"MessageCommandKey";
  v6[1] = @"MessageParamKey";
  v7[0] = &unk_286189450;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v5];
}

- (void)groupActivityJoiningPlayer:(id)a3 devicePushToken:(id)a4 participantServerIdentifier:(id)a5
{
  v17[3] = *MEMORY[0x277D85DE8];
  v16[0] = @"MessageCommandKey";
  v16[1] = @"PlayerInternal";
  v17[0] = &unk_286189468;
  v17[1] = a3;
  v16[2] = @"MessageParamKey";
  v14[0] = @"pushToken";
  v14[1] = @"participantIdentifier";
  v15[0] = a4;
  v15[1] = a5;
  v8 = MEMORY[0x277CBEAC0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];

  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v13];
}

- (void)setPlayer:(id)a3 responded:(int64_t)a4
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"MessageCommandKey";
  v10[1] = @"PlayerInternal";
  v11[0] = &unk_286189480;
  v11[1] = a3;
  v10[2] = @"MessageParamKey";
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithInteger:a4];
  v11[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v9];
}

- (void)setConnectingStateForPlayer:(id)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"MessageCommandKey";
  v7[1] = @"PlayerInternal";
  v8[0] = &unk_286189498;
  v8[1] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v8 forKeys:v7 count:2];

  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v6];
}

- (void)setPlayer:(id)a3 connected:(BOOL)a4
{
  v4 = a4;
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"MessageCommandKey";
  v10[1] = @"PlayerInternal";
  v11[0] = &unk_2861894B0;
  v11[1] = a3;
  v10[2] = @"MessageParamKey";
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithBool:v4];
  v11[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v9];
}

- (void)setPlayer:(id)a3 sentData:(id)a4
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"MessageCommandKey";
  v10[1] = @"PlayerInternal";
  v11[0] = &unk_2861894C8;
  v11[1] = a3;
  v10[2] = @"MessageParamKey";
  v11[2] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v11 forKeys:v10 count:3];

  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v9];
}

- (void)setInvitesFailedWithError:(id)a3
{
  v5 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{&unk_2861894E0, @"MessageCommandKey", 0}];
  if (v5)
  {
    [v4 setObject:v5 forKeyedSubscript:@"MessageParamKey"];
  }

  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v4];
}

- (void)setAutomatchFailedWithError:(id)a3
{
  v5 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{&unk_2861894F8, @"MessageCommandKey", 0}];
  if (v5)
  {
    [v4 setObject:v5 forKeyedSubscript:@"MessageParamKey"];
  }

  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v4];
}

- (void)setFailedWithError:(id)a3
{
  v5 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{&unk_286189510, @"MessageCommandKey", 0}];
  if (v5)
  {
    [v4 setObject:v5 forKeyedSubscript:@"MessageParamKey"];
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

- (void)setNearbyPlayer:(id)a3 reachable:(BOOL)a4
{
  v4 = a4;
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"MessageCommandKey";
  v10[1] = @"PlayerID";
  v11[0] = &unk_286189540;
  v11[1] = a3;
  v10[2] = @"MessageParamKey";
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithBool:v4];
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

- (void)recipientPropertiesProvided:(id)a3 forPlayer:(id)a4
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"MessageCommandKey";
  v10[1] = @"MessageParamKey";
  v11[0] = &unk_286189570;
  v11[1] = a3;
  v10[2] = @"PlayerInternal";
  v11[2] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v11 forKeys:v10 count:3];

  [(GKExtensionRemoteViewController *)self sendMessageToExtension:v9];
}

- (void)messageFromExtension:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CCAAC8];
  v6 = GKExtensionProtocolSecureCodedClasses();
  v22 = 0;
  v7 = [v5 unarchivedObjectOfClasses:v6 fromData:v4 error:&v22];
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
  v14 = [v13 integerValue];

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

  if (v14 <= 52)
  {
    if (v14 <= 22)
    {
      switch(v14)
      {
        case 19:
          v18 = [(GKMatchmakerHostViewController *)self delegate];
          [v18 finishWithError:v15];
          goto LABEL_46;
        case 21:
          v18 = [(GKMatchmakerHostViewController *)self delegate];
          [v18 setShareInvitees:v15];
          goto LABEL_46;
        case 22:
          v18 = [(GKMatchmakerHostViewController *)self delegate];
          [v18 startMatchingWithRequest:v15 devicePushToken:0];
          goto LABEL_46;
      }
    }

    else
    {
      if (v14 <= 24)
      {
        v18 = [(GKMatchmakerHostViewController *)self delegate];
        if (v14 == 23)
        {
          [v18 cancelPendingInviteToPlayer:v15];
        }

        else
        {
          [v18 sendData:v15];
        }

        goto LABEL_46;
      }

      if (v14 == 25)
      {
        v18 = [(GKMatchmakerHostViewController *)self delegate];
        [v18 cancelMatching];
        goto LABEL_46;
      }

      if (v14 == 26)
      {
        v18 = [(GKMatchmakerHostViewController *)self delegate];
        [v18 setBrowsingForNearbyPlayers:{objc_msgSend(v15, "BOOLValue")}];
        goto LABEL_46;
      }
    }
  }

  else if (v14 > 58)
  {
    if (v14 > 62)
    {
      if (v14 == 63)
      {
        v18 = [(GKMatchmakerHostViewController *)self delegate];
        v19 = [v15 objectForKeyedSubscript:@"players"];
        [v18 playerPickerDidPickPlayers:v19];
        goto LABEL_43;
      }

      if (v14 == 64)
      {
        v18 = [(GKMatchmakerHostViewController *)self delegate];
        [v18 playerPickerDidCancel];
        goto LABEL_46;
      }
    }

    else
    {
      if (v14 == 59)
      {
        v18 = [(GKMatchmakerHostViewController *)self delegate];
        [v18 disconnectFromMatch];
        goto LABEL_46;
      }

      if (v14 == 60)
      {
        v18 = [(GKMatchmakerHostViewController *)self delegate];
        [v18 recipientPropertiesNeededForPlayer:v15];
        goto LABEL_46;
      }
    }
  }

  else
  {
    if (v14 <= 54)
    {
      if (v14 != 53)
      {
        v18 = [(GKMatchmakerHostViewController *)self delegate];
        [v18 activateGroupActivities];
LABEL_46:

        goto LABEL_47;
      }

      v18 = [(GKMatchmakerHostViewController *)self delegate];
      v19 = [v15 objectForKeyedSubscript:@"request"];
      v20 = [v15 objectForKeyedSubscript:@"pushToken"];
      [v18 startMatchingWithRequest:v19 devicePushToken:v20];

LABEL_43:
      goto LABEL_46;
    }

    if (v14 == 55)
    {
      v18 = [(GKMatchmakerHostViewController *)self delegate];
      [v18 endGroupActivities];
      goto LABEL_46;
    }

    if (v14 == 57)
    {
      v18 = [(GKMatchmakerHostViewController *)self delegate];
      [v18 presentSharePlaySharingController];
      goto LABEL_46;
    }
  }

  v21.receiver = self;
  v21.super_class = GKMatchmakerHostViewController;
  [(GKExtensionRemoteViewController *)&v21 messageFromExtension:v4];
LABEL_47:
}

- (void)shareMatchWithRequest:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKMatchmakerHostViewController *)self delegate];
  [v8 shareMatchWithRequest:v7 handler:v6];
}

- (void)extensionIsCanceling
{
  v2 = [(GKMatchmakerHostViewController *)self delegate];
  [v2 cancel];
}

- (void)extensionIsFinishing
{
  v2 = [(GKMatchmakerHostViewController *)self delegate];
  [v2 cancel];
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
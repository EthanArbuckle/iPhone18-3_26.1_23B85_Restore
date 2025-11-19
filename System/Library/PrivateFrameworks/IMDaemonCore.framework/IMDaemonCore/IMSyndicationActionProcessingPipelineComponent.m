@interface IMSyndicationActionProcessingPipelineComponent
- (IMSyndicationActionProcessingPipelineComponent)initWithPipelineResources:(id)a3;
- (id)_account;
- (id)_broadcaster;
- (id)_chatRegistry;
- (id)_messageStore;
- (id)findSMSChatForInput:(id)a3;
- (id)handleChatSyndicationAction:(id)a3 chat:(id)a4;
- (id)handleMessageSyndicationAction:(id)a3 chat:(id)a4;
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IMSyndicationActionProcessingPipelineComponent

- (IMSyndicationActionProcessingPipelineComponent)initWithPipelineResources:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IMSyndicationActionProcessingPipelineComponent;
  v6 = [(IMSyndicationActionProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pipelineResources, a3);
  }

  return v7;
}

- (id)_account
{
  v2 = [(IMSyndicationActionProcessingPipelineComponent *)self pipelineResources];
  v3 = [v2 imdAccount];

  return v3;
}

- (id)_messageStore
{
  v2 = [(IMSyndicationActionProcessingPipelineComponent *)self pipelineResources];
  v3 = [v2 messageStore];

  return v3;
}

- (id)_chatRegistry
{
  v2 = [(IMSyndicationActionProcessingPipelineComponent *)self pipelineResources];
  v3 = [v2 chatRegistry];

  return v3;
}

- (id)_broadcaster
{
  v2 = [(IMSyndicationActionProcessingPipelineComponent *)self pipelineResources];
  v3 = [v2 broadcaster];

  return v3;
}

- (id)handleMessageSyndicationAction:(id)a3 chat:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(IMSyndicationActionProcessingPipelineComponent *)self _messageStore];
  v9 = [v8 updateSyndicatedMessageWithSyndicationMessageAction:v6];

  if (v9)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v9 guid];
        v20 = 138412546;
        v21 = v11;
        v22 = 2112;
        v23 = v6;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Updated message: %@ with SyndicationAction: %@", &v20, 0x16u);
      }
    }

    v12 = [(IMSyndicationActionProcessingPipelineComponent *)self _broadcaster];
    v13 = [v7 accountID];
    v14 = [v7 chatIdentifier];
    [v12 account:v13 chat:v14 style:objc_msgSend(v7 messageUpdated:{"style"), v9}];

    v15 = 0;
  }

  else
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D24C0(v6, v16);
    }

    v17 = objc_alloc(MEMORY[0x277CCA9B8]);
    v15 = [v17 initWithDomain:*MEMORY[0x277D18DF8] code:5 userInfo:0];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)handleChatSyndicationAction:(id)a3 chat:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 updateDonationStateWithSyndicationAction:v5];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = @"NO";
      if (v7)
      {
        v9 = @"YES";
      }

      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Did update chat: %@. with SyndicationAction: %@", &v12, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)findSMSChatForInput:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "SyndicationAction: trying to find chat using SMS chat fallback search.", buf, 2u);
    }
  }

  v6 = +[IMDServiceController sharedController];
  v25 = [v6 serviceWithName:*MEMORY[0x277D1A610]];

  v7 = +[IMDAccountController sharedInstance];
  v8 = [v7 activeAccountsForService:v25];

  v9 = [v4 participantIdentifiers];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_22B567D24;
  v31[3] = &unk_278703AF0;
  v26 = v4;
  v32 = v26;
  v10 = [v9 __imArrayByFilteringWithBlock:v31];
  v11 = [v10 _IDsFromURIs];

  v12 = [v11 count];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v14)
  {
    v15 = *v28;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        v18 = [(IMSyndicationActionProcessingPipelineComponent *)self _chatRegistry];
        v19 = v18;
        if (v12 <= 1)
        {
          v21 = [v26 fromDisplayID];
          v20 = [v19 existingChatForID:v21 account:v17];
        }

        else
        {
          v20 = [v18 existingChatForIDs:v11 account:v17 style:43];
        }

        if (v20)
        {

          goto LABEL_22;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v27 objects:v34 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "SyndicationAction: SMS chat fallback search did not find a chat.", buf, 2u);
    }
  }

  v20 = 0;
LABEL_22:

  v23 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)runIndividuallyWithInput:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 chat];
  if (!v5)
  {
    v5 = [(IMSyndicationActionProcessingPipelineComponent *)self findSMSChatForInput:v4];
    if (!v5)
    {
      v19 = objc_alloc(MEMORY[0x277CCA9B8]);
      v12 = [v19 initWithDomain:*MEMORY[0x277D18DF8] code:8 userInfo:0];
      v7 = 0;
      if (v12)
      {
        goto LABEL_12;
      }
    }
  }

  v6 = [v4 createSyndicationActionWithChat:v5];
  v7 = v6;
  if (!v6)
  {
    v10 = objc_alloc(MEMORY[0x277CCA9B8]);
    v11 = [v10 initWithDomain:*MEMORY[0x277D18DF8] code:11 userInfo:0];
    if (!v11)
    {
      goto LABEL_16;
    }

    v12 = v11;
    v7 = 0;
LABEL_12:
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D2538(v12, v14);
    }

    v15 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v12];
    goto LABEL_21;
  }

  v8 = [v6 syndicatedItemType];
  if (v8 == 2)
  {
    v9 = [(IMSyndicationActionProcessingPipelineComponent *)self handleChatSyndicationAction:v7 chat:v5];
  }

  else if (v8 == 1)
  {
    v9 = [(IMSyndicationActionProcessingPipelineComponent *)self handleMessageSyndicationAction:v7 chat:v5];
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277CCA9B8]);
    v9 = [v13 initWithDomain:*MEMORY[0x277D18DF8] code:11 userInfo:0];
  }

  v12 = v9;
  if (v9)
  {
    goto LABEL_12;
  }

  [v4 setSyndicationAction:v7];
LABEL_16:
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = v7;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Processed SyndicationAction ok: %@", &v20, 0xCu);
    }
  }

  v15 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v4];
LABEL_21:

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

@end
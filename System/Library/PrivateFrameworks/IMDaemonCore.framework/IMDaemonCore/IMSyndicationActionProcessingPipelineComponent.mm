@interface IMSyndicationActionProcessingPipelineComponent
- (IMSyndicationActionProcessingPipelineComponent)initWithPipelineResources:(id)resources;
- (id)_account;
- (id)_broadcaster;
- (id)_chatRegistry;
- (id)_messageStore;
- (id)findSMSChatForInput:(id)input;
- (id)handleChatSyndicationAction:(id)action chat:(id)chat;
- (id)handleMessageSyndicationAction:(id)action chat:(id)chat;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IMSyndicationActionProcessingPipelineComponent

- (IMSyndicationActionProcessingPipelineComponent)initWithPipelineResources:(id)resources
{
  resourcesCopy = resources;
  v9.receiver = self;
  v9.super_class = IMSyndicationActionProcessingPipelineComponent;
  v6 = [(IMSyndicationActionProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pipelineResources, resources);
  }

  return v7;
}

- (id)_account
{
  pipelineResources = [(IMSyndicationActionProcessingPipelineComponent *)self pipelineResources];
  imdAccount = [pipelineResources imdAccount];

  return imdAccount;
}

- (id)_messageStore
{
  pipelineResources = [(IMSyndicationActionProcessingPipelineComponent *)self pipelineResources];
  messageStore = [pipelineResources messageStore];

  return messageStore;
}

- (id)_chatRegistry
{
  pipelineResources = [(IMSyndicationActionProcessingPipelineComponent *)self pipelineResources];
  chatRegistry = [pipelineResources chatRegistry];

  return chatRegistry;
}

- (id)_broadcaster
{
  pipelineResources = [(IMSyndicationActionProcessingPipelineComponent *)self pipelineResources];
  broadcaster = [pipelineResources broadcaster];

  return broadcaster;
}

- (id)handleMessageSyndicationAction:(id)action chat:(id)chat
{
  v24 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  chatCopy = chat;
  _messageStore = [(IMSyndicationActionProcessingPipelineComponent *)self _messageStore];
  v9 = [_messageStore updateSyndicatedMessageWithSyndicationMessageAction:actionCopy];

  if (v9)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        guid = [v9 guid];
        v20 = 138412546;
        v21 = guid;
        v22 = 2112;
        v23 = actionCopy;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Updated message: %@ with SyndicationAction: %@", &v20, 0x16u);
      }
    }

    _broadcaster = [(IMSyndicationActionProcessingPipelineComponent *)self _broadcaster];
    accountID = [chatCopy accountID];
    chatIdentifier = [chatCopy chatIdentifier];
    [_broadcaster account:accountID chat:chatIdentifier style:objc_msgSend(chatCopy messageUpdated:{"style"), v9}];

    v15 = 0;
  }

  else
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D24C0(actionCopy, v16);
    }

    v17 = objc_alloc(MEMORY[0x277CCA9B8]);
    v15 = [v17 initWithDomain:*MEMORY[0x277D18DF8] code:5 userInfo:0];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)handleChatSyndicationAction:(id)action chat:(id)chat
{
  v16 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  chatCopy = chat;
  v7 = [chatCopy updateDonationStateWithSyndicationAction:actionCopy];
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
      v15 = actionCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Did update chat: %@. with SyndicationAction: %@", &v12, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)findSMSChatForInput:(id)input
{
  v35 = *MEMORY[0x277D85DE8];
  inputCopy = input;
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

  participantIdentifiers = [inputCopy participantIdentifiers];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_22B567D24;
  v31[3] = &unk_278703AF0;
  v26 = inputCopy;
  v32 = v26;
  v10 = [participantIdentifiers __imArrayByFilteringWithBlock:v31];
  _IDsFromURIs = [v10 _IDsFromURIs];

  v12 = [_IDsFromURIs count];
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
        _chatRegistry = [(IMSyndicationActionProcessingPipelineComponent *)self _chatRegistry];
        v19 = _chatRegistry;
        if (v12 <= 1)
        {
          fromDisplayID = [v26 fromDisplayID];
          v20 = [v19 existingChatForID:fromDisplayID account:v17];
        }

        else
        {
          v20 = [_chatRegistry existingChatForIDs:_IDsFromURIs account:v17 style:43];
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

- (id)runIndividuallyWithInput:(id)input
{
  v22 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  chat = [inputCopy chat];
  if (!chat)
  {
    chat = [(IMSyndicationActionProcessingPipelineComponent *)self findSMSChatForInput:inputCopy];
    if (!chat)
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

  v6 = [inputCopy createSyndicationActionWithChat:chat];
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

  syndicatedItemType = [v6 syndicatedItemType];
  if (syndicatedItemType == 2)
  {
    v9 = [(IMSyndicationActionProcessingPipelineComponent *)self handleChatSyndicationAction:v7 chat:chat];
  }

  else if (syndicatedItemType == 1)
  {
    v9 = [(IMSyndicationActionProcessingPipelineComponent *)self handleMessageSyndicationAction:v7 chat:chat];
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

  [inputCopy setSyndicationAction:v7];
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

  v15 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
LABEL_21:

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

@end
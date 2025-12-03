@interface IMChatSessionCloseProcessingPipelineComponent
- (IMChatSessionCloseProcessingPipelineComponent)initWithMessageStore:(id)store;
- (IMChatSessionCloseProcessingPipelineComponent)initWithMessageStore:(id)store chatRegistry:(id)registry idsTrustedData:(id)data;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IMChatSessionCloseProcessingPipelineComponent

- (IMChatSessionCloseProcessingPipelineComponent)initWithMessageStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = IMChatSessionCloseProcessingPipelineComponent;
  v6 = [(IMChatSessionCloseProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_messageStore, store);
  }

  return v7;
}

- (IMChatSessionCloseProcessingPipelineComponent)initWithMessageStore:(id)store chatRegistry:(id)registry idsTrustedData:(id)data
{
  storeCopy = store;
  registryCopy = registry;
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = IMChatSessionCloseProcessingPipelineComponent;
  v12 = [(IMChatSessionCloseProcessingPipelineComponent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_messageStore, store);
    objc_storeStrong(&v13->_chatRegistry, registry);
    objc_storeStrong(&v13->_idsTrustedData, data);
  }

  return v13;
}

- (id)runIndividuallyWithInput:(id)input
{
  v67 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      gUID = [inputCopy GUID];
      *buf = 138412290;
      *v62 = gUID;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "<IMChatSessionCloseProcessingPipelineComponent> Started processing for Message GUID: %@", buf, 0xCu);
    }
  }

  if (IMGetCachedDomainBoolForKey())
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        gUID2 = [inputCopy GUID];
        *buf = 138412290;
        *v62 = gUID2;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "    Ignoring chat session close for message: %@", buf, 0xCu);
      }
    }

    v9 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
  }

  else
  {
    gUID3 = [inputCopy GUID];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v62 = gUID3;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "    Received Fresh ChatSessionClose For Message GUID: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        fromIdentifier = [(IMDiMessageIDSTrustedData *)self->_idsTrustedData fromIdentifier];
        *buf = 138412290;
        *v62 = fromIdentifier;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "idsTrustedData: fromIdentifier: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        version = [inputCopy version];
        intValue = [version intValue];
        senderHandle = [inputCopy senderHandle];
        senderName = [inputCopy senderName];
        conversationID = [inputCopy conversationID];
        *buf = 67109890;
        *v62 = intValue;
        *&v62[4] = 2112;
        *&v62[6] = senderHandle;
        v63 = 2112;
        v64 = senderName;
        v65 = 2112;
        v66 = conversationID;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Eufo -> version: %d, senderHandle: %@, senderName: %@, conversationID: %@", buf, 0x26u);
      }
    }

    isEmergencySOS = [inputCopy isEmergencySOS];
    conversationID2 = [inputCopy conversationID];
    if (isEmergencySOS)
    {
      v21 = [@"tsharing:" stringByAppendingString:conversationID2];

      conversationID2 = v21;
    }

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v62 = conversationID2;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "chatIdentifier: %@", buf, 0xCu);
      }
    }

    chatRegistry = self->_chatRegistry;
    account = [inputCopy account];
    v25 = [(IMDChatRegistry *)chatRegistry existingChatWithIdentifier:conversationID2 account:account];

    v26 = IMOSLoggingEnabled();
    if (v25)
    {
      if (v26)
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Chat FOUND, acting on the ChatSessionClose command!", buf, 2u);
        }
      }

      if ([inputCopy isEmergencySOS])
      {
        v28 = objc_alloc(MEMORY[0x277D1ACA8]);
        emergencyUserInfo = [v25 emergencyUserInfo];
        emergencyUserPersona = [emergencyUserInfo emergencyUserPersona];
        senderID = [emergencyUserPersona senderID];
        v32 = MEMORY[0x277CBEAA8];
        timestamp = [inputCopy timestamp];
        v34 = [v32 __im_iMessageDateFromTimeStamp:timestamp];
        v35 = [v28 initWithSender:senderID time:v34 guid:v59 type:7];

        service = [v25 service];
        internalName = [service internalName];
        [v35 setService:internalName];

        account2 = [v25 account];
        accountID = [account2 accountID];
        [v35 setAccountID:accountID];

        account3 = [v25 account];
        loginID = [account3 loginID];
        [v35 setAccount:loginID];
      }

      else
      {
        if ([inputCopy deleteConversation])
        {
          v35 = 0;
        }

        else
        {
          v43 = objc_alloc(MEMORY[0x277D1A9E0]);
          date = [MEMORY[0x277CBEAA8] date];
          stringGUID = [MEMORY[0x277CCACA8] stringGUID];
          v35 = [v43 initWithSender:conversationID2 time:date guid:stringGUID type:3];

          [v35 setActionType:0];
          service2 = [v25 service];
          internalName2 = [service2 internalName];
          [v35 setService:internalName2];

          account4 = [v25 account];
          accountID2 = [account4 accountID];
          [v35 setAccountID:accountID2];

          account5 = [v25 account];
          loginID2 = [account5 loginID];
          [v35 setAccount:loginID2];
        }

        [v25 deleteBIAContext];
      }

      if (v35)
      {
        v52 = [(IMDMessageStore *)self->_messageStore storeItem:v35 forceReplace:0];
        v53 = +[IMDChatStore sharedInstance];
        guid = [v52 guid];
        [v53 addMessageWithGUID:guid toChat:v25];

        v60 = v52;
        v55 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
        [inputCopy setMessageItems:v55];
        [inputCopy setChat:v25];
      }

      v9 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
    }

    else
    {
      if (v26)
      {
        v42 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v42, OS_LOG_TYPE_INFO, "Chat not found, dropping ChatSessionClose command!", buf, 2u);
        }
      }

      v9 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
    }
  }

  v56 = *MEMORY[0x277D85DE8];

  return v9;
}

@end
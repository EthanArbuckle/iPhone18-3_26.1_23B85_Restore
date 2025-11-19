@interface IMChatSessionCloseProcessingPipelineComponent
- (IMChatSessionCloseProcessingPipelineComponent)initWithMessageStore:(id)a3;
- (IMChatSessionCloseProcessingPipelineComponent)initWithMessageStore:(id)a3 chatRegistry:(id)a4 idsTrustedData:(id)a5;
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IMChatSessionCloseProcessingPipelineComponent

- (IMChatSessionCloseProcessingPipelineComponent)initWithMessageStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IMChatSessionCloseProcessingPipelineComponent;
  v6 = [(IMChatSessionCloseProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_messageStore, a3);
  }

  return v7;
}

- (IMChatSessionCloseProcessingPipelineComponent)initWithMessageStore:(id)a3 chatRegistry:(id)a4 idsTrustedData:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = IMChatSessionCloseProcessingPipelineComponent;
  v12 = [(IMChatSessionCloseProcessingPipelineComponent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_messageStore, a3);
    objc_storeStrong(&v13->_chatRegistry, a4);
    objc_storeStrong(&v13->_idsTrustedData, a5);
  }

  return v13;
}

- (id)runIndividuallyWithInput:(id)a3
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 GUID];
      *buf = 138412290;
      *v62 = v6;
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
        v8 = [v4 GUID];
        *buf = 138412290;
        *v62 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "    Ignoring chat session close for message: %@", buf, 0xCu);
      }
    }

    v9 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v4];
  }

  else
  {
    v58 = [v4 GUID];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v62 = v58;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "    Received Fresh ChatSessionClose For Message GUID: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [(IMDiMessageIDSTrustedData *)self->_idsTrustedData fromIdentifier];
        *buf = 138412290;
        *v62 = v12;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "idsTrustedData: fromIdentifier: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v4 version];
        v15 = [v14 intValue];
        v16 = [v4 senderHandle];
        v17 = [v4 senderName];
        v18 = [v4 conversationID];
        *buf = 67109890;
        *v62 = v15;
        *&v62[4] = 2112;
        *&v62[6] = v16;
        v63 = 2112;
        v64 = v17;
        v65 = 2112;
        v66 = v18;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Eufo -> version: %d, senderHandle: %@, senderName: %@, conversationID: %@", buf, 0x26u);
      }
    }

    v19 = [v4 isEmergencySOS];
    v20 = [v4 conversationID];
    if (v19)
    {
      v21 = [@"tsharing:" stringByAppendingString:v20];

      v20 = v21;
    }

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v62 = v20;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "chatIdentifier: %@", buf, 0xCu);
      }
    }

    chatRegistry = self->_chatRegistry;
    v24 = [v4 account];
    v25 = [(IMDChatRegistry *)chatRegistry existingChatWithIdentifier:v20 account:v24];

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

      if ([v4 isEmergencySOS])
      {
        v28 = objc_alloc(MEMORY[0x277D1ACA8]);
        v29 = [v25 emergencyUserInfo];
        v30 = [v29 emergencyUserPersona];
        v31 = [v30 senderID];
        v32 = MEMORY[0x277CBEAA8];
        v33 = [v4 timestamp];
        v34 = [v32 __im_iMessageDateFromTimeStamp:v33];
        v35 = [v28 initWithSender:v31 time:v34 guid:v59 type:7];

        v36 = [v25 service];
        v37 = [v36 internalName];
        [v35 setService:v37];

        v38 = [v25 account];
        v39 = [v38 accountID];
        [v35 setAccountID:v39];

        v40 = [v25 account];
        v41 = [v40 loginID];
        [v35 setAccount:v41];
      }

      else
      {
        if ([v4 deleteConversation])
        {
          v35 = 0;
        }

        else
        {
          v43 = objc_alloc(MEMORY[0x277D1A9E0]);
          v44 = [MEMORY[0x277CBEAA8] date];
          v45 = [MEMORY[0x277CCACA8] stringGUID];
          v35 = [v43 initWithSender:v20 time:v44 guid:v45 type:3];

          [v35 setActionType:0];
          v46 = [v25 service];
          v47 = [v46 internalName];
          [v35 setService:v47];

          v48 = [v25 account];
          v49 = [v48 accountID];
          [v35 setAccountID:v49];

          v50 = [v25 account];
          v51 = [v50 loginID];
          [v35 setAccount:v51];
        }

        [v25 deleteBIAContext];
      }

      if (v35)
      {
        v52 = [(IMDMessageStore *)self->_messageStore storeItem:v35 forceReplace:0];
        v53 = +[IMDChatStore sharedInstance];
        v54 = [v52 guid];
        [v53 addMessageWithGUID:v54 toChat:v25];

        v60 = v52;
        v55 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
        [v4 setMessageItems:v55];
        [v4 setChat:v25];
      }

      v9 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v4];
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

      v9 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v4];
    }
  }

  v56 = *MEMORY[0x277D85DE8];

  return v9;
}

@end
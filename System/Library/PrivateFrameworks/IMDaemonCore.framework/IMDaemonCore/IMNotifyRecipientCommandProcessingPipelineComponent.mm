@interface IMNotifyRecipientCommandProcessingPipelineComponent
- (IMNotifyRecipientCommandProcessingPipelineComponent)initWithPipelineResources:(id)resources;
- (id)_account;
- (id)_idsAccount;
- (id)_messageStore;
- (id)runIndividuallyWithInput:(id)input;
- (void)_markMessageAsNotifiedRecipientAndNotify:(id)notify session:(id)session chat:(id)chat;
@end

@implementation IMNotifyRecipientCommandProcessingPipelineComponent

- (IMNotifyRecipientCommandProcessingPipelineComponent)initWithPipelineResources:(id)resources
{
  resourcesCopy = resources;
  v9.receiver = self;
  v9.super_class = IMNotifyRecipientCommandProcessingPipelineComponent;
  v6 = [(IMNotifyRecipientCommandProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pipelineResources, resources);
  }

  return v7;
}

- (id)_idsAccount
{
  pipelineResources = [(IMNotifyRecipientCommandProcessingPipelineComponent *)self pipelineResources];
  imdAccount = [pipelineResources imdAccount];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    idsAccount = [imdAccount idsAccount];
  }

  else
  {
    idsAccount = 0;
  }

  return idsAccount;
}

- (id)_account
{
  pipelineResources = [(IMNotifyRecipientCommandProcessingPipelineComponent *)self pipelineResources];
  imdAccount = [pipelineResources imdAccount];

  return imdAccount;
}

- (id)_messageStore
{
  pipelineResources = [(IMNotifyRecipientCommandProcessingPipelineComponent *)self pipelineResources];
  messageStore = [pipelineResources messageStore];

  return messageStore;
}

- (id)runIndividuallyWithInput:(id)input
{
  v52 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      gUID = [inputCopy GUID];
      *buf = 138412290;
      v49 = gUID;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "<IMNotifyRecipientCommandProcessingPipelineComponent> Started processing for Message GUID: %@", buf, 0xCu);
    }
  }

  if (IMGetCachedDomainBoolForKey())
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        gUID2 = [inputCopy GUID];
        *buf = 138412290;
        v49 = gUID2;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "    Ignoring notify recipient command for message: %@", buf, 0xCu);
      }
    }

    v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
  }

  else
  {
    gUID3 = [inputCopy GUID];

    if (gUID3)
    {
      gUID4 = [inputCopy GUID];
      v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
      pipelineResources = [(IMNotifyRecipientCommandProcessingPipelineComponent *)self pipelineResources];
      messageStore = [pipelineResources messageStore];
      v13 = [messageStore chatsForMessageGUID:gUID4];

      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v49 = gUID4;
          v50 = 2112;
          v51 = v13;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Found chats for messageID: %@   chats: %@", buf, 0x16u);
        }
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v16)
      {
        v17 = *v43;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v43 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v42 + 1) + 8 * i);
            pipelineResources2 = [(IMNotifyRecipientCommandProcessingPipelineComponent *)self pipelineResources];
            messageStore2 = [pipelineResources2 messageStore];
            v22 = [messageStore2 messageWithGUID:gUID4];

            if (v22)
            {
              [v41 addObject:v22];
              _account = [(IMNotifyRecipientCommandProcessingPipelineComponent *)self _account];
              session = [_account session];
              [(IMNotifyRecipientCommandProcessingPipelineComponent *)self _markMessageAsNotifiedRecipientAndNotify:v22 session:session chat:v19];

              if (([v22 isFromMe] & 1) == 0)
              {
                _messageStore = [(IMNotifyRecipientCommandProcessingPipelineComponent *)self _messageStore];
                v46 = gUID4;
                v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
                [_messageStore postUrgentNotificationsForMessageGUIDs:v26];
              }
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v16);
      }

      v27 = [v41 count] == 0;
      v28 = IMOSLoggingEnabled();
      if (v27)
      {
        if (v28)
        {
          v34 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            gUID5 = [inputCopy GUID];
            *buf = 138412290;
            v49 = gUID5;
            _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "Unable to mark message notified recipient with GUID=%@: message not found", buf, 0xCu);
          }
        }

        v36 = objc_alloc(MEMORY[0x277CCA9B8]);
        v37 = [v36 initWithDomain:*MEMORY[0x277D18DF8] code:5 userInfo:0];
        v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v37];
      }

      else
      {
        if (v28)
        {
          v29 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            gUID6 = [inputCopy GUID];
            *buf = 138412290;
            v49 = gUID6;
            _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Marked message with GUID=%@ as notified recipient", buf, 0xCu);
          }
        }

        firstObject = [v15 firstObject];
        [inputCopy setChat:firstObject];

        v32 = [v41 copy];
        [inputCopy setMessageItems:v32];

        v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
      }
    }

    else
    {
      v33 = objc_alloc(MEMORY[0x277CCA9B8]);
      gUID4 = [v33 initWithDomain:*MEMORY[0x277D18DF8] code:3 userInfo:0];
      v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:gUID4];
    }
  }

  v38 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_markMessageAsNotifiedRecipientAndNotify:(id)notify session:(id)session chat:(id)chat
{
  v20 = *MEMORY[0x277D85DE8];
  notifyCopy = notify;
  sessionCopy = session;
  chatCopy = chat;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = notifyCopy;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Mark message as notified recipient: %@", &v18, 0xCu);
    }
  }

  [notifyCopy setFlags:{objc_msgSend(notifyCopy, "flags") | 0x800000000}];
  if ([notifyCopy errorCode])
  {
    [notifyCopy setErrorCode:0];
  }

  pipelineResources = [(IMNotifyRecipientCommandProcessingPipelineComponent *)self pipelineResources];
  messageStore = [pipelineResources messageStore];
  v14 = [messageStore storeMessage:notifyCopy forceReplace:0 modifyError:1 modifyFlags:1 flagMask:0x800000000];

  pipelineResources2 = [(IMNotifyRecipientCommandProcessingPipelineComponent *)self pipelineResources];
  chatRegistry = [pipelineResources2 chatRegistry];
  [chatRegistry updateStateForChat:chatCopy hintMessage:0 shouldRebuildFailedMessageDate:0];

  v17 = *MEMORY[0x277D85DE8];
}

@end
@interface IMNotifyRecipientCommandProcessingPipelineComponent
- (IMNotifyRecipientCommandProcessingPipelineComponent)initWithPipelineResources:(id)a3;
- (id)_account;
- (id)_idsAccount;
- (id)_messageStore;
- (id)runIndividuallyWithInput:(id)a3;
- (void)_markMessageAsNotifiedRecipientAndNotify:(id)a3 session:(id)a4 chat:(id)a5;
@end

@implementation IMNotifyRecipientCommandProcessingPipelineComponent

- (IMNotifyRecipientCommandProcessingPipelineComponent)initWithPipelineResources:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IMNotifyRecipientCommandProcessingPipelineComponent;
  v6 = [(IMNotifyRecipientCommandProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pipelineResources, a3);
  }

  return v7;
}

- (id)_idsAccount
{
  v2 = [(IMNotifyRecipientCommandProcessingPipelineComponent *)self pipelineResources];
  v3 = [v2 imdAccount];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 idsAccount];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_account
{
  v2 = [(IMNotifyRecipientCommandProcessingPipelineComponent *)self pipelineResources];
  v3 = [v2 imdAccount];

  return v3;
}

- (id)_messageStore
{
  v2 = [(IMNotifyRecipientCommandProcessingPipelineComponent *)self pipelineResources];
  v3 = [v2 messageStore];

  return v3;
}

- (id)runIndividuallyWithInput:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v40 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [v40 GUID];
      *buf = 138412290;
      v49 = v5;
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
        v7 = [v40 GUID];
        *buf = 138412290;
        v49 = v7;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "    Ignoring notify recipient command for message: %@", buf, 0xCu);
      }
    }

    v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v40];
  }

  else
  {
    v9 = [v40 GUID];

    if (v9)
    {
      v10 = [v40 GUID];
      v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v11 = [(IMNotifyRecipientCommandProcessingPipelineComponent *)self pipelineResources];
      v12 = [v11 messageStore];
      v13 = [v12 chatsForMessageGUID:v10];

      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v49 = v10;
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
            v20 = [(IMNotifyRecipientCommandProcessingPipelineComponent *)self pipelineResources];
            v21 = [v20 messageStore];
            v22 = [v21 messageWithGUID:v10];

            if (v22)
            {
              [v41 addObject:v22];
              v23 = [(IMNotifyRecipientCommandProcessingPipelineComponent *)self _account];
              v24 = [v23 session];
              [(IMNotifyRecipientCommandProcessingPipelineComponent *)self _markMessageAsNotifiedRecipientAndNotify:v22 session:v24 chat:v19];

              if (([v22 isFromMe] & 1) == 0)
              {
                v25 = [(IMNotifyRecipientCommandProcessingPipelineComponent *)self _messageStore];
                v46 = v10;
                v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
                [v25 postUrgentNotificationsForMessageGUIDs:v26];
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
            v35 = [v40 GUID];
            *buf = 138412290;
            v49 = v35;
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
            v30 = [v40 GUID];
            *buf = 138412290;
            v49 = v30;
            _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Marked message with GUID=%@ as notified recipient", buf, 0xCu);
          }
        }

        v31 = [v15 firstObject];
        [v40 setChat:v31];

        v32 = [v41 copy];
        [v40 setMessageItems:v32];

        v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v40];
      }
    }

    else
    {
      v33 = objc_alloc(MEMORY[0x277CCA9B8]);
      v10 = [v33 initWithDomain:*MEMORY[0x277D18DF8] code:3 userInfo:0];
      v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v10];
    }
  }

  v38 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_markMessageAsNotifiedRecipientAndNotify:(id)a3 session:(id)a4 chat:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = v8;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Mark message as notified recipient: %@", &v18, 0xCu);
    }
  }

  [v8 setFlags:{objc_msgSend(v8, "flags") | 0x800000000}];
  if ([v8 errorCode])
  {
    [v8 setErrorCode:0];
  }

  v12 = [(IMNotifyRecipientCommandProcessingPipelineComponent *)self pipelineResources];
  v13 = [v12 messageStore];
  v14 = [v13 storeMessage:v8 forceReplace:0 modifyError:1 modifyFlags:1 flagMask:0x800000000];

  v15 = [(IMNotifyRecipientCommandProcessingPipelineComponent *)self pipelineResources];
  v16 = [v15 chatRegistry];
  [v16 updateStateForChat:v10 hintMessage:0 shouldRebuildFailedMessageDate:0];

  v17 = *MEMORY[0x277D85DE8];
}

@end
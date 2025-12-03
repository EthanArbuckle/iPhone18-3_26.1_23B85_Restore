@interface IMDeliveredQuietlyReceiptProcessingPipelineComponent
- (IMDeliveredQuietlyReceiptProcessingPipelineComponent)initWithPipelineResources:(id)resources;
- (id)_account;
- (id)_idsAccount;
- (id)_messageStore;
- (id)runIndividuallyWithInput:(id)input;
- (void)_markMessageAsDeliveredQuietlyAndNotify:(id)notify session:(id)session chat:(id)chat;
@end

@implementation IMDeliveredQuietlyReceiptProcessingPipelineComponent

- (IMDeliveredQuietlyReceiptProcessingPipelineComponent)initWithPipelineResources:(id)resources
{
  resourcesCopy = resources;
  v9.receiver = self;
  v9.super_class = IMDeliveredQuietlyReceiptProcessingPipelineComponent;
  v6 = [(IMDeliveredQuietlyReceiptProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pipelineResources, resources);
  }

  return v7;
}

- (id)_idsAccount
{
  pipelineResources = [(IMDeliveredQuietlyReceiptProcessingPipelineComponent *)self pipelineResources];
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
  pipelineResources = [(IMDeliveredQuietlyReceiptProcessingPipelineComponent *)self pipelineResources];
  imdAccount = [pipelineResources imdAccount];

  return imdAccount;
}

- (id)_messageStore
{
  pipelineResources = [(IMDeliveredQuietlyReceiptProcessingPipelineComponent *)self pipelineResources];
  messageStore = [pipelineResources messageStore];

  return messageStore;
}

- (id)runIndividuallyWithInput:(id)input
{
  v50 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      gUID = [inputCopy GUID];
      *buf = 138412290;
      v47 = gUID;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "<IMDeliveredQuietlyReceiptProcessingPipelineComponent> Started processing for Message GUID: %@", buf, 0xCu);
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
        v47 = gUID2;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "    Ignoring delivered quietly receipt for message: %@", buf, 0xCu);
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
      v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
      pipelineResources = [(IMDeliveredQuietlyReceiptProcessingPipelineComponent *)self pipelineResources];
      messageStore = [pipelineResources messageStore];
      v13 = [messageStore chatsForMessageGUID:gUID4];

      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v47 = gUID4;
          v48 = 2112;
          v49 = v13;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Found chats for messageID: %@   chats: %@", buf, 0x16u);
        }
      }

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v16)
      {
        v17 = *v42;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v42 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v41 + 1) + 8 * i);
            pipelineResources2 = [(IMDeliveredQuietlyReceiptProcessingPipelineComponent *)self pipelineResources];
            messageStore2 = [pipelineResources2 messageStore];
            v22 = [messageStore2 messageWithGUID:gUID4];

            if (v22)
            {
              [v40 addObject:v22];
              _account = [(IMDeliveredQuietlyReceiptProcessingPipelineComponent *)self _account];
              session = [_account session];
              [(IMDeliveredQuietlyReceiptProcessingPipelineComponent *)self _markMessageAsDeliveredQuietlyAndNotify:v22 session:session chat:v19];
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v41 objects:v45 count:16];
        }

        while (v16);
      }

      v25 = [v40 count] == 0;
      v26 = IMOSLoggingEnabled();
      if (v25)
      {
        if (v26)
        {
          v33 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            gUID5 = [inputCopy GUID];
            *buf = 138412290;
            v47 = gUID5;
            _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Unable to mark message delivered quietly with GUID=%@: message not found", buf, 0xCu);
          }
        }

        v35 = objc_alloc(MEMORY[0x277CCA9B8]);
        v36 = [v35 initWithDomain:*MEMORY[0x277D18DF8] code:5 userInfo:0];
        v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v36];
      }

      else
      {
        if (v26)
        {
          v27 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            gUID6 = [inputCopy GUID];
            *buf = 138412290;
            v47 = gUID6;
            _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Marked message with GUID=%@ as delivered quietly", buf, 0xCu);
          }
        }

        firstObject = [v15 firstObject];
        [inputCopy setChat:firstObject];

        v30 = [v40 copy];
        [inputCopy setMessageItems:v30];

        v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Unable to mark message delivered quietly with missing GUID", buf, 2u);
        }
      }

      v32 = objc_alloc(MEMORY[0x277CCA9B8]);
      gUID4 = [v32 initWithDomain:*MEMORY[0x277D18DF8] code:3 userInfo:0];
      v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:gUID4];
    }
  }

  v37 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_markMessageAsDeliveredQuietlyAndNotify:(id)notify session:(id)session chat:(id)chat
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
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Mark message as delivered quietly: %@", &v18, 0xCu);
    }
  }

  [notifyCopy setFlags:{objc_msgSend(notifyCopy, "flags") | 0x400000000}];
  if ([notifyCopy errorCode])
  {
    [notifyCopy setErrorCode:0];
  }

  pipelineResources = [(IMDeliveredQuietlyReceiptProcessingPipelineComponent *)self pipelineResources];
  messageStore = [pipelineResources messageStore];
  v14 = [messageStore storeMessage:notifyCopy forceReplace:0 modifyError:1 modifyFlags:1 flagMask:0x400000000];

  pipelineResources2 = [(IMDeliveredQuietlyReceiptProcessingPipelineComponent *)self pipelineResources];
  chatRegistry = [pipelineResources2 chatRegistry];
  [chatRegistry updateStateForChat:chatCopy hintMessage:0 shouldRebuildFailedMessageDate:0];

  v17 = *MEMORY[0x277D85DE8];
}

@end
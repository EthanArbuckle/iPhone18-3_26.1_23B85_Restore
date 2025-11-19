@interface IMDeliveredQuietlyReceiptProcessingPipelineComponent
- (IMDeliveredQuietlyReceiptProcessingPipelineComponent)initWithPipelineResources:(id)a3;
- (id)_account;
- (id)_idsAccount;
- (id)_messageStore;
- (id)runIndividuallyWithInput:(id)a3;
- (void)_markMessageAsDeliveredQuietlyAndNotify:(id)a3 session:(id)a4 chat:(id)a5;
@end

@implementation IMDeliveredQuietlyReceiptProcessingPipelineComponent

- (IMDeliveredQuietlyReceiptProcessingPipelineComponent)initWithPipelineResources:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IMDeliveredQuietlyReceiptProcessingPipelineComponent;
  v6 = [(IMDeliveredQuietlyReceiptProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pipelineResources, a3);
  }

  return v7;
}

- (id)_idsAccount
{
  v2 = [(IMDeliveredQuietlyReceiptProcessingPipelineComponent *)self pipelineResources];
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
  v2 = [(IMDeliveredQuietlyReceiptProcessingPipelineComponent *)self pipelineResources];
  v3 = [v2 imdAccount];

  return v3;
}

- (id)_messageStore
{
  v2 = [(IMDeliveredQuietlyReceiptProcessingPipelineComponent *)self pipelineResources];
  v3 = [v2 messageStore];

  return v3;
}

- (id)runIndividuallyWithInput:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v39 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [v39 GUID];
      *buf = 138412290;
      v47 = v5;
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
        v7 = [v39 GUID];
        *buf = 138412290;
        v47 = v7;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "    Ignoring delivered quietly receipt for message: %@", buf, 0xCu);
      }
    }

    v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v39];
  }

  else
  {
    v9 = [v39 GUID];

    if (v9)
    {
      v10 = [v39 GUID];
      v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v11 = [(IMDeliveredQuietlyReceiptProcessingPipelineComponent *)self pipelineResources];
      v12 = [v11 messageStore];
      v13 = [v12 chatsForMessageGUID:v10];

      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v47 = v10;
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
            v20 = [(IMDeliveredQuietlyReceiptProcessingPipelineComponent *)self pipelineResources];
            v21 = [v20 messageStore];
            v22 = [v21 messageWithGUID:v10];

            if (v22)
            {
              [v40 addObject:v22];
              v23 = [(IMDeliveredQuietlyReceiptProcessingPipelineComponent *)self _account];
              v24 = [v23 session];
              [(IMDeliveredQuietlyReceiptProcessingPipelineComponent *)self _markMessageAsDeliveredQuietlyAndNotify:v22 session:v24 chat:v19];
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
            v34 = [v39 GUID];
            *buf = 138412290;
            v47 = v34;
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
            v28 = [v39 GUID];
            *buf = 138412290;
            v47 = v28;
            _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Marked message with GUID=%@ as delivered quietly", buf, 0xCu);
          }
        }

        v29 = [v15 firstObject];
        [v39 setChat:v29];

        v30 = [v40 copy];
        [v39 setMessageItems:v30];

        v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v39];
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
      v10 = [v32 initWithDomain:*MEMORY[0x277D18DF8] code:3 userInfo:0];
      v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v10];
    }
  }

  v37 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_markMessageAsDeliveredQuietlyAndNotify:(id)a3 session:(id)a4 chat:(id)a5
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
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Mark message as delivered quietly: %@", &v18, 0xCu);
    }
  }

  [v8 setFlags:{objc_msgSend(v8, "flags") | 0x400000000}];
  if ([v8 errorCode])
  {
    [v8 setErrorCode:0];
  }

  v12 = [(IMDeliveredQuietlyReceiptProcessingPipelineComponent *)self pipelineResources];
  v13 = [v12 messageStore];
  v14 = [v13 storeMessage:v8 forceReplace:0 modifyError:1 modifyFlags:1 flagMask:0x400000000];

  v15 = [(IMDeliveredQuietlyReceiptProcessingPipelineComponent *)self pipelineResources];
  v16 = [v15 chatRegistry];
  [v16 updateStateForChat:v10 hintMessage:0 shouldRebuildFailedMessageDate:0];

  v17 = *MEMORY[0x277D85DE8];
}

@end
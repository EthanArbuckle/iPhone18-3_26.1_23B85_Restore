@interface IMAcceptChatCommandProcessingPipelineComponent
- (IMAcceptChatCommandProcessingPipelineComponent)initWithPipelineResources:(id)a3;
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IMAcceptChatCommandProcessingPipelineComponent

- (IMAcceptChatCommandProcessingPipelineComponent)initWithPipelineResources:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IMAcceptChatCommandProcessingPipelineComponent;
  v6 = [(IMAcceptChatCommandProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pipelineResources, a3);
  }

  return v7;
}

- (id)runIndividuallyWithInput:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 GUID];
  v6 = IMOSLoggingEnabled();
  if (!v5)
  {
    if (v6)
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Ignoring accept chat command, no message guid received", buf, 2u);
      }
    }

    goto LABEL_38;
  }

  if (v6)
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v5;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "<IMAcceptChatCommandProcessingPipelineComponent> Started processing accept chat command for message GUID: %@", buf, 0xCu);
    }
  }

  if (([v4 isFromMe] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v30 = v5;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Ignoring accept chat command not from me for message: %@", buf, 0xCu);
      }
    }

LABEL_38:
    v19 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v4];
    goto LABEL_39;
  }

  v8 = [(IMAcceptChatCommandProcessingPipelineComponent *)self pipelineResources];
  v9 = [v8 messageStore];
  v10 = [v9 chatsForMessageGUID:v5];

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v5;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Found chats for message guid: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v10;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Found chats: %@", buf, 0xCu);
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        if ([v17 isFiltered])
        {
          [v17 updateIsFiltered:0];
        }

        else if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Chat is already in known sender", buf, 2u);
          }
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  v19 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v4];
LABEL_39:

  v22 = *MEMORY[0x277D85DE8];

  return v19;
}

@end
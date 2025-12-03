@interface IMRecoverJunkCommandProcessingPipelineComponent
- (IMRecoverJunkCommandProcessingPipelineComponent)initWithPipelineResources:(id)resources;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IMRecoverJunkCommandProcessingPipelineComponent

- (IMRecoverJunkCommandProcessingPipelineComponent)initWithPipelineResources:(id)resources
{
  resourcesCopy = resources;
  v9.receiver = self;
  v9.super_class = IMRecoverJunkCommandProcessingPipelineComponent;
  v6 = [(IMRecoverJunkCommandProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pipelineResources, resources);
  }

  return v7;
}

- (id)runIndividuallyWithInput:(id)input
{
  v36 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  gUID = [inputCopy GUID];
  v4 = IMOSLoggingEnabled();
  if (!gUID)
  {
    if (v4)
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Ignoring recover junk chat command, no message guid received", buf, 2u);
      }
    }

    goto LABEL_40;
  }

  if (v4)
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v32 = gUID;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "<IMRecoverJunkCommandProcessingPipelineComponent> Started processing recover junk command for message GUID: %@", buf, 0xCu);
    }
  }

  if (([inputCopy isFromMe] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v32 = gUID;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Ignoring recover junk command not from me for message: %@", buf, 0xCu);
      }
    }

LABEL_40:
    v20 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
    goto LABEL_41;
  }

  pipelineResources = [(IMRecoverJunkCommandProcessingPipelineComponent *)self pipelineResources];
  messageStore = [pipelineResources messageStore];
  v8 = [messageStore chatsForMessageGUID:gUID];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v32 = gUID;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Found chats for message guid: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v32 = v8;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Found chats: %@", buf, 0xCu);
    }
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v12)
  {
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        if ([v15 isFiltered] == 2)
        {
          [v15 updateIsRecovered:1];
          mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
          isIntroductionsEnabled = [mEMORY[0x277D1A9B8] isIntroductionsEnabled];

          if (isIntroductionsEnabled)
          {
            [v15 updateIsFiltered:0];
          }

          else
          {
            [v15 updateIsFiltered:1];
          }
        }

        else if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            isFiltered = [v15 isFiltered];
            *buf = 134218242;
            v32 = isFiltered;
            v33 = 2112;
            v34 = v15;
            _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Chat is already out of Junk: %lld, not recovering: %@", buf, 0x16u);
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v12);
  }

  v20 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
LABEL_41:

  v23 = *MEMORY[0x277D85DE8];

  return v20;
}

@end
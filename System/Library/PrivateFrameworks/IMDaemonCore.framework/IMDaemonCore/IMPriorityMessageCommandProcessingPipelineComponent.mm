@interface IMPriorityMessageCommandProcessingPipelineComponent
- (IMPriorityMessageCommandProcessingPipelineComponent)initWithPipelineResources:(id)resources;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IMPriorityMessageCommandProcessingPipelineComponent

- (IMPriorityMessageCommandProcessingPipelineComponent)initWithPipelineResources:(id)resources
{
  resourcesCopy = resources;
  v9.receiver = self;
  v9.super_class = IMPriorityMessageCommandProcessingPipelineComponent;
  v6 = [(IMPriorityMessageCommandProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pipelineResources, resources);
  }

  return v7;
}

- (id)runIndividuallyWithInput:(id)input
{
  v23 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  priorityMessageGUIDs = [inputCopy priorityMessageGUIDs];
  v6 = priorityMessageGUIDs;
  if (!priorityMessageGUIDs || ![priorityMessageGUIDs count])
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Ignoring priority message command, no message guid received", &v21, 2u);
      }
    }

    goto LABEL_20;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v21 = 138412290;
      v22 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "<IMPriorityMessageCommandProcessingPipelineComponent> Started processing priority message command for message GUIDs: %@", &v21, 0xCu);
    }
  }

  if (([inputCopy isFromMe] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v21 = 138412290;
        v22 = v6;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Ignoring priority message command not from me for messages: %@", &v21, 0xCu);
      }
    }

LABEL_20:
    v17 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
    goto LABEL_21;
  }

  pipelineResources = [(IMPriorityMessageCommandProcessingPipelineComponent *)self pipelineResources];
  service = [pipelineResources service];
  __im_localDevice = [service __im_localDevice];
  pushToken = [__im_localDevice pushToken];

  if (pushToken && ([inputCopy fromToken], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqual:", pushToken), v12, (v13 & 1) != 0))
  {
    v14 = +[IMDFilteringController sharedInstance];
    [v14 priorityMessagesReceived:v6 forService:*MEMORY[0x277D1A620]];
  }

  else if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = 138412290;
      v22 = v6;
      _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Ignoring priority message command not from my local paired device for messages: %@", &v21, 0xCu);
    }
  }

  v17 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];

LABEL_21:
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end
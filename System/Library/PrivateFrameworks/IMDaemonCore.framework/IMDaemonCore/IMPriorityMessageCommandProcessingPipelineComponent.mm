@interface IMPriorityMessageCommandProcessingPipelineComponent
- (IMPriorityMessageCommandProcessingPipelineComponent)initWithPipelineResources:(id)a3;
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IMPriorityMessageCommandProcessingPipelineComponent

- (IMPriorityMessageCommandProcessingPipelineComponent)initWithPipelineResources:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IMPriorityMessageCommandProcessingPipelineComponent;
  v6 = [(IMPriorityMessageCommandProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pipelineResources, a3);
  }

  return v7;
}

- (id)runIndividuallyWithInput:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 priorityMessageGUIDs];
  v6 = v5;
  if (!v5 || ![v5 count])
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

  if (([v4 isFromMe] & 1) == 0)
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
    v17 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v4];
    goto LABEL_21;
  }

  v8 = [(IMPriorityMessageCommandProcessingPipelineComponent *)self pipelineResources];
  v9 = [v8 service];
  v10 = [v9 __im_localDevice];
  v11 = [v10 pushToken];

  if (v11 && ([v4 fromToken], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqual:", v11), v12, (v13 & 1) != 0))
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

  v17 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v4];

LABEL_21:
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end
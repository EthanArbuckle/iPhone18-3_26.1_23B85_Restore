@interface IMMarkAsReviewedCommandProcessingPipelineComponent
- (IMMarkAsReviewedCommandProcessingPipelineComponent)initWithPipelineResources:(id)resources;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IMMarkAsReviewedCommandProcessingPipelineComponent

- (IMMarkAsReviewedCommandProcessingPipelineComponent)initWithPipelineResources:(id)resources
{
  resourcesCopy = resources;
  v9.receiver = self;
  v9.super_class = IMMarkAsReviewedCommandProcessingPipelineComponent;
  v6 = [(IMMarkAsReviewedCommandProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pipelineResources, resources);
  }

  return v7;
}

- (id)runIndividuallyWithInput:(id)input
{
  v14 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  reviewedChatGUIDs = [inputCopy reviewedChatGUIDs];
  v5 = reviewedChatGUIDs;
  if (!reviewedChatGUIDs || ![reviewedChatGUIDs count])
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_17;
    }

    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Ignoring mark as reviewed chats command, no chat guids received", &v12, 2u);
    }

    goto LABEL_16;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "<IMMarkAsReviewedCommandProcessingPipelineComponent> Started processing mark as reviewed chats: %@", &v12, 0xCu);
    }
  }

  if ([inputCopy isFromMe])
  {
    v7 = +[IMDChatRegistry sharedInstance];
    [v7 updatePendingReviewForChatsWithGUIDs:v5 pendingReview:0];

    goto LABEL_17;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Ignoring mark as reviewed chat command as it is not from me for chats: %@", &v12, 0xCu);
    }

LABEL_16:
  }

LABEL_17:
  v9 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end
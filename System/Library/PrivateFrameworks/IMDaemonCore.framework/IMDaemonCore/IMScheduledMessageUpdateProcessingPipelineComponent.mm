@interface IMScheduledMessageUpdateProcessingPipelineComponent
- (IMScheduledMessageUpdateProcessingPipelineComponent)initWithPipelineResources:(id)a3;
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IMScheduledMessageUpdateProcessingPipelineComponent

- (IMScheduledMessageUpdateProcessingPipelineComponent)initWithPipelineResources:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IMScheduledMessageUpdateProcessingPipelineComponent;
  v6 = [(IMScheduledMessageUpdateProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pipelineResources, a3);
  }

  return v7;
}

- (id)runIndividuallyWithInput:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "<IMScheduledMessageUpdateProcessingPipelineParameter> Started processing", &v26, 2u);
    }
  }

  if ([v4 isFromMe])
  {
    v6 = [v4 GUID];
    v7 = [(IMScheduledMessageUpdateProcessingPipelineComponent *)self pipelineResources];
    v8 = [v7 messageStore];
    v9 = [v8 messageWithGUID:v6];

    if ([v6 length] && v9)
    {
      v10 = [v4 scheduleState];
      v11 = v10 == 0;

      if (v11)
      {
        if (IMOSLoggingEnabled())
        {
          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            LOWORD(v26) = 0;
            _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Not Processing. Did not find update for any property on scheduled message", &v26, 2u);
          }
        }

        v18 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v4];
      }

      else
      {
        v12 = [v4 scheduleState];
        [v9 setScheduleState:{objc_msgSend(v12, "intValue")}];

        v13 = [(IMScheduledMessageUpdateProcessingPipelineComponent *)self pipelineResources];
        v14 = [v13 messageStore];
        v15 = [v14 storeMessage:v9 forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0];

        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = [v4 scheduleState];
            v26 = 138412546;
            v27 = v6;
            v28 = 2112;
            v29 = v17;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Stored scheduled message %@ with scheduleState %@", &v26, 0x16u);
          }
        }

        v18 = objc_alloc_init(MEMORY[0x277D18E08]);
        [v18 fullfillWithValue:v4];
      }
    }

    else
    {
      v21 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22 = [v21 initWithDomain:*MEMORY[0x277D18DF8] code:5 userInfo:0];
      v18 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v22];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [v4 fromIdentifier];
        v26 = 138412290;
        v27 = v20;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Scheduled Message update is not from me, not processing: %@", &v26, 0xCu);
      }
    }

    v18 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v4];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v18;
}

@end
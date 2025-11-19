@interface IMSeenAsOffGridProcessingPipelineComponent
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IMSeenAsOffGridProcessingPipelineComponent

- (id)runIndividuallyWithInput:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v25 = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "<IMSeenAsOffGridProcessingPipelineComponent> Started processing", v25, 2u);
    }
  }

  if (([v3 seenAsOffGrid] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *v25 = 0;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "<IMSeenAsOffGridProcessingPipelineComponent> Not seen as off grid", v25, 2u);
      }
    }

    goto LABEL_29;
  }

  v5 = [v3 lastPublisherOfOffGridStatus];
  v6 = v5 == 0;

  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *v25 = 0;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "<IMSeenAsOffGridProcessingPipelineComponent> Missing identifier of last published status, not attempting to recover", v25, 2u);
      }
    }

LABEL_29:
    v20 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v3];
    goto LABEL_41;
  }

  v7 = [MEMORY[0x277D18A00] sharedInstance];
  v8 = [v7 pushToken];

  v9 = [v8 __imHexString];
  v10 = [v3 lastPublisherOfOffGridStatus];
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v9 isEqualToString:v10];
      v13 = @"NO";
      *v25 = 138412802;
      *&v25[4] = v8;
      *&v25[12] = 2112;
      if (v12)
      {
        v13 = @"YES";
      }

      *&v25[14] = v10;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "<IMSeenAsOffGridProcessingPipelineComponent> Our token %@, token of last publisher %@, same? %@", v25, 0x20u);
    }
  }

  if ([v9 isEqualToString:{v10, *v25}])
  {
    v14 = +[IMDAccountController sharedInstance];
    v15 = [v14 anySessionForServiceName:*MEMORY[0x277D1A628]];

    LODWORD(v14) = [v3 seenAsOffGrid];
    v16 = IMOSLoggingEnabled();
    if (v14)
    {
      if (v16)
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *v25 = 0;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "<IMSeenAsOffGridProcessingPipelineComponent> Sender sees us as off grid", v25, 2u);
        }
      }

      [v15 republishOffGridStatusIfNecessary];
    }

    else if (v16)
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *v25 = 0;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "<IMSeenAsOffGridProcessingPipelineComponent> Not seen as off grid", v25, 2u);
      }
    }

    v20 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v3];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *v25 = 0;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "<IMSeenAsOffGridProcessingPipelineComponent> Last published off grid status was not from our device, not attempting to recover", v25, 2u);
      }
    }

    v20 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v3];
  }

LABEL_41:
  v23 = *MEMORY[0x277D85DE8];

  return v20;
}

@end
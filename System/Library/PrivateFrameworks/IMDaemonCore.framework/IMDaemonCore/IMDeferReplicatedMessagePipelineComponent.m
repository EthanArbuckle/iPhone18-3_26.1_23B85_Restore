@interface IMDeferReplicatedMessagePipelineComponent
- (BOOL)_shouldDeferDeliveryWithInput:(id)a3;
- (id)_runIndividuallyWithInput:(id)a3;
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IMDeferReplicatedMessagePipelineComponent

- (id)runIndividuallyWithInput:(id)a3
{
  v4 = a3;
  if (![(IMDeferReplicatedMessagePipelineComponent *)self skipDeferral])
  {
    v5 = [MEMORY[0x277D19268] sharedInstance];
    if ([v5 isInternalInstall])
    {
      v6 = IMGetCachedDomainBoolForKey();

      if (v6)
      {
        v7 = objc_alloc_init(MEMORY[0x277D18E08]);
        v8 = dispatch_time(0, 10000000000);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_22B571104;
        block[3] = &unk_2787038F8;
        block[4] = self;
        v14 = v4;
        v9 = v7;
        v15 = v9;
        dispatch_after(v8, MEMORY[0x277D85CD0], block);
        v10 = v15;
        v11 = v9;

        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v11 = [(IMDeferReplicatedMessagePipelineComponent *)self _runIndividuallyWithInput:v4];
LABEL_7:

  return v11;
}

- (id)_runIndividuallyWithInput:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "<IMDeferReplicatedMessagePipelineComponent> Started processing", &v15, 2u);
    }
  }

  if ([(IMDeferReplicatedMessagePipelineComponent *)self _shouldDeferDeliveryWithInput:v4])
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [v4 GUID];
        v15 = 138412290;
        v16 = v7;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "<IMDeferReplicatedMessagePipelineComponent> Deferring message %@", &v15, 0xCu);
      }
    }

    v8 = objc_alloc(MEMORY[0x277CCA9B8]);
    v9 = [v8 initWithDomain:*MEMORY[0x277D18DF8] code:18 userInfo:0];
    v10 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v9];
  }

  else
  {
    v11 = [(IMDeferReplicatedMessagePipelineComponent *)self replicationSourceServiceNameOverride];

    if (v11)
    {
      v12 = [(IMDeferReplicatedMessagePipelineComponent *)self replicationSourceServiceNameOverride];
      [v4 setReplicationSourceServiceName:v12];
    }

    v10 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v4];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)_shouldDeferDeliveryWithInput:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 replicationSourceServiceName];
  v6 = [v5 length];

  if (!v6)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = [v4 GUID];
        v25 = 138412290;
        v26 = v11;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "<IMDeferReplicatedMessagePipelineComponent> Allowing instant delivery of %@, message is not replicated.", &v25, 0xCu);
      }

      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v7 = [MEMORY[0x277D19268] sharedInstance];
  if ([v7 isInternalInstall])
  {
    v8 = IMGetCachedDomainBoolForKey();

    if (v8)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = [v4 GUID];
          v25 = 138412290;
          v26 = v10;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "<IMDeferReplicatedMessagePipelineComponent> Allowing instant delivery of %@, default set", &v25, 0xCu);
        }

LABEL_22:

        goto LABEL_23;
      }

      goto LABEL_23;
    }
  }

  else
  {
  }

  if (![v4 isSOS])
  {
    if ([(IMDeferReplicatedMessagePipelineComponent *)self skipDeferral])
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v13 = [v4 GUID];
          v25 = 138412290;
          v26 = v13;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "<IMDeferReplicatedMessagePipelineComponent> Allowing instant delivery of %@, skipDeferral is set", &v25, 0xCu);
        }

        goto LABEL_22;
      }

      goto LABEL_23;
    }

    v17 = +[IMDMessageStore sharedInstance];
    v18 = [v4 GUID];
    v19 = [v17 messageWithGUID:v18];

    v14 = v19 == 0;
    if (!v19)
    {
LABEL_34:

      goto LABEL_24;
    }

    v20 = [v4 replicationSourceServiceName];
    if ([v20 isEqualToString:*MEMORY[0x277D1A610]])
    {
      v21 = [v19 service];
      v22 = [v21 isEqualToString:*MEMORY[0x277D1A608]];

      if (!v22)
      {
        goto LABEL_30;
      }

      v20 = [v19 service];
      [v4 setReplicationSourceServiceName:v20];
    }

LABEL_30:
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = [v4 GUID];
        v25 = 138412546;
        v26 = v24;
        v27 = 2112;
        v28 = v19;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "<IMDeferReplicatedMessagePipelineComponent> Allowing instant delivery of %@, found existing item %@", &v25, 0x16u);
      }
    }

    goto LABEL_34;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = [v4 GUID];
      v25 = 138412290;
      v26 = v12;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "<IMDeferReplicatedMessagePipelineComponent> Allowing instant delivery of %@, message is SOS", &v25, 0xCu);
    }

    goto LABEL_22;
  }

LABEL_23:
  v14 = 0;
LABEL_24:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

@end
@interface IMJunkMessageProcessingPipelineComponent
- (IMJunkMessageProcessingPipelineComponent)initWithIDSTrustedData:(id)a3;
- (id)runIndividuallyWithInput:(id)a3;
- (void)_trackSendEventForSender:(id)a3 andReceiver:(id)a4;
@end

@implementation IMJunkMessageProcessingPipelineComponent

- (IMJunkMessageProcessingPipelineComponent)initWithIDSTrustedData:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = IMJunkMessageProcessingPipelineComponent;
  v6 = [(IMJunkMessageProcessingPipelineComponent *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_idsTrustedData, a3);
    v8 = +[IMDTrustKitDecisioningManager sharedManager];
    trustKitManager = v7->_trustKitManager;
    v7->_trustKitManager = v8;
  }

  return v7;
}

- (id)runIndividuallyWithInput:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v63) = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "<IMJunkMessageProcessingPipelineComponent> Started processing", &v63, 2u);
    }
  }

  if (([MEMORY[0x277D1AC58] isiMessageJunkFilterEnabled] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        LOWORD(v63) = 0;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Oscar is disabled", &v63, 2u);
      }
    }

    goto LABEL_45;
  }

  v6 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v7 = [v6 isIntroductionsEnabled];

  if (v7)
  {
    v8 = [(IMJunkMessageProcessingPipelineComponent *)self trustKitManager];
    v9 = [v8 isJunkFilteringEnabled];

    if ((v9 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          LOWORD(v63) = 0;
          _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Spam filter is disabled", &v63, 2u);
        }
      }

      goto LABEL_45;
    }
  }

  v10 = [MEMORY[0x277D19268] sharedInstance];
  v11 = [v10 isInternalInstall];

  if (v11 && (v12 = *MEMORY[0x277D19D90], v13 = *MEMORY[0x277D19D50], IMGetDomainBoolForKey()))
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LOWORD(v63) = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Default value set: oscar enabled.", &v63, 2u);
      }
    }

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v17 = [v4 messageItems];
  if ([v17 count] == 1)
  {
    v18 = [v4 messageItems];
    v19 = [v18 firstObject];
    v20 = [v19 isTypingMessage];

    if (v20)
    {
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          LOWORD(v63) = 0;
          _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Message is a typing indicator, not processing for junk", &v63, 2u);
        }
      }

LABEL_45:
      v28 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v4];
      goto LABEL_46;
    }
  }

  else
  {
  }

  if ([v4 isFromMe])
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [v4 fromIdentifier];
        v63 = 138412290;
        v64 = v23;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Message is a message from me, not processing for junk: %@", &v63, 0xCu);
      }
    }

    goto LABEL_45;
  }

  v24 = [MEMORY[0x277D1AAA8] sharedInstance];
  [v24 trackiMessageJunkEvent:2];

  LODWORD(v24) = [(IMDiMessageIDSTrustedData *)self->_idsTrustedData isFromTrustedSender];
  v25 = IMOSLoggingEnabled();
  if ((v15 & v24) != 0)
  {
    if (v25)
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        LOWORD(v63) = 0;
        _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Message is from trusted sender", &v63, 2u);
      }
    }

    goto LABEL_45;
  }

  if (v25)
  {
    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = [v4 fromIdentifier];
      v63 = 138412290;
      v64 = v32;
      _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Message is not from a trusted sender, received from: %@", &v63, 0xCu);
    }
  }

  v33 = [v4 chat];
  if (!v33)
  {
    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        LOWORD(v63) = 0;
        _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "Could not find chat, bailing", &v63, 2u);
      }
    }

    goto LABEL_75;
  }

  if ([v4 hadChat])
  {
    if ([v33 isFiltered] == 2)
    {
      v34 = [v4 fromIdentifier];
      v35 = [v4 toIdentifier];
      [(IMJunkMessageProcessingPipelineComponent *)self _trackSendEventForSender:v34 andReceiver:v35];

      v36 = +[IMDSpamFilteringHelper sharedHelper];
      [v36 presentDebugUI];

      v37 = +[IMDSpamFilteringHelper sharedHelper];
      v38 = [v33 spamDetectionSource];
      [v37 recordJunkMetricsForSpamDetectionSource:v38 service:*MEMORY[0x277D1A620]];
    }

    else
    {
      if ([v33 isFiltered])
      {
        goto LABEL_71;
      }

      v37 = [MEMORY[0x277D1AAA8] sharedInstance];
      [v37 trackiMessageJunkEvent:12];
    }

LABEL_71:
    if (IMOSLoggingEnabled())
    {
      v41 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = [v33 isFiltered];
        v63 = 134217984;
        v64 = v42;
        _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, "Chat already exists, filtered as: %lld", &v63, 0xCu);
      }
    }

    goto LABEL_75;
  }

  if (![v33 isBusinessChat])
  {
    v44 = [v4 fromIdentifier];
    IsKnownContact = _IMDCoreSpotlightIsKnownContact();

    if (IsKnownContact)
    {
      v46 = [MEMORY[0x277D1AAA8] sharedInstance];
      [v46 trackiMessageJunkEvent:12];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v47 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          LOWORD(v63) = 0;
          _os_log_impl(&dword_22B4CC000, v47, OS_LOG_TYPE_INFO, "Message is not from known sender", &v63, 2u);
        }
      }

      v48 = +[IMDAccountController sharedInstance];
      v49 = [v4 toIdentifier];
      v50 = [v4 account];
      v51 = [v48 receiverIsCandidateForJunk:v49 forAccount:v50];

      if ((v51 & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v60 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
          {
            v61 = [v4 toIdentifier];
            v63 = 138412290;
            v64 = v61;
            _os_log_impl(&dword_22B4CC000, v60, OS_LOG_TYPE_INFO, "Receiver: %@ is not candidate for Oscar", &v63, 0xCu);
          }
        }

        v62 = [MEMORY[0x277D1AAA8] sharedInstance];
        [v62 trackiMessageJunkEvent:13];

        v43 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v4];
        goto LABEL_76;
      }

      v52 = [MEMORY[0x277D1AC90] sharedInstance];
      [v52 sendReceivedJunkEventIfNeeded];

      [v33 setSpamDetectionSource:2];
      v53 = [v33 lastMessage];
      v54 = [v53 guid];
      [v33 setSpamDetectedMessage:v54];

      [v33 updateIsFiltered:2];
      if (IMOSLoggingEnabled())
      {
        v55 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          LOWORD(v63) = 0;
          _os_log_impl(&dword_22B4CC000, v55, OS_LOG_TYPE_INFO, "Chat set as junk", &v63, 2u);
        }
      }

      v56 = +[IMDSpamFilteringHelper sharedHelper];
      [v56 presentDebugUI];

      v57 = +[IMDSpamFilteringHelper sharedHelper];
      [v57 recordJunkMetricsForSpamDetectionSource:2 service:*MEMORY[0x277D1A620]];

      v58 = +[IMDChatRegistry sharedInstance];
      [v58 updateStateForChat:v33 forcePost:1 shouldRebuildFailedMessageDate:0 shouldCalculateUnreadCount:1];

      v46 = [v4 fromIdentifier];
      v59 = [v4 toIdentifier];
      [(IMJunkMessageProcessingPipelineComponent *)self _trackSendEventForSender:v46 andReceiver:v59];
    }

    v28 = objc_alloc_init(MEMORY[0x277D18E08]);
    [v28 fullfillWithValue:v4];
    goto LABEL_77;
  }

  if (IMOSLoggingEnabled())
  {
    v40 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      LOWORD(v63) = 0;
      _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_INFO, "Don't mark business chats as junk", &v63, 2u);
    }
  }

LABEL_75:
  v43 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v4];
LABEL_76:
  v28 = v43;
LABEL_77:

LABEL_46:
  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (void)_trackSendEventForSender:(id)a3 andReceiver:(id)a4
{
  v18[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:0xFFFFFFFFLL];
  v8 = MEMORY[0x231897A50](v5);
  if (v8 && MEMORY[0x231897A50](v6))
  {
    v9 = MEMORY[0x277CCABB0];
    v10 = IMCountryCodeForNumber();
    v11 = IMCountryCodeForNumber();
    v12 = [v9 numberWithBool:{objc_msgSend(v10, "isEqualToString:", v11)}];

    v7 = v12;
  }

  v13 = [MEMORY[0x277D1AAA8] sharedInstance];
  v17[0] = &unk_283F4EB10;
  v14 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  v17[1] = &unk_283F4EB28;
  v18[0] = v14;
  v18[1] = v7;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  [v13 trackiMessageJunkEvent:1 withDictionary:v15];

  v16 = *MEMORY[0x277D85DE8];
}

@end
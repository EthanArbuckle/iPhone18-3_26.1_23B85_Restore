@interface IMJunkMessageProcessingPipelineComponent
- (IMJunkMessageProcessingPipelineComponent)initWithIDSTrustedData:(id)data;
- (id)runIndividuallyWithInput:(id)input;
- (void)_trackSendEventForSender:(id)sender andReceiver:(id)receiver;
@end

@implementation IMJunkMessageProcessingPipelineComponent

- (IMJunkMessageProcessingPipelineComponent)initWithIDSTrustedData:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = IMJunkMessageProcessingPipelineComponent;
  v6 = [(IMJunkMessageProcessingPipelineComponent *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_idsTrustedData, data);
    v8 = +[IMDTrustKitDecisioningManager sharedManager];
    trustKitManager = v7->_trustKitManager;
    v7->_trustKitManager = v8;
  }

  return v7;
}

- (id)runIndividuallyWithInput:(id)input
{
  v65 = *MEMORY[0x277D85DE8];
  inputCopy = input;
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

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isIntroductionsEnabled = [mEMORY[0x277D1A9B8] isIntroductionsEnabled];

  if (isIntroductionsEnabled)
  {
    trustKitManager = [(IMJunkMessageProcessingPipelineComponent *)self trustKitManager];
    isJunkFilteringEnabled = [trustKitManager isJunkFilteringEnabled];

    if ((isJunkFilteringEnabled & 1) == 0)
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

  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  isInternalInstall = [mEMORY[0x277D19268] isInternalInstall];

  if (isInternalInstall && (v12 = *MEMORY[0x277D19D90], v13 = *MEMORY[0x277D19D50], IMGetDomainBoolForKey()))
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

  messageItems = [inputCopy messageItems];
  if ([messageItems count] == 1)
  {
    messageItems2 = [inputCopy messageItems];
    firstObject = [messageItems2 firstObject];
    isTypingMessage = [firstObject isTypingMessage];

    if (isTypingMessage)
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
      v28 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
      goto LABEL_46;
    }
  }

  else
  {
  }

  if ([inputCopy isFromMe])
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        fromIdentifier = [inputCopy fromIdentifier];
        v63 = 138412290;
        v64 = fromIdentifier;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Message is a message from me, not processing for junk: %@", &v63, 0xCu);
      }
    }

    goto LABEL_45;
  }

  mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
  [mEMORY[0x277D1AAA8] trackiMessageJunkEvent:2];

  LODWORD(mEMORY[0x277D1AAA8]) = [(IMDiMessageIDSTrustedData *)self->_idsTrustedData isFromTrustedSender];
  v25 = IMOSLoggingEnabled();
  if ((v15 & mEMORY[0x277D1AAA8]) != 0)
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
      fromIdentifier2 = [inputCopy fromIdentifier];
      v63 = 138412290;
      v64 = fromIdentifier2;
      _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Message is not from a trusted sender, received from: %@", &v63, 0xCu);
    }
  }

  chat = [inputCopy chat];
  if (!chat)
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

  if ([inputCopy hadChat])
  {
    if ([chat isFiltered] == 2)
    {
      fromIdentifier3 = [inputCopy fromIdentifier];
      toIdentifier = [inputCopy toIdentifier];
      [(IMJunkMessageProcessingPipelineComponent *)self _trackSendEventForSender:fromIdentifier3 andReceiver:toIdentifier];

      v36 = +[IMDSpamFilteringHelper sharedHelper];
      [v36 presentDebugUI];

      mEMORY[0x277D1AAA8]2 = +[IMDSpamFilteringHelper sharedHelper];
      spamDetectionSource = [chat spamDetectionSource];
      [mEMORY[0x277D1AAA8]2 recordJunkMetricsForSpamDetectionSource:spamDetectionSource service:*MEMORY[0x277D1A620]];
    }

    else
    {
      if ([chat isFiltered])
      {
        goto LABEL_71;
      }

      mEMORY[0x277D1AAA8]2 = [MEMORY[0x277D1AAA8] sharedInstance];
      [mEMORY[0x277D1AAA8]2 trackiMessageJunkEvent:12];
    }

LABEL_71:
    if (IMOSLoggingEnabled())
    {
      v41 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        isFiltered = [chat isFiltered];
        v63 = 134217984;
        v64 = isFiltered;
        _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, "Chat already exists, filtered as: %lld", &v63, 0xCu);
      }
    }

    goto LABEL_75;
  }

  if (![chat isBusinessChat])
  {
    fromIdentifier4 = [inputCopy fromIdentifier];
    IsKnownContact = _IMDCoreSpotlightIsKnownContact();

    if (IsKnownContact)
    {
      mEMORY[0x277D1AAA8]3 = [MEMORY[0x277D1AAA8] sharedInstance];
      [mEMORY[0x277D1AAA8]3 trackiMessageJunkEvent:12];
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
      toIdentifier2 = [inputCopy toIdentifier];
      account = [inputCopy account];
      v51 = [v48 receiverIsCandidateForJunk:toIdentifier2 forAccount:account];

      if ((v51 & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v60 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
          {
            toIdentifier3 = [inputCopy toIdentifier];
            v63 = 138412290;
            v64 = toIdentifier3;
            _os_log_impl(&dword_22B4CC000, v60, OS_LOG_TYPE_INFO, "Receiver: %@ is not candidate for Oscar", &v63, 0xCu);
          }
        }

        mEMORY[0x277D1AAA8]4 = [MEMORY[0x277D1AAA8] sharedInstance];
        [mEMORY[0x277D1AAA8]4 trackiMessageJunkEvent:13];

        v43 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
        goto LABEL_76;
      }

      mEMORY[0x277D1AC90] = [MEMORY[0x277D1AC90] sharedInstance];
      [mEMORY[0x277D1AC90] sendReceivedJunkEventIfNeeded];

      [chat setSpamDetectionSource:2];
      lastMessage = [chat lastMessage];
      guid = [lastMessage guid];
      [chat setSpamDetectedMessage:guid];

      [chat updateIsFiltered:2];
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
      [v58 updateStateForChat:chat forcePost:1 shouldRebuildFailedMessageDate:0 shouldCalculateUnreadCount:1];

      mEMORY[0x277D1AAA8]3 = [inputCopy fromIdentifier];
      toIdentifier4 = [inputCopy toIdentifier];
      [(IMJunkMessageProcessingPipelineComponent *)self _trackSendEventForSender:mEMORY[0x277D1AAA8]3 andReceiver:toIdentifier4];
    }

    v28 = objc_alloc_init(MEMORY[0x277D18E08]);
    [v28 fullfillWithValue:inputCopy];
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
  v43 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
LABEL_76:
  v28 = v43;
LABEL_77:

LABEL_46:
  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (void)_trackSendEventForSender:(id)sender andReceiver:(id)receiver
{
  v18[2] = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  receiverCopy = receiver;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:0xFFFFFFFFLL];
  v8 = MEMORY[0x231897A50](senderCopy);
  if (v8 && MEMORY[0x231897A50](receiverCopy))
  {
    v9 = MEMORY[0x277CCABB0];
    v10 = IMCountryCodeForNumber();
    v11 = IMCountryCodeForNumber();
    v12 = [v9 numberWithBool:{objc_msgSend(v10, "isEqualToString:", v11)}];

    v7 = v12;
  }

  mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
  v17[0] = &unk_283F4EB10;
  v14 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  v17[1] = &unk_283F4EB28;
  v18[0] = v14;
  v18[1] = v7;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  [mEMORY[0x277D1AAA8] trackiMessageJunkEvent:1 withDictionary:v15];

  v16 = *MEMORY[0x277D85DE8];
}

@end
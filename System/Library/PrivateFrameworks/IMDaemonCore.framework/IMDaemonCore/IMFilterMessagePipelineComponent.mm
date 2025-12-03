@interface IMFilterMessagePipelineComponent
- (IMFilterMessagePipelineComponent)initWithMessageStore:(id)store filteringContext:(id)context;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IMFilterMessagePipelineComponent

- (IMFilterMessagePipelineComponent)initWithMessageStore:(id)store filteringContext:(id)context
{
  storeCopy = store;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = IMFilterMessagePipelineComponent;
  v9 = [(IMFilterMessagePipelineComponent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_messageStore, store);
    objc_storeStrong(&v10->_filteringContext, context);
  }

  return v10;
}

- (id)runIndividuallyWithInput:(id)input
{
  v56 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "<IMFilterMessagePipelineParameter> Started processing", buf, 2u);
    }
  }

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isIntroductionsEnabled = [mEMORY[0x277D1A9B8] isIntroductionsEnabled];

  if ((isIntroductionsEnabled & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Introductions is not enabled", buf, 2u);
      }
    }

    goto LABEL_32;
  }

  decisioningManager = self->_decisioningManager;
  if (!decisioningManager)
  {
    v9 = +[IMDTrustKitDecisioningManager sharedManager];
    v10 = self->_decisioningManager;
    self->_decisioningManager = v9;

    decisioningManager = self->_decisioningManager;
  }

  if (![(IMDTrustKitDecisioningManager *)decisioningManager isJunkFilteringEnabled])
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Message Junk filtering setting is disabled", buf, 2u);
      }
    }

    goto LABEL_32;
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
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Message is a typing indicator, not processing for filtering", buf, 2u);
        }
      }

LABEL_32:
      v20 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
      goto LABEL_33;
    }
  }

  else
  {
  }

  if ([inputCopy isFromMe])
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        fromIdentifier = [inputCopy fromIdentifier];
        *buf = 138412290;
        v55 = fromIdentifier;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Message is a message from me, not processing for filtering: %@", buf, 0xCu);
      }
    }

    goto LABEL_32;
  }

  chat = [inputCopy chat];
  v24 = chat;
  if (chat)
  {
    if (![chat isFiltered] || objc_msgSend(v24, "isFiltered") == 2 || objc_msgSend(v24, "isBusinessChat"))
    {
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Skipping CTS check", buf, 2u);
        }
      }

      v26 = 1;
      goto LABEL_51;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Could not find chat, using context instead", buf, 2u);
      }
    }

    [(IMFilterMessagePipelineComponentContext *)self->_filteringContext setWasContextUsed:1];
  }

  v26 = 0;
LABEL_51:
  messageItems3 = [inputCopy messageItems];
  v29 = [messageItems3 count] == 0;

  if (v29)
  {
    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "No message provided", buf, 2u);
      }
    }

    v20 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
  }

  else
  {
    messageItems4 = [inputCopy messageItems];
    firstObject2 = [messageItems4 firstObject];

    v32 = objc_alloc_init(MEMORY[0x277D18E08]);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_22B5D9298;
    aBlock[3] = &unk_2787051F0;
    aBlock[4] = self;
    v33 = v24;
    v50 = v33;
    v34 = firstObject2;
    v51 = v34;
    v35 = v32;
    v52 = v35;
    v36 = inputCopy;
    v53 = v36;
    v37 = _Block_copy(aBlock);
    v38 = v37;
    if (v26)
    {
      (*(v37 + 2))(v37);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v40 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_INFO, "Performing CTS check", buf, 2u);
        }
      }

      v42 = +[IMDCommunicationTrustManager sharedManager];
      sender = [v34 sender];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = sub_22B5D9B28;
      v43[3] = &unk_278705EC8;
      v43[4] = self;
      v44 = v33;
      v45 = v35;
      v46 = v36;
      v47 = v34;
      v48 = v38;
      [v42 requestDecisionForSender:sender completion:v43];
    }

    v20 = v35;
  }

LABEL_33:
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

@end
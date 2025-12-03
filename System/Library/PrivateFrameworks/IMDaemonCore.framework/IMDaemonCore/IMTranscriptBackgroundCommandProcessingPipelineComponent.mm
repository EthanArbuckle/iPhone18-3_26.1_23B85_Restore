@interface IMTranscriptBackgroundCommandProcessingPipelineComponent
- (IMTranscriptBackgroundCommandProcessingPipelineComponent)initWithPipelineResources:(id)resources;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IMTranscriptBackgroundCommandProcessingPipelineComponent

- (IMTranscriptBackgroundCommandProcessingPipelineComponent)initWithPipelineResources:(id)resources
{
  resourcesCopy = resources;
  v8.receiver = self;
  v8.super_class = IMTranscriptBackgroundCommandProcessingPipelineComponent;
  v5 = [(IMTranscriptBackgroundCommandProcessingPipelineComponent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(IMTranscriptBackgroundCommandProcessingPipelineComponent *)v5 setPipelineResources:resourcesCopy];
  }

  return v6;
}

- (id)runIndividuallyWithInput:(id)input
{
  v60 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  account = [inputCopy account];
  transcriptBackgroundCommand = [inputCopy transcriptBackgroundCommand];
  type = [transcriptBackgroundCommand type];
  v5Type = [type type];

  chatId = 0;
  if (v5Type > 1)
  {
    if (v5Type == 2)
    {
      transcriptBackgroundCommand2 = [inputCopy transcriptBackgroundCommand];
      type2 = [transcriptBackgroundCommand2 type];
      request = [type2 request];
    }

    else
    {
      if (v5Type != 3)
      {
        goto LABEL_11;
      }

      transcriptBackgroundCommand2 = [inputCopy transcriptBackgroundCommand];
      type2 = [transcriptBackgroundCommand2 type];
      request = [type2 requestResponse];
    }
  }

  else if (v5Type)
  {
    if (v5Type != 1)
    {
      goto LABEL_11;
    }

    transcriptBackgroundCommand2 = [inputCopy transcriptBackgroundCommand];
    type2 = [transcriptBackgroundCommand2 type];
    request = [type2 refresh];
  }

  else
  {
    transcriptBackgroundCommand2 = [inputCopy transcriptBackgroundCommand];
    type2 = [transcriptBackgroundCommand2 type];
    request = [type2 update];
  }

  v11 = request;
  chatId = [request chatId];

LABEL_11:
  account2 = [inputCopy account];
  service = [account2 service];
  internalName = [service internalName];
  v15 = internalName;
  v16 = *MEMORY[0x277D1A620];
  if (internalName)
  {
    v16 = internalName;
  }

  v51 = v16;

  if (!chatId)
  {
    v19 = +[IMDChatRegistry sharedInstance];
    fromIdentifier = [inputCopy fromIdentifier];
    _stripFZIDPrefix = [fromIdentifier _stripFZIDPrefix];
    account3 = [inputCopy account];
    v26 = [v19 existingChatForID:_stripFZIDPrefix account:account3];

LABEL_27:
    goto LABEL_28;
  }

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isOneChatEnabled = [mEMORY[0x277D1A9B8] isOneChatEnabled];

  v19 = +[IMDChatRegistry sharedInstance];
  v20 = [v19 existingChatWithGroupID:chatId onService:v51];
  fromIdentifier = v20;
  if (isOneChatEnabled)
  {
    if (!v20)
    {
      _stripFZIDPrefix = +[IMDChatRegistry sharedInstance];
      _stripFZIDPrefix2 = [chatId _stripFZIDPrefix];
      v24 = [_stripFZIDPrefix existingChatWithIdentifier:_stripFZIDPrefix2 account:account];
      v25 = v24;
      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v49 = +[IMDChatRegistry sharedInstance];
        _stripFZIDPrefix3 = [chatId _stripFZIDPrefix];
        v26 = [v49 existingChatForID:_stripFZIDPrefix3 account:account];
      }

      goto LABEL_25;
    }
  }

  else if (!v20)
  {
    _stripFZIDPrefix = +[IMDChatRegistry sharedInstance];
    v28 = [_stripFZIDPrefix existingChatWithGroupID:chatId onService:*MEMORY[0x277D1A608]];
    _stripFZIDPrefix2 = v28;
    if (v28)
    {
      v26 = v28;
LABEL_26:

      goto LABEL_27;
    }

    v25 = +[IMDChatRegistry sharedInstance];
    _stripFZIDPrefix4 = [chatId _stripFZIDPrefix];
    v26 = [v25 existingChatWithIdentifier:_stripFZIDPrefix4 account:account];

LABEL_25:
    goto LABEL_26;
  }

  fromIdentifier = v20;
  v26 = fromIdentifier;
LABEL_28:

  if (([inputCopy isFromMe] & 1) != 0 || v26 && !objc_msgSend(v26, "isFiltered"))
  {
    v31 = 1;
  }

  else
  {
    v32 = +[IMDChatRegistry sharedInstance];
    fromIdentifier2 = [inputCopy fromIdentifier];
    if ([v32 hasKnownSenderChatWithChatIdentifier:fromIdentifier2])
    {
      v31 = 1;
    }

    else
    {
      v34 = +[IMDChatRegistry sharedInstance];
      fromIdentifier3 = [inputCopy fromIdentifier];
      _stripFZIDPrefix5 = [fromIdentifier3 _stripFZIDPrefix];
      v31 = [v34 _hasSavedContactCardForHandle:_stripFZIDPrefix5];
    }
  }

  v37 = [MEMORY[0x277D1AB80] contextWithKnownSender:v31 serviceName:v51];
  if (IMOSLoggingEnabled())
  {
    v38 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      fromIdentifier4 = [inputCopy fromIdentifier];
      v40 = @"NO";
      *buf = 138413058;
      v53 = fromIdentifier4;
      v54 = 2112;
      if (v31)
      {
        v40 = @"YES";
      }

      v55 = chatId;
      v56 = 2112;
      v57 = v40;
      v58 = 2112;
      v59 = v26;
      _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Processing background commanded from: %@. Found chat for chatID: %@. Known sender: %@, chat: %@", buf, 0x2Au);
    }
  }

  if (v26)
  {
    v41 = [IMBlastDoorTranscriptBackgroundCommand alloc];
    transcriptBackgroundCommand3 = [inputCopy transcriptBackgroundCommand];
    v43 = [(IMBlastDoorTranscriptBackgroundCommand *)v41 initWith:transcriptBackgroundCommand3];

    serviceSession = [inputCopy serviceSession];
    fromIdentifier5 = [inputCopy fromIdentifier];
    [serviceSession receiveIncomingBlastdoorBackgroundCommand:v43 for:v26 sender:fromIdentifier5 senderContext:v37];
  }

  else
  {
    v43 = IMLogHandleForCategory();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      sub_22B7CF574(chatId, v43);
    }
  }

  v46 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
  v47 = *MEMORY[0x277D85DE8];

  return v46;
}

@end
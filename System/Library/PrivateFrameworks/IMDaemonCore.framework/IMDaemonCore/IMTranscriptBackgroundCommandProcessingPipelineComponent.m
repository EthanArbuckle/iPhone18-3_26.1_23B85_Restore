@interface IMTranscriptBackgroundCommandProcessingPipelineComponent
- (IMTranscriptBackgroundCommandProcessingPipelineComponent)initWithPipelineResources:(id)a3;
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IMTranscriptBackgroundCommandProcessingPipelineComponent

- (IMTranscriptBackgroundCommandProcessingPipelineComponent)initWithPipelineResources:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = IMTranscriptBackgroundCommandProcessingPipelineComponent;
  v5 = [(IMTranscriptBackgroundCommandProcessingPipelineComponent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(IMTranscriptBackgroundCommandProcessingPipelineComponent *)v5 setPipelineResources:v4];
  }

  return v6;
}

- (id)runIndividuallyWithInput:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v50 = [v3 account];
  v4 = [v3 transcriptBackgroundCommand];
  v5 = [v4 type];
  v6 = [v5 type];

  v7 = 0;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v8 = [v3 transcriptBackgroundCommand];
      v9 = [v8 type];
      v10 = [v9 request];
    }

    else
    {
      if (v6 != 3)
      {
        goto LABEL_11;
      }

      v8 = [v3 transcriptBackgroundCommand];
      v9 = [v8 type];
      v10 = [v9 requestResponse];
    }
  }

  else if (v6)
  {
    if (v6 != 1)
    {
      goto LABEL_11;
    }

    v8 = [v3 transcriptBackgroundCommand];
    v9 = [v8 type];
    v10 = [v9 refresh];
  }

  else
  {
    v8 = [v3 transcriptBackgroundCommand];
    v9 = [v8 type];
    v10 = [v9 update];
  }

  v11 = v10;
  v7 = [v10 chatId];

LABEL_11:
  v12 = [v3 account];
  v13 = [v12 service];
  v14 = [v13 internalName];
  v15 = v14;
  v16 = *MEMORY[0x277D1A620];
  if (v14)
  {
    v16 = v14;
  }

  v51 = v16;

  if (!v7)
  {
    v19 = +[IMDChatRegistry sharedInstance];
    v21 = [v3 fromIdentifier];
    v22 = [v21 _stripFZIDPrefix];
    v27 = [v3 account];
    v26 = [v19 existingChatForID:v22 account:v27];

LABEL_27:
    goto LABEL_28;
  }

  v17 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v18 = [v17 isOneChatEnabled];

  v19 = +[IMDChatRegistry sharedInstance];
  v20 = [v19 existingChatWithGroupID:v7 onService:v51];
  v21 = v20;
  if (v18)
  {
    if (!v20)
    {
      v22 = +[IMDChatRegistry sharedInstance];
      v23 = [v7 _stripFZIDPrefix];
      v24 = [v22 existingChatWithIdentifier:v23 account:v50];
      v25 = v24;
      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v49 = +[IMDChatRegistry sharedInstance];
        v30 = [v7 _stripFZIDPrefix];
        v26 = [v49 existingChatForID:v30 account:v50];
      }

      goto LABEL_25;
    }
  }

  else if (!v20)
  {
    v22 = +[IMDChatRegistry sharedInstance];
    v28 = [v22 existingChatWithGroupID:v7 onService:*MEMORY[0x277D1A608]];
    v23 = v28;
    if (v28)
    {
      v26 = v28;
LABEL_26:

      goto LABEL_27;
    }

    v25 = +[IMDChatRegistry sharedInstance];
    v29 = [v7 _stripFZIDPrefix];
    v26 = [v25 existingChatWithIdentifier:v29 account:v50];

LABEL_25:
    goto LABEL_26;
  }

  v21 = v20;
  v26 = v21;
LABEL_28:

  if (([v3 isFromMe] & 1) != 0 || v26 && !objc_msgSend(v26, "isFiltered"))
  {
    v31 = 1;
  }

  else
  {
    v32 = +[IMDChatRegistry sharedInstance];
    v33 = [v3 fromIdentifier];
    if ([v32 hasKnownSenderChatWithChatIdentifier:v33])
    {
      v31 = 1;
    }

    else
    {
      v34 = +[IMDChatRegistry sharedInstance];
      v35 = [v3 fromIdentifier];
      v36 = [v35 _stripFZIDPrefix];
      v31 = [v34 _hasSavedContactCardForHandle:v36];
    }
  }

  v37 = [MEMORY[0x277D1AB80] contextWithKnownSender:v31 serviceName:v51];
  if (IMOSLoggingEnabled())
  {
    v38 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = [v3 fromIdentifier];
      v40 = @"NO";
      *buf = 138413058;
      v53 = v39;
      v54 = 2112;
      if (v31)
      {
        v40 = @"YES";
      }

      v55 = v7;
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
    v42 = [v3 transcriptBackgroundCommand];
    v43 = [(IMBlastDoorTranscriptBackgroundCommand *)v41 initWith:v42];

    v44 = [v3 serviceSession];
    v45 = [v3 fromIdentifier];
    [v44 receiveIncomingBlastdoorBackgroundCommand:v43 for:v26 sender:v45 senderContext:v37];
  }

  else
  {
    v43 = IMLogHandleForCategory();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      sub_22B7CF574(v7, v43);
    }
  }

  v46 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v3];
  v47 = *MEMORY[0x277D85DE8];

  return v46;
}

@end
@interface IMMessageLegacyProcessingPipelineComponent
- (BOOL)_shouldUpgradeExistingMessage:(id)message input:(id)input;
- (IMMessageLegacyProcessingPipelineComponent)initWithIDSTrustedData:(id)data messageContext:(id)context idsService:(id)service filteringContext:(id)filteringContext;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IMMessageLegacyProcessingPipelineComponent

- (IMMessageLegacyProcessingPipelineComponent)initWithIDSTrustedData:(id)data messageContext:(id)context idsService:(id)service filteringContext:(id)filteringContext
{
  dataCopy = data;
  contextCopy = context;
  serviceCopy = service;
  filteringContextCopy = filteringContext;
  v18.receiver = self;
  v18.super_class = IMMessageLegacyProcessingPipelineComponent;
  v15 = [(IMMessageLegacyProcessingPipelineComponent *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_idsTrustedData, data);
    objc_storeStrong(&v16->_messageContext, context);
    objc_storeStrong(&v16->_idsService, service);
    objc_storeStrong(&v16->_filteringContext, filteringContext);
  }

  return v16;
}

- (id)runIndividuallyWithInput:(id)input
{
  v104 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      messageItems = [inputCopy messageItems];
      firstObject = [messageItems firstObject];
      guid = [firstObject guid];
      *buf = 138412290;
      v99 = guid;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "<IMMessageLegacyProcessingPipelineComponent> Started processing for Message: %@", buf, 0xCu);
    }
  }

  messageItems2 = [inputCopy messageItems];
  v10 = [messageItems2 count] == 0;

  if (v10)
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "<IMMessageLegacyProcessingPipelineComponent> Failed to find any message items", buf, 2u);
      }
    }

    v22 = objc_alloc(MEMORY[0x277CCA9B8]);
    serviceSession = [v22 initWithDomain:*MEMORY[0x277D18DF8] code:10 userInfo:0];
    v90 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:serviceSession];
  }

  else
  {
    serviceSession = [inputCopy serviceSession];
    v89 = serviceSession;
    if (serviceSession)
    {
      chat = [inputCopy chat];
      if (!chat && IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "<IMMessageLegacyProcessingPipelineComponent> No chat found, going to create one later", buf, 2u);
        }
      }

      v13 = +[IMDMessageStore sharedInstance];
      gUID = [inputCopy GUID];
      v15 = [v13 messageWithGUID:gUID];

      if ([v15 isFinished] && !-[IMMessageLegacyProcessingPipelineComponent _shouldUpgradeExistingMessage:input:](self, "_shouldUpgradeExistingMessage:input:", v15, inputCopy))
      {
        if (IMOSLoggingEnabled())
        {
          v46 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            gUID2 = [inputCopy GUID];
            *buf = 138412290;
            v99 = gUID2;
            _os_log_impl(&dword_22B4CC000, v46, OS_LOG_TYPE_INFO, "*** Bailing, we already had a finished message for this in the database (%@). ***", buf, 0xCu);
          }
        }

        v48 = im_checkpointIDSService();
        gUID3 = [inputCopy GUID];
        [inputCopy wantsCheckpointing];
        im_sendMessageCheckpointIfNecessary();

        [chat isBlackholed];
        if ([inputCopy wantsDeliveryReceipt])
        {
          idsService = self->_idsService;
          messageContext = self->_messageContext;
          gUID4 = [inputCopy GUID];
          [inputCopy wantsDeliveryReceipt];
          LOBYTE(idsService) = im_sendCertifiedDeliveryReceiptIfPossible();

          if ((idsService & 1) == 0)
          {
            if (IMOSLoggingEnabled())
            {
              v53 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v53, OS_LOG_TYPE_INFO, "Wanted to send a delivery receipt, but failed to send a certified delivery receipt. This should be ok because this was a message redelivery though.", buf, 2u);
              }
            }
          }
        }

        if ([inputCopy isFromStorage])
        {
          v54 = +[IMDMessageFromStorageController iMessageStorageController];
          isLastFromStorage = [inputCopy isLastFromStorage];
          batchContext = [inputCopy batchContext];
          [v54 noteItemProcessed:isLastFromStorage batchContext:batchContext usingService:self->_idsService];
        }

        [(IMMessageLegacyProcessingPipelineComponent *)self _updateChatForInput:inputCopy hadChat:chat != 0];
        v90 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
      }

      else
      {
        messageItems3 = [inputCopy messageItems];
        lastObject = [messageItems3 lastObject];

        v17 = +[IMDAccountController sharedAccountController];
        accountID = [lastObject accountID];
        v19 = [v17 accountForAccountID:accountID];
        v20 = v19;
        if (v19)
        {
          account = v19;
        }

        else
        {
          account = [inputCopy account];
        }

        fromIdentifier = [inputCopy fromIdentifier];
        toIdentifier = [inputCopy toIdentifier];
        isFromMe = [inputCopy isFromMe];
        isFromStorage = [inputCopy isFromStorage];
        isLastFromStorage2 = [inputCopy isLastFromStorage];
        batchContext2 = [inputCopy batchContext];
        wantsDeliveryReceipt = [inputCopy wantsDeliveryReceipt];
        wantsCheckpointing = [inputCopy wantsCheckpointing];
        participantIdentifiers = [inputCopy participantIdentifiers];
        groupID = [inputCopy groupID];
        currentGroupName = [inputCopy currentGroupName];
        groupPhotoCreationTime = [inputCopy groupPhotoCreationTime];
        availabilityVerificationRecipientChannelIDPrefix = [inputCopy availabilityVerificationRecipientChannelIDPrefix];
        availabilityVerificationRecipientEncryptionValidationToken = [inputCopy availabilityVerificationRecipientEncryptionValidationToken];
        availabilityOffGridRecipientSubscriptionValidationToken = [inputCopy availabilityOffGridRecipientSubscriptionValidationToken];
        availabilityOffGridRecipientEncryptionValidationToken = [inputCopy availabilityOffGridRecipientEncryptionValidationToken];
        if ([inputCopy conformsToProtocol:&unk_283F6EB70])
        {
          v26 = inputCopy;
          if (IMOSLoggingEnabled())
          {
            v27 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              balloonPluginBundleID = [v26 balloonPluginBundleID];
              balloonPluginPayload = [v26 balloonPluginPayload];
              combinedPayloadAttachmentDictionary = [v26 combinedPayloadAttachmentDictionary];
              v31 = combinedPayloadAttachmentDictionary;
              v32 = @"YES";
              if (balloonPluginPayload)
              {
                v33 = @"YES";
              }

              else
              {
                v33 = @"NO";
              }

              *buf = 138412802;
              v99 = balloonPluginBundleID;
              v101 = v33;
              v100 = 2112;
              if (!combinedPayloadAttachmentDictionary)
              {
                v32 = @"NO";
              }

              v102 = 2112;
              v103 = v32;
              _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Processing a balloon plugin payload (identifier: %@, payload: %@, combinedPayloadAttachmentDictionary: %@)", buf, 0x20u);
            }
          }

          combinedPayloadAttachmentDictionary2 = [v26 combinedPayloadAttachmentDictionary];
        }

        else
        {
          combinedPayloadAttachmentDictionary2 = 0;
        }

        [lastObject addTelemetryMetricForKey:3];
        v90 = objc_alloc_init(MEMORY[0x277D18E08]);
        groupParticipantVersion = [inputCopy groupParticipantVersion];
        [v89 requestGroupPhotoIfNecessary:chat incomingParticipantVersion:objc_msgSend(groupParticipantVersion incomingGroupPhotoCreationTime:"integerValue") toIdentifier:groupPhotoCreationTime fromIdentifier:fromIdentifier messageIsFromStorage:{toIdentifier, isFromStorage}];

        mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
        isTranscriptBackgroundsEnabled = [mEMORY[0x277D1A9B8] isTranscriptBackgroundsEnabled];

        if (isTranscriptBackgroundsEnabled)
        {
          transcriptBackgroundVersion = [inputCopy transcriptBackgroundVersion];
          [v89 requestTranscriptBackgroundIfNecessary:chat incomingVersion:objc_msgSend(transcriptBackgroundVersion toIdentifier:"unsignedLongLongValue") fromIdentifier:fromIdentifier messageIsFromStorage:{toIdentifier, isFromStorage}];
        }

        selfCopy = self;
        fromToken = [(IMDiMessageIDSTrustedData *)self->_idsTrustedData fromToken];
        fromPushID = [(IMDiMessageIDSTrustedData *)self->_idsTrustedData fromPushID];
        v41 = [MEMORY[0x277CCABB0] numberWithBool:wantsDeliveryReceipt];
        inlineAttachmentsDictionary = [inputCopy inlineAttachmentsDictionary];
        attributionInfoArray = [inputCopy attributionInfoArray];
        nicknameDictionary = [inputCopy nicknameDictionary];
        v42 = self->_messageContext;
        v66 = v42;
        v67 = self->_idsService;
        isFromTrustedSender = [(IMDiMessageIDSTrustedData *)self->_idsTrustedData isFromTrustedSender];
        isFromSnapTrustedSender = [(IMDiMessageIDSTrustedData *)self->_idsTrustedData isFromSnapTrustedSender];
        wasContextUsed = [(IMFilterMessagePipelineComponentContext *)self->_filteringContext wasContextUsed];
        isBlackholed = [(IMFilterMessagePipelineComponentContext *)self->_filteringContext isBlackholed];
        shouldTrackForRequery = [(IMFilterMessagePipelineComponentContext *)self->_filteringContext shouldTrackForRequery];
        isFiltered = [(IMFilterMessagePipelineComponentContext *)self->_filteringContext isFiltered];
        spamDetectionSource = [(IMFilterMessagePipelineComponentContext *)self->_filteringContext spamDetectionSource];
        v93[0] = MEMORY[0x277D85DD0];
        v93[1] = 3221225472;
        v93[2] = sub_22B5A9764;
        v93[3] = &unk_278705900;
        v93[4] = selfCopy;
        v94 = inputCopy;
        v97 = chat != 0;
        v95 = v90;
        v96 = lastObject;
        BYTE4(v61) = shouldTrackForRequery;
        BYTE3(v61) = isBlackholed;
        BYTE2(v61) = wasContextUsed;
        BYTE1(v61) = isFromSnapTrustedSender;
        LOBYTE(v61) = isFromTrustedSender;
        BYTE1(v60) = wantsCheckpointing;
        LOBYTE(v60) = 0;
        BYTE2(v59) = isFromStorage;
        BYTE1(v59) = isLastFromStorage2;
        LOBYTE(v59) = isFromMe;
        [v89 _blastDoorProcessingWithIMMessageItem:v96 chat:chat account:account fromToken:fromToken fromIDSID:fromPushID fromIdentifier:fromIdentifier toIdentifier:toIdentifier participants:participantIdentifiers groupName:currentGroupName groupID:groupID isFromMe:v59 isLastFromStorage:batchContext2 isFromStorage:v60 batchContext:v41 hideLockScreenNotification:combinedPayloadAttachmentDictionary2 wantsCheckpointing:inlineAttachmentsDictionary needsDeliveryReceipt:attributionInfoArray messageBalloonPayloadAttachmentDictionary:nicknameDictionary inlineAttachments:availabilityVerificationRecipientChannelIDPrefix attributionInfoArray:availabilityVerificationRecipientEncryptionValidationToken nicknameDictionary:availabilityOffGridRecipientSubscriptionValidationToken availabilityVerificationRecipientChannelIDPrefix:availabilityOffGridRecipientEncryptionValidationToken availabilityVerificationRecipientEncryptionValidationToken:v67 availabilityOffGridRecipientSubscriptionValidationToken:v66 availabilityOffGridRecipientEncryptionValidationToken:v61 idsService:isFiltered messageContext:spamDetectionSource isFromTrustedSender:v93 isFromSnapTrustedSender:? wasContextUsed:? isBlackholed:? shouldTrackForRequery:? isFiltered:? spamDetectionSource:? completionBlock:?];

        serviceSession = v89;
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "<IMMessageLegacyProcessingPipelineComponent> Failed to find service session", buf, 2u);
        }
      }

      v24 = objc_alloc(MEMORY[0x277CCA9B8]);
      v92 = [v24 initWithDomain:*MEMORY[0x277D18DF8] code:1 userInfo:0];
      v90 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v92];
    }
  }

  v57 = *MEMORY[0x277D85DE8];

  return v90;
}

- (BOOL)_shouldUpgradeExistingMessage:(id)message input:(id)input
{
  messageCopy = message;
  replicationSourceServiceName = [input replicationSourceServiceName];
  v7 = [messageCopy scheduleType] == 2 && objc_msgSend(messageCopy, "scheduleState") != 0;
  if ([replicationSourceServiceName length])
  {
    service = [messageCopy service];
    v7 |= [service isEqualToString:replicationSourceServiceName];
  }

  return v7 & 1;
}

@end
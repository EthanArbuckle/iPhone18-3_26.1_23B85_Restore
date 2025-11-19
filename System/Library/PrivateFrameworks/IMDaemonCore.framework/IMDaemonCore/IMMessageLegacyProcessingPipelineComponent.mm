@interface IMMessageLegacyProcessingPipelineComponent
- (BOOL)_shouldUpgradeExistingMessage:(id)a3 input:(id)a4;
- (IMMessageLegacyProcessingPipelineComponent)initWithIDSTrustedData:(id)a3 messageContext:(id)a4 idsService:(id)a5 filteringContext:(id)a6;
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IMMessageLegacyProcessingPipelineComponent

- (IMMessageLegacyProcessingPipelineComponent)initWithIDSTrustedData:(id)a3 messageContext:(id)a4 idsService:(id)a5 filteringContext:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = IMMessageLegacyProcessingPipelineComponent;
  v15 = [(IMMessageLegacyProcessingPipelineComponent *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_idsTrustedData, a3);
    objc_storeStrong(&v16->_messageContext, a4);
    objc_storeStrong(&v16->_idsService, a5);
    objc_storeStrong(&v16->_filteringContext, a6);
  }

  return v16;
}

- (id)runIndividuallyWithInput:(id)a3
{
  v104 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 messageItems];
      v7 = [v6 firstObject];
      v8 = [v7 guid];
      *buf = 138412290;
      v99 = v8;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "<IMMessageLegacyProcessingPipelineComponent> Started processing for Message: %@", buf, 0xCu);
    }
  }

  v9 = [v4 messageItems];
  v10 = [v9 count] == 0;

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
    v11 = [v22 initWithDomain:*MEMORY[0x277D18DF8] code:10 userInfo:0];
    v90 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v11];
  }

  else
  {
    v11 = [v4 serviceSession];
    v89 = v11;
    if (v11)
    {
      v91 = [v4 chat];
      if (!v91 && IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "<IMMessageLegacyProcessingPipelineComponent> No chat found, going to create one later", buf, 2u);
        }
      }

      v13 = +[IMDMessageStore sharedInstance];
      v14 = [v4 GUID];
      v15 = [v13 messageWithGUID:v14];

      if ([v15 isFinished] && !-[IMMessageLegacyProcessingPipelineComponent _shouldUpgradeExistingMessage:input:](self, "_shouldUpgradeExistingMessage:input:", v15, v4))
      {
        if (IMOSLoggingEnabled())
        {
          v46 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            v47 = [v4 GUID];
            *buf = 138412290;
            v99 = v47;
            _os_log_impl(&dword_22B4CC000, v46, OS_LOG_TYPE_INFO, "*** Bailing, we already had a finished message for this in the database (%@). ***", buf, 0xCu);
          }
        }

        v48 = im_checkpointIDSService();
        v49 = [v4 GUID];
        [v4 wantsCheckpointing];
        im_sendMessageCheckpointIfNecessary();

        [v91 isBlackholed];
        if ([v4 wantsDeliveryReceipt])
        {
          idsService = self->_idsService;
          messageContext = self->_messageContext;
          v52 = [v4 GUID];
          [v4 wantsDeliveryReceipt];
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

        if ([v4 isFromStorage])
        {
          v54 = +[IMDMessageFromStorageController iMessageStorageController];
          v55 = [v4 isLastFromStorage];
          v56 = [v4 batchContext];
          [v54 noteItemProcessed:v55 batchContext:v56 usingService:self->_idsService];
        }

        [(IMMessageLegacyProcessingPipelineComponent *)self _updateChatForInput:v4 hadChat:v91 != 0];
        v90 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v4];
      }

      else
      {
        v16 = [v4 messageItems];
        v88 = [v16 lastObject];

        v17 = +[IMDAccountController sharedAccountController];
        v18 = [v88 accountID];
        v19 = [v17 accountForAccountID:v18];
        v20 = v19;
        if (v19)
        {
          v83 = v19;
        }

        else
        {
          v83 = [v4 account];
        }

        v87 = [v4 fromIdentifier];
        v86 = [v4 toIdentifier];
        v70 = [v4 isFromMe];
        v85 = [v4 isFromStorage];
        v69 = [v4 isLastFromStorage];
        v82 = [v4 batchContext];
        v25 = [v4 wantsDeliveryReceipt];
        v68 = [v4 wantsCheckpointing];
        v81 = [v4 participantIdentifiers];
        v80 = [v4 groupID];
        v79 = [v4 currentGroupName];
        v84 = [v4 groupPhotoCreationTime];
        v78 = [v4 availabilityVerificationRecipientChannelIDPrefix];
        v77 = [v4 availabilityVerificationRecipientEncryptionValidationToken];
        v76 = [v4 availabilityOffGridRecipientSubscriptionValidationToken];
        v75 = [v4 availabilityOffGridRecipientEncryptionValidationToken];
        if ([v4 conformsToProtocol:&unk_283F6EB70])
        {
          v26 = v4;
          if (IMOSLoggingEnabled())
          {
            v27 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v28 = [v26 balloonPluginBundleID];
              v29 = [v26 balloonPluginPayload];
              v30 = [v26 combinedPayloadAttachmentDictionary];
              v31 = v30;
              v32 = @"YES";
              if (v29)
              {
                v33 = @"YES";
              }

              else
              {
                v33 = @"NO";
              }

              *buf = 138412802;
              v99 = v28;
              v101 = v33;
              v100 = 2112;
              if (!v30)
              {
                v32 = @"NO";
              }

              v102 = 2112;
              v103 = v32;
              _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Processing a balloon plugin payload (identifier: %@, payload: %@, combinedPayloadAttachmentDictionary: %@)", buf, 0x20u);
            }
          }

          v74 = [v26 combinedPayloadAttachmentDictionary];
        }

        else
        {
          v74 = 0;
        }

        [v88 addTelemetryMetricForKey:3];
        v90 = objc_alloc_init(MEMORY[0x277D18E08]);
        v34 = [v4 groupParticipantVersion];
        [v89 requestGroupPhotoIfNecessary:v91 incomingParticipantVersion:objc_msgSend(v34 incomingGroupPhotoCreationTime:"integerValue") toIdentifier:v84 fromIdentifier:v87 messageIsFromStorage:{v86, v85}];

        v35 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
        v36 = [v35 isTranscriptBackgroundsEnabled];

        if (v36)
        {
          v37 = [v4 transcriptBackgroundVersion];
          [v89 requestTranscriptBackgroundIfNecessary:v91 incomingVersion:objc_msgSend(v37 toIdentifier:"unsignedLongLongValue") fromIdentifier:v87 messageIsFromStorage:{v86, v85}];
        }

        v38 = self;
        v39 = [(IMDiMessageIDSTrustedData *)self->_idsTrustedData fromToken];
        v40 = [(IMDiMessageIDSTrustedData *)self->_idsTrustedData fromPushID];
        v41 = [MEMORY[0x277CCABB0] numberWithBool:v25];
        v73 = [v4 inlineAttachmentsDictionary];
        v72 = [v4 attributionInfoArray];
        v71 = [v4 nicknameDictionary];
        v42 = self->_messageContext;
        v66 = v42;
        v67 = self->_idsService;
        v65 = [(IMDiMessageIDSTrustedData *)self->_idsTrustedData isFromTrustedSender];
        v64 = [(IMDiMessageIDSTrustedData *)self->_idsTrustedData isFromSnapTrustedSender];
        v63 = [(IMFilterMessagePipelineComponentContext *)self->_filteringContext wasContextUsed];
        v62 = [(IMFilterMessagePipelineComponentContext *)self->_filteringContext isBlackholed];
        v43 = [(IMFilterMessagePipelineComponentContext *)self->_filteringContext shouldTrackForRequery];
        v44 = [(IMFilterMessagePipelineComponentContext *)self->_filteringContext isFiltered];
        v45 = [(IMFilterMessagePipelineComponentContext *)self->_filteringContext spamDetectionSource];
        v93[0] = MEMORY[0x277D85DD0];
        v93[1] = 3221225472;
        v93[2] = sub_22B5A9764;
        v93[3] = &unk_278705900;
        v93[4] = v38;
        v94 = v4;
        v97 = v91 != 0;
        v95 = v90;
        v96 = v88;
        BYTE4(v61) = v43;
        BYTE3(v61) = v62;
        BYTE2(v61) = v63;
        BYTE1(v61) = v64;
        LOBYTE(v61) = v65;
        BYTE1(v60) = v68;
        LOBYTE(v60) = 0;
        BYTE2(v59) = v85;
        BYTE1(v59) = v69;
        LOBYTE(v59) = v70;
        [v89 _blastDoorProcessingWithIMMessageItem:v96 chat:v91 account:v83 fromToken:v39 fromIDSID:v40 fromIdentifier:v87 toIdentifier:v86 participants:v81 groupName:v79 groupID:v80 isFromMe:v59 isLastFromStorage:v82 isFromStorage:v60 batchContext:v41 hideLockScreenNotification:v74 wantsCheckpointing:v73 needsDeliveryReceipt:v72 messageBalloonPayloadAttachmentDictionary:v71 inlineAttachments:v78 attributionInfoArray:v77 nicknameDictionary:v76 availabilityVerificationRecipientChannelIDPrefix:v75 availabilityVerificationRecipientEncryptionValidationToken:v67 availabilityOffGridRecipientSubscriptionValidationToken:v66 availabilityOffGridRecipientEncryptionValidationToken:v61 idsService:v44 messageContext:v45 isFromTrustedSender:v93 isFromSnapTrustedSender:? wasContextUsed:? isBlackholed:? shouldTrackForRequery:? isFiltered:? spamDetectionSource:? completionBlock:?];

        v11 = v89;
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

- (BOOL)_shouldUpgradeExistingMessage:(id)a3 input:(id)a4
{
  v5 = a3;
  v6 = [a4 replicationSourceServiceName];
  v7 = [v5 scheduleType] == 2 && objc_msgSend(v5, "scheduleState") != 0;
  if ([v6 length])
  {
    v8 = [v5 service];
    v7 |= [v8 isEqualToString:v6];
  }

  return v7 & 1;
}

@end
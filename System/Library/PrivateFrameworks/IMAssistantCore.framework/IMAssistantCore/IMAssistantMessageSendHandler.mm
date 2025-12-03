@interface IMAssistantMessageSendHandler
- (BOOL)canSendLocationMessageWithLocationManager:(id)manager withError:(int64_t *)error;
- (BOOL)recipientHandleResolutionResultsAllowedByScreentime:(id)screentime error:(id *)error;
- (BOOL)shouldContinueToExamineRelevantChatsWithMatches:(id)matches nextChat:(id)chat;
- (BOOL)updateSenderIdentityForNewlyCreatedChat:(id)chat;
- (IMAssistantMessageSendHandler)initWithDataSource:(id)source delegate:(id)delegate intentIdentifier:(id)identifier;
- (IMAssistantMessageSendHandlerDelegate)messageSendHandlerDelegate;
- (id)contactResolutionResultForContacts:(id)contacts matchingRecipient:(id)recipient;
- (id)contactsWithDuplicateNamesAmongContacts:(id)contacts;
- (id)findValidMappingOfRequestedRecipientToChatParticipantAmongMatches:(id)matches;
- (id)handleResolutionResultForHandles:(id)handles resolvedContactForAlternatives:(id)alternatives recipient:(id)recipient;
- (id)makeIMMessageFromSharedLinkURL:(id)l;
- (id)makeIMMessageFromText:(id)text;
- (id)recipientDisambiguationResultsFromMultipleRelevantChats:(id)chats;
- (id)recipientsResolutionFailureResultWithResult:(id)result forRecipient:(id)recipient amongRecipients:(id)recipients;
- (id)resolveMessageContentWithString:(id)string;
- (id)resolveRecipientsByFindingExistingRelevantChatsForRecipients:(id)recipients withMatchingHandlesByRecipient:(id)recipient fromChats:(id)chats;
- (id)resolveRecipientsWithGroupNameOrConversationIdentifier:(id)identifier forIntent:(id)intent;
- (id)resolvedRecipientsFromChat:(id)chat;
- (void)confirmSendMessage:(id)message completion:(id)completion;
- (void)handleSendMessage:(id)message completion:(id)completion;
- (void)isSensitiveFileAttachmentURLs:(id)ls chat:(id)chat completion:(id)completion;
- (void)resolveContentForSendMessage:(id)message withCompletion:(id)completion;
- (void)resolveOutgoingMessageTypeForSendMessage:(id)message withCompletion:(id)completion;
- (void)resolveRecipientsForSendMessage:(id)message completion:(id)completion;
- (void)resolveRecipientsWithCRR:(id)r forIntent:(id)intent completion:(id)completion;
- (void)resolveRecipientsWithoutCRR:(id)r forIntent:(id)intent completion:(id)completion;
- (void)resolveSpeakableGroupNameForSendMessage:(id)message withCompletion:(id)completion;
- (void)sendLocalFileAttachmentURLs:(id)ls chat:(id)chat executionContext:(int64_t)context expressiveSendStyleID:(id)d idsIdentifier:(id)identifier sourceApplicationID:(id)iD sentMessages:(id)messages completion:(id)self0;
- (void)sendLocationMessageToChat:(id)chat sourceApplicationID:(id)d sentMessages:(id)messages completion:(id)completion;
- (void)sendMessageWithDraft:(id)draft expressiveSendStyleID:(id)d idsIdentifier:(id)identifier executionContext:(int64_t)context sourceApplicationID:(id)iD toChat:(id)chat completion:(id)completion;
- (void)sendMessagesWithText:(id)text currentLocation:(BOOL)location sharedLinkURL:(id)l audioMessageAttachment:(id)attachment photoLibraryAttachment:(id)libraryAttachment fileAttachments:(id)attachments expressiveSendStyleID:(id)d idsIdentifier:(id)self0 executionContext:(int64_t)self1 shouldHideSiriAttribution:(BOOL)self2 toChat:(id)self3 completion:(id)self4;
- (void)sendPhotoAssetMessageToChat:(id)chat executionContext:(int64_t)context expressiveSendStyleID:(id)d idsIdentifier:(id)identifier phAsset:(id)asset sentMessages:(id)messages sourceApplicationID:(id)iD completion:(id)self0;
@end

@implementation IMAssistantMessageSendHandler

- (IMAssistantMessageSendHandler)initWithDataSource:(id)source delegate:(id)delegate intentIdentifier:(id)identifier
{
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = IMAssistantMessageSendHandler;
  v10 = [(IMAssistantMessageHandler *)&v13 initWithDataSource:source intentIdentifier:identifier];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_messageSendHandlerDelegate, delegate);
  }

  return v11;
}

- (IMAssistantMessageSendHandlerDelegate)messageSendHandlerDelegate
{
  messageSendHandlerDelegate = self->_messageSendHandlerDelegate;
  if (!messageSendHandlerDelegate)
  {
    v4 = objc_alloc_init(IMAssistantMessageSendHandlerDefaultDelegate);
    v5 = self->_messageSendHandlerDelegate;
    self->_messageSendHandlerDelegate = v4;

    messageSendHandlerDelegate = self->_messageSendHandlerDelegate;
  }

  return messageSendHandlerDelegate;
}

- (void)confirmSendMessage:(id)message completion:(id)completion
{
  v45 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  completionCopy = completion;
  v6 = _IMAssistantCoreSendMessageSignpostLogHandle();
  spid = os_signpost_id_generate(v6);

  v7 = _IMAssistantCoreSendMessageSignpostLogHandle();
  v8 = v7;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, spid, "confirmSendMessageIntent", &unk_2547CAD0B, buf, 2u);
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_2547A086C;
  v35 = sub_2547A087C;
  v36 = [objc_alloc(MEMORY[0x277CD4080]) initWithCode:1 userActivity:0];
  v9 = messageCopy;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v25 = v9;
  attachments = [v9 attachments];
  v11 = [attachments countByEnumeratingWithState:&v37 objects:buf count:16];
  if (v11)
  {
    v12 = 0;
    v13 = *v38;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(attachments);
        }

        v15 = *(*(&v37 + 1) + 8 * i);
        if ([v15 currentLocation])
        {
          v16 = IMLogHandleForCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *v41 = 138412290;
            v42 = v15;
            _os_log_impl(&dword_25479E000, v16, OS_LOG_TYPE_INFO, "Intent contains an current location attachment: %@", v41, 0xCu);
          }

          v12 = 1;
        }
      }

      v11 = [attachments countByEnumeratingWithState:&v37 objects:buf count:16];
    }

    while (v11);

    if (v12)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2547A0884;
      block[3] = &unk_2797862E8;
      block[4] = self;
      v29 = &v31;
      v30 = spid;
      v28 = completionCopy;
      v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
      dispatch_async(MEMORY[0x277D85CD0], v17);

      goto LABEL_24;
    }
  }

  else
  {
  }

  v18 = IMLogHandleForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = v32[5];
    *buf = 138412290;
    v44 = v19;
    _os_log_impl(&dword_25479E000, v18, OS_LOG_TYPE_INFO, "Completing confirmSendMessage with %@", buf, 0xCu);
  }

  v20 = _IMAssistantCoreSendMessageSignpostLogHandle();
  v21 = v20;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v21, OS_SIGNPOST_INTERVAL_END, spid, "confirmSendMessageIntent", &unk_2547CAD0B, buf, 2u);
  }

  (*(completionCopy + 2))(completionCopy, v32[5]);
LABEL_24:
  _Block_object_dispose(&v31, 8);

  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleSendMessage:(id)message completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  completionCopy = completion;
  v8 = _IMAssistantCoreSendMessageSignpostLogHandle();
  v9 = os_signpost_id_generate(v8);

  v10 = _IMAssistantCoreSendMessageSignpostLogHandle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "handleSendMessageIntent", &unk_2547CAD0B, buf, 2u);
  }

  v12 = IMLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = messageCopy;
    _os_log_impl(&dword_25479E000, v12, OS_LOG_TYPE_INFO, "Performing intent: %@", buf, 0xCu);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2547A0C00;
  v17[3] = &unk_279786338;
  v20 = completionCopy;
  v21 = v9;
  v18 = messageCopy;
  selfCopy = self;
  v13 = completionCopy;
  v14 = messageCopy;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v17);
  dispatch_async(MEMORY[0x277D85CD0], v15);

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateSenderIdentityForNewlyCreatedChat:(id)chat
{
  chatCopy = chat;
  messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  coreTelephonySubscriptionsDataSource = [messageHandlerDataSource coreTelephonySubscriptionsDataSource];
  deviceHasMultipleSubscriptions = [coreTelephonySubscriptionsDataSource deviceHasMultipleSubscriptions];

  if (deviceHasMultipleSubscriptions)
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v8, OS_LOG_TYPE_INFO, "Sending message to a new chat. Attempting to determine best sender identity.", buf, 2u);
    }

    v9 = [chatCopy participantsWithState:17];
    v10 = [v9 __imArrayByApplyingBlock:&unk_286692FB8];
    messageHandlerDataSource2 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
    coreTelephonySubscriptionsDataSource2 = [messageHandlerDataSource2 coreTelephonySubscriptionsDataSource];
    v13 = [coreTelephonySubscriptionsDataSource2 bestSenderIdentityForChatWithHandleIDs:v10];

    v14 = v13 != 0;
    if (v13)
    {
      messageHandlerDataSource3 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
      coreTelephonySubscriptionsDataSource3 = [messageHandlerDataSource3 coreTelephonySubscriptionsDataSource];
      v17 = [coreTelephonySubscriptionsDataSource3 handleIDForSenderIdentity:v13];

      messageHandlerDataSource4 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
      coreTelephonySubscriptionsDataSource4 = [messageHandlerDataSource4 coreTelephonySubscriptionsDataSource];
      v20 = [coreTelephonySubscriptionsDataSource4 simIDForSenderIdentity:v13];

      [chatCopy setLastAddressedHandleID:v17];
      [chatCopy setLastAddressedSIMID:v20];
    }

    else
    {
      v17 = IMLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *v22 = 0;
        _os_log_impl(&dword_25479E000, v17, OS_LOG_TYPE_INFO, "Could not determine preferred sender identity for handleIDs. This may mean that the user has conflicting sim preferences for these recipients.", v22, 2u);
      }
    }
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (void)resolveOutgoingMessageTypeForSendMessage:(id)message withCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  completionCopy = completion;
  outgoingMessageType = [messageCopy outgoingMessageType];
  v8 = IMLogHandleForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (outgoingMessageType == 2)
  {
    if (v9)
    {
      v13 = 134217984;
      outgoingMessageType2 = [messageCopy outgoingMessageType];
      _os_log_impl(&dword_25479E000, v8, OS_LOG_TYPE_INFO, "Resolving Outgoing Message Type with Audio (%ld)", &v13, 0xCu);
    }

    v10 = 2;
  }

  else if (v9)
  {
    v13 = 134217984;
    outgoingMessageType2 = [messageCopy outgoingMessageType];
    v10 = 1;
    _os_log_impl(&dword_25479E000, v8, OS_LOG_TYPE_INFO, "Resolving Outgoing Message Type with Text (%ld)", &v13, 0xCu);
  }

  else
  {
    v10 = 1;
  }

  v11 = [MEMORY[0x277CD3E48] successWithResolvedOutgoingMessageType:v10];
  completionCopy[2](completionCopy, v11);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)resolveRecipientsForSendMessage:(id)message completion:(id)completion
{
  completionCopy = completion;
  messageCopy = message;
  v8 = _IMAssistantCoreSendMessageSignpostLogHandle();
  v9 = os_signpost_id_generate(v8);

  v10 = IMLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25479E000, v10, OS_LOG_TYPE_INFO, "Will not use CRR to resolve recipients.", buf, 2u);
  }

  v11 = _IMAssistantCoreSendMessageSignpostLogHandle();
  v12 = v11;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "resolveRecipientsForSendMessage", &unk_2547CAD0B, buf, 2u);
  }

  recipients = [messageCopy recipients];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2547A2FE8;
  v15[3] = &unk_279786380;
  v16 = completionCopy;
  v17 = v9;
  v14 = completionCopy;
  [(IMAssistantMessageSendHandler *)self resolveRecipientsWithoutCRR:recipients forIntent:messageCopy completion:v15];
}

- (void)resolveContentForSendMessage:(id)message withCompletion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  v8 = _IMAssistantCoreSendMessageSignpostLogHandle();
  v9 = os_signpost_id_generate(v8);

  v10 = _IMAssistantCoreSendMessageSignpostLogHandle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "resolveContentForSendMessage", &unk_2547CAD0B, buf, 2u);
  }

  attachments = [messageCopy attachments];
  if ([attachments count])
  {
    content = [messageCopy content];
    v14 = [content length];

    if (!v14)
    {
      v15 = IMLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v23 = 0;
        _os_log_impl(&dword_25479E000, v15, OS_LOG_TYPE_INFO, "Intent contains an attachment and no content. Returning notRequired for content.", v23, 2u);
      }

      notRequired = [MEMORY[0x277CD4218] notRequired];
      goto LABEL_13;
    }
  }

  else
  {
  }

  v17 = IMLogHandleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *v22 = 0;
    _os_log_impl(&dword_25479E000, v17, OS_LOG_TYPE_INFO, "Resolving content slot with a string value", v22, 2u);
  }

  content2 = [messageCopy content];
  notRequired = [(IMAssistantMessageSendHandler *)self resolveMessageContentWithString:content2];

LABEL_13:
  v19 = _IMAssistantCoreSendMessageSignpostLogHandle();
  v20 = v19;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *v21 = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v20, OS_SIGNPOST_INTERVAL_END, v9, "resolveContentForSendMessage", &unk_2547CAD0B, v21, 2u);
  }

  completionCopy[2](completionCopy, notRequired);
}

- (void)resolveSpeakableGroupNameForSendMessage:(id)message withCompletion:(id)completion
{
  v63 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  completionCopy = completion;
  v8 = _IMAssistantCoreSendMessageSignpostLogHandle();
  v9 = os_signpost_id_generate(v8);

  v10 = _IMAssistantCoreSendMessageSignpostLogHandle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "resolveSpeakableGroupNameForSendMessage", &unk_2547CAD0B, buf, 2u);
  }

  speakableGroupName = [messageCopy speakableGroupName];
  v13 = IMLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    spokenPhrase = [speakableGroupName spokenPhrase];
    vocabularyIdentifier = [speakableGroupName vocabularyIdentifier];
    *buf = 138412546;
    v60 = spokenPhrase;
    v61 = 2112;
    v62 = vocabularyIdentifier;
    _os_log_impl(&dword_25479E000, v13, OS_LOG_TYPE_INFO, "Resolving speakableGroupName: %@ vocabID: %@", buf, 0x16u);
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB40]);
  conversationIdentifier = [messageCopy conversationIdentifier];
  v18 = [conversationIdentifier length];

  if (v18)
  {
    conversationIdentifier2 = [messageCopy conversationIdentifier];
    v20 = IMLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v60 = conversationIdentifier2;
      _os_log_impl(&dword_25479E000, v20, OS_LOG_TYPE_INFO, "Intent contains a conversationIdentifier, %@, using that to resolve group name", buf, 0xCu);
    }

    [v16 addObject:conversationIdentifier2];
  }

  vocabularyIdentifier2 = [speakableGroupName vocabularyIdentifier];
  if ([vocabularyIdentifier2 length])
  {
    v22 = IMLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v60 = vocabularyIdentifier2;
      _os_log_impl(&dword_25479E000, v22, OS_LOG_TYPE_INFO, "Intent contains a speakableGroupName.vocabularyIdentifier, %@, using that to resolve group name", buf, 0xCu);
    }

    [v16 addObject:vocabularyIdentifier2];
  }

  alternativeSpeakableMatches = [speakableGroupName alternativeSpeakableMatches];
  if ([alternativeSpeakableMatches count])
  {
    v43 = vocabularyIdentifier2;
    selfCopy = self;
    v45 = v9;
    v46 = speakableGroupName;
    v47 = completionCopy;
    v24 = IMLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [alternativeSpeakableMatches count];
      *buf = 134218242;
      v60 = v25;
      v61 = 2112;
      v62 = alternativeSpeakableMatches;
      _os_log_impl(&dword_25479E000, v24, OS_LOG_TYPE_INFO, "speakableGroupName contains %ld alternativeSpeakableMatches: %@", buf, 0x16u);
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v26 = alternativeSpeakableMatches;
    v27 = [v26 countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v55;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v55 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v54 + 1) + 8 * i);
          vocabularyIdentifier3 = [v31 vocabularyIdentifier];
          if ([vocabularyIdentifier3 length])
          {
            [v16 addObject:vocabularyIdentifier3];
          }

          else
          {
            v33 = IMLogHandleForCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v60 = v31;
              _os_log_impl(&dword_25479E000, v33, OS_LOG_TYPE_INFO, "alternativeSpeakableMatch does not contain a vocabularyIdentifier, ignoring. alternativeSpeakableMatch: %@", buf, 0xCu);
            }
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v54 objects:v58 count:16];
      }

      while (v28);
    }

    completionCopy = v47;
    v9 = v45;
    speakableGroupName = v46;
    vocabularyIdentifier2 = v43;
    self = selfCopy;
  }

  if ([v16 count] || (objc_msgSend(speakableGroupName, "spokenPhrase"), v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "length"), v34, v35))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2547A39B8;
    block[3] = &unk_2797863A8;
    v49 = v16;
    selfCopy2 = self;
    v53 = v9;
    v52 = completionCopy;
    v51 = speakableGroupName;
    v36 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
    dispatch_async(MEMORY[0x277D85CD0], v36);

    notRequired = v49;
  }

  else
  {
    v39 = IMLogHandleForCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v39, OS_LOG_TYPE_INFO, "Intent contains neither a conversationID nor a spoken group name. Returning notRequired for resolveSpeakableGroupName.", buf, 2u);
    }

    v40 = _IMAssistantCoreSendMessageSignpostLogHandle();
    v41 = v40;
    if (v42 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v41, OS_SIGNPOST_INTERVAL_END, v9, "resolveSpeakableGroupNameForSendMessage", &unk_2547CAD0B, buf, 2u);
    }

    notRequired = [MEMORY[0x277CD4198] notRequired];
    (*(completionCopy + 2))(completionCopy, notRequired);
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (BOOL)canSendLocationMessageWithLocationManager:(id)manager withError:(int64_t *)error
{
  v19 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  if (([managerCopy locationAuthorizationDetermined] & 1) == 0)
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v17 = 138412290;
      v18 = mainBundle;
      _os_log_impl(&dword_25479E000, v9, OS_LOG_TYPE_INFO, "Have not determined authorization to send current location message for bundle %@. Returning failure, prompting user to determine authorization for the bundle.", &v17, 0xCu);
    }

    if (error)
    {
      v8 = MEMORY[0x277CD4560];
      goto LABEL_11;
    }

LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  if (![managerCopy locationAuthorizationDenied])
  {
    if ([managerCopy preciseLocationAuthorized])
    {
      v12 = 1;
      goto LABEL_20;
    }

    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      v17 = 138412290;
      v18 = mainBundle2;
      _os_log_impl(&dword_25479E000, v13, OS_LOG_TYPE_INFO, "Authorization to get precise location has been disabled for bundle %@. Returning failure, prompting user to determine authorization for the bundle.", &v17, 0xCu);
    }

    if (error)
    {
      v11 = 1005;
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
    v17 = 138412290;
    v18 = mainBundle3;
    _os_log_impl(&dword_25479E000, v6, OS_LOG_TYPE_INFO, "Authorization to send current location has been explicitly disabled for bundle %@. Returning failure, prompting user to determine authorization for the bundle.", &v17, 0xCu);
  }

  if (!error)
  {
    goto LABEL_19;
  }

  v8 = MEMORY[0x277CD4568];
LABEL_11:
  v11 = *v8;
LABEL_12:
  v12 = 0;
  *error = v11;
LABEL_20:

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)sendMessageWithDraft:(id)draft expressiveSendStyleID:(id)d idsIdentifier:(id)identifier executionContext:(int64_t)context sourceApplicationID:(id)iD toChat:(id)chat completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  draftCopy = draft;
  dCopy = d;
  identifierCopy = identifier;
  iDCopy = iD;
  chatCopy = chat;
  completionCopy = completion;
  if ([dCopy length])
  {
    v21 = IMLogHandleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v39 = dCopy;
      _os_log_impl(&dword_25479E000, v21, OS_LOG_TYPE_INFO, "Setting expressiveSendStyleID on message: %@ ", buf, 0xCu);
    }

    [draftCopy setExpressiveSendStyleID:dCopy];
  }

  if ([iDCopy length])
  {
    v22 = IMLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v39 = iDCopy;
      _os_log_impl(&dword_25479E000, v22, OS_LOG_TYPE_INFO, "Setting source application ID on message: %@", buf, 0xCu);
    }

    [draftCopy setSourceApplicationID:iDCopy];
  }

  if ([identifierCopy length])
  {
    v23 = IMLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v39 = identifierCopy;
      _os_log_impl(&dword_25479E000, v23, OS_LOG_TYPE_INFO, "Setting IDS identifier on IMMessage: %@ ", buf, 0xCu);
    }

    [draftCopy setNotificationIDSTokenURI:identifierCopy];
  }

  if (context == 1)
  {
    guid = [draftCopy guid];
    v25 = IMLogHandleForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v39 = guid;
      _os_log_impl(&dword_25479E000, v25, OS_LOG_TYPE_INFO, "Suppressing send sound for message GUID: %@ ", buf, 0xCu);
    }

    v26 = guid;
    array = MEMORY[0x259C19020](@"com.apple.MobileSMS", @"SuppressingSendSoundMessageGUIDs");
    if (!array)
    {
      array = [MEMORY[0x277CBEA60] array];
    }

    v28 = [array arrayByAddingObject:v26];

    IMSetDomainValueForKey();
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_2547A5EA8;
  v33[3] = &unk_2797863D0;
  v34 = chatCopy;
  v35 = draftCopy;
  selfCopy = self;
  v37 = completionCopy;
  v29 = completionCopy;
  v30 = draftCopy;
  v31 = chatCopy;
  [v31 refreshServiceForSendingWithCompletion:v33];

  v32 = *MEMORY[0x277D85DE8];
}

- (id)makeIMMessageFromSharedLinkURL:(id)l
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = *MEMORY[0x277D19140];
  lCopy = l;
  v4 = [lCopy url];
  v12[1] = *MEMORY[0x277D19160];
  v13[0] = v4;
  v13[1] = &unk_286695DF8;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v6 = [lCopy url];

  absoluteString = [v6 absoluteString];

  v8 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:absoluteString attributes:v5];
  v9 = [MEMORY[0x277D18DA0] instantMessageWithText:v8 flags:65541 threadIdentifier:0];
  [v9 setBalloonBundleID:*MEMORY[0x277D19730]];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)isSensitiveFileAttachmentURLs:(id)ls chat:(id)chat completion:(id)completion
{
  v43 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  chatCopy = chat;
  completionCopy = completion;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v41 = 0;
  group = dispatch_group_create();
  v24 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = lsCopy;
  v8 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v8)
  {
    v9 = *v37;
    v10 = *MEMORY[0x277CBE7B8];
    v11 = *MEMORY[0x277CE1DB0];
    do
    {
      v12 = 0;
      do
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v36 + 1) + 8 * v12);
        v35 = 0;
        v14 = [v13 getResourceValue:&v35 forKey:v10 error:0];
        v15 = v35;
        v16 = v15;
        if (v14 && [v15 conformsToType:v11])
        {
          dispatch_group_enter(group);
          messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
          commSafetyDataSource = [messageHandlerDataSource commSafetyDataSource];
          chatIdentifier = [chatCopy chatIdentifier];
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = sub_2547A6510;
          v31[3] = &unk_2797863F8;
          v32 = v24;
          v34 = v40;
          v33 = group;
          [commSafetyDataSource isSensitiveContent:v13 withChatID:chatIdentifier completionHandler:v31];
        }

        ++v12;
      }

      while (v8 != v12);
      v8 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v8);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2547A6658;
  block[3] = &unk_279786420;
  v29 = completionCopy;
  v30 = v40;
  v20 = completionCopy;
  dispatch_group_notify(group, MEMORY[0x277D85CD0], block);

  _Block_object_dispose(v40, 8);
  v21 = *MEMORY[0x277D85DE8];
}

- (void)sendLocalFileAttachmentURLs:(id)ls chat:(id)chat executionContext:(int64_t)context expressiveSendStyleID:(id)d idsIdentifier:(id)identifier sourceApplicationID:(id)iD sentMessages:(id)messages completion:(id)self0
{
  v50 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  chatCopy = chat;
  dCopy = d;
  identifierCopy = identifier;
  iDCopy = iD;
  messagesCopy = messages;
  completionCopy = completion;
  v18 = dispatch_group_create();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = lsCopy;
  v19 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v46;
    do
    {
      v22 = 0;
      do
      {
        if (*v46 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v45 + 1) + 8 * v22);
        v24 = objc_alloc_init(MEMORY[0x277CCA9E8]);
        dispatch_group_enter(v18);
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = sub_2547A6974;
        v37[3] = &unk_279786498;
        v37[4] = self;
        v38 = chatCopy;
        v39 = v18;
        v40 = dCopy;
        v41 = identifierCopy;
        contextCopy = context;
        v42 = iDCopy;
        v43 = messagesCopy;
        [v24 coordinateReadingItemAtURL:v23 options:0 error:0 byAccessor:v37];

        ++v22;
      }

      while (v20 != v22);
      v20 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v20);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2547A72A4;
  block[3] = &unk_2797864C0;
  v35 = messagesCopy;
  v36 = completionCopy;
  v25 = completionCopy;
  v26 = messagesCopy;
  dispatch_group_notify(v18, MEMORY[0x277D85CD0], block);

  v27 = *MEMORY[0x277D85DE8];
}

- (id)makeIMMessageFromText:(id)text
{
  v3 = MEMORY[0x277CCA898];
  textCopy = text;
  v5 = [[v3 alloc] initWithString:textCopy];

  __im_attributedStringByAssigningMessagePartNumbers = [v5 __im_attributedStringByAssigningMessagePartNumbers];
  v7 = [MEMORY[0x277D18DA0] instantMessageWithText:__im_attributedStringByAssigningMessagePartNumbers flags:5 threadIdentifier:0];

  return v7;
}

- (void)sendLocationMessageToChat:(id)chat sourceApplicationID:(id)d sentMessages:(id)messages completion:(id)completion
{
  chatCopy = chat;
  dCopy = d;
  messagesCopy = messages;
  completionCopy = completion;
  v14 = IMLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25479E000, v14, OS_LOG_TYPE_INFO, "Determining location authorization status.", buf, 2u);
  }

  messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  locationManagerDataSource = [messageHandlerDataSource locationManagerDataSource];

  *buf = 0;
  v17 = [(IMAssistantMessageSendHandler *)self canSendLocationMessageWithLocationManager:locationManagerDataSource withError:buf];
  v18 = IMLogHandleForCategory();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
  if (v17)
  {
    if (v19)
    {
      *v26 = 0;
      _os_log_impl(&dword_25479E000, v18, OS_LOG_TYPE_INFO, "Authorized to send current location message. Sending.", v26, 2u);
    }

    mEMORY[0x277D18D98] = [MEMORY[0x277D18D98] sharedInstance];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_2547A7660;
    v21[3] = &unk_2797864E8;
    v25 = completionCopy;
    v22 = chatCopy;
    selfCopy = self;
    v24 = messagesCopy;
    [mEMORY[0x277D18D98] sendCurrentLocationMessageWithChat:v22 withLocationManager:locationManagerDataSource withSourceApplicationIdentifier:dCopy foregroundAssertionForBundleIdentifier:@"com.apple.MobileSMS.MessagesAssistantExtension" completion:v21];
  }

  else
  {
    if (v19)
    {
      *v26 = 0;
      _os_log_impl(&dword_25479E000, v18, OS_LOG_TYPE_INFO, "Not authorized to send current location message.", v26, 2u);
    }

    (*(completionCopy + 2))(completionCopy, *buf, 0);
  }
}

- (void)sendPhotoAssetMessageToChat:(id)chat executionContext:(int64_t)context expressiveSendStyleID:(id)d idsIdentifier:(id)identifier phAsset:(id)asset sentMessages:(id)messages sourceApplicationID:(id)iD completion:(id)self0
{
  v123 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  dCopy = d;
  identifierCopy = identifier;
  assetCopy = asset;
  messagesCopy = messages;
  iDCopy = iD;
  completionCopy = completion;
  messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  fileManagerDataSource = [messageHandlerDataSource fileManagerDataSource];
  messageHandlerDataSource2 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  fileTransferCenterDataSource = [messageHandlerDataSource2 fileTransferCenterDataSource];
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = sub_2547A8304;
  v90[3] = &unk_279786538;
  v76 = completionCopy;
  v96 = v76;
  v90[4] = self;
  v72 = dCopy;
  v91 = v72;
  v73 = identifierCopy;
  v92 = v73;
  contextCopy = context;
  v75 = iDCopy;
  v93 = v75;
  v70 = chatCopy;
  v94 = v70;
  v74 = messagesCopy;
  v95 = v74;
  v82 = fileManagerDataSource;
  v81 = fileTransferCenterDataSource;
  v83 = assetCopy;
  v78 = v90;
  v23 = IMLogHandleForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    localIdentifier = [v83 localIdentifier];
    *buf = 138412290;
    v122 = localIdentifier;
    _os_log_impl(&dword_25479E000, v23, OS_LOG_TYPE_INFO, "Building a PHAsset transfer message based on the PHAsset with id: %@", buf, 0xCu);
  }

  v77 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = IMLogHandleForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    hasAdjustments = [v83 hasAdjustments];
    v27 = @"The requested PHAsset does not have adjustments, we will use the original resources.";
    if (hasAdjustments)
    {
      v27 = @"The requested PHAsset has adjustments, we will use the edited resources.";
    }

    *buf = 138412290;
    v122 = v27;
    _os_log_impl(&dword_25479E000, v25, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  if ([v83 hasAdjustments])
  {
    v28 = 5;
  }

  else
  {
    v28 = 1;
  }

  if ([v83 hasAdjustments])
  {
    v29 = 6;
  }

  else
  {
    v29 = 2;
  }

  hasAdjustments2 = [v83 hasAdjustments];
  v31 = 9;
  if (hasAdjustments2)
  {
    v31 = 10;
  }

  v84 = v31;
  v110[0] = 0;
  v110[1] = v110;
  v110[2] = 0x3032000000;
  v110[3] = sub_2547A086C;
  v110[4] = sub_2547A087C;
  v111 = 0;
  v32 = [MEMORY[0x277CD97F0] assetResourcesForAsset:v83];
  v33 = IMLogHandleForCategory();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = [v32 count];
    *buf = 134217984;
    v122 = v34;
    _os_log_impl(&dword_25479E000, v33, OS_LOG_TYPE_INFO, "The requested PHAsset has %ld resources", buf, 0xCu);
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  obj = v32;
  v35 = 0;
  v36 = [obj countByEnumeratingWithState:&v106 objects:buf count:16];
  if (v36)
  {
    v85 = 0;
    v89 = 0;
    v37 = *v107;
    while (1)
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v107 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v106 + 1) + 8 * i);
        v40 = IMLogHandleForCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          type = [v39 type];
          LODWORD(block) = 134217984;
          *(&block + 4) = type;
          _os_log_impl(&dword_25479E000, v40, OS_LOG_TYPE_INFO, "PHAsset has an asset resource of type: %ld", &block, 0xCu);
        }

        if ([v39 type] == v28)
        {
          v42 = v89;
          v43 = v35;
          v89 = v39;
        }

        else if ([v39 type] == v29)
        {
          v42 = v85;
          v43 = v35;
          v85 = v39;
        }

        else
        {
          v42 = v35;
          v43 = v39;
          if ([v39 type] != v84)
          {
            continue;
          }
        }

        v44 = v39;

        v35 = v43;
      }

      v36 = [obj countByEnumeratingWithState:&v106 objects:buf count:16];
      if (!v36)
      {
        goto LABEL_34;
      }
    }
  }

  v85 = 0;
  v89 = 0;
LABEL_34:

  v45 = objc_alloc_init(MEMORY[0x277CD9808]);
  [v45 setNetworkAccessAllowed:0];
  if (v89 && v35)
  {
    v46 = IMLogHandleForCategory();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      LOWORD(block) = 0;
      _os_log_impl(&dword_25479E000, v46, OS_LOG_TYPE_INFO, "The requested PHAsset attachment is a live photo.", &block, 2u);
    }

    originalFilename = [v89 originalFilename];
    v48 = [v82 im_randomTemporaryFileURLWithFileName:originalFilename];

    originalFilename2 = [v35 originalFilename];
    v50 = [v82 im_randomTemporaryFileURLWithFileName:originalFilename2];

    v51 = dispatch_group_create();
    dispatch_group_enter(v51);
    defaultManager = [MEMORY[0x277CD9800] defaultManager];
    v102[0] = MEMORY[0x277D85DD0];
    v102[1] = 3221225472;
    v102[2] = sub_2547B0F58;
    v102[3] = &unk_279786780;
    v53 = v89;
    v103 = v53;
    v105 = v110;
    v54 = v51;
    v104 = v54;
    [defaultManager writeDataForAssetResource:v53 toFile:v48 options:v45 completionHandler:v102];

    dispatch_group_enter(v54);
    defaultManager2 = [MEMORY[0x277CD9800] defaultManager];
    v98[0] = MEMORY[0x277D85DD0];
    v98[1] = 3221225472;
    v98[2] = sub_2547B10A4;
    v98[3] = &unk_279786780;
    v56 = v35;
    v99 = v56;
    v101 = v110;
    v57 = v54;
    v100 = v57;
    [defaultManager2 writeDataForAssetResource:v56 toFile:v50 options:v45 completionHandler:v98];

    *&block = MEMORY[0x277D85DD0];
    *(&block + 1) = 3221225472;
    v113 = sub_2547B11F0;
    v114 = &unk_2797867A8;
    v120 = v110;
    v119 = v78;
    v115 = v48;
    v116 = v50;
    v117 = v81;
    v118 = v77;
    v58 = v48;
    v59 = v50;
    dispatch_group_notify(v57, MEMORY[0x277D85CD0], &block);

    goto LABEL_49;
  }

  if (v89 && !v35)
  {
    v60 = IMLogHandleForCategory();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      LOWORD(block) = 0;
      _os_log_impl(&dword_25479E000, v60, OS_LOG_TYPE_INFO, "The requested PHAsset attachment is a photo.", &block, 2u);
    }

    originalFilename3 = [v89 originalFilename];
    v62 = [v82 im_randomTemporaryFileURLWithFileName:originalFilename3];

    defaultManager3 = [MEMORY[0x277CD9800] defaultManager];
    *&block = MEMORY[0x277D85DD0];
    *(&block + 1) = 3221225472;
    v113 = sub_2547B1468;
    v114 = &unk_2797867D0;
    v64 = v89;
    v115 = v64;
    v120 = v110;
    v119 = v78;
    v116 = v82;
    v117 = v81;
    v57 = v62;
    v118 = v57;
    [defaultManager3 writeDataForAssetResource:v64 toFile:v57 options:v45 completionHandler:&block];

LABEL_48:
    v58 = v115;
LABEL_49:

    goto LABEL_50;
  }

  if (v85)
  {
    v65 = IMLogHandleForCategory();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      LOWORD(block) = 0;
      _os_log_impl(&dword_25479E000, v65, OS_LOG_TYPE_INFO, "The requested PHAsset attachment is a video.", &block, 2u);
    }

    originalFilename4 = [v85 originalFilename];
    v67 = [v82 im_randomTemporaryFileURLWithFileName:originalFilename4];

    defaultManager4 = [MEMORY[0x277CD9800] defaultManager];
    *&block = MEMORY[0x277D85DD0];
    *(&block + 1) = 3221225472;
    v113 = sub_2547B177C;
    v114 = &unk_2797867D0;
    v115 = v89;
    v120 = v110;
    v119 = v78;
    v116 = v82;
    v117 = v81;
    v57 = v67;
    v118 = v57;
    [defaultManager4 writeDataForAssetResource:v85 toFile:v57 options:v45 completionHandler:&block];

    goto LABEL_48;
  }

LABEL_50:

  _Block_object_dispose(v110, 8);
  v69 = *MEMORY[0x277D85DE8];
}

- (void)sendMessagesWithText:(id)text currentLocation:(BOOL)location sharedLinkURL:(id)l audioMessageAttachment:(id)attachment photoLibraryAttachment:(id)libraryAttachment fileAttachments:(id)attachments expressiveSendStyleID:(id)d idsIdentifier:(id)self0 executionContext:(int64_t)self1 shouldHideSiriAttribution:(BOOL)self2 toChat:(id)self3 completion:(id)self4
{
  v126 = *MEMORY[0x277D85DE8];
  textCopy = text;
  lCopy = l;
  attachmentCopy = attachment;
  libraryAttachmentCopy = libraryAttachment;
  attachmentsCopy = attachments;
  dCopy = d;
  identifierCopy = identifier;
  chatCopy = chat;
  completionCopy = completion;
  v22 = _IMAssistantCoreSendMessageSignpostLogHandle();
  v23 = os_signpost_id_generate(v22);

  v24 = _IMAssistantCoreSendMessageSignpostLogHandle();
  v25 = v24;
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "sendMessageWithText", &unk_2547CAD0B, buf, 2u);
  }

  v118[0] = MEMORY[0x277D85DD0];
  v118[1] = 3221225472;
  v118[2] = sub_2547A906C;
  v118[3] = &unk_279786560;
  v120 = v23;
  v26 = completionCopy;
  v119 = v26;
  v27 = MEMORY[0x259C19590](v118);
  messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  v117 = 0;
  v29 = [messageHandlerDataSource screentimeAllowedToShowChat:chatCopy error:&v117];
  v30 = v117;

  if (v29)
  {
    v31 = textCopy;
    if (([chatCopy isMemberOfChat]& 1) == 0)
    {
      v46 = IMLogHandleForCategory();
      v32 = attachmentCopy;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v123 = chatCopy;
        _os_log_impl(&dword_25479E000, v46, OS_LOG_TYPE_INFO, "Send Messages Intent: Failed. Will not send to chat in Un-Joined state: %@", buf, 0xCu);
      }

      v27[2](v27, *MEMORY[0x277CD4570], 0);
      goto LABEL_23;
    }

    v32 = attachmentCopy;
    if (!textCopy && !lCopy && !attachmentCopy && !libraryAttachmentCopy && !location && ![attachmentsCopy count])
    {
      v47 = IMLogHandleForCategory();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v47, OS_LOG_TYPE_INFO, "Send Messages Intent: Invoked with an empty message request.", buf, 2u);
      }

      v27[2](v27, 4, 0);
LABEL_23:
      v44 = dCopy;
      goto LABEL_56;
    }

    v33 = 0;
    if (context == 1 && !attribution)
    {
      v33 = *MEMORY[0x277D1AD60];
    }

    v80 = v30;
    v34 = IMLogHandleForCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v123 = v33;
      v124 = 2048;
      contextCopy = context;
      _os_log_impl(&dword_25479E000, v34, OS_LOG_TYPE_INFO, "Using sourceApplicationID %@ for executionContext %ld.", buf, 0x16u);
    }

    v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v81 = lCopy;
    v78 = v35;
    v79 = v33;
    v77 = v26;
    if (attachmentCopy)
    {
      messageHandlerDataSource2 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
      fileManagerDataSource = [messageHandlerDataSource2 fileManagerDataSource];
      v37 = attachmentCopy;
      if (([v37 isFileURL]& 1) != 0)
      {
        lastPathComponent = [v37 lastPathComponent];
        v39 = [fileManagerDataSource im_randomTemporaryFileURLWithFileName:lastPathComponent];

        v121 = 0;
        v40 = [fileManagerDataSource im_copySecurityScopedResourceAtURL:v37 toDestination:v39 error:&v121];
        v41 = v121;
        if (v40)
        {
          v42 = v39;
        }

        else
        {
          v57 = IMLogHandleForCategory();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v123 = v37;
            v124 = 2112;
            contextCopy = v41;
            _os_log_impl(&dword_25479E000, v57, OS_LOG_TYPE_INFO, "Failed to copy the file from %@ into the MessagesAssistantExtension Sandbox. Error: %@", buf, 0x16u);
          }

          v42 = 0;
        }
      }

      else
      {
        v41 = IMLogHandleForCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v123 = v37;
          _os_log_impl(&dword_25479E000, v41, OS_LOG_TYPE_INFO, "Error, url is not a fileURL: %@", buf, 0xCu);
        }

        v42 = 0;
      }

      messageHandlerDataSource3 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
      fileManagerDataSource2 = [messageHandlerDataSource3 fileManagerDataSource];
      messageHandlerDataSource4 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
      fileTransferCenterDataSource = [messageHandlerDataSource4 fileTransferCenterDataSource];
      v59 = v42;
      v60 = IMLogHandleForCategory();
      v61 = os_log_type_enabled(v60, OS_LOG_TYPE_INFO);
      if (v59)
      {
        v72 = messageHandlerDataSource3;
        if (v61)
        {
          *buf = 138412290;
          v123 = v59;
          _os_log_impl(&dword_25479E000, v60, OS_LOG_TYPE_INFO, "Building a file transfer message based on a file at %@", buf, 0xCu);
        }

        v60 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v62 = [fileTransferCenterDataSource createNewOutgoingTransferWithLocalFileURL:v59];
        [fileTransferCenterDataSource registerTransferWithDaemon:v62];
        [v60 addObject:v62];
        v63 = IMLogHandleForCategory();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v123 = v60;
          _os_log_impl(&dword_25479E000, v63, OS_LOG_TYPE_INFO, "The message's file transfer guids are: %@", buf, 0xCu);
        }

        v64 = [MEMORY[0x277CCA898] __im_attributedStringWithFileTransfers:v60];
        __im_attributedStringByAssigningMessagePartNumbers = [v64 __im_attributedStringByAssigningMessagePartNumbers];
        v66 = [MEMORY[0x277D18DA0] instantMessageWithText:__im_attributedStringByAssigningMessagePartNumbers messageSubject:0 fileTransferGUIDs:v60 flags:2097157 threadIdentifier:0];

        v32 = attachmentCopy;
        messageHandlerDataSource3 = v72;
      }

      else
      {
        v32 = attachmentCopy;
        if (v61)
        {
          *buf = 0;
          _os_log_impl(&dword_25479E000, v60, OS_LOG_TYPE_INFO, "Provided localFileAttachmentURL is nil", buf, 2u);
        }

        v66 = 0;
      }

      v111[0] = MEMORY[0x277D85DD0];
      v111[1] = 3221225472;
      v111[2] = sub_2547A91E0;
      v111[3] = &unk_279786510;
      v116 = v27;
      v67 = v78;
      v112 = v78;
      v113 = v66;
      v114 = chatCopy;
      selfCopy = self;
      v68 = v66;
      selfCopy2 = self;
      v44 = dCopy;
      [(IMAssistantMessageSendHandler *)selfCopy2 sendMessageWithDraft:v68 expressiveSendStyleID:dCopy idsIdentifier:identifierCopy executionContext:context sourceApplicationID:v79 toChat:v114 completion:v111];

      v70 = v79;
      v30 = v80;
      lCopy = v81;
    }

    else
    {
      v48 = v35;
      v98[0] = MEMORY[0x277D85DD0];
      v98[1] = 3221225472;
      v98[2] = sub_2547A9278;
      v98[3] = &unk_279786588;
      v99 = lCopy;
      selfCopy3 = self;
      v75 = dCopy;
      v101 = v75;
      v73 = identifierCopy;
      v102 = v73;
      contextCopy2 = context;
      v49 = v33;
      v103 = v49;
      v50 = chatCopy;
      v104 = v50;
      v51 = v27;
      v108 = v51;
      v52 = v48;
      v105 = v52;
      locationCopy = location;
      v106 = attachmentsCopy;
      v107 = libraryAttachmentCopy;
      v53 = MEMORY[0x259C19590](v98);
      v54 = v53;
      if (textCopy)
      {
        v55 = [(IMAssistantMessageSendHandler *)self makeIMMessageFromText:?];
        v91[0] = MEMORY[0x277D85DD0];
        v91[1] = 3221225472;
        v91[2] = sub_2547A9564;
        v91[3] = &unk_2797865B0;
        v96 = v51;
        v92 = v52;
        v93 = v55;
        v94 = v50;
        selfCopy4 = self;
        v97 = v54;
        v56 = v55;
        [(IMAssistantMessageSendHandler *)self sendMessageWithDraft:v56 expressiveSendStyleID:v75 idsIdentifier:v73 executionContext:context sourceApplicationID:v49 toChat:v94 completion:v91];
      }

      else
      {
        (*(v53 + 16))(v53);
      }

      v30 = v80;

      v59 = v99;
      lCopy = v81;
      v32 = attachmentCopy;
      v44 = dCopy;
      v67 = v78;
      v70 = v79;
    }

    v31 = textCopy;
    v26 = v77;
  }

  else
  {
    v43 = IMLogHandleForCategory();
    v31 = textCopy;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v123 = chatCopy;
      _os_log_impl(&dword_25479E000, v43, OS_LOG_TYPE_INFO, "Send Messages Intent: Failed. Downtime enabled, chat contained non-allowlisted handles: %@", buf, 0xCu);
    }

    v32 = attachmentCopy;
    v44 = dCopy;
    if (v30)
    {
      code = [v30 code];
    }

    else
    {
      code = *MEMORY[0x277CD4588];
    }

    v27[2](v27, code, 0);
  }

LABEL_56:

  v71 = *MEMORY[0x277D85DE8];
}

- (id)resolveMessageContentWithString:(id)string
{
  trimmedString = [string trimmedString];
  if ([trimmedString length])
  {
    [MEMORY[0x277CD4218] successWithResolvedString:trimmedString];
  }

  else
  {
    [MEMORY[0x277CD4218] needsValue];
  }
  v4 = ;

  return v4;
}

- (id)recipientDisambiguationResultsFromMultipleRelevantChats:(id)chats
{
  v69 = *MEMORY[0x277D85DE8];
  chatsCopy = chats;
  firstObject = [chatsCopy firstObject];
  resolvedPersons = [firstObject resolvedPersons];
  v6 = [resolvedPersons count];

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v7 = chatsCopy;
  v8 = [v7 countByEnumeratingWithState:&v61 objects:v68 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v62;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v62 != v10)
        {
          objc_enumerationMutation(v7);
        }

        resolvedPersons2 = [*(*(&v61 + 1) + 8 * i) resolvedPersons];
        v13 = [resolvedPersons2 count];

        if (v6 != v13)
        {
          v23 = IMLogHandleForCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_25479E000, v23, OS_LOG_TYPE_INFO, "Resolved persons from relevant chats contained an inconsistent number of recipients, ignoring relevant chats.", buf, 2u);
          }

          v44 = 0;
          v38 = v7;
          goto LABEL_42;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v61 objects:v68 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0x277CBE000uLL;
  for (j = objc_alloc_init(MEMORY[0x277CBEB18]); v6; --v6)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [j addObject:v16];
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v41 = v7;
  v17 = v7;
  v18 = [v17 countByEnumeratingWithState:&v56 objects:v67 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v57;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v57 != v20)
        {
          objc_enumerationMutation(v17);
        }

        resolvedPersons3 = [*(*(&v56 + 1) + 8 * k) resolvedPersons];
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = sub_2547A9B74;
        v54[3] = &unk_2797865D8;
        v55 = j;
        [resolvedPersons3 enumerateObjectsUsingBlock:v54];
      }

      v19 = [v17 countByEnumeratingWithState:&v56 objects:v67 count:16];
    }

    while (v19);
  }

  v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v23 = j;
  v45 = [v23 countByEnumeratingWithState:&v50 objects:v66 count:16];
  if (v45)
  {
    obj = v23;
    v43 = *v51;
    do
    {
      for (m = 0; m != v45; ++m)
      {
        if (*v51 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v50 + 1) + 8 * m);
        v26 = objc_alloc_init(*(v14 + 2840));
        v27 = v14;
        v28 = objc_alloc_init(*(v14 + 2840));
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v29 = v25;
        v30 = [v29 countByEnumeratingWithState:&v46 objects:v65 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v47;
          do
          {
            for (n = 0; n != v31; ++n)
            {
              if (*v47 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = *(*(&v46 + 1) + 8 * n);
              customIdentifier = [v34 customIdentifier];
              if (([v28 containsObject:customIdentifier] & 1) == 0)
              {
                [v26 addObject:v34];
                [v28 addObject:customIdentifier];
              }
            }

            v31 = [v29 countByEnumeratingWithState:&v46 objects:v65 count:16];
          }

          while (v31);
        }

        if ([v26 count] == 1)
        {
          firstObject2 = [v26 firstObject];
          v37 = [MEMORY[0x277CD4088] successWithResolvedPerson:firstObject2];
          [v44 addObject:v37];
        }

        else
        {
          firstObject2 = [MEMORY[0x277CD4088] disambiguationWithPeopleToDisambiguate:v26];
          [v44 addObject:firstObject2];
        }

        v14 = v27;
      }

      v45 = [obj countByEnumeratingWithState:&v50 objects:v66 count:16];
    }

    while (v45);
    v23 = obj;
  }

  v38 = v23;
  v7 = v41;
LABEL_42:

  v39 = *MEMORY[0x277D85DE8];

  return v44;
}

- (id)resolveRecipientsWithGroupNameOrConversationIdentifier:(id)identifier forIntent:(id)intent
{
  v110[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  intentCopy = intent;
  messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  accountDataSource = [messageHandlerDataSource accountDataSource];
  hasMessagingAccount = [accountDataSource hasMessagingAccount];

  if (hasMessagingAccount)
  {
    speakableGroupName = [intentCopy speakableGroupName];
    vocabularyIdentifier = [speakableGroupName vocabularyIdentifier];
    v97 = identifierCopy;
    if (![vocabularyIdentifier length])
    {
      goto LABEL_38;
    }

    v13 = _IMAssistantCoreSendMessageSignpostLogHandle();
    v14 = os_signpost_id_generate(v13);

    v15 = _IMAssistantCoreSendMessageSignpostLogHandle();
    v16 = v15;
    v17 = v14 - 1;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "resolveRecipientsFromGroup", &unk_2547CAD0B, buf, 2u);
    }

    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v105 = vocabularyIdentifier;
      _os_log_impl(&dword_25479E000, v18, OS_LOG_TYPE_INFO, "Attempting to resolve by speakableGroupName.vocabularyIdentifier: %@", buf, 0xCu);
    }

    messageHandlerDataSource2 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
    chatDataSource = [messageHandlerDataSource2 chatDataSource];
    v21 = vocabularyIdentifier;
    v22 = vocabularyIdentifier;
    spid = v14;
    if ([v22 length])
    {
      v23 = IMAssistantChatIdentifierFromConversationIdentifier(v22);
      v24 = [chatDataSource existingChatWithChatIdentifier:v23];
      if (v24)
      {
        conversationIdentifier = v24;
        goto LABEL_20;
      }

      v28 = IMLogHandleForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v105 = v22;
        _os_log_impl(&dword_25479E000, v28, OS_LOG_TYPE_INFO, "Could not find a chat with the conversationIdentifier %@, ignoring.", buf, 0xCu);
      }
    }

    else
    {
      v23 = IMLogHandleForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v23, OS_LOG_TYPE_INFO, "Could not find a chat with nil or empty conversationIdentifier, ignoring", buf, 2u);
      }
    }

    conversationIdentifier = 0;
LABEL_20:

    v29 = IMLogHandleForCategory();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
    if (conversationIdentifier)
    {
      if (v30)
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v29, OS_LOG_TYPE_INFO, "A speakableGroupName.vocabularyIdentifier matching a valid chat was provided, extracting recipients from chat and attaching to intent for use in Siri dialog.", buf, 2u);
      }

      v31 = [(IMAssistantMessageSendHandler *)self resolvedRecipientsFromChat:conversationIdentifier];
      if (v31)
      {
        notRequired = v31;
        messageHandlerDataSource3 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
        v99 = 0;
        v34 = [messageHandlerDataSource3 screentimeAllowedToShowChat:conversationIdentifier error:&v99];
        v35 = v99;

        if (v34)
        {
          joinState = [conversationIdentifier joinState];
          v37 = IMLogHandleForCategory();
          v38 = os_log_type_enabled(v37, OS_LOG_TYPE_INFO);
          if (joinState == 4)
          {
            vocabularyIdentifier = v21;
            if (v38)
            {
              *buf = 0;
              _os_log_impl(&dword_25479E000, v37, OS_LOG_TYPE_INFO, "Returning unsupported for recipient because the resolved chat is read-only. Using INSendMessageRecipientUnsupportedReasonMessagingServiceNotEnabledForRecipient", buf, 2u);
            }

            v39 = [MEMORY[0x277CD4088] unsupportedForReason:3];
            v108 = v39;
            v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v108 count:1];
          }

          else
          {
            vocabularyIdentifier = v21;
            if (v38)
            {
              *buf = 138412546;
              v105 = speakableGroupName;
              v106 = 2112;
              v107 = notRequired;
              _os_log_impl(&dword_25479E000, v37, OS_LOG_TYPE_INFO, "Returning success with recipients resolved from speakableGroupName: %@ recipients: %@", buf, 0x16u);
            }

            v86 = _IMAssistantCoreSendMessageSignpostLogHandle();
            v87 = v86;
            if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v86))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_25479E000, v87, OS_SIGNPOST_INTERVAL_END, spid, "resolveRecipientsFromConversationID", &unk_2547CAD0B, buf, 2u);
            }

            v27 = notRequired;
          }

          identifierCopy = v97;
        }

        else
        {
          v54 = IMLogHandleForCategory();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v105 = speakableGroupName;
            _os_log_impl(&dword_25479E000, v54, OS_LOG_TYPE_INFO, "Returning unsupported because the chat group with speakableGroupName (%@) contains non-allowlisted participants and isn't allowed by downtime.", buf, 0xCu);
          }

          v55 = _IMAssistantCoreSendMessageSignpostLogHandle();
          v56 = v55;
          vocabularyIdentifier = v21;
          if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v55))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_25479E000, v56, OS_SIGNPOST_INTERVAL_END, spid, "resolveRecipientsFromConversationID", &unk_2547CAD0B, buf, 2u);
          }

          domain = [v35 domain];
          v58 = [domain isEqual:@"__kIMAssistantMessageHandlerErrorDomain"];

          identifierCopy = v97;
          if ((v58 & 1) == 0)
          {
            v59 = IMLogHandleForCategory();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v105 = v35;
              _os_log_impl(&dword_25479E000, v59, OS_LOG_TYPE_INFO, "Will return unsupported with an unknown reason, error: %@", buf, 0xCu);
            }
          }

          if (v35)
          {
            code = [v35 code];
          }

          else
          {
            code = *MEMORY[0x277CD4588];
          }

          v90 = [MEMORY[0x277CD4088] unsupportedForReason:code];
          v109 = v90;
          v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v109 count:1];
        }

        goto LABEL_119;
      }

      v29 = IMLogHandleForCategory();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        goto LABEL_34;
      }

      *buf = 138412290;
      v105 = v22;
      v40 = "Recipients could not be resolved from speakableGroupName.vocabularyIdentifier: %@. Ignoring identifier and continuing with person resolution.";
    }

    else
    {
      if (!v30)
      {
        goto LABEL_34;
      }

      *buf = 138412290;
      v105 = v22;
      v40 = "No chat could be found matching speakableGroupName.vocabularyIdentifier: %@. Ignoring identifier and continuing with person resolution.";
    }

    _os_log_impl(&dword_25479E000, v29, OS_LOG_TYPE_INFO, v40, buf, 0xCu);
LABEL_34:
    vocabularyIdentifier = v21;

    v41 = _IMAssistantCoreSendMessageSignpostLogHandle();
    v42 = v41;
    if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v42, OS_SIGNPOST_INTERVAL_END, spid, "resolveRecipientsFromGroup", &unk_2547CAD0B, buf, 2u);
    }

    identifierCopy = v97;
LABEL_38:
    conversationIdentifier = [intentCopy conversationIdentifier];
    if (![conversationIdentifier length])
    {
LABEL_82:
      spokenPhrase = [speakableGroupName spokenPhrase];
      v77 = [spokenPhrase length];

      if (v77)
      {
        v78 = IMLogHandleForCategory();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_25479E000, v78, OS_LOG_TYPE_INFO, "No recipients are required if a group name is present", buf, 2u);
        }

        notRequired = [MEMORY[0x277CD4088] notRequired];
        v101 = notRequired;
        v79 = MEMORY[0x277CBEA60];
        v80 = &v101;
      }

      else
      {
        if ([identifierCopy count])
        {
          v27 = 0;
LABEL_120:

          goto LABEL_121;
        }

        v85 = IMLogHandleForCategory();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_25479E000, v85, OS_LOG_TYPE_INFO, "No recipients provided to resolve, returning needsValue.", buf, 2u);
        }

        notRequired = [MEMORY[0x277CD4088] needsValue];
        v100 = notRequired;
        v79 = MEMORY[0x277CBEA60];
        v80 = &v100;
      }

      v27 = [v79 arrayWithObjects:v80 count:1];
LABEL_119:

      goto LABEL_120;
    }

    v43 = _IMAssistantCoreSendMessageSignpostLogHandle();
    v44 = os_signpost_id_generate(v43);

    v45 = _IMAssistantCoreSendMessageSignpostLogHandle();
    v46 = v45;
    v47 = v44 - 1;
    if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v46, OS_SIGNPOST_INTERVAL_BEGIN, v44, "resolveRecipientsFromConversationID", &unk_2547CAD0B, buf, 2u);
    }

    spida = vocabularyIdentifier;

    v48 = IMLogHandleForCategory();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v105 = conversationIdentifier;
      _os_log_impl(&dword_25479E000, v48, OS_LOG_TYPE_INFO, "Attempting to resolve by conversationIdentifier: %@", buf, 0xCu);
    }

    messageHandlerDataSource4 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
    chatDataSource2 = [messageHandlerDataSource4 chatDataSource];
    v51 = conversationIdentifier;
    v94 = v44;
    if ([v51 length])
    {
      v52 = IMAssistantChatIdentifierFromConversationIdentifier(v51);
      v53 = [chatDataSource2 existingChatWithChatIdentifier:v52];
      if (v53)
      {
        notRequired = v53;
        goto LABEL_64;
      }

      v61 = IMLogHandleForCategory();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v105 = v51;
        _os_log_impl(&dword_25479E000, v61, OS_LOG_TYPE_INFO, "Could not find a chat with the conversationIdentifier %@, ignoring.", buf, 0xCu);
      }
    }

    else
    {
      v52 = IMLogHandleForCategory();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v52, OS_LOG_TYPE_INFO, "Could not find a chat with nil or empty conversationIdentifier, ignoring", buf, 2u);
      }
    }

    notRequired = 0;
LABEL_64:

    v62 = IMLogHandleForCategory();
    v63 = os_log_type_enabled(v62, OS_LOG_TYPE_INFO);
    if (notRequired)
    {
      if (v63)
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v62, OS_LOG_TYPE_INFO, "A conversationIdentifier matching a valid chat was provided, extracting recipients from chat and attaching to intent for use in Siri dialog.", buf, 2u);
      }

      v64 = [(IMAssistantMessageSendHandler *)self resolvedRecipientsFromChat:notRequired];
      if (v64)
      {
        v65 = v64;
        messageHandlerDataSource5 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
        v98 = 0;
        v67 = [messageHandlerDataSource5 screentimeAllowedToShowChat:notRequired error:&v98];
        v68 = v98;

        if (v67)
        {
          joinState2 = [notRequired joinState];
          v70 = IMLogHandleForCategory();
          v71 = os_log_type_enabled(v70, OS_LOG_TYPE_INFO);
          if (joinState2 == 4)
          {
            if (v71)
            {
              *buf = 0;
              _os_log_impl(&dword_25479E000, v70, OS_LOG_TYPE_INFO, "Returning unsupported for recipient because the resolved chat is read-only. Using INSendMessageRecipientUnsupportedReasonMessagingServiceNotEnabledForRecipient", buf, 2u);
            }

            v72 = [MEMORY[0x277CD4088] unsupportedForReason:3];
            v102 = v72;
            v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v102 count:1];
          }

          else
          {
            if (v71)
            {
              *buf = 138412290;
              v105 = v65;
              _os_log_impl(&dword_25479E000, v70, OS_LOG_TYPE_INFO, "Returning success with recipients resolved from chat: %@", buf, 0xCu);
            }

            v88 = _IMAssistantCoreSendMessageSignpostLogHandle();
            v89 = v88;
            if (v47 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v88))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_25479E000, v89, OS_SIGNPOST_INTERVAL_END, v94, "resolveRecipientsFromConversationID", &unk_2547CAD0B, buf, 2u);
            }

            v27 = v65;
          }

          identifierCopy = v97;
        }

        else
        {
          v81 = IMLogHandleForCategory();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v105 = v51;
            _os_log_impl(&dword_25479E000, v81, OS_LOG_TYPE_INFO, "Returning unsupported because the chat group w/ conversation identifier(%@) contains non-allowlisted participants and isn't allowed by downtime.", buf, 0xCu);
          }

          v82 = _IMAssistantCoreSendMessageSignpostLogHandle();
          v83 = v82;
          if (v47 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v82))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_25479E000, v83, OS_SIGNPOST_INTERVAL_END, v94, "resolveRecipientsFromConversationID", &unk_2547CAD0B, buf, 2u);
          }

          identifierCopy = v97;
          if (v68)
          {
            code2 = [v68 code];
          }

          else
          {
            code2 = *MEMORY[0x277CD4588];
          }

          v91 = [MEMORY[0x277CD4088] unsupportedForReason:code2];
          v103 = v91;
          v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v103 count:1];
        }

        vocabularyIdentifier = spida;
        goto LABEL_119;
      }

      v62 = IMLogHandleForCategory();
      if (!os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        goto LABEL_78;
      }

      *buf = 138412290;
      v105 = v51;
      v73 = "Recipients could not be resolved from conversationIdentifier: %@. Ignoring conversation identifier and continuing with person resolution.";
    }

    else
    {
      if (!v63)
      {
        goto LABEL_78;
      }

      *buf = 138412290;
      v105 = v51;
      v73 = "No chat could be found matching conversationIdentifier: %@. Ignoring conversation identifier and continuing with person resolution.";
    }

    _os_log_impl(&dword_25479E000, v62, OS_LOG_TYPE_INFO, v73, buf, 0xCu);
LABEL_78:
    vocabularyIdentifier = spida;

    v74 = _IMAssistantCoreSendMessageSignpostLogHandle();
    v75 = v74;
    if (v47 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v74))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v75, OS_SIGNPOST_INTERVAL_END, v94, "resolveRecipientsFromConversationID", &unk_2547CAD0B, buf, 2u);
    }

    identifierCopy = v97;
    goto LABEL_82;
  }

  v26 = IMLogHandleForCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25479E000, v26, OS_LOG_TYPE_INFO, "Could not resolve recipients; no messaging account enabled", buf, 2u);
  }

  speakableGroupName = [MEMORY[0x277CD4088] unsupportedForReason:1];
  v110[0] = speakableGroupName;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v110 count:1];
LABEL_121:

  v92 = *MEMORY[0x277D85DE8];

  return v27;
}

- (void)resolveRecipientsWithCRR:(id)r forIntent:(id)intent completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  rCopy = r;
  intentCopy = intent;
  completionCopy = completion;
  v11 = IMLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v22 = rCopy;
    _os_log_impl(&dword_25479E000, v11, OS_LOG_TYPE_INFO, "Resolving recipients with CRR: %@", buf, 0xCu);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2547AAC64;
  v17[3] = &unk_279786600;
  v17[4] = self;
  v18 = rCopy;
  v19 = intentCopy;
  v20 = completionCopy;
  v12 = completionCopy;
  v13 = intentCopy;
  v14 = rCopy;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v17);
  dispatch_async(MEMORY[0x277D85CD0], v15);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)resolveRecipientsWithoutCRR:(id)r forIntent:(id)intent completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  rCopy = r;
  intentCopy = intent;
  completionCopy = completion;
  v11 = IMLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v22 = rCopy;
    _os_log_impl(&dword_25479E000, v11, OS_LOG_TYPE_INFO, "Resolving recipients without CRR: %@", buf, 0xCu);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2547AB3A0;
  v17[3] = &unk_279786600;
  v17[4] = self;
  v18 = rCopy;
  v19 = intentCopy;
  v20 = completionCopy;
  v12 = completionCopy;
  v13 = intentCopy;
  v14 = rCopy;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v17);
  dispatch_async(MEMORY[0x277D85CD0], v15);

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)recipientHandleResolutionResultsAllowedByScreentime:(id)screentime error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  screentimeCopy = screentime;
  if ([MEMORY[0x277CD3EA0] __imcore__containsNonSuccess:screentimeCopy])
  {
    v7 = 1;
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v8, OS_LOG_TYPE_INFO, "Validating resolved handles for screentime", buf, 2u);
    }

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = screentimeCopy;
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          resolvedValue = [*(*(&v25 + 1) + 8 * i) resolvedValue];
          customIdentifier = [resolvedValue customIdentifier];
          if ([customIdentifier length])
          {
            [v9 addObject:customIdentifier];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v12);
    }

    messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
    v24 = 0;
    v7 = [messageHandlerDataSource screentimeAllowedToShowConversationWithHandleIDs:v9 error:&v24];
    v18 = v24;

    v19 = IMLogHandleForCategory();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v20)
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v19, OS_LOG_TYPE_INFO, "Handles are allowed by screentime", buf, 2u);
      }
    }

    else
    {
      if (v20)
      {
        *buf = 138412290;
        v30 = v9;
        _os_log_impl(&dword_25479E000, v19, OS_LOG_TYPE_INFO, "Handles are not allowed by screentime: %@.", buf, 0xCu);
      }

      if (error)
      {
        v21 = v18;
        *error = v18;
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)resolvedRecipientsFromChat:(id)chat
{
  v52 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  v5 = _IMAssistantCoreSendMessageSignpostLogHandle();
  v6 = os_signpost_id_generate(v5);

  v7 = _IMAssistantCoreSendMessageSignpostLogHandle();
  v8 = v7;
  v34 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "resolvedRecipientsFromChat", &unk_2547CAD0B, buf, 2u);
  }

  spid = v6;

  v35 = chatCopy;
  v9 = [chatCopy participantsWithState:16];
  v10 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v38 objects:v51 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v39;
    v36 = *MEMORY[0x277CBD018];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v38 + 1) + 8 * i);
        v16 = [(IMAssistantMessageHandler *)self contactIdentifiersMatchingHandle:v15];
        if ([v16 count] >= 2)
        {
          v50 = v36;
          v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
          v18 = [v15 cnContactWithKeys:v17];
          identifier = [v18 identifier];

          if (![identifier length])
          {
            goto LABEL_14;
          }

          v20 = IMLogHandleForCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_25479E000, v20, OS_LOG_TYPE_INFO, "Attempting to resolve ambiguous handle to contact using the Contacts Framework.", buf, 2u);
          }

          v21 = [(IMAssistantMessageHandler *)self contactWithIdentifier:identifier];
          if (!v21)
          {
LABEL_14:
            v22 = IMLogHandleForCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_25479E000, v22, OS_LOG_TYPE_INFO, "Could not resolve ambiguous handle to contact using the Contacts Framework.", buf, 2u);
            }

            v21 = 0;
          }

          v23 = IMLogHandleForCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v24 = [v16 count];
            *buf = 134218754;
            v43 = v24;
            v44 = 2112;
            v45 = v15;
            v46 = 2112;
            v47 = v16;
            v48 = 2112;
            v49 = v21;
            _os_log_impl(&dword_25479E000, v23, OS_LOG_TYPE_INFO, "%ld contacts matched chat participant %@. Matching identifiers: %@. Using contact: %@", buf, 0x2Au);
          }

          if (v21)
          {
            goto LABEL_22;
          }
        }

        if ([v16 count] && (objc_msgSend(v16, "lastObject"), v25 = objc_claimAutoreleasedReturnValue(), -[IMAssistantMessageHandler contactWithIdentifier:](self, "contactWithIdentifier:", v25), v21 = objc_claimAutoreleasedReturnValue(), v25, v21))
        {
LABEL_22:
          v26 = objc_alloc(MEMORY[0x277CD3E90]);
          v27 = [v26 __im_assistant_initWithContact:v21 imHandle:v15];
        }

        else
        {
          v26 = objc_alloc(MEMORY[0x277CD3E90]);
          v27 = [v26 __im_assistant_initAnonymousRecipientWithIMHandle:v15];
          v21 = 0;
        }

        v28 = [MEMORY[0x277CD4088] successWithResolvedPerson:v27];
        [v10 addObject:v28];
      }

      v12 = [obj countByEnumeratingWithState:&v38 objects:v51 count:16];
    }

    while (v12);
  }

  v29 = _IMAssistantCoreSendMessageSignpostLogHandle();
  v30 = v29;
  if (v34 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v30, OS_SIGNPOST_INTERVAL_END, spid, "resolvedRecipientsFromChat", &unk_2547CAD0B, buf, 2u);
  }

  v31 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)contactsWithDuplicateNamesAmongContacts:(id)contacts
{
  v39 = *MEMORY[0x277D85DE8];
  contactsCopy = contacts;
  v4 = _IMAssistantCoreSendMessageSignpostLogHandle();
  v5 = os_signpost_id_generate(v4);

  v6 = _IMAssistantCoreSendMessageSignpostLogHandle();
  v7 = v6;
  v29 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "duplicateNameCheck", &unk_2547CAD0B, buf, 2u);
  }

  spid = v5;

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = contactsCopy;
  v9 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v34;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        v14 = [MEMORY[0x277CCAC00] componentsForContact:v13];
        if (v14)
        {
          v15 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v14 style:0 options:0];
        }

        else
        {
          v15 = 0;
        }

        if (v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = &stru_286693278;
        }

        v17 = v16;
        v18 = [v8 objectForKeyedSubscript:v17];
        v19 = v18;
        if (v18)
        {
          [v18 addObject:v13];
        }

        else
        {
          v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v13, 0}];
          [v8 setObject:v20 forKeyedSubscript:v17];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v10);
  }

  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_2547ADD24;
  v31[3] = &unk_279786698;
  v22 = v21;
  v32 = v22;
  [v8 enumerateKeysAndObjectsUsingBlock:v31];
  v23 = [v22 copy];
  v24 = _IMAssistantCoreSendMessageSignpostLogHandle();
  v25 = v24;
  if (v29 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v25, OS_SIGNPOST_INTERVAL_END, spid, "duplicateNameCheck", &unk_2547CAD0B, buf, 2u);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)resolveRecipientsByFindingExistingRelevantChatsForRecipients:(id)recipients withMatchingHandlesByRecipient:(id)recipient fromChats:(id)chats
{
  v112 = *MEMORY[0x277D85DE8];
  recipientsCopy = recipients;
  recipientCopy = recipient;
  chatsCopy = chats;
  v10 = _IMAssistantCoreSendMessageSignpostLogHandle();
  v11 = os_signpost_id_generate(v10);

  v12 = _IMAssistantCoreSendMessageSignpostLogHandle();
  v13 = v12;
  spid = v11;
  v61 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "resolveRecipientsFromRelevantChat", &unk_2547CAD0B, buf, 2u);
  }

  v14 = IMLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [chatsCopy count];
    *buf = 134217984;
    v105 = v15;
    _os_log_impl(&dword_25479E000, v14, OS_LOG_TYPE_INFO, "Attempting to find a matching chat by examining %ld recent chats.", buf, 0xCu);
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = chatsCopy;
  v17 = [obj countByEnumeratingWithState:&v100 objects:v111 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v101;
    selfCopy = self;
    v65 = recipientsCopy;
    v63 = v16;
    v62 = *v101;
LABEL_8:
    v20 = 0;
    v66 = v18;
    while (1)
    {
      if (*v101 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v100 + 1) + 8 * v20);
      if (![(IMAssistantMessageSendHandler *)self shouldContinueToExamineRelevantChatsWithMatches:v16 nextChat:v21, spid])
      {
        break;
      }

      v71 = v20;
      v78 = [v21 participantsWithState:16];
      v22 = [v78 count];
      if (v22 == [recipientsCopy count])
      {
        v70 = v21;
        v23 = _IMAssistantCoreSendMessageSignpostLogHandle();
        v24 = os_signpost_id_generate(v23);

        v25 = _IMAssistantCoreSendMessageSignpostLogHandle();
        v26 = v25;
        v69 = v24 - 1;
        if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_25479E000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v24, "examineRelevantChat", &unk_2547CAD0B, buf, 2u);
        }

        v67 = v24;

        v27 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:0 capacity:{objc_msgSend(recipientsCopy, "count")}];
        v98[0] = MEMORY[0x277D85DD0];
        v98[1] = 3221225472;
        v98[2] = sub_2547AE834;
        v98[3] = &unk_2797866C0;
        v28 = v27;
        v99 = v28;
        v29 = MEMORY[0x259C19590](v98);
        v30 = IMLogHandleForCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v105 = v21;
          _os_log_impl(&dword_25479E000, v30, OS_LOG_TYPE_INFO, "Beginning evaluation of participants in chat %@.", buf, 0xCu);
        }

        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v72 = recipientsCopy;
        v76 = [v72 countByEnumeratingWithState:&v94 objects:v110 count:16];
        if (v76)
        {
          v74 = *v95;
          v75 = v28;
          while (2)
          {
            v31 = 0;
            do
            {
              if (*v95 != v74)
              {
                objc_enumerationMutation(v72);
              }

              v77 = v31;
              v32 = *(*(&v94 + 1) + 8 * v31);
              v33 = [recipientCopy objectForKeyedSubscript:v32];
              v90 = 0u;
              v91 = 0u;
              v92 = 0u;
              v93 = 0u;
              v34 = v33;
              v81 = [v34 countByEnumeratingWithState:&v90 objects:v109 count:16];
              if (v81)
              {
                v79 = *v91;
                v80 = v34;
                do
                {
                  v35 = 0;
                  do
                  {
                    if (*v91 != v79)
                    {
                      objc_enumerationMutation(v34);
                    }

                    v82 = v35;
                    v36 = *(*(&v90 + 1) + 8 * v35);
                    v86 = 0u;
                    v87 = 0u;
                    v88 = 0u;
                    v89 = 0u;
                    v37 = v78;
                    v38 = [v37 countByEnumeratingWithState:&v86 objects:v108 count:16];
                    if (v38)
                    {
                      v39 = v38;
                      v40 = *v87;
                      do
                      {
                        for (i = 0; i != v39; ++i)
                        {
                          if (*v87 != v40)
                          {
                            objc_enumerationMutation(v37);
                          }

                          v42 = *(*(&v86 + 1) + 8 * i);
                          if ([v36 matchesIMHandle:v42])
                          {
                            v43 = IMLogHandleForCategory();
                            if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                            {
                              *buf = 138412546;
                              v105 = v42;
                              v106 = 2112;
                              v107 = v36;
                              _os_log_impl(&dword_25479E000, v43, OS_LOG_TYPE_INFO, "Found a chat participant handle: %@ matching requested handle: %@", buf, 0x16u);
                            }

                            (v29)[2](v29, v32, v42, v36);
                          }
                        }

                        v39 = [v37 countByEnumeratingWithState:&v86 objects:v108 count:16];
                      }

                      while (v39);
                    }

                    v35 = v82 + 1;
                    v34 = v80;
                  }

                  while (v82 + 1 != v81);
                  v81 = [v80 countByEnumeratingWithState:&v90 objects:v109 count:16];
                }

                while (v81);
              }

              v28 = v75;
              v44 = [v75 objectForKey:v32];
              v45 = [v44 count];

              if (!v45)
              {
                v46 = IMLogHandleForCategory();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v105 = v32;
                  _os_log_impl(&dword_25479E000, v46, OS_LOG_TYPE_INFO, "Did not find any matching chat participant for requested person %@", buf, 0xCu);
                }

                goto LABEL_48;
              }

              v31 = v77 + 1;
            }

            while (v77 + 1 != v76);
            v76 = [v72 countByEnumeratingWithState:&v94 objects:v110 count:16];
            if (v76)
            {
              continue;
            }

            break;
          }
        }

LABEL_48:

        v47 = [v28 count];
        if (v47 == [v72 count])
        {
          self = selfCopy;
          v48 = [(IMAssistantMessageSendHandler *)selfCopy findValidMappingOfRequestedRecipientToChatParticipantAmongMatches:v28];
          v49 = IMLogHandleForCategory();
          v50 = os_log_type_enabled(v49, OS_LOG_TYPE_INFO);
          v16 = v63;
          if (v48)
          {
            if (v50)
            {
              *buf = 138412290;
              v105 = v70;
              _os_log_impl(&dword_25479E000, v49, OS_LOG_TYPE_INFO, "Found a matching existing chat: %@", buf, 0xCu);
            }

            v83[0] = MEMORY[0x277D85DD0];
            v83[1] = 3221225472;
            v83[2] = sub_2547AE920;
            v83[3] = &unk_2797866E8;
            v84 = v48;
            v85 = selfCopy;
            v51 = [v72 __imArrayByApplyingBlock:v83];
            v52 = [[IMAssistantRelevantChatMatchingRecipients alloc] initWithChat:v70 resolvedPersons:v51];
            [v63 addObject:v52];

            v49 = v84;
          }

          else if (v50)
          {
            *buf = 138412290;
            v105 = v70;
            _os_log_impl(&dword_25479E000, v49, OS_LOG_TYPE_INFO, "Could not find a valid 1-1 relationship between chat participants and requested recipients. Ending evaluation of chat %@.", buf, 0xCu);
          }

          recipientsCopy = v65;
        }

        else
        {
          v48 = IMLogHandleForCategory();
          v16 = v63;
          self = selfCopy;
          if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v105 = v70;
            _os_log_impl(&dword_25479E000, v48, OS_LOG_TYPE_INFO, "Matching chat participant not found for all recipients. Ending evaluation of chat %@.", buf, 0xCu);
          }

          recipientsCopy = v65;
        }

        v53 = _IMAssistantCoreSendMessageSignpostLogHandle();
        v54 = v53;
        if (v69 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_25479E000, v54, OS_SIGNPOST_INTERVAL_END, v67, "examineRelevantChat", &unk_2547CAD0B, buf, 2u);
        }

        v18 = v66;
        v19 = v62;
      }

      v20 = v71 + 1;
      if (v71 + 1 == v18)
      {
        v18 = [obj countByEnumeratingWithState:&v100 objects:v111 count:16];
        if (v18)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

  if (![v16 count])
  {
    v55 = IMLogHandleForCategory();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v55, OS_LOG_TYPE_INFO, "Did not find a matching existing chat.", buf, 2u);
    }
  }

  v56 = _IMAssistantCoreSendMessageSignpostLogHandle();
  v57 = v56;
  if (v61 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v57, OS_SIGNPOST_INTERVAL_END, spid, "resolveRecipientsFromRelevantChat", &unk_2547CAD0B, buf, 2u);
  }

  v58 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)shouldContinueToExamineRelevantChatsWithMatches:(id)matches nextChat:(id)chat
{
  v26 = *MEMORY[0x277D85DE8];
  matchesCopy = matches;
  chatCopy = chat;
  if ([matchesCopy count])
  {
    firstObject = [matchesCopy firstObject];
    chat = [firstObject chat];

    lastFinishedMessageDate = [chat lastFinishedMessageDate];
    [lastFinishedMessageDate timeIntervalSinceNow];
    v11 = fabs(v10);

    if (v11 * 4.0 >= 3600.0)
    {
      v12 = v11 * 4.0;
    }

    else
    {
      v12 = 3600.0;
    }

    lastFinishedMessageDate2 = [chatCopy lastFinishedMessageDate];
    [lastFinishedMessageDate2 timeIntervalSinceNow];
    v15 = fabs(v14);

    v16 = v12 > v15;
    if (v12 <= v15)
    {
      v17 = IMLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v20 = 134218496;
        v21 = v11;
        v22 = 2048;
        v23 = v15;
        v24 = 2048;
        v25 = v12;
        _os_log_impl(&dword_25479E000, v17, OS_LOG_TYPE_INFO, "Next chat is beyond maximum relevant time interval. Ending evaluation of relevant chats. TimeSinceLastMessageInMatchingChat: %ld s, TimeSinceLastMessageInNextChat: %ld s, MaximumRelevantTimeInterval: %ld s", &v20, 0x20u);
      }
    }
  }

  else
  {
    v16 = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)findValidMappingOfRequestedRecipientToChatParticipantAmongMatches:(id)matches
{
  v149 = *MEMORY[0x277D85DE8];
  matchesCopy = matches;
  v4 = _IMAssistantCoreSendMessageSignpostLogHandle();
  v5 = os_signpost_id_generate(v4);

  v6 = _IMAssistantCoreSendMessageSignpostLogHandle();
  v7 = v6;
  v83 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "mapRecipientsToParticipants", &unk_2547CAD0B, buf, 2u);
  }

  spid = v5;

  v8 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:0 capacity:{objc_msgSend(matchesCopy, "count")}];
  v91 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:0 capacity:{objc_msgSend(matchesCopy, "count")}];
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  keyEnumerator = [matchesCopy keyEnumerator];
  v10 = [keyEnumerator countByEnumeratingWithState:&v135 objects:v148 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v136;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v136 != v12)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v14 = *(*(&v135 + 1) + 8 * i);
        v15 = [matchesCopy objectForKey:v14];
        v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v15 copyItems:0];
        [v91 setObject:v16 forKey:v14];
      }

      v11 = [keyEnumerator countByEnumeratingWithState:&v135 objects:v148 count:16];
    }

    while (v11);
  }

  v89 = matchesCopy;
  v90 = v8;
  while (1)
  {
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    keyEnumerator2 = [matchesCopy keyEnumerator];
    v96 = [keyEnumerator2 countByEnumeratingWithState:&v131 objects:v147 count:16];
    if (!v96)
    {
      break;
    }

    v18 = 0;
    v19 = *v132;
    v92 = keyEnumerator2;
    v87 = *v132;
    while (2)
    {
      v20 = 0;
      do
      {
        if (*v132 != v19)
        {
          objc_enumerationMutation(keyEnumerator2);
        }

        v98 = v20;
        v21 = *(*(&v131 + 1) + 8 * v20);
        v22 = [v8 objectForKey:v21];

        if (!v22)
        {
          v23 = [v91 objectForKey:v21];
          if (![v23 count])
          {
            v33 = _IMAssistantCoreSendMessageSignpostLogHandle();
            v34 = v33;
            if (v83 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_25479E000, v34, OS_SIGNPOST_INTERVAL_END, spid, "mapRecipientsToParticipants", &unk_2547CAD0B, buf, 2u);
            }

            v35 = 0;
            goto LABEL_37;
          }

          if ([v23 count] == 1)
          {
            v94 = v23;
            firstObject = [v23 firstObject];
            [v8 setObject:firstObject forKey:v21];
            [v91 removeObjectForKey:v21];
            v129 = 0u;
            v130 = 0u;
            v127 = 0u;
            v128 = 0u;
            objectEnumerator = [v91 objectEnumerator];
            v26 = [objectEnumerator countByEnumeratingWithState:&v127 objects:v146 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v128;
              do
              {
                for (j = 0; j != v27; ++j)
                {
                  if (*v128 != v28)
                  {
                    objc_enumerationMutation(objectEnumerator);
                  }

                  v30 = *(*(&v127 + 1) + 8 * j);
                  v31 = MEMORY[0x277CCAC30];
                  v125[0] = MEMORY[0x277D85DD0];
                  v125[1] = 3221225472;
                  v125[2] = sub_2547AF7F0;
                  v125[3] = &unk_279786710;
                  v126 = firstObject;
                  v32 = [v31 predicateWithBlock:v125];
                  [v30 filterUsingPredicate:v32];
                }

                v27 = [objectEnumerator countByEnumeratingWithState:&v127 objects:v146 count:16];
              }

              while (v27);
            }

            v18 = 1;
            matchesCopy = v89;
            v8 = v90;
            keyEnumerator2 = v92;
            v23 = v94;
            v19 = v87;
          }
        }

        v20 = v98 + 1;
      }

      while (v98 + 1 != v96);
      v96 = [keyEnumerator2 countByEnumeratingWithState:&v131 objects:v147 count:16];
      if (v96)
      {
        continue;
      }

      break;
    }

    if ((v18 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

LABEL_41:
  if ([v91 count])
  {
    v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v81 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:0 capacity:0];
    [v38 addObject:?];
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    obj = [matchesCopy keyEnumerator];
    v39 = [obj countByEnumeratingWithState:&v121 objects:v145 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v122;
      v84 = *v122;
      do
      {
        v42 = 0;
        v85 = v40;
        do
        {
          if (*v122 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v43 = *(*(&v121 + 1) + 8 * v42);
          v44 = [v8 objectForKey:v43];
          if (v44)
          {
            v119 = 0u;
            v120 = 0u;
            v117 = 0u;
            v118 = 0u;
            v38 = v38;
            v45 = [v38 countByEnumeratingWithState:&v117 objects:v144 count:16];
            if (v45)
            {
              v46 = v45;
              v47 = *v118;
              do
              {
                for (k = 0; k != v46; ++k)
                {
                  if (*v118 != v47)
                  {
                    objc_enumerationMutation(v38);
                  }

                  [*(*(&v117 + 1) + 8 * k) setObject:v44 forKey:v43];
                }

                v46 = [v38 countByEnumeratingWithState:&v117 objects:v144 count:16];
              }

              while (v46);
            }

            v49 = v38;
          }

          else
          {
            v88 = v42;
            v49 = [v91 objectForKey:v43];
            v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v113 = 0u;
            v114 = 0u;
            v115 = 0u;
            v116 = 0u;
            v93 = v38;
            v99 = [v93 countByEnumeratingWithState:&v113 objects:v143 count:16];
            if (v99)
            {
              v95 = *v114;
              v97 = v49;
              do
              {
                for (m = 0; m != v99; m = m + 1)
                {
                  if (*v114 != v95)
                  {
                    objc_enumerationMutation(v93);
                  }

                  v52 = *(*(&v113 + 1) + 8 * m);
                  v109 = 0u;
                  v110 = 0u;
                  v111 = 0u;
                  v112 = 0u;
                  v53 = v49;
                  v54 = [v53 countByEnumeratingWithState:&v109 objects:v142 count:16];
                  if (v54)
                  {
                    v55 = v54;
                    v56 = *v110;
                    do
                    {
                      for (n = 0; n != v55; ++n)
                      {
                        if (*v110 != v56)
                        {
                          objc_enumerationMutation(v53);
                        }

                        v58 = *(*(&v109 + 1) + 8 * n);
                        v59 = [v52 copy];
                        [v59 setObject:v58 forKey:v43];
                        [v50 addObject:v59];
                      }

                      v55 = [v53 countByEnumeratingWithState:&v109 objects:v142 count:16];
                    }

                    while (v55);
                  }

                  v49 = v97;
                }

                v99 = [v93 countByEnumeratingWithState:&v113 objects:v143 count:16];
              }

              while (v99);
            }

            v38 = v50;
            v8 = v90;
            v41 = v84;
            v40 = v85;
            v44 = 0;
            v42 = v88;
          }

          ++v42;
        }

        while (v42 != v40);
        v40 = [obj countByEnumeratingWithState:&v121 objects:v145 count:16];
      }

      while (v40);
    }

    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v100 = v38;
    v60 = [v100 countByEnumeratingWithState:&v105 objects:v141 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v106;
      while (2)
      {
        for (ii = 0; ii != v61; ++ii)
        {
          if (*v106 != v62)
          {
            objc_enumerationMutation(v100);
          }

          v64 = *(*(&v105 + 1) + 8 * ii);
          v65 = objc_alloc_init(MEMORY[0x277CBEB40]);
          v101 = 0u;
          v102 = 0u;
          v103 = 0u;
          v104 = 0u;
          objectEnumerator2 = [v64 objectEnumerator];
          v67 = [objectEnumerator2 countByEnumeratingWithState:&v101 objects:v140 count:16];
          if (v67)
          {
            v68 = v67;
            v69 = *v102;
            do
            {
              for (jj = 0; jj != v68; ++jj)
              {
                if (*v102 != v69)
                {
                  objc_enumerationMutation(objectEnumerator2);
                }

                imHandle = [*(*(&v101 + 1) + 8 * jj) imHandle];
                [v65 addObject:imHandle];
              }

              v68 = [objectEnumerator2 countByEnumeratingWithState:&v101 objects:v140 count:16];
            }

            while (v68);
          }

          v72 = [v65 count];
          if (v72 == [v89 count])
          {
            v77 = _IMAssistantCoreSendMessageSignpostLogHandle();
            v78 = v77;
            if (v83 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v77))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_25479E000, v78, OS_SIGNPOST_INTERVAL_END, spid, "mapRecipientsToParticipants", &unk_2547CAD0B, buf, 2u);
            }

            v35 = v64;
            v73 = v100;
            v75 = v100;
            matchesCopy = v89;
            v8 = v90;
            goto LABEL_101;
          }
        }

        v61 = [v100 countByEnumeratingWithState:&v105 objects:v141 count:16];
        v8 = v90;
        if (v61)
        {
          continue;
        }

        break;
      }
    }

    v73 = v100;

    v74 = _IMAssistantCoreSendMessageSignpostLogHandle();
    v75 = v74;
    if (v83 > 0xFFFFFFFFFFFFFFFDLL)
    {
      v35 = 0;
      matchesCopy = v89;
LABEL_101:
      v76 = v81;
    }

    else
    {
      matchesCopy = v89;
      v76 = v81;
      if (os_signpost_enabled(v74))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25479E000, v75, OS_SIGNPOST_INTERVAL_END, spid, "mapRecipientsToParticipants", &unk_2547CAD0B, buf, 2u);
      }

      v35 = 0;
    }
  }

  else
  {
    v79 = _IMAssistantCoreSendMessageSignpostLogHandle();
    v80 = v79;
    if (v83 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v79))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v80, OS_SIGNPOST_INTERVAL_END, spid, "mapRecipientsToParticipants", &unk_2547CAD0B, buf, 2u);
    }

    v35 = v8;
  }

LABEL_37:

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

- (id)contactResolutionResultForContacts:(id)contacts matchingRecipient:(id)recipient
{
  v114 = *MEMORY[0x277D85DE8];
  contactsCopy = contacts;
  recipientCopy = recipient;
  v7 = _IMAssistantCoreSendMessageSignpostLogHandle();
  v8 = os_signpost_id_generate(v7);

  v9 = _IMAssistantCoreSendMessageSignpostLogHandle();
  v10 = v9;
  v82 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "contactResolutionResultForContacts", &unk_2547CAD0B, buf, 2u);
  }

  spid = v8;

  personHandle = [recipientCopy personHandle];
  type = [personHandle type];

  personHandle2 = [recipientCopy personHandle];
  label = [personHandle2 label];

  v83 = recipientCopy;
  personHandle3 = [recipientCopy personHandle];
  __im_assistant_handleType = [personHandle3 __im_assistant_handleType];

  if (__im_assistant_handleType)
  {
    v17 = IMLogHandleForCategory();
    v18 = v83;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v109 = v83;
      _os_log_impl(&dword_25479E000, v17, OS_LOG_TYPE_INFO, "Manually specified handle. Ready to proceed to handle resolution with person: %@", buf, 0xCu);
    }

    v19 = [MEMORY[0x277CD4088] successWithResolvedPerson:v83];
    v20 = _IMAssistantCoreSendMessageSignpostLogHandle();
    firstObject2 = v20;
    if (v82 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, firstObject2, OS_SIGNPOST_INTERVAL_END, v8, "contactResolutionResultForContacts", &unk_2547CAD0B, buf, 2u);
    }

    goto LABEL_84;
  }

  if ([contactsCopy count] >= 2)
  {
    v22 = IMLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v109 = contactsCopy;
      _os_log_impl(&dword_25479E000, v22, OS_LOG_TYPE_INFO, "Multiple contacts match recipient. Contacts: %@", buf, 0xCu);
    }

    v23 = [(IMAssistantMessageSendHandler *)self contactsWithDuplicateNamesAmongContacts:contactsCopy];
    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v25 = contactsCopy;
    v85 = contactsCopy;
    v86 = v23;
    v93 = v24;
    v91 = [v25 countByEnumeratingWithState:&v103 objects:v113 count:16];
    if (v91)
    {
      v90 = *v104;
      v84 = label;
      v87 = v25;
      v88 = type;
      do
      {
        v26 = 0;
        do
        {
          if (*v104 != v90)
          {
            objc_enumerationMutation(v25);
          }

          v92 = v26;
          v27 = *(*(&v103 + 1) + 8 * v26);
          if ([v23 containsObject:v27, spid])
          {
            v28 = IMLogHandleForCategory();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v109 = v27;
              _os_log_impl(&dword_25479E000, v28, OS_LOG_TYPE_INFO, "Contact has the same name as another possible disambiguation option, including handles in disambiguation for contact: %@", buf, 0xCu);
            }

            messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
            accountDataSource = [messageHandlerDataSource accountDataSource];
            countryCode = [accountDataSource countryCode];
            v32 = [v27 __im_assistant_matchingNormalizedHandlesForType:type andLabel:label forCountryCode:countryCode];

            v89 = v32;
            if ([v32 count])
            {
              v101 = 0u;
              v102 = 0u;
              v99 = 0u;
              v100 = 0u;
              v33 = v32;
              v34 = [v33 countByEnumeratingWithState:&v99 objects:v112 count:16];
              if (v34)
              {
                v35 = v34;
                v36 = *v100;
                do
                {
                  for (i = 0; i != v35; ++i)
                  {
                    if (*v100 != v36)
                    {
                      objc_enumerationMutation(v33);
                    }

                    v38 = *(*(&v99 + 1) + 8 * i);
                    v39 = objc_alloc(MEMORY[0x277CD3E90]);
                    messageHandlerDataSource2 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
                    accountDataSource2 = [messageHandlerDataSource2 accountDataSource];
                    v42 = [v39 __im_assistant_initWithContact:v27 unformattedPersonHandle:v38 accountDataSource:accountDataSource2];

                    if (v42)
                    {
                      [v93 addObject:v42];
                    }

                    else
                    {
                      v43 = IMLogHandleForCategory();
                      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412546;
                        v109 = v27;
                        v110 = 2112;
                        v111 = v38;
                        _os_log_impl(&dword_25479E000, v43, OS_LOG_TYPE_INFO, "Could not create INPerson from contant %@ and handle %@", buf, 0x16u);
                      }
                    }
                  }

                  v35 = [v33 countByEnumeratingWithState:&v99 objects:v112 count:16];
                }

                while (v35);
                label = v84;
                contactsCopy = v85;
              }

              v23 = v86;
              v24 = v93;
            }

            else
            {
              v33 = IMLogHandleForCategory();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v109 = v27;
                _os_log_impl(&dword_25479E000, v33, OS_LOG_TYPE_INFO, "Contacts matching the requested recipient have identical names, but one of the contacts has no valid phone numbers or email addreses for this request. Ignoring that contact, as including it in the list of disambiguation options would make it indistinguishable from the other valid options with the exact same name. Contact: %@", buf, 0xCu);
              }
            }

            v25 = v87;

            type = v88;
            v45 = v89;
          }

          else
          {
            v44 = objc_alloc(MEMORY[0x277CD3E90]);
            v45 = [v44 __im_assistant_initForContactResolutionResultWithContact:v27 type:type label:label];

            [v24 addObject:v45];
          }

          v26 = v92 + 1;
        }

        while (v92 + 1 != v91);
        v91 = [v25 countByEnumeratingWithState:&v103 objects:v113 count:16];
      }

      while (v91);
    }

    if ([v24 count])
    {
      v46 = [v24 count];
      v47 = IMLogHandleForCategory();
      v48 = os_log_type_enabled(v47, OS_LOG_TYPE_INFO);
      if (v46 != 1)
      {
        if (v48)
        {
          v74 = [v24 count];
          *buf = 134218242;
          v109 = v74;
          v110 = 2112;
          v111 = v24;
          _os_log_impl(&dword_25479E000, v47, OS_LOG_TYPE_INFO, "Requesting disambiguation of %ld options: %@", buf, 0x16u);
        }

        v75 = MEMORY[0x277CD4088];
        v76 = [v24 copy];
        v19 = [v75 disambiguationWithPeopleToDisambiguate:v76];

        v77 = _IMAssistantCoreSendMessageSignpostLogHandle();
        firstObject = v77;
        if (v82 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v18 = v83;
          if (os_signpost_enabled(v77))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_25479E000, firstObject, OS_SIGNPOST_INTERVAL_END, spid, "contactResolutionResultForContacts", &unk_2547CAD0B, buf, 2u);
          }

          goto LABEL_83;
        }

LABEL_82:
        v18 = v83;
LABEL_83:

        firstObject2 = v86;
        goto LABEL_84;
      }

      if (v48)
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v47, OS_LOG_TYPE_INFO, "There was more than one contact matching the requested recipient AND those contacts had the exact same name, but only one of those contacts had a valid handle matching the request. Using that handle.", buf, 2u);
      }

      firstObject = [v24 firstObject];
      v19 = [MEMORY[0x277CD4088] successWithResolvedPerson:firstObject];
      v50 = _IMAssistantCoreSendMessageSignpostLogHandle();
      v51 = v50;
      if (v82 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v50))
      {
LABEL_81:

        goto LABEL_82;
      }

      *buf = 0;
    }

    else
    {
      v57 = label;
      v58 = IMLogHandleForCategory();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v58, OS_LOG_TYPE_INFO, "There was more than one contact matching the requested recipient but those contacts had the exact same name, and none of those contacts had a valid handle matching the requested type. We won't offer disambiguation of the contacts, because none of the choices would lead to a successful resolution and the options would be indistinguishable and confusing.", buf, 2u);
      }

      firstObject = objc_alloc_init(MEMORY[0x277CBEB40]);
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v59 = v25;
      v60 = [v59 countByEnumeratingWithState:&v95 objects:v107 count:16];
      if (v60)
      {
        v61 = v60;
        v62 = *v96;
        do
        {
          for (j = 0; j != v61; ++j)
          {
            if (*v96 != v62)
            {
              objc_enumerationMutation(v59);
            }

            v64 = *(*(&v95 + 1) + 8 * j);
            messageHandlerDataSource3 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
            accountDataSource3 = [messageHandlerDataSource3 accountDataSource];
            v67 = [v64 __im_assistant_allValidPersonOptionsWithAccountDataSource:accountDataSource3];

            [firstObject addObjectsFromArray:v67];
          }

          v61 = [v59 countByEnumeratingWithState:&v95 objects:v107 count:16];
        }

        while (v61);
      }

      v68 = [firstObject count];
      v69 = IMLogHandleForCategory();
      v70 = os_log_type_enabled(v69, OS_LOG_TYPE_INFO);
      label = v57;
      if (v68)
      {
        if (v70)
        {
          *buf = 0;
          _os_log_impl(&dword_25479E000, v69, OS_LOG_TYPE_INFO, "If the user had specified a different label/handle-type, valid options would have been available, returning unsupportedReason = NoHandleForLabel.", buf, 2u);
        }

        v71 = MEMORY[0x277CD4088];
        array = [firstObject array];
        v19 = [v71 resolutionResultUnsupportedWithReason:6 alternativeItems:array];

        v73 = _IMAssistantCoreSendMessageSignpostLogHandle();
        v51 = v73;
        contactsCopy = v85;
        if (v82 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v73))
        {
          goto LABEL_81;
        }

        *buf = 0;
      }

      else
      {
        if (v70)
        {
          *buf = 0;
          _os_log_impl(&dword_25479E000, v69, OS_LOG_TYPE_INFO, "None of the ambiguous contacts had any valid handles. Returning unsupportedReason = NoValidHandle.", buf, 2u);
        }

        v19 = [MEMORY[0x277CD4088] unsupportedWithReason:4];
        v78 = _IMAssistantCoreSendMessageSignpostLogHandle();
        v51 = v78;
        contactsCopy = v85;
        if (v82 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v78))
        {
          goto LABEL_81;
        }

        *buf = 0;
      }
    }

    _os_signpost_emit_with_name_impl(&dword_25479E000, v51, OS_SIGNPOST_INTERVAL_END, spid, "contactResolutionResultForContacts", &unk_2547CAD0B, buf, 2u);
    goto LABEL_81;
  }

  firstObject2 = [contactsCopy firstObject];
  v52 = IMLogHandleForCategory();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v109 = firstObject2;
    _os_log_impl(&dword_25479E000, v52, OS_LOG_TYPE_INFO, "Only one contact matches recipient. Ready to proceed to handle resolution for contact: %@", buf, 0xCu);
  }

  v53 = objc_alloc(MEMORY[0x277CD3E90]);
  v54 = [v53 __im_assistant_initForContactResolutionResultWithContact:firstObject2 type:type label:label];

  v19 = [MEMORY[0x277CD4088] successWithResolvedPerson:v54];
  v55 = _IMAssistantCoreSendMessageSignpostLogHandle();
  v56 = v55;
  if (v82 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v55))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v56, OS_SIGNPOST_INTERVAL_END, spid, "contactResolutionResultForContacts", &unk_2547CAD0B, buf, 2u);
  }

  v18 = v83;
LABEL_84:

  v79 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)handleResolutionResultForHandles:(id)handles resolvedContactForAlternatives:(id)alternatives recipient:(id)recipient
{
  v70 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  alternativesCopy = alternatives;
  recipientCopy = recipient;
  v11 = _IMAssistantCoreSendMessageSignpostLogHandle();
  v12 = os_signpost_id_generate(v11);

  v13 = _IMAssistantCoreSendMessageSignpostLogHandle();
  v14 = v13;
  v15 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "handleResolutionResultForContact", &unk_2547CAD0B, buf, 2u);
  }

  messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  accountDataSource = [messageHandlerDataSource accountDataSource];

  if (![handlesCopy count])
  {
    firstObject = [alternativesCopy __im_assistant_allValidPersonOptionsWithAccountDataSource:accountDataSource];
    v26 = [firstObject count];
    v27 = IMLogHandleForCategory();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
    if (v26)
    {
      if (v28)
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v27, OS_LOG_TYPE_INFO, "Could not find any handles matching the requested label/handle-type, returning unsupported with suggested alternatives.", buf, 2u);
      }

      v22 = [MEMORY[0x277CD4088] resolutionResultUnsupportedWithReason:6 alternativeItems:firstObject];
      v29 = _IMAssistantCoreSendMessageSignpostLogHandle();
      v30 = v29;
      if (v15 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v29))
      {
        goto LABEL_32;
      }

      *buf = 0;
    }

    else
    {
      if (v28)
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v27, OS_LOG_TYPE_INFO, "Could not find any matching handles, and contact has no phone numbers or email addresses, returning unsupported.", buf, 2u);
      }

      v22 = [MEMORY[0x277CD4088] unsupportedWithReason:4];
      v38 = _IMAssistantCoreSendMessageSignpostLogHandle();
      v30 = v38;
      if (v15 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v38))
      {
        goto LABEL_32;
      }

      *buf = 0;
    }

    _os_signpost_emit_with_name_impl(&dword_25479E000, v30, OS_SIGNPOST_INTERVAL_END, v12, "handleResolutionResultForContact", &unk_2547CAD0B, buf, 2u);
LABEL_32:

    goto LABEL_33;
  }

  v18 = [handlesCopy count];
  v19 = IMLogHandleForCategory();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
  if (v18 >= 2)
  {
    if (v20)
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v19, OS_LOG_TYPE_INFO, "Asking user to disambiguate among the matching handles.", buf, 2u);
    }

    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = sub_2547B0CDC;
    v64[3] = &unk_279786738;
    v65 = accountDataSource;
    v21 = [handlesCopy __imArrayByApplyingBlock:v64];
    v22 = [MEMORY[0x277CD4088] disambiguationWithPeopleToDisambiguate:v21];
    v23 = _IMAssistantCoreSendMessageSignpostLogHandle();
    v24 = v23;
    if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v24, OS_SIGNPOST_INTERVAL_END, v12, "handleResolutionResultForContact", &unk_2547CAD0B, buf, 2u);
    }

    firstObject = v65;
    goto LABEL_33;
  }

  if (v20)
  {
    *buf = 0;
    _os_log_impl(&dword_25479E000, v19, OS_LOG_TYPE_INFO, "Only found one handle matching request, returning success for person.", buf, 2u);
  }

  firstObject = [handlesCopy firstObject];
  contact = [firstObject contact];

  v32 = 0x277CD3000uLL;
  v63 = recipientCopy;
  if (contact)
  {
    goto LABEL_21;
  }

  personHandle = [recipientCopy personHandle];
  __im_assistant_handleType = [personHandle __im_assistant_handleType];

  v32 = 0x277CD3000;
  if (!__im_assistant_handleType)
  {
    goto LABEL_21;
  }

  v43 = IMLogHandleForCategory();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25479E000, v43, OS_LOG_TYPE_INFO, "The user explicitly requested a handle, e.g. 'Send a message to 555-555-5555', look up the contact to include in dialog.", buf, 2u);
  }

  handleID = [firstObject handleID];
  v62 = [accountDataSource imHandleWithID:handleID];
  if (!v62)
  {
    v59 = IMLogHandleForCategory();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v67 = handleID;
      _os_log_impl(&dword_25479E000, v59, OS_LOG_TYPE_INFO, "Could not create an IMHandle for handleID: %@", buf, 0xCu);
    }

    v32 = 0x277CD3000;
    goto LABEL_21;
  }

  personHandle2 = [recipientCopy personHandle];
  v46 = -[IMAssistantMessageHandler contactIdentifiersMatchingHandleID:handleType:](self, "contactIdentifiersMatchingHandleID:handleType:", handleID, [personHandle2 type]);

  v61 = v46;
  v47 = [v46 count];
  lastObject = IMLogHandleForCategory();
  v49 = os_log_type_enabled(lastObject, OS_LOG_TYPE_INFO);
  if (v47)
  {
    if (v49)
    {
      v50 = [v61 count];
      *buf = 134218242;
      v67 = v50;
      v68 = 2112;
      v69 = handleID;
      _os_log_impl(&dword_25479E000, lastObject, OS_LOG_TYPE_INFO, "Found %ld contacts matching manually requested person handle: %@.", buf, 0x16u);
    }

    lastObject = [v61 lastObject];
    v51 = IMLogHandleForCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v67 = lastObject;
      _os_log_impl(&dword_25479E000, v51, OS_LOG_TYPE_INFO, "Using contact identifier %@", buf, 0xCu);
    }

    v52 = [(IMAssistantMessageHandler *)self contactWithIdentifier:lastObject];
    v53 = IMLogHandleForCategory();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v67 = v52;
      _os_log_impl(&dword_25479E000, v53, OS_LOG_TYPE_INFO, "Found contact %@", buf, 0xCu);
    }

    v54 = objc_alloc(MEMORY[0x277CD3E90]);
    v55 = v52;
    v56 = v54;
    v60 = v55;
    v57 = [v54 __im_assistant_initWithContact:? imHandle:?];

    v58 = IMLogHandleForCategory();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v67 = v57;
      _os_log_impl(&dword_25479E000, v58, OS_LOG_TYPE_INFO, "Resolved manually dictated recipient: %@", buf, 0xCu);
    }
  }

  else
  {
    if (v49)
    {
      *buf = 138412290;
      v67 = handleID;
      _os_log_impl(&dword_25479E000, lastObject, OS_LOG_TYPE_INFO, "Did not find any contacts matching manually requested handle: %@", buf, 0xCu);
    }

    v57 = 0;
  }

  v32 = 0x277CD3000;
  if (!v57)
  {
LABEL_21:
    v33 = objc_alloc(*(v32 + 3728));
    v34 = [v33 __im_assistant_initWithHandleFromContact:firstObject accountDataSource:accountDataSource];

    v35 = 0;
    goto LABEL_22;
  }

  v35 = v57;
  v34 = v35;
LABEL_22:
  v22 = [MEMORY[0x277CD4088] successWithResolvedPerson:v34];
  v36 = _IMAssistantCoreSendMessageSignpostLogHandle();
  v37 = v36;
  if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v37, OS_SIGNPOST_INTERVAL_END, v12, "handleResolutionResultForContact", &unk_2547CAD0B, buf, 2u);
  }

  recipientCopy = v63;
LABEL_33:

  v39 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)recipientsResolutionFailureResultWithResult:(id)result forRecipient:(id)recipient amongRecipients:(id)recipients
{
  resultCopy = result;
  recipientCopy = recipient;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2547B0E2C;
  v13[3] = &unk_2797866E8;
  v14 = recipientCopy;
  v15 = resultCopy;
  v9 = resultCopy;
  v10 = recipientCopy;
  v11 = [recipients __imArrayByApplyingBlock:v13];

  return v11;
}

@end
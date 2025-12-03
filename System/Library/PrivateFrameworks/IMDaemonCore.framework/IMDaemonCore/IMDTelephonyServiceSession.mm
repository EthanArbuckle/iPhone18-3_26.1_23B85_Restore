@interface IMDTelephonyServiceSession
+ (id)backwardCompatibilityPrefixForLanguageCode:(id)code;
+ (id)createCompatibleBodyForMessage:(id)message processedMessageItem:(id)item;
+ (id)getPlainTextForMessage:(id)message processedMessageItem:(id)item;
+ (void)createFallbackTextForMessage:(id)message processedMessageItem:(id)item leadingFallbackText:(id)text trailingFallbackText:(id)fallbackText;
- (BOOL)_allowedToProcessMessageFromToken:(id)token fromID:(id)d reflectOnly:(BOOL)only isInProxyMode:(BOOL)mode;
- (BOOL)_canLocallySendWithPhoneNumber:(id)number;
- (BOOL)_canSendWithCallerID:(id)d;
- (BOOL)_disableScreenTimeRestrictionsForMessageItem:(id)item chat:(id)chat watchSendsOverCellular:(BOOL)cellular emergencyNumbersFoundInRecipients:(int64_t *)recipients;
- (BOOL)_hasRegisteredLocalPhoneNumberForHandle:(id)handle;
- (BOOL)_newFeatureRequiredByMessageItem:(id)item chatIdentifier:(id)identifier;
- (BOOL)_replicationDisabledByServerBag;
- (BOOL)_replicationRequiredForFeaturesUsedByMessageBody:(id)body;
- (BOOL)_shouldForceReplicationForStaleChatWithLastKnownReplicationDate:(id)date;
- (BOOL)_shouldReplicateMessageItem:(id)item chatStyle:(unsigned __int8)style lastKnownReplicationDate:(id)date callerID:(id)d;
- (BOOL)_sosReplicationDisabledByServerBag;
- (BOOL)acceptsIncomingReplicatedMessagesFromAccount:(id)account toIdentifier:(id)identifier isSOS:(BOOL)s;
- (BOOL)allowedToSendMessage:(id)message toChat:(id)chat;
- (BOOL)incomingMessageHasTooManyRecipients:(id)recipients;
- (BOOL)isGroupMessagingEnabledFor:(id)for;
- (BOOL)reflectPriorityMessageToPeerDevicesForMessageGUIDs:(id)ds;
- (BOOL)replicationRequiredForFeaturesUsedByMessageItem:(id)item;
- (BOOL)responsibleForMessageID:(id)d;
- (IMDRelayEnrollmentController)relayEnrollmentController;
- (IMDTelephonyServiceSession)initWithAccount:(id)account service:(id)service replicatingForSession:(id)session;
- (double)_periodicReplicationTimeInterval;
- (id)_businessNameForIndiaShortCodeSender:(id)sender;
- (id)_callerIDUsingFromIdentifier:(id)identifier;
- (id)_chatForGroupID:(id)d originalGroupID:(id)iD;
- (id)_countryCodeForIncomingTextMessage:(id)message;
- (id)_identifierForMergedBusinessThread:(id)thread;
- (id)_messageDictionaryToRelayWithIncomingMessageDictionary:(id)dictionary smsMessage:(id)message;
- (id)_phoneNumberForRegisteredSimID:(id)d;
- (id)_replicatedMessageGUIDToReleaseFromMessageDictionary:(id)dictionary;
- (id)_resolveHandlesFor:(id)for withMessage:(id)message;
- (id)_resolvedCallerIDForLastAddressedLocalHandle:(id)handle lastAddressedSIMID:(id)d saveResolvedCallerIDToChat:(BOOL *)chat;
- (id)_sendingHandleForOutgoingMessageInChat:(id)chat fromIdentifier:(id)identifier;
- (id)_updatedMessageContextForJunkProcessing:(id)processing;
- (id)chatForIncomingMessageContext:(id)context createIfNotExists:(BOOL)exists;
- (id)chatForOutgoingMessage:(id)message fromIdentifier:(id)identifier isInProxyMode:(BOOL)mode createIfNotExists:(BOOL)exists;
- (id)compatibleMessageToSendForMessageItem:(id)item;
- (id)createHandleInfoFor:(id)for;
- (id)createHandleInfoForParticipants:(id)participants unformattedIDs:(id)ds countryCodes:(id)codes isGroupChat:(BOOL)chat;
- (id)findChatAndLinkMessage:(id)message context:(id)context;
- (id)getLabelFor:(int64_t)for subCategory:(int64_t)category;
- (id)outgoingReplicationCallerIDForChat:(id)chat;
- (id)preferredAccountForReplicationOnService:(id)service eligibleAccounts:(id)accounts;
- (id)replicationPhoneNumbers;
- (id)subscriptionContextForChat:(id)chat;
- (int64_t)_iMessageCapabilityForSIMID:(id)d;
- (int64_t)maxSizePerAttachmentWithCount:(int)count lastAddressHandle:(id)handle lastAddressedSIMID:(id)d;
- (unint64_t)_sendingDecisionForMessageItem:(id)item callerID:(id)d lastAddressedLocalHandle:(id)handle lastAddressedSIMID:(id)iD;
- (unint64_t)maxRecipientsForPhoneNumber:(id)number simID:(id)d;
- (void)_addOriginatedMessage:(id)message;
- (void)_carrierReportJunkMetricsForSMSWithSubject:(id)subject isGroupchat:(BOOL)groupchat hasAttachments:(BOOL)attachments;
- (void)_clearInactivityTimer;
- (void)_clearTimoutTimerForRelayMessageID:(id)d;
- (void)_deferredReplicatedMessageReleaseWithAllowedMessage:(id)message outgoingProxyBlock:(id)block;
- (void)_enqueueBlock:(id)block withTimeout:(double)timeout;
- (void)_findUnsubscribeTextForChat:(id)chat inMessageBody:(id)body;
- (void)_generatePreviewForTransfer:(id)transfer message:(id)message;
- (void)_messageTimedOut:(id)out;
- (void)_processReceivedDictionaryInBlastDoor:(id)door storageContext:(id)context receivedViaRelay:(BOOL)relay withCompletionBlock:(id)block;
- (void)_processReceivedSMSMessage:(id)message storageContext:(id)context receivedViaRelay:(BOOL)relay serviceName:(id)name completionBlock:(id)block;
- (void)_registerChatForIncomingMessageWithContext:(id)context;
- (void)_registerForCTNotifications;
- (void)_registerForIncomingMessages:(id)messages;
- (void)_relayMessage:(id)message chat:(id)chat didSendSMS:(BOOL)s attemptingReplication:(BOOL)replication forceReflection:(BOOL)reflection relayToWatchOnly:(BOOL)only shouldDisableScreenTimeRestrictions:(BOOL)restrictions callerID:(id)self0;
- (void)_releasePendingMessagesAndProcessReceivedSMSMessage:(id)message storageContext:(id)context receivedViaRelay:(BOOL)relay serviceName:(id)name completionBlock:(id)block;
- (void)_removeOriginatedMessage:(id)message;
- (void)_reportTelephonyJunkForMessageItem:(id)item chat:(id)chat;
- (void)_setClearMessageSendTimer;
- (void)_setTimeoutTimerForRelayMessageID:(id)d timeout:(double)timeout;
- (void)_setupCoreTelephonyObservation;
- (void)_teardownCoreTelephonyObservation;
- (void)_updateCategoryForChat:(id)chat andMessage:(id)message category:(int64_t)category subCategory:(int64_t)subCategory spamExtensionName:(id)name;
- (void)_updatePhoneNumberCallerID;
- (void)didReceiveMessages:(id)messages forChat:(id)chat style:(unsigned __int8)style account:(id)account fromIDSID:(id)d completion:(id)completion;
- (void)didSendMessage:(id)message forChat:(id)chat style:(unsigned __int8)style account:(id)account forceDate:(id)date itemIsComingFromStorage:(BOOL)storage;
- (void)enrollDeviceInSMSRelay:(id)relay;
- (void)enrollSelfDeviceInSMSRelay;
- (void)handler:(id)handler incomingDownloadMessage:(id)message toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)stamp storageContext:(id)context;
- (void)handler:(id)handler incomingGroupMutationMessage:(id)message timeStamp:(id)stamp storageContext:(id)context fromToken:(id)token fromID:(id)d isInProxyMode:(BOOL)mode;
- (void)handler:(id)handler incomingPlainTextMessage:(id)message toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)stamp storageContext:(id)context;
- (void)handler:(id)handler localFileRequest:(id)request storageContext:(id)context;
- (void)handler:(id)handler localFileResponse:(id)response storageContext:(id)context;
- (void)handler:(id)handler localIncomingDownloadMessage:(id)message storageContext:(id)context;
- (void)handler:(id)handler localIncommingMessage:(id)message storageContext:(id)context;
- (void)handler:(id)handler localMessageError:(id)error storageContext:(id)context;
- (void)handler:(id)handler localOutgoingDownloadMessage:(id)message isBeingReplayed:(BOOL)replayed storageContext:(id)context;
- (void)handler:(id)handler localOutgoingMessage:(id)message isBeingReplayed:(BOOL)replayed storageContext:(id)context;
- (void)handler:(id)handler messageGUIDToReport:(id)report;
- (void)handler:(id)handler messageIDRead:(id)read readByMe:(BOOL)me timeStamp:(id)stamp toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token reflectOnly:(BOOL)self0 storageContext:(id)self1;
- (void)handler:(id)handler messageIDSendFailure:(id)failure toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier timeStamp:(id)stamp storageContext:(id)context;
- (void)handler:(id)handler messageIDSent:(id)sent wasInterworked:(BOOL)interworked toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier timeStamp:(id)stamp storageContext:(id)context;
- (void)handler:(id)handler outgoingDownloadMessage:(id)message toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token messageGUID:(id)d timeStamp:(id)stamp isBeingReplayed:(BOOL)self0 isInProxyMode:(BOOL)self1 storageContext:(id)self2;
- (void)handler:(id)handler outgoingPlainTextMessage:(id)message toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token messageGUID:(id)d timeStamp:(id)stamp isBeingReplayed:(BOOL)self0 isInProxyMode:(BOOL)self1 storageContext:(id)self2;
- (void)handler:(id)handler receivedPriorityMessageCommand:(id)command fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier fromToken:(id)token;
- (void)loginServiceSessionWithAccount:(id)account;
- (void)logoutServiceSessionWithAccount:(id)account;
- (void)processMessageSendFailure:(id)failure;
- (void)relayDisplayNameChange:(id)change forChat:(id)chat fromID:(id)d messageID:(id)iD didOccurLocally:(BOOL)locally;
- (void)sendDeleteCommand:(id)command forChatGUID:(id)d;
- (void)sendGroupPhotoUpdate:(id)update toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account;
- (void)sendRecoverCommand:(id)command forChatGUID:(id)d;
- (void)sendReportJunkMessageGUID:(id)d shouldRelay:(BOOL)relay;
- (void)sendUnapproveToToken:(id)token messageGUID:(id)d completion:(id)completion;
- (void)unEnrollDeviceInSMSRelay:(id)relay;
@end

@implementation IMDTelephonyServiceSession

+ (id)getPlainTextForMessage:(id)message processedMessageItem:(id)item
{
  itemCopy = item;
  messageCopy = message;
  v8 = [self createCompatibleBodyForMessage:messageCopy processedMessageItem:itemCopy];
  v9 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v10 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [self createFallbackTextForMessage:messageCopy processedMessageItem:itemCopy leadingFallbackText:v9 trailingFallbackText:v10];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v9, v8, v10];

  return v11;
}

+ (id)createCompatibleBodyForMessage:(id)message processedMessageItem:(id)item
{
  v23 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  itemCopy = item;
  if ([itemCopy sendAlternateLayoutAsText])
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        guid = [itemCopy guid];
        *buf = 138412290;
        v22 = guid;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Replacing message body with text for layout (sendAlternateLayoutAsText):%@", buf, 0xCu);
      }
    }

    payloadData = [messageCopy payloadData];
    v10 = IMBalloonPluginFallbackText();
  }

  else
  {
    payloadData = [messageCopy body];
    v11 = +[IMDFileTransferCenter sharedInstance];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_22B54DE90;
    aBlock[3] = &unk_2787033A8;
    v20 = v11;
    v12 = v11;
    v13 = _Block_copy(aBlock);
    v18 = 0;
    v14 = [payloadData __im_attributedStringByReplacingAdaptiveImageGlyphFileTransfersUsingFileTransferProvider:v13 replacementTextProvider:&unk_283F19AC8 removedTransferGUIDsOut:&v18];
    string = [v14 string];
    v10 = _IMStringStrippingControlCharacters();
  }

  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (void)createFallbackTextForMessage:(id)message processedMessageItem:(id)item leadingFallbackText:(id)text trailingFallbackText:(id)fallbackText
{
  v63 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  itemCopy = item;
  textCopy = text;
  fallbackTextCopy = fallbackText;
  v52 = itemCopy;
  expressiveSendStyleID = [itemCopy expressiveSendStyleID];
  v11 = [expressiveSendStyleID length];

  if (v11)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        guid = [itemCopy guid];
        *buf = 138412290;
        v62 = guid;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Appending expressive send style id for message %@", buf, 0xCu);
      }
    }

    _localizedBackwardsCompatibleExpressiveSendText = [messageCopy _localizedBackwardsCompatibleExpressiveSendText];
    if ([_localizedBackwardsCompatibleExpressiveSendText length])
    {
      [fallbackTextCopy appendFormat:@"\n%@", _localizedBackwardsCompatibleExpressiveSendText];
    }
  }

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isAutomaticIncomingTranslationEnabled = [mEMORY[0x277D1A9B8] isAutomaticIncomingTranslationEnabled];

  if (isAutomaticIncomingTranslationEnabled)
  {
    messageSummaryInfo = [itemCopy messageSummaryInfo];
    v17 = *MEMORY[0x277D1A058];
    v18 = [messageSummaryInfo objectForKey:*MEMORY[0x277D1A058]];

    if (v18)
    {
      messageSummaryInfo2 = [itemCopy messageSummaryInfo];
      v47 = [messageSummaryInfo2 objectForKeyedSubscript:v17];

      if (v47)
      {
        translationMessagePartClasses = [MEMORY[0x277D1AA70] translationMessagePartClasses];
        v59 = 0;
        v44 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:translationMessagePartClasses fromData:v47 error:&v59];
        v43 = v59;
        v20 = v44;
        if (v44)
        {
          allValues = [v44 allValues];
          firstObject = [allValues firstObject];

          if (firstObject)
          {
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            obj = firstObject;
            v23 = 0;
            v24 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
            if (v24)
            {
              v25 = *v56;
              v26 = &stru_283F23018;
              do
              {
                v27 = 0;
                v28 = v23;
                v29 = v26;
                do
                {
                  if (*v56 != v25)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v30 = *(*(&v55 + 1) + 8 * v27);
                  v31 = MEMORY[0x277CCACA8];
                  v32 = [v30 objectForKey:@"translatedText"];
                  string = [v32 string];
                  v26 = [v31 stringWithFormat:@"%@%@", v29, string, v43];

                  v23 = [v30 objectForKey:@"translationLanguage"];

                  ++v27;
                  v28 = v23;
                  v29 = v26;
                }

                while (v24 != v27);
                v24 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
              }

              while (v24);
            }

            else
            {
              v26 = &stru_283F23018;
            }

            v35 = [self backwardCompatibilityPrefixForLanguageCode:v23];
            v54 = 0;
            v34 = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v35 validFormatSpecifiers:@"%@" error:&v54, v26];

            [fallbackTextCopy appendFormat:@"\n\n%@", v34];
          }

          else
          {
            v34 = &stru_283F23018;
          }

          v20 = v44;
        }

        else
        {
          v34 = &stru_283F23018;
        }
      }

      else
      {
        v34 = &stru_283F23018;
      }
    }
  }

  threadIdentifier = [v52 threadIdentifier];
  v37 = [threadIdentifier length] == 0;

  if (!v37)
  {
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        guid2 = [v52 guid];
        *buf = 138412290;
        v62 = guid2;
        _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Formatting plain text reply message for message %@", buf, 0xCu);
      }
    }

    v40 = IMSharedUtilitiesFrameworkBundle();
    v41 = [v40 localizedStringForKey:@"REPLIED_BACKWARD_COMPATIBILITY" value:&stru_283F23018 table:@"IMSharedUtilities"];
    [textCopy appendFormat:@"%@\n", v41];
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (IMDTelephonyServiceSession)initWithAccount:(id)account service:(id)service replicatingForSession:(id)session
{
  accountCopy = account;
  serviceCopy = service;
  sessionCopy = session;
  v18.receiver = self;
  v18.super_class = IMDTelephonyServiceSession;
  v11 = [(IMDServiceSession *)&v18 initWithAccount:accountCopy service:serviceCopy replicatingForSession:sessionCopy];
  if (v11)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Setting up base telephony service", v17, 2u);
      }
    }

    v13 = [[IMDRelayAttachmentController alloc] initWithSession:v11];
    [(IMDTelephonyServiceSession *)v11 setAttachmentController:v13];

    [(IMDTelephonyServiceSession *)v11 _updatePhoneNumberCallerID];
    [(IMDTelephonyServiceSession *)v11 _setupCoreTelephonyObservation];
    v14 = +[IMDPlainTextTapbackInterpreter sharedInstance];
    tapbackInterpreter = v11->_tapbackInterpreter;
    v11->_tapbackInterpreter = v14;
  }

  return v11;
}

- (void)_updatePhoneNumberCallerID
{
  v21 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Updating", &v19, 2u);
    }
  }

  mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
  ctPhoneNumber = [mEMORY[0x277D1A908] ctPhoneNumber];
  v6 = [ctPhoneNumber copy];

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Default phone number from telephony is: %@", &v19, 0xCu);
    }
  }

  if (!v6)
  {
    relayController = [(IMDTelephonyServiceSession *)self relayController];
    dominentPhoneNumberAlias = [relayController dominentPhoneNumberAlias];
    v6 = [dominentPhoneNumberAlias copy];

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v19 = 138412290;
        v20 = v6;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "No phone number from telephony, adopting relay phone number %@", &v19, 0xCu);
      }
    }

    if (!v6)
    {
      v6 = [&stru_283F23018 copy];
    }
  }

  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v6;
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "Updating SMS service with number: %@", &v19, 0xCu);
  }

  account = [(IMDServiceSession *)self account];
  v13 = MEMORY[0x277CBEAC0];
  v14 = IMGenerateLoginID();
  v15 = [v13 dictionaryWithObject:v14 forKey:*MEMORY[0x277D19420]];
  [account writeAccountDefaults:v15];

  account2 = [(IMDServiceSession *)self account];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v6 forKey:*MEMORY[0x277D19408]];
  [account2 writeAccountDefaults:v17];

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_callerIDUsingFromIdentifier:(id)identifier
{
  v10 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if ([identifierCopy hasPrefix:@"device:"])
  {
    _stripFZIDPrefix = 0;
  }

  else
  {
    _stripFZIDPrefix = [identifierCopy _stripFZIDPrefix];
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = _stripFZIDPrefix;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Stripping FZIDPrefix, after: %@", &v8, 0xCu);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return _stripFZIDPrefix;
}

- (void)loginServiceSessionWithAccount:(id)account
{
  v10 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "SMS: %@", &v8, 0xCu);
    }
  }

  [(IMDServiceSession *)self refreshServiceCapabilities];
  [(IMDServiceSession *)self serviceSessionDidLoginWithAccount:accountCopy];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "%@: Log in.", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)logoutServiceSessionWithAccount:(id)account
{
  v10 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "SMS: %@", &v8, 0xCu);
    }
  }

  if ([accountCopy loginStatus] != 2)
  {
    [accountCopy setLoginStatus:0 message:0];
    [(IMDServiceSession *)self serviceSessionDidLogoutWithAccount:accountCopy];
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "%@: Logging out.", &v8, 0xCu);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)compatibleMessageToSendForMessageItem:(id)item
{
  v36 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  balloonBundleID = [itemCopy balloonBundleID];
  v5 = *MEMORY[0x277D19710];
  v6 = IMBalloonExtensionIDWithSuffix();
  v7 = [balloonBundleID isEqualToString:v6];

  if (v7)
  {
    v8 = IMExtensionPayloadUnarchivingClasses();
    v9 = objc_alloc(MEMORY[0x277CCAAC8]);
    payloadData = [itemCopy payloadData];
    v33 = 0;
    v11 = [v9 initForReadingFromData:payloadData error:&v33];
    v12 = v33;

    v13 = [v11 decodeObjectOfClasses:v8 forKey:*MEMORY[0x277CCA308]];
    if (v12 && IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v35 = v12;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Failed to unarchive attributionInfo. Error: %@", buf, 0xCu);
      }
    }

    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = [v13 objectForKey:*MEMORY[0x277D19D60]];
      v16 = [v15 objectForKey:@"messageText"];
      v17 = v16 == 0;

      if (!v17)
      {
        v18 = objc_alloc(MEMORY[0x277CCAB48]);
        v19 = [v15 objectForKey:@"messageText"];
        v20 = [v18 initWithString:v19];

        if (v20)
        {
          v31 = objc_alloc(MEMORY[0x277D1AA70]);
          sender = [itemCopy sender];
          time = [itemCopy time];
          flags = [itemCopy flags];
          guid = [itemCopy guid];
          v24 = [v31 initWithSender:sender time:time body:v20 attributes:0 fileTransferGUIDs:0 flags:flags error:0 guid:guid threadIdentifier:0];

          if (IMOSLoggingEnabled())
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              guid2 = [v24 guid];
              *buf = 138412290;
              v35 = guid2;
              _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Sending activity sharing fallback for message %@", buf, 0xCu);
            }
          }

          v27 = 0;
          goto LABEL_23;
        }
      }
    }

    else
    {
      v15 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Activity sharing payload doesn't have message text to send. Bailing", buf, 2u);
      }
    }

    v24 = itemCopy;
    v20 = 0;
    v27 = 1;
LABEL_23:

    if (v27)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v24 = itemCopy;
LABEL_24:
  v24 = v24;
  itemCopy = v24;
LABEL_25:

  v29 = *MEMORY[0x277D85DE8];

  return itemCopy;
}

- (BOOL)allowedToSendMessage:(id)message toChat:(id)chat
{
  v20 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  chatCopy = chat;
  chatIdentifier = [chatCopy chatIdentifier];
  LODWORD(self) = [(IMDTelephonyServiceSession *)self _newFeatureRequiredByMessageItem:messageCopy chatIdentifier:chatIdentifier];

  if (self)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        guid = [messageCopy guid];
        v18 = 138412290;
        v19 = guid;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, " ** New Feature, and backwards compat is not enabled for message %@", &v18, 0xCu);
      }
    }

    [messageCopy setErrorCode:5];
  }

  else
  {
    if (([messageCopy scheduleType] - 1) > 1)
    {
      v15 = 1;
      goto LABEL_15;
    }

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        guid2 = [messageCopy guid];
        v18 = 138412290;
        v19 = guid2;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Received attempt to send a scheduled message through the telephony service session, message guid: %@", &v18, 0xCu);
      }
    }

    [messageCopy setErrorCode:5];
    [messageCopy setScheduleState:4];
    v13 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.messages.TelephonyServiceSessionSendFailure" code:5 userInfo:0];
    mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
    [mEMORY[0x277D1AAA8] forceAutoBugCaptureWithSubType:@"Invalid scheduled message send" errorPayload:v13];
  }

  v15 = 0;
LABEL_15:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)_newFeatureRequiredByMessageItem:(id)item chatIdentifier:(id)identifier
{
  v38 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  identifierCopy = identifier;
  associatedMessageType = [itemCopy associatedMessageType];
  if (associatedMessageType != 2006 && associatedMessageType != 3006)
  {
    associatedMessageType2 = [itemCopy associatedMessageType];
    if (associatedMessageType2 != 3007 && associatedMessageType2 != 2007)
    {
      goto LABEL_14;
    }
  }

  v9 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v10 = [v9 objectForKey:@"backwards-compat-enabled-etap"];
  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  isInternalInstall = [mEMORY[0x277D19268] isInternalInstall];

  if (isInternalInstall)
  {
    messagesAppDomain = [MEMORY[0x277CBEBD0] messagesAppDomain];
    v14 = [messagesAppDomain arrayForKey:@"chat-id-allow-list"];

    if ([v14 containsObject:identifierCopy])
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v37 = identifierCopy;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Ignoring backwards compat check and allowing sending message to %@", buf, 0xCu);
        }
      }

      goto LABEL_27;
    }
  }

  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
LABEL_14:
    fileTransferGUIDs = [itemCopy fileTransferGUIDs];
    v10 = +[IMDFileTransferCenter sharedInstance];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = fileTransferGUIDs;
    v18 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v18)
    {
      v19 = *v32;
LABEL_16:
      v20 = 0;
      while (1)
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(v9);
        }

        v21 = [v10 transferForGUID:{*(*(&v31 + 1) + 8 * v20), v31}];
        isAdaptiveImageGlyph = [v21 isAdaptiveImageGlyph];

        if (isAdaptiveImageGlyph)
        {
          break;
        }

        if (v18 == ++v20)
        {
          v18 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
          if (v18)
          {
            goto LABEL_16;
          }

          goto LABEL_22;
        }
      }

      v24 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
      v25 = [v24 objectForKey:@"backwards-compat-enabled-adaptive-image-glyphs"];
      bOOLValue2 = [v25 BOOLValue];

      if ((bOOLValue2 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
LABEL_22:
    }

    if ([itemCopy associatedMessageType] == 4000)
    {
      v27 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
      v28 = IMSharedHelperCustomAcknowledgementBackwardsCompatibilityEnabled();

      if (!v28)
      {
LABEL_28:
        v23 = 1;
        goto LABEL_29;
      }
    }

LABEL_27:
    v23 = 0;
LABEL_29:

    goto LABEL_30;
  }

  v23 = 1;
LABEL_30:

  v29 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)didReceiveMessages:(id)messages forChat:(id)chat style:(unsigned __int8)style account:(id)account fromIDSID:(id)d completion:(id)completion
{
  styleCopy = style;
  v58 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  chatCopy = chat;
  accountCopy = account;
  dCopy = d;
  completionCopy = completion;
  v15 = +[IMDChatRegistry sharedInstance];
  selfCopy = self;
  account = [(IMDServiceSession *)self account];
  v41 = chatCopy;
  v17 = [v15 existingChatWithIdentifier:chatCopy account:account];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = messagesCopy;
  v18 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v18)
  {
    v19 = v18;
    v44 = *v53;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v53 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v52 + 1) + 8 * i);
        service = [accountCopy service];
        internalName = [service internalName];

        mEMORY[0x277D1AB48] = [MEMORY[0x277D1AB48] sharedInstance];
        guid = [v21 guid];
        sender = [v21 sender];
        destinationCallerID = [v21 destinationCallerID];
        [mEMORY[0x277D1AB48] logMessageReceivedWithGUID:guid fromIdentifier:sender toIdentifier:destinationCallerID conversationType:objc_msgSend(v17 messageType:"powerLogConversationType") messageProtocol:{objc_msgSend(v21, "powerLogMessageType"), internalName}];

        body = [v21 body];
        string = [body string];
        [(IMDTelephonyServiceSession *)selfCopy _findUnsubscribeTextForChat:v17 inMessageBody:string];
      }

      v19 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v19);
  }

  v51.receiver = selfCopy;
  v51.super_class = IMDTelephonyServiceSession;
  [(IMDServiceSession *)&v51 didReceiveMessages:obj forChat:v41 style:styleCopy account:accountCopy fromIDSID:dCopy completion:completionCopy];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v30 = obj;
  v31 = [v30 countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v48;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v48 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v47 + 1) + 8 * j);
        v36 = +[IMDRelayPushHandler sharedInstance];
        guid2 = [v35 guid];
        [v36 _handleMessageProcessedWithGUID:guid2];
      }

      v32 = [v30 countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v32);
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)didSendMessage:(id)message forChat:(id)chat style:(unsigned __int8)style account:(id)account forceDate:(id)date itemIsComingFromStorage:(BOOL)storage
{
  styleCopy = style;
  dateCopy = date;
  accountCopy = account;
  chatCopy = chat;
  messageCopy = message;
  v13 = +[IMDChatRegistry sharedInstance];
  v25 = [v13 existingChatWithIdentifier:chatCopy account:accountCopy];

  service = [messageCopy service];
  mEMORY[0x277D1AB48] = [MEMORY[0x277D1AB48] sharedInstance];
  guid = [messageCopy guid];
  sender = [messageCopy sender];
  destinationCallerID = [messageCopy destinationCallerID];
  powerLogConversationType = [v25 powerLogConversationType];
  powerLogMessageType = [messageCopy powerLogMessageType];
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(messageCopy, "errorCode")}];
  [mEMORY[0x277D1AB48] logMessageSentWithGUID:guid fromIdentifier:sender toIdentifier:destinationCallerID conversationType:powerLogConversationType messageType:powerLogMessageType sendDuration:0 errorCode:v21 messageProtocol:service];

  v29.receiver = self;
  v29.super_class = IMDTelephonyServiceSession;
  [(IMDServiceSession *)&v29 didSendMessage:messageCopy forChat:chatCopy style:styleCopy account:accountCopy forceDate:dateCopy itemIsComingFromStorage:0];

  v22 = +[IMDRelayPushHandler sharedInstance];
  guid2 = [messageCopy guid];

  [v22 _handleMessageProcessedWithGUID:guid2];
}

- (id)_resolvedCallerIDForLastAddressedLocalHandle:(id)handle lastAddressedSIMID:(id)d saveResolvedCallerIDToChat:(BOOL *)chat
{
  v51 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  dCopy = d;
  myCTPhoneNumber = [MEMORY[0x277D1A8F8] myCTPhoneNumber];
  relayController = [(IMDTelephonyServiceSession *)self relayController];
  _callerIDForRelay = [relayController _callerIDForRelay];

  if ([(__CFString *)_callerIDForRelay _appearsToBePhoneNumber])
  {
    relayController2 = [(IMDTelephonyServiceSession *)self relayController];
    v13 = [relayController2 isAliasRelayCapable:_callerIDForRelay];
  }

  else
  {
    v13 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v48 = handleCopy;
      v49 = 2112;
      v50 = dCopy;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "The Last Addressed Handle For This Chat is %@ and lastAddressedSIMID is %@", buf, 0x16u);
    }
  }

  HasMultipleActiveSubscriptions = IMSharedHelperDeviceHasMultipleActiveSubscriptions();
  HasMultipleSubscriptionsWithAtLeastOneActive = IMSharedHelperDeviceHasMultipleSubscriptionsWithAtLeastOneActive();
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = @"NO";
      if (HasMultipleActiveSubscriptions)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      if (HasMultipleSubscriptionsWithAtLeastOneActive)
      {
        v18 = @"YES";
      }

      *buf = 138412546;
      v48 = v19;
      v49 = 2112;
      v50 = v18;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Has multiple active subscriptions %@, has at least one active %@", buf, 0x16u);
    }
  }

  if (HasMultipleSubscriptionsWithAtLeastOneActive && ![(__CFString *)handleCopy length]&& [(__CFString *)dCopy length])
  {
    mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
    ctSubscriptionInfo = [mEMORY[0x277D1A908] ctSubscriptionInfo];
    v35 = [ctSubscriptionInfo __im_subscriptionContextForForSimID:dCopy];

    phoneNumber = [v35 phoneNumber];

    if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v48 = phoneNumber;
        _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Last addressed handle was nil but found it a phone number on the context so using that phone number %@", buf, 0xCu);
      }
    }
  }

  else
  {
    phoneNumber = handleCopy;
  }

  if ([(__CFString *)phoneNumber length])
  {
    relayController3 = [(IMDTelephonyServiceSession *)self relayController];
    v22 = [relayController3 isAliasActiveAndRelayCapable:phoneNumber];

    if (![(__CFString *)phoneNumber length])
    {
      goto LABEL_33;
    }

    if (v22)
    {
      goto LABEL_26;
    }
  }

  else if (![(__CFString *)phoneNumber length])
  {
    goto LABEL_33;
  }

  if (MEMORY[0x231897D30](myCTPhoneNumber, phoneNumber))
  {
LABEL_26:
    if (!IMOSLoggingEnabled())
    {
LABEL_30:
      if (chat)
      {
        *chat = 1;
      }

      v24 = phoneNumber;
      goto LABEL_77;
    }

    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v48 = phoneNumber;
      _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "We have a last addressed alias for this chat, and its one of our active aliases, setting callerID to %@", buf, 0xCu);
    }

LABEL_29:

    goto LABEL_30;
  }

LABEL_33:
  if (!HasMultipleActiveSubscriptions)
  {
    goto LABEL_58;
  }

  if ([(__CFString *)phoneNumber length]&& [(__CFString *)phoneNumber _appearsToBePhoneNumber])
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_30;
    }

    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v48 = phoneNumber;
      _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "We have a last addressed alias for this chat with at least one subscription active, setting callerID to %@", buf, 0xCu);
    }

    goto LABEL_29;
  }

  v25 = [(__CFString *)dCopy length]== 0;
  v26 = IMOSLoggingEnabled();
  if (v25)
  {
    if (v26)
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "Neither the last-addressed simID nor phoneNumber are valid to send with", buf, 2u);
      }
    }

LABEL_58:
    if (v13)
    {
      if (IMOSLoggingEnabled())
      {
        v38 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v48 = _callerIDForRelay;
          _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Updating last address handle to be %@", buf, 0xCu);
        }
      }

      if (chat)
      {
        *chat = 1;
      }
    }

    else
    {
      if (myCTPhoneNumber)
      {
        v39 = MEMORY[0x231897D30](myCTPhoneNumber, phoneNumber) ^ 1;
        if (!phoneNumber)
        {
          LOBYTE(v39) = 0;
        }

        if ((v39 & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v40 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v48 = myCTPhoneNumber;
              _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_INFO, "Updating last address handle to be my phone number %@", buf, 0xCu);
            }
          }

          if (chat)
          {
            *chat = 1;
          }
        }

        v24 = myCTPhoneNumber;
        goto LABEL_77;
      }

      relayController4 = [(IMDTelephonyServiceSession *)self relayController];
      dominentPhoneNumberAlias = [relayController4 dominentPhoneNumberAlias];

      if (dominentPhoneNumberAlias)
      {
        relayController5 = [(IMDTelephonyServiceSession *)self relayController];
        dominentPhoneNumberAlias2 = [relayController5 dominentPhoneNumberAlias];

        goto LABEL_78;
      }
    }

    v24 = _callerIDForRelay;
LABEL_77:
    dominentPhoneNumberAlias2 = v24;
    goto LABEL_78;
  }

  chatCopy2 = chat;
  if (v26)
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v48 = phoneNumber;
      v49 = 2112;
      v50 = dCopy;
      _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "We do not have a valid lastAddressedHandle %@ so using lastAddressedSIMID to send %@", buf, 0x16u);
    }

    chatCopy2 = chat;
  }

  if (chatCopy2)
  {
    *chatCopy2 = 1;
  }

  mEMORY[0x277D1A908]2 = [MEMORY[0x277D1A908] sharedInstance];
  ctSubscriptionInfo2 = [mEMORY[0x277D1A908]2 ctSubscriptionInfo];
  v31 = [ctSubscriptionInfo2 __im_subscriptionContextForForSimID:dCopy];

  dominentPhoneNumberAlias2 = [v31 phoneNumber];

LABEL_78:
  v41 = *MEMORY[0x277D85DE8];

  return dominentPhoneNumberAlias2;
}

- (id)createHandleInfoFor:(id)for
{
  v38 = *MEMORY[0x277D85DE8];
  forCopy = for;
  style = [forCopy style];
  v4 = IMDTelephonyServiceLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    participants = [forCopy participants];
    *buf = 138412290;
    v37 = participants;
    _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Participants: %@", buf, 0xCu);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = forCopy;
  obj = [forCopy participants];
  v6 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v6)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_27;
  }

  v7 = v6;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *v32;
  do
  {
    v12 = 0;
    do
    {
      if (*v32 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v31 + 1) + 8 * v12);
      v14 = IMDTelephonyServiceLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v13 ID];
        *buf = 138412290;
        v37 = v15;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "  Recipient: %@", buf, 0xCu);
      }

      if (v10)
      {
        if (!v9)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (!v9)
        {
LABEL_22:
          v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
          if (v8)
          {
            goto LABEL_13;
          }

          goto LABEL_23;
        }
      }

      if (v8)
      {
        goto LABEL_13;
      }

LABEL_23:
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
LABEL_13:
      v16 = [v13 ID];
      [v10 addObject:v16];

      unformattedID = [v13 unformattedID];
      v18 = unformattedID;
      if (unformattedID)
      {
        v19 = unformattedID;
      }

      else
      {
        v19 = &stru_283F23018;
      }

      [v9 addObject:v19];

      countryCode = [v13 countryCode];
      v21 = countryCode;
      if (countryCode)
      {
        v22 = countryCode;
      }

      else
      {
        v22 = @"us";
      }

      [v8 addObject:v22];

      ++v12;
    }

    while (v7 != v12);
    v23 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    v7 = v23;
  }

  while (v23);
LABEL_27:

  v24 = [(IMDTelephonyServiceSession *)self createHandleInfoForParticipants:v10 unformattedIDs:v9 countryCodes:v8 isGroupChat:style == 43];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)createHandleInfoForParticipants:(id)participants unformattedIDs:(id)ds countryCodes:(id)codes isGroupChat:(BOOL)chat
{
  participantsCopy = participants;
  dsCopy = ds;
  codesCopy = codes;
  v35 = codesCopy;
  if (chat)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([participantsCopy count])
    {
      v13 = 0;
      v34 = *MEMORY[0x277D192F8];
      v33 = *MEMORY[0x277D193A8];
      v32 = *MEMORY[0x277D193C0];
      v14 = *MEMORY[0x277D193A0];
      do
      {
        v15 = [participantsCopy objectAtIndex:v13];
        v16 = [dsCopy objectAtIndex:v13];
        v17 = [codesCopy objectAtIndex:v13];
        v18 = MEMORY[0x277CBEAC0];
        [MEMORY[0x277CCABB0] numberWithInt:2];
        v20 = v19 = dsCopy;
        v21 = [v18 dictionaryWithObjectsAndKeys:{v20, v34, v15, v33, v16, v32, v17, v14, 0}];

        dsCopy = v19;
        [v12 addObject:v21];

        codesCopy = v35;
        ++v13;
      }

      while (v13 < [participantsCopy count]);
    }
  }

  else
  {
    v22 = MEMORY[0x277CBEAC0];
    v23 = [MEMORY[0x277CCABB0] numberWithInt:2];
    v24 = *MEMORY[0x277D192F8];
    firstObject = [participantsCopy firstObject];
    v26 = *MEMORY[0x277D193A8];
    firstObject2 = [dsCopy firstObject];
    v28 = *MEMORY[0x277D193C0];
    firstObject3 = [codesCopy firstObject];
    v30 = [v22 dictionaryWithObjectsAndKeys:{v23, v24, firstObject, v26, firstObject2, v28, firstObject3, *MEMORY[0x277D193A0], 0}];

    codesCopy = v35;
    v12 = IMSingleObjectArray();
  }

  return v12;
}

- (void)_updateCategoryForChat:(id)chat andMessage:(id)message category:(int64_t)category subCategory:(int64_t)subCategory spamExtensionName:(id)name
{
  v23 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  messageCopy = message;
  nameCopy = name;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      guid = [chatCopy guid];
      v17 = 138412802;
      v18 = guid;
      v19 = 2048;
      categoryCopy = category;
      v21 = 2048;
      subCategoryCopy = subCategory;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Updating chat %@ category %ld subCategory @%ld", &v17, 0x20u);
    }
  }

  [chatCopy updateSMSCategory:category subCategory:subCategory];
  [chatCopy updateSMSSpamExtensionNameChatProperty:nameCopy];

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_disableScreenTimeRestrictionsForMessageItem:(id)item chat:(id)chat watchSendsOverCellular:(BOOL)cellular emergencyNumbersFoundInRecipients:(int64_t *)recipients
{
  if (recipients)
  {
    *recipients = 0;
  }

  return 0;
}

- (int64_t)_iMessageCapabilityForSIMID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
  registeredSIMIDs = [mEMORY[0x277D1A908] registeredSIMIDs];

  v6 = [registeredSIMIDs countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    v9 = 1;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(registeredSIMIDs);
      }

      if ([dCopy isEqualToString:*(*(&v13 + 1) + 8 * v10)])
      {
        break;
      }

      if (v7 == ++v10)
      {
        v7 = [registeredSIMIDs countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 2;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_relayMessage:(id)message chat:(id)chat didSendSMS:(BOOL)s attemptingReplication:(BOOL)replication forceReflection:(BOOL)reflection relayToWatchOnly:(BOOL)only shouldDisableScreenTimeRestrictions:(BOOL)restrictions callerID:(id)self0
{
  v69 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  chatCopy = chat;
  dCopy = d;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  if ([mEMORY[0x277D1A9B8] isRelayChatBotEnabled])
  {
  }

  else
  {
    isChatBot = [chatCopy isChatBot];

    if (isChatBot)
    {
      goto LABEL_25;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "We have peer devices, relaying message...", buf, 2u);
    }
  }

  lastAddressedSIMID = [chatCopy lastAddressedSIMID];
  v47 = [(IMDTelephonyServiceSession *)self _iMessageCapabilityForSIMID:lastAddressedSIMID];

  balloonBundleID = [messageCopy balloonBundleID];
  v21 = [balloonBundleID isEqualToString:*MEMORY[0x277D19730]];

  fileTransferGUIDs = [messageCopy fileTransferGUIDs];
  v23 = [fileTransferGUIDs count] == 0;

  mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  if (![mEMORY[0x277D1A9B8]2 isRelayChatBotEnabled])
  {

    goto LABEL_12;
  }

  isChatBot2 = [chatCopy isChatBot];

  if (!isChatBot2)
  {
LABEL_12:
    v52 = 0;
    goto LABEL_13;
  }

  v52 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D188F0]];
LABEL_13:
  v26 = IMOSLoggingEnabled();
  if ((v23 | v21))
  {
    if (v26)
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        guid = [messageCopy guid];
        *buf = 138412290;
        v68 = guid;
        _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "No attachments or rich links, relaying message with guid %@", buf, 0xCu);
      }
    }

    v29 = v53;
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = sub_22B554000;
    v53[3] = &unk_2787042E0;
    v53[4] = self;
    v53[5] = messageCopy;
    v30 = chatCopy;
    v53[6] = v30;
    sCopy = s;
    replicationCopy = replication;
    reflectionCopy = reflection;
    onlyCopy = only;
    restrictionsCopy = restrictions;
    v53[7] = dCopy;
    v53[8] = v52;
    v53[9] = v47;
    v31 = v52;
    [(IMDTelephonyServiceSession *)self waitForChatRelayReadiness:v30 withBlock:v53];
  }

  else
  {
    if (v26)
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        guid2 = [messageCopy guid];
        *buf = 138412290;
        v68 = guid2;
        _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Message with Guid %@ contains attachments, uploading to MMCS", buf, 0xCu);
      }
    }

    attachmentController = [(IMDTelephonyServiceSession *)self attachmentController];
    lastAddressedLocalHandle = [chatCopy lastAddressedLocalHandle];
    lastAddressedSIMID2 = [chatCopy lastAddressedSIMID];
    v29 = v61;
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = sub_22B553BF4;
    v61[3] = &unk_278704308;
    v61[4] = self;
    v61[5] = chatCopy;
    v37 = messageCopy;
    onlyCopy2 = only;
    v39 = messageCopy;
    selfCopy = self;
    v41 = dCopy;
    v42 = v37;
    v61[6] = v37;
    sCopy2 = s;
    replicationCopy2 = replication;
    reflectionCopy2 = reflection;
    v65 = onlyCopy2;
    restrictionsCopy2 = restrictions;
    v61[7] = v41;
    v61[8] = v52;
    v61[9] = v48;
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = sub_22B553EE8;
    v59[3] = &unk_278704330;
    v59[4] = selfCopy;
    messageCopy = v39;
    v43 = v42;
    dCopy = v41;
    v44 = v43;
    v60 = v43;
    v45 = v52;
    [attachmentController processAttachmentsForPeerRelayForMessage:v44 lastAddressHandle:lastAddressedLocalHandle lastAddressedSIMID:lastAddressedSIMID2 completionBlock:v61 uploadFailureBlock:v59];
  }

LABEL_25:
  v46 = *MEMORY[0x277D85DE8];
}

- (void)_setTimeoutTimerForRelayMessageID:(id)d timeout:(double)timeout
{
  dCopy = d;
  if (timeout <= 1.0)
  {
    timeout = 180.0;
  }

  v10 = dCopy;
  if ([dCopy length])
  {
    [(IMDTelephonyServiceSession *)self _clearTimoutTimerForRelayMessageID:v10];
    if (!self->_outgoingRelayMessageTimerMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      outgoingRelayMessageTimerMap = self->_outgoingRelayMessageTimerMap;
      self->_outgoingRelayMessageTimerMap = Mutable;
    }

    v9 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__messageTimedOut_ selector:v10 userInfo:0 repeats:timeout];
    if (v9)
    {
      [(NSMutableDictionary *)self->_outgoingRelayMessageTimerMap setObject:v9 forKey:v10];
    }
  }
}

- (void)_clearTimoutTimerForRelayMessageID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    v4 = [(NSMutableDictionary *)self->_outgoingRelayMessageTimerMap objectForKey:dCopy];
    if (v4)
    {
      [(NSMutableDictionary *)self->_outgoingRelayMessageTimerMap removeObjectForKey:dCopy];
      [v4 invalidate];
    }
  }
}

- (void)_addOriginatedMessage:(id)message
{
  v12 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if ([messageCopy length])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = messageCopy;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, " Adding Message with GUID: %@ to originated Message Map", &v10, 0xCu);
      }
    }

    originatedMessages = self->_originatedMessages;
    if (!originatedMessages)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v8 = self->_originatedMessages;
      self->_originatedMessages = v7;

      originatedMessages = self->_originatedMessages;
    }

    [(NSMutableSet *)originatedMessages addObject:messageCopy];
    [(IMDTelephonyServiceSession *)self _setClearMessageSendTimer];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_removeOriginatedMessage:(id)message
{
  v9 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if ([messageCopy length])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = messageCopy;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, " Removing Message with GUID: %@ from originated Message Map", &v7, 0xCu);
      }
    }

    [(NSMutableSet *)self->_originatedMessages removeObject:messageCopy];
    if (![(NSMutableSet *)self->_originatedMessages count])
    {
      [(IMDTelephonyServiceSession *)self _clearInactivityTimer];
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_clearInactivityTimer
{
  self->_pendingOriginatedMessagesTimer = 0;
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__clearInactivityTimer object:0];
  originatedMessages = self->_originatedMessages;
  self->_originatedMessages = 0;
}

- (void)_setClearMessageSendTimer
{
  if (!self->_pendingOriginatedMessagesTimer)
  {
    self->_pendingOriginatedMessagesTimer = 1;
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__clearInactivityTimer object:0];

    [(IMDTelephonyServiceSession *)self performSelector:sel__clearInactivityTimer withObject:0 afterDelay:30.0];
  }
}

- (void)_enqueueBlock:(id)block withTimeout:(double)timeout
{
  v18 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      accountID = [(IMDServiceSession *)self accountID];
      v14 = 138412546;
      v15 = accountID;
      v16 = 2048;
      timeoutCopy = timeout;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, " Enqueued item for key: %@    timeout: %f", &v14, 0x16u);
    }
  }

  incomingMessageMultiQueue = self->_incomingMessageMultiQueue;
  if (!incomingMessageMultiQueue)
  {
    v10 = objc_alloc_init(MEMORY[0x277D19278]);
    v11 = self->_incomingMessageMultiQueue;
    self->_incomingMessageMultiQueue = v10;

    incomingMessageMultiQueue = self->_incomingMessageMultiQueue;
  }

  accountID2 = [(IMDServiceSession *)self accountID];
  [(IMMultiQueue *)incomingMessageMultiQueue addBlock:blockCopy withTimeout:accountID2 forKey:0 description:timeout];

  v13 = *MEMORY[0x277D85DE8];
}

- (unint64_t)maxRecipientsForPhoneNumber:(id)number simID:(id)d
{
  numberCopy = number;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Subclass failed to override participant check", v9, 2u);
    }
  }

  return 0;
}

- (id)subscriptionContextForChat:(id)chat
{
  v45 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  lastAddressedLocalHandle = [chatCopy lastAddressedLocalHandle];
  lastAddressedSIMID = [chatCopy lastAddressedSIMID];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      guid = [chatCopy guid];
      *buf = 138412802;
      v40 = guid;
      v41 = 2112;
      v42 = lastAddressedLocalHandle;
      v43 = 2112;
      v44 = lastAddressedSIMID;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Not first chat (%@): lastAddressedLocalHandle %@ lastAddressedSIMID %@", buf, 0x20u);
    }
  }

  mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
  ctSubscriptionInfo = [mEMORY[0x277D1A908] ctSubscriptionInfo];

  subscriptions = [ctSubscriptionInfo subscriptions];
  v11 = [subscriptions count] == 1;

  if (v11)
  {
    subscriptions2 = [ctSubscriptionInfo subscriptions];
    firstObject = [subscriptions2 firstObject];

    if (firstObject)
    {
      goto LABEL_21;
    }
  }

  else
  {
    firstObject = [ctSubscriptionInfo __im_subscriptionContextForForSimID:lastAddressedSIMID phoneNumber:lastAddressedLocalHandle];
    if (firstObject)
    {
      goto LABEL_21;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      guid2 = [chatCopy guid];
      *buf = 138412802;
      v40 = lastAddressedLocalHandle;
      v41 = 2112;
      v42 = lastAddressedSIMID;
      v43 = 2112;
      v44 = guid2;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Could not find a subscription context to send with based on lastAddressedHandle %@ lastAddressedSIMID %@ so finding context preferred subscription for chat %@", buf, 0x20u);
    }
  }

  v16 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  participants = [chatCopy participants];
  v18 = [participants countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v18)
  {
    v19 = *v35;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v35 != v19)
        {
          objc_enumerationMutation(participants);
        }

        v21 = [*(*(&v34 + 1) + 8 * i) ID];
        [v16 addObject:v21];
      }

      v18 = [participants countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v18);
  }

  firstObject = [ctSubscriptionInfo __im_contactPreferredSubscriptionContextForChatHandleIDs:v16];

  if (firstObject)
  {
LABEL_21:
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v40 = firstObject;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Setting the context for context %@ and updating lastAddressed if needed", buf, 0xCu);
      }
    }

    phoneNumber = [firstObject phoneNumber];
    if (MEMORY[0x231897D30](lastAddressedLocalHandle, phoneNumber))
    {
      labelID = [firstObject labelID];
      v25 = [lastAddressedSIMID isEqualToString:labelID];

      if (v25)
      {
        goto LABEL_30;
      }
    }

    else
    {
    }

    chatIdentifier = [chatCopy chatIdentifier];
    style = [chatCopy style];
    phoneNumber2 = [firstObject phoneNumber];
    labelID2 = [firstObject labelID];
    [(IMDTelephonyServiceSession *)self _updateLastAddressedIDsIfNeededForChatWithIdentifier:chatIdentifier style:style lastAddressedHandle:phoneNumber2 lastAddressedSIMID:labelID2];

    goto LABEL_30;
  }

  if (IMOSLoggingEnabled())
  {
    v32 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Could not find a subscription context to send with based on contact preferred subscription in context so failing message", buf, 2u);
    }
  }

  firstObject = 0;
LABEL_30:

  v30 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (void)sendDeleteCommand:(id)command forChatGUID:(id)d
{
  commandCopy = command;
  dCopy = d;
  chatRegistry = [(IMDTelephonyServiceSession *)self chatRegistry];
  v8 = [chatRegistry existingChatWithGUID:dCopy];

  if (![(IMDTelephonyServiceSession *)self shouldExcludeChatFromRelay:v8])
  {
    relayController = [(IMDTelephonyServiceSession *)self relayController];
    [relayController sendDeleteCommand:commandCopy forChatGUID:dCopy];
  }
}

- (void)sendRecoverCommand:(id)command forChatGUID:(id)d
{
  commandCopy = command;
  dCopy = d;
  chatRegistry = [(IMDTelephonyServiceSession *)self chatRegistry];
  v8 = [chatRegistry existingChatWithGUID:dCopy];

  if (![(IMDTelephonyServiceSession *)self shouldExcludeChatFromRelay:v8])
  {
    relayController = [(IMDTelephonyServiceSession *)self relayController];
    [relayController sendRecoverCommand:commandCopy forChatGUID:dCopy];
  }
}

- (id)_resolveHandlesFor:(id)for withMessage:(id)message
{
  forCopy = for;
  messageCopy = message;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_22B4D7660;
  v17 = sub_22B4D7888;
  v18 = 0;
  v8 = +[IMDMessageStore sharedInstance];
  service = [(IMDServiceSession *)self service];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22B5556DC;
  v12[3] = &unk_2787031A0;
  v12[4] = &v13;
  [v8 resolveUnformattedRepresentationsForHandles:forCopy onService:service message:messageCopy completionBlock:v12];

  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

- (BOOL)isGroupMessagingEnabledFor:(id)for
{
  v3 = MEMORY[0x277D1A8F8];
  forCopy = for;
  lastAddressedLocalHandle = [forCopy lastAddressedLocalHandle];
  lastAddressedSIMID = [forCopy lastAddressedSIMID];

  LOBYTE(v3) = [v3 IMMMSGroupTextOnlyMessagesSendAsMMSForPhoneNumber:lastAddressedLocalHandle simID:lastAddressedSIMID];
  return v3;
}

- (int64_t)maxSizePerAttachmentWithCount:(int)count lastAddressHandle:(id)handle lastAddressedSIMID:(id)d
{
  *&v16[5] = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  dCopy = d;
  v9 = ([MEMORY[0x277D1A8F8] IMMMSMaximumMessageByteCountForPhoneNumber:handleCopy simID:dCopy] * 0.92);
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v15 = 134217984;
      *v16 = v9;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "   Maximum byte length for attachments is: %lld", &v15, 0xCu);
    }
  }

  v11 = v9 / count;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = 67109376;
      v16[0] = count;
      LOWORD(v16[1]) = 2048;
      *(&v16[1] + 2) = v11;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "     Part byte length for %d attachments will be: %lld", &v15, 0x12u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)_canSendWithCallerID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (IMSharedHelperDeviceHasMultipleActiveSubscriptions())
  {
    mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
    ctSubscriptionInfo = [mEMORY[0x277D1A908] ctSubscriptionInfo];
    v6 = [ctSubscriptionInfo __im_containsPhoneNumber:dCopy];

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = @"NO";
        if (v6)
        {
          v8 = @"YES";
        }

        v12 = 138412290;
        v13 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Should send if caller ID is part of the subscription context: %@", &v12, 0xCu);
      }
    }
  }

  else
  {
    myCTPhoneNumber = [MEMORY[0x277D1A8F8] myCTPhoneNumber];
    LOBYTE(v6) = MEMORY[0x231897D30](myCTPhoneNumber, dCopy);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (unint64_t)_sendingDecisionForMessageItem:(id)item callerID:(id)d lastAddressedLocalHandle:(id)handle lastAddressedSIMID:(id)iD
{
  itemCopy = item;
  dCopy = d;
  handleCopy = handle;
  iDCopy = iD;
  isMessagesTheDefaultTextApp = [MEMORY[0x277D1A8F8] isMessagesTheDefaultTextApp];
  relayController = [(IMDTelephonyServiceSession *)self relayController];
  _localDeviceSupportsEmergencySMS = [relayController _localDeviceSupportsEmergencySMS];

  if (itemCopy)
  {
    mEMORY[0x277D18998] = [MEMORY[0x277D18998] sharedInstance];
    handle = [itemCopy handle];
    v18 = [mEMORY[0x277D18998] isPhoneNumberEmergencyNumber:handle];
  }

  else
  {
    v18 = 0;
  }

  v19 = _localDeviceSupportsEmergencySMS & v18;
  criticalMessagingAppName = [itemCopy criticalMessagingAppName];
  v21 = [criticalMessagingAppName length];

  if (v19 == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v23 = "IsEmergency and canSendSMS: Sending Message via CT";
LABEL_21:
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, v23, buf, 2u);
        goto LABEL_22;
      }

      goto LABEL_22;
    }

    goto LABEL_23;
  }

  relayController2 = [(IMDTelephonyServiceSession *)self relayController];
  _localDeviceSupportsSMS = [relayController2 _localDeviceSupportsSMS];
  if (v21)
  {
    v26 = 1;
  }

  else
  {
    v26 = isMessagesTheDefaultTextApp;
  }

  v27 = _localDeviceSupportsSMS & v26;

  v28 = [(IMDTelephonyServiceSession *)self _canSendWithCallerID:dCopy];
  if ([dCopy length])
  {
    _appearsToBePhoneNumber = [dCopy _appearsToBePhoneNumber];
  }

  else
  {
    _appearsToBePhoneNumber = 0;
  }

  relayController3 = [(IMDTelephonyServiceSession *)self relayController];
  v31 = [relayController3 _localDeviceSupportsSMSAndDoesNotHaveAPhoneNumberForSIMID:iDCopy];

  if ([handleCopy length])
  {
    relayController4 = [(IMDTelephonyServiceSession *)self relayController];
    v33 = [relayController4 isAliasActiveAndRelayCapable:handleCopy];
  }

  else
  {
    v33 = 0;
  }

  if ((v28 & _appearsToBePhoneNumber & v27) == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v23 = "My Caller ID & Phone Number are the same, I am SMS Capable, My callerID is a phone number: Sending Message via CT";
        goto LABEL_21;
      }

LABEL_22:
    }

LABEL_23:
    v34 = 1;
    goto LABEL_24;
  }

  if ((v26 & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
LABEL_36:
      v34 = 8;
      goto LABEL_24;
    }

    v36 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
LABEL_35:

      goto LABEL_36;
    }

    *buf = 0;
    v37 = "Messages is not the default text app, failing to send non-critical message";
LABEL_34:
    _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, v37, buf, 2u);
    goto LABEL_35;
  }

  if (IMSharedHelperDeviceHasMultipleSubscriptions() && [itemCopy useStandalone])
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_23;
    }

    v22 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v23 = "Subscription on chat cannot be found in active subscriptions but message must be sent because it is an SOS message.";
    goto LABEL_21;
  }

  if ((v31 & v26) != 0)
  {
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "I do not have a phone number, however I am sms capable: Sending Message via CT", buf, 2u);
      }
    }

    [itemCopy setDestinationCallerID:iDCopy];
    v34 = 5;
    goto LABEL_24;
  }

  if (((_appearsToBePhoneNumber | v27 ^ 1) & 1) == 0 && (IMSharedHelperDeviceHasMultipleActiveSubscriptions() & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_23;
    }

    v22 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v23 = "My CallerID is not set to phone number However I am SMS Capable: Sending Message via CT";
    goto LABEL_21;
  }

  v39 = v28 | ~(IMSharedHelperDeviceHasMultipleActiveSubscriptions() & v27) | v33;
  v40 = IMOSLoggingEnabled();
  if ((v39 & 1) == 0)
  {
    if (!v40)
    {
      goto LABEL_36;
    }

    v36 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      goto LABEL_35;
    }

    *buf = 0;
    v37 = "My device is capable of sending SMS but is not on correct subscription. Failing message";
    goto LABEL_34;
  }

  if (v40)
  {
    v41 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, ": Calling Did Send Message, Another device will relay this message for me", buf, 2u);
    }
  }

  v34 = 2;
LABEL_24:

  return v34;
}

- (void)_messageTimedOut:(id)out
{
  v18 = *MEMORY[0x277D85DE8];
  outCopy = out;
  userInfo = [outCopy userInfo];
  v6 = +[IMDMessageStore sharedInstance];
  v7 = [v6 messageWithGUID:userInfo];

  if (![v7 isSent])
  {
    goto LABEL_4;
  }

  service = [v7 service];
  service2 = [(IMDServiceSession *)self service];
  internalName = [service2 internalName];
  if ([service isEqualToString:internalName])
  {
    wasDowngraded = [v7 wasDowngraded];

    if (!wasDowngraded)
    {
LABEL_4:
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v16 = 138412290;
          v17 = userInfo;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Failed to send relay message ID guid (timed out): %@", &v16, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v16 = 138412290;
          v17 = userInfo;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Error sending message: %@ SMS Relay timed out", &v16, 0xCu);
        }
      }

      if (userInfo)
      {
        [(IMDServiceSession *)self didReceiveError:4 forMessageID:userInfo forceError:1];
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v14 = IMLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_22B7D21DC(v14);
  }

LABEL_18:
  v15 = *MEMORY[0x277D85DE8];
}

- (IMDRelayEnrollmentController)relayEnrollmentController
{
  relayController = [(IMDTelephonyServiceSession *)self relayController];
  enrollmentController = [relayController enrollmentController];

  return enrollmentController;
}

- (void)enrollDeviceInSMSRelay:(id)relay
{
  relayCopy = relay;
  relayEnrollmentController = [(IMDTelephonyServiceSession *)self relayEnrollmentController];
  [relayEnrollmentController enrollDeviceInSMSRelay:relayCopy];
}

- (void)unEnrollDeviceInSMSRelay:(id)relay
{
  relayCopy = relay;
  relayEnrollmentController = [(IMDTelephonyServiceSession *)self relayEnrollmentController];
  [relayEnrollmentController unEnrollDeviceInSMSRelay:relayCopy];
}

- (void)enrollSelfDeviceInSMSRelay
{
  relayEnrollmentController = [(IMDTelephonyServiceSession *)self relayEnrollmentController];
  [relayEnrollmentController enrollSelfDeviceInSMSRelay];
}

- (void)processMessageSendFailure:(id)failure
{
  failureCopy = failure;
  if ([failureCopy length])
  {
    relayController = [(IMDTelephonyServiceSession *)self relayController];
    [relayController messageFailedToSend:failureCopy];
  }
}

- (void)_findUnsubscribeTextForChat:(id)chat inMessageBody:(id)body
{
  v30 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  bodyCopy = body;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isReportJunkEverywhereEnabled = [mEMORY[0x277D1A9B8] isReportJunkEverywhereEnabled];

  if (isReportJunkEverywhereEnabled)
  {
    if (!chatCopy)
    {
      v13 = IMLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D2380(v13);
      }

      goto LABEL_37;
    }

    if (![bodyCopy length])
    {
      v13 = IMLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D22E8(chatCopy, v13);
      }

      goto LABEL_37;
    }

    if ([chatCopy isFiltered])
    {
      if (qword_281422538 != -1)
      {
        sub_22B7D2298();
      }

      if (qword_281422540 != -1)
      {
        sub_22B7D22AC();
      }

      if (qword_281422550 != -1)
      {
        sub_22B7D22C0();
      }

      if (qword_281422560 != -1)
      {
        sub_22B7D22D4();
      }

      if (off_281422530)
      {
        v9 = off_281422530(bodyCopy);
        if ([v9 count])
        {
          v22 = chatCopy;
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = 0;
            v14 = *v24;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v24 != v14)
                {
                  objc_enumerationMutation(v10);
                }

                v16 = *(*(&v23 + 1) + 8 * i);
                v17 = [v16 objectForKeyedSubscript:qword_281422548];
                if ([v17 isEqualToString:qword_281422568])
                {
                  v18 = [v16 objectForKeyedSubscript:qword_281422558];

                  v13 = v18;
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
            }

            while (v12);
          }

          else
          {
            v13 = 0;
          }

          chatCopy = v22;
        }

        else
        {
          v13 = 0;
        }

        if (![v13 length])
        {
          v19 = IMGetCachedDomainValueForKey();

          v13 = v19;
        }

        if ([v13 length])
        {
          v27 = *MEMORY[0x277D19980];
          v28 = v13;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
          [chatCopy updateProperties:v20];
        }

LABEL_37:
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)sendReportJunkMessageGUID:(id)d shouldRelay:(BOOL)relay
{
  relayCopy = relay;
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = +[IMDMessageStore sharedInstance];
  v8 = [v7 messageWithGUID:dCopy];

  if (v8)
  {
    v9 = +[IMDMessageStore sharedInstance];
    v10 = [v9 chatForMessageGUID:dCopy];

    if (!v10 && IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v19 = 138412546;
        v20 = dCopy;
        v21 = 1024;
        v22 = relayCopy;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "No chat found when reporting message GUID %@ as junk (relay=%{BOOL}d)", &v19, 0x12u);
      }
    }

    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isReportJunkEverywhereEnabled = [mEMORY[0x277D1A9B8] isReportJunkEverywhereEnabled];

    if ((isReportJunkEverywhereEnabled & relayCopy) != 0)
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Sending junk report via relay...", &v19, 2u);
        }
      }

      lastAddressedLocalHandle = [v10 lastAddressedLocalHandle];
      relayController = [(IMDTelephonyServiceSession *)self relayController];
      [relayController reportJunkMessageToCarrier:v8 toChat:v10 fromCallerID:lastAddressedLocalHandle];
    }

    else if ([MEMORY[0x277D1A910] canReportJunkOverCellularServiceOfMessageItem:v8])
    {
      [(IMDTelephonyServiceSession *)self _reportTelephonyJunkForMessageItem:v8 chat:v10];
    }

    else if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Cellular service not at home service. Cannot report junk", &v19, 2u);
      }
    }

LABEL_23:

    goto LABEL_24;
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v19 = 138412546;
      v20 = dCopy;
      v21 = 1024;
      v22 = relayCopy;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "No message found with GUID %@ to report junk (relay=%{BOOL}d)", &v19, 0x12u);
    }

    goto LABEL_23;
  }

LABEL_24:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_reportTelephonyJunkForMessageItem:(id)item chat:(id)chat
{
  itemCopy = item;
  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D23C4(itemCopy, self, v6);
  }
}

- (void)_setupCoreTelephonyObservation
{
  v3 = +[IMDLocalDaemon sharedDaemon];
  isSetupComplete = [v3 isSetupComplete];

  v5 = IMOSLoggingEnabled();
  if (isSetupComplete)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Daemon is ready registering for incoming messages", buf, 2u);
      }
    }

    [(IMDTelephonyServiceSession *)self _registerForIncomingMessages:0];
  }

  else
  {
    if (v5)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Daemon is not yet ready, watching for notification to register for incoming messages", v9, 2u);
      }
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__registerForIncomingMessages_ name:*MEMORY[0x277D19318] object:0];
  }
}

- (void)_registerForIncomingMessages:(id)messages
{
  messagesCopy = messages;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Registering for incoming messages", v6, 2u);
    }
  }

  [(IMDTelephonyServiceSession *)self _registerForCTNotifications];
}

- (void)_registerForCTNotifications
{
  if (![(IMDTelephonyServiceSession *)self isRegisteredForCTPhoneNumberNotifications])
  {
    [(IMDTelephonyServiceSession *)self setIsRegisteredForCTPhoneNumberNotifications:1];
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Registering for Message Receipts.", v6, 2u);
      }
    }

    CTTelephonyCenterGetDefault();
    v4 = *MEMORY[0x277CC4208];
    CTTelephonyCenterAddObserver();
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_22B557B78, *MEMORY[0x277D1A4E8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

- (void)_teardownCoreTelephonyObservation
{
  if ([(IMDTelephonyServiceSession *)self isRegisteredForCTPhoneNumberNotifications])
  {
    [(IMDTelephonyServiceSession *)self setIsRegisteredForCTPhoneNumberNotifications:0];
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Unregistering for Message Receipts.", v5, 2u);
      }
    }

    CTTelephonyCenterGetDefault();
    v4 = *MEMORY[0x277CC4208];
    CTTelephonyCenterRemoveObserver();
  }
}

- (void)handler:(id)handler incomingPlainTextMessage:(id)message toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)stamp storageContext:(id)context
{
  messageCopy = message;
  tokenCopy = token;
  contextCopy = context;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_22B5986E4;
  v17[3] = &unk_2787054C8;
  v18 = messageCopy;
  selfCopy = self;
  v20 = tokenCopy;
  v21 = contextCopy;
  v14 = contextCopy;
  v15 = tokenCopy;
  v16 = messageCopy;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v17 withTimeout:45.0];
}

- (void)handler:(id)handler incomingDownloadMessage:(id)message toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)stamp storageContext:(id)context
{
  messageCopy = message;
  tokenCopy = token;
  contextCopy = context;
  v14 = [messageCopy objectForKey:IMDRelayMessageAttachmentDictionaryOutFileSizeKey];
  integerValue = [v14 integerValue];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22B598E50;
  v19[3] = &unk_278705518;
  v19[4] = self;
  v20 = messageCopy;
  v22 = contextCopy;
  v23 = integerValue;
  v21 = tokenCopy;
  v16 = contextCopy;
  v17 = tokenCopy;
  v18 = messageCopy;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v19 withTimeout:240.0];
}

- (id)chatForOutgoingMessage:(id)message fromIdentifier:(id)identifier isInProxyMode:(BOOL)mode createIfNotExists:(BOOL)exists
{
  existsCopy = exists;
  modeCopy = mode;
  v111 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  identifierCopy = identifier;
  selfCopy = self;
  service = [(IMDServiceSession *)self service];
  v10 = [service supportsCapability:*MEMORY[0x277D1A560]];

  if (v10)
  {
    v11 = [messageCopy objectForKeyedSubscript:IMDRelayMessageItemDictionary];
    v83 = [v11 objectForKeyedSubscript:IMDRelayMessageDictionaryChatDisplayNameKey];
  }

  else
  {
    v83 = 0;
  }

  service2 = [(IMDServiceSession *)self service];
  v13 = [service2 supportsCapability:*MEMORY[0x277D1A558]];

  if (v13)
  {
    v14 = [messageCopy objectForKeyedSubscript:IMDRelayMessageItemDictionary];
    v82 = [v14 objectForKeyedSubscript:IMDRelayMessageDictionaryChatGroupIDKey];

    v15 = [messageCopy objectForKeyedSubscript:IMDRelayMessageItemDictionary];
    v84 = [v15 objectForKeyedSubscript:IMDRelayMessageDictionaryChatOriginalGroupID];
  }

  else
  {
    v84 = 0;
    v82 = 0;
  }

  v16 = [messageCopy objectForKey:IMDCTMessageDictionaryReceipientsKey];
  v17 = [v16 __imArrayByApplyingBlock:&unk_283F1A028];

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v103 = v17;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "ChatForOutgoingMessage recipients %@", buf, 0xCu);
    }
  }

  relayController = [(IMDTelephonyServiceSession *)self relayController];
  v20 = [relayController _isDefaultPairedDeviceRelayingLocally:identifierCopy];

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = v17;
  v21 = [(__CFString *)obj countByEnumeratingWithState:&v97 objects:v110 count:16];
  if (v21)
  {
    v22 = v20 | modeCopy;
    v23 = *v98;
    if (v20 | modeCopy)
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    v90 = v24;
    if (v20)
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    if (modeCopy)
    {
      v26 = @"YES";
    }

    else
    {
      v26 = @"NO";
    }

    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v98 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v97 + 1) + 8 * i);
        mEMORY[0x277D18998] = [MEMORY[0x277D18998] sharedInstance];
        v30 = [mEMORY[0x277D18998] isPhoneNumberEmergencyNumber:v28];

        v31 = IMOSLoggingEnabled();
        if (((v30 ^ 1 | v22) & 1) == 0)
        {
          if (v31)
          {
            v42 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v42, OS_LOG_TYPE_INFO, "One of the recipients of this outgoing message is an emergency number, Not processing message", buf, 2u);
            }
          }

          v43 = 0;
          v44 = obj;
          goto LABEL_78;
        }

        if (v31)
        {
          v32 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 138413058;
            v33 = @"NO";
            if (v30)
            {
              v33 = @"YES";
            }

            v103 = v33;
            v104 = 2112;
            v105 = v90;
            v106 = 2112;
            v107 = v25;
            v108 = 2112;
            v109 = v26;
            _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Will send SMS, recipient is Emergency %@, shouldRelayEmergencyTextFromPairedDevice: %@, isDefaultPairedDeviceRelayingLocally: %@, isInProxyMode %@ ", buf, 0x2Au);
          }
        }
      }

      v21 = [(__CFString *)obj countByEnumeratingWithState:&v97 objects:v110 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  v91 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v34 = [messageCopy objectForKey:IMDRelayMessageDictionaryChatStyleKey];
  v79 = _ChatStyleFromChatStyleString(v34);

  buf[0] = v79;
  if (v79 == 45)
  {
    __imFirstObject = [(__CFString *)obj __imFirstObject];
    v35 = MEMORY[0x277CBEAC0];
    v36 = [MEMORY[0x277CCABB0] numberWithInt:2];
    v37 = [v35 dictionaryWithObjectsAndKeys:{v36, *MEMORY[0x277D192F8], __imFirstObject, *MEMORY[0x277D193A8], 0}];

    [(__CFString *)v91 addObject:v37];
    v38 = +[IMDChatRegistry sharedInstance];
    __imFirstObject2 = [(__CFString *)obj __imFirstObject];
    account = [(IMDServiceSession *)selfCopy account];
    v41 = [v38 existingChatForID:__imFirstObject2 account:account];
LABEL_56:
    v60 = v41;

    goto LABEL_57;
  }

  chatRegistry = [(IMDTelephonyServiceSession *)selfCopy chatRegistry];
  account2 = [(IMDServiceSession *)selfCopy account];
  __imFirstObject = [chatRegistry generateUnusedChatIdentifierForGroupChatWithAccount:account2];

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v89 = obj;
  v47 = [(__CFString *)v89 countByEnumeratingWithState:&v93 objects:v101 count:16];
  if (v47)
  {
    v48 = *v94;
    v49 = *MEMORY[0x277D192F8];
    v50 = *MEMORY[0x277D193A8];
    do
    {
      for (j = 0; j != v47; ++j)
      {
        if (*v94 != v48)
        {
          objc_enumerationMutation(v89);
        }

        v52 = *(*(&v93 + 1) + 8 * j);
        v53 = MEMORY[0x277CBEAC0];
        v54 = [MEMORY[0x277CCABB0] numberWithInt:2];
        v55 = [v53 dictionaryWithObjectsAndKeys:{v54, v49, v52, v50, 0}];

        [(__CFString *)v91 addObject:v55];
      }

      v47 = [(__CFString *)v89 countByEnumeratingWithState:&v93 objects:v101 count:16];
    }

    while (v47);
  }

  v56 = +[IMDChatRegistry sharedInstance];
  account3 = [(IMDServiceSession *)selfCopy account];
  service3 = [(IMDServiceSession *)selfCopy service];
  if ([service3 groupsMergeDisplayNames])
  {
    v59 = v83;
  }

  else
  {
    v59 = 0;
  }

  v60 = [v56 existingChatForIDs:v89 account:account3 displayName:v59 groupID:v82 style:43];

  if (!v60 && v84)
  {
    v38 = +[IMDChatRegistry sharedInstance];
    __imFirstObject2 = [(IMDServiceSession *)selfCopy account];
    account = [(IMDServiceSession *)selfCopy service];
    if ([account groupsMergeDisplayNames])
    {
      v61 = v83;
    }

    else
    {
      v61 = 0;
    }

    v41 = [v38 existingChatForIDs:v89 account:__imFirstObject2 displayName:v61 originalGroupID:v84 style:43];
    goto LABEL_56;
  }

LABEL_57:
  if (v60)
  {
    chatIdentifier = [v60 chatIdentifier];

    buf[0] = [v60 style];
    v43 = v60;
  }

  else
  {
    v92 = __imFirstObject;
    [(IMDServiceSession *)selfCopy canonicalizeChatIdentifier:&v92 style:buf];
    chatIdentifier = v92;

    if (existsCopy)
    {
      v63 = objc_alloc_init(IMDChatStatusChangeContext);
      [(IMDChatStatusChangeContext *)v63 setDisplayName:v83];
      [(IMDChatStatusChangeContext *)v63 setGroupID:v82];
      [(IMDChatStatusChangeContext *)v63 setOriginalGroupID:v84];
      [(IMDChatStatusChangeContext *)v63 setHandleInfo:v91];
      [(IMDChatStatusChangeContext *)v63 setIsMessageSentFromMe:1];
      [(IMDServiceSession *)selfCopy didUpdateChatStatus:2 chat:chatIdentifier style:buf[0] context:v63];
      v64 = +[IMDChatRegistry sharedInstance];
      if (v79 == 45)
      {
        __imFirstObject3 = [(__CFString *)obj __imFirstObject];
        account4 = [(IMDServiceSession *)selfCopy account];
        v43 = [v64 existingChatForID:__imFirstObject3 account:account4];
      }

      else
      {
        __imFirstObject3 = [(IMDServiceSession *)selfCopy account];
        v43 = [v64 existingChatForIDs:obj account:__imFirstObject3 displayName:v83 groupID:v82 style:43];
      }
    }

    else
    {
      v43 = 0;
    }
  }

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isMissingMessagesEnabled = [mEMORY[0x277D1A9B8] isMissingMessagesEnabled];

  if (isMissingMessagesEnabled)
  {
    v69 = [messageCopy objectForKeyedSubscript:IMDRelayMessageItemDictionary];
    v70 = [v69 objectForKeyedSubscript:IMDRelayMessageItemDictionaryServiceKey];
    originalGroupID = IMChatLookupDomainForServiceName();

    v72 = [v43 latestIdentifierForDomain:originalGroupID];
    guid = v72;
    if (!v84 || ([v72 isEqualToString:?] & 1) != 0 || !-[IMDServiceSession allowedToOverwriteOriginalGroupIDForChat:](selfCopy, "allowedToOverwriteOriginalGroupIDForChat:", v43))
    {
      goto LABEL_75;
    }

    [v43 assignIdentifier:v84 forDomain:originalGroupID isHistoricalIdentifier:0];

LABEL_74:
    v75 = +[IMDChatStore sharedInstance];
    [v75 storeChat:v43];

    originalGroupID = -[IMDServiceSession broadcasterForChatListenersWithBlackholeStatus:](selfCopy, "broadcasterForChatListenersWithBlackholeStatus:", [v43 isBlackholed]);
    guid = [v43 guid];
    dictionaryRepresentation = [v43 dictionaryRepresentation];
    [originalGroupID chat:guid updated:dictionaryRepresentation];

LABEL_75:
    goto LABEL_76;
  }

  if (v84)
  {
    originalGroupID = [v43 originalGroupID];
    if ([originalGroupID isEqualToString:v84])
    {
LABEL_76:

      goto LABEL_77;
    }

    v74 = [(IMDServiceSession *)selfCopy allowedToOverwriteOriginalGroupIDForChat:v43];

    if (v74)
    {
      [v43 setOriginalGroupID:v84];
      goto LABEL_74;
    }
  }

LABEL_77:

  v44 = v91;
LABEL_78:

  v77 = *MEMORY[0x277D85DE8];

  return v43;
}

- (BOOL)_allowedToProcessMessageFromToken:(id)token fromID:(id)d reflectOnly:(BOOL)only isInProxyMode:(BOOL)mode
{
  modeCopy = mode;
  v41 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  dCopy = d;
  relayController = [(IMDTelephonyServiceSession *)self relayController];
  v13 = [relayController idsDeviceFromPushToken:tokenCopy];

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      name = [v13 name];
      v37 = 138412290;
      v38 = name;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, " Outgoing message request from %@", &v37, 0xCu);
    }
  }

  if (!v13 || only)
  {
    if (!v13)
    {
      if (IMOSLoggingEnabled())
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v37 = 138412290;
          v38 = dCopy;
          _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, " This message was likely from a local device, looking for fromID: %@", &v37, 0xCu);
        }
      }

      relayController2 = [(IMDTelephonyServiceSession *)self relayController];
      v13 = [relayController2 idsDeviceForFromID:dCopy];
    }
  }

  else
  {
    relayController3 = [(IMDTelephonyServiceSession *)self relayController];
    _localDeviceSupportsSMS = [relayController3 _localDeviceSupportsSMS];

    if (_localDeviceSupportsSMS)
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          LOWORD(v37) = 0;
          _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, " This message was destined for me to send out, I am the gatekeeper", &v37, 2u);
        }
      }

      relayController4 = [(IMDTelephonyServiceSession *)self relayController];
      if ([relayController4 isSMSRelayEnabled])
      {
      }

      else
      {
        isDefaultPairedDevice = [v13 isDefaultPairedDevice];

        if ((isDefaultPairedDevice & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      relayEnrollmentController = [(IMDTelephonyServiceSession *)self relayEnrollmentController];
      _allowedDevicesforSMSRelay = [relayEnrollmentController _allowedDevicesforSMSRelay];
      uniqueID = [v13 uniqueID];
      v24 = [_allowedDevicesforSMSRelay containsObject:uniqueID];

      v25 = IMOSLoggingEnabled();
      if (v24)
      {
        if (v25)
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            name2 = [v13 name];
            v37 = 138412290;
            v38 = name2;
            _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, " Device %@ is on the allowed list, Telling the block to continue", &v37, 0xCu);
          }
        }

        LOBYTE(modeCopy) = 1;
        goto LABEL_42;
      }

      if (v25)
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          name3 = [v13 name];
          v37 = 138412290;
          v38 = name3;
          _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, " Device %@ is on the blockList, sending back a failure", &v37, 0xCu);
        }
      }

LABEL_25:
      LOBYTE(modeCopy) = 0;
      goto LABEL_42;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v32 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = "Not Nil";
      if (!v13)
      {
        v33 = "Nil";
      }

      v34 = @"YES";
      if (!modeCopy)
      {
        v34 = @"NO";
      }

      v37 = 136315394;
      v38 = v33;
      v39 = 2112;
      v40 = v34;
      _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, " This message was not for us to gatekeep, we should reflect it only if it came from one of our devices (senderDevice %s) isInProxyMode %@", &v37, 0x16u);
    }
  }

  if (v13)
  {
    LOBYTE(modeCopy) = 1;
  }

LABEL_42:

  v35 = *MEMORY[0x277D85DE8];
  return modeCopy;
}

- (BOOL)_hasRegisteredLocalPhoneNumberForHandle:(id)handle
{
  v16 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
    registeredPhoneNumbers = [mEMORY[0x277D1A908] registeredPhoneNumbers];

    v6 = [registeredPhoneNumbers countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(registeredPhoneNumbers);
          }

          if (MEMORY[0x231897D30](handleCopy, *(*(&v11 + 1) + 8 * i)))
          {
            LOBYTE(v6) = 1;
            goto LABEL_13;
          }
        }

        v6 = [registeredPhoneNumbers countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)_phoneNumberForRegisteredSimID:(id)d
{
  dCopy = d;
  if (IMSharedHelperRetrieveSimDetailsFromTelephony() && ([MEMORY[0x277D1A908] sharedInstance], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "registeredSIMIDs"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsObject:", dCopy), v5, v4, v6))
  {
    mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
    ctSubscriptionInfo = [mEMORY[0x277D1A908] ctSubscriptionInfo];
    v9 = [ctSubscriptionInfo __im_subscriptionContextForForSimID:dCopy];

    phoneNumber = [v9 phoneNumber];
  }

  else
  {
    phoneNumber = 0;
  }

  return phoneNumber;
}

- (id)_sendingHandleForOutgoingMessageInChat:(id)chat fromIdentifier:(id)identifier
{
  chatCopy = chat;
  v7 = [(IMDTelephonyServiceSession *)self _callerIDUsingFromIdentifier:identifier];
  if (IMSharedHelperDeviceHasMultipleSubscriptions())
  {
    lastAddressedLocalHandle = [chatCopy lastAddressedLocalHandle];
    lastAddressedSIMID = [chatCopy lastAddressedSIMID];
    v10 = lastAddressedSIMID;
    if (lastAddressedLocalHandle)
    {
      if ([(IMDTelephonyServiceSession *)self _hasRegisteredLocalPhoneNumberForHandle:lastAddressedLocalHandle])
      {
        v11 = v7;
        v7 = lastAddressedLocalHandle;
LABEL_8:
      }
    }

    else if (lastAddressedSIMID)
    {
      v12 = [(IMDTelephonyServiceSession *)self _phoneNumberForRegisteredSimID:lastAddressedSIMID];
      v11 = v12;
      if (v12)
      {
        v11 = v12;

        v7 = v11;
      }

      goto LABEL_8;
    }
  }

  v13 = IMChatCanonicalIDSIDsForAddress();
  _stripFZIDPrefix = [v13 _stripFZIDPrefix];

  return _stripFZIDPrefix;
}

- (void)handler:(id)handler outgoingPlainTextMessage:(id)message toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token messageGUID:(id)d timeStamp:(id)stamp isBeingReplayed:(BOOL)self0 isInProxyMode:(BOOL)self1 storageContext:(id)self2
{
  messageCopy = message;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  tokenCopy = token;
  dCopy = d;
  stampCopy = stamp;
  contextCopy = context;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_22B59AE28;
  v31[3] = &unk_2787055B8;
  v31[4] = self;
  v32 = fromIdentifierCopy;
  modeCopy = mode;
  v33 = identifierCopy;
  v34 = messageCopy;
  replayedCopy = replayed;
  v35 = tokenCopy;
  v36 = dCopy;
  v37 = stampCopy;
  v38 = contextCopy;
  v24 = contextCopy;
  v25 = stampCopy;
  v26 = dCopy;
  v27 = tokenCopy;
  v28 = messageCopy;
  v29 = identifierCopy;
  v30 = fromIdentifierCopy;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v31 withTimeout:45.0];
}

- (void)sendUnapproveToToken:(id)token messageGUID:(id)d completion:(id)completion
{
  tokenCopy = token;
  dCopy = d;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "This device is not on the allowed list, it should not have been trying to send a relay message, sending a message back to it to tell it to not send relay messages in the future", buf, 2u);
    }
  }

  relayController = [(IMDTelephonyServiceSession *)self relayController];
  v13 = [relayController idsDeviceFromPushToken:tokenCopy];

  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{dCopy, IMDRelayMessageDictionaryGUIDKey, MEMORY[0x277CBEC38], IMDRelayAuthorizationUnauthorizedDeviceKey, 0}];
  relayController2 = [(IMDTelephonyServiceSession *)self relayController];
  enrollmentController = [relayController2 enrollmentController];
  [enrollmentController sendUnApproveToDevice:v13 extraKeys:v14];

  completionCopy[2](completionCopy);
}

- (void)handler:(id)handler outgoingDownloadMessage:(id)message toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token messageGUID:(id)d timeStamp:(id)stamp isBeingReplayed:(BOOL)self0 isInProxyMode:(BOOL)self1 storageContext:(id)self2
{
  messageCopy = message;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  tokenCopy = token;
  dCopy = d;
  stampCopy = stamp;
  contextCopy = context;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_22B59C9A4;
  v31[3] = &unk_2787055B8;
  v31[4] = self;
  v32 = messageCopy;
  v33 = fromIdentifierCopy;
  v34 = tokenCopy;
  replayedCopy = replayed;
  v35 = dCopy;
  v36 = stampCopy;
  v37 = contextCopy;
  v38 = identifierCopy;
  modeCopy = mode;
  v24 = identifierCopy;
  v25 = contextCopy;
  v26 = stampCopy;
  v27 = dCopy;
  v28 = tokenCopy;
  v29 = fromIdentifierCopy;
  v30 = messageCopy;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v31 withTimeout:240.0];
}

- (BOOL)responsibleForMessageID:(id)d
{
  dCopy = d;
  v5 = +[IMDMessageStore sharedInstance];
  v6 = [v5 messageWithGUID:dCopy];

  service = [v6 service];
  service2 = [(IMDServiceSession *)self service];
  internalName = [service2 internalName];
  v10 = [service isEqualToString:internalName];

  return v10;
}

- (void)handler:(id)handler messageIDSent:(id)sent wasInterworked:(BOOL)interworked toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier timeStamp:(id)stamp storageContext:(id)context
{
  sentCopy = sent;
  contextCopy = context;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B59E114;
  v15[3] = &unk_278705630;
  v15[4] = self;
  v16 = sentCopy;
  v17 = contextCopy;
  interworkedCopy = interworked;
  v13 = contextCopy;
  v14 = sentCopy;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v15 withTimeout:45.0];
}

- (void)handler:(id)handler messageIDRead:(id)read readByMe:(BOOL)me timeStamp:(id)stamp toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token reflectOnly:(BOOL)self0 storageContext:(id)self1
{
  handlerCopy = handler;
  readCopy = read;
  stampCopy = stamp;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  tokenCopy = token;
  contextCopy = context;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = sub_22B4D76F0;
  v38[4] = sub_22B4D78D4;
  v39 = [objc_alloc(MEMORY[0x277D19290]) initWithIdentifier:@"IncomingReadReceiptAssertion" timeout:10.0];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_22B59E50C;
  v29[3] = &unk_278705658;
  v29[4] = self;
  v23 = readCopy;
  v30 = v23;
  v24 = stampCopy;
  v31 = v24;
  v25 = contextCopy;
  v32 = v25;
  meCopy = me;
  v26 = tokenCopy;
  v33 = v26;
  onlyCopy = only;
  v27 = identifierCopy;
  v34 = v27;
  v35 = v38;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v29 withTimeout:45.0];

  _Block_object_dispose(v38, 8);
}

- (void)handler:(id)handler messageGUIDToReport:(id)report
{
  reportCopy = report;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B59E8B8;
  v7[3] = &unk_278703040;
  v7[4] = self;
  v8 = reportCopy;
  v6 = reportCopy;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v7 withTimeout:45.0];
}

- (void)handler:(id)handler messageIDSendFailure:(id)failure toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier timeStamp:(id)stamp storageContext:(id)context
{
  failureCopy = failure;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  contextCopy = context;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_22B59EB5C;
  v20[3] = &unk_278705680;
  v20[4] = self;
  v21 = failureCopy;
  v22 = fromIdentifierCopy;
  v23 = identifierCopy;
  v24 = contextCopy;
  v16 = contextCopy;
  v17 = identifierCopy;
  v18 = fromIdentifierCopy;
  v19 = failureCopy;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v20 withTimeout:45.0];
}

- (void)handler:(id)handler localFileResponse:(id)response storageContext:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  responseCopy = response;
  contextCopy = context;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      service = [(IMDServiceSession *)self service];
      internalName = [service internalName];
      v16 = 138412546;
      v17 = internalName;
      v18 = 2112;
      v19 = responseCopy;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "%@ relay received remote file response %@", &v16, 0x16u);
    }
  }

  attachmentController = [(IMDTelephonyServiceSession *)self attachmentController];
  [attachmentController remoteFileResponse:responseCopy];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handler:(id)handler localFileRequest:(id)request storageContext:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  requestCopy = request;
  contextCopy = context;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      service = [(IMDServiceSession *)self service];
      internalName = [service internalName];
      v16 = 138412546;
      v17 = internalName;
      v18 = 2112;
      v19 = requestCopy;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "%@ relay received remote file request %@", &v16, 0x16u);
    }
  }

  attachmentController = [(IMDTelephonyServiceSession *)self attachmentController];
  [attachmentController remotefileRequest:requestCopy attempts:0];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handler:(id)handler localIncommingMessage:(id)message storageContext:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  messageCopy = message;
  contextCopy = context;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      service = [(IMDServiceSession *)self service];
      internalName = [service internalName];
      v16 = 138412290;
      v17 = internalName;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "%@ relay received Local incomming Message", &v16, 0xCu);
    }
  }

  v14 = [messageCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionaryIncomingDictKey];
  [(IMDTelephonyServiceSession *)self _processReceivedDictionary:v14 storageContext:contextCopy receivedViaRelay:1 withCompletionBlock:0];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handler:(id)handler localIncomingDownloadMessage:(id)message storageContext:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  messageCopy = message;
  contextCopy = context;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      service = [(IMDServiceSession *)self service];
      internalName = [service internalName];
      v16 = 138412290;
      v17 = internalName;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "%@ relay received Local incomming download Message", &v16, 0xCu);
    }
  }

  v14 = [messageCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionaryIncomingDictKey];
  [(IMDTelephonyServiceSession *)self _processReceivedDictionary:v14 storageContext:contextCopy receivedViaRelay:1 withCompletionBlock:0];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handler:(id)handler localOutgoingDownloadMessage:(id)message isBeingReplayed:(BOOL)replayed storageContext:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  messageCopy = message;
  contextCopy = context;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      service = [(IMDServiceSession *)self service];
      internalName = [service internalName];
      *buf = 138412290;
      v21 = internalName;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "%@ relay received Local outgoing Download Message", buf, 0xCu);
    }
  }

  v16 = [messageCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionaryOutgoingDictKey];
  v17 = [messageCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionaryGUIDKey];
  BYTE1(v19) = 1;
  LOBYTE(v19) = replayed;
  [(IMDTelephonyServiceSession *)self handler:handlerCopy outgoingDownloadMessage:v16 toIdentifier:0 fromIdentifier:0 fromToken:0 messageGUID:v17 timeStamp:0 isBeingReplayed:v19 isInProxyMode:contextCopy storageContext:?];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)handler:(id)handler localOutgoingMessage:(id)message isBeingReplayed:(BOOL)replayed storageContext:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  messageCopy = message;
  contextCopy = context;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      service = [(IMDServiceSession *)self service];
      internalName = [service internalName];
      *buf = 138412290;
      v21 = internalName;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "%@ relay received Local outgoing Message", buf, 0xCu);
    }
  }

  v16 = [messageCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionaryOutgoingDictKey];
  v17 = [messageCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionaryGUIDKey];
  BYTE1(v19) = 1;
  LOBYTE(v19) = replayed;
  [(IMDTelephonyServiceSession *)self handler:0 outgoingPlainTextMessage:v16 toIdentifier:0 fromIdentifier:0 fromToken:0 messageGUID:v17 timeStamp:0 isBeingReplayed:v19 isInProxyMode:contextCopy storageContext:?];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)handler:(id)handler localMessageError:(id)error storageContext:(id)context
{
  errorCopy = error;
  contextCopy = context;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B59F71C;
  v11[3] = &unk_2787056A8;
  v11[4] = self;
  v12 = contextCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = contextCopy;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v11 withTimeout:45.0];
}

- (BOOL)_canLocallySendWithPhoneNumber:(id)number
{
  numberCopy = number;
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
    ctSubscriptionInfo = [mEMORY[0x277D1A908] ctSubscriptionInfo];
    v6 = [ctSubscriptionInfo __im_containsPhoneNumber:numberCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_chatForGroupID:(id)d originalGroupID:(id)iD
{
  v42 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v6 = +[IMDChatRegistry sharedInstance];
  service = [(IMDServiceSession *)self service];
  internalName = [service internalName];
  v33 = [v6 newestExistingChatWithOriginalGroupID:iDCopy onService:internalName];

  v9 = v33;
  if (v33)
  {
    firstObject = v33;
    goto LABEL_27;
  }

  v11 = +[IMDChatRegistry sharedInstance];
  v32 = [v11 existingChatsWithGroupID:dCopy];

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isOneChatEnabled = [mEMORY[0x277D1A9B8] isOneChatEnabled];

  if (isOneChatEnabled)
  {
    if ([v32 count] && IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Found multiple chats for a groupID, but picking the first one.", buf, 2u);
      }
    }

    firstObject = [v32 firstObject];
    mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isMissingMessagesEnabled = [mEMORY[0x277D1A9B8]2 isMissingMessagesEnabled];

    if (!isMissingMessagesEnabled || ![v32 count])
    {
      goto LABEL_26;
    }

    service2 = [(IMDServiceSession *)self service];
    internalName2 = [service2 internalName];
    v19 = IMChatLookupDomainForServiceName();

    if (iDCopy && ([iDCopy isEqualToString:dCopy] & 1) == 0)
    {
      domainIdentifiers = [firstObject domainIdentifiers];
      v21 = [domainIdentifiers objectForKeyedSubscript:v19];
      if ([v21 containsObject:iDCopy])
      {
      }

      else
      {
        v31 = [(IMDServiceSession *)self allowedToOverwriteOriginalGroupIDForChat:firstObject];

        if (v31)
        {
          [firstObject assignIdentifier:iDCopy forDomain:v19 isHistoricalIdentifier:0];
        }
      }
    }
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v19 = v32;
    firstObject = [v19 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (firstObject)
    {
      v22 = *v37;
      while (2)
      {
        for (i = 0; i != firstObject; i = i + 1)
        {
          if (*v37 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v36 + 1) + 8 * i);
          serviceName = [v24 serviceName];
          service3 = [(IMDServiceSession *)self service];
          internalName3 = [service3 internalName];
          v28 = [serviceName isEqualToString:internalName3];

          if (v28)
          {
            firstObject = v24;
            goto LABEL_25;
          }
        }

        firstObject = [v19 countByEnumeratingWithState:&v36 objects:v41 count:16];
        if (firstObject)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_25:

LABEL_26:
  v9 = 0;
LABEL_27:

  v29 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (void)handler:(id)handler incomingGroupMutationMessage:(id)message timeStamp:(id)stamp storageContext:(id)context fromToken:(id)token fromID:(id)d isInProxyMode:(BOOL)mode
{
  messageCopy = message;
  tokenCopy = token;
  dCopy = d;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_22B59FD84;
  v18[3] = &unk_278705720;
  v18[4] = self;
  v19 = tokenCopy;
  modeCopy = mode;
  v20 = dCopy;
  v21 = messageCopy;
  v15 = messageCopy;
  v16 = dCopy;
  v17 = tokenCopy;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v18 withTimeout:45.0];
}

- (void)handler:(id)handler receivedPriorityMessageCommand:(id)command fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier fromToken:(id)token
{
  commandCopy = command;
  identifierCopy = identifier;
  toIdentifierCopy = toIdentifier;
  tokenCopy = token;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22B5A085C;
  v19[3] = &unk_278705680;
  v19[4] = self;
  v20 = toIdentifierCopy;
  v21 = identifierCopy;
  v22 = tokenCopy;
  v23 = commandCopy;
  v15 = commandCopy;
  v16 = tokenCopy;
  v17 = identifierCopy;
  v18 = toIdentifierCopy;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v19 withTimeout:45.0];
}

- (BOOL)_sosReplicationDisabledByServerBag
{
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"disable-sos-replication"];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v3 BOOLValue])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "SOS replication disabled by server bag", v7, 2u);
      }
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)_periodicReplicationTimeInterval
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"forced-replication-interval"];
  v4 = 14400.0;
  if (objc_opt_respondsToSelector())
  {
    [v3 doubleValue];
    if (v5 != 0.0)
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          [v3 doubleValue];
          v11 = 134217984;
          v12 = v7;
          _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Server bag value for periodic replication interval: %f", &v11, 0xCu);
        }
      }

      [v3 doubleValue];
      v4 = v8;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)_shouldForceReplicationForStaleChatWithLastKnownReplicationDate:(id)date
{
  v23 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  [(IMDTelephonyServiceSession *)self _periodicReplicationTimeInterval];
  v6 = v5;
  if (v5 <= 0.00000011920929)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Periodic forced replication interval is less than or equal to zero, disabling", &v17, 2u);
      }
    }

    v10 = 0;
  }

  else if (dateCopy)
  {
    v7 = [MEMORY[0x277CBEAA8] now];
    [v7 timeIntervalSinceDate:dateCopy];
    v9 = v8;

    v10 = v9 > v6;
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = @"NO";
        v17 = 138412802;
        if (v9 > v6)
        {
          v12 = @"YES";
        }

        v18 = v12;
        v19 = 2048;
        v20 = v9;
        v21 = 2048;
        v22 = v6;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Should force replication: %@ (time since last: %f, interval: %f)", &v17, 0x20u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "No last known replication date, forcing replication", &v17, 2u);
      }
    }

    v10 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)_replicationDisabledByServerBag
{
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"disable-hybrid-groups"];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v3 BOOLValue])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Hybrid groups disabled by server bag", v7, 2u);
      }
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)acceptsIncomingReplicatedMessagesFromAccount:(id)account toIdentifier:(id)identifier isSOS:(BOOL)s
{
  sCopy = s;
  v22 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  identifierCopy = identifier;
  if (!sCopy || [(IMDTelephonyServiceSession *)self _sosReplicationDisabledByServerBag])
  {
    if (![(IMDTelephonyServiceSession *)self _replicationDisabledByServerBag])
    {
      if (identifierCopy && ([identifierCopy _appearsToBePhoneNumber] & 1) != 0)
      {
        v10 = [(IMDTelephonyServiceSession *)self replicationRequirementsSatisfiedForPhoneNumber:identifierCopy simID:0];
        goto LABEL_17;
      }

      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          account = [(IMDServiceSession *)self account];
          v16 = 138412802;
          v17 = accountCopy;
          v18 = 2112;
          v19 = account;
          v20 = 2112;
          v21 = identifierCopy;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Cannot receive replication provided by %@ to %@, not a phone number %@", &v16, 0x20u);
        }
      }
    }

    v10 = 0;
    goto LABEL_17;
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = 138412546;
      v17 = accountCopy;
      v18 = 2112;
      v19 = identifierCopy;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Allowing incoming replicated SOS message from %@ to %@", &v16, 0x16u);
    }
  }

  v10 = 1;
LABEL_17:

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)replicationPhoneNumbers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  relayController = [(IMDTelephonyServiceSession *)self relayController];
  dominentPhoneNumberAlias = [relayController dominentPhoneNumberAlias];

  if (dominentPhoneNumberAlias)
  {
    v6 = IMChatCanonicalIDSIDsForAddress();
    _stripFZIDPrefix = [v6 _stripFZIDPrefix];

    [v3 addObject:_stripFZIDPrefix];
  }

  v8 = [v3 copy];

  return v8;
}

- (id)outgoingReplicationCallerIDForChat:(id)chat
{
  chatCopy = chat;
  chatIdentifier = [chatCopy chatIdentifier];
  v6 = -[IMDTelephonyServiceSession _callerIDForChatWithChatIdentifier:chatStyle:foundChat:](self, "_callerIDForChatWithChatIdentifier:chatStyle:foundChat:", chatIdentifier, [chatCopy style], chatCopy);

  return v6;
}

- (id)preferredAccountForReplicationOnService:(id)service eligibleAccounts:(id)accounts
{
  v61 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountsCopy = accounts;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v55 = serviceCopy;
      v56 = 2112;
      v57 = accountsCopy;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Choosing preferred replication account for %@ from %@", buf, 0x16u);
    }
  }

  replicationPhoneNumbers = [(IMDTelephonyServiceSession *)self replicationPhoneNumbers];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v9 = accountsCopy;
  v10 = [v9 countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (v10)
  {
    v11 = *v49;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v49 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v48 + 1) + 8 * i);
        loginID = [v13 loginID];
        v15 = MEMORY[0x231897A70]();

        v16 = IMChatCanonicalIDSIDsForAddress();
        _stripFZIDPrefix = [v16 _stripFZIDPrefix];

        if ([replicationPhoneNumbers containsObject:_stripFZIDPrefix])
        {
          if (IMOSLoggingEnabled())
          {
            v31 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              *buf = 138412802;
              v55 = v13;
              v56 = 2112;
              v57 = v15;
              v58 = 2112;
              v59 = _stripFZIDPrefix;
              _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Preferring account %@ for replication based on loginID %@ canonicalLoginID %@", buf, 0x20u);
            }
          }

          v30 = v13;

          goto LABEL_43;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v48 objects:v60 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v9;
  v37 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v37)
  {
    v18 = *v45;
    v35 = *v45;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v45 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v44 + 1) + 8 * j);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v36 = v20;
        aliases = [v20 aliases];
        v22 = [aliases countByEnumeratingWithState:&v40 objects:v52 count:16];
        if (v22)
        {
          v23 = *v41;
          while (2)
          {
            for (k = 0; k != v22; ++k)
            {
              if (*v41 != v23)
              {
                objc_enumerationMutation(aliases);
              }

              v25 = *(*(&v40 + 1) + 8 * k);
              v26 = IMChatCanonicalIDSIDsForAddress();
              _stripFZIDPrefix2 = [v26 _stripFZIDPrefix];

              if ([replicationPhoneNumbers containsObject:_stripFZIDPrefix2])
              {
                if (IMOSLoggingEnabled())
                {
                  v32 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412546;
                    v55 = v36;
                    v56 = 2112;
                    v57 = v25;
                    _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Preferring account %@ for replication based on alias %@", buf, 0x16u);
                  }
                }

                v30 = v36;

                goto LABEL_43;
              }
            }

            v22 = [aliases countByEnumeratingWithState:&v40 objects:v52 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }

        v18 = v35;
      }

      v37 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
      v18 = v35;
    }

    while (v37);
  }

  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      allObjects = [replicationPhoneNumbers allObjects];
      *buf = 138412290;
      v55 = allObjects;
      _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Failed to find matching replication account with possible numbers %@", buf, 0xCu);
    }
  }

  v30 = 0;
LABEL_43:

  v33 = *MEMORY[0x277D85DE8];

  return v30;
}

- (BOOL)_shouldReplicateMessageItem:(id)item chatStyle:(unsigned __int8)style lastKnownReplicationDate:(id)date callerID:(id)d
{
  styleCopy = style;
  itemCopy = item;
  dateCopy = date;
  dCopy = d;
  if ([itemCopy isSOS])
  {
    _sosReplicationDisabledByServerBag = [(IMDTelephonyServiceSession *)self _sosReplicationDisabledByServerBag];
  }

  else
  {
    if (styleCopy != 43 || ![(IMDTelephonyServiceSession *)self replicationRequiredForFeaturesUsedByMessageItem:itemCopy]&& ![(IMDTelephonyServiceSession *)self _shouldForceReplicationForStaleChatWithLastKnownReplicationDate:dateCopy]|| ![(IMDTelephonyServiceSession *)self replicationRequirementsSatisfiedForPhoneNumber:dCopy simID:0])
    {
      v14 = 0;
      goto LABEL_10;
    }

    _sosReplicationDisabledByServerBag = [(IMDTelephonyServiceSession *)self _replicationDisabledByServerBag];
  }

  v14 = !_sosReplicationDisabledByServerBag;
LABEL_10:

  return v14;
}

- (id)_replicatedMessageGUIDToReleaseFromMessageDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:IMDRelayMessageDictionaryAttemptedOutgoingReplicationKey];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 BOOLValue] && (objc_msgSend(dictionaryCopy, "objectForKeyedSubscript:", IMDRelayMessageItemDictionary), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v5 objectForKeyedSubscript:IMDRelayMessageItemDictionaryGUIDKey];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_deferredReplicatedMessageReleaseWithAllowedMessage:(id)message outgoingProxyBlock:(id)block
{
  v18 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  blockCopy = block;
  v8 = [(IMDTelephonyServiceSession *)self _replicatedMessageGUIDToReleaseFromMessageDictionary:messageCopy];
  if ([v8 length])
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v17 = v8;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Delaying release of replicated message %@", buf, 0xCu);
      }
    }

    v10 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B667B7C;
    block[3] = &unk_2787037B8;
    v13 = v8;
    selfCopy = self;
    v15 = blockCopy;
    dispatch_after(v10, MEMORY[0x277D85CD0], block);
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 1);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sendGroupPhotoUpdate:(id)update toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account
{
  if (style == 43)
  {
    accountCopy = account;
    identifierCopy = identifier;
    dCopy = d;
    updateCopy = update;
    replicationProxy = [(IMDServiceSession *)self replicationProxy];
    [replicationProxy sendGroupPhotoUpdate:updateCopy toChatID:dCopy identifier:identifierCopy style:43 account:accountCopy];
  }
}

- (void)relayDisplayNameChange:(id)change forChat:(id)chat fromID:(id)d messageID:(id)iD didOccurLocally:(BOOL)locally
{
  locallyCopy = locally;
  chatCopy = chat;
  iDCopy = iD;
  dCopy = d;
  changeCopy = change;
  groupID = [chatCopy groupID];
  originalGroupID = [chatCopy originalGroupID];
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isMissingMessagesEnabled = [mEMORY[0x277D1A9B8] isMissingMessagesEnabled];

  if (isMissingMessagesEnabled)
  {
    service = [(IMDServiceSession *)self service];
    internalName = [service internalName];
    v20 = IMChatLookupDomainForServiceName();

    if (v20)
    {
      v21 = [chatCopy latestIdentifierForDomain:v20];
      v22 = v21;
      if (v21)
      {
        v23 = v21;

        originalGroupID = v23;
      }

      else
      {
        v24 = IMLogHandleForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D8688(v20, v24);
        }
      }
    }
  }

  v25 = [IMDRelayGroupDisplayNameMutationMessage alloc];
  service2 = [(IMDServiceSession *)self service];
  internalName2 = [service2 internalName];
  v28 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:iDCopy];

  LOWORD(v31) = 256;
  v29 = [(IMDRelayGroupDisplayNameMutationMessage *)v25 initWithName:changeCopy sender:0 service:internalName2 groupID:groupID originalGroupID:originalGroupID guid:v28 destinationCallerID:dCopy failed:v31 fromMe:?];

  relayController = [(IMDTelephonyServiceSession *)self relayController];
  [relayController reflectGroupMutation:v29 callerID:dCopy didOccurLocally:locallyCopy];
}

- (BOOL)replicationRequiredForFeaturesUsedByMessageItem:(id)item
{
  v26 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if ([itemCopy isSOS])
  {
    goto LABEL_17;
  }

  associatedMessageGUID = [itemCopy associatedMessageGUID];
  v6 = [associatedMessageGUID length];

  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        guid = [itemCopy guid];
        v24 = 138412290;
        v25 = guid;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Allowing replication for %@, has associated message GUID", &v24, 0xCu);
      }

LABEL_16:

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  expressiveSendStyleID = [itemCopy expressiveSendStyleID];
  v10 = [expressiveSendStyleID length];

  if (!v10)
  {
    balloonBundleID = [itemCopy balloonBundleID];
    v13 = [balloonBundleID length];

    if (v13)
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          guid2 = [itemCopy guid];
          v24 = 138412290;
          v25 = guid2;
          _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Allowing replication for %@, has balloon bundle ID", &v24, 0xCu);
        }

        goto LABEL_16;
      }

      goto LABEL_17;
    }

    messageSummaryInfo = [itemCopy messageSummaryInfo];
    v19 = [messageSummaryInfo objectForKeyedSubscript:*MEMORY[0x277D1A058]];

    if ([v19 length])
    {
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          guid3 = [itemCopy guid];
          v24 = 138412290;
          v25 = guid3;
          _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Allowing replication for %@, has translated message parts", &v24, 0xCu);
        }

LABEL_28:
      }
    }

    else
    {
      body = [itemCopy body];
      v15 = [(IMDTelephonyServiceSession *)self _replicationRequiredForFeaturesUsedByMessageBody:body];

      if (!v15)
      {
LABEL_30:

        goto LABEL_18;
      }

      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          guid4 = [itemCopy guid];
          v24 = 138412290;
          v25 = guid4;
          _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Allowing replication for %@, has non-plaintext or unknown attributes", &v24, 0xCu);
        }

        goto LABEL_28;
      }
    }

    LOBYTE(v15) = 1;
    goto LABEL_30;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      guid5 = [itemCopy guid];
      v24 = 138412290;
      v25 = guid5;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Allowing replication for %@, has expressive send", &v24, 0xCu);
    }

    goto LABEL_16;
  }

LABEL_17:
  LOBYTE(v15) = 1;
LABEL_18:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)_replicationRequiredForFeaturesUsedByMessageBody:(id)body
{
  bodyCopy = body;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v5 = [bodyCopy length];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B669244;
  v7[3] = &unk_278707438;
  v7[5] = v8;
  v7[6] = &v9;
  v7[4] = self;
  [bodyCopy enumerateAttributesInRange:0 options:v5 usingBlock:{0, v7}];
  LOBYTE(self) = *(v10 + 24);
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v9, 8);

  return self;
}

- (BOOL)reflectPriorityMessageToPeerDevicesForMessageGUIDs:(id)ds
{
  dsCopy = ds;
  relayController = [(IMDTelephonyServiceSession *)self relayController];
  v6 = [relayController reflectPriorityMessageToPeerDevicesForMessageGUIDs:dsCopy];

  return v6;
}

- (void)_processReceivedDictionaryInBlastDoor:(id)door storageContext:(id)context receivedViaRelay:(BOOL)relay withCompletionBlock:(id)block
{
  doorCopy = door;
  contextCopy = context;
  blockCopy = block;
  v13 = [doorCopy objectForKeyedSubscript:IMDCTMessageDictionaryGUIDKey];
  if ([v13 length])
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-relay.smsdata", v13];
    [MEMORY[0x277D1AA18] writeMessagePayloadToDisk:doorCopy fileName:v14];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22B6C1DAC;
  v19[3] = &unk_278708298;
  v20 = v13;
  selfCopy = self;
  v22 = doorCopy;
  v23 = contextCopy;
  relayCopy = relay;
  v24 = blockCopy;
  v15 = blockCopy;
  v16 = contextCopy;
  v17 = doorCopy;
  v18 = v13;
  [IMBlastdoor sendSMSDictionary:v17 withCompletionBlock:v19];
}

- (void)_releasePendingMessagesAndProcessReceivedSMSMessage:(id)message storageContext:(id)context receivedViaRelay:(BOOL)relay serviceName:(id)name completionBlock:(id)block
{
  messageCopy = message;
  contextCopy = context;
  nameCopy = name;
  blockCopy = block;
  v16 = +[IMPendingReplicatedMessageCache sharedCache];
  gUID = [messageCopy GUID];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_22B6C2398;
  v22[3] = &unk_2787082C0;
  v22[4] = self;
  v23 = messageCopy;
  relayCopy = relay;
  v24 = contextCopy;
  v25 = nameCopy;
  v26 = blockCopy;
  v18 = blockCopy;
  v19 = nameCopy;
  v20 = contextCopy;
  v21 = messageCopy;
  [v16 releasePendingMessageWithGUID:gUID serviceName:v19 chat:0 completion:v22];
}

- (void)_generatePreviewForTransfer:(id)transfer message:(id)message
{
  messageCopy = message;
  transferCopy = transfer;
  v7 = IMDTelephonyServiceLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Generating preview for attachment part", v13, 2u);
  }

  isFromMe = [messageCopy isFromMe];
  v9 = MEMORY[0x277D1AB80];
  service = [messageCopy service];
  if (isFromMe)
  {
    [v9 fromMeContextWithServiceName:service];
  }

  else
  {
    [v9 untrustedContextWithServiceName:service];
  }
  v11 = ;

  v12 = +[IMDFileTransferCenter sharedInstance];
  [v12 generatePreviewForTransfer:transferCopy messageItem:messageCopy senderContext:v11];
}

- (id)_countryCodeForIncomingTextMessage:(id)message
{
  messageCopy = message;
  countryCode = [messageCopy countryCode];

  if (countryCode)
  {
    countryCode2 = [messageCopy countryCode];
    goto LABEL_11;
  }

  originatedDeviceSIM = [messageCopy originatedDeviceSIM];
  if (originatedDeviceSIM)
  {
  }

  else
  {
    originatedDeviceNumber = [messageCopy originatedDeviceNumber];

    if (!originatedDeviceNumber)
    {
LABEL_7:
      mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
      [mEMORY[0x277D1AAA8] forceAutoBugCaptureWithSubType:@"Missing Destination Information" errorPayload:0 type:@"DSDS Privacy Violation" context:@"Selected a default country code instead of being aware of the number a message was received on."];

      v13 = IMCountryCodeForIncomingTextMessage();
      v14 = v13;
      v15 = @"us";
      if (v13)
      {
        v15 = v13;
      }

      v11 = v15;

      goto LABEL_10;
    }
  }

  v8 = MEMORY[0x277D1A8F8];
  originatedDeviceNumber2 = [messageCopy originatedDeviceNumber];
  originatedDeviceSIM2 = [messageCopy originatedDeviceSIM];
  v11 = [v8 IMCountryCodeForPhoneNumber:originatedDeviceNumber2 simID:originatedDeviceSIM2];

  if (!v11)
  {
    goto LABEL_7;
  }

LABEL_10:
  countryCode2 = v11;

LABEL_11:

  return countryCode2;
}

- (BOOL)incomingMessageHasTooManyRecipients:(id)recipients
{
  v23 = *MEMORY[0x277D85DE8];
  recipientsCopy = recipients;
  originatedDeviceSIM = [recipientsCopy originatedDeviceSIM];
  originatedDeviceNumber = [recipientsCopy originatedDeviceNumber];
  v7 = [(IMDTelephonyServiceSession *)self maxRecipientsForPhoneNumber:originatedDeviceNumber simID:originatedDeviceSIM];
  unsignedIntegerValue = v7;
  if (v7 == 0x7FFFFFFF || !v7)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v19 = 134217984;
        v20 = unsignedIntegerValue;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Carrier bundle value for maxReceipients was 0 or INT_MAX (%llu), falling back to iMessage maximum", &v19, 0xCu);
      }
    }

    v10 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
    v11 = [v10 objectForKey:@"md-max-chat-participants-incoming"];

    if (v11)
    {
      unsignedIntegerValue = [v11 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 120;
    }
  }

  recipients = [recipientsCopy recipients];
  v13 = [recipients count];

  if (v13 > unsignedIntegerValue && IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      recipients2 = [recipientsCopy recipients];
      v16 = [recipients2 count];
      v19 = 134218240;
      v20 = v16;
      v21 = 2048;
      v22 = unsignedIntegerValue;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Filtering message due to excessive recipient count: %llu maxRecipients: %llu", &v19, 0x16u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v13 > unsignedIntegerValue;
}

- (void)_processReceivedSMSMessage:(id)message storageContext:(id)context receivedViaRelay:(BOOL)relay serviceName:(id)name completionBlock:(id)block
{
  relayCopy = relay;
  v617 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  contextCopy = context;
  nameCopy = name;
  blockCopy = block;
  v11 = objc_alloc_init(IMDTelephonyIncomingMessageContext);
  if ([messageCopy has_sendEnabled])
  {
    sendEnabled = [messageCopy sendEnabled];
  }

  else
  {
    sendEnabled = 1;
  }

  v527 = v11;
  [(IMDTelephonyIncomingMessageContext *)v11 setIsSendEnabled:sendEnabled];
  v526 = messageCopy;
  originatedDeviceNumber = [messageCopy originatedDeviceNumber];
  [(IMDTelephonyIncomingMessageContext *)v527 setMyNumberString:originatedDeviceNumber];

  originatedDeviceSIM = [messageCopy originatedDeviceSIM];
  [(IMDTelephonyIncomingMessageContext *)v527 setMySIMIDString:originatedDeviceSIM];

  sender = [messageCopy sender];
  [(IMDTelephonyIncomingMessageContext *)v527 setSender:sender];

  sender2 = [messageCopy sender];
  [(IMDTelephonyIncomingMessageContext *)v527 setSenderUnformatted:sender2];

  v17 = [(IMDTelephonyServiceSession *)self _countryCodeForIncomingTextMessage:messageCopy];
  [(IMDTelephonyIncomingMessageContext *)v527 setCountryCode:v17];

  -[IMDTelephonyIncomingMessageContext setCapability:](v527, "setCapability:", [messageCopy iMessageCapability]);
  [(IMDTelephonyIncomingMessageContext *)v527 setWasRelayed:relayCopy];
  service = [(IMDServiceSession *)self service];
  v19 = [service supportsCapability:*MEMORY[0x277D1A560]];

  if (v19)
  {
    displayName = [messageCopy displayName];
    [(IMDTelephonyIncomingMessageContext *)v527 setDisplayName:displayName];
  }

  service2 = [(IMDServiceSession *)self service];
  v22 = [service2 supportsCapability:*MEMORY[0x277D1A558]];

  if (v22)
  {
    groupID = [messageCopy groupID];
    [(IMDTelephonyIncomingMessageContext *)v527 setGroupID:groupID];

    originalGroupID = [messageCopy originalGroupID];
    [(IMDTelephonyIncomingMessageContext *)v527 setOriginalGroupID:originalGroupID];
  }

  version = [messageCopy version];
  sender3 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
  v26 = sender3 | version;

  if (v26)
  {
    mEMORY[0x277D1AA78] = [MEMORY[0x277D1AA78] sharedInstance];
    [mEMORY[0x277D1AA78] acquireAssertionToUnsuspendProcess];

    trackMessage = [messageCopy trackMessage];
    gUID = [messageCopy GUID];
    v31 = gUID;
    if (![gUID length])
    {
      v31 = StringGUID();
    }

    if (v31)
    {
      v32 = trackMessage;
    }

    else
    {
      v32 = 0;
    }

    if (v32 == 1)
    {
      v33 = +[IMMessagesToTrack sharedInstance];
      [v33 addMessagesID:v31];
    }

    v498 = v31;
    v34 = IMOSLoggingEnabled();
    v35 = v527;
    if (v34)
    {
      v36 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        sender4 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
        items = [messageCopy items];
        v39 = [items count];
        type = [messageCopy type];
        countryCode = [messageCopy countryCode];
        serviceCenter = [v526 serviceCenter];
        countryCode2 = [(IMDTelephonyIncomingMessageContext *)v527 countryCode];
        displayName2 = [(IMDTelephonyIncomingMessageContext *)v527 displayName];
        *buf = 138413826;
        *&buf[4] = sender4;
        *&buf[12] = 2048;
        *&buf[14] = v39;
        *&buf[22] = 2048;
        v611 = type;
        *v612 = 2112;
        *&v612[2] = countryCode;
        *&v612[10] = 2112;
        *&v612[12] = serviceCenter;
        v613 = 2112;
        v614 = countryCode2;
        v615 = 2112;
        v616 = displayName2;
        _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "received message with sender: %@, %lu parts, type: %ld  msgCountryCode: %@ service center: %@  incoming code: %@ displayName: %@", buf, 0x48u);
      }

      v35 = v527;
    }

    sender5 = [(IMDTelephonyIncomingMessageContext *)v35 sender];
    v46 = [sender5 length] == 0;

    if (v46)
    {
      v47 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v48 = [v47 localizedStringForKey:@"Unknown" value:&stru_283F23018 table:@"SMSLocalizable"];
      [(IMDTelephonyIncomingMessageContext *)v527 setSender:v48];

      sender6 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
      [(IMDTelephonyIncomingMessageContext *)v527 setSenderUnformatted:sender6];
    }

    sender7 = [(IMDTelephonyIncomingMessageContext *)v527 sender];

    if (sender7)
    {
      sender8 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
      _appearsToBePhoneNumber = [sender8 _appearsToBePhoneNumber];

      sender9 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
      v54 = sender9;
      if (_appearsToBePhoneNumber)
      {
        countryCode3 = [(IMDTelephonyIncomingMessageContext *)v527 countryCode];
        v56 = IMPhoneNumberRefCopyForPhoneNumber();

        v57 = IMNormalizedPhoneNumberForCFPhoneNumberRef();
        v58 = IMDTelephonyServiceLogHandle();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          sender10 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
          *buf = 138412546;
          *&buf[4] = v56;
          *&buf[12] = 2112;
          *&buf[14] = sender10;
          _os_log_impl(&dword_22B4CC000, v58, OS_LOG_TYPE_DEFAULT, "Created number ref: %@  for ID: %@", buf, 0x16u);
        }

        v60 = IMDTelephonyServiceLogHandle();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          countryCode4 = [(IMDTelephonyIncomingMessageContext *)v527 countryCode];
          *buf = 138412290;
          *&buf[4] = countryCode4;
          _os_log_impl(&dword_22B4CC000, v60, OS_LOG_TYPE_DEFAULT, "    => Country code: %@", buf, 0xCu);
        }

        v62 = IMDTelephonyServiceLogHandle();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v57;
          _os_log_impl(&dword_22B4CC000, v62, OS_LOG_TYPE_DEFAULT, "      => Normalized: %@", buf, 0xCu);
        }

        if (v56)
        {
          CFRelease(v56);
        }

        v63 = [v57 length];
      }

      else
      {
        _appearsToBeEmail = [sender9 _appearsToBeEmail];

        if (!_appearsToBeEmail)
        {
          goto LABEL_44;
        }

        sender11 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
        v57 = IMNormalizeFormattedString();

        v63 = [v57 length];
      }

      if (v63)
      {
        [(IMDTelephonyIncomingMessageContext *)v527 setSender:v57];
      }
    }

LABEL_44:
    displayName3 = [(IMDTelephonyIncomingMessageContext *)v527 displayName];
    if (!displayName3)
    {
      displayName3 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
      if (([displayName3 __im_isChatBotPatterned] & 1) == 0)
      {
        if (IMShouldHandleInternalPhishingAttempts())
        {
          sender12 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
          if (IMStringIsEmail())
          {
            sender13 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
            v609 = sender13;
            v69 = [MEMORY[0x277CBEA60] arrayWithObjects:&v609 count:1];
            if (IMDAreAllAliasesUnknown())
            {
              v70 = *MEMORY[0x277D1A4F8];
              v71 = IMGetDomainBoolForKey();

              if ((v71 & 1) == 0)
              {
                v72 = IMDTelephonyServiceLogHandle();
                if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                {
                  sender14 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
                  *buf = 138412290;
                  *&buf[4] = sender14;
                  _os_log_impl(&dword_22B4CC000, v72, OS_LOG_TYPE_DEFAULT, "*** Blocking likely phishing SMS message from sender: %@", buf, 0xCu);
                }

                if (!blockCopy)
                {
                  goto LABEL_547;
                }

                goto LABEL_79;
              }

LABEL_57:
              sender15 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
              _stripFZIDPrefix = [sender15 _stripFZIDPrefix];
              v76 = IMPhoneNumberRefCopyForPhoneNumber();
              if (v76)
              {
                v77 = CMFItemCreateWithPhoneNumber();
                IsItemBlocked = CMFBlockListIsItemBlocked();
                CFRelease(v76);
                if (v77)
                {
                  CFRelease(v77);
                  if (IsItemBlocked)
                  {
LABEL_60:
                    v79 = 1;
LABEL_64:
                    if (IMOSLoggingEnabled())
                    {
                      v81 = OSLogHandleForIMFoundationCategory();
                      if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
                      {
                        v82 = @"NO";
                        if (v79)
                        {
                          v82 = @"YES";
                        }

                        *buf = 138412546;
                        *&buf[4] = sender15;
                        *&buf[12] = 2112;
                        *&buf[14] = v82;
                        _os_log_impl(&dword_22B4CC000, v81, OS_LOG_TYPE_INFO, "filtering message for handle: %@ = %@", buf, 0x16u);
                      }
                    }

                    if (v79)
                    {
                      v83 = IMDTelephonyServiceLogHandle();
                      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                      {
                        sender16 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
                        *buf = 138412290;
                        *&buf[4] = sender16;
                        _os_log_impl(&dword_22B4CC000, v83, OS_LOG_TYPE_DEFAULT, "*** Blocking message from sender: %@", buf, 0xCu);
                      }

                      if (!blockCopy)
                      {
                        goto LABEL_547;
                      }

                      goto LABEL_79;
                    }

                    if ([(IMDTelephonyServiceSession *)self incomingMessageHasTooManyRecipients:v526])
                    {
                      v85 = IMDTelephonyServiceLogHandle();
                      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
                      {
                        sender17 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
                        *buf = 138412290;
                        *&buf[4] = sender17;
                        _os_log_impl(&dword_22B4CC000, v85, OS_LOG_TYPE_DEFAULT, "*** Blocking message with too many participants from sender: %@", buf, 0xCu);
                      }

                      if (!blockCopy)
                      {
                        goto LABEL_547;
                      }

LABEL_79:
                      (*(blockCopy + 2))(blockCopy, 0, v498, 0);
LABEL_547:

                      goto LABEL_548;
                    }

                    if ([v526 type])
                    {
                      replaceMessage = 0;
                    }

                    else
                    {
                      replaceMessage = [v526 replaceMessage];
                    }

                    v87 = objc_alloc(MEMORY[0x277CBEB38]);
                    items2 = [v526 items];
                    v528 = [v87 initWithCapacity:{objc_msgSend(items2, "count")}];

                    v89 = objc_alloc(MEMORY[0x277CBEB38]);
                    items3 = [v526 items];
                    v533 = [v89 initWithCapacity:{objc_msgSend(items3, "count")}];

                    v91 = objc_alloc(MEMORY[0x277CBEB38]);
                    items4 = [v526 items];
                    v493 = [v91 initWithCapacity:{objc_msgSend(items4, "count")}];

                    v93 = objc_alloc(MEMORY[0x277CBEB18]);
                    items5 = [v526 items];
                    v529 = [v93 initWithCapacity:{objc_msgSend(items5, "count")}];

                    v491 = objc_alloc_init(MEMORY[0x277CCAB68]);
                    v492 = objc_alloc_init(MEMORY[0x277CBEB18]);
                    v594 = 0u;
                    v593 = 0u;
                    v592 = 0u;
                    v591 = 0u;
                    obj = [v526 items];
                    v497 = [obj countByEnumeratingWithState:&v591 objects:v608 count:16];
                    if (!v497)
                    {
                      v494 = 0;
                      goto LABEL_281;
                    }

                    v494 = 0;
                    v496 = *v592;
                    v487 = *MEMORY[0x277D19730];
                    v490 = *MEMORY[0x277D1A4E0];
                    v489 = *MEMORY[0x277D19998];
                    while (1)
                    {
                      v95 = 0;
                      do
                      {
                        if (*v592 != v496)
                        {
                          v96 = v95;
                          objc_enumerationMutation(obj);
                          v95 = v96;
                        }

                        v499 = v95;
                        v97 = *(*(&v591 + 1) + 8 * v95);
                        v98 = IMDTelephonyServiceLogHandle();
                        if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_22B4CC000, v98, OS_LOG_TYPE_DEFAULT, "  Part:", buf, 2u);
                        }

                        v99 = IMDTelephonyServiceLogHandle();
                        if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
                        {
                          contentType = [v97 contentType];
                          *buf = 138412290;
                          *&buf[4] = contentType;
                          _os_log_impl(&dword_22B4CC000, v99, OS_LOG_TYPE_DEFAULT, "      content type: %@", buf, 0xCu);
                        }

                        v101 = IMDTelephonyServiceLogHandle();
                        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
                        {
                          contentId = [v97 contentId];
                          *buf = 138412290;
                          *&buf[4] = contentId;
                          _os_log_impl(&dword_22B4CC000, v101, OS_LOG_TYPE_DEFAULT, "        content ID: %@", buf, 0xCu);
                        }

                        v103 = IMDTelephonyServiceLogHandle();
                        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                        {
                          contentLocation = [v97 contentLocation];
                          *buf = 138412290;
                          *&buf[4] = contentLocation;
                          _os_log_impl(&dword_22B4CC000, v103, OS_LOG_TYPE_DEFAULT, "  content location: %@", buf, 0xCu);
                        }

                        contentId2 = [v97 contentId];
                        v504 = SMSCopySanitizedContentID(contentId2);

                        contentLocation2 = [v97 contentLocation];
                        v506 = SMSCopySanitizedContentLocation(contentLocation2);

                        v107 = IMDTelephonyServiceLogHandle();
                        if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412546;
                          *&buf[4] = v504;
                          *&buf[12] = 2112;
                          *&buf[14] = v506;
                          _os_log_impl(&dword_22B4CC000, v107, OS_LOG_TYPE_DEFAULT, "Sanitized ID %@  sanitized loc %@", buf, 0x16u);
                        }

                        content = [v97 content];
                        type2 = [content type];

                        if (type2 <= 1)
                        {
                          if (type2)
                          {
                            if (type2 == 1)
                            {
                              content2 = [v97 content];
                              smil = [content2 smil];
                              oslog = [smil contentBody];

                              v126 = IMDTelephonyServiceLogHandle();
                              if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 0;
                                _os_log_impl(&dword_22B4CC000, v126, OS_LOG_TYPE_DEFAULT, "  * This is a SMIL part", buf, 2u);
                              }

                              v127 = IMDTelephonyServiceLogHandle();
                              if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
                              {
                                v128 = MarcoLoggingStringForMessageData();
                                *buf = 138412290;
                                *&buf[4] = v128;
                                _os_log_impl(&dword_22B4CC000, v127, OS_LOG_TYPE_DEFAULT, "  * Out body: %@", buf, 0xCu);
                              }

                              if (!-[NSObject length](oslog, "length") || (-[NSObject string](oslog, "string"), v129 = objc_claimAutoreleasedReturnValue(), [v129 trimmedString], v130 = objc_claimAutoreleasedReturnValue(), v131 = objc_msgSend(v130, "length") == 0, v130, v129, v131))
                              {
                                v170 = IMDTelephonyServiceLogHandle();
                                if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
                                {
                                  *buf = 0;
                                  _os_log_impl(&dword_22B4CC000, v170, OS_LOG_TYPE_DEFAULT, "  => Empty", buf, 2u);
                                }
                              }

                              else
                              {
                                v132 = IMDTelephonyServiceLogHandle();
                                if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
                                {
                                  v133 = MarcoLoggingStringForMessageData();
                                  *buf = 138412290;
                                  *&buf[4] = v133;
                                  _os_log_impl(&dword_22B4CC000, v132, OS_LOG_TYPE_DEFAULT, "  => Appending body %@", buf, 0xCu);
                                }

                                if ([v504 length])
                                {
                                  [v528 setObject:oslog forKey:v504];
                                }

                                if ([v506 length])
                                {
                                  [v533 setObject:oslog forKey:v506];
                                }

                                [v529 addObject:oslog];
                              }

                              cf1a = objc_alloc_init(MEMORY[0x277CBEB18]);
                              v586 = 0u;
                              v585 = 0u;
                              v584 = 0u;
                              v583 = 0u;
                              content3 = [v97 content];
                              smil2 = [content3 smil];
                              orderedParts = [smil2 orderedParts];

                              v523 = [orderedParts countByEnumeratingWithState:&v583 objects:v606 count:16];
                              if (v523)
                              {
                                v515 = *v584;
                                do
                                {
                                  v173 = 0;
                                  do
                                  {
                                    if (*v584 != v515)
                                    {
                                      v174 = v173;
                                      objc_enumerationMutation(orderedParts);
                                      v173 = v174;
                                    }

                                    v531 = v173;
                                    v175 = *(*(&v583 + 1) + 8 * v173);
                                    v176 = objc_alloc_init(IMDSMSPart);
                                    v582 = 0u;
                                    v581 = 0u;
                                    v580 = 0u;
                                    v579 = 0u;
                                    textParts = [v175 textParts];
                                    v178 = [textParts countByEnumeratingWithState:&v579 objects:v605 count:16];
                                    if (v178)
                                    {
                                      v179 = *v580;
                                      do
                                      {
                                        for (i = 0; i != v178; ++i)
                                        {
                                          if (*v580 != v179)
                                          {
                                            objc_enumerationMutation(textParts);
                                          }

                                          v181 = *(*(&v579 + 1) + 8 * i);
                                          v182 = [IMDSMSTextPart alloc];
                                          contentLocation3 = [v181 contentLocation];
                                          v184 = [(IMDSMSTextPart *)v182 initWithContentLocation:contentLocation3];

                                          text = [v181 text];
                                          [(IMDSMSTextPart *)v184 appendText:text];

                                          [(IMDSMSPart *)v176 addTextPart:v184];
                                        }

                                        v178 = [textParts countByEnumeratingWithState:&v579 objects:v605 count:16];
                                      }

                                      while (v178);
                                    }

                                    v578 = 0u;
                                    v577 = 0u;
                                    v576 = 0u;
                                    v575 = 0u;
                                    attachmentParts = [v175 attachmentParts];
                                    v187 = [attachmentParts countByEnumeratingWithState:&v575 objects:v604 count:16];
                                    if (v187)
                                    {
                                      v188 = *v576;
                                      do
                                      {
                                        for (j = 0; j != v187; ++j)
                                        {
                                          if (*v576 != v188)
                                          {
                                            objc_enumerationMutation(attachmentParts);
                                          }

                                          v190 = *(*(&v575 + 1) + 8 * j);
                                          v191 = [IMDSMSAttachmentPart alloc];
                                          contentLocation4 = [v190 contentLocation];
                                          v193 = [(IMDSMSAttachmentPart *)v191 initWithContentLocation:contentLocation4];

                                          [(IMDSMSPart *)v176 addAttachmentPart:v193];
                                        }

                                        v187 = [attachmentParts countByEnumeratingWithState:&v575 objects:v604 count:16];
                                      }

                                      while (v187);
                                    }

                                    [cf1a addObject:v176];
                                    v173 = v531 + 1;
                                  }

                                  while (v531 + 1 != v523);
                                  v523 = [orderedParts countByEnumeratingWithState:&v583 objects:v606 count:16];
                                }

                                while (v523);
                              }

                              if ([cf1a count])
                              {
                                if (v494)
                                {
                                  if (IMOSLoggingEnabled())
                                  {
                                    v194 = OSLogHandleForIMFoundationCategory();
                                    if (os_log_type_enabled(v194, OS_LOG_TYPE_INFO))
                                    {
                                      *buf = 0;
                                      _os_log_impl(&dword_22B4CC000, v194, OS_LOG_TYPE_INFO, "Two SMILs found in MMS - this should not happen!", buf, 2u);
                                    }
                                  }

                                  v195 = [v494 mutableCopy];
                                  [v195 addObjectsFromArray:cf1a];
                                  v196 = v195;
                                }

                                else
                                {
                                  v196 = cf1a;
                                }

                                v203 = v196;

                                v494 = v203;
                              }

                              else
                              {
                                v203 = cf1a;
                              }

LABEL_273:

                              goto LABEL_274;
                            }

LABEL_150:
                            oslog = IMDTelephonyServiceLogHandle();
                            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
                            {
                              content4 = [v97 content];
                              type3 = [content4 type];
                              *buf = 134217984;
                              *&buf[4] = type3;
                              _os_log_impl(&dword_22B4CC000, oslog, OS_LOG_TYPE_DEFAULT, "Unhandled BlastDoorSMSCTPartContent: %ld", buf, 0xCu);
                            }

                            goto LABEL_274;
                          }

                          content5 = [v97 content];
                          plain = [content5 plain];
                          plainTextContentBody = [plain plainTextContentBody];

                          if (plainTextContentBody)
                          {
                            oslog = objc_alloc_init(MEMORY[0x277CCAB68]);
                            content6 = [v97 content];
                            plain2 = [content6 plain];
                            plainTextContentBody2 = [plain2 plainTextContentBody];
                            [oslog appendString:plainTextContentBody2];

                            content7 = [v97 content];
                            plain3 = [content7 plain];
                            plainTextContentBody3 = [plain3 plainTextContentBody];
                            stringByRemovingWhitespace = [plainTextContentBody3 stringByRemovingWhitespace];
                            [v491 appendString:stringByRemovingWhitespace];
                          }

                          else
                          {
                            oslog = 0;
                          }

                          v197 = IMDTelephonyServiceLogHandle();
                          if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
                          {
                            v198 = MarcoLoggingStringForMessageData();
                            *buf = 138412290;
                            *&buf[4] = v198;
                            _os_log_impl(&dword_22B4CC000, v197, OS_LOG_TYPE_DEFAULT, "  * This is a text part (%@)", buf, 0xCu);
                          }

                          if ([oslog length])
                          {
                            newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
                            v200 = [newlineCharacterSet characterIsMember:{-[NSObject characterAtIndex:](oslog, "characterAtIndex:", -[NSObject length](oslog, "length") - 1)}];

                            if ((v200 & 1) == 0)
                            {
                              v201 = IMDTelephonyServiceLogHandle();
                              if (os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 0;
                                _os_log_impl(&dword_22B4CC000, v201, OS_LOG_TYPE_DEFAULT, "  * There's no trailing newline here, we'll make sure to append one next", buf, 2u);
                              }

                              [oslog appendString:@"\n"];
                            }

                            v202 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:oslog];
                            v203 = v202;
                            if (v202)
                            {
                              __im_attributedStringByAssigningMessagePartNumbers = [v202 __im_attributedStringByAssigningMessagePartNumbers];
                              if (__im_attributedStringByAssigningMessagePartNumbers)
                              {
                                if ([v504 length])
                                {
                                  [v528 setObject:__im_attributedStringByAssigningMessagePartNumbers forKey:v504];
                                }

                                if ([v506 length])
                                {
                                  [v533 setObject:__im_attributedStringByAssigningMessagePartNumbers forKey:v506];
                                }

                                [v529 addObject:__im_attributedStringByAssigningMessagePartNumbers];
                              }
                            }

                            goto LABEL_273;
                          }
                        }

                        else
                        {
                          switch(type2)
                          {
                            case 2:
                              v134 = IMDTelephonyServiceLogHandle();
                              if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 0;
                                _os_log_impl(&dword_22B4CC000, v134, OS_LOG_TYPE_DEFAULT, "  * This is an attachment part", buf, 2u);
                              }

                              oslog = +[IMDFileTransferCenter sharedInstance];
                              v135 = v506;
                              v136 = v135;
                              if (![v135 length])
                              {
                                v136 = v504;
                              }

                              cf1 = [v97 contentType];
                              content8 = [v97 content];
                              attachment = [content8 attachment];
                              contentData = [attachment contentData];

                              content9 = [v97 content];
                              attachment2 = [content9 attachment];
                              richCardOriginalGuid = [attachment2 richCardOriginalGuid];

                              stringByRemovingURLEscapes = [v136 stringByRemovingURLEscapes];

                              if (![(__CFString *)stringByRemovingURLEscapes length])
                              {
                                v143 = IMDTelephonyServiceLogHandle();
                                if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
                                {
                                  *buf = 0;
                                  _os_log_impl(&dword_22B4CC000, v143, OS_LOG_TYPE_DEFAULT, "  *** Empty filename!", buf, 2u);
                                }

                                stringByRemovingURLEscapes = @"Attachment";
                              }

                              pathExtension = [(__CFString *)stringByRemovingURLEscapes pathExtension];
                              v145 = [pathExtension length] == 0;

                              if (v145)
                              {
                                v207 = IMDTelephonyServiceLogHandle();
                                if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
                                {
                                  *buf = 138412290;
                                  *&buf[4] = stringByRemovingURLEscapes;
                                  _os_log_impl(&dword_22B4CC000, v207, OS_LOG_TYPE_DEFAULT, "  *** Filename has no extension: %@", buf, 0xCu);
                                }

                                defaultHFSFileManager = [MEMORY[0x277D19250] defaultHFSFileManager];
                                v209 = [defaultHFSFileManager pathExtensionForMIMEType:cf1];

                                v210 = IMDTelephonyServiceLogHandle();
                                if (os_log_type_enabled(v210, OS_LOG_TYPE_DEFAULT))
                                {
                                  *buf = 138412290;
                                  *&buf[4] = v209;
                                  _os_log_impl(&dword_22B4CC000, v210, OS_LOG_TYPE_DEFAULT, "  Proposed extension: %@", buf, 0xCu);
                                }

                                if ([v209 length])
                                {
                                  v211 = [(__CFString *)stringByRemovingURLEscapes stringByAppendingPathExtension:v209];

                                  v212 = IMDTelephonyServiceLogHandle();
                                  if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *buf = 138412290;
                                    *&buf[4] = v211;
                                    _os_log_impl(&dword_22B4CC000, v212, OS_LOG_TYPE_DEFAULT, "  * Replacement filename: %@", buf, 0xCu);
                                  }
                                }

                                else
                                {
                                  v211 = stringByRemovingURLEscapes;
                                }

                                v146 = v211;
                              }

                              else
                              {
                                v146 = stringByRemovingURLEscapes;
                              }

                              v213 = v146;
                              lastPathComponent = [v146 lastPathComponent];
                              v214 = -[NSObject guidForNewIncomingTransferWithFilename:isDirectory:totalBytes:hfsType:hfsCreator:hfsFlags:](oslog, "guidForNewIncomingTransferWithFilename:isDirectory:totalBytes:hfsType:hfsCreator:hfsFlags:", lastPathComponent, 0, [contentData length], 0, 0, 0);
                              v215 = IMDTelephonyServiceLogHandle();
                              if (os_log_type_enabled(v215, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 138412290;
                                *&buf[4] = v213;
                                _os_log_impl(&dword_22B4CC000, v215, OS_LOG_TYPE_DEFAULT, "         filename: %@", buf, 0xCu);
                              }

                              v216 = IMDTelephonyServiceLogHandle();
                              if (os_log_type_enabled(v216, OS_LOG_TYPE_DEFAULT))
                              {
                                v217 = [contentData length];
                                *buf = 67109120;
                                *&buf[4] = v217;
                                _os_log_impl(&dword_22B4CC000, v216, OS_LOG_TYPE_DEFAULT, "      data length: %d", buf, 8u);
                              }

                              v218 = IMDTelephonyServiceLogHandle();
                              if (os_log_type_enabled(v218, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 138412290;
                                *&buf[4] = lastPathComponent;
                                _os_log_impl(&dword_22B4CC000, v218, OS_LOG_TYPE_DEFAULT, "    transfer name: %@", buf, 0xCu);
                              }

                              v219 = IMDTelephonyServiceLogHandle();
                              if (os_log_type_enabled(v219, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 138412290;
                                *&buf[4] = v214;
                                _os_log_impl(&dword_22B4CC000, v219, OS_LOG_TYPE_DEFAULT, "             guid: %@", buf, 0xCu);
                              }

                              *buf = 0;
                              *&buf[8] = buf;
                              *&buf[16] = 0x3032000000;
                              v611 = sub_22B4D7830;
                              *v612 = sub_22B4D7980;
                              *&v612[8] = 0;
                              if (v214)
                              {
                                mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
                                isRelayChatBotEnabled = [mEMORY[0x277D1A9B8] isRelayChatBotEnabled];

                                if (richCardOriginalGuid)
                                {
                                  v222 = isRelayChatBotEnabled;
                                }

                                else
                                {
                                  v222 = 0;
                                }

                                if (v222 == 1)
                                {
                                  [v493 setObject:v214 forKeyedSubscript:richCardOriginalGuid];
                                }

                                defaultManager = [MEMORY[0x277CCAA00] defaultManager];
                                v224 = [defaultManager im_randomTemporaryFileURLWithFileName:lastPathComponent];

                                v225 = IMDTelephonyServiceLogHandle();
                                if (os_log_type_enabled(v225, OS_LOG_TYPE_DEFAULT))
                                {
                                  *v595 = 138412290;
                                  *v596 = v224;
                                  _os_log_impl(&dword_22B4CC000, v225, OS_LOG_TYPE_DEFAULT, "  => Writing data to path: %@", v595, 0xCu);
                                }

                                v226 = v527;
                                if (([contentData writeToURL:v224 atomically:1] & 1) == 0)
                                {
                                  v226 = v527;
                                  if (IMOSLoggingEnabled())
                                  {
                                    v227 = OSLogHandleForIMFoundationCategory();
                                    if (os_log_type_enabled(v227, OS_LOG_TYPE_INFO))
                                    {
                                      v228 = [contentData length];
                                      *v595 = 67109378;
                                      *v596 = v228;
                                      *&v596[4] = 2112;
                                      *&v596[6] = v224;
                                      _os_log_impl(&dword_22B4CC000, v227, OS_LOG_TYPE_INFO, "Failed to write data of length: %d   to path: %@", v595, 0x12u);
                                    }

                                    v226 = v527;
                                  }
                                }

                                aBlock[0] = MEMORY[0x277D85DD0];
                                aBlock[1] = 3221225472;
                                aBlock[2] = sub_22B6C77B4;
                                aBlock[3] = &unk_2787082E8;
                                v569 = oslog;
                                v229 = v214;
                                v570 = v229;
                                selfCopy = self;
                                v572 = v226;
                                v574 = buf;
                                v573 = v492;
                                v230 = _Block_copy(aBlock);
                                if ([MEMORY[0x277D1A9A0] deviceIsLockedDown])
                                {
                                  mEMORY[0x277D1ADE0] = [MEMORY[0x277D1ADE0] sharedInstance];
                                  v564[0] = MEMORY[0x277D85DD0];
                                  v564[1] = 3221225472;
                                  v564[2] = sub_22B6C7C58;
                                  v564[3] = &unk_278708310;
                                  v565 = v229;
                                  v232 = v224;
                                  v566 = v232;
                                  v567 = v230;
                                  [mEMORY[0x277D1ADE0] generateSafeRender:v232 completionBlock:v564];
                                }

                                else
                                {
                                  (*(v230 + 2))(v230, 1, v224, 0);
                                }
                              }

                              else if (IMOSLoggingEnabled())
                              {
                                v233 = OSLogHandleForIMFoundationCategory();
                                if (os_log_type_enabled(v233, OS_LOG_TYPE_INFO))
                                {
                                  *v595 = 138412290;
                                  *v596 = v97;
                                  _os_log_impl(&dword_22B4CC000, v233, OS_LOG_TYPE_INFO, "Failed building file transfer guid for part: %@", v595, 0xCu);
                                }
                              }

                              if (*(*&buf[8] + 40))
                              {
                                v234 = +[IMDMessageStore sharedInstance];
                                v235 = [v234 messageWithGUID:v498];

                                if ([(IMDTelephonyServiceSession *)self _allowedToGeneratePreviewForTransfer:*(*&buf[8] + 40) smsMessage:v526])
                                {
                                  [(IMDTelephonyServiceSession *)self _generatePreviewForTransfer:*(*&buf[8] + 40) message:v235];
                                }

                                mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
                                isRelayChatBotEnabled2 = [mEMORY[0x277D1A9B8]2 isRelayChatBotEnabled];
                                if (richCardOriginalGuid)
                                {
                                  v238 = isRelayChatBotEnabled2;
                                }

                                else
                                {
                                  v238 = 0;
                                }

                                if ((v238 & 1) == 0)
                                {
                                  v239 = MEMORY[0x277CCA898];
                                  guid = [*(*&buf[8] + 40) guid];
                                  v603 = guid;
                                  v241 = [MEMORY[0x277CBEA60] arrayWithObjects:&v603 count:1];
                                  v242 = [v239 __im_attributedStringWithFileTransfers:v241];
                                  __im_attributedStringByAssigningMessagePartNumbers2 = [v242 __im_attributedStringByAssigningMessagePartNumbers];

                                  if ([v504 length])
                                  {
                                    [v528 setObject:__im_attributedStringByAssigningMessagePartNumbers2 forKey:v504];
                                  }

                                  if ([v135 length])
                                  {
                                    [v533 setObject:__im_attributedStringByAssigningMessagePartNumbers2 forKey:v135];
                                  }

                                  [v529 addObject:__im_attributedStringByAssigningMessagePartNumbers2];
                                }

                                balloonBundleID = [v235 balloonBundleID];
                                v245 = [balloonBundleID containsString:v487];

                                if (v245)
                                {
                                  richLinkURLs = [v235 richLinkURLs];
                                  lastObject = [richLinkURLs lastObject];

                                  if (lastObject)
                                  {
                                    goto LABEL_263;
                                  }

                                  v248 = MEMORY[0x277CBEBC0];
                                  body = [v235 body];
                                  string = [body string];
                                  lastObject = [v248 URLWithString:string];

                                  if (lastObject)
                                  {
LABEL_263:
                                    mEMORY[0x277D1AC40] = [MEMORY[0x277D1AC40] sharedManager];
                                    v563 = 0;
                                    v562 = 0;
                                    [mEMORY[0x277D1AC40] appNameAndBundleIDFoURL:lastObject outAppName:&v563 outBundleID:&v562];
                                    v252 = v563;
                                    v253 = v562;

                                    if ([v252 length])
                                    {
                                      [v235 setSwyAppName:v252];
                                    }

                                    if ([v253 length])
                                    {
                                      [v235 setSwyBundleID:v253];
                                    }
                                  }

                                  else
                                  {
                                    lastObject = IMDTelephonyServiceLogHandle();
                                    if (os_log_type_enabled(lastObject, OS_LOG_TYPE_DEFAULT))
                                    {
                                      *v595 = 138412290;
                                      *v596 = v498;
                                      _os_log_impl(&dword_22B4CC000, lastObject, OS_LOG_TYPE_DEFAULT, "unable to extract URL for message identified as RichLink: %@", v595, 0xCu);
                                    }
                                  }
                                }
                              }

                              _Block_object_dispose(buf, 8);

                              break;
                            case 3:
                              content10 = [v97 content];
                              attributedChipList = [content10 attributedChipList];
                              oslog = [attributedChipList chipList];

                              v149 = [objc_alloc(MEMORY[0x277D1A928]) initWithDictionary:oslog];
                              v150 = objc_alloc(MEMORY[0x277CCA898]);
                              dictionaryRepresentation = [v149 dictionaryRepresentation];
                              v152 = [v150 initWithString:v489 attributes:dictionaryRepresentation];

                              if ([v152 length])
                              {
                                if (IMOSLoggingEnabled())
                                {
                                  v153 = OSLogHandleForIMFoundationCategory();
                                  if (os_log_type_enabled(v153, OS_LOG_TYPE_INFO))
                                  {
                                    suggestedReplies = [v149 suggestedReplies];
                                    v155 = [suggestedReplies count];
                                    suggestedActions = [v149 suggestedActions];
                                    v157 = [suggestedActions count];
                                    *buf = 134218240;
                                    *&buf[4] = v155;
                                    *&buf[12] = 2048;
                                    *&buf[14] = v157;
                                    _os_log_impl(&dword_22B4CC000, v153, OS_LOG_TYPE_INFO, "Received chiplist, suggested relies: %lu, actions: %lu", buf, 0x16u);
                                  }
                                }

                                [v529 addObject:v152];
                              }

                              else
                              {
                                v206 = IMLogHandleForCategory();
                                if (os_log_type_enabled(v206, OS_LOG_TYPE_ERROR))
                                {
                                  *buf = 138412290;
                                  *&buf[4] = oslog;
                                  _os_log_error_impl(&dword_22B4CC000, v206, OS_LOG_TYPE_ERROR, "Failed to read chiplist: %@", buf, 0xCu);
                                }
                              }

                              break;
                            case 4:
                              content11 = [v97 content];
                              attributedRichCards = [content11 attributedRichCards];
                              oslog = [attributedRichCards richCards];

                              v112 = [objc_alloc(MEMORY[0x277D1AB58]) initWithDictionary:oslog];
                              v113 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v490 attributes:oslog];
                              if ([v113 length])
                              {
                                if (IMOSLoggingEnabled())
                                {
                                  v114 = OSLogHandleForIMFoundationCategory();
                                  if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
                                  {
                                    cards = [v112 cards];
                                    v116 = [cards count];
                                    *buf = 134217984;
                                    *&buf[4] = v116;
                                    _os_log_impl(&dword_22B4CC000, v114, OS_LOG_TYPE_INFO, "Received richcards, %lu cards", buf, 0xCu);
                                  }
                                }

                                if ([v493 count])
                                {
                                  v590 = 0u;
                                  v589 = 0u;
                                  v588 = 0u;
                                  v587 = 0u;
                                  v117 = v493;
                                  v118 = [v117 countByEnumeratingWithState:&v587 objects:v607 count:16];
                                  if (v118)
                                  {
                                    v119 = *v588;
                                    do
                                    {
                                      v120 = 0;
                                      v121 = v113;
                                      do
                                      {
                                        if (*v588 != v119)
                                        {
                                          objc_enumerationMutation(v117);
                                        }

                                        v122 = *(*(&v587 + 1) + 8 * v120);
                                        v123 = [v117 objectForKeyedSubscript:v122];
                                        v113 = [v121 __im_attributedStringByReplacingRichCardGUID:v122 withUpdatedTransferGUID:v123];

                                        ++v120;
                                        v121 = v113;
                                      }

                                      while (v118 != v120);
                                      v118 = [v117 countByEnumeratingWithState:&v587 objects:v607 count:16];
                                    }

                                    while (v118);
                                  }
                                }

                                [v529 addObject:v113];
                              }

                              else
                              {
                                v205 = IMLogHandleForCategory();
                                if (os_log_type_enabled(v205, OS_LOG_TYPE_ERROR))
                                {
                                  *buf = 138412290;
                                  *&buf[4] = oslog;
                                  _os_log_error_impl(&dword_22B4CC000, v205, OS_LOG_TYPE_ERROR, "Failed to read richcards: %@", buf, 0xCu);
                                }
                              }

                              break;
                            default:
                              goto LABEL_150;
                          }
                        }

LABEL_274:

                        v95 = v499 + 1;
                      }

                      while (v499 + 1 != v497);
                      v254 = [obj countByEnumeratingWithState:&v591 objects:v608 count:16];
                      v497 = v254;
                      if (!v254)
                      {
LABEL_281:

                        v255 = IMDTelephonyServiceLogHandle();
                        if (os_log_type_enabled(v255, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_22B4CC000, v255, OS_LOG_TYPE_DEFAULT, "After parsing the SMS, we have:", buf, 2u);
                        }

                        v256 = IMDTelephonyServiceLogHandle();
                        if (os_log_type_enabled(v256, OS_LOG_TYPE_DEFAULT))
                        {
                          v257 = MarcoLoggingStringForMessageData();
                          *buf = 138412290;
                          *&buf[4] = v257;
                          _os_log_impl(&dword_22B4CC000, v256, OS_LOG_TYPE_DEFAULT, "  orderedParts = %@", buf, 0xCu);
                        }

                        v258 = IMDTelephonyServiceLogHandle();
                        if (os_log_type_enabled(v258, OS_LOG_TYPE_DEFAULT))
                        {
                          v259 = MarcoLoggingStringForMessageData();
                          *buf = 138412290;
                          *&buf[4] = v259;
                          _os_log_impl(&dword_22B4CC000, v258, OS_LOG_TYPE_DEFAULT, "  contentIDToParts = %@", buf, 0xCu);
                        }

                        v260 = IMDTelephonyServiceLogHandle();
                        if (os_log_type_enabled(v260, OS_LOG_TYPE_DEFAULT))
                        {
                          v261 = MarcoLoggingStringForMessageData();
                          *buf = 138412290;
                          *&buf[4] = v261;
                          _os_log_impl(&dword_22B4CC000, v260, OS_LOG_TYPE_DEFAULT, "  contentLocToParts = %@", buf, 0xCu);
                        }

                        v262 = IMDTelephonyServiceLogHandle();
                        if (os_log_type_enabled(v262, OS_LOG_TYPE_DEFAULT))
                        {
                          v263 = MarcoLoggingStringForMessageData();
                          *buf = 138412290;
                          *&buf[4] = v263;
                          _os_log_impl(&dword_22B4CC000, v262, OS_LOG_TYPE_DEFAULT, "  allParts = %@", buf, 0xCu);
                        }

                        v264 = objc_alloc_init(MEMORY[0x277CCAB48]);
                        if ([v494 count])
                        {
                          v560 = 0u;
                          v561 = 0u;
                          v558 = 0u;
                          v559 = 0u;
                          v513 = v494;
                          cf1b = [v513 countByEnumeratingWithState:&v558 objects:v602 count:16];
                          if (cf1b)
                          {
                            v516 = *v559;
                            do
                            {
                              v265 = 0;
                              do
                              {
                                if (*v559 != v516)
                                {
                                  v266 = v265;
                                  objc_enumerationMutation(v513);
                                  v265 = v266;
                                }

                                v524 = v265;
                                v267 = *(*(&v558 + 1) + 8 * v265);
                                v268 = IMDTelephonyServiceLogHandle();
                                if (os_log_type_enabled(v268, OS_LOG_TYPE_DEFAULT))
                                {
                                  v269 = MarcoLoggingStringForMessageData();
                                  *buf = 138412290;
                                  *&buf[4] = v269;
                                  _os_log_impl(&dword_22B4CC000, v268, OS_LOG_TYPE_DEFAULT, "Examining part %@", buf, 0xCu);
                                }

                                v556 = 0u;
                                v557 = 0u;
                                v554 = 0u;
                                v555 = 0u;
                                attachmentParts2 = [v267 attachmentParts];
                                v271 = [attachmentParts2 countByEnumeratingWithState:&v554 objects:v601 count:16];
                                if (v271)
                                {
                                  v272 = *v555;
                                  do
                                  {
                                    v273 = 0;
                                    do
                                    {
                                      if (*v555 != v272)
                                      {
                                        objc_enumerationMutation(attachmentParts2);
                                      }

                                      v274 = *(*(&v554 + 1) + 8 * v273);
                                      v275 = IMDTelephonyServiceLogHandle();
                                      if (os_log_type_enabled(v275, OS_LOG_TYPE_DEFAULT))
                                      {
                                        *buf = 138412290;
                                        *&buf[4] = v274;
                                        _os_log_impl(&dword_22B4CC000, v275, OS_LOG_TYPE_DEFAULT, " Found attachmentPart %@", buf, 0xCu);
                                      }

                                      contentLocation5 = [v274 contentLocation];
                                      v277 = [v533 objectForKey:contentLocation5];

                                      if (v277 || ([v274 contentLocation], v278 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v528, "objectForKey:", v278), v277 = objc_claimAutoreleasedReturnValue(), v278, v277))
                                      {
                                        [v264 appendAttributedString:v277];
                                        [v529 removeObjectIdenticalTo:v277];
                                      }

                                      else
                                      {
                                        v277 = IMDTelephonyServiceLogHandle();
                                        if (os_log_type_enabled(v277, OS_LOG_TYPE_DEFAULT))
                                        {
                                          *buf = 0;
                                          _os_log_impl(&dword_22B4CC000, v277, OS_LOG_TYPE_DEFAULT, " Did not find attachment's attributed string!", buf, 2u);
                                        }
                                      }

                                      ++v273;
                                    }

                                    while (v271 != v273);
                                    v279 = [attachmentParts2 countByEnumeratingWithState:&v554 objects:v601 count:16];
                                    v271 = v279;
                                  }

                                  while (v279);
                                }

                                v552 = 0u;
                                v553 = 0u;
                                v550 = 0u;
                                v551 = 0u;
                                textParts2 = [v267 textParts];
                                v281 = [textParts2 countByEnumeratingWithState:&v550 objects:v600 count:16];
                                if (v281)
                                {
                                  v282 = *v551;
                                  do
                                  {
                                    v283 = 0;
                                    do
                                    {
                                      if (*v551 != v282)
                                      {
                                        objc_enumerationMutation(textParts2);
                                      }

                                      v284 = *(*(&v550 + 1) + 8 * v283);
                                      v285 = IMDTelephonyServiceLogHandle();
                                      if (os_log_type_enabled(v285, OS_LOG_TYPE_DEFAULT))
                                      {
                                        v286 = MarcoLoggingStringForMessageData();
                                        *buf = 138412290;
                                        *&buf[4] = v286;
                                        _os_log_impl(&dword_22B4CC000, v285, OS_LOG_TYPE_DEFAULT, " Found textPart %@", buf, 0xCu);
                                      }

                                      contentLocation6 = [v284 contentLocation];
                                      v288 = [v533 objectForKey:contentLocation6];

                                      if (v288 || ([v284 contentLocation], v289 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v528, "objectForKey:", v289), v288 = objc_claimAutoreleasedReturnValue(), v289, v288))
                                      {
                                        v290 = IMDTelephonyServiceLogHandle();
                                        if (os_log_type_enabled(v290, OS_LOG_TYPE_DEFAULT))
                                        {
                                          v291 = MarcoLoggingStringForMessageData();
                                          *buf = 138412290;
                                          *&buf[4] = v291;
                                          _os_log_impl(&dword_22B4CC000, v290, OS_LOG_TYPE_DEFAULT, " Appending text %@", buf, 0xCu);
                                        }

                                        [v264 appendAttributedString:v288];
                                        [v529 removeObjectIdenticalTo:v288];
                                      }

                                      else
                                      {
                                        v288 = IMDTelephonyServiceLogHandle();
                                        if (os_log_type_enabled(v288, OS_LOG_TYPE_DEFAULT))
                                        {
                                          *buf = 0;
                                          _os_log_impl(&dword_22B4CC000, v288, OS_LOG_TYPE_DEFAULT, " Did not find textPart's attributed string!", buf, 2u);
                                        }
                                      }

                                      text2 = [v284 text];
                                      if ([text2 length])
                                      {
                                        v293 = IMDTelephonyServiceLogHandle();
                                        if (os_log_type_enabled(v293, OS_LOG_TYPE_DEFAULT))
                                        {
                                          v294 = MarcoLoggingStringForMessageData();
                                          *buf = 138412290;
                                          *&buf[4] = v294;
                                          _os_log_impl(&dword_22B4CC000, v293, OS_LOG_TYPE_DEFAULT, " Found embedded text %@", buf, 0xCu);
                                        }

                                        v295 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:text2];
                                        [v264 appendAttributedString:v295];
                                      }

                                      ++v283;
                                    }

                                    while (v281 != v283);
                                    v296 = [textParts2 countByEnumeratingWithState:&v550 objects:v600 count:16];
                                    v281 = v296;
                                  }

                                  while (v296);
                                }

                                v265 = v524 + 1;
                              }

                              while ((v524 + 1) != cf1b);
                              cf1b = [v513 countByEnumeratingWithState:&v558 objects:v602 count:16];
                            }

                            while (cf1b);
                          }
                        }

                        v548 = 0u;
                        v549 = 0u;
                        v546 = 0u;
                        v547 = 0u;
                        v530 = v529;
                        v297 = [v530 countByEnumeratingWithState:&v546 objects:v599 count:16];
                        if (v297)
                        {
                          v298 = *v547;
                          do
                          {
                            for (k = 0; k != v297; ++k)
                            {
                              if (*v547 != v298)
                              {
                                objc_enumerationMutation(v530);
                              }

                              v300 = *(*(&v546 + 1) + 8 * k);
                              v301 = IMDTelephonyServiceLogHandle();
                              if (os_log_type_enabled(v301, OS_LOG_TYPE_DEFAULT))
                              {
                                v302 = MarcoLoggingStringForMessageData();
                                *buf = 138412290;
                                *&buf[4] = v302;
                                _os_log_impl(&dword_22B4CC000, v301, OS_LOG_TYPE_DEFAULT, "Found unordered part: %@", buf, 0xCu);
                              }

                              [v264 appendAttributedString:v300];
                            }

                            v297 = [v530 countByEnumeratingWithState:&v546 objects:v599 count:16];
                          }

                          while (v297);
                        }

                        if ([v264 length])
                        {
                          newlineCharacterSet2 = [MEMORY[0x277CCA900] newlineCharacterSet];
                          string2 = [v264 string];
                          v305 = [newlineCharacterSet2 characterIsMember:{objc_msgSend(string2, "characterAtIndex:", objc_msgSend(v264, "length") - 1)}];

                          if (v305)
                          {
                            v306 = IMDTelephonyServiceLogHandle();
                            if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 0;
                              _os_log_impl(&dword_22B4CC000, v306, OS_LOG_TYPE_DEFAULT, "  * Trimming trailing newline", buf, 2u);
                            }

                            v307 = -1;
                            goto LABEL_352;
                          }

                          if ([v264 __im_hasChipList])
                          {
                            if ([v264 length] >= 2)
                            {
                              newlineCharacterSet3 = [MEMORY[0x277CCA900] newlineCharacterSet];
                              string3 = [v264 string];
                              v310 = [newlineCharacterSet3 characterIsMember:{objc_msgSend(string3, "characterAtIndex:", objc_msgSend(v264, "length") - 2)}];

                              if (v310)
                              {
                                mEMORY[0x277D1A9B8]3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
                                isRelayChatBotEnabled3 = [mEMORY[0x277D1A9B8]3 isRelayChatBotEnabled];

                                if (isRelayChatBotEnabled3)
                                {
                                  v306 = IMDTelephonyServiceLogHandle();
                                  if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *buf = 0;
                                    _os_log_impl(&dword_22B4CC000, v306, OS_LOG_TYPE_DEFAULT, "  * Trimming trailing newline for chat bot rich contents", buf, 2u);
                                  }

                                  v307 = -2;
LABEL_352:

                                  [v264 deleteCharactersInRange:{objc_msgSend(v264, "length") + v307, 1}];
                                }
                              }
                            }
                          }
                        }

                        v313 = [v264 length];
                        [v264 removeAttribute:*MEMORY[0x277D19160] range:{0, v313}];
                        __im_attributedStringByAssigningMessagePartNumbers3 = [v264 __im_attributedStringByAssigningMessagePartNumbers];
                        osloga = [__im_attributedStringByAssigningMessagePartNumbers3 mutableCopy];

                        if (IMSharedHelperDeviceIsAltAccount())
                        {
                          mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
                          ctPhoneNumber = [mEMORY[0x277D1A908] ctPhoneNumber];
                          goto LABEL_364;
                        }

                        mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
                        telephoneNumber = [mEMORY[0x277D07DB0] telephoneNumber];

                        if (telephoneNumber)
                        {
                          mEMORY[0x277D1A908] = [MEMORY[0x277D07DB0] sharedInstance];
                          ctPhoneNumber = [mEMORY[0x277D1A908] telephoneNumber];
LABEL_364:
                          v318 = ctPhoneNumber;
                          countryCode5 = [(IMDTelephonyIncomingMessageContext *)v527 countryCode];
                          cf1c = IMPhoneNumberRefCopyForPhoneNumber();
                        }

                        else
                        {
                          cf1c = 0;
                        }

                        if (!-[NSObject length](osloga, "length") && ![v492 count])
                        {
                          v320 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:@" " attributes:0];

                          osloga = v320;
                        }

                        *buf = 0;
                        *&buf[8] = buf;
                        *&buf[16] = 0x3032000000;
                        v611 = sub_22B4D7830;
                        *v612 = sub_22B4D7980;
                        v321 = objc_alloc(MEMORY[0x277D1AA70]);
                        sender18 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
                        date = [v526 date];
                        v324 = _ClampDate(date);
                        v325 = [v492 arrayByApplyingSelector:sel_guid];
                        *&v612[8] = [v321 initWithSender:sender18 time:v324 body:osloga attributes:0 fileTransferGUIDs:v325 flags:1 error:0 guid:v498 threadIdentifier:0];

                        v326 = *(*&buf[8] + 40);
                        destinationCallerID = [(IMDTelephonyIncomingMessageContext *)v527 destinationCallerID];
                        [v326 setDestinationCallerID:destinationCallerID];

                        [(IMDServiceSession *)self _markFromStorageIfNeeded:contextCopy messageGUID:v498];
                        v328 = *(*&buf[8] + 40);
                        accountID = [(IMDServiceSession *)self accountID];
                        [v328 setAccountID:accountID];

                        v330 = *(*&buf[8] + 40);
                        subject = [v526 subject];
                        [v330 setSubject:subject];

                        [*(*&buf[8] + 40) setReplaceID:replaceMessage];
                        fallbackHash = [v526 fallbackHash];
                        if ([v491 length])
                        {
                          service3 = [(IMDServiceSession *)self service];
                          fallbackHashIsContentBased = [service3 fallbackHashIsContentBased];

                          if (fallbackHashIsContentBased)
                          {
                            v598 = v491;
                            v334 = [MEMORY[0x277CBEA60] arrayWithObjects:&v598 count:1];
                            sHA256HexString = [v334 SHA256HexString];

                            v336 = MEMORY[0x277CCACA8];
                            fallbackHash2 = [v526 fallbackHash];
                            v335 = [v336 stringWithFormat:@"%@<%@>", fallbackHash2, sHA256HexString];

                            fallbackHash = v335;
                          }
                        }

                        [*(*&buf[8] + 40) setFallbackHash:fallbackHash];
                        v339 = IMDTelephonyServiceLogHandle();
                        if (os_log_type_enabled(v339, OS_LOG_TYPE_DEFAULT))
                        {
                          fallbackHash3 = [*(*&buf[8] + 40) fallbackHash];
                          v341 = [fallbackHash3 length];
                          *v595 = 134217984;
                          *v596 = v341;
                          _os_log_impl(&dword_22B4CC000, v339, OS_LOG_TYPE_DEFAULT, " => Fallback hash length: %llu", v595, 0xCu);
                        }

                        sender19 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
                        string4 = [osloga string];
                        HSAAuthenticationProcessIncomingMessage();
                        if (sender19)
                        {
                          CFRelease(sender19);
                        }

                        if (string4)
                        {
                          CFRelease(string4);
                        }

                        v344 = IMDTelephonyServiceLogHandle();
                        if (os_log_type_enabled(v344, OS_LOG_TYPE_DEFAULT))
                        {
                          *v595 = 138412290;
                          *v596 = v492;
                          _os_log_impl(&dword_22B4CC000, v344, OS_LOG_TYPE_DEFAULT, " => Transfers: %@", v595, 0xCu);
                        }

                        v345 = IMDTelephonyServiceLogHandle();
                        if (os_log_type_enabled(v345, OS_LOG_TYPE_DEFAULT))
                        {
                          v346 = MarcoLoggingStringForMessageData();
                          *v595 = 138412290;
                          *v596 = v346;
                          _os_log_impl(&dword_22B4CC000, v345, OS_LOG_TYPE_DEFAULT, " => Ordered parts: %@", v595, 0xCu);
                        }

                        v347 = IMDTelephonyServiceLogHandle();
                        if (os_log_type_enabled(v347, OS_LOG_TYPE_DEFAULT))
                        {
                          v348 = *(*&buf[8] + 40);
                          *v595 = 138412290;
                          *v596 = v348;
                          _os_log_impl(&dword_22B4CC000, v347, OS_LOG_TYPE_DEFAULT, " => Result message: %@", v595, 0xCu);
                        }

                        [(IMDTelephonyIncomingMessageContext *)v527 setStyle:45];
                        v349 = MEMORY[0x277D1A8F8];
                        myNumberString = [(IMDTelephonyIncomingMessageContext *)v527 myNumberString];
                        mySIMIDString = [(IMDTelephonyIncomingMessageContext *)v527 mySIMIDString];
                        v525 = [v349 IMMMSEmailAddressToMatchForPhoneNumber:myNumberString simID:mySIMIDString];

                        v352 = MEMORY[0x277D1A8F8];
                        myNumberString2 = [(IMDTelephonyIncomingMessageContext *)v527 myNumberString];
                        mySIMIDString2 = [(IMDTelephonyIncomingMessageContext *)v527 mySIMIDString];
                        v505 = [v352 IMCountryCodeForPhoneNumber:myNumberString2 simID:mySIMIDString2];

                        v355 = IMDTelephonyServiceLogHandle();
                        if (os_log_type_enabled(v355, OS_LOG_TYPE_DEFAULT))
                        {
                          isGroupMessagingEnabled = [(IMDTelephonyIncomingMessageContext *)v527 isGroupMessagingEnabled];
                          *v595 = 67109120;
                          *v596 = isGroupMessagingEnabled;
                          _os_log_impl(&dword_22B4CC000, v355, OS_LOG_TYPE_DEFAULT, "Group Messaging Enabled: %{BOOL}d", v595, 8u);
                        }

                        v357 = IMDTelephonyServiceLogHandle();
                        if (os_log_type_enabled(v357, OS_LOG_TYPE_DEFAULT))
                        {
                          *v595 = 138412290;
                          *v596 = cf1c;
                          _os_log_impl(&dword_22B4CC000, v357, OS_LOG_TYPE_DEFAULT, "My number: %@", v595, 0xCu);
                        }

                        v358 = IMDTelephonyServiceLogHandle();
                        if (os_log_type_enabled(v358, OS_LOG_TYPE_DEFAULT))
                        {
                          *v595 = 138412290;
                          *v596 = v525;
                          _os_log_impl(&dword_22B4CC000, v358, OS_LOG_TYPE_DEFAULT, "My email: %@", v595, 0xCu);
                        }

                        v359 = IMDTelephonyServiceLogHandle();
                        if (os_log_type_enabled(v359, OS_LOG_TYPE_DEFAULT))
                        {
                          mySIMIDString3 = [(IMDTelephonyIncomingMessageContext *)v527 mySIMIDString];
                          *v595 = 138412290;
                          *v596 = mySIMIDString3;
                          _os_log_impl(&dword_22B4CC000, v359, OS_LOG_TYPE_DEFAULT, "My sim ID: %@", v595, 0xCu);
                        }

                        v361 = IMDTelephonyServiceLogHandle();
                        if (os_log_type_enabled(v361, OS_LOG_TYPE_DEFAULT))
                        {
                          *v595 = 138412290;
                          *v596 = v505;
                          _os_log_impl(&dword_22B4CC000, v361, OS_LOG_TYPE_DEFAULT, "My receiver ISO country region: %@", v595, 0xCu);
                        }

                        if ([(IMDTelephonyIncomingMessageContext *)v527 isGroupMessagingEnabled])
                        {
                          v362 = IMDTelephonyServiceLogHandle();
                          if (os_log_type_enabled(v362, OS_LOG_TYPE_DEFAULT))
                          {
                            recipients = [v526 recipients];
                            *v595 = 138412290;
                            *v596 = recipients;
                            _os_log_impl(&dword_22B4CC000, v362, OS_LOG_TYPE_DEFAULT, "Recipients: %@", v595, 0xCu);
                          }

                          v544 = 0u;
                          v545 = 0u;
                          v542 = 0u;
                          v543 = 0u;
                          recipients2 = [v526 recipients];
                          v365 = [recipients2 countByEnumeratingWithState:&v542 objects:v597 count:16];
                          if (v365)
                          {
                            v366 = *v543;
                            v517 = recipients2;
                            do
                            {
                              for (m = 0; m != v365; ++m)
                              {
                                if (*v543 != v366)
                                {
                                  objc_enumerationMutation(v517);
                                }

                                v368 = *(*(&v542 + 1) + 8 * m);
                                v369 = IMDTelephonyServiceLogHandle();
                                if (os_log_type_enabled(v369, OS_LOG_TYPE_DEFAULT))
                                {
                                  *v595 = 138412290;
                                  *v596 = v368;
                                  _os_log_impl(&dword_22B4CC000, v369, OS_LOG_TYPE_DEFAULT, "  Recipient: %@", v595, 0xCu);
                                }

                                v370 = [v368 copy];
                                participants = [(IMDTelephonyIncomingMessageContext *)v527 participants];
                                v372 = participants == 0;

                                if (v372)
                                {
                                  v373 = objc_alloc_init(MEMORY[0x277CBEB18]);
                                  [(IMDTelephonyIncomingMessageContext *)v527 setParticipants:v373];
                                }

                                unformattedIDs = [(IMDTelephonyIncomingMessageContext *)v527 unformattedIDs];
                                v375 = unformattedIDs == 0;

                                if (v375)
                                {
                                  v376 = objc_alloc_init(MEMORY[0x277CBEB18]);
                                  [(IMDTelephonyIncomingMessageContext *)v527 setUnformattedIDs:v376];
                                }

                                countryCodes = [(IMDTelephonyIncomingMessageContext *)v527 countryCodes];
                                v378 = countryCodes == 0;

                                if (v378)
                                {
                                  v379 = objc_alloc_init(MEMORY[0x277CBEB18]);
                                  [(IMDTelephonyIncomingMessageContext *)v527 setCountryCodes:v379];
                                }

                                if ([v370 _appearsToBePhoneNumber])
                                {
                                  countryCode6 = [(IMDTelephonyIncomingMessageContext *)v527 countryCode];
                                  v381 = IMPhoneNumberRefCopyForPhoneNumber();

                                  originatedDeviceEmail = IMNormalizedPhoneNumberForCFPhoneNumberRef();
                                  v383 = IMDTelephonyServiceLogHandle();
                                  if (os_log_type_enabled(v383, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *v595 = 138412546;
                                    *v596 = v381;
                                    *&v596[8] = 2112;
                                    *&v596[10] = v370;
                                    _os_log_impl(&dword_22B4CC000, v383, OS_LOG_TYPE_DEFAULT, "Created number ref: %@  for ID: %@", v595, 0x16u);
                                  }

                                  v384 = IMDTelephonyServiceLogHandle();
                                  if (os_log_type_enabled(v384, OS_LOG_TYPE_DEFAULT))
                                  {
                                    countryCode7 = [(IMDTelephonyIncomingMessageContext *)v527 countryCode];
                                    *v595 = 138412290;
                                    *v596 = countryCode7;
                                    _os_log_impl(&dword_22B4CC000, v384, OS_LOG_TYPE_DEFAULT, "    => Country code: %@", v595, 0xCu);
                                  }

                                  v386 = IMDTelephonyServiceLogHandle();
                                  if (os_log_type_enabled(v386, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *v595 = 138412290;
                                    *v596 = originatedDeviceEmail;
                                    _os_log_impl(&dword_22B4CC000, v386, OS_LOG_TYPE_DEFAULT, "      => Normalized: %@", v595, 0xCu);
                                  }

                                  if (v381 != 0 && cf1c != 0 && CFEqual(cf1c, v381))
                                  {
                                    v387 = IMDTelephonyServiceLogHandle();
                                    if (os_log_type_enabled(v387, OS_LOG_TYPE_DEFAULT))
                                    {
                                      *v595 = 0;
                                      _os_log_impl(&dword_22B4CC000, v387, OS_LOG_TYPE_DEFAULT, "      ** This is my number, ignoring", v595, 2u);
                                    }

                                    v370 = 0;
                                    originatedDeviceEmail = 0;
                                  }

                                  originatedDeviceNumber2 = [v526 originatedDeviceNumber];
                                  v389 = IMDTelephonyServiceLogHandle();
                                  if (os_log_type_enabled(v389, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *v595 = 138412290;
                                    *v596 = originatedDeviceNumber2;
                                    _os_log_impl(&dword_22B4CC000, v389, OS_LOG_TYPE_DEFAULT, "My Original Alias is %@", v595, 0xCu);
                                  }

                                  if (originatedDeviceNumber2 && MEMORY[0x231897D30](originatedDeviceNumber2, originatedDeviceEmail))
                                  {
                                    v390 = IMDTelephonyServiceLogHandle();
                                    if (os_log_type_enabled(v390, OS_LOG_TYPE_DEFAULT))
                                    {
                                      *v595 = 0;
                                      _os_log_impl(&dword_22B4CC000, v390, OS_LOG_TYPE_DEFAULT, "      ** My number is the service center, ignoring", v595, 2u);
                                    }

                                    v370 = 0;
                                    originatedDeviceEmail = 0;
                                  }

                                  if (v381)
                                  {
                                    CFRelease(v381);
                                  }

                                  if ([originatedDeviceEmail length])
                                  {
                                    v391 = originatedDeviceEmail;
                                    originatedDeviceEmail = v391;
                                  }

                                  else
                                  {
                                    v391 = IMNormalizeFormattedString();
                                  }

                                  v393 = v391;
                                }

                                else
                                {
                                  if ([v525 length] && objc_msgSend(v525, "isEqualToIgnoringCase:", v370))
                                  {
                                    v392 = IMDTelephonyServiceLogHandle();
                                    if (os_log_type_enabled(v392, OS_LOG_TYPE_DEFAULT))
                                    {
                                      *v595 = 0;
                                      _os_log_impl(&dword_22B4CC000, v392, OS_LOG_TYPE_DEFAULT, "      ** This is my email, ignoring", v595, 2u);
                                    }

                                    originatedDeviceNumber2 = 0;
                                  }

                                  else
                                  {
                                    originatedDeviceNumber2 = v370;
                                  }

                                  originatedDeviceEmail = [v526 originatedDeviceEmail];
                                  if (![originatedDeviceEmail length] || !objc_msgSend(originatedDeviceEmail, "isEqualToIgnoringCase:", originatedDeviceNumber2))
                                  {
                                    v393 = originatedDeviceNumber2;
                                    goto LABEL_447;
                                  }

                                  v370 = IMDTelephonyServiceLogHandle();
                                  if (os_log_type_enabled(v370, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *v595 = 0;
                                    _os_log_impl(&dword_22B4CC000, v370, OS_LOG_TYPE_DEFAULT, "      ** This is my email (via proxy), ignoring", v595, 2u);
                                  }

                                  v393 = 0;
                                }

LABEL_447:
                                if (v393)
                                {
                                  v394 = IMDTelephonyServiceLogHandle();
                                  if (os_log_type_enabled(v394, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *v595 = 138412290;
                                    *v596 = v393;
                                    _os_log_impl(&dword_22B4CC000, v394, OS_LOG_TYPE_DEFAULT, "  => Canonical: %@", v595, 0xCu);
                                  }

                                  participants2 = [(IMDTelephonyIncomingMessageContext *)v527 participants];
                                  [participants2 addObject:v393];

                                  v396 = [v368 copy];
                                  countryCodes2 = [(IMDTelephonyIncomingMessageContext *)v527 countryCodes];
                                  countryCode8 = [(IMDTelephonyIncomingMessageContext *)v527 countryCode];
                                  v399 = countryCode8;
                                  if (countryCode8)
                                  {
                                    v400 = countryCode8;
                                  }

                                  else
                                  {
                                    v400 = @"us";
                                  }

                                  [countryCodes2 addObject:v400];

                                  unformattedIDs2 = [(IMDTelephonyIncomingMessageContext *)v527 unformattedIDs];
                                  v402 = unformattedIDs2;
                                  if (v396)
                                  {
                                    v403 = v396;
                                  }

                                  else
                                  {
                                    v403 = &stru_283F23018;
                                  }

                                  [unformattedIDs2 addObject:v403];
                                }
                              }

                              recipients2 = v517;
                              v365 = [v517 countByEnumeratingWithState:&v542 objects:v597 count:16];
                            }

                            while (v365);
                          }

                          v404 = v527;
                          sender20 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
                          if (sender20)
                          {
                            participants3 = [(IMDTelephonyIncomingMessageContext *)v527 participants];
                            sender21 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
                            v408 = [participants3 containsObject:sender21];

                            v404 = v527;
                            if ((v408 & 1) == 0)
                            {
                              participants4 = [(IMDTelephonyIncomingMessageContext *)v527 participants];
                              sender22 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
                              [participants4 addObject:sender22];

                              senderUnformatted = [(IMDTelephonyIncomingMessageContext *)v527 senderUnformatted];
                              countryCodes3 = [(IMDTelephonyIncomingMessageContext *)v527 countryCodes];
                              countryCode9 = [(IMDTelephonyIncomingMessageContext *)v527 countryCode];
                              v414 = countryCode9;
                              if (countryCode9)
                              {
                                v415 = countryCode9;
                              }

                              else
                              {
                                v415 = @"us";
                              }

                              [countryCodes3 addObject:v415];

                              unformattedIDs3 = [(IMDTelephonyIncomingMessageContext *)v527 unformattedIDs];
                              v417 = unformattedIDs3;
                              if (senderUnformatted)
                              {
                                v418 = senderUnformatted;
                              }

                              else
                              {
                                v418 = &stru_283F23018;
                              }

                              [unformattedIDs3 addObject:v418];
                              goto LABEL_481;
                            }
                          }
                        }

                        else
                        {
                          v419 = IMDTelephonyServiceLogHandle();
                          if (os_log_type_enabled(v419, OS_LOG_TYPE_DEFAULT))
                          {
                            sender23 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
                            *v595 = 138412290;
                            *v596 = sender23;
                            _os_log_impl(&dword_22B4CC000, v419, OS_LOG_TYPE_DEFAULT, "Group messaging is disabled, ensuring the sender is in the participant set: %@", v595, 0xCu);
                          }

                          participants5 = [(IMDTelephonyIncomingMessageContext *)v527 participants];
                          v422 = participants5 == 0;

                          if (v422)
                          {
                            v423 = objc_alloc_init(MEMORY[0x277CBEB18]);
                            [(IMDTelephonyIncomingMessageContext *)v527 setParticipants:v423];
                          }

                          v404 = v527;
                          sender24 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
                          if (sender24)
                          {
                            participants6 = [(IMDTelephonyIncomingMessageContext *)v527 participants];
                            sender25 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
                            v427 = [participants6 containsObject:sender25];

                            v404 = v527;
                            if ((v427 & 1) == 0)
                            {
                              participants7 = [(IMDTelephonyIncomingMessageContext *)v527 participants];
                              sender26 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
                              [participants7 addObject:sender26];

                              senderUnformatted = [(IMDTelephonyIncomingMessageContext *)v527 senderUnformatted];
                              countryCodes4 = [(IMDTelephonyIncomingMessageContext *)v527 countryCodes];
                              countryCode10 = [(IMDTelephonyIncomingMessageContext *)v527 countryCode];
                              v432 = countryCode10;
                              if (countryCode10)
                              {
                                v433 = countryCode10;
                              }

                              else
                              {
                                v433 = @"us";
                              }

                              [countryCodes4 addObject:v433];

                              unformattedIDs4 = [(IMDTelephonyIncomingMessageContext *)v527 unformattedIDs];
                              v417 = unformattedIDs4;
                              if (senderUnformatted)
                              {
                                v435 = senderUnformatted;
                              }

                              else
                              {
                                v435 = &stru_283F23018;
                              }

                              [unformattedIDs4 addObject:v435];
LABEL_481:

                              v404 = v527;
                            }
                          }
                        }

                        if ([(IMDTelephonyIncomingMessageContext *)v404 isGroupChat])
                        {
                          [(IMDTelephonyIncomingMessageContext *)v404 setStyle:43];
                          sender27 = +[IMDChatRegistry sharedInstance];
                          account = [(IMDServiceSession *)self account];
                          v438 = [sender27 generateUnusedChatIdentifierForGroupChatWithAccount:account];
                          [(IMDTelephonyIncomingMessageContext *)v404 setChatIdentifier:v438];
                        }

                        else
                        {
                          mEMORY[0x277D1A9B8]4 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
                          isMergeBusinessSenderIndiaEnabled = [mEMORY[0x277D1A9B8]4 isMergeBusinessSenderIndiaEnabled];

                          if (isMergeBusinessSenderIndiaEnabled)
                          {
                            v441 = [(IMDTelephonyServiceSession *)self _identifierForMergedBusinessThread:v527];
                            if (v441)
                            {
                              [(IMDTelephonyIncomingMessageContext *)v527 setIsMergedBusinessThread:1];
                              [(IMDTelephonyIncomingMessageContext *)v527 setSender:v441];
                              [(IMDTelephonyIncomingMessageContext *)v527 setDisplayName:v441];
                            }
                          }

                          sender27 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
                          [(IMDTelephonyIncomingMessageContext *)v527 setChatIdentifier:sender27];
                        }

                        v442 = [(IMDTelephonyServiceSession *)self chatForIncomingMessageContext:v527 createIfNotExists:0];
                        v443 = v442;
                        if (v442)
                        {
                          chatIdentifier = [v442 chatIdentifier];
                          [(IMDTelephonyIncomingMessageContext *)v527 setChatIdentifier:chatIdentifier];

                          v445 = v527;
                          -[IMDTelephonyIncomingMessageContext setStyle:](v527, "setStyle:", [v443 style]);
                          if ([v443 isBlackholed])
                          {
                            if (IMOSLoggingEnabled())
                            {
                              v446 = OSLogHandleForIMFoundationCategory();
                              if (os_log_type_enabled(v446, OS_LOG_TYPE_INFO))
                              {
                                guid2 = [v443 guid];
                                *v595 = 138412290;
                                *v596 = guid2;
                                _os_log_impl(&dword_22B4CC000, v446, OS_LOG_TYPE_INFO, "SMS: Unblackholing an SMS chat %@", v595, 0xCu);
                              }

                              v445 = v527;
                            }

                            [v443 updateIsBlackholed:0];
                          }

                          if ([v443 smsHandshakeState] == 1)
                          {
                            mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
                            [mEMORY[0x277D1AAA8] trackSpamEvent:7];

                            [v443 updateSMSHandshakeState:0xFFFFFFFFLL];
                            v445 = v527;
                          }

                          if ([(IMDTelephonyIncomingMessageContext *)v445 isSendEnabled])
                          {
                            if ([v443 state] == 4)
                            {
                              v449 = 0;
                              goto LABEL_507;
                            }
                          }

                          else if (-[IMDTelephonyIncomingMessageContext isGroupChat](v445, "isGroupChat") || ![v443 isFiltered])
                          {
                            if (IMOSLoggingEnabled())
                            {
                              v453 = OSLogHandleForIMFoundationCategory();
                              if (os_log_type_enabled(v453, OS_LOG_TYPE_INFO))
                              {
                                isGroupChat = [(IMDTelephonyIncomingMessageContext *)v445 isGroupChat];
                                isFiltered = [v443 isFiltered];
                                v456 = @"NO";
                                if (isGroupChat)
                                {
                                  v456 = @"YES";
                                }

                                *v595 = 138412546;
                                *v596 = v456;
                                *&v596[8] = 2048;
                                *&v596[10] = isFiltered;
                                _os_log_impl(&dword_22B4CC000, v453, OS_LOG_TYPE_INFO, "Received a read only request for a group chat: %@ or known chat: %lld", v595, 0x16u);
                              }

                              v445 = v527;
                            }
                          }

                          else
                          {
                            v452 = IMDTelephonyServiceLogHandle();
                            if (os_log_type_enabled(v452, OS_LOG_TYPE_DEFAULT))
                            {
                              *v595 = 0;
                              _os_log_impl(&dword_22B4CC000, v452, OS_LOG_TYPE_DEFAULT, "Replying is disabled, setting join state to Read Only", v595, 2u);
                            }

                            v449 = 4;
                            v445 = v527;
LABEL_507:
                            [v443 setState:v449];
                          }

                          displayName4 = [(IMDTelephonyIncomingMessageContext *)v445 displayName];

                          if (displayName4)
                          {
                            displayName5 = [(IMDTelephonyIncomingMessageContext *)v527 displayName];
                            [v443 updateDisplayName:displayName5];
LABEL_516:
                          }

                          if ([MEMORY[0x277D1AC58] isInternationalSpamFilteringEnabled])
                          {
                            v458 = +[IMDChatRegistry sharedInstance];
                            if (v443)
                            {
                              chatIdentifier2 = [v443 chatIdentifier];
                              [v458 existingiMessageChatForID:chatIdentifier2 withChatStyle:{objc_msgSend(v443, "style")}];
                            }

                            else
                            {
                              chatIdentifier2 = [(IMDTelephonyIncomingMessageContext *)v527 chatIdentifier];
                              [v458 existingiMessageChatForID:chatIdentifier2 withChatStyle:{-[IMDTelephonyIncomingMessageContext style](v527, "style")}];
                            }
                            v460 = ;

                            if (v460 && [v460 isBlackholed])
                            {
                              v461 = IMDTelephonyServiceLogHandle();
                              if (os_log_type_enabled(v461, OS_LOG_TYPE_DEFAULT))
                              {
                                guid3 = [v460 guid];
                                *v595 = 138412290;
                                *v596 = guid3;
                                _os_log_impl(&dword_22B4CC000, v461, OS_LOG_TYPE_DEFAULT, "Unblackholing sibling iMessage chat (%@) on reception of SMS message.", v595, 0xCu);
                              }

                              if ([(IMDTelephonyIncomingMessageContext *)v527 isGroupChat])
                              {
                                mEMORY[0x277D1AAA8]2 = [MEMORY[0x277D1AAA8] sharedInstance];
                                [mEMORY[0x277D1AAA8]2 trackSpamEvent:21];
                              }

                              else
                              {
                                mEMORY[0x277D1AAA8]2 = [MEMORY[0x277D1AAA8] sharedInstance];
                                [mEMORY[0x277D1AAA8]2 trackSpamEvent:20];
                              }

                              [v460 updateIsBlackholed:0];
                              v464 = +[IMDMessageStore sharedInstance];
                              lastMessage = [v460 lastMessage];
                              guid4 = [lastMessage guid];
                              [v464 markMessageGUIDUnread:guid4];
                            }
                          }

                          v467 = IMDTelephonyServiceLogHandle();
                          if (os_log_type_enabled(v467, OS_LOG_TYPE_DEFAULT))
                          {
                            participants8 = [(IMDTelephonyIncomingMessageContext *)v527 participants];
                            *v595 = 138412290;
                            *v596 = participants8;
                            _os_log_impl(&dword_22B4CC000, v467, OS_LOG_TYPE_DEFAULT, "   participants: %@", v595, 0xCu);
                          }

                          v469 = IMDTelephonyServiceLogHandle();
                          if (os_log_type_enabled(v469, OS_LOG_TYPE_DEFAULT))
                          {
                            guid5 = [v443 guid];
                            *v595 = 138412546;
                            *v596 = v443;
                            *&v596[8] = 2112;
                            *&v596[10] = guid5;
                            _os_log_impl(&dword_22B4CC000, v469, OS_LOG_TYPE_DEFAULT, "   found chat: %@ (%@)", v595, 0x16u);
                          }

                          v471 = IMDTelephonyServiceLogHandle();
                          if (os_log_type_enabled(v471, OS_LOG_TYPE_DEFAULT))
                          {
                            isGroupChat2 = [(IMDTelephonyIncomingMessageContext *)v527 isGroupChat];
                            *v595 = 67109120;
                            *v596 = isGroupChat2;
                            _os_log_impl(&dword_22B4CC000, v471, OS_LOG_TYPE_DEFAULT, "   isGroupChat: %{BOOL}d", v595, 8u);
                          }

                          v473 = IMDTelephonyServiceLogHandle();
                          if (os_log_type_enabled(v473, OS_LOG_TYPE_DEFAULT))
                          {
                            chatIdentifier3 = [(IMDTelephonyIncomingMessageContext *)v527 chatIdentifier];
                            *v595 = 138412290;
                            *v596 = chatIdentifier3;
                            _os_log_impl(&dword_22B4CC000, v473, OS_LOG_TYPE_DEFAULT, "   chatIdentifier: %@", v595, 0xCu);
                          }

                          v534[0] = MEMORY[0x277D85DD0];
                          v534[1] = 3221225472;
                          v534[2] = sub_22B6C7F80;
                          v534[3] = &unk_278708388;
                          v475 = v527;
                          v535 = v475;
                          selfCopy2 = self;
                          v538 = buf;
                          v539 = replaceMessage;
                          v476 = v498;
                          v537 = v476;
                          v540 = relayCopy;
                          v477 = _Block_copy(v534);
                          sender28 = [(IMDTelephonyIncomingMessageContext *)v475 sender];
                          mEMORY[0x277D1A9B8]5 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
                          isMergeBusinessSenderIndiaEnabled2 = [mEMORY[0x277D1A9B8]5 isMergeBusinessSenderIndiaEnabled];

                          if (isMergeBusinessSenderIndiaEnabled2 && [(IMDTelephonyIncomingMessageContext *)v475 isMergedBusinessThread])
                          {
                            senderUnformatted2 = [(IMDTelephonyIncomingMessageContext *)v475 senderUnformatted];

                            sender28 = senderUnformatted2;
                          }

                          v595[0] = 0;
                          filteringController = [(IMDTelephonyServiceSession *)self filteringController];
                          chatIdentifier4 = [(IMDTelephonyIncomingMessageContext *)v475 chatIdentifier];
                          participants9 = [(IMDTelephonyIncomingMessageContext *)v475 participants];
                          LOBYTE(v486) = [*(*&buf[8] + 40) messageContainsOneTimeCode];
                          [filteringController categorizeIncomingSMSMessage:v526 messageGUID:v476 sender:sender28 wasRelayed:relayCopy chatIdentifier:chatIdentifier4 participants:participants9 checkingForSpam:v595 myReceiverISOCountryCode:v505 messageBody:osloga foundChat:v443 service:nameCopy containsOneTimeCode:v486 completion:v477];

                          if (cf1c)
                          {
                            CFRelease(cf1c);
                          }

                          if (blockCopy)
                          {
                            (*(blockCopy + 2))(blockCopy, 1, v476, v595[0]);
                          }

                          _Block_object_dispose(buf, 8);
                          goto LABEL_547;
                        }

                        chatIdentifier5 = [(IMDTelephonyIncomingMessageContext *)v527 chatIdentifier];
                        v595[0] = [(IMDTelephonyIncomingMessageContext *)v527 style];
                        v541 = chatIdentifier5;
                        [(IMDServiceSession *)self canonicalizeChatIdentifier:&v541 style:v595];
                        displayName5 = v541;

                        [(IMDTelephonyIncomingMessageContext *)v527 setChatIdentifier:displayName5];
                        [(IMDTelephonyIncomingMessageContext *)v527 setStyle:v595[0]];
                        goto LABEL_516;
                      }
                    }
                  }
                }

                else if (IsItemBlocked)
                {
                  goto LABEL_60;
                }
              }

              v80 = CMFItemCreateWithEmailAddress();
              v79 = CMFBlockListIsItemBlocked() != 0;
              if (v80)
              {
                CFRelease(v80);
              }

              goto LABEL_64;
            }
          }
        }
      }
    }

    goto LABEL_57;
  }

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "**** Invalid payload, ignoring.", buf, 2u);
    }
  }

  if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy, 0, 0, 0);
  }

LABEL_548:

  v485 = *MEMORY[0x277D85DE8];
}

- (id)_businessNameForIndiaShortCodeSender:(id)sender
{
  senderCopy = sender;
  countryCode = [senderCopy countryCode];
  v5 = [countryCode isEqual:@"in"];

  if (v5)
  {
    v6 = MEMORY[0x277CCAC68];
    v7 = MEMORY[0x277CCACA8];
    v8 = IMIndiaBusinessShortCodeRegex();
    v9 = [v7 stringWithFormat:@"^%@$", v8];
    v10 = [v6 regularExpressionWithPattern:v9 options:0 error:0];

    sender = [senderCopy sender];
    sender2 = [senderCopy sender];
    v13 = [v10 matchesInString:sender options:0 range:{0, objc_msgSend(sender2, "length")}];

    if ([v13 count] == 1 && (objc_msgSend(v13, "objectAtIndexedSubscript:", 0), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "numberOfRanges"), v14, v15 >= 3))
    {
      v16 = [v13 objectAtIndexedSubscript:0];
      v17 = [v16 rangeAtIndex:2];
      v19 = v18;
      sender3 = [senderCopy sender];
      v21 = [sender3 substringWithRange:{v17, v19}];
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)_identifierForMergedBusinessThread:(id)thread
{
  v3 = [(IMDTelephonyServiceSession *)self _businessNameForIndiaShortCodeSender:thread];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (id)getLabelFor:(int64_t)for subCategory:(int64_t)category
{
  v20 = *MEMORY[0x277D85DE8];
  if (for == 3)
  {
    label = @"smsfp";
  }

  else
  {
    if (for != 4)
    {
      label = @"filtered";
      goto LABEL_18;
    }

    label = @"smsft";
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  fetchSMSFilterExtensionParams = [MEMORY[0x277D1AB70] fetchSMSFilterExtensionParams];
  v8 = [fetchSMSFilterExtensionParams countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(fetchSMSFilterExtensionParams);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 action] == for && objc_msgSend(v12, "subAction") == category)
        {
          label = [v12 label];
          goto LABEL_16;
        }
      }

      v9 = [fetchSMSFilterExtensionParams countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

LABEL_18:
  v13 = *MEMORY[0x277D85DE8];

  return label;
}

- (void)_registerChatForIncomingMessageWithContext:(id)context
{
  v39[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  selfCopy = self;
  if ([contextCopy isGroupChat])
  {
    participants = [contextCopy participants];
    unformattedIDs = [contextCopy unformattedIDs];
    countryCodes = [contextCopy countryCodes];
    v8 = [(IMDTelephonyServiceSession *)self createHandleInfoForParticipants:participants unformattedIDs:unformattedIDs countryCodes:countryCodes isGroupChat:1];
  }

  else
  {
    sender = [contextCopy sender];
    v39[0] = sender;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
    senderUnformatted = [contextCopy senderUnformatted];
    sender2 = senderUnformatted;
    if (!senderUnformatted)
    {
      sender2 = [contextCopy sender];
    }

    v38 = sender2;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
    countryCode = [contextCopy countryCode];
    v15 = countryCode;
    v16 = @"us";
    if (countryCode)
    {
      v16 = countryCode;
    }

    v37 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
    v18 = [(IMDTelephonyServiceSession *)self createHandleInfoForParticipants:v10 unformattedIDs:v13 countryCodes:v17 isGroupChat:0];

    if (!senderUnformatted)
    {
    }

    v8 = v18;
  }

  if (([contextCopy isSendEnabled] & 1) != 0 || objc_msgSend(contextCopy, "isGroupChat"))
  {
    chatIdentifier = [contextCopy chatIdentifier];
    style = [contextCopy style];
    displayName = [contextCopy displayName];
    groupID = [contextCopy groupID];
    originalGroupID = [contextCopy originalGroupID];
    account = [(IMDServiceSession *)self account];
    v24 = v8;
    category = [contextCopy category];
    spamExtensionName = [contextCopy spamExtensionName];
    LOBYTE(v33) = 0;
    v32 = category;
    v8 = v24;
    chatIdentifier2 = chatIdentifier;
    [(IMDServiceSession *)selfCopy didUpdateChatStatus:2 chat:chatIdentifier style:style displayName:displayName groupID:groupID originalGroupID:originalGroupID lastAddressedHandle:0 lastAddressedSIMID:0 handleInfo:v24 account:account category:v32 spamExtensionName:spamExtensionName isBlackholed:v33 spamDetectionSource:0];
  }

  else
  {
    v28 = IMDTelephonyServiceLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_DEFAULT, "Replying is disabled, joining chat with Read Only state", buf, 2u);
    }

    chatIdentifier2 = [contextCopy chatIdentifier];
    style2 = [contextCopy style];
    displayName = [contextCopy displayName];
    category2 = [contextCopy category];
    groupID = [contextCopy spamExtensionName];
    [(IMDServiceSession *)selfCopy didJoinReadOnlyChat:chatIdentifier2 style:style2 displayName:displayName groupID:0 handleInfo:v8 category:category2 spamExtensionName:groupID];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (id)_updatedMessageContextForJunkProcessing:(id)processing
{
  v19 = *MEMORY[0x277D85DE8];
  processingCopy = processing;
  filteringController = [(IMDTelephonyServiceSession *)self filteringController];
  if (![filteringController _isMessageCategorized:{objc_msgSend(processingCopy, "category")}])
  {

    goto LABEL_9;
  }

  isGroupChat = [processingCopy isGroupChat];

  if (isGroupChat)
  {
LABEL_9:
    v7 = processingCopy;
    goto LABEL_10;
  }

  v7 = [processingCopy copy];

  v8 = -[IMDTelephonyServiceSession getLabelFor:subCategory:](self, "getLabelFor:subCategory:", [v7 category], objc_msgSend(v7, "subCategory"));
  if ([v7 category] != 2)
  {
    filteringController2 = [(IMDTelephonyServiceSession *)self filteringController];
    chatIdentifier = [v7 chatIdentifier];
    v11 = [filteringController2 _createNewChatIdentifierFromChatIdentifier:chatIdentifier andCategoryLabel:v8];
    [v7 setChatIdentifier:v11];
  }

  chatIdentifier2 = [v7 chatIdentifier];
  [v7 setSender:chatIdentifier2];

  v13 = IMDTelephonyServiceLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    chatIdentifier3 = [v7 chatIdentifier];
    v17 = 138412290;
    v18 = chatIdentifier3;
    _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEFAULT, "Generated new filtered chat identifier: %@", &v17, 0xCu);
  }

LABEL_10:
  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)chatForIncomingMessageContext:(id)context createIfNotExists:(BOOL)exists
{
  existsCopy = exists;
  contextCopy = context;
  if ([contextCopy isGroupChat])
  {
    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isOneChatEnabled = [mEMORY[0x277D1A9B8] isOneChatEnabled];

    selfCopy = self;
    v75 = existsCopy;
    if (isOneChatEnabled)
    {
      sender2 = objc_alloc_init(MEMORY[0x277CBEB18]);
      groupID = [contextCopy groupID];

      if (groupID)
      {
        groupID2 = [contextCopy groupID];
        [sender2 addObject:groupID2];
      }

      originalGroupID = [contextCopy originalGroupID];

      if (originalGroupID)
      {
        originalGroupID2 = [contextCopy originalGroupID];
        [sender2 addObject:originalGroupID2];
      }

      destinationCallerID2 = +[IMDChatRegistry sharedInstance];
      sender = [contextCopy sender];
      destinationCallerID = [contextCopy destinationCallerID];
      service = [(IMDServiceSession *)self service];
      groupsMergeDisplayNames = [service groupsMergeDisplayNames];
      if (groupsMergeDisplayNames)
      {
        displayName = [contextCopy displayName];
      }

      else
      {
        displayName = 0;
      }

      participants = [contextCopy participants];
      groupID3 = [contextCopy groupID];
      service2 = [(IMDServiceSession *)self service];
      internalName = [service2 internalName];
      v73 = destinationCallerID;
      v18 = [destinationCallerID2 bestCandidateGroupChatWithFromIdentifier:sender toIdentifier:destinationCallerID displayName:displayName participants:participants updatingToLatestiMessageGroupID:groupID3 sortedIdentifiers:sender2 serviceName:internalName];

      if (groupsMergeDisplayNames)
      {
      }
    }

    else
    {
      sender2 = [contextCopy sender];
      destinationCallerID2 = [contextCopy destinationCallerID];
      sender = [(IMDServiceSession *)self service];
      groupsMergeDisplayNames2 = [sender groupsMergeDisplayNames];
      if (groupsMergeDisplayNames2)
      {
        displayName2 = [contextCopy displayName];
      }

      else
      {
        displayName2 = 0;
      }

      participants2 = [contextCopy participants];
      groupID4 = [contextCopy groupID];
      originalGroupID3 = [contextCopy originalGroupID];
      v18 = [(IMDServiceSession *)selfCopy bestCandidateGroupChatWithFromIdentifier:sender2 toIdentifier:destinationCallerID2 displayName:displayName2 participants:participants2 groupID:groupID4 originalGroupID:originalGroupID3];

      if (groupsMergeDisplayNames2)
      {
      }
    }

    self = selfCopy;
    existsCopy = v75;
  }

  else
  {
    sender2 = +[IMDChatRegistry sharedInstance];
    destinationCallerID2 = [contextCopy chatIdentifier];
    sender = [(IMDServiceSession *)self account];
    v18 = [sender2 existingChatForID:destinationCallerID2 account:sender];
  }

  if (!v18)
  {
    if (!existsCopy)
    {
      v18 = 0;
      goto LABEL_50;
    }

    [(IMDTelephonyServiceSession *)self _registerChatForIncomingMessageWithContext:contextCopy];
    v39 = +[IMDChatRegistry sharedInstance];
    chatIdentifier = [contextCopy chatIdentifier];
    account = [(IMDServiceSession *)self account];
    v18 = [v39 existingChatWithIdentifier:chatIdentifier account:account];
    goto LABEL_49;
  }

  service3 = [(IMDServiceSession *)self service];
  v29 = [service3 supportsCapability:*MEMORY[0x277D1A558]];

  if (!v29)
  {
    goto LABEL_50;
  }

  mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isMissingMessagesEnabled = [mEMORY[0x277D1A9B8]2 isMissingMessagesEnabled];

  groupID5 = [contextCopy groupID];
  v33 = groupID5;
  if (isMissingMessagesEnabled)
  {
    if (!groupID5)
    {
      goto LABEL_25;
    }

    v34 = *MEMORY[0x277D19780];
    v35 = [v18 latestIdentifierForDomain:*MEMORY[0x277D19780]];
    groupID6 = [contextCopy groupID];
    v37 = [v35 isEqualToString:groupID6];

    if ((v37 & 1) == 0)
    {
      groupID7 = [contextCopy groupID];
      [v18 assignIdentifier:groupID7 forDomain:v34 isHistoricalIdentifier:0];

      v38 = 1;
    }

    else
    {
LABEL_25:
      v38 = 0;
    }

    service4 = [(IMDServiceSession *)self service];
    internalName2 = [service4 internalName];
    originalGroupID10 = IMChatLookupDomainForServiceName();

    groupID8 = [contextCopy groupID];
    if (groupID8)
    {
      v51 = groupID8;
      v52 = [v18 identifiersForDomain:originalGroupID10];
      groupID9 = [contextCopy groupID];
      v54 = [v52 containsObject:groupID9];

      if ((v54 & 1) == 0)
      {
        groupID10 = [contextCopy groupID];
        service5 = [(IMDServiceSession *)self service];
        [v18 assignIdentifier:groupID10 forDomain:originalGroupID10 isHistoricalIdentifier:{objc_msgSend(service5, "groupIDIsHistoricalIdentifier")}];

        v38 = 1;
      }
    }

    originalGroupID4 = [contextCopy originalGroupID];
    if (!originalGroupID4)
    {
      goto LABEL_38;
    }

    v58 = originalGroupID4;
    v59 = [v18 identifiersForDomain:originalGroupID10];
    originalGroupID5 = [contextCopy originalGroupID];
    v61 = [v59 containsObject:originalGroupID5];

    if (v61)
    {
LABEL_38:

      if ((v38 & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }

    originalGroupID6 = [contextCopy originalGroupID];
    service6 = [(IMDServiceSession *)self service];
    [v18 assignIdentifier:originalGroupID6 forDomain:originalGroupID10 isHistoricalIdentifier:{objc_msgSend(service6, "groupIDIsHistoricalIdentifier") ^ 1}];

    goto LABEL_47;
  }

  if (!groupID5)
  {
    goto LABEL_31;
  }

  groupID11 = [v18 groupID];
  groupID12 = [contextCopy groupID];
  v44 = [groupID11 isEqualToString:groupID12];

  if ((v44 & 1) == 0)
  {
    groupID13 = [contextCopy groupID];
    [v18 setGroupID:groupID13];

    v45 = 1;
  }

  else
  {
LABEL_31:
    v45 = 0;
  }

  originalGroupID7 = [contextCopy originalGroupID];
  if (originalGroupID7)
  {
    v64 = originalGroupID7;
    originalGroupID8 = [v18 originalGroupID];
    originalGroupID9 = [contextCopy originalGroupID];
    v67 = [originalGroupID8 isEqualToString:originalGroupID9];

    if ((v67 & 1) == 0)
    {
      originalGroupID10 = [contextCopy originalGroupID];
      [v18 setOriginalGroupID:originalGroupID10];
LABEL_47:

      goto LABEL_48;
    }
  }

  if (v45)
  {
LABEL_48:
    v70 = +[IMDChatStore sharedInstance];
    [v70 storeChat:v18];

    v39 = -[IMDServiceSession broadcasterForChatListenersWithBlackholeStatus:](self, "broadcasterForChatListenersWithBlackholeStatus:", [v18 isBlackholed]);
    chatIdentifier = [v18 guid];
    account = [v18 dictionaryRepresentation];
    [v39 chat:chatIdentifier updated:account];
LABEL_49:
  }

LABEL_50:

  return v18;
}

- (id)findChatAndLinkMessage:(id)message context:(id)context
{
  v54 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v7 = [context copy];
  v8 = IMDTelephonyServiceLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    chatIdentifier = [v7 chatIdentifier];
    category = [v7 category];
    subCategory = [v7 subCategory];
    spamExtensionName = [v7 spamExtensionName];
    *buf = 138413058;
    v47 = chatIdentifier;
    v48 = 2048;
    v49 = category;
    v50 = 2048;
    v51 = subCategory;
    v52 = 2112;
    v53 = spamExtensionName;
    _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "findChatAndLinkMessage called for chatid %@ category %ld, subCategory %ld, extensionName %@", buf, 0x2Au);
  }

  v13 = [(IMDTelephonyServiceSession *)self _updatedMessageContextForJunkProcessing:v7];

  sender = [v13 sender];
  [messageCopy setSender:sender];

  v15 = [(IMDTelephonyServiceSession *)self chatForIncomingMessageContext:v13 createIfNotExists:1];
  category2 = [v13 category];
  subCategory2 = [v13 subCategory];
  spamExtensionName2 = [v13 spamExtensionName];
  [(IMDTelephonyServiceSession *)self _updateCategoryForChat:v15 andMessage:messageCopy category:category2 subCategory:subCategory2 spamExtensionName:spamExtensionName2];

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  LODWORD(subCategory2) = [mEMORY[0x277D1A9B8] stewieEnabled];

  if (subCategory2)
  {
    if (([v15 isEmergencyChat] & 1) == 0)
    {
      mEMORY[0x277D18998] = [MEMORY[0x277D18998] sharedInstance];
      sender2 = [messageCopy sender];
      v22 = [mEMORY[0x277D18998] isPhoneNumberEmergencyNumber:sender2];

      if (v22)
      {
        v23 = IMDTelephonyServiceLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_DEFAULT, "Receiving: Chat has been marked as an emergency chat", buf, 2u);
        }

        [v15 updateIsEmergencyChat:1];
      }
    }
  }

  chatIdentifier2 = [v13 chatIdentifier];
  style = [v13 style];
  myNumberString = [v13 myNumberString];
  mySIMIDString = [v13 mySIMIDString];
  -[IMDTelephonyServiceSession _updateLastAddressedIDsIfNeededForChatWithIdentifier:style:lastAddressedHandle:lastAddressedSIMID:iMessageCapability:](self, "_updateLastAddressedIDsIfNeededForChatWithIdentifier:style:lastAddressedHandle:lastAddressedSIMID:iMessageCapability:", chatIdentifier2, style, myNumberString, mySIMIDString, [v13 capability]);

  mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  LODWORD(style) = [mEMORY[0x277D1A9B8]2 isMergeBusinessSenderIndiaEnabled];

  if (style && [v13 isMergedBusinessThread])
  {
    [v15 setState:4];
    [v15 setMergedBusinessThread:1];
  }

  v43 = v15;
  sender3 = [messageCopy sender];
  IsEmail = IMStringIsEmail();

  fileTransferGUIDs = [messageCopy fileTransferGUIDs];
  v32 = [fileTransferGUIDs count] != 0;

  v44[0] = *MEMORY[0x277D1A2A0];
  v33 = [MEMORY[0x277CCABB0] numberWithLong:0];
  v45[0] = v33;
  v44[1] = *MEMORY[0x277D1A2F0];
  v34 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "isGroupChat")}];
  v45[1] = v34;
  v44[2] = *MEMORY[0x277D1A2E8];
  v35 = [MEMORY[0x277CCABB0] numberWithBool:IsEmail ^ 1];
  v45[2] = v35;
  v44[3] = *MEMORY[0x277D1A2E0];
  v36 = [MEMORY[0x277CCABB0] numberWithInt:IsEmail];
  v45[3] = v36;
  v44[4] = *MEMORY[0x277D1A2C8];
  v37 = [MEMORY[0x277CCABB0] numberWithBool:v32];
  v45[4] = v37;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:5];

  mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
  [mEMORY[0x277D1AAA8] trackEvent:*MEMORY[0x277D1A210] withDictionary:v38];

  subject = [messageCopy subject];
  -[IMDTelephonyServiceSession _carrierReportJunkMetricsForSMSWithSubject:isGroupchat:hasAttachments:](self, "_carrierReportJunkMetricsForSMSWithSubject:isGroupchat:hasAttachments:", subject, [v13 isGroupChat], v32);

  v41 = *MEMORY[0x277D85DE8];

  return v43;
}

- (id)_messageDictionaryToRelayWithIncomingMessageDictionary:(id)dictionary smsMessage:(id)message
{
  messageCopy = message;
  v6 = [dictionary mutableCopy];
  gUID = [messageCopy GUID];
  v8 = [gUID length];

  if (v8)
  {
    gUID2 = [messageCopy GUID];
    [v6 setObject:gUID2 forKeyedSubscript:IMDCTMessageDictionaryGUIDKey];
  }

  return v6;
}

- (void)_carrierReportJunkMetricsForSMSWithSubject:(id)subject isGroupchat:(BOOL)groupchat hasAttachments:(BOOL)attachments
{
  groupchatCopy = groupchat;
  v16[1] = *MEMORY[0x277D85DE8];
  subjectCopy = subject;
  v8 = subjectCopy;
  if (groupchatCopy || attachments || [subjectCopy length])
  {
    if (groupchatCopy)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 1;
  }

  mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
  v11 = *MEMORY[0x277D1A0D0];
  v15 = @"type";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
  v16[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [mEMORY[0x277D1AAA8] trackEvent:v11 withDictionary:v13];

  v14 = *MEMORY[0x277D85DE8];
}

+ (id)backwardCompatibilityPrefixForLanguageCode:(id)code
{
  sub_22B7DAC78();
  codeCopy = code;
  sub_22B7DAC58();
  sub_22B7DB6A8();
  sub_22B7DAC38();

  v5 = sub_22B7DB678();

  return v5;
}

@end
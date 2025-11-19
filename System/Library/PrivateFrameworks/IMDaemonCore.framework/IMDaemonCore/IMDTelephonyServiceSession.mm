@interface IMDTelephonyServiceSession
+ (id)backwardCompatibilityPrefixForLanguageCode:(id)a3;
+ (id)createCompatibleBodyForMessage:(id)a3 processedMessageItem:(id)a4;
+ (id)getPlainTextForMessage:(id)a3 processedMessageItem:(id)a4;
+ (void)createFallbackTextForMessage:(id)a3 processedMessageItem:(id)a4 leadingFallbackText:(id)a5 trailingFallbackText:(id)a6;
- (BOOL)_allowedToProcessMessageFromToken:(id)a3 fromID:(id)a4 reflectOnly:(BOOL)a5 isInProxyMode:(BOOL)a6;
- (BOOL)_canLocallySendWithPhoneNumber:(id)a3;
- (BOOL)_canSendWithCallerID:(id)a3;
- (BOOL)_disableScreenTimeRestrictionsForMessageItem:(id)a3 chat:(id)a4 watchSendsOverCellular:(BOOL)a5 emergencyNumbersFoundInRecipients:(int64_t *)a6;
- (BOOL)_hasRegisteredLocalPhoneNumberForHandle:(id)a3;
- (BOOL)_newFeatureRequiredByMessageItem:(id)a3 chatIdentifier:(id)a4;
- (BOOL)_replicationDisabledByServerBag;
- (BOOL)_replicationRequiredForFeaturesUsedByMessageBody:(id)a3;
- (BOOL)_shouldForceReplicationForStaleChatWithLastKnownReplicationDate:(id)a3;
- (BOOL)_shouldReplicateMessageItem:(id)a3 chatStyle:(unsigned __int8)a4 lastKnownReplicationDate:(id)a5 callerID:(id)a6;
- (BOOL)_sosReplicationDisabledByServerBag;
- (BOOL)acceptsIncomingReplicatedMessagesFromAccount:(id)a3 toIdentifier:(id)a4 isSOS:(BOOL)a5;
- (BOOL)allowedToSendMessage:(id)a3 toChat:(id)a4;
- (BOOL)incomingMessageHasTooManyRecipients:(id)a3;
- (BOOL)isGroupMessagingEnabledFor:(id)a3;
- (BOOL)reflectPriorityMessageToPeerDevicesForMessageGUIDs:(id)a3;
- (BOOL)replicationRequiredForFeaturesUsedByMessageItem:(id)a3;
- (BOOL)responsibleForMessageID:(id)a3;
- (IMDRelayEnrollmentController)relayEnrollmentController;
- (IMDTelephonyServiceSession)initWithAccount:(id)a3 service:(id)a4 replicatingForSession:(id)a5;
- (double)_periodicReplicationTimeInterval;
- (id)_businessNameForIndiaShortCodeSender:(id)a3;
- (id)_callerIDUsingFromIdentifier:(id)a3;
- (id)_chatForGroupID:(id)a3 originalGroupID:(id)a4;
- (id)_countryCodeForIncomingTextMessage:(id)a3;
- (id)_identifierForMergedBusinessThread:(id)a3;
- (id)_messageDictionaryToRelayWithIncomingMessageDictionary:(id)a3 smsMessage:(id)a4;
- (id)_phoneNumberForRegisteredSimID:(id)a3;
- (id)_replicatedMessageGUIDToReleaseFromMessageDictionary:(id)a3;
- (id)_resolveHandlesFor:(id)a3 withMessage:(id)a4;
- (id)_resolvedCallerIDForLastAddressedLocalHandle:(id)a3 lastAddressedSIMID:(id)a4 saveResolvedCallerIDToChat:(BOOL *)a5;
- (id)_sendingHandleForOutgoingMessageInChat:(id)a3 fromIdentifier:(id)a4;
- (id)_updatedMessageContextForJunkProcessing:(id)a3;
- (id)chatForIncomingMessageContext:(id)a3 createIfNotExists:(BOOL)a4;
- (id)chatForOutgoingMessage:(id)a3 fromIdentifier:(id)a4 isInProxyMode:(BOOL)a5 createIfNotExists:(BOOL)a6;
- (id)compatibleMessageToSendForMessageItem:(id)a3;
- (id)createHandleInfoFor:(id)a3;
- (id)createHandleInfoForParticipants:(id)a3 unformattedIDs:(id)a4 countryCodes:(id)a5 isGroupChat:(BOOL)a6;
- (id)findChatAndLinkMessage:(id)a3 context:(id)a4;
- (id)getLabelFor:(int64_t)a3 subCategory:(int64_t)a4;
- (id)outgoingReplicationCallerIDForChat:(id)a3;
- (id)preferredAccountForReplicationOnService:(id)a3 eligibleAccounts:(id)a4;
- (id)replicationPhoneNumbers;
- (id)subscriptionContextForChat:(id)a3;
- (int64_t)_iMessageCapabilityForSIMID:(id)a3;
- (int64_t)maxSizePerAttachmentWithCount:(int)a3 lastAddressHandle:(id)a4 lastAddressedSIMID:(id)a5;
- (unint64_t)_sendingDecisionForMessageItem:(id)a3 callerID:(id)a4 lastAddressedLocalHandle:(id)a5 lastAddressedSIMID:(id)a6;
- (unint64_t)maxRecipientsForPhoneNumber:(id)a3 simID:(id)a4;
- (void)_addOriginatedMessage:(id)a3;
- (void)_carrierReportJunkMetricsForSMSWithSubject:(id)a3 isGroupchat:(BOOL)a4 hasAttachments:(BOOL)a5;
- (void)_clearInactivityTimer;
- (void)_clearTimoutTimerForRelayMessageID:(id)a3;
- (void)_deferredReplicatedMessageReleaseWithAllowedMessage:(id)a3 outgoingProxyBlock:(id)a4;
- (void)_enqueueBlock:(id)a3 withTimeout:(double)a4;
- (void)_findUnsubscribeTextForChat:(id)a3 inMessageBody:(id)a4;
- (void)_generatePreviewForTransfer:(id)a3 message:(id)a4;
- (void)_messageTimedOut:(id)a3;
- (void)_processReceivedDictionaryInBlastDoor:(id)a3 storageContext:(id)a4 receivedViaRelay:(BOOL)a5 withCompletionBlock:(id)a6;
- (void)_processReceivedSMSMessage:(id)a3 storageContext:(id)a4 receivedViaRelay:(BOOL)a5 serviceName:(id)a6 completionBlock:(id)a7;
- (void)_registerChatForIncomingMessageWithContext:(id)a3;
- (void)_registerForCTNotifications;
- (void)_registerForIncomingMessages:(id)a3;
- (void)_relayMessage:(id)a3 chat:(id)a4 didSendSMS:(BOOL)a5 attemptingReplication:(BOOL)a6 forceReflection:(BOOL)a7 relayToWatchOnly:(BOOL)a8 shouldDisableScreenTimeRestrictions:(BOOL)a9 callerID:(id)a10;
- (void)_releasePendingMessagesAndProcessReceivedSMSMessage:(id)a3 storageContext:(id)a4 receivedViaRelay:(BOOL)a5 serviceName:(id)a6 completionBlock:(id)a7;
- (void)_removeOriginatedMessage:(id)a3;
- (void)_reportTelephonyJunkForMessageItem:(id)a3 chat:(id)a4;
- (void)_setClearMessageSendTimer;
- (void)_setTimeoutTimerForRelayMessageID:(id)a3 timeout:(double)a4;
- (void)_setupCoreTelephonyObservation;
- (void)_teardownCoreTelephonyObservation;
- (void)_updateCategoryForChat:(id)a3 andMessage:(id)a4 category:(int64_t)a5 subCategory:(int64_t)a6 spamExtensionName:(id)a7;
- (void)_updatePhoneNumberCallerID;
- (void)didReceiveMessages:(id)a3 forChat:(id)a4 style:(unsigned __int8)a5 account:(id)a6 fromIDSID:(id)a7 completion:(id)a8;
- (void)didSendMessage:(id)a3 forChat:(id)a4 style:(unsigned __int8)a5 account:(id)a6 forceDate:(id)a7 itemIsComingFromStorage:(BOOL)a8;
- (void)enrollDeviceInSMSRelay:(id)a3;
- (void)enrollSelfDeviceInSMSRelay;
- (void)handler:(id)a3 incomingDownloadMessage:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 fromToken:(id)a7 timeStamp:(id)a8 storageContext:(id)a9;
- (void)handler:(id)a3 incomingGroupMutationMessage:(id)a4 timeStamp:(id)a5 storageContext:(id)a6 fromToken:(id)a7 fromID:(id)a8 isInProxyMode:(BOOL)a9;
- (void)handler:(id)a3 incomingPlainTextMessage:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 fromToken:(id)a7 timeStamp:(id)a8 storageContext:(id)a9;
- (void)handler:(id)a3 localFileRequest:(id)a4 storageContext:(id)a5;
- (void)handler:(id)a3 localFileResponse:(id)a4 storageContext:(id)a5;
- (void)handler:(id)a3 localIncomingDownloadMessage:(id)a4 storageContext:(id)a5;
- (void)handler:(id)a3 localIncommingMessage:(id)a4 storageContext:(id)a5;
- (void)handler:(id)a3 localMessageError:(id)a4 storageContext:(id)a5;
- (void)handler:(id)a3 localOutgoingDownloadMessage:(id)a4 isBeingReplayed:(BOOL)a5 storageContext:(id)a6;
- (void)handler:(id)a3 localOutgoingMessage:(id)a4 isBeingReplayed:(BOOL)a5 storageContext:(id)a6;
- (void)handler:(id)a3 messageGUIDToReport:(id)a4;
- (void)handler:(id)a3 messageIDRead:(id)a4 readByMe:(BOOL)a5 timeStamp:(id)a6 toIdentifier:(id)a7 fromIdentifier:(id)a8 fromToken:(id)a9 reflectOnly:(BOOL)a10 storageContext:(id)a11;
- (void)handler:(id)a3 messageIDSendFailure:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 timeStamp:(id)a7 storageContext:(id)a8;
- (void)handler:(id)a3 messageIDSent:(id)a4 wasInterworked:(BOOL)a5 toIdentifier:(id)a6 fromIdentifier:(id)a7 timeStamp:(id)a8 storageContext:(id)a9;
- (void)handler:(id)a3 outgoingDownloadMessage:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 fromToken:(id)a7 messageGUID:(id)a8 timeStamp:(id)a9 isBeingReplayed:(BOOL)a10 isInProxyMode:(BOOL)a11 storageContext:(id)a12;
- (void)handler:(id)a3 outgoingPlainTextMessage:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 fromToken:(id)a7 messageGUID:(id)a8 timeStamp:(id)a9 isBeingReplayed:(BOOL)a10 isInProxyMode:(BOOL)a11 storageContext:(id)a12;
- (void)handler:(id)a3 receivedPriorityMessageCommand:(id)a4 fromIdentifier:(id)a5 toIdentifier:(id)a6 fromToken:(id)a7;
- (void)loginServiceSessionWithAccount:(id)a3;
- (void)logoutServiceSessionWithAccount:(id)a3;
- (void)processMessageSendFailure:(id)a3;
- (void)relayDisplayNameChange:(id)a3 forChat:(id)a4 fromID:(id)a5 messageID:(id)a6 didOccurLocally:(BOOL)a7;
- (void)sendDeleteCommand:(id)a3 forChatGUID:(id)a4;
- (void)sendGroupPhotoUpdate:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7;
- (void)sendRecoverCommand:(id)a3 forChatGUID:(id)a4;
- (void)sendReportJunkMessageGUID:(id)a3 shouldRelay:(BOOL)a4;
- (void)sendUnapproveToToken:(id)a3 messageGUID:(id)a4 completion:(id)a5;
- (void)unEnrollDeviceInSMSRelay:(id)a3;
@end

@implementation IMDTelephonyServiceSession

+ (id)getPlainTextForMessage:(id)a3 processedMessageItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 createCompatibleBodyForMessage:v7 processedMessageItem:v6];
  v9 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v10 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [a1 createFallbackTextForMessage:v7 processedMessageItem:v6 leadingFallbackText:v9 trailingFallbackText:v10];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v9, v8, v10];

  return v11;
}

+ (id)createCompatibleBodyForMessage:(id)a3 processedMessageItem:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v6 sendAlternateLayoutAsText])
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v6 guid];
        *buf = 138412290;
        v22 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Replacing message body with text for layout (sendAlternateLayoutAsText):%@", buf, 0xCu);
      }
    }

    v9 = [v5 payloadData];
    v10 = IMBalloonPluginFallbackText();
  }

  else
  {
    v9 = [v5 body];
    v11 = +[IMDFileTransferCenter sharedInstance];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_22B54DE90;
    aBlock[3] = &unk_2787033A8;
    v20 = v11;
    v12 = v11;
    v13 = _Block_copy(aBlock);
    v18 = 0;
    v14 = [v9 __im_attributedStringByReplacingAdaptiveImageGlyphFileTransfersUsingFileTransferProvider:v13 replacementTextProvider:&unk_283F19AC8 removedTransferGUIDsOut:&v18];
    v15 = [v14 string];
    v10 = _IMStringStrippingControlCharacters();
  }

  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (void)createFallbackTextForMessage:(id)a3 processedMessageItem:(id)a4 leadingFallbackText:(id)a5 trailingFallbackText:(id)a6
{
  v63 = *MEMORY[0x277D85DE8];
  v51 = a3;
  v9 = a4;
  v50 = a5;
  v49 = a6;
  v52 = v9;
  v10 = [v9 expressiveSendStyleID];
  v11 = [v10 length];

  if (v11)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v9 guid];
        *buf = 138412290;
        v62 = v13;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Appending expressive send style id for message %@", buf, 0xCu);
      }
    }

    v14 = [v51 _localizedBackwardsCompatibleExpressiveSendText];
    if ([v14 length])
    {
      [v49 appendFormat:@"\n%@", v14];
    }
  }

  v15 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v16 = [v15 isAutomaticIncomingTranslationEnabled];

  if (v16)
  {
    v48 = [v9 messageSummaryInfo];
    v17 = *MEMORY[0x277D1A058];
    v18 = [v48 objectForKey:*MEMORY[0x277D1A058]];

    if (v18)
    {
      v19 = [v9 messageSummaryInfo];
      v47 = [v19 objectForKeyedSubscript:v17];

      if (v47)
      {
        v45 = [MEMORY[0x277D1AA70] translationMessagePartClasses];
        v59 = 0;
        v44 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v45 fromData:v47 error:&v59];
        v43 = v59;
        v20 = v44;
        if (v44)
        {
          v21 = [v44 allValues];
          v22 = [v21 firstObject];

          if (v22)
          {
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            obj = v22;
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
                  v33 = [v32 string];
                  v26 = [v31 stringWithFormat:@"%@%@", v29, v33, v43];

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

            v35 = [a1 backwardCompatibilityPrefixForLanguageCode:v23];
            v54 = 0;
            v34 = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v35 validFormatSpecifiers:@"%@" error:&v54, v26];

            [v49 appendFormat:@"\n\n%@", v34];
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

  v36 = [v52 threadIdentifier];
  v37 = [v36 length] == 0;

  if (!v37)
  {
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = [v52 guid];
        *buf = 138412290;
        v62 = v39;
        _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Formatting plain text reply message for message %@", buf, 0xCu);
      }
    }

    v40 = IMSharedUtilitiesFrameworkBundle();
    v41 = [v40 localizedStringForKey:@"REPLIED_BACKWARD_COMPATIBILITY" value:&stru_283F23018 table:@"IMSharedUtilities"];
    [v50 appendFormat:@"%@\n", v41];
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (IMDTelephonyServiceSession)initWithAccount:(id)a3 service:(id)a4 replicatingForSession:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = IMDTelephonyServiceSession;
  v11 = [(IMDServiceSession *)&v18 initWithAccount:v8 service:v9 replicatingForSession:v10];
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

  v4 = [MEMORY[0x277D1A908] sharedInstance];
  v5 = [v4 ctPhoneNumber];
  v6 = [v5 copy];

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
    v8 = [(IMDTelephonyServiceSession *)self relayController];
    v9 = [v8 dominentPhoneNumberAlias];
    v6 = [v9 copy];

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

  v11 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v6;
    _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Updating SMS service with number: %@", &v19, 0xCu);
  }

  v12 = [(IMDServiceSession *)self account];
  v13 = MEMORY[0x277CBEAC0];
  v14 = IMGenerateLoginID();
  v15 = [v13 dictionaryWithObject:v14 forKey:*MEMORY[0x277D19420]];
  [v12 writeAccountDefaults:v15];

  v16 = [(IMDServiceSession *)self account];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v6 forKey:*MEMORY[0x277D19408]];
  [v16 writeAccountDefaults:v17];

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_callerIDUsingFromIdentifier:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 hasPrefix:@"device:"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 _stripFZIDPrefix];
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = v4;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Stripping FZIDPrefix, after: %@", &v8, 0xCu);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)loginServiceSessionWithAccount:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = self;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "SMS: %@", &v8, 0xCu);
    }
  }

  [(IMDServiceSession *)self refreshServiceCapabilities];
  [(IMDServiceSession *)self serviceSessionDidLoginWithAccount:v4];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = self;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "%@: Log in.", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)logoutServiceSessionWithAccount:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = self;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "SMS: %@", &v8, 0xCu);
    }
  }

  if ([v4 loginStatus] != 2)
  {
    [v4 setLoginStatus:0 message:0];
    [(IMDServiceSession *)self serviceSessionDidLogoutWithAccount:v4];
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = self;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "%@: Logging out.", &v8, 0xCu);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)compatibleMessageToSendForMessageItem:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 balloonBundleID];
  v5 = *MEMORY[0x277D19710];
  v6 = IMBalloonExtensionIDWithSuffix();
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = IMExtensionPayloadUnarchivingClasses();
    v9 = objc_alloc(MEMORY[0x277CCAAC8]);
    v10 = [v3 payloadData];
    v33 = 0;
    v11 = [v9 initForReadingFromData:v10 error:&v33];
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
          v32 = [v3 sender];
          v21 = [v3 time];
          v22 = [v3 flags];
          v23 = [v3 guid];
          v24 = [v31 initWithSender:v32 time:v21 body:v20 attributes:0 fileTransferGUIDs:0 flags:v22 error:0 guid:v23 threadIdentifier:0];

          if (IMOSLoggingEnabled())
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v26 = [v24 guid];
              *buf = 138412290;
              v35 = v26;
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

    v24 = v3;
    v20 = 0;
    v27 = 1;
LABEL_23:

    if (v27)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v24 = v3;
LABEL_24:
  v24 = v24;
  v3 = v24;
LABEL_25:

  v29 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)allowedToSendMessage:(id)a3 toChat:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 chatIdentifier];
  LODWORD(self) = [(IMDTelephonyServiceSession *)self _newFeatureRequiredByMessageItem:v6 chatIdentifier:v8];

  if (self)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v6 guid];
        v18 = 138412290;
        v19 = v10;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, " ** New Feature, and backwards compat is not enabled for message %@", &v18, 0xCu);
      }
    }

    [v6 setErrorCode:5];
  }

  else
  {
    if (([v6 scheduleType] - 1) > 1)
    {
      v15 = 1;
      goto LABEL_15;
    }

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v6 guid];
        v18 = 138412290;
        v19 = v12;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Received attempt to send a scheduled message through the telephony service session, message guid: %@", &v18, 0xCu);
      }
    }

    [v6 setErrorCode:5];
    [v6 setScheduleState:4];
    v13 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.messages.TelephonyServiceSessionSendFailure" code:5 userInfo:0];
    v14 = [MEMORY[0x277D1AAA8] sharedInstance];
    [v14 forceAutoBugCaptureWithSubType:@"Invalid scheduled message send" errorPayload:v13];
  }

  v15 = 0;
LABEL_15:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)_newFeatureRequiredByMessageItem:(id)a3 chatIdentifier:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 associatedMessageType];
  if (v7 != 2006 && v7 != 3006)
  {
    v8 = [v5 associatedMessageType];
    if (v8 != 3007 && v8 != 2007)
    {
      goto LABEL_14;
    }
  }

  v9 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v10 = [v9 objectForKey:@"backwards-compat-enabled-etap"];
  v11 = [MEMORY[0x277D19268] sharedInstance];
  v12 = [v11 isInternalInstall];

  if (v12)
  {
    v13 = [MEMORY[0x277CBEBD0] messagesAppDomain];
    v14 = [v13 arrayForKey:@"chat-id-allow-list"];

    if ([v14 containsObject:v6])
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v37 = v6;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Ignoring backwards compat check and allowing sending message to %@", buf, 0xCu);
        }
      }

      goto LABEL_27;
    }
  }

  v16 = [v10 BOOLValue];

  if (v16)
  {
LABEL_14:
    v17 = [v5 fileTransferGUIDs];
    v10 = +[IMDFileTransferCenter sharedInstance];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = v17;
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
        v22 = [v21 isAdaptiveImageGlyph];

        if (v22)
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
      v26 = [v25 BOOLValue];

      if ((v26 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
LABEL_22:
    }

    if ([v5 associatedMessageType] == 4000)
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

- (void)didReceiveMessages:(id)a3 forChat:(id)a4 style:(unsigned __int8)a5 account:(id)a6 fromIDSID:(id)a7 completion:(id)a8
{
  v39 = a5;
  v58 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v46 = a6;
  v40 = a7;
  v42 = a8;
  v15 = +[IMDChatRegistry sharedInstance];
  v45 = self;
  v16 = [(IMDServiceSession *)self account];
  v41 = v14;
  v17 = [v15 existingChatWithIdentifier:v14 account:v16];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v13;
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
        v22 = [v46 service];
        v23 = [v22 internalName];

        v24 = [MEMORY[0x277D1AB48] sharedInstance];
        v25 = [v21 guid];
        v26 = [v21 sender];
        v27 = [v21 destinationCallerID];
        [v24 logMessageReceivedWithGUID:v25 fromIdentifier:v26 toIdentifier:v27 conversationType:objc_msgSend(v17 messageType:"powerLogConversationType") messageProtocol:{objc_msgSend(v21, "powerLogMessageType"), v23}];

        v28 = [v21 body];
        v29 = [v28 string];
        [(IMDTelephonyServiceSession *)v45 _findUnsubscribeTextForChat:v17 inMessageBody:v29];
      }

      v19 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v19);
  }

  v51.receiver = v45;
  v51.super_class = IMDTelephonyServiceSession;
  [(IMDServiceSession *)&v51 didReceiveMessages:obj forChat:v41 style:v39 account:v46 fromIDSID:v40 completion:v42];
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
        v37 = [v35 guid];
        [v36 _handleMessageProcessedWithGUID:v37];
      }

      v32 = [v30 countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v32);
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)didSendMessage:(id)a3 forChat:(id)a4 style:(unsigned __int8)a5 account:(id)a6 forceDate:(id)a7 itemIsComingFromStorage:(BOOL)a8
{
  v28 = a5;
  v27 = a7;
  v24 = a6;
  v11 = a4;
  v12 = a3;
  v13 = +[IMDChatRegistry sharedInstance];
  v25 = [v13 existingChatWithIdentifier:v11 account:v24];

  v14 = [v12 service];
  v15 = [MEMORY[0x277D1AB48] sharedInstance];
  v16 = [v12 guid];
  v17 = [v12 sender];
  v18 = [v12 destinationCallerID];
  v19 = [v25 powerLogConversationType];
  v20 = [v12 powerLogMessageType];
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v12, "errorCode")}];
  [v15 logMessageSentWithGUID:v16 fromIdentifier:v17 toIdentifier:v18 conversationType:v19 messageType:v20 sendDuration:0 errorCode:v21 messageProtocol:v14];

  v29.receiver = self;
  v29.super_class = IMDTelephonyServiceSession;
  [(IMDServiceSession *)&v29 didSendMessage:v12 forChat:v11 style:v28 account:v24 forceDate:v27 itemIsComingFromStorage:0];

  v22 = +[IMDRelayPushHandler sharedInstance];
  v23 = [v12 guid];

  [v22 _handleMessageProcessedWithGUID:v23];
}

- (id)_resolvedCallerIDForLastAddressedLocalHandle:(id)a3 lastAddressedSIMID:(id)a4 saveResolvedCallerIDToChat:(BOOL *)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277D1A8F8] myCTPhoneNumber];
  v10 = [(IMDTelephonyServiceSession *)self relayController];
  v11 = [v10 _callerIDForRelay];

  if ([(__CFString *)v11 _appearsToBePhoneNumber])
  {
    v12 = [(IMDTelephonyServiceSession *)self relayController];
    v13 = [v12 isAliasRelayCapable:v11];
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
      v48 = v7;
      v49 = 2112;
      v50 = v8;
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

  if (HasMultipleSubscriptionsWithAtLeastOneActive && ![(__CFString *)v7 length]&& [(__CFString *)v8 length])
  {
    v33 = [MEMORY[0x277D1A908] sharedInstance];
    v34 = [v33 ctSubscriptionInfo];
    v35 = [v34 __im_subscriptionContextForForSimID:v8];

    v20 = [v35 phoneNumber];

    if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v48 = v20;
        _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Last addressed handle was nil but found it a phone number on the context so using that phone number %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v20 = v7;
  }

  if ([(__CFString *)v20 length])
  {
    v21 = [(IMDTelephonyServiceSession *)self relayController];
    v22 = [v21 isAliasActiveAndRelayCapable:v20];

    if (![(__CFString *)v20 length])
    {
      goto LABEL_33;
    }

    if (v22)
    {
      goto LABEL_26;
    }
  }

  else if (![(__CFString *)v20 length])
  {
    goto LABEL_33;
  }

  if (MEMORY[0x231897D30](v9, v20))
  {
LABEL_26:
    if (!IMOSLoggingEnabled())
    {
LABEL_30:
      if (a5)
      {
        *a5 = 1;
      }

      v24 = v20;
      goto LABEL_77;
    }

    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v48 = v20;
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

  if ([(__CFString *)v20 length]&& [(__CFString *)v20 _appearsToBePhoneNumber])
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_30;
    }

    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v48 = v20;
      _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "We have a last addressed alias for this chat with at least one subscription active, setting callerID to %@", buf, 0xCu);
    }

    goto LABEL_29;
  }

  v25 = [(__CFString *)v8 length]== 0;
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
          v48 = v11;
          _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Updating last address handle to be %@", buf, 0xCu);
        }
      }

      if (a5)
      {
        *a5 = 1;
      }
    }

    else
    {
      if (v9)
      {
        v39 = MEMORY[0x231897D30](v9, v20) ^ 1;
        if (!v20)
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
              v48 = v9;
              _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_INFO, "Updating last address handle to be my phone number %@", buf, 0xCu);
            }
          }

          if (a5)
          {
            *a5 = 1;
          }
        }

        v24 = v9;
        goto LABEL_77;
      }

      v43 = [(IMDTelephonyServiceSession *)self relayController];
      v44 = [v43 dominentPhoneNumberAlias];

      if (v44)
      {
        v45 = [(IMDTelephonyServiceSession *)self relayController];
        v32 = [v45 dominentPhoneNumberAlias];

        goto LABEL_78;
      }
    }

    v24 = v11;
LABEL_77:
    v32 = v24;
    goto LABEL_78;
  }

  v27 = a5;
  if (v26)
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v48 = v20;
      v49 = 2112;
      v50 = v8;
      _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "We do not have a valid lastAddressedHandle %@ so using lastAddressedSIMID to send %@", buf, 0x16u);
    }

    v27 = a5;
  }

  if (v27)
  {
    *v27 = 1;
  }

  v29 = [MEMORY[0x277D1A908] sharedInstance];
  v30 = [v29 ctSubscriptionInfo];
  v31 = [v30 __im_subscriptionContextForForSimID:v8];

  v32 = [v31 phoneNumber];

LABEL_78:
  v41 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)createHandleInfoFor:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v27 = [v3 style];
  v4 = IMDTelephonyServiceLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 participants];
    *buf = 138412290;
    v37 = v5;
    _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Participants: %@", buf, 0xCu);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = v3;
  obj = [v3 participants];
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

      v17 = [v13 unformattedID];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = &stru_283F23018;
      }

      [v9 addObject:v19];

      v20 = [v13 countryCode];
      v21 = v20;
      if (v20)
      {
        v22 = v20;
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

  v24 = [(IMDTelephonyServiceSession *)self createHandleInfoForParticipants:v10 unformattedIDs:v9 countryCodes:v8 isGroupChat:v27 == 43];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)createHandleInfoForParticipants:(id)a3 unformattedIDs:(id)a4 countryCodes:(id)a5 isGroupChat:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v35 = v11;
  if (a6)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([v9 count])
    {
      v13 = 0;
      v34 = *MEMORY[0x277D192F8];
      v33 = *MEMORY[0x277D193A8];
      v32 = *MEMORY[0x277D193C0];
      v14 = *MEMORY[0x277D193A0];
      do
      {
        v15 = [v9 objectAtIndex:v13];
        v16 = [v10 objectAtIndex:v13];
        v17 = [v11 objectAtIndex:v13];
        v18 = MEMORY[0x277CBEAC0];
        [MEMORY[0x277CCABB0] numberWithInt:2];
        v20 = v19 = v10;
        v21 = [v18 dictionaryWithObjectsAndKeys:{v20, v34, v15, v33, v16, v32, v17, v14, 0}];

        v10 = v19;
        [v12 addObject:v21];

        v11 = v35;
        ++v13;
      }

      while (v13 < [v9 count]);
    }
  }

  else
  {
    v22 = MEMORY[0x277CBEAC0];
    v23 = [MEMORY[0x277CCABB0] numberWithInt:2];
    v24 = *MEMORY[0x277D192F8];
    v25 = [v9 firstObject];
    v26 = *MEMORY[0x277D193A8];
    v27 = [v10 firstObject];
    v28 = *MEMORY[0x277D193C0];
    v29 = [v11 firstObject];
    v30 = [v22 dictionaryWithObjectsAndKeys:{v23, v24, v25, v26, v27, v28, v29, *MEMORY[0x277D193A0], 0}];

    v11 = v35;
    v12 = IMSingleObjectArray();
  }

  return v12;
}

- (void)_updateCategoryForChat:(id)a3 andMessage:(id)a4 category:(int64_t)a5 subCategory:(int64_t)a6 spamExtensionName:(id)a7
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a7;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v11 guid];
      v17 = 138412802;
      v18 = v15;
      v19 = 2048;
      v20 = a5;
      v21 = 2048;
      v22 = a6;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Updating chat %@ category %ld subCategory @%ld", &v17, 0x20u);
    }
  }

  [v11 updateSMSCategory:a5 subCategory:a6];
  [v11 updateSMSSpamExtensionNameChatProperty:v13];

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_disableScreenTimeRestrictionsForMessageItem:(id)a3 chat:(id)a4 watchSendsOverCellular:(BOOL)a5 emergencyNumbersFoundInRecipients:(int64_t *)a6
{
  if (a6)
  {
    *a6 = 0;
  }

  return 0;
}

- (int64_t)_iMessageCapabilityForSIMID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [MEMORY[0x277D1A908] sharedInstance];
  v5 = [v4 registeredSIMIDs];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
        objc_enumerationMutation(v5);
      }

      if ([v3 isEqualToString:*(*(&v13 + 1) + 8 * v10)])
      {
        break;
      }

      if (v7 == ++v10)
      {
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)_relayMessage:(id)a3 chat:(id)a4 didSendSMS:(BOOL)a5 attemptingReplication:(BOOL)a6 forceReflection:(BOOL)a7 relayToWatchOnly:(BOOL)a8 shouldDisableScreenTimeRestrictions:(BOOL)a9 callerID:(id)a10
{
  v69 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a10;
  v16 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  if ([v16 isRelayChatBotEnabled])
  {
  }

  else
  {
    v17 = [v14 isChatBot];

    if (v17)
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

  v19 = [v14 lastAddressedSIMID];
  v47 = [(IMDTelephonyServiceSession *)self _iMessageCapabilityForSIMID:v19];

  v20 = [v13 balloonBundleID];
  v21 = [v20 isEqualToString:*MEMORY[0x277D19730]];

  v22 = [v13 fileTransferGUIDs];
  v23 = [v22 count] == 0;

  v24 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  if (![v24 isRelayChatBotEnabled])
  {

    goto LABEL_12;
  }

  v25 = [v14 isChatBot];

  if (!v25)
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
        v28 = [v13 guid];
        *buf = 138412290;
        v68 = v28;
        _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "No attachments or rich links, relaying message with guid %@", buf, 0xCu);
      }
    }

    v29 = v53;
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = sub_22B554000;
    v53[3] = &unk_2787042E0;
    v53[4] = self;
    v53[5] = v13;
    v30 = v14;
    v53[6] = v30;
    v54 = a5;
    v55 = a6;
    v56 = a7;
    v57 = a8;
    v58 = a9;
    v53[7] = v15;
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
        v33 = [v13 guid];
        *buf = 138412290;
        v68 = v33;
        _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Message with Guid %@ contains attachments, uploading to MMCS", buf, 0xCu);
      }
    }

    v34 = [(IMDTelephonyServiceSession *)self attachmentController];
    v35 = [v14 lastAddressedLocalHandle];
    v36 = [v14 lastAddressedSIMID];
    v29 = v61;
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = sub_22B553BF4;
    v61[3] = &unk_278704308;
    v61[4] = self;
    v61[5] = v14;
    v37 = v13;
    v38 = a8;
    v39 = v13;
    v40 = self;
    v41 = v15;
    v42 = v37;
    v61[6] = v37;
    v62 = a5;
    v63 = a6;
    v64 = a7;
    v65 = v38;
    v66 = a9;
    v61[7] = v41;
    v61[8] = v52;
    v61[9] = v48;
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = sub_22B553EE8;
    v59[3] = &unk_278704330;
    v59[4] = v40;
    v13 = v39;
    v43 = v42;
    v15 = v41;
    v44 = v43;
    v60 = v43;
    v45 = v52;
    [v34 processAttachmentsForPeerRelayForMessage:v44 lastAddressHandle:v35 lastAddressedSIMID:v36 completionBlock:v61 uploadFailureBlock:v59];
  }

LABEL_25:
  v46 = *MEMORY[0x277D85DE8];
}

- (void)_setTimeoutTimerForRelayMessageID:(id)a3 timeout:(double)a4
{
  v6 = a3;
  if (a4 <= 1.0)
  {
    a4 = 180.0;
  }

  v10 = v6;
  if ([v6 length])
  {
    [(IMDTelephonyServiceSession *)self _clearTimoutTimerForRelayMessageID:v10];
    if (!self->_outgoingRelayMessageTimerMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      outgoingRelayMessageTimerMap = self->_outgoingRelayMessageTimerMap;
      self->_outgoingRelayMessageTimerMap = Mutable;
    }

    v9 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__messageTimedOut_ selector:v10 userInfo:0 repeats:a4];
    if (v9)
    {
      [(NSMutableDictionary *)self->_outgoingRelayMessageTimerMap setObject:v9 forKey:v10];
    }
  }
}

- (void)_clearTimoutTimerForRelayMessageID:(id)a3
{
  v5 = a3;
  if ([v5 length])
  {
    v4 = [(NSMutableDictionary *)self->_outgoingRelayMessageTimerMap objectForKey:v5];
    if (v4)
    {
      [(NSMutableDictionary *)self->_outgoingRelayMessageTimerMap removeObjectForKey:v5];
      [v4 invalidate];
    }
  }
}

- (void)_addOriginatedMessage:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = v4;
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

    [(NSMutableSet *)originatedMessages addObject:v4];
    [(IMDTelephonyServiceSession *)self _setClearMessageSendTimer];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_removeOriginatedMessage:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = v4;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, " Removing Message with GUID: %@ from originated Message Map", &v7, 0xCu);
      }
    }

    [(NSMutableSet *)self->_originatedMessages removeObject:v4];
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

- (void)_enqueueBlock:(id)a3 withTimeout:(double)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [(IMDServiceSession *)self accountID];
      v14 = 138412546;
      v15 = v8;
      v16 = 2048;
      v17 = a4;
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

  v12 = [(IMDServiceSession *)self accountID];
  [(IMMultiQueue *)incomingMessageMultiQueue addBlock:v6 withTimeout:v12 forKey:0 description:a4];

  v13 = *MEMORY[0x277D85DE8];
}

- (unint64_t)maxRecipientsForPhoneNumber:(id)a3 simID:(id)a4
{
  v5 = a3;
  v6 = a4;
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

- (id)subscriptionContextForChat:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 lastAddressedLocalHandle];
  v5 = [v3 lastAddressedSIMID];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v3 guid];
      *buf = 138412802;
      v40 = v7;
      v41 = 2112;
      v42 = v4;
      v43 = 2112;
      v44 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Not first chat (%@): lastAddressedLocalHandle %@ lastAddressedSIMID %@", buf, 0x20u);
    }
  }

  v8 = [MEMORY[0x277D1A908] sharedInstance];
  v9 = [v8 ctSubscriptionInfo];

  v10 = [v9 subscriptions];
  v11 = [v10 count] == 1;

  if (v11)
  {
    v12 = [v9 subscriptions];
    v13 = [v12 firstObject];

    if (v13)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v13 = [v9 __im_subscriptionContextForForSimID:v5 phoneNumber:v4];
    if (v13)
    {
      goto LABEL_21;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v3 guid];
      *buf = 138412802;
      v40 = v4;
      v41 = 2112;
      v42 = v5;
      v43 = 2112;
      v44 = v15;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Could not find a subscription context to send with based on lastAddressedHandle %@ lastAddressedSIMID %@ so finding context preferred subscription for chat %@", buf, 0x20u);
    }
  }

  v16 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = [v3 participants];
  v18 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v18)
  {
    v19 = *v35;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v35 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = [*(*(&v34 + 1) + 8 * i) ID];
        [v16 addObject:v21];
      }

      v18 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v18);
  }

  v13 = [v9 __im_contactPreferredSubscriptionContextForChatHandleIDs:v16];

  if (v13)
  {
LABEL_21:
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v40 = v13;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Setting the context for context %@ and updating lastAddressed if needed", buf, 0xCu);
      }
    }

    v23 = [v13 phoneNumber];
    if (MEMORY[0x231897D30](v4, v23))
    {
      v24 = [v13 labelID];
      v25 = [v5 isEqualToString:v24];

      if (v25)
      {
        goto LABEL_30;
      }
    }

    else
    {
    }

    v26 = [v3 chatIdentifier];
    v27 = [v3 style];
    v28 = [v13 phoneNumber];
    v29 = [v13 labelID];
    [(IMDTelephonyServiceSession *)self _updateLastAddressedIDsIfNeededForChatWithIdentifier:v26 style:v27 lastAddressedHandle:v28 lastAddressedSIMID:v29];

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

  v13 = 0;
LABEL_30:

  v30 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)sendDeleteCommand:(id)a3 forChatGUID:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(IMDTelephonyServiceSession *)self chatRegistry];
  v8 = [v7 existingChatWithGUID:v6];

  if (![(IMDTelephonyServiceSession *)self shouldExcludeChatFromRelay:v8])
  {
    v9 = [(IMDTelephonyServiceSession *)self relayController];
    [v9 sendDeleteCommand:v10 forChatGUID:v6];
  }
}

- (void)sendRecoverCommand:(id)a3 forChatGUID:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(IMDTelephonyServiceSession *)self chatRegistry];
  v8 = [v7 existingChatWithGUID:v6];

  if (![(IMDTelephonyServiceSession *)self shouldExcludeChatFromRelay:v8])
  {
    v9 = [(IMDTelephonyServiceSession *)self relayController];
    [v9 sendRecoverCommand:v10 forChatGUID:v6];
  }
}

- (id)_resolveHandlesFor:(id)a3 withMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_22B4D7660;
  v17 = sub_22B4D7888;
  v18 = 0;
  v8 = +[IMDMessageStore sharedInstance];
  v9 = [(IMDServiceSession *)self service];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22B5556DC;
  v12[3] = &unk_2787031A0;
  v12[4] = &v13;
  [v8 resolveUnformattedRepresentationsForHandles:v6 onService:v9 message:v7 completionBlock:v12];

  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

- (BOOL)isGroupMessagingEnabledFor:(id)a3
{
  v3 = MEMORY[0x277D1A8F8];
  v4 = a3;
  v5 = [v4 lastAddressedLocalHandle];
  v6 = [v4 lastAddressedSIMID];

  LOBYTE(v3) = [v3 IMMMSGroupTextOnlyMessagesSendAsMMSForPhoneNumber:v5 simID:v6];
  return v3;
}

- (int64_t)maxSizePerAttachmentWithCount:(int)a3 lastAddressHandle:(id)a4 lastAddressedSIMID:(id)a5
{
  *&v16[5] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = ([MEMORY[0x277D1A8F8] IMMMSMaximumMessageByteCountForPhoneNumber:v7 simID:v8] * 0.92);
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

  v11 = v9 / a3;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = 67109376;
      v16[0] = a3;
      LOWORD(v16[1]) = 2048;
      *(&v16[1] + 2) = v11;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "     Part byte length for %d attachments will be: %lld", &v15, 0x12u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)_canSendWithCallerID:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (IMSharedHelperDeviceHasMultipleActiveSubscriptions())
  {
    v4 = [MEMORY[0x277D1A908] sharedInstance];
    v5 = [v4 ctSubscriptionInfo];
    v6 = [v5 __im_containsPhoneNumber:v3];

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
    v9 = [MEMORY[0x277D1A8F8] myCTPhoneNumber];
    LOBYTE(v6) = MEMORY[0x231897D30](v9, v3);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (unint64_t)_sendingDecisionForMessageItem:(id)a3 callerID:(id)a4 lastAddressedLocalHandle:(id)a5 lastAddressedSIMID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v42 = a6;
  v13 = [MEMORY[0x277D1A8F8] isMessagesTheDefaultTextApp];
  v14 = [(IMDTelephonyServiceSession *)self relayController];
  v15 = [v14 _localDeviceSupportsEmergencySMS];

  if (v10)
  {
    v16 = [MEMORY[0x277D18998] sharedInstance];
    v17 = [v10 handle];
    v18 = [v16 isPhoneNumberEmergencyNumber:v17];
  }

  else
  {
    v18 = 0;
  }

  v19 = v15 & v18;
  v20 = [v10 criticalMessagingAppName];
  v21 = [v20 length];

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

  v24 = [(IMDTelephonyServiceSession *)self relayController];
  v25 = [v24 _localDeviceSupportsSMS];
  if (v21)
  {
    v26 = 1;
  }

  else
  {
    v26 = v13;
  }

  v27 = v25 & v26;

  v28 = [(IMDTelephonyServiceSession *)self _canSendWithCallerID:v11];
  if ([v11 length])
  {
    v29 = [v11 _appearsToBePhoneNumber];
  }

  else
  {
    v29 = 0;
  }

  v30 = [(IMDTelephonyServiceSession *)self relayController];
  v31 = [v30 _localDeviceSupportsSMSAndDoesNotHaveAPhoneNumberForSIMID:v42];

  if ([v12 length])
  {
    v32 = [(IMDTelephonyServiceSession *)self relayController];
    v33 = [v32 isAliasActiveAndRelayCapable:v12];
  }

  else
  {
    v33 = 0;
  }

  if ((v28 & v29 & v27) == 1)
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

  if (IMSharedHelperDeviceHasMultipleSubscriptions() && [v10 useStandalone])
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

    [v10 setDestinationCallerID:v42];
    v34 = 5;
    goto LABEL_24;
  }

  if (((v29 | v27 ^ 1) & 1) == 0 && (IMSharedHelperDeviceHasMultipleActiveSubscriptions() & 1) == 0)
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

- (void)_messageTimedOut:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = +[IMDMessageStore sharedInstance];
  v7 = [v6 messageWithGUID:v5];

  if (![v7 isSent])
  {
    goto LABEL_4;
  }

  v8 = [v7 service];
  v9 = [(IMDServiceSession *)self service];
  v10 = [v9 internalName];
  if ([v8 isEqualToString:v10])
  {
    v11 = [v7 wasDowngraded];

    if (!v11)
    {
LABEL_4:
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v16 = 138412290;
          v17 = v5;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Failed to send relay message ID guid (timed out): %@", &v16, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v16 = 138412290;
          v17 = v5;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Error sending message: %@ SMS Relay timed out", &v16, 0xCu);
        }
      }

      if (v5)
      {
        [(IMDServiceSession *)self didReceiveError:4 forMessageID:v5 forceError:1];
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
  v2 = [(IMDTelephonyServiceSession *)self relayController];
  v3 = [v2 enrollmentController];

  return v3;
}

- (void)enrollDeviceInSMSRelay:(id)a3
{
  v4 = a3;
  v5 = [(IMDTelephonyServiceSession *)self relayEnrollmentController];
  [v5 enrollDeviceInSMSRelay:v4];
}

- (void)unEnrollDeviceInSMSRelay:(id)a3
{
  v4 = a3;
  v5 = [(IMDTelephonyServiceSession *)self relayEnrollmentController];
  [v5 unEnrollDeviceInSMSRelay:v4];
}

- (void)enrollSelfDeviceInSMSRelay
{
  v2 = [(IMDTelephonyServiceSession *)self relayEnrollmentController];
  [v2 enrollSelfDeviceInSMSRelay];
}

- (void)processMessageSendFailure:(id)a3
{
  v5 = a3;
  if ([v5 length])
  {
    v4 = [(IMDTelephonyServiceSession *)self relayController];
    [v4 messageFailedToSend:v5];
  }
}

- (void)_findUnsubscribeTextForChat:(id)a3 inMessageBody:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v8 = [v7 isReportJunkEverywhereEnabled];

  if (v8)
  {
    if (!v5)
    {
      v13 = IMLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D2380(v13);
      }

      goto LABEL_37;
    }

    if (![v6 length])
    {
      v13 = IMLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D22E8(v5, v13);
      }

      goto LABEL_37;
    }

    if ([v5 isFiltered])
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
        v9 = off_281422530(v6);
        if ([v9 count])
        {
          v22 = v5;
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

          v5 = v22;
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
          [v5 updateProperties:v20];
        }

LABEL_37:
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)sendReportJunkMessageGUID:(id)a3 shouldRelay:(BOOL)a4
{
  v4 = a4;
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = +[IMDMessageStore sharedInstance];
  v8 = [v7 messageWithGUID:v6];

  if (v8)
  {
    v9 = +[IMDMessageStore sharedInstance];
    v10 = [v9 chatForMessageGUID:v6];

    if (!v10 && IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v19 = 138412546;
        v20 = v6;
        v21 = 1024;
        v22 = v4;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "No chat found when reporting message GUID %@ as junk (relay=%{BOOL}d)", &v19, 0x12u);
      }
    }

    v12 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v13 = [v12 isReportJunkEverywhereEnabled];

    if ((v13 & v4) != 0)
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

      v15 = [v10 lastAddressedLocalHandle];
      v16 = [(IMDTelephonyServiceSession *)self relayController];
      [v16 reportJunkMessageToCarrier:v8 toChat:v10 fromCallerID:v15];
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
      v20 = v6;
      v21 = 1024;
      v22 = v4;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "No message found with GUID %@ to report junk (relay=%{BOOL}d)", &v19, 0x12u);
    }

    goto LABEL_23;
  }

LABEL_24:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_reportTelephonyJunkForMessageItem:(id)a3 chat:(id)a4
{
  v5 = a3;
  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D23C4(v5, self, v6);
  }
}

- (void)_setupCoreTelephonyObservation
{
  v3 = +[IMDLocalDaemon sharedDaemon];
  v4 = [v3 isSetupComplete];

  v5 = IMOSLoggingEnabled();
  if (v4)
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

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:self selector:sel__registerForIncomingMessages_ name:*MEMORY[0x277D19318] object:0];
  }
}

- (void)_registerForIncomingMessages:(id)a3
{
  v4 = a3;
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

- (void)handler:(id)a3 incomingPlainTextMessage:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 fromToken:(id)a7 timeStamp:(id)a8 storageContext:(id)a9
{
  v11 = a4;
  v12 = a7;
  v13 = a9;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_22B5986E4;
  v17[3] = &unk_2787054C8;
  v18 = v11;
  v19 = self;
  v20 = v12;
  v21 = v13;
  v14 = v13;
  v15 = v12;
  v16 = v11;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v17 withTimeout:45.0];
}

- (void)handler:(id)a3 incomingDownloadMessage:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 fromToken:(id)a7 timeStamp:(id)a8 storageContext:(id)a9
{
  v11 = a4;
  v12 = a7;
  v13 = a9;
  v14 = [v11 objectForKey:IMDRelayMessageAttachmentDictionaryOutFileSizeKey];
  v15 = [v14 integerValue];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22B598E50;
  v19[3] = &unk_278705518;
  v19[4] = self;
  v20 = v11;
  v22 = v13;
  v23 = v15;
  v21 = v12;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v19 withTimeout:240.0];
}

- (id)chatForOutgoingMessage:(id)a3 fromIdentifier:(id)a4 isInProxyMode:(BOOL)a5 createIfNotExists:(BOOL)a6
{
  v81 = a6;
  v6 = a5;
  v111 = *MEMORY[0x277D85DE8];
  v87 = a3;
  v85 = a4;
  v86 = self;
  v9 = [(IMDServiceSession *)self service];
  v10 = [v9 supportsCapability:*MEMORY[0x277D1A560]];

  if (v10)
  {
    v11 = [v87 objectForKeyedSubscript:IMDRelayMessageItemDictionary];
    v83 = [v11 objectForKeyedSubscript:IMDRelayMessageDictionaryChatDisplayNameKey];
  }

  else
  {
    v83 = 0;
  }

  v12 = [(IMDServiceSession *)self service];
  v13 = [v12 supportsCapability:*MEMORY[0x277D1A558]];

  if (v13)
  {
    v14 = [v87 objectForKeyedSubscript:IMDRelayMessageItemDictionary];
    v82 = [v14 objectForKeyedSubscript:IMDRelayMessageDictionaryChatGroupIDKey];

    v15 = [v87 objectForKeyedSubscript:IMDRelayMessageItemDictionary];
    v84 = [v15 objectForKeyedSubscript:IMDRelayMessageDictionaryChatOriginalGroupID];
  }

  else
  {
    v84 = 0;
    v82 = 0;
  }

  v16 = [v87 objectForKey:IMDCTMessageDictionaryReceipientsKey];
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

  v19 = [(IMDTelephonyServiceSession *)self relayController];
  v20 = [v19 _isDefaultPairedDeviceRelayingLocally:v85];

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = v17;
  v21 = [(__CFString *)obj countByEnumeratingWithState:&v97 objects:v110 count:16];
  if (v21)
  {
    v22 = v20 | v6;
    v23 = *v98;
    if (v20 | v6)
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

    if (v6)
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
        v29 = [MEMORY[0x277D18998] sharedInstance];
        v30 = [v29 isPhoneNumberEmergencyNumber:v28];

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
  v34 = [v87 objectForKey:IMDRelayMessageDictionaryChatStyleKey];
  v79 = _ChatStyleFromChatStyleString(v34);

  buf[0] = v79;
  if (v79 == 45)
  {
    v80 = [(__CFString *)obj __imFirstObject];
    v35 = MEMORY[0x277CBEAC0];
    v36 = [MEMORY[0x277CCABB0] numberWithInt:2];
    v37 = [v35 dictionaryWithObjectsAndKeys:{v36, *MEMORY[0x277D192F8], v80, *MEMORY[0x277D193A8], 0}];

    [(__CFString *)v91 addObject:v37];
    v38 = +[IMDChatRegistry sharedInstance];
    v39 = [(__CFString *)obj __imFirstObject];
    v40 = [(IMDServiceSession *)v86 account];
    v41 = [v38 existingChatForID:v39 account:v40];
LABEL_56:
    v60 = v41;

    goto LABEL_57;
  }

  v45 = [(IMDTelephonyServiceSession *)v86 chatRegistry];
  v46 = [(IMDServiceSession *)v86 account];
  v80 = [v45 generateUnusedChatIdentifierForGroupChatWithAccount:v46];

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
  v57 = [(IMDServiceSession *)v86 account];
  v58 = [(IMDServiceSession *)v86 service];
  if ([v58 groupsMergeDisplayNames])
  {
    v59 = v83;
  }

  else
  {
    v59 = 0;
  }

  v60 = [v56 existingChatForIDs:v89 account:v57 displayName:v59 groupID:v82 style:43];

  if (!v60 && v84)
  {
    v38 = +[IMDChatRegistry sharedInstance];
    v39 = [(IMDServiceSession *)v86 account];
    v40 = [(IMDServiceSession *)v86 service];
    if ([v40 groupsMergeDisplayNames])
    {
      v61 = v83;
    }

    else
    {
      v61 = 0;
    }

    v41 = [v38 existingChatForIDs:v89 account:v39 displayName:v61 originalGroupID:v84 style:43];
    goto LABEL_56;
  }

LABEL_57:
  if (v60)
  {
    v62 = [v60 chatIdentifier];

    buf[0] = [v60 style];
    v43 = v60;
  }

  else
  {
    v92 = v80;
    [(IMDServiceSession *)v86 canonicalizeChatIdentifier:&v92 style:buf];
    v62 = v92;

    if (v81)
    {
      v63 = objc_alloc_init(IMDChatStatusChangeContext);
      [(IMDChatStatusChangeContext *)v63 setDisplayName:v83];
      [(IMDChatStatusChangeContext *)v63 setGroupID:v82];
      [(IMDChatStatusChangeContext *)v63 setOriginalGroupID:v84];
      [(IMDChatStatusChangeContext *)v63 setHandleInfo:v91];
      [(IMDChatStatusChangeContext *)v63 setIsMessageSentFromMe:1];
      [(IMDServiceSession *)v86 didUpdateChatStatus:2 chat:v62 style:buf[0] context:v63];
      v64 = +[IMDChatRegistry sharedInstance];
      if (v79 == 45)
      {
        v65 = [(__CFString *)obj __imFirstObject];
        v66 = [(IMDServiceSession *)v86 account];
        v43 = [v64 existingChatForID:v65 account:v66];
      }

      else
      {
        v65 = [(IMDServiceSession *)v86 account];
        v43 = [v64 existingChatForIDs:obj account:v65 displayName:v83 groupID:v82 style:43];
      }
    }

    else
    {
      v43 = 0;
    }
  }

  v67 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v68 = [v67 isMissingMessagesEnabled];

  if (v68)
  {
    v69 = [v87 objectForKeyedSubscript:IMDRelayMessageItemDictionary];
    v70 = [v69 objectForKeyedSubscript:IMDRelayMessageItemDictionaryServiceKey];
    v71 = IMChatLookupDomainForServiceName();

    v72 = [v43 latestIdentifierForDomain:v71];
    v73 = v72;
    if (!v84 || ([v72 isEqualToString:?] & 1) != 0 || !-[IMDServiceSession allowedToOverwriteOriginalGroupIDForChat:](v86, "allowedToOverwriteOriginalGroupIDForChat:", v43))
    {
      goto LABEL_75;
    }

    [v43 assignIdentifier:v84 forDomain:v71 isHistoricalIdentifier:0];

LABEL_74:
    v75 = +[IMDChatStore sharedInstance];
    [v75 storeChat:v43];

    v71 = -[IMDServiceSession broadcasterForChatListenersWithBlackholeStatus:](v86, "broadcasterForChatListenersWithBlackholeStatus:", [v43 isBlackholed]);
    v73 = [v43 guid];
    v76 = [v43 dictionaryRepresentation];
    [v71 chat:v73 updated:v76];

LABEL_75:
    goto LABEL_76;
  }

  if (v84)
  {
    v71 = [v43 originalGroupID];
    if ([v71 isEqualToString:v84])
    {
LABEL_76:

      goto LABEL_77;
    }

    v74 = [(IMDServiceSession *)v86 allowedToOverwriteOriginalGroupIDForChat:v43];

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

- (BOOL)_allowedToProcessMessageFromToken:(id)a3 fromID:(id)a4 reflectOnly:(BOOL)a5 isInProxyMode:(BOOL)a6
{
  v6 = a6;
  v41 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = [(IMDTelephonyServiceSession *)self relayController];
  v13 = [v12 idsDeviceFromPushToken:v10];

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v13 name];
      v37 = 138412290;
      v38 = v15;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, " Outgoing message request from %@", &v37, 0xCu);
    }
  }

  if (!v13 || a5)
  {
    if (!v13)
    {
      if (IMOSLoggingEnabled())
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v37 = 138412290;
          v38 = v11;
          _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, " This message was likely from a local device, looking for fromID: %@", &v37, 0xCu);
        }
      }

      v31 = [(IMDTelephonyServiceSession *)self relayController];
      v13 = [v31 idsDeviceForFromID:v11];
    }
  }

  else
  {
    v16 = [(IMDTelephonyServiceSession *)self relayController];
    v17 = [v16 _localDeviceSupportsSMS];

    if (v17)
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

      v19 = [(IMDTelephonyServiceSession *)self relayController];
      if ([v19 isSMSRelayEnabled])
      {
      }

      else
      {
        v20 = [v13 isDefaultPairedDevice];

        if ((v20 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v21 = [(IMDTelephonyServiceSession *)self relayEnrollmentController];
      v22 = [v21 _allowedDevicesforSMSRelay];
      v23 = [v13 uniqueID];
      v24 = [v22 containsObject:v23];

      v25 = IMOSLoggingEnabled();
      if (v24)
      {
        if (v25)
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v27 = [v13 name];
            v37 = 138412290;
            v38 = v27;
            _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, " Device %@ is on the allowed list, Telling the block to continue", &v37, 0xCu);
          }
        }

        LOBYTE(v6) = 1;
        goto LABEL_42;
      }

      if (v25)
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = [v13 name];
          v37 = 138412290;
          v38 = v29;
          _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, " Device %@ is on the blockList, sending back a failure", &v37, 0xCu);
        }
      }

LABEL_25:
      LOBYTE(v6) = 0;
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
      if (!v6)
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
    LOBYTE(v6) = 1;
  }

LABEL_42:

  v35 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_hasRegisteredLocalPhoneNumberForHandle:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [MEMORY[0x277D1A908] sharedInstance];
    v5 = [v4 registeredPhoneNumbers];

    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if (MEMORY[0x231897D30](v3, *(*(&v11 + 1) + 8 * i)))
          {
            LOBYTE(v6) = 1;
            goto LABEL_13;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (id)_phoneNumberForRegisteredSimID:(id)a3
{
  v3 = a3;
  if (IMSharedHelperRetrieveSimDetailsFromTelephony() && ([MEMORY[0x277D1A908] sharedInstance], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "registeredSIMIDs"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsObject:", v3), v5, v4, v6))
  {
    v7 = [MEMORY[0x277D1A908] sharedInstance];
    v8 = [v7 ctSubscriptionInfo];
    v9 = [v8 __im_subscriptionContextForForSimID:v3];

    v10 = [v9 phoneNumber];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_sendingHandleForOutgoingMessageInChat:(id)a3 fromIdentifier:(id)a4
{
  v6 = a3;
  v7 = [(IMDTelephonyServiceSession *)self _callerIDUsingFromIdentifier:a4];
  if (IMSharedHelperDeviceHasMultipleSubscriptions())
  {
    v8 = [v6 lastAddressedLocalHandle];
    v9 = [v6 lastAddressedSIMID];
    v10 = v9;
    if (v8)
    {
      if ([(IMDTelephonyServiceSession *)self _hasRegisteredLocalPhoneNumberForHandle:v8])
      {
        v11 = v7;
        v7 = v8;
LABEL_8:
      }
    }

    else if (v9)
    {
      v12 = [(IMDTelephonyServiceSession *)self _phoneNumberForRegisteredSimID:v9];
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
  v14 = [v13 _stripFZIDPrefix];

  return v14;
}

- (void)handler:(id)a3 outgoingPlainTextMessage:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 fromToken:(id)a7 messageGUID:(id)a8 timeStamp:(id)a9 isBeingReplayed:(BOOL)a10 isInProxyMode:(BOOL)a11 storageContext:(id)a12
{
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a12;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_22B59AE28;
  v31[3] = &unk_2787055B8;
  v31[4] = self;
  v32 = v19;
  v39 = a11;
  v33 = v18;
  v34 = v17;
  v40 = a10;
  v35 = v20;
  v36 = v21;
  v37 = v22;
  v38 = v23;
  v24 = v23;
  v25 = v22;
  v26 = v21;
  v27 = v20;
  v28 = v17;
  v29 = v18;
  v30 = v19;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v31 withTimeout:45.0];
}

- (void)sendUnapproveToToken:(id)a3 messageGUID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "This device is not on the allowed list, it should not have been trying to send a relay message, sending a message back to it to tell it to not send relay messages in the future", buf, 2u);
    }
  }

  v12 = [(IMDTelephonyServiceSession *)self relayController];
  v13 = [v12 idsDeviceFromPushToken:v8];

  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v9, IMDRelayMessageDictionaryGUIDKey, MEMORY[0x277CBEC38], IMDRelayAuthorizationUnauthorizedDeviceKey, 0}];
  v15 = [(IMDTelephonyServiceSession *)self relayController];
  v16 = [v15 enrollmentController];
  [v16 sendUnApproveToDevice:v13 extraKeys:v14];

  v10[2](v10);
}

- (void)handler:(id)a3 outgoingDownloadMessage:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 fromToken:(id)a7 messageGUID:(id)a8 timeStamp:(id)a9 isBeingReplayed:(BOOL)a10 isInProxyMode:(BOOL)a11 storageContext:(id)a12
{
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a12;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_22B59C9A4;
  v31[3] = &unk_2787055B8;
  v31[4] = self;
  v32 = v17;
  v33 = v19;
  v34 = v20;
  v39 = a10;
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v38 = v18;
  v40 = a11;
  v24 = v18;
  v25 = v23;
  v26 = v22;
  v27 = v21;
  v28 = v20;
  v29 = v19;
  v30 = v17;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v31 withTimeout:240.0];
}

- (BOOL)responsibleForMessageID:(id)a3
{
  v4 = a3;
  v5 = +[IMDMessageStore sharedInstance];
  v6 = [v5 messageWithGUID:v4];

  v7 = [v6 service];
  v8 = [(IMDServiceSession *)self service];
  v9 = [v8 internalName];
  v10 = [v7 isEqualToString:v9];

  return v10;
}

- (void)handler:(id)a3 messageIDSent:(id)a4 wasInterworked:(BOOL)a5 toIdentifier:(id)a6 fromIdentifier:(id)a7 timeStamp:(id)a8 storageContext:(id)a9
{
  v11 = a4;
  v12 = a9;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B59E114;
  v15[3] = &unk_278705630;
  v15[4] = self;
  v16 = v11;
  v17 = v12;
  v18 = a5;
  v13 = v12;
  v14 = v11;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v15 withTimeout:45.0];
}

- (void)handler:(id)a3 messageIDRead:(id)a4 readByMe:(BOOL)a5 timeStamp:(id)a6 toIdentifier:(id)a7 fromIdentifier:(id)a8 fromToken:(id)a9 reflectOnly:(BOOL)a10 storageContext:(id)a11
{
  v28 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a11;
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
  v23 = v17;
  v30 = v23;
  v24 = v18;
  v31 = v24;
  v25 = v22;
  v32 = v25;
  v36 = a5;
  v26 = v21;
  v33 = v26;
  v37 = a10;
  v27 = v19;
  v34 = v27;
  v35 = v38;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v29 withTimeout:45.0];

  _Block_object_dispose(v38, 8);
}

- (void)handler:(id)a3 messageGUIDToReport:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B59E8B8;
  v7[3] = &unk_278703040;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v7 withTimeout:45.0];
}

- (void)handler:(id)a3 messageIDSendFailure:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 timeStamp:(id)a7 storageContext:(id)a8
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a8;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_22B59EB5C;
  v20[3] = &unk_278705680;
  v20[4] = self;
  v21 = v12;
  v22 = v14;
  v23 = v13;
  v24 = v15;
  v16 = v15;
  v17 = v13;
  v18 = v14;
  v19 = v12;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v20 withTimeout:45.0];
}

- (void)handler:(id)a3 localFileResponse:(id)a4 storageContext:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [(IMDServiceSession *)self service];
      v13 = [v12 internalName];
      v16 = 138412546;
      v17 = v13;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "%@ relay received remote file response %@", &v16, 0x16u);
    }
  }

  v14 = [(IMDTelephonyServiceSession *)self attachmentController];
  [v14 remoteFileResponse:v9];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handler:(id)a3 localFileRequest:(id)a4 storageContext:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [(IMDServiceSession *)self service];
      v13 = [v12 internalName];
      v16 = 138412546;
      v17 = v13;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "%@ relay received remote file request %@", &v16, 0x16u);
    }
  }

  v14 = [(IMDTelephonyServiceSession *)self attachmentController];
  [v14 remotefileRequest:v9 attempts:0];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handler:(id)a3 localIncommingMessage:(id)a4 storageContext:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [(IMDServiceSession *)self service];
      v13 = [v12 internalName];
      v16 = 138412290;
      v17 = v13;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "%@ relay received Local incomming Message", &v16, 0xCu);
    }
  }

  v14 = [v9 objectForKeyedSubscript:IMDRelayLocalMessageDictionaryIncomingDictKey];
  [(IMDTelephonyServiceSession *)self _processReceivedDictionary:v14 storageContext:v10 receivedViaRelay:1 withCompletionBlock:0];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handler:(id)a3 localIncomingDownloadMessage:(id)a4 storageContext:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [(IMDServiceSession *)self service];
      v13 = [v12 internalName];
      v16 = 138412290;
      v17 = v13;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "%@ relay received Local incomming download Message", &v16, 0xCu);
    }
  }

  v14 = [v9 objectForKeyedSubscript:IMDRelayLocalMessageDictionaryIncomingDictKey];
  [(IMDTelephonyServiceSession *)self _processReceivedDictionary:v14 storageContext:v10 receivedViaRelay:1 withCompletionBlock:0];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handler:(id)a3 localOutgoingDownloadMessage:(id)a4 isBeingReplayed:(BOOL)a5 storageContext:(id)a6
{
  v22 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [(IMDServiceSession *)self service];
      v15 = [v14 internalName];
      *buf = 138412290;
      v21 = v15;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "%@ relay received Local outgoing Download Message", buf, 0xCu);
    }
  }

  v16 = [v11 objectForKeyedSubscript:IMDRelayLocalMessageDictionaryOutgoingDictKey];
  v17 = [v11 objectForKeyedSubscript:IMDRelayLocalMessageDictionaryGUIDKey];
  BYTE1(v19) = 1;
  LOBYTE(v19) = a5;
  [(IMDTelephonyServiceSession *)self handler:v10 outgoingDownloadMessage:v16 toIdentifier:0 fromIdentifier:0 fromToken:0 messageGUID:v17 timeStamp:0 isBeingReplayed:v19 isInProxyMode:v12 storageContext:?];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)handler:(id)a3 localOutgoingMessage:(id)a4 isBeingReplayed:(BOOL)a5 storageContext:(id)a6
{
  v22 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [(IMDServiceSession *)self service];
      v15 = [v14 internalName];
      *buf = 138412290;
      v21 = v15;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "%@ relay received Local outgoing Message", buf, 0xCu);
    }
  }

  v16 = [v11 objectForKeyedSubscript:IMDRelayLocalMessageDictionaryOutgoingDictKey];
  v17 = [v11 objectForKeyedSubscript:IMDRelayLocalMessageDictionaryGUIDKey];
  BYTE1(v19) = 1;
  LOBYTE(v19) = a5;
  [(IMDTelephonyServiceSession *)self handler:0 outgoingPlainTextMessage:v16 toIdentifier:0 fromIdentifier:0 fromToken:0 messageGUID:v17 timeStamp:0 isBeingReplayed:v19 isInProxyMode:v12 storageContext:?];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)handler:(id)a3 localMessageError:(id)a4 storageContext:(id)a5
{
  v7 = a4;
  v8 = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B59F71C;
  v11[3] = &unk_2787056A8;
  v11[4] = self;
  v12 = v8;
  v13 = v7;
  v9 = v7;
  v10 = v8;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v11 withTimeout:45.0];
}

- (BOOL)_canLocallySendWithPhoneNumber:(id)a3
{
  v3 = a3;
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    v4 = [MEMORY[0x277D1A908] sharedInstance];
    v5 = [v4 ctSubscriptionInfo];
    v6 = [v5 __im_containsPhoneNumber:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_chatForGroupID:(id)a3 originalGroupID:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v34 = a3;
  v35 = a4;
  v6 = +[IMDChatRegistry sharedInstance];
  v7 = [(IMDServiceSession *)self service];
  v8 = [v7 internalName];
  v33 = [v6 newestExistingChatWithOriginalGroupID:v35 onService:v8];

  v9 = v33;
  if (v33)
  {
    v10 = v33;
    goto LABEL_27;
  }

  v11 = +[IMDChatRegistry sharedInstance];
  v32 = [v11 existingChatsWithGroupID:v34];

  v12 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v13 = [v12 isOneChatEnabled];

  if (v13)
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

    v10 = [v32 firstObject];
    v15 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v16 = [v15 isMissingMessagesEnabled];

    if (!v16 || ![v32 count])
    {
      goto LABEL_26;
    }

    v17 = [(IMDServiceSession *)self service];
    v18 = [v17 internalName];
    v19 = IMChatLookupDomainForServiceName();

    if (v35 && ([v35 isEqualToString:v34] & 1) == 0)
    {
      v20 = [v10 domainIdentifiers];
      v21 = [v20 objectForKeyedSubscript:v19];
      if ([v21 containsObject:v35])
      {
      }

      else
      {
        v31 = [(IMDServiceSession *)self allowedToOverwriteOriginalGroupIDForChat:v10];

        if (v31)
        {
          [v10 assignIdentifier:v35 forDomain:v19 isHistoricalIdentifier:0];
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
    v10 = [v19 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v10)
    {
      v22 = *v37;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v37 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v36 + 1) + 8 * i);
          v25 = [v24 serviceName];
          v26 = [(IMDServiceSession *)self service];
          v27 = [v26 internalName];
          v28 = [v25 isEqualToString:v27];

          if (v28)
          {
            v10 = v24;
            goto LABEL_25;
          }
        }

        v10 = [v19 countByEnumeratingWithState:&v36 objects:v41 count:16];
        if (v10)
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

  return v10;
}

- (void)handler:(id)a3 incomingGroupMutationMessage:(id)a4 timeStamp:(id)a5 storageContext:(id)a6 fromToken:(id)a7 fromID:(id)a8 isInProxyMode:(BOOL)a9
{
  v12 = a4;
  v13 = a7;
  v14 = a8;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_22B59FD84;
  v18[3] = &unk_278705720;
  v18[4] = self;
  v19 = v13;
  v22 = a9;
  v20 = v14;
  v21 = v12;
  v15 = v12;
  v16 = v14;
  v17 = v13;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v18 withTimeout:45.0];
}

- (void)handler:(id)a3 receivedPriorityMessageCommand:(id)a4 fromIdentifier:(id)a5 toIdentifier:(id)a6 fromToken:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22B5A085C;
  v19[3] = &unk_278705680;
  v19[4] = self;
  v20 = v13;
  v21 = v12;
  v22 = v14;
  v23 = v11;
  v15 = v11;
  v16 = v14;
  v17 = v12;
  v18 = v13;
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

- (BOOL)_shouldForceReplicationForStaleChatWithLastKnownReplicationDate:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

  else if (v4)
  {
    v7 = [MEMORY[0x277CBEAA8] now];
    [v7 timeIntervalSinceDate:v4];
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

- (BOOL)acceptsIncomingReplicatedMessagesFromAccount:(id)a3 toIdentifier:(id)a4 isSOS:(BOOL)a5
{
  v5 = a5;
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (!v5 || [(IMDTelephonyServiceSession *)self _sosReplicationDisabledByServerBag])
  {
    if (![(IMDTelephonyServiceSession *)self _replicationDisabledByServerBag])
    {
      if (v9 && ([v9 _appearsToBePhoneNumber] & 1) != 0)
      {
        v10 = [(IMDTelephonyServiceSession *)self replicationRequirementsSatisfiedForPhoneNumber:v9 simID:0];
        goto LABEL_17;
      }

      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [(IMDServiceSession *)self account];
          v16 = 138412802;
          v17 = v8;
          v18 = 2112;
          v19 = v12;
          v20 = 2112;
          v21 = v9;
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
      v17 = v8;
      v18 = 2112;
      v19 = v9;
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
  v4 = [(IMDTelephonyServiceSession *)self relayController];
  v5 = [v4 dominentPhoneNumberAlias];

  if (v5)
  {
    v6 = IMChatCanonicalIDSIDsForAddress();
    v7 = [v6 _stripFZIDPrefix];

    [v3 addObject:v7];
  }

  v8 = [v3 copy];

  return v8;
}

- (id)outgoingReplicationCallerIDForChat:(id)a3
{
  v4 = a3;
  v5 = [v4 chatIdentifier];
  v6 = -[IMDTelephonyServiceSession _callerIDForChatWithChatIdentifier:chatStyle:foundChat:](self, "_callerIDForChatWithChatIdentifier:chatStyle:foundChat:", v5, [v4 style], v4);

  return v6;
}

- (id)preferredAccountForReplicationOnService:(id)a3 eligibleAccounts:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v39 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v55 = v39;
      v56 = 2112;
      v57 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Choosing preferred replication account for %@ from %@", buf, 0x16u);
    }
  }

  v8 = [(IMDTelephonyServiceSession *)self replicationPhoneNumbers];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v9 = v6;
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
        v14 = [v13 loginID];
        v15 = MEMORY[0x231897A70]();

        v16 = IMChatCanonicalIDSIDsForAddress();
        v17 = [v16 _stripFZIDPrefix];

        if ([v8 containsObject:v17])
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
              v59 = v17;
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
        v21 = [v20 aliases];
        v22 = [v21 countByEnumeratingWithState:&v40 objects:v52 count:16];
        if (v22)
        {
          v23 = *v41;
          while (2)
          {
            for (k = 0; k != v22; ++k)
            {
              if (*v41 != v23)
              {
                objc_enumerationMutation(v21);
              }

              v25 = *(*(&v40 + 1) + 8 * k);
              v26 = IMChatCanonicalIDSIDsForAddress();
              v27 = [v26 _stripFZIDPrefix];

              if ([v8 containsObject:v27])
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

            v22 = [v21 countByEnumeratingWithState:&v40 objects:v52 count:16];
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
      v29 = [v8 allObjects];
      *buf = 138412290;
      v55 = v29;
      _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Failed to find matching replication account with possible numbers %@", buf, 0xCu);
    }
  }

  v30 = 0;
LABEL_43:

  v33 = *MEMORY[0x277D85DE8];

  return v30;
}

- (BOOL)_shouldReplicateMessageItem:(id)a3 chatStyle:(unsigned __int8)a4 lastKnownReplicationDate:(id)a5 callerID:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([v10 isSOS])
  {
    v13 = [(IMDTelephonyServiceSession *)self _sosReplicationDisabledByServerBag];
  }

  else
  {
    if (v8 != 43 || ![(IMDTelephonyServiceSession *)self replicationRequiredForFeaturesUsedByMessageItem:v10]&& ![(IMDTelephonyServiceSession *)self _shouldForceReplicationForStaleChatWithLastKnownReplicationDate:v11]|| ![(IMDTelephonyServiceSession *)self replicationRequirementsSatisfiedForPhoneNumber:v12 simID:0])
    {
      v14 = 0;
      goto LABEL_10;
    }

    v13 = [(IMDTelephonyServiceSession *)self _replicationDisabledByServerBag];
  }

  v14 = !v13;
LABEL_10:

  return v14;
}

- (id)_replicatedMessageGUIDToReleaseFromMessageDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:IMDRelayMessageDictionaryAttemptedOutgoingReplicationKey];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 BOOLValue] && (objc_msgSend(v3, "objectForKeyedSubscript:", IMDRelayMessageItemDictionary), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
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

- (void)_deferredReplicatedMessageReleaseWithAllowedMessage:(id)a3 outgoingProxyBlock:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(IMDTelephonyServiceSession *)self _replicatedMessageGUIDToReleaseFromMessageDictionary:v6];
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
    v14 = self;
    v15 = v7;
    dispatch_after(v10, MEMORY[0x277D85CD0], block);
  }

  else
  {
    (*(v7 + 2))(v7, 1);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sendGroupPhotoUpdate:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7
{
  if (a6 == 43)
  {
    v12 = a7;
    v13 = a5;
    v14 = a4;
    v15 = a3;
    v16 = [(IMDServiceSession *)self replicationProxy];
    [v16 sendGroupPhotoUpdate:v15 toChatID:v14 identifier:v13 style:43 account:v12];
  }
}

- (void)relayDisplayNameChange:(id)a3 forChat:(id)a4 fromID:(id)a5 messageID:(id)a6 didOccurLocally:(BOOL)a7
{
  v33 = a7;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = a3;
  v32 = [v11 groupID];
  v15 = [v11 originalGroupID];
  v16 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v17 = [v16 isMissingMessagesEnabled];

  if (v17)
  {
    v18 = [(IMDServiceSession *)self service];
    v19 = [v18 internalName];
    v20 = IMChatLookupDomainForServiceName();

    if (v20)
    {
      v21 = [v11 latestIdentifierForDomain:v20];
      v22 = v21;
      if (v21)
      {
        v23 = v21;

        v15 = v23;
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
  v26 = [(IMDServiceSession *)self service];
  v27 = [v26 internalName];
  v28 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v12];

  LOWORD(v31) = 256;
  v29 = [(IMDRelayGroupDisplayNameMutationMessage *)v25 initWithName:v14 sender:0 service:v27 groupID:v32 originalGroupID:v15 guid:v28 destinationCallerID:v13 failed:v31 fromMe:?];

  v30 = [(IMDTelephonyServiceSession *)self relayController];
  [v30 reflectGroupMutation:v29 callerID:v13 didOccurLocally:v33];
}

- (BOOL)replicationRequiredForFeaturesUsedByMessageItem:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isSOS])
  {
    goto LABEL_17;
  }

  v5 = [v4 associatedMessageGUID];
  v6 = [v5 length];

  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v4 guid];
        v24 = 138412290;
        v25 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Allowing replication for %@, has associated message GUID", &v24, 0xCu);
      }

LABEL_16:

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v9 = [v4 expressiveSendStyleID];
  v10 = [v9 length];

  if (!v10)
  {
    v12 = [v4 balloonBundleID];
    v13 = [v12 length];

    if (v13)
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v14 = [v4 guid];
          v24 = 138412290;
          v25 = v14;
          _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Allowing replication for %@, has balloon bundle ID", &v24, 0xCu);
        }

        goto LABEL_16;
      }

      goto LABEL_17;
    }

    v18 = [v4 messageSummaryInfo];
    v19 = [v18 objectForKeyedSubscript:*MEMORY[0x277D1A058]];

    if ([v19 length])
    {
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = [v4 guid];
          v24 = 138412290;
          v25 = v21;
          _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Allowing replication for %@, has translated message parts", &v24, 0xCu);
        }

LABEL_28:
      }
    }

    else
    {
      v22 = [v4 body];
      v15 = [(IMDTelephonyServiceSession *)self _replicationRequiredForFeaturesUsedByMessageBody:v22];

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
          v23 = [v4 guid];
          v24 = 138412290;
          v25 = v23;
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
      v11 = [v4 guid];
      v24 = 138412290;
      v25 = v11;
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

- (BOOL)_replicationRequiredForFeaturesUsedByMessageBody:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v5 = [v4 length];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B669244;
  v7[3] = &unk_278707438;
  v7[5] = v8;
  v7[6] = &v9;
  v7[4] = self;
  [v4 enumerateAttributesInRange:0 options:v5 usingBlock:{0, v7}];
  LOBYTE(self) = *(v10 + 24);
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v9, 8);

  return self;
}

- (BOOL)reflectPriorityMessageToPeerDevicesForMessageGUIDs:(id)a3
{
  v4 = a3;
  v5 = [(IMDTelephonyServiceSession *)self relayController];
  v6 = [v5 reflectPriorityMessageToPeerDevicesForMessageGUIDs:v4];

  return v6;
}

- (void)_processReceivedDictionaryInBlastDoor:(id)a3 storageContext:(id)a4 receivedViaRelay:(BOOL)a5 withCompletionBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 objectForKeyedSubscript:IMDCTMessageDictionaryGUIDKey];
  if ([v13 length])
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-relay.smsdata", v13];
    [MEMORY[0x277D1AA18] writeMessagePayloadToDisk:v10 fileName:v14];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22B6C1DAC;
  v19[3] = &unk_278708298;
  v20 = v13;
  v21 = self;
  v22 = v10;
  v23 = v11;
  v25 = a5;
  v24 = v12;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = v13;
  [IMBlastdoor sendSMSDictionary:v17 withCompletionBlock:v19];
}

- (void)_releasePendingMessagesAndProcessReceivedSMSMessage:(id)a3 storageContext:(id)a4 receivedViaRelay:(BOOL)a5 serviceName:(id)a6 completionBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = +[IMPendingReplicatedMessageCache sharedCache];
  v17 = [v12 GUID];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_22B6C2398;
  v22[3] = &unk_2787082C0;
  v22[4] = self;
  v23 = v12;
  v27 = a5;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v18 = v15;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  [v16 releasePendingMessageWithGUID:v17 serviceName:v19 chat:0 completion:v22];
}

- (void)_generatePreviewForTransfer:(id)a3 message:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = IMDTelephonyServiceLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Generating preview for attachment part", v13, 2u);
  }

  v8 = [v5 isFromMe];
  v9 = MEMORY[0x277D1AB80];
  v10 = [v5 service];
  if (v8)
  {
    [v9 fromMeContextWithServiceName:v10];
  }

  else
  {
    [v9 untrustedContextWithServiceName:v10];
  }
  v11 = ;

  v12 = +[IMDFileTransferCenter sharedInstance];
  [v12 generatePreviewForTransfer:v6 messageItem:v5 senderContext:v11];
}

- (id)_countryCodeForIncomingTextMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 countryCode];

  if (v4)
  {
    v5 = [v3 countryCode];
    goto LABEL_11;
  }

  v6 = [v3 originatedDeviceSIM];
  if (v6)
  {
  }

  else
  {
    v7 = [v3 originatedDeviceNumber];

    if (!v7)
    {
LABEL_7:
      v12 = [MEMORY[0x277D1AAA8] sharedInstance];
      [v12 forceAutoBugCaptureWithSubType:@"Missing Destination Information" errorPayload:0 type:@"DSDS Privacy Violation" context:@"Selected a default country code instead of being aware of the number a message was received on."];

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
  v9 = [v3 originatedDeviceNumber];
  v10 = [v3 originatedDeviceSIM];
  v11 = [v8 IMCountryCodeForPhoneNumber:v9 simID:v10];

  if (!v11)
  {
    goto LABEL_7;
  }

LABEL_10:
  v5 = v11;

LABEL_11:

  return v5;
}

- (BOOL)incomingMessageHasTooManyRecipients:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 originatedDeviceSIM];
  v6 = [v4 originatedDeviceNumber];
  v7 = [(IMDTelephonyServiceSession *)self maxRecipientsForPhoneNumber:v6 simID:v5];
  v8 = v7;
  if (v7 == 0x7FFFFFFF || !v7)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v19 = 134217984;
        v20 = v8;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Carrier bundle value for maxReceipients was 0 or INT_MAX (%llu), falling back to iMessage maximum", &v19, 0xCu);
      }
    }

    v10 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
    v11 = [v10 objectForKey:@"md-max-chat-participants-incoming"];

    if (v11)
    {
      v8 = [v11 unsignedIntegerValue];
    }

    else
    {
      v8 = 120;
    }
  }

  v12 = [v4 recipients];
  v13 = [v12 count];

  if (v13 > v8 && IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v4 recipients];
      v16 = [v15 count];
      v19 = 134218240;
      v20 = v16;
      v21 = 2048;
      v22 = v8;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Filtering message due to excessive recipient count: %llu maxRecipients: %llu", &v19, 0x16u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v13 > v8;
}

- (void)_processReceivedSMSMessage:(id)a3 storageContext:(id)a4 receivedViaRelay:(BOOL)a5 serviceName:(id)a6 completionBlock:(id)a7
{
  v503 = a5;
  v617 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v502 = a4;
  v501 = a6;
  v511 = a7;
  v11 = objc_alloc_init(IMDTelephonyIncomingMessageContext);
  if ([v10 has_sendEnabled])
  {
    v12 = [v10 sendEnabled];
  }

  else
  {
    v12 = 1;
  }

  v527 = v11;
  [(IMDTelephonyIncomingMessageContext *)v11 setIsSendEnabled:v12];
  v526 = v10;
  v13 = [v10 originatedDeviceNumber];
  [(IMDTelephonyIncomingMessageContext *)v527 setMyNumberString:v13];

  v14 = [v10 originatedDeviceSIM];
  [(IMDTelephonyIncomingMessageContext *)v527 setMySIMIDString:v14];

  v15 = [v10 sender];
  [(IMDTelephonyIncomingMessageContext *)v527 setSender:v15];

  v16 = [v10 sender];
  [(IMDTelephonyIncomingMessageContext *)v527 setSenderUnformatted:v16];

  v17 = [(IMDTelephonyServiceSession *)self _countryCodeForIncomingTextMessage:v10];
  [(IMDTelephonyIncomingMessageContext *)v527 setCountryCode:v17];

  -[IMDTelephonyIncomingMessageContext setCapability:](v527, "setCapability:", [v10 iMessageCapability]);
  [(IMDTelephonyIncomingMessageContext *)v527 setWasRelayed:v503];
  v18 = [(IMDServiceSession *)self service];
  v19 = [v18 supportsCapability:*MEMORY[0x277D1A560]];

  if (v19)
  {
    v20 = [v10 displayName];
    [(IMDTelephonyIncomingMessageContext *)v527 setDisplayName:v20];
  }

  v21 = [(IMDServiceSession *)self service];
  v22 = [v21 supportsCapability:*MEMORY[0x277D1A558]];

  if (v22)
  {
    v23 = [v10 groupID];
    [(IMDTelephonyIncomingMessageContext *)v527 setGroupID:v23];

    v24 = [v10 originalGroupID];
    [(IMDTelephonyIncomingMessageContext *)v527 setOriginalGroupID:v24];
  }

  v508 = [v10 version];
  v25 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
  v26 = v25 | v508;

  if (v26)
  {
    v28 = [MEMORY[0x277D1AA78] sharedInstance];
    [v28 acquireAssertionToUnsuspendProcess];

    v29 = [v10 trackMessage];
    v30 = [v10 GUID];
    v31 = v30;
    if (![v30 length])
    {
      v31 = StringGUID();
    }

    if (v31)
    {
      v32 = v29;
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
        v37 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
        v38 = [v10 items];
        v39 = [v38 count];
        v40 = [v10 type];
        v41 = [v10 countryCode];
        v42 = [v526 serviceCenter];
        v43 = [(IMDTelephonyIncomingMessageContext *)v527 countryCode];
        v44 = [(IMDTelephonyIncomingMessageContext *)v527 displayName];
        *buf = 138413826;
        *&buf[4] = v37;
        *&buf[12] = 2048;
        *&buf[14] = v39;
        *&buf[22] = 2048;
        v611 = v40;
        *v612 = 2112;
        *&v612[2] = v41;
        *&v612[10] = 2112;
        *&v612[12] = v42;
        v613 = 2112;
        v614 = v43;
        v615 = 2112;
        v616 = v44;
        _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "received message with sender: %@, %lu parts, type: %ld  msgCountryCode: %@ service center: %@  incoming code: %@ displayName: %@", buf, 0x48u);
      }

      v35 = v527;
    }

    v45 = [(IMDTelephonyIncomingMessageContext *)v35 sender];
    v46 = [v45 length] == 0;

    if (v46)
    {
      v47 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v48 = [v47 localizedStringForKey:@"Unknown" value:&stru_283F23018 table:@"SMSLocalizable"];
      [(IMDTelephonyIncomingMessageContext *)v527 setSender:v48];

      v49 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
      [(IMDTelephonyIncomingMessageContext *)v527 setSenderUnformatted:v49];
    }

    v50 = [(IMDTelephonyIncomingMessageContext *)v527 sender];

    if (v50)
    {
      v51 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
      v52 = [v51 _appearsToBePhoneNumber];

      v53 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
      v54 = v53;
      if (v52)
      {
        v55 = [(IMDTelephonyIncomingMessageContext *)v527 countryCode];
        v56 = IMPhoneNumberRefCopyForPhoneNumber();

        v57 = IMNormalizedPhoneNumberForCFPhoneNumberRef();
        v58 = IMDTelephonyServiceLogHandle();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v59 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
          *buf = 138412546;
          *&buf[4] = v56;
          *&buf[12] = 2112;
          *&buf[14] = v59;
          _os_log_impl(&dword_22B4CC000, v58, OS_LOG_TYPE_DEFAULT, "Created number ref: %@  for ID: %@", buf, 0x16u);
        }

        v60 = IMDTelephonyServiceLogHandle();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          v61 = [(IMDTelephonyIncomingMessageContext *)v527 countryCode];
          *buf = 138412290;
          *&buf[4] = v61;
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
        v64 = [v53 _appearsToBeEmail];

        if (!v64)
        {
          goto LABEL_44;
        }

        v65 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
        v57 = IMNormalizeFormattedString();

        v63 = [v57 length];
      }

      if (v63)
      {
        [(IMDTelephonyIncomingMessageContext *)v527 setSender:v57];
      }
    }

LABEL_44:
    v66 = [(IMDTelephonyIncomingMessageContext *)v527 displayName];
    if (!v66)
    {
      v66 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
      if (([v66 __im_isChatBotPatterned] & 1) == 0)
      {
        if (IMShouldHandleInternalPhishingAttempts())
        {
          v67 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
          if (IMStringIsEmail())
          {
            v68 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
            v609 = v68;
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
                  v73 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
                  *buf = 138412290;
                  *&buf[4] = v73;
                  _os_log_impl(&dword_22B4CC000, v72, OS_LOG_TYPE_DEFAULT, "*** Blocking likely phishing SMS message from sender: %@", buf, 0xCu);
                }

                if (!v511)
                {
                  goto LABEL_547;
                }

                goto LABEL_79;
              }

LABEL_57:
              v74 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
              v75 = [v74 _stripFZIDPrefix];
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
                        *&buf[4] = v74;
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
                        v84 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
                        *buf = 138412290;
                        *&buf[4] = v84;
                        _os_log_impl(&dword_22B4CC000, v83, OS_LOG_TYPE_DEFAULT, "*** Blocking message from sender: %@", buf, 0xCu);
                      }

                      if (!v511)
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
                        v86 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
                        *buf = 138412290;
                        *&buf[4] = v86;
                        _os_log_impl(&dword_22B4CC000, v85, OS_LOG_TYPE_DEFAULT, "*** Blocking message with too many participants from sender: %@", buf, 0xCu);
                      }

                      if (!v511)
                      {
                        goto LABEL_547;
                      }

LABEL_79:
                      (*(v511 + 2))(v511, 0, v498, 0);
LABEL_547:

                      goto LABEL_548;
                    }

                    if ([v526 type])
                    {
                      v488 = 0;
                    }

                    else
                    {
                      v488 = [v526 replaceMessage];
                    }

                    v87 = objc_alloc(MEMORY[0x277CBEB38]);
                    v88 = [v526 items];
                    v528 = [v87 initWithCapacity:{objc_msgSend(v88, "count")}];

                    v89 = objc_alloc(MEMORY[0x277CBEB38]);
                    v90 = [v526 items];
                    v533 = [v89 initWithCapacity:{objc_msgSend(v90, "count")}];

                    v91 = objc_alloc(MEMORY[0x277CBEB38]);
                    v92 = [v526 items];
                    v493 = [v91 initWithCapacity:{objc_msgSend(v92, "count")}];

                    v93 = objc_alloc(MEMORY[0x277CBEB18]);
                    v94 = [v526 items];
                    v529 = [v93 initWithCapacity:{objc_msgSend(v94, "count")}];

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
                          v100 = [v97 contentType];
                          *buf = 138412290;
                          *&buf[4] = v100;
                          _os_log_impl(&dword_22B4CC000, v99, OS_LOG_TYPE_DEFAULT, "      content type: %@", buf, 0xCu);
                        }

                        v101 = IMDTelephonyServiceLogHandle();
                        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
                        {
                          v102 = [v97 contentId];
                          *buf = 138412290;
                          *&buf[4] = v102;
                          _os_log_impl(&dword_22B4CC000, v101, OS_LOG_TYPE_DEFAULT, "        content ID: %@", buf, 0xCu);
                        }

                        v103 = IMDTelephonyServiceLogHandle();
                        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                        {
                          v104 = [v97 contentLocation];
                          *buf = 138412290;
                          *&buf[4] = v104;
                          _os_log_impl(&dword_22B4CC000, v103, OS_LOG_TYPE_DEFAULT, "  content location: %@", buf, 0xCu);
                        }

                        v105 = [v97 contentId];
                        v504 = SMSCopySanitizedContentID(v105);

                        v106 = [v97 contentLocation];
                        v506 = SMSCopySanitizedContentLocation(v106);

                        v107 = IMDTelephonyServiceLogHandle();
                        if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412546;
                          *&buf[4] = v504;
                          *&buf[12] = 2112;
                          *&buf[14] = v506;
                          _os_log_impl(&dword_22B4CC000, v107, OS_LOG_TYPE_DEFAULT, "Sanitized ID %@  sanitized loc %@", buf, 0x16u);
                        }

                        v108 = [v97 content];
                        v109 = [v108 type];

                        if (v109 <= 1)
                        {
                          if (v109)
                          {
                            if (v109 == 1)
                            {
                              v124 = [v97 content];
                              v125 = [v124 smil];
                              oslog = [v125 contentBody];

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
                              v171 = [v97 content];
                              v172 = [v171 smil];
                              v512 = [v172 orderedParts];

                              v523 = [v512 countByEnumeratingWithState:&v583 objects:v606 count:16];
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
                                      objc_enumerationMutation(v512);
                                      v173 = v174;
                                    }

                                    v531 = v173;
                                    v175 = *(*(&v583 + 1) + 8 * v173);
                                    v176 = objc_alloc_init(IMDSMSPart);
                                    v582 = 0u;
                                    v581 = 0u;
                                    v580 = 0u;
                                    v579 = 0u;
                                    v177 = [v175 textParts];
                                    v178 = [v177 countByEnumeratingWithState:&v579 objects:v605 count:16];
                                    if (v178)
                                    {
                                      v179 = *v580;
                                      do
                                      {
                                        for (i = 0; i != v178; ++i)
                                        {
                                          if (*v580 != v179)
                                          {
                                            objc_enumerationMutation(v177);
                                          }

                                          v181 = *(*(&v579 + 1) + 8 * i);
                                          v182 = [IMDSMSTextPart alloc];
                                          v183 = [v181 contentLocation];
                                          v184 = [(IMDSMSTextPart *)v182 initWithContentLocation:v183];

                                          v185 = [v181 text];
                                          [(IMDSMSTextPart *)v184 appendText:v185];

                                          [(IMDSMSPart *)v176 addTextPart:v184];
                                        }

                                        v178 = [v177 countByEnumeratingWithState:&v579 objects:v605 count:16];
                                      }

                                      while (v178);
                                    }

                                    v578 = 0u;
                                    v577 = 0u;
                                    v576 = 0u;
                                    v575 = 0u;
                                    v186 = [v175 attachmentParts];
                                    v187 = [v186 countByEnumeratingWithState:&v575 objects:v604 count:16];
                                    if (v187)
                                    {
                                      v188 = *v576;
                                      do
                                      {
                                        for (j = 0; j != v187; ++j)
                                        {
                                          if (*v576 != v188)
                                          {
                                            objc_enumerationMutation(v186);
                                          }

                                          v190 = *(*(&v575 + 1) + 8 * j);
                                          v191 = [IMDSMSAttachmentPart alloc];
                                          v192 = [v190 contentLocation];
                                          v193 = [(IMDSMSAttachmentPart *)v191 initWithContentLocation:v192];

                                          [(IMDSMSPart *)v176 addAttachmentPart:v193];
                                        }

                                        v187 = [v186 countByEnumeratingWithState:&v575 objects:v604 count:16];
                                      }

                                      while (v187);
                                    }

                                    [cf1a addObject:v176];
                                    v173 = v531 + 1;
                                  }

                                  while (v531 + 1 != v523);
                                  v523 = [v512 countByEnumeratingWithState:&v583 objects:v606 count:16];
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
                              v168 = [v97 content];
                              v169 = [v168 type];
                              *buf = 134217984;
                              *&buf[4] = v169;
                              _os_log_impl(&dword_22B4CC000, oslog, OS_LOG_TYPE_DEFAULT, "Unhandled BlastDoorSMSCTPartContent: %ld", buf, 0xCu);
                            }

                            goto LABEL_274;
                          }

                          v158 = [v97 content];
                          v159 = [v158 plain];
                          v160 = [v159 plainTextContentBody];

                          if (v160)
                          {
                            oslog = objc_alloc_init(MEMORY[0x277CCAB68]);
                            v161 = [v97 content];
                            v162 = [v161 plain];
                            v163 = [v162 plainTextContentBody];
                            [oslog appendString:v163];

                            v164 = [v97 content];
                            v165 = [v164 plain];
                            v166 = [v165 plainTextContentBody];
                            v167 = [v166 stringByRemovingWhitespace];
                            [v491 appendString:v167];
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
                            v199 = [MEMORY[0x277CCA900] newlineCharacterSet];
                            v200 = [v199 characterIsMember:{-[NSObject characterAtIndex:](oslog, "characterAtIndex:", -[NSObject length](oslog, "length") - 1)}];

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
                              v204 = [v202 __im_attributedStringByAssigningMessagePartNumbers];
                              if (v204)
                              {
                                if ([v504 length])
                                {
                                  [v528 setObject:v204 forKey:v504];
                                }

                                if ([v506 length])
                                {
                                  [v533 setObject:v204 forKey:v506];
                                }

                                [v529 addObject:v204];
                              }
                            }

                            goto LABEL_273;
                          }
                        }

                        else
                        {
                          switch(v109)
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
                              v137 = [v97 content];
                              v138 = [v137 attachment];
                              v139 = [v138 contentData];

                              v140 = [v97 content];
                              v141 = [v140 attachment];
                              v522 = [v141 richCardOriginalGuid];

                              v142 = [v136 stringByRemovingURLEscapes];

                              if (![(__CFString *)v142 length])
                              {
                                v143 = IMDTelephonyServiceLogHandle();
                                if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
                                {
                                  *buf = 0;
                                  _os_log_impl(&dword_22B4CC000, v143, OS_LOG_TYPE_DEFAULT, "  *** Empty filename!", buf, 2u);
                                }

                                v142 = @"Attachment";
                              }

                              v144 = [(__CFString *)v142 pathExtension];
                              v145 = [v144 length] == 0;

                              if (v145)
                              {
                                v207 = IMDTelephonyServiceLogHandle();
                                if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
                                {
                                  *buf = 138412290;
                                  *&buf[4] = v142;
                                  _os_log_impl(&dword_22B4CC000, v207, OS_LOG_TYPE_DEFAULT, "  *** Filename has no extension: %@", buf, 0xCu);
                                }

                                v208 = [MEMORY[0x277D19250] defaultHFSFileManager];
                                v209 = [v208 pathExtensionForMIMEType:cf1];

                                v210 = IMDTelephonyServiceLogHandle();
                                if (os_log_type_enabled(v210, OS_LOG_TYPE_DEFAULT))
                                {
                                  *buf = 138412290;
                                  *&buf[4] = v209;
                                  _os_log_impl(&dword_22B4CC000, v210, OS_LOG_TYPE_DEFAULT, "  Proposed extension: %@", buf, 0xCu);
                                }

                                if ([v209 length])
                                {
                                  v211 = [(__CFString *)v142 stringByAppendingPathExtension:v209];

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
                                  v211 = v142;
                                }

                                v146 = v211;
                              }

                              else
                              {
                                v146 = v142;
                              }

                              v213 = v146;
                              v532 = [v146 lastPathComponent];
                              v214 = -[NSObject guidForNewIncomingTransferWithFilename:isDirectory:totalBytes:hfsType:hfsCreator:hfsFlags:](oslog, "guidForNewIncomingTransferWithFilename:isDirectory:totalBytes:hfsType:hfsCreator:hfsFlags:", v532, 0, [v139 length], 0, 0, 0);
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
                                v217 = [v139 length];
                                *buf = 67109120;
                                *&buf[4] = v217;
                                _os_log_impl(&dword_22B4CC000, v216, OS_LOG_TYPE_DEFAULT, "      data length: %d", buf, 8u);
                              }

                              v218 = IMDTelephonyServiceLogHandle();
                              if (os_log_type_enabled(v218, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 138412290;
                                *&buf[4] = v532;
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
                                v220 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
                                v221 = [v220 isRelayChatBotEnabled];

                                if (v522)
                                {
                                  v222 = v221;
                                }

                                else
                                {
                                  v222 = 0;
                                }

                                if (v222 == 1)
                                {
                                  [v493 setObject:v214 forKeyedSubscript:v522];
                                }

                                v223 = [MEMORY[0x277CCAA00] defaultManager];
                                v224 = [v223 im_randomTemporaryFileURLWithFileName:v532];

                                v225 = IMDTelephonyServiceLogHandle();
                                if (os_log_type_enabled(v225, OS_LOG_TYPE_DEFAULT))
                                {
                                  *v595 = 138412290;
                                  *v596 = v224;
                                  _os_log_impl(&dword_22B4CC000, v225, OS_LOG_TYPE_DEFAULT, "  => Writing data to path: %@", v595, 0xCu);
                                }

                                v226 = v527;
                                if (([v139 writeToURL:v224 atomically:1] & 1) == 0)
                                {
                                  v226 = v527;
                                  if (IMOSLoggingEnabled())
                                  {
                                    v227 = OSLogHandleForIMFoundationCategory();
                                    if (os_log_type_enabled(v227, OS_LOG_TYPE_INFO))
                                    {
                                      v228 = [v139 length];
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
                                v571 = self;
                                v572 = v226;
                                v574 = buf;
                                v573 = v492;
                                v230 = _Block_copy(aBlock);
                                if ([MEMORY[0x277D1A9A0] deviceIsLockedDown])
                                {
                                  v231 = [MEMORY[0x277D1ADE0] sharedInstance];
                                  v564[0] = MEMORY[0x277D85DD0];
                                  v564[1] = 3221225472;
                                  v564[2] = sub_22B6C7C58;
                                  v564[3] = &unk_278708310;
                                  v565 = v229;
                                  v232 = v224;
                                  v566 = v232;
                                  v567 = v230;
                                  [v231 generateSafeRender:v232 completionBlock:v564];
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

                                v236 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
                                v237 = [v236 isRelayChatBotEnabled];
                                if (v522)
                                {
                                  v238 = v237;
                                }

                                else
                                {
                                  v238 = 0;
                                }

                                if ((v238 & 1) == 0)
                                {
                                  v239 = MEMORY[0x277CCA898];
                                  v240 = [*(*&buf[8] + 40) guid];
                                  v603 = v240;
                                  v241 = [MEMORY[0x277CBEA60] arrayWithObjects:&v603 count:1];
                                  v242 = [v239 __im_attributedStringWithFileTransfers:v241];
                                  v243 = [v242 __im_attributedStringByAssigningMessagePartNumbers];

                                  if ([v504 length])
                                  {
                                    [v528 setObject:v243 forKey:v504];
                                  }

                                  if ([v135 length])
                                  {
                                    [v533 setObject:v243 forKey:v135];
                                  }

                                  [v529 addObject:v243];
                                }

                                v244 = [v235 balloonBundleID];
                                v245 = [v244 containsString:v487];

                                if (v245)
                                {
                                  v246 = [v235 richLinkURLs];
                                  v247 = [v246 lastObject];

                                  if (v247)
                                  {
                                    goto LABEL_263;
                                  }

                                  v248 = MEMORY[0x277CBEBC0];
                                  v249 = [v235 body];
                                  v250 = [v249 string];
                                  v247 = [v248 URLWithString:v250];

                                  if (v247)
                                  {
LABEL_263:
                                    v251 = [MEMORY[0x277D1AC40] sharedManager];
                                    v563 = 0;
                                    v562 = 0;
                                    [v251 appNameAndBundleIDFoURL:v247 outAppName:&v563 outBundleID:&v562];
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
                                    v247 = IMDTelephonyServiceLogHandle();
                                    if (os_log_type_enabled(v247, OS_LOG_TYPE_DEFAULT))
                                    {
                                      *v595 = 138412290;
                                      *v596 = v498;
                                      _os_log_impl(&dword_22B4CC000, v247, OS_LOG_TYPE_DEFAULT, "unable to extract URL for message identified as RichLink: %@", v595, 0xCu);
                                    }
                                  }
                                }
                              }

                              _Block_object_dispose(buf, 8);

                              break;
                            case 3:
                              v147 = [v97 content];
                              v148 = [v147 attributedChipList];
                              oslog = [v148 chipList];

                              v149 = [objc_alloc(MEMORY[0x277D1A928]) initWithDictionary:oslog];
                              v150 = objc_alloc(MEMORY[0x277CCA898]);
                              v151 = [v149 dictionaryRepresentation];
                              v152 = [v150 initWithString:v489 attributes:v151];

                              if ([v152 length])
                              {
                                if (IMOSLoggingEnabled())
                                {
                                  v153 = OSLogHandleForIMFoundationCategory();
                                  if (os_log_type_enabled(v153, OS_LOG_TYPE_INFO))
                                  {
                                    v154 = [v149 suggestedReplies];
                                    v155 = [v154 count];
                                    v156 = [v149 suggestedActions];
                                    v157 = [v156 count];
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
                              v110 = [v97 content];
                              v111 = [v110 attributedRichCards];
                              oslog = [v111 richCards];

                              v112 = [objc_alloc(MEMORY[0x277D1AB58]) initWithDictionary:oslog];
                              v113 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v490 attributes:oslog];
                              if ([v113 length])
                              {
                                if (IMOSLoggingEnabled())
                                {
                                  v114 = OSLogHandleForIMFoundationCategory();
                                  if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
                                  {
                                    v115 = [v112 cards];
                                    v116 = [v115 count];
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
                                v270 = [v267 attachmentParts];
                                v271 = [v270 countByEnumeratingWithState:&v554 objects:v601 count:16];
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
                                        objc_enumerationMutation(v270);
                                      }

                                      v274 = *(*(&v554 + 1) + 8 * v273);
                                      v275 = IMDTelephonyServiceLogHandle();
                                      if (os_log_type_enabled(v275, OS_LOG_TYPE_DEFAULT))
                                      {
                                        *buf = 138412290;
                                        *&buf[4] = v274;
                                        _os_log_impl(&dword_22B4CC000, v275, OS_LOG_TYPE_DEFAULT, " Found attachmentPart %@", buf, 0xCu);
                                      }

                                      v276 = [v274 contentLocation];
                                      v277 = [v533 objectForKey:v276];

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
                                    v279 = [v270 countByEnumeratingWithState:&v554 objects:v601 count:16];
                                    v271 = v279;
                                  }

                                  while (v279);
                                }

                                v552 = 0u;
                                v553 = 0u;
                                v550 = 0u;
                                v551 = 0u;
                                v280 = [v267 textParts];
                                v281 = [v280 countByEnumeratingWithState:&v550 objects:v600 count:16];
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
                                        objc_enumerationMutation(v280);
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

                                      v287 = [v284 contentLocation];
                                      v288 = [v533 objectForKey:v287];

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

                                      v292 = [v284 text];
                                      if ([v292 length])
                                      {
                                        v293 = IMDTelephonyServiceLogHandle();
                                        if (os_log_type_enabled(v293, OS_LOG_TYPE_DEFAULT))
                                        {
                                          v294 = MarcoLoggingStringForMessageData();
                                          *buf = 138412290;
                                          *&buf[4] = v294;
                                          _os_log_impl(&dword_22B4CC000, v293, OS_LOG_TYPE_DEFAULT, " Found embedded text %@", buf, 0xCu);
                                        }

                                        v295 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v292];
                                        [v264 appendAttributedString:v295];
                                      }

                                      ++v283;
                                    }

                                    while (v281 != v283);
                                    v296 = [v280 countByEnumeratingWithState:&v550 objects:v600 count:16];
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
                          v303 = [MEMORY[0x277CCA900] newlineCharacterSet];
                          v304 = [v264 string];
                          v305 = [v303 characterIsMember:{objc_msgSend(v304, "characterAtIndex:", objc_msgSend(v264, "length") - 1)}];

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
                              v308 = [MEMORY[0x277CCA900] newlineCharacterSet];
                              v309 = [v264 string];
                              v310 = [v308 characterIsMember:{objc_msgSend(v309, "characterAtIndex:", objc_msgSend(v264, "length") - 2)}];

                              if (v310)
                              {
                                v311 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
                                v312 = [v311 isRelayChatBotEnabled];

                                if (v312)
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
                        v500 = [v264 __im_attributedStringByAssigningMessagePartNumbers];
                        osloga = [v500 mutableCopy];

                        if (IMSharedHelperDeviceIsAltAccount())
                        {
                          v314 = [MEMORY[0x277D1A908] sharedInstance];
                          v315 = [v314 ctPhoneNumber];
                          goto LABEL_364;
                        }

                        v316 = [MEMORY[0x277D07DB0] sharedInstance];
                        v317 = [v316 telephoneNumber];

                        if (v317)
                        {
                          v314 = [MEMORY[0x277D07DB0] sharedInstance];
                          v315 = [v314 telephoneNumber];
LABEL_364:
                          v318 = v315;
                          v319 = [(IMDTelephonyIncomingMessageContext *)v527 countryCode];
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
                        v322 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
                        v323 = [v526 date];
                        v324 = _ClampDate(v323);
                        v325 = [v492 arrayByApplyingSelector:sel_guid];
                        *&v612[8] = [v321 initWithSender:v322 time:v324 body:osloga attributes:0 fileTransferGUIDs:v325 flags:1 error:0 guid:v498 threadIdentifier:0];

                        v326 = *(*&buf[8] + 40);
                        v327 = [(IMDTelephonyIncomingMessageContext *)v527 destinationCallerID];
                        [v326 setDestinationCallerID:v327];

                        [(IMDServiceSession *)self _markFromStorageIfNeeded:v502 messageGUID:v498];
                        v328 = *(*&buf[8] + 40);
                        v329 = [(IMDServiceSession *)self accountID];
                        [v328 setAccountID:v329];

                        v330 = *(*&buf[8] + 40);
                        v331 = [v526 subject];
                        [v330 setSubject:v331];

                        [*(*&buf[8] + 40) setReplaceID:v488];
                        v507 = [v526 fallbackHash];
                        if ([v491 length])
                        {
                          v332 = [(IMDServiceSession *)self service];
                          v333 = [v332 fallbackHashIsContentBased];

                          if (v333)
                          {
                            v598 = v491;
                            v334 = [MEMORY[0x277CBEA60] arrayWithObjects:&v598 count:1];
                            v335 = [v334 SHA256HexString];

                            v336 = MEMORY[0x277CCACA8];
                            v337 = [v526 fallbackHash];
                            v338 = [v336 stringWithFormat:@"%@<%@>", v337, v335];

                            v507 = v338;
                          }
                        }

                        [*(*&buf[8] + 40) setFallbackHash:v507];
                        v339 = IMDTelephonyServiceLogHandle();
                        if (os_log_type_enabled(v339, OS_LOG_TYPE_DEFAULT))
                        {
                          v340 = [*(*&buf[8] + 40) fallbackHash];
                          v341 = [v340 length];
                          *v595 = 134217984;
                          *v596 = v341;
                          _os_log_impl(&dword_22B4CC000, v339, OS_LOG_TYPE_DEFAULT, " => Fallback hash length: %llu", v595, 0xCu);
                        }

                        v342 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
                        v343 = [osloga string];
                        HSAAuthenticationProcessIncomingMessage();
                        if (v342)
                        {
                          CFRelease(v342);
                        }

                        if (v343)
                        {
                          CFRelease(v343);
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
                        v350 = [(IMDTelephonyIncomingMessageContext *)v527 myNumberString];
                        v351 = [(IMDTelephonyIncomingMessageContext *)v527 mySIMIDString];
                        v525 = [v349 IMMMSEmailAddressToMatchForPhoneNumber:v350 simID:v351];

                        v352 = MEMORY[0x277D1A8F8];
                        v353 = [(IMDTelephonyIncomingMessageContext *)v527 myNumberString];
                        v354 = [(IMDTelephonyIncomingMessageContext *)v527 mySIMIDString];
                        v505 = [v352 IMCountryCodeForPhoneNumber:v353 simID:v354];

                        v355 = IMDTelephonyServiceLogHandle();
                        if (os_log_type_enabled(v355, OS_LOG_TYPE_DEFAULT))
                        {
                          v356 = [(IMDTelephonyIncomingMessageContext *)v527 isGroupMessagingEnabled];
                          *v595 = 67109120;
                          *v596 = v356;
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
                          v360 = [(IMDTelephonyIncomingMessageContext *)v527 mySIMIDString];
                          *v595 = 138412290;
                          *v596 = v360;
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
                            v363 = [v526 recipients];
                            *v595 = 138412290;
                            *v596 = v363;
                            _os_log_impl(&dword_22B4CC000, v362, OS_LOG_TYPE_DEFAULT, "Recipients: %@", v595, 0xCu);
                          }

                          v544 = 0u;
                          v545 = 0u;
                          v542 = 0u;
                          v543 = 0u;
                          v364 = [v526 recipients];
                          v365 = [v364 countByEnumeratingWithState:&v542 objects:v597 count:16];
                          if (v365)
                          {
                            v366 = *v543;
                            v517 = v364;
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
                                v371 = [(IMDTelephonyIncomingMessageContext *)v527 participants];
                                v372 = v371 == 0;

                                if (v372)
                                {
                                  v373 = objc_alloc_init(MEMORY[0x277CBEB18]);
                                  [(IMDTelephonyIncomingMessageContext *)v527 setParticipants:v373];
                                }

                                v374 = [(IMDTelephonyIncomingMessageContext *)v527 unformattedIDs];
                                v375 = v374 == 0;

                                if (v375)
                                {
                                  v376 = objc_alloc_init(MEMORY[0x277CBEB18]);
                                  [(IMDTelephonyIncomingMessageContext *)v527 setUnformattedIDs:v376];
                                }

                                v377 = [(IMDTelephonyIncomingMessageContext *)v527 countryCodes];
                                v378 = v377 == 0;

                                if (v378)
                                {
                                  v379 = objc_alloc_init(MEMORY[0x277CBEB18]);
                                  [(IMDTelephonyIncomingMessageContext *)v527 setCountryCodes:v379];
                                }

                                if ([v370 _appearsToBePhoneNumber])
                                {
                                  v380 = [(IMDTelephonyIncomingMessageContext *)v527 countryCode];
                                  v381 = IMPhoneNumberRefCopyForPhoneNumber();

                                  v382 = IMNormalizedPhoneNumberForCFPhoneNumberRef();
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
                                    v385 = [(IMDTelephonyIncomingMessageContext *)v527 countryCode];
                                    *v595 = 138412290;
                                    *v596 = v385;
                                    _os_log_impl(&dword_22B4CC000, v384, OS_LOG_TYPE_DEFAULT, "    => Country code: %@", v595, 0xCu);
                                  }

                                  v386 = IMDTelephonyServiceLogHandle();
                                  if (os_log_type_enabled(v386, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *v595 = 138412290;
                                    *v596 = v382;
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
                                    v382 = 0;
                                  }

                                  v388 = [v526 originatedDeviceNumber];
                                  v389 = IMDTelephonyServiceLogHandle();
                                  if (os_log_type_enabled(v389, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *v595 = 138412290;
                                    *v596 = v388;
                                    _os_log_impl(&dword_22B4CC000, v389, OS_LOG_TYPE_DEFAULT, "My Original Alias is %@", v595, 0xCu);
                                  }

                                  if (v388 && MEMORY[0x231897D30](v388, v382))
                                  {
                                    v390 = IMDTelephonyServiceLogHandle();
                                    if (os_log_type_enabled(v390, OS_LOG_TYPE_DEFAULT))
                                    {
                                      *v595 = 0;
                                      _os_log_impl(&dword_22B4CC000, v390, OS_LOG_TYPE_DEFAULT, "      ** My number is the service center, ignoring", v595, 2u);
                                    }

                                    v370 = 0;
                                    v382 = 0;
                                  }

                                  if (v381)
                                  {
                                    CFRelease(v381);
                                  }

                                  if ([v382 length])
                                  {
                                    v391 = v382;
                                    v382 = v391;
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

                                    v388 = 0;
                                  }

                                  else
                                  {
                                    v388 = v370;
                                  }

                                  v382 = [v526 originatedDeviceEmail];
                                  if (![v382 length] || !objc_msgSend(v382, "isEqualToIgnoringCase:", v388))
                                  {
                                    v393 = v388;
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

                                  v395 = [(IMDTelephonyIncomingMessageContext *)v527 participants];
                                  [v395 addObject:v393];

                                  v396 = [v368 copy];
                                  v397 = [(IMDTelephonyIncomingMessageContext *)v527 countryCodes];
                                  v398 = [(IMDTelephonyIncomingMessageContext *)v527 countryCode];
                                  v399 = v398;
                                  if (v398)
                                  {
                                    v400 = v398;
                                  }

                                  else
                                  {
                                    v400 = @"us";
                                  }

                                  [v397 addObject:v400];

                                  v401 = [(IMDTelephonyIncomingMessageContext *)v527 unformattedIDs];
                                  v402 = v401;
                                  if (v396)
                                  {
                                    v403 = v396;
                                  }

                                  else
                                  {
                                    v403 = &stru_283F23018;
                                  }

                                  [v401 addObject:v403];
                                }
                              }

                              v364 = v517;
                              v365 = [v517 countByEnumeratingWithState:&v542 objects:v597 count:16];
                            }

                            while (v365);
                          }

                          v404 = v527;
                          v405 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
                          if (v405)
                          {
                            v406 = [(IMDTelephonyIncomingMessageContext *)v527 participants];
                            v407 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
                            v408 = [v406 containsObject:v407];

                            v404 = v527;
                            if ((v408 & 1) == 0)
                            {
                              v409 = [(IMDTelephonyIncomingMessageContext *)v527 participants];
                              v410 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
                              [v409 addObject:v410];

                              v411 = [(IMDTelephonyIncomingMessageContext *)v527 senderUnformatted];
                              v412 = [(IMDTelephonyIncomingMessageContext *)v527 countryCodes];
                              v413 = [(IMDTelephonyIncomingMessageContext *)v527 countryCode];
                              v414 = v413;
                              if (v413)
                              {
                                v415 = v413;
                              }

                              else
                              {
                                v415 = @"us";
                              }

                              [v412 addObject:v415];

                              v416 = [(IMDTelephonyIncomingMessageContext *)v527 unformattedIDs];
                              v417 = v416;
                              if (v411)
                              {
                                v418 = v411;
                              }

                              else
                              {
                                v418 = &stru_283F23018;
                              }

                              [v416 addObject:v418];
                              goto LABEL_481;
                            }
                          }
                        }

                        else
                        {
                          v419 = IMDTelephonyServiceLogHandle();
                          if (os_log_type_enabled(v419, OS_LOG_TYPE_DEFAULT))
                          {
                            v420 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
                            *v595 = 138412290;
                            *v596 = v420;
                            _os_log_impl(&dword_22B4CC000, v419, OS_LOG_TYPE_DEFAULT, "Group messaging is disabled, ensuring the sender is in the participant set: %@", v595, 0xCu);
                          }

                          v421 = [(IMDTelephonyIncomingMessageContext *)v527 participants];
                          v422 = v421 == 0;

                          if (v422)
                          {
                            v423 = objc_alloc_init(MEMORY[0x277CBEB18]);
                            [(IMDTelephonyIncomingMessageContext *)v527 setParticipants:v423];
                          }

                          v404 = v527;
                          v424 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
                          if (v424)
                          {
                            v425 = [(IMDTelephonyIncomingMessageContext *)v527 participants];
                            v426 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
                            v427 = [v425 containsObject:v426];

                            v404 = v527;
                            if ((v427 & 1) == 0)
                            {
                              v428 = [(IMDTelephonyIncomingMessageContext *)v527 participants];
                              v429 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
                              [v428 addObject:v429];

                              v411 = [(IMDTelephonyIncomingMessageContext *)v527 senderUnformatted];
                              v430 = [(IMDTelephonyIncomingMessageContext *)v527 countryCodes];
                              v431 = [(IMDTelephonyIncomingMessageContext *)v527 countryCode];
                              v432 = v431;
                              if (v431)
                              {
                                v433 = v431;
                              }

                              else
                              {
                                v433 = @"us";
                              }

                              [v430 addObject:v433];

                              v434 = [(IMDTelephonyIncomingMessageContext *)v527 unformattedIDs];
                              v417 = v434;
                              if (v411)
                              {
                                v435 = v411;
                              }

                              else
                              {
                                v435 = &stru_283F23018;
                              }

                              [v434 addObject:v435];
LABEL_481:

                              v404 = v527;
                            }
                          }
                        }

                        if ([(IMDTelephonyIncomingMessageContext *)v404 isGroupChat])
                        {
                          [(IMDTelephonyIncomingMessageContext *)v404 setStyle:43];
                          v436 = +[IMDChatRegistry sharedInstance];
                          v437 = [(IMDServiceSession *)self account];
                          v438 = [v436 generateUnusedChatIdentifierForGroupChatWithAccount:v437];
                          [(IMDTelephonyIncomingMessageContext *)v404 setChatIdentifier:v438];
                        }

                        else
                        {
                          v439 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
                          v440 = [v439 isMergeBusinessSenderIndiaEnabled];

                          if (v440)
                          {
                            v441 = [(IMDTelephonyServiceSession *)self _identifierForMergedBusinessThread:v527];
                            if (v441)
                            {
                              [(IMDTelephonyIncomingMessageContext *)v527 setIsMergedBusinessThread:1];
                              [(IMDTelephonyIncomingMessageContext *)v527 setSender:v441];
                              [(IMDTelephonyIncomingMessageContext *)v527 setDisplayName:v441];
                            }
                          }

                          v436 = [(IMDTelephonyIncomingMessageContext *)v527 sender];
                          [(IMDTelephonyIncomingMessageContext *)v527 setChatIdentifier:v436];
                        }

                        v442 = [(IMDTelephonyServiceSession *)self chatForIncomingMessageContext:v527 createIfNotExists:0];
                        v443 = v442;
                        if (v442)
                        {
                          v444 = [v442 chatIdentifier];
                          [(IMDTelephonyIncomingMessageContext *)v527 setChatIdentifier:v444];

                          v445 = v527;
                          -[IMDTelephonyIncomingMessageContext setStyle:](v527, "setStyle:", [v443 style]);
                          if ([v443 isBlackholed])
                          {
                            if (IMOSLoggingEnabled())
                            {
                              v446 = OSLogHandleForIMFoundationCategory();
                              if (os_log_type_enabled(v446, OS_LOG_TYPE_INFO))
                              {
                                v447 = [v443 guid];
                                *v595 = 138412290;
                                *v596 = v447;
                                _os_log_impl(&dword_22B4CC000, v446, OS_LOG_TYPE_INFO, "SMS: Unblackholing an SMS chat %@", v595, 0xCu);
                              }

                              v445 = v527;
                            }

                            [v443 updateIsBlackholed:0];
                          }

                          if ([v443 smsHandshakeState] == 1)
                          {
                            v448 = [MEMORY[0x277D1AAA8] sharedInstance];
                            [v448 trackSpamEvent:7];

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
                                v454 = [(IMDTelephonyIncomingMessageContext *)v445 isGroupChat];
                                v455 = [v443 isFiltered];
                                v456 = @"NO";
                                if (v454)
                                {
                                  v456 = @"YES";
                                }

                                *v595 = 138412546;
                                *v596 = v456;
                                *&v596[8] = 2048;
                                *&v596[10] = v455;
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

                          v457 = [(IMDTelephonyIncomingMessageContext *)v445 displayName];

                          if (v457)
                          {
                            v451 = [(IMDTelephonyIncomingMessageContext *)v527 displayName];
                            [v443 updateDisplayName:v451];
LABEL_516:
                          }

                          if ([MEMORY[0x277D1AC58] isInternationalSpamFilteringEnabled])
                          {
                            v458 = +[IMDChatRegistry sharedInstance];
                            if (v443)
                            {
                              v459 = [v443 chatIdentifier];
                              [v458 existingiMessageChatForID:v459 withChatStyle:{objc_msgSend(v443, "style")}];
                            }

                            else
                            {
                              v459 = [(IMDTelephonyIncomingMessageContext *)v527 chatIdentifier];
                              [v458 existingiMessageChatForID:v459 withChatStyle:{-[IMDTelephonyIncomingMessageContext style](v527, "style")}];
                            }
                            v460 = ;

                            if (v460 && [v460 isBlackholed])
                            {
                              v461 = IMDTelephonyServiceLogHandle();
                              if (os_log_type_enabled(v461, OS_LOG_TYPE_DEFAULT))
                              {
                                v462 = [v460 guid];
                                *v595 = 138412290;
                                *v596 = v462;
                                _os_log_impl(&dword_22B4CC000, v461, OS_LOG_TYPE_DEFAULT, "Unblackholing sibling iMessage chat (%@) on reception of SMS message.", v595, 0xCu);
                              }

                              if ([(IMDTelephonyIncomingMessageContext *)v527 isGroupChat])
                              {
                                v463 = [MEMORY[0x277D1AAA8] sharedInstance];
                                [v463 trackSpamEvent:21];
                              }

                              else
                              {
                                v463 = [MEMORY[0x277D1AAA8] sharedInstance];
                                [v463 trackSpamEvent:20];
                              }

                              [v460 updateIsBlackholed:0];
                              v464 = +[IMDMessageStore sharedInstance];
                              v465 = [v460 lastMessage];
                              v466 = [v465 guid];
                              [v464 markMessageGUIDUnread:v466];
                            }
                          }

                          v467 = IMDTelephonyServiceLogHandle();
                          if (os_log_type_enabled(v467, OS_LOG_TYPE_DEFAULT))
                          {
                            v468 = [(IMDTelephonyIncomingMessageContext *)v527 participants];
                            *v595 = 138412290;
                            *v596 = v468;
                            _os_log_impl(&dword_22B4CC000, v467, OS_LOG_TYPE_DEFAULT, "   participants: %@", v595, 0xCu);
                          }

                          v469 = IMDTelephonyServiceLogHandle();
                          if (os_log_type_enabled(v469, OS_LOG_TYPE_DEFAULT))
                          {
                            v470 = [v443 guid];
                            *v595 = 138412546;
                            *v596 = v443;
                            *&v596[8] = 2112;
                            *&v596[10] = v470;
                            _os_log_impl(&dword_22B4CC000, v469, OS_LOG_TYPE_DEFAULT, "   found chat: %@ (%@)", v595, 0x16u);
                          }

                          v471 = IMDTelephonyServiceLogHandle();
                          if (os_log_type_enabled(v471, OS_LOG_TYPE_DEFAULT))
                          {
                            v472 = [(IMDTelephonyIncomingMessageContext *)v527 isGroupChat];
                            *v595 = 67109120;
                            *v596 = v472;
                            _os_log_impl(&dword_22B4CC000, v471, OS_LOG_TYPE_DEFAULT, "   isGroupChat: %{BOOL}d", v595, 8u);
                          }

                          v473 = IMDTelephonyServiceLogHandle();
                          if (os_log_type_enabled(v473, OS_LOG_TYPE_DEFAULT))
                          {
                            v474 = [(IMDTelephonyIncomingMessageContext *)v527 chatIdentifier];
                            *v595 = 138412290;
                            *v596 = v474;
                            _os_log_impl(&dword_22B4CC000, v473, OS_LOG_TYPE_DEFAULT, "   chatIdentifier: %@", v595, 0xCu);
                          }

                          v534[0] = MEMORY[0x277D85DD0];
                          v534[1] = 3221225472;
                          v534[2] = sub_22B6C7F80;
                          v534[3] = &unk_278708388;
                          v475 = v527;
                          v535 = v475;
                          v536 = self;
                          v538 = buf;
                          v539 = v488;
                          v476 = v498;
                          v537 = v476;
                          v540 = v503;
                          v477 = _Block_copy(v534);
                          v478 = [(IMDTelephonyIncomingMessageContext *)v475 sender];
                          v479 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
                          v480 = [v479 isMergeBusinessSenderIndiaEnabled];

                          if (v480 && [(IMDTelephonyIncomingMessageContext *)v475 isMergedBusinessThread])
                          {
                            v481 = [(IMDTelephonyIncomingMessageContext *)v475 senderUnformatted];

                            v478 = v481;
                          }

                          v595[0] = 0;
                          v482 = [(IMDTelephonyServiceSession *)self filteringController];
                          v483 = [(IMDTelephonyIncomingMessageContext *)v475 chatIdentifier];
                          v484 = [(IMDTelephonyIncomingMessageContext *)v475 participants];
                          LOBYTE(v486) = [*(*&buf[8] + 40) messageContainsOneTimeCode];
                          [v482 categorizeIncomingSMSMessage:v526 messageGUID:v476 sender:v478 wasRelayed:v503 chatIdentifier:v483 participants:v484 checkingForSpam:v595 myReceiverISOCountryCode:v505 messageBody:osloga foundChat:v443 service:v501 containsOneTimeCode:v486 completion:v477];

                          if (cf1c)
                          {
                            CFRelease(cf1c);
                          }

                          if (v511)
                          {
                            (*(v511 + 2))(v511, 1, v476, v595[0]);
                          }

                          _Block_object_dispose(buf, 8);
                          goto LABEL_547;
                        }

                        v450 = [(IMDTelephonyIncomingMessageContext *)v527 chatIdentifier];
                        v595[0] = [(IMDTelephonyIncomingMessageContext *)v527 style];
                        v541 = v450;
                        [(IMDServiceSession *)self canonicalizeChatIdentifier:&v541 style:v595];
                        v451 = v541;

                        [(IMDTelephonyIncomingMessageContext *)v527 setChatIdentifier:v451];
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

  if (v511)
  {
    (*(v511 + 2))(v511, 0, 0, 0);
  }

LABEL_548:

  v485 = *MEMORY[0x277D85DE8];
}

- (id)_businessNameForIndiaShortCodeSender:(id)a3
{
  v3 = a3;
  v4 = [v3 countryCode];
  v5 = [v4 isEqual:@"in"];

  if (v5)
  {
    v6 = MEMORY[0x277CCAC68];
    v7 = MEMORY[0x277CCACA8];
    v8 = IMIndiaBusinessShortCodeRegex();
    v9 = [v7 stringWithFormat:@"^%@$", v8];
    v10 = [v6 regularExpressionWithPattern:v9 options:0 error:0];

    v11 = [v3 sender];
    v12 = [v3 sender];
    v13 = [v10 matchesInString:v11 options:0 range:{0, objc_msgSend(v12, "length")}];

    if ([v13 count] == 1 && (objc_msgSend(v13, "objectAtIndexedSubscript:", 0), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "numberOfRanges"), v14, v15 >= 3))
    {
      v16 = [v13 objectAtIndexedSubscript:0];
      v17 = [v16 rangeAtIndex:2];
      v19 = v18;
      v20 = [v3 sender];
      v21 = [v20 substringWithRange:{v17, v19}];
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

- (id)_identifierForMergedBusinessThread:(id)a3
{
  v3 = [(IMDTelephonyServiceSession *)self _businessNameForIndiaShortCodeSender:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (id)getLabelFor:(int64_t)a3 subCategory:(int64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  if (a3 == 3)
  {
    v6 = @"smsfp";
  }

  else
  {
    if (a3 != 4)
    {
      v6 = @"filtered";
      goto LABEL_18;
    }

    v6 = @"smsft";
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [MEMORY[0x277D1AB70] fetchSMSFilterExtensionParams];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 action] == a3 && objc_msgSend(v12, "subAction") == a4)
        {
          v6 = [v12 label];
          goto LABEL_16;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

  return v6;
}

- (void)_registerChatForIncomingMessageWithContext:(id)a3
{
  v39[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v35 = self;
  if ([v4 isGroupChat])
  {
    v5 = [v4 participants];
    v6 = [v4 unformattedIDs];
    v7 = [v4 countryCodes];
    v8 = [(IMDTelephonyServiceSession *)self createHandleInfoForParticipants:v5 unformattedIDs:v6 countryCodes:v7 isGroupChat:1];
  }

  else
  {
    v9 = [v4 sender];
    v39[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
    v11 = [v4 senderUnformatted];
    v12 = v11;
    if (!v11)
    {
      v12 = [v4 sender];
    }

    v38 = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
    v14 = [v4 countryCode];
    v15 = v14;
    v16 = @"us";
    if (v14)
    {
      v16 = v14;
    }

    v37 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
    v18 = [(IMDTelephonyServiceSession *)self createHandleInfoForParticipants:v10 unformattedIDs:v13 countryCodes:v17 isGroupChat:0];

    if (!v11)
    {
    }

    v8 = v18;
  }

  if (([v4 isSendEnabled] & 1) != 0 || objc_msgSend(v4, "isGroupChat"))
  {
    v34 = [v4 chatIdentifier];
    v19 = [v4 style];
    v20 = [v4 displayName];
    v21 = [v4 groupID];
    v22 = [v4 originalGroupID];
    v23 = [(IMDServiceSession *)self account];
    v24 = v8;
    v25 = [v4 category];
    v26 = [v4 spamExtensionName];
    LOBYTE(v33) = 0;
    v32 = v25;
    v8 = v24;
    v27 = v34;
    [(IMDServiceSession *)v35 didUpdateChatStatus:2 chat:v34 style:v19 displayName:v20 groupID:v21 originalGroupID:v22 lastAddressedHandle:0 lastAddressedSIMID:0 handleInfo:v24 account:v23 category:v32 spamExtensionName:v26 isBlackholed:v33 spamDetectionSource:0];
  }

  else
  {
    v28 = IMDTelephonyServiceLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_DEFAULT, "Replying is disabled, joining chat with Read Only state", buf, 2u);
    }

    v27 = [v4 chatIdentifier];
    v29 = [v4 style];
    v20 = [v4 displayName];
    v30 = [v4 category];
    v21 = [v4 spamExtensionName];
    [(IMDServiceSession *)v35 didJoinReadOnlyChat:v27 style:v29 displayName:v20 groupID:0 handleInfo:v8 category:v30 spamExtensionName:v21];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (id)_updatedMessageContextForJunkProcessing:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDTelephonyServiceSession *)self filteringController];
  if (![v5 _isMessageCategorized:{objc_msgSend(v4, "category")}])
  {

    goto LABEL_9;
  }

  v6 = [v4 isGroupChat];

  if (v6)
  {
LABEL_9:
    v7 = v4;
    goto LABEL_10;
  }

  v7 = [v4 copy];

  v8 = -[IMDTelephonyServiceSession getLabelFor:subCategory:](self, "getLabelFor:subCategory:", [v7 category], objc_msgSend(v7, "subCategory"));
  if ([v7 category] != 2)
  {
    v9 = [(IMDTelephonyServiceSession *)self filteringController];
    v10 = [v7 chatIdentifier];
    v11 = [v9 _createNewChatIdentifierFromChatIdentifier:v10 andCategoryLabel:v8];
    [v7 setChatIdentifier:v11];
  }

  v12 = [v7 chatIdentifier];
  [v7 setSender:v12];

  v13 = IMDTelephonyServiceLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v7 chatIdentifier];
    v17 = 138412290;
    v18 = v14;
    _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEFAULT, "Generated new filtered chat identifier: %@", &v17, 0xCu);
  }

LABEL_10:
  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)chatForIncomingMessageContext:(id)a3 createIfNotExists:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 isGroupChat])
  {
    v7 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v8 = [v7 isOneChatEnabled];

    v76 = self;
    v75 = v4;
    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = [v6 groupID];

      if (v10)
      {
        v11 = [v6 groupID];
        [v9 addObject:v11];
      }

      v12 = [v6 originalGroupID];

      if (v12)
      {
        v13 = [v6 originalGroupID];
        [v9 addObject:v13];
      }

      v14 = +[IMDChatRegistry sharedInstance];
      v15 = [v6 sender];
      v16 = [v6 destinationCallerID];
      v72 = [(IMDServiceSession *)self service];
      v17 = [v72 groupsMergeDisplayNames];
      if (v17)
      {
        v74 = [v6 displayName];
      }

      else
      {
        v74 = 0;
      }

      v21 = [v6 participants];
      v22 = [v6 groupID];
      v23 = [(IMDServiceSession *)self service];
      v24 = [v23 internalName];
      v73 = v16;
      v18 = [v14 bestCandidateGroupChatWithFromIdentifier:v15 toIdentifier:v16 displayName:v74 participants:v21 updatingToLatestiMessageGroupID:v22 sortedIdentifiers:v9 serviceName:v24];

      if (v17)
      {
      }
    }

    else
    {
      v9 = [v6 sender];
      v14 = [v6 destinationCallerID];
      v15 = [(IMDServiceSession *)self service];
      v19 = [v15 groupsMergeDisplayNames];
      if (v19)
      {
        v20 = [v6 displayName];
      }

      else
      {
        v20 = 0;
      }

      v25 = [v6 participants];
      v26 = [v6 groupID];
      v27 = [v6 originalGroupID];
      v18 = [(IMDServiceSession *)v76 bestCandidateGroupChatWithFromIdentifier:v9 toIdentifier:v14 displayName:v20 participants:v25 groupID:v26 originalGroupID:v27];

      if (v19)
      {
      }
    }

    self = v76;
    v4 = v75;
  }

  else
  {
    v9 = +[IMDChatRegistry sharedInstance];
    v14 = [v6 chatIdentifier];
    v15 = [(IMDServiceSession *)self account];
    v18 = [v9 existingChatForID:v14 account:v15];
  }

  if (!v18)
  {
    if (!v4)
    {
      v18 = 0;
      goto LABEL_50;
    }

    [(IMDTelephonyServiceSession *)self _registerChatForIncomingMessageWithContext:v6];
    v39 = +[IMDChatRegistry sharedInstance];
    v40 = [v6 chatIdentifier];
    v41 = [(IMDServiceSession *)self account];
    v18 = [v39 existingChatWithIdentifier:v40 account:v41];
    goto LABEL_49;
  }

  v28 = [(IMDServiceSession *)self service];
  v29 = [v28 supportsCapability:*MEMORY[0x277D1A558]];

  if (!v29)
  {
    goto LABEL_50;
  }

  v30 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v31 = [v30 isMissingMessagesEnabled];

  v32 = [v6 groupID];
  v33 = v32;
  if (v31)
  {
    if (!v32)
    {
      goto LABEL_25;
    }

    v34 = *MEMORY[0x277D19780];
    v35 = [v18 latestIdentifierForDomain:*MEMORY[0x277D19780]];
    v36 = [v6 groupID];
    v37 = [v35 isEqualToString:v36];

    if ((v37 & 1) == 0)
    {
      v46 = [v6 groupID];
      [v18 assignIdentifier:v46 forDomain:v34 isHistoricalIdentifier:0];

      v38 = 1;
    }

    else
    {
LABEL_25:
      v38 = 0;
    }

    v47 = [(IMDServiceSession *)self service];
    v48 = [v47 internalName];
    v49 = IMChatLookupDomainForServiceName();

    v50 = [v6 groupID];
    if (v50)
    {
      v51 = v50;
      v52 = [v18 identifiersForDomain:v49];
      v53 = [v6 groupID];
      v54 = [v52 containsObject:v53];

      if ((v54 & 1) == 0)
      {
        v55 = [v6 groupID];
        v56 = [(IMDServiceSession *)self service];
        [v18 assignIdentifier:v55 forDomain:v49 isHistoricalIdentifier:{objc_msgSend(v56, "groupIDIsHistoricalIdentifier")}];

        v38 = 1;
      }
    }

    v57 = [v6 originalGroupID];
    if (!v57)
    {
      goto LABEL_38;
    }

    v58 = v57;
    v59 = [v18 identifiersForDomain:v49];
    v60 = [v6 originalGroupID];
    v61 = [v59 containsObject:v60];

    if (v61)
    {
LABEL_38:

      if ((v38 & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }

    v68 = [v6 originalGroupID];
    v69 = [(IMDServiceSession *)self service];
    [v18 assignIdentifier:v68 forDomain:v49 isHistoricalIdentifier:{objc_msgSend(v69, "groupIDIsHistoricalIdentifier") ^ 1}];

    goto LABEL_47;
  }

  if (!v32)
  {
    goto LABEL_31;
  }

  v42 = [v18 groupID];
  v43 = [v6 groupID];
  v44 = [v42 isEqualToString:v43];

  if ((v44 & 1) == 0)
  {
    v62 = [v6 groupID];
    [v18 setGroupID:v62];

    v45 = 1;
  }

  else
  {
LABEL_31:
    v45 = 0;
  }

  v63 = [v6 originalGroupID];
  if (v63)
  {
    v64 = v63;
    v65 = [v18 originalGroupID];
    v66 = [v6 originalGroupID];
    v67 = [v65 isEqualToString:v66];

    if ((v67 & 1) == 0)
    {
      v49 = [v6 originalGroupID];
      [v18 setOriginalGroupID:v49];
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
    v40 = [v18 guid];
    v41 = [v18 dictionaryRepresentation];
    [v39 chat:v40 updated:v41];
LABEL_49:
  }

LABEL_50:

  return v18;
}

- (id)findChatAndLinkMessage:(id)a3 context:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a4 copy];
  v8 = IMDTelephonyServiceLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 chatIdentifier];
    v10 = [v7 category];
    v11 = [v7 subCategory];
    v12 = [v7 spamExtensionName];
    *buf = 138413058;
    v47 = v9;
    v48 = 2048;
    v49 = v10;
    v50 = 2048;
    v51 = v11;
    v52 = 2112;
    v53 = v12;
    _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "findChatAndLinkMessage called for chatid %@ category %ld, subCategory %ld, extensionName %@", buf, 0x2Au);
  }

  v13 = [(IMDTelephonyServiceSession *)self _updatedMessageContextForJunkProcessing:v7];

  v14 = [v13 sender];
  [v6 setSender:v14];

  v15 = [(IMDTelephonyServiceSession *)self chatForIncomingMessageContext:v13 createIfNotExists:1];
  v16 = [v13 category];
  v17 = [v13 subCategory];
  v18 = [v13 spamExtensionName];
  [(IMDTelephonyServiceSession *)self _updateCategoryForChat:v15 andMessage:v6 category:v16 subCategory:v17 spamExtensionName:v18];

  v19 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  LODWORD(v17) = [v19 stewieEnabled];

  if (v17)
  {
    if (([v15 isEmergencyChat] & 1) == 0)
    {
      v20 = [MEMORY[0x277D18998] sharedInstance];
      v21 = [v6 sender];
      v22 = [v20 isPhoneNumberEmergencyNumber:v21];

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

  v24 = [v13 chatIdentifier];
  v25 = [v13 style];
  v26 = [v13 myNumberString];
  v27 = [v13 mySIMIDString];
  -[IMDTelephonyServiceSession _updateLastAddressedIDsIfNeededForChatWithIdentifier:style:lastAddressedHandle:lastAddressedSIMID:iMessageCapability:](self, "_updateLastAddressedIDsIfNeededForChatWithIdentifier:style:lastAddressedHandle:lastAddressedSIMID:iMessageCapability:", v24, v25, v26, v27, [v13 capability]);

  v28 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  LODWORD(v25) = [v28 isMergeBusinessSenderIndiaEnabled];

  if (v25 && [v13 isMergedBusinessThread])
  {
    [v15 setState:4];
    [v15 setMergedBusinessThread:1];
  }

  v43 = v15;
  v29 = [v6 sender];
  IsEmail = IMStringIsEmail();

  v31 = [v6 fileTransferGUIDs];
  v32 = [v31 count] != 0;

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

  v39 = [MEMORY[0x277D1AAA8] sharedInstance];
  [v39 trackEvent:*MEMORY[0x277D1A210] withDictionary:v38];

  v40 = [v6 subject];
  -[IMDTelephonyServiceSession _carrierReportJunkMetricsForSMSWithSubject:isGroupchat:hasAttachments:](self, "_carrierReportJunkMetricsForSMSWithSubject:isGroupchat:hasAttachments:", v40, [v13 isGroupChat], v32);

  v41 = *MEMORY[0x277D85DE8];

  return v43;
}

- (id)_messageDictionaryToRelayWithIncomingMessageDictionary:(id)a3 smsMessage:(id)a4
{
  v5 = a4;
  v6 = [a3 mutableCopy];
  v7 = [v5 GUID];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [v5 GUID];
    [v6 setObject:v9 forKeyedSubscript:IMDCTMessageDictionaryGUIDKey];
  }

  return v6;
}

- (void)_carrierReportJunkMetricsForSMSWithSubject:(id)a3 isGroupchat:(BOOL)a4 hasAttachments:(BOOL)a5
{
  v6 = a4;
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = v7;
  if (v6 || a5 || [v7 length])
  {
    if (v6)
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

  v10 = [MEMORY[0x277D1AAA8] sharedInstance];
  v11 = *MEMORY[0x277D1A0D0];
  v15 = @"type";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
  v16[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [v10 trackEvent:v11 withDictionary:v13];

  v14 = *MEMORY[0x277D85DE8];
}

+ (id)backwardCompatibilityPrefixForLanguageCode:(id)a3
{
  sub_22B7DAC78();
  v4 = a3;
  sub_22B7DAC58();
  sub_22B7DB6A8();
  sub_22B7DAC38();

  v5 = sub_22B7DB678();

  return v5;
}

@end
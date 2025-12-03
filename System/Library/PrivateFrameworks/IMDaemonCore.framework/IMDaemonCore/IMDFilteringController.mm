@interface IMDFilteringController
+ (IMDFilteringController)sharedInstance;
- (BOOL)_areAllParticipantsUnknown:(id)unknown fromSender:(id)sender;
- (BOOL)_shouldCheckChatForSMSSpam:(id)spam participants:(id)participants sender:(id)sender chat:(id)chat fallbackFilterCategory:(int64_t *)category fallbackFilterSubCategory:(int64_t *)subCategory;
- (BOOL)_shouldCheckSMSForCategoryFromFirstPartyFilter;
- (BOOL)_storeSpamCompletionBlock:(id)block forMessageGUID:(id)d;
- (IMDFilteringController)initWithIdentityLookupDecisioningManager:(id)manager trustKitDecisioningManager:(id)decisioningManager communicationTrustManager:(id)trustManager relayPushHandler:(id)handler;
- (NSMutableSet)pendingPriorityMessageGUIDs;
- (id)_createNewChatIdentifierFromChatIdentifier:(id)identifier andCategoryLabel:(id)label;
- (id)_getSpamExtensionID;
- (id)_getSpamExtensionName;
- (id)_newSMSFilteringSettingsDictForFilterState:(int64_t)state;
- (id)account;
- (int64_t)_numberOfRepliesFor:(id)for fallbackFilterCategory:(int64_t *)category fallbackFilterSubCategory:(int64_t *)subCategory;
- (void)_categorizeRelayMessageWithCategory:(int64_t)category subCategory:(int64_t)subCategory deviceID:(id)d completion:(id)completion;
- (void)_checkAndUpdateFilterParamsForFilterExtension;
- (void)_checkAndUpdateSMSFilteringSettingsForDeviceID:(id)d smsFilterCapabilitiesOptions:(unint64_t)options filterExtensionName:(id)name;
- (void)_checkAndUpdateSMSSpamFilterExtensionForUnregisteredOrUpdatedPlugins:(id)plugins arePluginsRegistered:(BOOL)registered;
- (void)_checkIfMessageIsSpam:(id)spam fromSender:(id)sender withGuid:(id)guid receiverISOCountryCode:(id)code receivedViaRelay:(BOOL)relay containsOneTimeCode:(BOOL)timeCode;
- (void)_clearSpamMapForMessageGUID:(id)d;
- (void)_configureSyncedDefaultsWithOverride:(BOOL)override;
- (void)_disableSpamFiltering;
- (void)_disableSpamFilteringAndRelay;
- (void)_enableSpamFiltering;
- (void)_executeSpamCompletionBlockForMessageGuid:(id)guid category:(int64_t)category subCategory:(int64_t)subCategory filterExtensionMetadata:(id)metadata receivedViaRelay:(BOOL)relay spamDetectionSource:(int64_t)source;
- (void)_processReceivedSMSFilteringSettingsDictionaryInBlastDoor:(id)door deviceID:(id)d;
- (void)_processReceivedSMSFilteringSettingsMessage:(id)message deviceID:(id)d;
- (void)_relayCurrentSMSFilteringSettings;
- (void)_relaySMSFilteringSettingsForFilterState:(int64_t)state;
- (void)_removeAppliedPriorityMessages:(id)messages;
- (void)_updateFilterParamsForFilterExtension;
- (void)_updateSpamFilteringState:(int64_t)state;
- (void)categorizeIncomingMessage:(id)message deviceID:(id)d category:(int64_t)category subCategory:(int64_t)subCategory messageGUID:(id)iD sender:(id)sender wasRelayed:(BOOL)relayed chatIdentifier:(id)self0 participants:(id)self1 checkingForSpam:(BOOL *)self2 trustIndicator:(id)self3 myReceiverISOCountryCode:(id)self4 messageBody:(id)self5 foundChat:(id)self6 service:(id)self7 containsOneTimeCode:(BOOL)self8 completion:(id)self9;
- (void)categorizeIncomingRCSMessageGUID:(id)d sender:(id)sender wasRelayed:(BOOL)relayed chatIdentifier:(id)identifier participants:(id)participants checkingForSpam:(BOOL *)spam trustIndicator:(id)indicator myReceiverISOCountryCode:(id)self0 messageBody:(id)self1 foundChat:(id)self2 service:(id)self3 containsOneTimeCode:(BOOL)self4 completion:(id)self5;
- (void)categorizeIncomingSMSMessage:(id)message messageGUID:(id)d sender:(id)sender wasRelayed:(BOOL)relayed chatIdentifier:(id)identifier participants:(id)participants checkingForSpam:(BOOL *)spam myReceiverISOCountryCode:(id)self0 messageBody:(id)self1 foundChat:(id)self2 service:(id)self3 containsOneTimeCode:(BOOL)self4 completion:(id)self5;
- (void)disableFilteringIfNeeded;
- (void)handleTrustKitDecisioningForSender:(id)sender service:(id)service trustIndicator:(id)indicator messageBody:(id)body myReceiverISOCountryCode:(id)code containsOneTimeCode:(BOOL)timeCode foundChat:(id)chat fallbackFilterCategory:(int64_t)self0 fallbackFilterSubCategory:(int64_t)self1 filteringProcessingBlock:(id)self2 processDictCompletionBlock:(id)self3;
- (void)handler:(id)handler incomingSMSFilteringSettingsMessage:(id)message fromToken:(id)token;
- (void)recordFilteringMetricsForMessageItem:(id)item filteredToChat:(id)chat filterExtensionMetadata:(id)metadata;
- (void)relayPriorityMessageFor:(id)for;
@end

@implementation IMDFilteringController

- (void)recordFilteringMetricsForMessageItem:(id)item filteredToChat:(id)chat filterExtensionMetadata:(id)metadata
{
  itemCopy = item;
  chatCopy = chat;
  metadataCopy = metadata;
  if (metadataCopy)
  {
    _getSpamExtensionID = [(IMDFilteringController *)self _getSpamExtensionID];
    if (![_getSpamExtensionID isEqualToString:@"com.apple.smsFilter.extension"])
    {
LABEL_27:

      goto LABEL_28;
    }

    v11 = [metadataCopy mutableCopy];
    serviceName = [chatCopy serviceName];
    v13 = [serviceName isEqualToString:*MEMORY[0x277D1A608]];

    if (v13)
    {
      if ([chatCopy isChatBot])
      {
        v14 = 5;
      }

      else
      {
        v14 = 4;
      }

LABEL_14:
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
      [v11 setObject:v19 forKeyedSubscript:*MEMORY[0x277D1A1A8]];

      filterCategory = [chatCopy filterCategory];
      if (filterCategory > 2)
      {
        if (filterCategory == 3)
        {
          v21 = 6;
          goto LABEL_26;
        }

        if (filterCategory == 4)
        {
          filterSubCategory = [chatCopy filterSubCategory];
          if ((filterSubCategory - 2) >= 3)
          {
            v21 = 5;
          }

          else
          {
            v21 = filterSubCategory;
          }

          goto LABEL_26;
        }
      }

      else
      {
        if (filterCategory == 1)
        {
          v21 = 1;
          goto LABEL_26;
        }

        if (filterCategory == 2)
        {
          v21 = 7;
LABEL_26:
          v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
          [v11 setObject:v23 forKeyedSubscript:*MEMORY[0x277D1A198]];

          mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
          [mEMORY[0x277D1AAA8] trackEvent:*MEMORY[0x277D1A188] withDictionary:v11];

          goto LABEL_27;
        }
      }

      v21 = 0;
      goto LABEL_26;
    }

    serviceName2 = [chatCopy serviceName];
    v16 = [serviceName2 isEqualToString:*MEMORY[0x277D1A610]];

    if (!v16)
    {
      v14 = 0;
      goto LABEL_14;
    }

    subject = [itemCopy subject];
    if (![subject length])
    {
      fileTransferGUIDs = [itemCopy fileTransferGUIDs];
      if (![fileTransferGUIDs count])
      {
        style = [chatCopy style];

        if (style == 45)
        {
          v14 = 2;
          goto LABEL_14;
        }

LABEL_12:
        v14 = 3;
        goto LABEL_14;
      }
    }

    goto LABEL_12;
  }

LABEL_28:
}

- (void)handleTrustKitDecisioningForSender:(id)sender service:(id)service trustIndicator:(id)indicator messageBody:(id)body myReceiverISOCountryCode:(id)code containsOneTimeCode:(BOOL)timeCode foundChat:(id)chat fallbackFilterCategory:(int64_t)self0 fallbackFilterSubCategory:(int64_t)self1 filteringProcessingBlock:(id)self2 processDictCompletionBlock:(id)self3
{
  senderCopy = sender;
  serviceCopy = service;
  indicatorCopy = indicator;
  bodyCopy = body;
  codeCopy = code;
  chatCopy = chat;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  trustKitDecisioningManager = [(IMDFilteringController *)self trustKitDecisioningManager];
  if ([trustKitDecisioningManager shouldSkipTrustKitDecisioningForChat:chatCopy sender:senderCopy])
  {
    if (chatCopy)
    {
      v27 = blockCopy;
      isFiltered = [chatCopy isFiltered];
      spamDetectionSource = [chatCopy spamDetectionSource];
      v30 = isFiltered;
      blockCopy = v27;
      (*(completionBlockCopy + 2))(completionBlockCopy, v30, 0, 0, 0, 0, spamDetectionSource);
    }

    else
    {
      blockCopy[2](blockCopy, 0);
    }
  }

  else
  {
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x2020000000;
    v45[3] = category;
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x2020000000;
    v44 = 0;
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x3032000000;
    v41[3] = sub_22B4D77C0;
    v41[4] = sub_22B4D7944;
    v42 = 0;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_22B69B444;
    v33[3] = &unk_278707B68;
    v37 = v43;
    v34 = chatCopy;
    v38 = v45;
    v39 = v41;
    v35 = completionBlockCopy;
    subCategoryCopy = subCategory;
    v36 = blockCopy;
    LOBYTE(v31) = timeCode;
    [trustKitDecisioningManager requestDecisionForSender:senderCopy service:serviceCopy trustIndicator:indicatorCopy messageBody:bodyCopy countryCode:codeCopy requestReason:0 containsOneTimeCode:v31 completionHandler:v33];

    _Block_object_dispose(v41, 8);
    _Block_object_dispose(v43, 8);
    _Block_object_dispose(v45, 8);
  }
}

- (void)_processReceivedSMSFilteringSettingsDictionaryInBlastDoor:(id)door deviceID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  doorCopy = door;
  dCopy = d;
  if ([dCopy length])
  {
    if ([MEMORY[0x277D1AB70] supportsIncomingSMSRelayFiltering])
    {
      untrustedContext = [MEMORY[0x277D1AB80] untrustedContext];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_22B6CED44;
      v11[3] = &unk_2787083D8;
      v11[4] = self;
      v12 = dCopy;
      [IMBlastdoor sendDictionary:doorCopy senderContext:untrustedContext withCompletionBlock:v11];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = dCopy;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Received invalid deviceID:%@. Not checking if we need to update filterCapabilities", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_processReceivedSMSFilteringSettingsMessage:(id)message deviceID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dCopy = d;
  if ([MEMORY[0x277D1AB70] supportsIncomingSMSRelayFiltering])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Device is supporting incoming sms relay filtering. Checking if we need to update filterCapbilities from relayed message", &v13, 2u);
      }
    }

    filterExtensionName = [messageCopy filterExtensionName];
    smsFilterCapabilitiesOptions = [messageCopy smsFilterCapabilitiesOptions];
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 138412802;
        v14 = filterExtensionName;
        v15 = 2048;
        v16 = smsFilterCapabilitiesOptions;
        v17 = 2112;
        v18 = dCopy;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Received filterExtensionName: %@, smsFilterCapabilitiesOptions: %lu from deviceID:%@. Checking if we need to update filterCapabilities", &v13, 0x20u);
      }
    }

    [(IMDFilteringController *)self _checkAndUpdateSMSFilteringSettingsForDeviceID:dCopy smsFilterCapabilitiesOptions:smsFilterCapabilitiesOptions filterExtensionName:filterExtensionName];
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (IMDFilteringController)sharedInstance
{
  if (qword_2814210D0 != -1)
  {
    sub_22B7D9940();
  }

  v3 = qword_281420F40;

  return v3;
}

- (IMDFilteringController)initWithIdentityLookupDecisioningManager:(id)manager trustKitDecisioningManager:(id)decisioningManager communicationTrustManager:(id)trustManager relayPushHandler:(id)handler
{
  managerCopy = manager;
  decisioningManagerCopy = decisioningManager;
  trustManagerCopy = trustManager;
  handlerCopy = handler;
  v28.receiver = self;
  v28.super_class = IMDFilteringController;
  v15 = [(IMDFilteringController *)&v28 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identityLookupDecisioningManager, manager);
    objc_storeStrong(&v16->_trustKitDecisioningManager, decisioningManager);
    objc_storeStrong(&v16->_communicationTrustManager, trustManager);
    objc_storeStrong(&v16->_relayPushHandler, handler);
    v17 = im_primary_queue();
    processingQueue = v16->_processingQueue;
    v16->_processingQueue = v17;

    [(IMDRelayPushHandling *)v16->_relayPushHandler addListener:v16];
    [(IMDRelayPushHandling *)v16->_relayPushHandler setRegistered:1];
    v19 = +[IMDSyncedSettingsServiceManager sharedManager];
    syncedSettingsManager = v16->_syncedSettingsManager;
    v16->_syncedSettingsManager = v19;

    [(IMDFilteringController *)v16 _configureSyncedDefaultsWithOverride:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v22 = [defaultCenter addObserverForName:@"SSFirstPartyTextMessageFilterAvailableNotification" object:0 queue:0 usingBlock:&unk_283F1B2C8];

    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterAddObserver(DistributedCenter, v16, sub_22B6CF44C, @"com.apple.LaunchServices.pluginsunregistered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v24 = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterAddObserver(v24, v16, sub_22B6CF588, @"com.apple.LaunchServices.pluginsregistered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v16, sub_22B6CF6C4, @"_SMSFilterExtensionParamsChangeDistributedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v26 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v26, v16, sub_22B6CF7B0, *MEMORY[0x277D1A4E8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v16;
}

- (id)_createNewChatIdentifierFromChatIdentifier:(id)identifier andCategoryLabel:(id)label
{
  identifierCopy = identifier;
  labelCopy = label;
  if ([labelCopy length])
  {
    labelCopy = [identifierCopy stringByAppendingFormat:@"(%@)", labelCopy];
  }

  else
  {
    labelCopy = identifierCopy;
  }

  v8 = labelCopy;

  return v8;
}

- (void)_categorizeRelayMessageWithCategory:(int64_t)category subCategory:(int64_t)subCategory deviceID:(id)d completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  if ([dCopy length] && -[IMDFilteringController _isMessageCategorized:](self, "_isMessageCategorized:", category))
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v18 = 134218240;
        subCategoryCopy2 = category;
        v20 = 2048;
        categoryCopy2 = subCategory;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Relayed message was categorized on iPhone. Received category: %ld and subCategory: %ld.", &v18, 0x16u);
      }
    }

    if (subCategory && ([MEMORY[0x277D1AB68] isValidSubActionForDeviceID:dCopy action:category subAction:subCategory] & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v18 = 134218240;
          subCategoryCopy2 = subCategory;
          v20 = 2048;
          categoryCopy2 = category;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "%ld is not a valid subAction for category: %ld. Resetting subCategory to None", &v18, 0x16u);
        }
      }

      subCategory = 0;
    }

    v14 = [MEMORY[0x277D1AB68] fetchFilterExtensionNameForDeviceID:dCopy];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Relayed message was not categorized on iPhone or device ID is invalid.", &v18, 2u);
      }
    }

    v14 = 0;
    subCategory = 0;
    category = 0;
  }

  if (![v14 length])
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Received Device ID has no extension Name. Resetting category and subCategory to None", &v18, 2u);
      }
    }

    subCategory = 0;
    category = 0;
  }

  (*(completionCopy + 2))(completionCopy, category, subCategory, v14, 0, 0, 0);

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldCheckChatForSMSSpam:(id)spam participants:(id)participants sender:(id)sender chat:(id)chat fallbackFilterCategory:(int64_t *)category fallbackFilterSubCategory:(int64_t *)subCategory
{
  v36 = *MEMORY[0x277D85DE8];
  spamCopy = spam;
  participantsCopy = participants;
  senderCopy = sender;
  chatCopy = chat;
  v18 = IMGetDomainIntForKey();
  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  if ([mEMORY[0x277D19268] isInternalInstall])
  {
    v20 = v18 < 1;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {

    goto LABEL_13;
  }

  if (v18 > 3)
  {
LABEL_13:
    if ([MEMORY[0x277D1AC58] isFilterUnknownSendersEnabled] && (-[IMDFilteringController _shouldCheckSMSForCategoryFromFirstPartyFilter](self, "_shouldCheckSMSForCategoryFromFirstPartyFilter") || (objc_msgSend(MEMORY[0x277D1AB08], "isTextMessageExtensionEnabled") & 1) != 0))
    {
      if ([(IMDFilteringController *)self _areAllParticipantsUnknown:participantsCopy fromSender:senderCopy])
      {
        if ([(IMDFilteringController *)self _numberOfRepliesFor:spamCopy fallbackFilterCategory:category fallbackFilterSubCategory:subCategory]< 3)
        {
          if (chatCopy)
          {
            chatProperties = [chatCopy chatProperties];
            v27 = *MEMORY[0x277D19848];
            v28 = [chatProperties objectForKeyedSubscript:*MEMORY[0x277D19848]];
            if (v28)
            {
              chatProperties2 = [chatCopy chatProperties];
              v30 = [chatProperties2 objectForKeyedSubscript:v27];
              longLongValue = [v30 longLongValue];

              if (!longLongValue)
              {
                if (!IMOSLoggingEnabled())
                {
                  goto LABEL_30;
                }

                v23 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                {
                  v32 = 138412290;
                  v33 = spamCopy;
                  _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "_shouldCheckForSMSSpam: not checking sms spam, chat is not filtered: %@", &v32, 0xCu);
                }

                goto LABEL_29;
              }
            }

            else
            {
            }
          }

          if (!IMOSLoggingEnabled())
          {
            goto LABEL_12;
          }

          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v32 = 138412290;
            v33 = spamCopy;
            _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "_shouldCheckForSMSSpam: checking SMS spam for chatid %@", &v32, 0xCu);
          }

          goto LABEL_11;
        }

        if (IMOSLoggingEnabled())
        {
          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v32 = 138412290;
            v33 = spamCopy;
            _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "_shouldCheckForSMSSpam: not checking sms spam, chatid %@ has 3 replies or more", &v32, 0xCu);
          }

LABEL_29:
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v32 = 138412290;
          v33 = spamCopy;
          _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "_shouldCheckForSMSSpam: not checking sms spam, chatid %@ has known participants", &v32, 0xCu);
        }

        goto LABEL_29;
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        LOWORD(v32) = 0;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "_shouldCheckForSMSSpam: not checking for sms spam, filter is off", &v32, 2u);
      }

      goto LABEL_29;
    }

LABEL_30:
    v22 = 0;
    goto LABEL_31;
  }

  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v32 = 138412546;
      v33 = @"IncomingMessageAlertSpamForcedCategory";
      v34 = 2048;
      v35 = v18;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "_shouldCheckForSMSSpam: default %@ set, forcing category %ld", &v32, 0x16u);
    }

LABEL_11:
  }

LABEL_12:
  v22 = 1;
LABEL_31:

  v24 = *MEMORY[0x277D85DE8];
  return v22;
}

- (int64_t)_numberOfRepliesFor:(id)for fallbackFilterCategory:(int64_t *)category fallbackFilterSubCategory:(int64_t *)subCategory
{
  categoryCopy = category;
  subCategoryCopy = subCategory;
  v48[4] = *MEMORY[0x277D85DE8];
  forCopy = for;
  v48[0] = &stru_283F23018;
  v48[1] = @"smsft";
  v48[2] = @"smsfp";
  v48[3] = @"filtered";
  [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:4];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v45 = 0u;
  v35 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  v6 = 0;
  subCategoryCopy = 0;
  v8 = 0;
  action = 0;
  if (v35)
  {
    v33 = *v43;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        v11 = action;
        v12 = subCategoryCopy;
        v13 = v6;
        if (*v43 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v42 + 1) + 8 * i);
        subCategoryCopy = [(IMDFilteringController *)self _createNewChatIdentifierFromChatIdentifier:forCopy andCategoryLabel:v14, categoryCopy, subCategoryCopy];

        v15 = +[IMDChatRegistry sharedInstance];
        account = [(IMDFilteringController *)self account];
        v6 = [v15 existingChatForID:subCategoryCopy account:account];

        action = v11;
        if (v6)
        {
          v17 = v11 == 0;
        }

        else
        {
          v17 = 0;
        }

        if (v17)
        {
          if ([v14 isEqualToString:&stru_283F23018])
          {
            action = 1;
          }

          else if ([v14 isEqualToString:@"smsft"])
          {
            action = 4;
          }

          else if ([v14 isEqualToString:@"smsfp"])
          {
            action = 3;
          }

          else
          {
            action = 2;
          }
        }

        v8 += [v6 getNumberOfTimesRespondedToThread];
      }

      v35 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v35);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  fetchSMSFilterExtensionParams = [MEMORY[0x277D1AB70] fetchSMSFilterExtensionParams];
  v36 = [fetchSMSFilterExtensionParams countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v36)
  {
    subAction = 0;
    v34 = *v39;
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v39 != v34)
        {
          objc_enumerationMutation(fetchSMSFilterExtensionParams);
        }

        v19 = *(*(&v38 + 1) + 8 * j);
        if ([v19 subAction])
        {
          label = [v19 label];
          v21 = [(IMDFilteringController *)self _createNewChatIdentifierFromChatIdentifier:forCopy andCategoryLabel:label];

          v22 = +[IMDChatRegistry sharedInstance];
          account2 = [(IMDFilteringController *)self account];
          v24 = [v22 existingChatForID:v21 account:account2];

          if (v24)
          {
            v25 = action == 0;
          }

          else
          {
            v25 = 0;
          }

          if (v25)
          {
            action = [v19 action];
            subAction = [v19 subAction];
          }

          v8 += [v24 getNumberOfTimesRespondedToThread];
          v6 = v24;
          subCategoryCopy = v21;
        }
      }

      v36 = [fetchSMSFilterExtensionParams countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v36);
  }

  else
  {
    subAction = 0;
  }

  if (v8 >= 3)
  {
    *categoryCopy = action;
    *subCategoryCopy = subAction;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)_areAllParticipantsUnknown:(id)unknown fromSender:(id)sender
{
  v11[1] = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  v6 = senderCopy;
  if (unknown)
  {
    LOBYTE(v7) = IMDAreAllAliasesUnknown();
  }

  else
  {
    v11[0] = senderCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v7 = IMDAreAllAliasesUnknown();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)account
{
  v2 = +[IMDServiceController sharedController];
  v3 = [v2 serviceWithName:*MEMORY[0x277D1A610]];

  v4 = +[IMDAccountController sharedAccountController];
  v5 = [v4 accountsForService:v3];
  firstObject = [v5 firstObject];

  return firstObject;
}

- (BOOL)_shouldCheckSMSForCategoryFromFirstPartyFilter
{
  if ([(IMDFilteringController *)self _isSpamFilteringEnabled])
  {
    v3 = 1;
  }

  else
  {
    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isPriorityMessagesEnabled = [mEMORY[0x277D1A9B8] isPriorityMessagesEnabled];

    if (isPriorityMessagesEnabled && [MEMORY[0x277D1AC58] receiverIsCandidateForAppleSMSFilter])
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *v15 = 0;
          _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Account is eligible for showing Apple SMS Filter.", v15, 2u);
        }
      }

      v7 = [(IMSyncedSettingsManaging *)self->_syncedSettingsManager settingValueForKey:5];
      bOOLValue = [v7 BOOLValue];

      v9 = [(IMSyncedSettingsManaging *)self->_syncedSettingsManager settingValueForKey:6];
      bOOLValue2 = [v9 BOOLValue];

      v11 = [(IMSyncedSettingsManaging *)self->_syncedSettingsManager settingValueForKey:7];
      bOOLValue3 = [v11 BOOLValue];

      v13 = [(IMSyncedSettingsManaging *)self->_syncedSettingsManager settingValueForKey:8];
      LOBYTE(v11) = [v13 BOOLValue];

      v3 = bOOLValue | bOOLValue2 | bOOLValue3 | v11;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 & 1;
}

- (id)_getSpamExtensionID
{
  v3 = IMGetCachedDomainValueForKey();
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isPriorityMessagesEnabled = [mEMORY[0x277D1A9B8] isPriorityMessagesEnabled];

  if (isPriorityMessagesEnabled && ![v3 length] && -[IMDFilteringController _shouldCheckSMSForCategoryFromFirstPartyFilter](self, "_shouldCheckSMSForCategoryFromFirstPartyFilter"))
  {
    v6 = @"com.apple.smsFilter.extension";
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (id)_getSpamExtensionName
{
  v2 = IMGetDomainIntForKey();
  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  if ([mEMORY[0x277D19268] isInternalInstall])
  {
    v4 = v2 < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
  }

  else
  {

    if (v2 < 4)
    {
      v5 = @"DefaultsOverrideExtension";
      goto LABEL_10;
    }
  }

  v5 = IMGetCachedDomainValueForKey();
LABEL_10:

  return v5;
}

- (void)_checkAndUpdateFilterParamsForFilterExtension
{
  if ((IMSharedHelperDeviceIsiPad() & 1) == 0)
  {
    _isSpamFilteringEnabled = [(IMDFilteringController *)self _isSpamFilteringEnabled];
    v4 = IMOSLoggingEnabled();
    if (_isSpamFilteringEnabled)
    {
      if (v4)
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "SMS Filtering was enabled. Updating Filter Params", buf, 2u);
        }
      }

      [(IMDFilteringController *)self _updateFilterParamsForFilterExtension];
    }

    else
    {
      if (v4)
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *v7 = 0;
          _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "SMS Filtering was disabled. Clearing Filter Params", v7, 2u);
        }
      }

      [(IMDFilteringController *)self _disableSpamFilteringAndRelay];
    }
  }
}

- (void)_updateFilterParamsForFilterExtension
{
  _getSpamExtensionID = [(IMDFilteringController *)self _getSpamExtensionID];
  if (_getSpamExtensionID)
  {
    identityLookupDecisioningManager = [(IMDFilteringController *)self identityLookupDecisioningManager];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_22B6D0B94;
    v5[3] = &unk_278708420;
    v6 = _getSpamExtensionID;
    selfCopy = self;
    [identityLookupDecisioningManager requestFilterCapabilitiesForExtensionID:v6 withCompletion:v5];
  }
}

- (void)_checkIfMessageIsSpam:(id)spam fromSender:(id)sender withGuid:(id)guid receiverISOCountryCode:(id)code receivedViaRelay:(BOOL)relay containsOneTimeCode:(BOOL)timeCode
{
  timeCodeCopy = timeCode;
  relayCopy = relay;
  v58 = *MEMORY[0x277D85DE8];
  spamCopy = spam;
  senderCopy = sender;
  guidCopy = guid;
  codeCopy = code;
  v16 = IMGetDomainIntForKey();
  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  if ([mEMORY[0x277D19268] isInternalInstall])
  {
    v18 = v16 < 1;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {

    goto LABEL_13;
  }

  if (v16 > 4)
  {
LABEL_13:
    _getSpamExtensionID = [(IMDFilteringController *)self _getSpamExtensionID];
    v22 = [_getSpamExtensionID isEqualToString:@"com.apple.smsFilter.extension"];
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        v52 = guidCopy;
        v53 = 2112;
        v54 = _getSpamExtensionID;
        v55 = 1024;
        *v56 = v22;
        *&v56[4] = 1024;
        *&v56[6] = timeCodeCopy;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Guid: %@, Checking for spam using spamExtensionID: %@, isUsingFirstPartyFilter: %{BOOL}d, containsOneTimeCode: %{BOOL}d", buf, 0x22u);
      }
    }

    v24 = v22 ^ 1;
    if (!_getSpamExtensionID)
    {
      v24 = 0;
    }

    if ((v24 & 1) != 0 || !timeCodeCopy)
    {
      if (!spamCopy || !senderCopy)
      {
        goto LABEL_36;
      }

      v40 = MEMORY[0x277D85DD0];
      v41 = 3221225472;
      v42 = sub_22B6D15A4;
      v43 = &unk_278706650;
      selfCopy = self;
      v45 = guidCopy;
      v46 = relayCopy;
      im_dispatch_after();
      identityLookupDecisioningManager = [(IMDFilteringController *)self identityLookupDecisioningManager];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = sub_22B6D15C4;
      v34[3] = &unk_2787084C0;
      v35 = _getSpamExtensionID;
      v38 = v22;
      v28 = v45;
      v36 = v28;
      selfCopy2 = self;
      v39 = relayCopy;
      v29 = [identityLookupDecisioningManager filterMessage:spamCopy fromSender:senderCopy receiverISOCountryCode:codeCopy extensionID:v35 withCompletion:v34];

      if ((v29 & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v30 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v52 = v28;
            _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "IdentityLookup framework not found, guid: %@", buf, 0xCu);
          }
        }

        [(IMDFilteringController *)self _executeSpamCompletionBlockForMessageGuid:v28 category:0 subCategory:0 filterExtensionMetadata:0 receivedViaRelay:relayCopy spamDetectionSource:0];
      }

      v26 = &v45;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v52 = guidCopy;
          v53 = 2048;
          v54 = 4;
          v55 = 2048;
          *v56 = 0;
          _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Found one time code in message guid: %@, forcing category %ld sub category %ld", buf, 0x20u);
        }
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B6D1588;
      block[3] = &unk_278708448;
      block[4] = self;
      v26 = &v48;
      v48 = guidCopy;
      v49 = xmmword_22B7F87F0;
      v50 = relayCopy;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

LABEL_36:
    goto LABEL_37;
  }

  v19 = IMGetDomainIntForKey();
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v52 = guidCopy;
      v53 = 2112;
      v54 = @"IncomingMessageAlertSpamForcedCategory";
      v55 = 2048;
      *v56 = v16;
      *&v56[8] = 2048;
      v57 = v19;
      _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "_shouldCheckForSMSSpam: message.guid: %@ default %@ set, forcing category %ld sub category %ld", buf, 0x2Au);
    }
  }

  [(IMDFilteringController *)self _executeSpamCompletionBlockForMessageGuid:guidCopy category:v16 subCategory:v19 filterExtensionMetadata:0 receivedViaRelay:relayCopy spamDetectionSource:0];
LABEL_37:

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_checkAndUpdateSMSSpamFilterExtensionForUnregisteredOrUpdatedPlugins:(id)plugins arePluginsRegistered:(BOOL)registered
{
  registeredCopy = registered;
  v30 = *MEMORY[0x277D85DE8];
  pluginsCopy = plugins;
  if (pluginsCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Plugins have been deleted. Checking if current spam filter extension was deleted", buf, 2u);
      }
    }

    _getSpamExtensionID = [(IMDFilteringController *)self _getSpamExtensionID];
    if (_getSpamExtensionID)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v8 = pluginsCopy;
      v9 = [v8 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v9)
      {
        v10 = *v24;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v24 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = [v8 objectForKey:*(*(&v23 + 1) + 8 * i)];
            v13 = [v12 objectForKey:@"NSExtensionIdentifier"];

            if (v13 && [_getSpamExtensionID isEqualToString:v13])
            {
              v15 = IMOSLoggingEnabled();
              if (registeredCopy)
              {
                if (v15)
                {
                  v16 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v28 = _getSpamExtensionID;
                    _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Spam extension installed matches current spam extension %@. Checking for new spam filter capabilities", buf, 0xCu);
                  }
                }

                v20[8] = 1;
                [v20 _updateFilterParamsForFilterExtension];
              }

              else
              {
                if (v15)
                {
                  v17 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v28 = _getSpamExtensionID;
                    _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Spam extension deleted matches current spam extension %@.", buf, 0xCu);
                  }
                }

                v21 = _getSpamExtensionID;
                v22 = v13;
                im_dispatch_after();
              }

              goto LABEL_33;
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v23 objects:v29 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

LABEL_33:
    }

    else if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "No spam extension currently selected. Not doing anything", buf, 2u);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_relaySMSFilteringSettingsForFilterState:(int64_t)state
{
  v23 = *MEMORY[0x277D85DE8];
  if ((IMSharedHelperDeviceIsiPad() & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        stateCopy = state;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Received request to relay SMS filtering settings for filterState: %ld", buf, 0xCu);
      }
    }

    v6 = [(IMDFilteringController *)self _newSMSFilteringSettingsDictForFilterState:state];
    v7 = [v6 mutableCopy];

    [v7 setObject:@"1" forKey:@"sV"];
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        stateCopy = v7;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Created SMSFilteringSettings dictionary: %@", buf, 0xCu);
      }
    }

    v9 = JWEncodeDictionary();
    _FTCopyGzippedData = [v9 _FTCopyGzippedData];
    v11 = MEMORY[0x277CBEB38];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:139];
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
    v14 = [v11 dictionaryWithObjectsAndKeys:{*MEMORY[0x277D18660], MEMORY[0x277CBEC38], *MEMORY[0x277D18648], v12, *MEMORY[0x277D18588], _FTCopyGzippedData, *MEMORY[0x277D18598], v13, *MEMORY[0x277D18650], 0}];

    relayController = [(IMDFilteringController *)self relayController];
    myCTPhoneNumber = [MEMORY[0x277D1A8F8] myCTPhoneNumber];
    v17 = [relayController sendDataToPeers:v14 forcedCallerID:myCTPhoneNumber shouldFilterRecepients:1 requestProxySend:0 dontSendTo:0];

    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = @"NO";
        if (v17)
        {
          v19 = @"YES";
        }

        *buf = 138412290;
        stateCopy = v19;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Relayed SMSFilteringSettings dictionary: %@", buf, 0xCu);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)_newSMSFilteringSettingsDictForFilterState:(int64_t)state
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Creating SMSFilteringSettings dictionary", buf, 2u);
    }
  }

  if (state == 1)
  {
    v6 = IMGetCachedDomainValueForKey();
    fetchSMSFilterCapabilitiesOptions = [MEMORY[0x277D1AB68] fetchSMSFilterCapabilitiesOptions];
    v8 = v6;
    if (v8)
    {
      v9 = v8;
      CFDictionarySetValue(v4, SMSRelayFilteringSettingsFilterExtensionNameKey, v8);
    }
  }

  else
  {
    mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
    isInternalInstall = [mEMORY[0x277D19268] isInternalInstall];

    if (isInternalInstall && (IMGetDomainIntForKey() - 4) >= 0xFFFFFFFFFFFFFFFDLL)
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *v15 = 0;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Forcing SMSFilteringSettings dict", v15, 2u);
        }
      }

      CFDictionarySetValue(v4, SMSRelayFilteringSettingsFilterExtensionNameKey, @"DefaultsOverrideExtension");
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
      if (v12)
      {
        goto LABEL_12;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_22B7D9954();
      }

      goto LABEL_15;
    }

    fetchSMSFilterCapabilitiesOptions = 1;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:fetchSMSFilterCapabilitiesOptions];
  if (v12)
  {
LABEL_12:
    CFDictionarySetValue(v4, SMSRelayFilteringSettingsFilterCapabilitiesOptionsKey, v12);
    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_22B7D9954();
  }

LABEL_15:

  return v4;
}

- (void)_checkAndUpdateSMSFilteringSettingsForDeviceID:(id)d smsFilterCapabilitiesOptions:(unint64_t)options filterExtensionName:(id)name
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  if (![dCopy length] || !objc_msgSend(MEMORY[0x277D1AB70], "supportsIncomingSMSRelayFiltering"))
  {
    goto LABEL_23;
  }

  _isSpamFilteringEnabled = [(IMDFilteringController *)self _isSpamFilteringEnabled];
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v18 = 138413058;
      v19 = dCopy;
      v20 = 2048;
      v21 = (options >> 1) & 1;
      v22 = 2048;
      optionsCopy = options;
      v24 = 2112;
      v25 = nameCopy;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Received SMSFilteringSettings from iPhone:%@ with filterState: %ld, smsFilterCapabilitiesOptions:%lu, filterExtensionName:%@. Checking if we need to update filter params.", &v18, 0x2Au);
    }
  }

  if ([MEMORY[0x277D1AB68] isValidSMSFilterCapabilitiesOptions:options])
  {
    if ((options & 2) != 0)
    {
      if (_isSpamFilteringEnabled)
      {
        v15 = [MEMORY[0x277D1AB68] shouldUpdateSMSFilterSyncDeviceParamsForDeviceID:dCopy smsFilterCapabilitiesOptions:options filterExtensionName:nameCopy];
      }

      else
      {
        [(IMDFilteringController *)self _enableSpamFiltering];
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            LOWORD(v18) = 0;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "SMS Filtering state changed from disabled to enabled. Need to update filter params.", &v18, 2u);
          }
        }

        v15 = 1;
      }

      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Received values not present in SMSFilterSyncDeviceParams array. Need to update filter params.", &v18, 2u);
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (!v15)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (!_isSpamFilteringEnabled)
      {
        goto LABEL_23;
      }

      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "SMS Filtering state changed from enabled to disabled. Need to update filter params.", &v18, 2u);
        }
      }
    }
  }

  else
  {
    options = 0;
  }

  [MEMORY[0x277D1AB68] updateSMSFilterCapabilitiesOptionsForDeviceID:dCopy smsFilterCapabilitiesOptions:options filterExtensionName:nameCopy];
LABEL_16:
  if (_isSpamFilteringEnabled && ([MEMORY[0x277D1AB68] isSMSFilteringEnabledInSMSFilterCapabilitiesOptions] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "SMS Filtering state changed from enabled to disabled. Need to update filter params.", &v18, 2u);
      }
    }

    [(IMDFilteringController *)self _disableSpamFiltering];
  }

LABEL_23:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_enableSpamFiltering
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Enabling Spam Filtering", v4, 2u);
    }
  }

  [(IMDFilteringController *)self _updateSpamFilteringState:1];
}

- (void)_disableSpamFilteringAndRelay
{
  [(IMDFilteringController *)self _disableSpamFiltering];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "SMS Filtering was disabled. Relaying to peers.", buf, 2u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6D2A04;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_disableSpamFiltering
{
  CFPreferencesSetAppValue(@"spamFilterExtensionParams", 0, @"com.apple.MobileSMS");
  CFPreferencesSetAppValue(@"spamFiltrationExtensionID", 0, @"com.apple.MobileSMS");
  CFPreferencesSetAppValue(@"spamFiltrationExtensionName", 0, @"com.apple.MobileSMS");

  [(IMDFilteringController *)self _updateSpamFilteringState:0];
}

- (void)_updateSpamFilteringState:(int64_t)state
{
  CFPreferencesSetAppValue(@"IncomingMessageAlertSpamFiltration", [MEMORY[0x277CCABB0] numberWithInteger:state], @"com.apple.MobileSMS");
  CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if ([MEMORY[0x277D1AC58] isFilterUnknownSendersEnabled])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.IncomingMessageAlertSpamFiltration.changed", 0, 0, 1u);
  }
}

- (void)handler:(id)handler incomingSMSFilteringSettingsMessage:(id)message fromToken:(id)token
{
  v21 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  messageCopy = message;
  tokenCopy = token;
  if ([MEMORY[0x277D1AB70] supportsIncomingSMSRelayFiltering])
  {
    relayController = [(IMDFilteringController *)self relayController];
    enrollmentController = [relayController enrollmentController];
    [enrollmentController _approveSelfForSMSRelay];

    relayController2 = [(IMDFilteringController *)self relayController];
    v14 = [relayController2 idsDeviceFromPushToken:tokenCopy];

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        name = [v14 name];
        v19 = 138412290;
        v20 = name;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Incoming SMSFilteringSettings message from %@", &v19, 0xCu);
      }
    }

    uniqueIDOverride = [v14 uniqueIDOverride];
    [(IMDFilteringController *)self _processReceivedSMSFilteringSettingsDictionary:messageCopy deviceID:uniqueIDOverride];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_storeSpamCompletionBlock:(id)block forMessageGUID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  dCopy = d;
  v8 = [dCopy length];
  if (blockCopy)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (!v9)
  {
    v11 = [(NSMutableDictionary *)self->_spamBlockMap objectForKey:dCopy];
    if (v11 && IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v22 = 138412546;
        v23 = dCopy;
        v24 = 2112;
        v25 = v11;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Using existing mapping mapping from %@ to %@", &v22, 0x16u);
      }
    }

    spamBlockMap = self->_spamBlockMap;
    if (!spamBlockMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v16 = self->_spamBlockMap;
      p_spamBlockMap = &self->_spamBlockMap;
      *p_spamBlockMap = Mutable;

      spamBlockMap = *p_spamBlockMap;
    }

    v17 = [blockCopy copy];
    [(NSMutableDictionary *)spamBlockMap setObject:v17 forKey:dCopy];

    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = _Block_copy(blockCopy);
        v22 = 138412546;
        v23 = dCopy;
        v24 = 2112;
        v25 = v19;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Generated mapping from %@ to %@", &v22, 0x16u);
      }
    }

LABEL_23:

    goto LABEL_24;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Cannot store completion block for guid as either guid or completion block is invalid", &v22, 2u);
    }

    goto LABEL_23;
  }

LABEL_24:

  v20 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_executeSpamCompletionBlockForMessageGuid:(id)guid category:(int64_t)category subCategory:(int64_t)subCategory filterExtensionMetadata:(id)metadata receivedViaRelay:(BOOL)relay spamDetectionSource:(int64_t)source
{
  v21 = *MEMORY[0x277D85DE8];
  guidCopy = guid;
  metadataCopy = metadata;
  v15 = [(NSMutableDictionary *)self->_spamBlockMap objectForKey:guidCopy];
  if (v15)
  {
    if ([(IMDFilteringController *)self _isMessageCategorized:category])
    {
      _getSpamExtensionName = [(IMDFilteringController *)self _getSpamExtensionName];
    }

    else
    {
      _getSpamExtensionName = 0;
    }

    (v15)[2](v15, category, subCategory, _getSpamExtensionName, 0, metadataCopy, source);
    [(IMDFilteringController *)self _clearSpamMapForMessageGUID:guidCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = guidCopy;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "executeSpamCompletionBlockForMessageGuid: %@ Aready ran completion block, not doing anything", &v19, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_clearSpamMapForMessageGUID:(id)d
{
  v10 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = dCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Clearing spam block mapping for %@", &v8, 0xCu);
    }
  }

  if (dCopy)
  {
    [(NSMutableDictionary *)self->_spamBlockMap removeObjectForKey:dCopy];
    if (![(NSMutableDictionary *)self->_spamBlockMap count])
    {
      spamBlockMap = self->_spamBlockMap;
      self->_spamBlockMap = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)categorizeIncomingSMSMessage:(id)message messageGUID:(id)d sender:(id)sender wasRelayed:(BOOL)relayed chatIdentifier:(id)identifier participants:(id)participants checkingForSpam:(BOOL *)spam myReceiverISOCountryCode:(id)self0 messageBody:(id)self1 foundChat:(id)self2 service:(id)self3 containsOneTimeCode:(BOOL)self4 completion:(id)self5
{
  messageCopy = message;
  completionCopy = completion;
  serviceCopy = service;
  chatCopy = chat;
  bodyCopy = body;
  codeCopy = code;
  participantsCopy = participants;
  identifierCopy = identifier;
  senderCopy = sender;
  dCopy = d;
  if ([messageCopy has_spamCategory])
  {
    spamCategory = [messageCopy spamCategory];
  }

  else
  {
    spamCategory = 0;
  }

  smsFilteringSettings = [messageCopy smsFilteringSettings];
  originatedDeviceUniqueID = [messageCopy originatedDeviceUniqueID];
  filterSubCategory = [messageCopy filterSubCategory];
  if ((filterSubCategory - 1) >= 0xC)
  {
    v23 = 0;
  }

  else
  {
    v23 = filterSubCategory;
  }

  LOBYTE(v25) = timeCode;
  LOBYTE(v24) = relayed;
  [(IMDFilteringController *)self categorizeIncomingMessage:smsFilteringSettings deviceID:originatedDeviceUniqueID category:spamCategory subCategory:v23 messageGUID:dCopy sender:senderCopy wasRelayed:v24 chatIdentifier:identifierCopy participants:participantsCopy checkingForSpam:spam trustIndicator:0 myReceiverISOCountryCode:codeCopy messageBody:bodyCopy foundChat:chatCopy service:serviceCopy containsOneTimeCode:v25 completion:completionCopy];
}

- (void)categorizeIncomingRCSMessageGUID:(id)d sender:(id)sender wasRelayed:(BOOL)relayed chatIdentifier:(id)identifier participants:(id)participants checkingForSpam:(BOOL *)spam trustIndicator:(id)indicator myReceiverISOCountryCode:(id)self0 messageBody:(id)self1 foundChat:(id)self2 service:(id)self3 containsOneTimeCode:(BOOL)self4 completion:(id)self5
{
  LOBYTE(v16) = timeCode;
  LOBYTE(v15) = relayed;
  [(IMDFilteringController *)self categorizeIncomingMessage:0 deviceID:0 category:0 subCategory:0 messageGUID:d sender:sender wasRelayed:v15 chatIdentifier:identifier participants:participants checkingForSpam:spam trustIndicator:indicator myReceiverISOCountryCode:code messageBody:body foundChat:chat service:service containsOneTimeCode:v16 completion:completion];
}

- (void)categorizeIncomingMessage:(id)message deviceID:(id)d category:(int64_t)category subCategory:(int64_t)subCategory messageGUID:(id)iD sender:(id)sender wasRelayed:(BOOL)relayed chatIdentifier:(id)self0 participants:(id)self1 checkingForSpam:(BOOL *)self2 trustIndicator:(id)self3 myReceiverISOCountryCode:(id)self4 messageBody:(id)self5 foundChat:(id)self6 service:(id)self7 containsOneTimeCode:(BOOL)self8 completion:(id)self9
{
  v107 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dCopy = d;
  iDCopy = iD;
  senderCopy = sender;
  identifierCopy = identifier;
  participantsCopy = participants;
  subCategoryCopy = subCategory;
  indicatorCopy = indicator;
  codeCopy = code;
  bodyCopy = body;
  chatCopy = chat;
  serviceCopy = service;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = iDCopy;
      *&buf[12] = 2112;
      *&buf[14] = identifierCopy;
      _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Looking at message with guid %@ for chatid %@, will check if it needs to be sent to spam extension app", buf, 0x16u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v106 = 0;
  v104[0] = 0;
  v104[1] = v104;
  v104[2] = 0x2020000000;
  v104[3] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B6D3BD4;
  aBlock[3] = &unk_278708510;
  v60 = completionCopy;
  v96 = v60;
  v44 = dCopy;
  v86 = v44;
  v43 = messageCopy;
  v87 = v43;
  selfCopy = self;
  categoryCopy = category;
  subCategoryCopy2 = subCategory;
  v47 = identifierCopy;
  v89 = v47;
  v51 = participantsCopy;
  v90 = v51;
  v55 = senderCopy;
  v91 = v55;
  v29 = chatCopy;
  v92 = v29;
  v97 = buf;
  v98 = v104;
  spamCopy = spam;
  v30 = bodyCopy;
  v93 = v30;
  v58 = iDCopy;
  v94 = v58;
  v31 = codeCopy;
  v95 = v31;
  relayedCopy = relayed;
  timeCodeCopy = timeCode;
  v32 = _Block_copy(aBlock);
  if (category == 2)
  {
    (*(v60 + 2))(v60, 2, subCategoryCopy, 0, 0, 0, 0);
  }

  else
  {
    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isIntroductionsEnabled = [mEMORY[0x277D1A9B8] isIntroductionsEnabled];

    if (isIntroductionsEnabled)
    {
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = sub_22B6D3F48;
      v73[3] = &unk_278708538;
      v73[4] = self;
      v53 = v55;
      v74 = v53;
      v75 = serviceCopy;
      v76 = indicatorCopy;
      v77 = v30;
      v78 = v31;
      timeCodeCopy2 = timeCode;
      v35 = v29;
      v79 = v35;
      v82 = buf;
      v83 = v104;
      v36 = v32;
      v80 = v36;
      v49 = v60;
      v81 = v49;
      v62 = _Block_copy(v73);
      trustKitDecisioningManager = [(IMDFilteringController *)self trustKitDecisioningManager];
      isJunkFilteringEnabled = [trustKitDecisioningManager isJunkFilteringEnabled];

      if (isJunkFilteringEnabled)
      {
        if (v35 && (![v35 isFiltered] || objc_msgSend(v35, "isFiltered") == 2))
        {
          v62[2]();
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v40 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              *v69 = 0;
              _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_INFO, "Calling Communication Trust", v69, 2u);
            }
          }

          communicationTrustManager = [(IMDFilteringController *)self communicationTrustManager];
          *v69 = 0;
          v70 = v69;
          v71 = 0x2020000000;
          v72 = *(*&buf[8] + 24);
          *spam = 1;
          v63[0] = MEMORY[0x277D85DD0];
          v63[1] = 3221225472;
          v63[2] = sub_22B6D3FA4;
          v63[3] = &unk_278708588;
          v64 = v35;
          v67 = v69;
          v65 = v49;
          v68 = v104;
          v66 = v62;
          [communicationTrustManager requestDecisionForSender:v53 completion:v63];

          _Block_object_dispose(v69, 8);
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v39 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            *v69 = 0;
            _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "Junk filtering disabled", v69, 2u);
          }
        }

        (*(v36 + 2))(v36, 0);
      }
    }

    else
    {
      (*(v32 + 2))(v32, 0);
    }
  }

  _Block_object_dispose(v104, 8);
  _Block_object_dispose(buf, 8);

  v42 = *MEMORY[0x277D85DE8];
}

- (void)disableFilteringIfNeeded
{
  if (-[IMDFilteringController _isSpamFilteringEnabled](self, "_isSpamFilteringEnabled") && ([MEMORY[0x277D1AB68] isSMSFilteringEnabledInSMSFilterCapabilitiesOptions] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "No more relay devices available. SMS Filtering state changed from enabled to disabled. Need to update filter params.", v4, 2u);
      }
    }

    [(IMDFilteringController *)self _disableSpamFiltering];
  }
}

- (void)_relayCurrentSMSFilteringSettings
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Received request to relay current SMS filtering settings", v4, 2u);
    }
  }

  [(IMDFilteringController *)self _relaySMSFilteringSettingsForFilterState:[(IMDFilteringController *)self _isSpamFilteringEnabled]];
}

- (NSMutableSet)pendingPriorityMessageGUIDs
{
  pendingPriorityMessageGUIDs = self->_pendingPriorityMessageGUIDs;
  if (!pendingPriorityMessageGUIDs)
  {
    v4 = objc_opt_new();
    v5 = self->_pendingPriorityMessageGUIDs;
    self->_pendingPriorityMessageGUIDs = v4;

    pendingPriorityMessageGUIDs = self->_pendingPriorityMessageGUIDs;
  }

  return pendingPriorityMessageGUIDs;
}

- (void)_removeAppliedPriorityMessages:(id)messages
{
  v17 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [messagesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(messagesCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        pendingPriorityMessageGUIDs = [(IMDFilteringController *)self pendingPriorityMessageGUIDs];
        [pendingPriorityMessageGUIDs removeObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [messagesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)relayPriorityMessageFor:(id)for
{
  v28 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v4 = objc_opt_new();
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_22B6D48CC;
  v21[3] = &unk_278706590;
  v5 = v4;
  v22 = v5;
  v16 = forCopy;
  [forCopy enumerateObjectsUsingBlock:v21];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [v5 allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:v10];
        v12 = +[IMDAccountController sharedInstance];
        v13 = [v12 anySessionForServiceName:v10];

        if (v13)
        {
          if (IMOSLoggingEnabled())
          {
            v14 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v24 = v10;
              v25 = 2112;
              v26 = v11;
              _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Relaying priority messages to peers with %@: %@", buf, 0x16u);
            }
          }

          [v13 reflectPriorityMessageToPeerDevicesForMessageGUIDs:v11];
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_configureSyncedDefaultsWithOverride:(BOOL)override
{
  v20 = *MEMORY[0x277D85DE8];
  if ((IMSharedHelperDeviceIsiPad() & 1) == 0 && (override || ([(IMSyncedSettingsManaging *)self->_syncedSettingsManager settingExplicitlySetForKey:12]& 1) == 0))
  {
    relayController = [(IMDFilteringController *)self relayController];
    peerDevices = [relayController peerDevices];
    v7 = [MEMORY[0x277CCAC30] predicateWithBlock:&unk_283F1B2E8];
    v8 = [peerDevices filteredArrayUsingPredicate:v7];
    v9 = [v8 count];

    if (v9)
    {
      receiverIsCandidateForAppleSMSFilter = 0;
    }

    else
    {
      receiverIsCandidateForAppleSMSFilter = [MEMORY[0x277D1AC58] receiverIsCandidateForAppleSMSFilter];
    }

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = @"NO";
        if (receiverIsCandidateForAppleSMSFilter)
        {
          v12 = @"YES";
        }

        v16 = 138412546;
        v17 = v12;
        v18 = 2048;
        v19 = v9;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Updating FirstPartyTextMessageFilterAvailable to %@, numberOfOtherPhonesOnAccount=%lu", &v16, 0x16u);
      }
    }

    syncedSettingsManager = self->_syncedSettingsManager;
    v14 = [MEMORY[0x277CCABB0] numberWithBool:receiverIsCandidateForAppleSMSFilter];
    [(IMSyncedSettingsManaging *)syncedSettingsManager setSettingValue:v14 forKey:12];
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end
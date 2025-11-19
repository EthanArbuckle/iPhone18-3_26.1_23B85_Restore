@interface IMDFilteringController
+ (IMDFilteringController)sharedInstance;
- (BOOL)_areAllParticipantsUnknown:(id)a3 fromSender:(id)a4;
- (BOOL)_shouldCheckChatForSMSSpam:(id)a3 participants:(id)a4 sender:(id)a5 chat:(id)a6 fallbackFilterCategory:(int64_t *)a7 fallbackFilterSubCategory:(int64_t *)a8;
- (BOOL)_shouldCheckSMSForCategoryFromFirstPartyFilter;
- (BOOL)_storeSpamCompletionBlock:(id)a3 forMessageGUID:(id)a4;
- (IMDFilteringController)initWithIdentityLookupDecisioningManager:(id)a3 trustKitDecisioningManager:(id)a4 communicationTrustManager:(id)a5 relayPushHandler:(id)a6;
- (NSMutableSet)pendingPriorityMessageGUIDs;
- (id)_createNewChatIdentifierFromChatIdentifier:(id)a3 andCategoryLabel:(id)a4;
- (id)_getSpamExtensionID;
- (id)_getSpamExtensionName;
- (id)_newSMSFilteringSettingsDictForFilterState:(int64_t)a3;
- (id)account;
- (int64_t)_numberOfRepliesFor:(id)a3 fallbackFilterCategory:(int64_t *)a4 fallbackFilterSubCategory:(int64_t *)a5;
- (void)_categorizeRelayMessageWithCategory:(int64_t)a3 subCategory:(int64_t)a4 deviceID:(id)a5 completion:(id)a6;
- (void)_checkAndUpdateFilterParamsForFilterExtension;
- (void)_checkAndUpdateSMSFilteringSettingsForDeviceID:(id)a3 smsFilterCapabilitiesOptions:(unint64_t)a4 filterExtensionName:(id)a5;
- (void)_checkAndUpdateSMSSpamFilterExtensionForUnregisteredOrUpdatedPlugins:(id)a3 arePluginsRegistered:(BOOL)a4;
- (void)_checkIfMessageIsSpam:(id)a3 fromSender:(id)a4 withGuid:(id)a5 receiverISOCountryCode:(id)a6 receivedViaRelay:(BOOL)a7 containsOneTimeCode:(BOOL)a8;
- (void)_clearSpamMapForMessageGUID:(id)a3;
- (void)_configureSyncedDefaultsWithOverride:(BOOL)a3;
- (void)_disableSpamFiltering;
- (void)_disableSpamFilteringAndRelay;
- (void)_enableSpamFiltering;
- (void)_executeSpamCompletionBlockForMessageGuid:(id)a3 category:(int64_t)a4 subCategory:(int64_t)a5 filterExtensionMetadata:(id)a6 receivedViaRelay:(BOOL)a7 spamDetectionSource:(int64_t)a8;
- (void)_processReceivedSMSFilteringSettingsDictionaryInBlastDoor:(id)a3 deviceID:(id)a4;
- (void)_processReceivedSMSFilteringSettingsMessage:(id)a3 deviceID:(id)a4;
- (void)_relayCurrentSMSFilteringSettings;
- (void)_relaySMSFilteringSettingsForFilterState:(int64_t)a3;
- (void)_removeAppliedPriorityMessages:(id)a3;
- (void)_updateFilterParamsForFilterExtension;
- (void)_updateSpamFilteringState:(int64_t)a3;
- (void)categorizeIncomingMessage:(id)a3 deviceID:(id)a4 category:(int64_t)a5 subCategory:(int64_t)a6 messageGUID:(id)a7 sender:(id)a8 wasRelayed:(BOOL)a9 chatIdentifier:(id)a10 participants:(id)a11 checkingForSpam:(BOOL *)a12 trustIndicator:(id)a13 myReceiverISOCountryCode:(id)a14 messageBody:(id)a15 foundChat:(id)a16 service:(id)a17 containsOneTimeCode:(BOOL)a18 completion:(id)a19;
- (void)categorizeIncomingRCSMessageGUID:(id)a3 sender:(id)a4 wasRelayed:(BOOL)a5 chatIdentifier:(id)a6 participants:(id)a7 checkingForSpam:(BOOL *)a8 trustIndicator:(id)a9 myReceiverISOCountryCode:(id)a10 messageBody:(id)a11 foundChat:(id)a12 service:(id)a13 containsOneTimeCode:(BOOL)a14 completion:(id)a15;
- (void)categorizeIncomingSMSMessage:(id)a3 messageGUID:(id)a4 sender:(id)a5 wasRelayed:(BOOL)a6 chatIdentifier:(id)a7 participants:(id)a8 checkingForSpam:(BOOL *)a9 myReceiverISOCountryCode:(id)a10 messageBody:(id)a11 foundChat:(id)a12 service:(id)a13 containsOneTimeCode:(BOOL)a14 completion:(id)a15;
- (void)disableFilteringIfNeeded;
- (void)handleTrustKitDecisioningForSender:(id)a3 service:(id)a4 trustIndicator:(id)a5 messageBody:(id)a6 myReceiverISOCountryCode:(id)a7 containsOneTimeCode:(BOOL)a8 foundChat:(id)a9 fallbackFilterCategory:(int64_t)a10 fallbackFilterSubCategory:(int64_t)a11 filteringProcessingBlock:(id)a12 processDictCompletionBlock:(id)a13;
- (void)handler:(id)a3 incomingSMSFilteringSettingsMessage:(id)a4 fromToken:(id)a5;
- (void)recordFilteringMetricsForMessageItem:(id)a3 filteredToChat:(id)a4 filterExtensionMetadata:(id)a5;
- (void)relayPriorityMessageFor:(id)a3;
@end

@implementation IMDFilteringController

- (void)recordFilteringMetricsForMessageItem:(id)a3 filteredToChat:(id)a4 filterExtensionMetadata:(id)a5
{
  v26 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = [(IMDFilteringController *)self _getSpamExtensionID];
    if (![v10 isEqualToString:@"com.apple.smsFilter.extension"])
    {
LABEL_27:

      goto LABEL_28;
    }

    v11 = [v9 mutableCopy];
    v12 = [v8 serviceName];
    v13 = [v12 isEqualToString:*MEMORY[0x277D1A608]];

    if (v13)
    {
      if ([v8 isChatBot])
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

      v20 = [v8 filterCategory];
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          v21 = 6;
          goto LABEL_26;
        }

        if (v20 == 4)
        {
          v22 = [v8 filterSubCategory];
          if ((v22 - 2) >= 3)
          {
            v21 = 5;
          }

          else
          {
            v21 = v22;
          }

          goto LABEL_26;
        }
      }

      else
      {
        if (v20 == 1)
        {
          v21 = 1;
          goto LABEL_26;
        }

        if (v20 == 2)
        {
          v21 = 7;
LABEL_26:
          v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
          [v11 setObject:v23 forKeyedSubscript:*MEMORY[0x277D1A198]];

          v24 = [MEMORY[0x277D1AAA8] sharedInstance];
          [v24 trackEvent:*MEMORY[0x277D1A188] withDictionary:v11];

          goto LABEL_27;
        }
      }

      v21 = 0;
      goto LABEL_26;
    }

    v15 = [v8 serviceName];
    v16 = [v15 isEqualToString:*MEMORY[0x277D1A610]];

    if (!v16)
    {
      v14 = 0;
      goto LABEL_14;
    }

    v17 = [v26 subject];
    if (![v17 length])
    {
      v18 = [v26 fileTransferGUIDs];
      if (![v18 count])
      {
        v25 = [v8 style];

        if (v25 == 45)
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

- (void)handleTrustKitDecisioningForSender:(id)a3 service:(id)a4 trustIndicator:(id)a5 messageBody:(id)a6 myReceiverISOCountryCode:(id)a7 containsOneTimeCode:(BOOL)a8 foundChat:(id)a9 fallbackFilterCategory:(int64_t)a10 fallbackFilterSubCategory:(int64_t)a11 filteringProcessingBlock:(id)a12 processDictCompletionBlock:(id)a13
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a9;
  v24 = a12;
  v25 = a13;
  v26 = [(IMDFilteringController *)self trustKitDecisioningManager];
  if ([v26 shouldSkipTrustKitDecisioningForChat:v23 sender:v18])
  {
    if (v23)
    {
      v27 = v24;
      v28 = [v23 isFiltered];
      v29 = [v23 spamDetectionSource];
      v30 = v28;
      v24 = v27;
      (*(v25 + 2))(v25, v30, 0, 0, 0, 0, v29);
    }

    else
    {
      v24[2](v24, 0);
    }
  }

  else
  {
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x2020000000;
    v45[3] = a10;
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
    v34 = v23;
    v38 = v45;
    v39 = v41;
    v35 = v25;
    v40 = a11;
    v36 = v24;
    LOBYTE(v31) = a8;
    [v26 requestDecisionForSender:v18 service:v19 trustIndicator:v20 messageBody:v21 countryCode:v22 requestReason:0 containsOneTimeCode:v31 completionHandler:v33];

    _Block_object_dispose(v41, 8);
    _Block_object_dispose(v43, 8);
    _Block_object_dispose(v45, 8);
  }
}

- (void)_processReceivedSMSFilteringSettingsDictionaryInBlastDoor:(id)a3 deviceID:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    if ([MEMORY[0x277D1AB70] supportsIncomingSMSRelayFiltering])
    {
      v8 = [MEMORY[0x277D1AB80] untrustedContext];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_22B6CED44;
      v11[3] = &unk_2787083D8;
      v11[4] = self;
      v12 = v7;
      [IMBlastdoor sendDictionary:v6 senderContext:v8 withCompletionBlock:v11];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Received invalid deviceID:%@. Not checking if we need to update filterCapabilities", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_processReceivedSMSFilteringSettingsMessage:(id)a3 deviceID:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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

    v9 = [v6 filterExtensionName];
    v10 = [v6 smsFilterCapabilitiesOptions];
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 138412802;
        v14 = v9;
        v15 = 2048;
        v16 = v10;
        v17 = 2112;
        v18 = v7;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Received filterExtensionName: %@, smsFilterCapabilitiesOptions: %lu from deviceID:%@. Checking if we need to update filterCapabilities", &v13, 0x20u);
      }
    }

    [(IMDFilteringController *)self _checkAndUpdateSMSFilteringSettingsForDeviceID:v7 smsFilterCapabilitiesOptions:v10 filterExtensionName:v9];
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

- (IMDFilteringController)initWithIdentityLookupDecisioningManager:(id)a3 trustKitDecisioningManager:(id)a4 communicationTrustManager:(id)a5 relayPushHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v28.receiver = self;
  v28.super_class = IMDFilteringController;
  v15 = [(IMDFilteringController *)&v28 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identityLookupDecisioningManager, a3);
    objc_storeStrong(&v16->_trustKitDecisioningManager, a4);
    objc_storeStrong(&v16->_communicationTrustManager, a5);
    objc_storeStrong(&v16->_relayPushHandler, a6);
    v17 = im_primary_queue();
    processingQueue = v16->_processingQueue;
    v16->_processingQueue = v17;

    [(IMDRelayPushHandling *)v16->_relayPushHandler addListener:v16];
    [(IMDRelayPushHandling *)v16->_relayPushHandler setRegistered:1];
    v19 = +[IMDSyncedSettingsServiceManager sharedManager];
    syncedSettingsManager = v16->_syncedSettingsManager;
    v16->_syncedSettingsManager = v19;

    [(IMDFilteringController *)v16 _configureSyncedDefaultsWithOverride:0];
    v21 = [MEMORY[0x277CCAB98] defaultCenter];
    v22 = [v21 addObserverForName:@"SSFirstPartyTextMessageFilterAvailableNotification" object:0 queue:0 usingBlock:&unk_283F1B2C8];

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

- (id)_createNewChatIdentifierFromChatIdentifier:(id)a3 andCategoryLabel:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 length])
  {
    v7 = [v5 stringByAppendingFormat:@"(%@)", v6];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

- (void)_categorizeRelayMessageWithCategory:(int64_t)a3 subCategory:(int64_t)a4 deviceID:(id)a5 completion:(id)a6
{
  v22 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  if ([v10 length] && -[IMDFilteringController _isMessageCategorized:](self, "_isMessageCategorized:", a3))
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v18 = 134218240;
        v19 = a3;
        v20 = 2048;
        v21 = a4;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Relayed message was categorized on iPhone. Received category: %ld and subCategory: %ld.", &v18, 0x16u);
      }
    }

    if (a4 && ([MEMORY[0x277D1AB68] isValidSubActionForDeviceID:v10 action:a3 subAction:a4] & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v18 = 134218240;
          v19 = a4;
          v20 = 2048;
          v21 = a3;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "%ld is not a valid subAction for category: %ld. Resetting subCategory to None", &v18, 0x16u);
        }
      }

      a4 = 0;
    }

    v14 = [MEMORY[0x277D1AB68] fetchFilterExtensionNameForDeviceID:v10];
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
    a4 = 0;
    a3 = 0;
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

    a4 = 0;
    a3 = 0;
  }

  (*(v11 + 2))(v11, a3, a4, v14, 0, 0, 0);

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldCheckChatForSMSSpam:(id)a3 participants:(id)a4 sender:(id)a5 chat:(id)a6 fallbackFilterCategory:(int64_t *)a7 fallbackFilterSubCategory:(int64_t *)a8
{
  v36 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = IMGetDomainIntForKey();
  v19 = [MEMORY[0x277D19268] sharedInstance];
  if ([v19 isInternalInstall])
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
      if ([(IMDFilteringController *)self _areAllParticipantsUnknown:v15 fromSender:v16])
      {
        if ([(IMDFilteringController *)self _numberOfRepliesFor:v14 fallbackFilterCategory:a7 fallbackFilterSubCategory:a8]< 3)
        {
          if (v17)
          {
            v26 = [v17 chatProperties];
            v27 = *MEMORY[0x277D19848];
            v28 = [v26 objectForKeyedSubscript:*MEMORY[0x277D19848]];
            if (v28)
            {
              v29 = [v17 chatProperties];
              v30 = [v29 objectForKeyedSubscript:v27];
              v31 = [v30 longLongValue];

              if (!v31)
              {
                if (!IMOSLoggingEnabled())
                {
                  goto LABEL_30;
                }

                v23 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                {
                  v32 = 138412290;
                  v33 = v14;
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
            v33 = v14;
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
            v33 = v14;
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
          v33 = v14;
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

- (int64_t)_numberOfRepliesFor:(id)a3 fallbackFilterCategory:(int64_t *)a4 fallbackFilterSubCategory:(int64_t *)a5
{
  v28 = a4;
  v29 = a5;
  v48[4] = *MEMORY[0x277D85DE8];
  v37 = a3;
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
  v7 = 0;
  v8 = 0;
  v9 = 0;
  if (v35)
  {
    v33 = *v43;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        v11 = v9;
        v12 = v7;
        v13 = v6;
        if (*v43 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v42 + 1) + 8 * i);
        v7 = [(IMDFilteringController *)self _createNewChatIdentifierFromChatIdentifier:v37 andCategoryLabel:v14, v28, v29];

        v15 = +[IMDChatRegistry sharedInstance];
        v16 = [(IMDFilteringController *)self account];
        v6 = [v15 existingChatForID:v7 account:v16];

        v9 = v11;
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
            v9 = 1;
          }

          else if ([v14 isEqualToString:@"smsft"])
          {
            v9 = 4;
          }

          else if ([v14 isEqualToString:@"smsfp"])
          {
            v9 = 3;
          }

          else
          {
            v9 = 2;
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
  v31 = [MEMORY[0x277D1AB70] fetchSMSFilterExtensionParams];
  v36 = [v31 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v36)
  {
    v30 = 0;
    v34 = *v39;
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v39 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v19 = *(*(&v38 + 1) + 8 * j);
        if ([v19 subAction])
        {
          v20 = [v19 label];
          v21 = [(IMDFilteringController *)self _createNewChatIdentifierFromChatIdentifier:v37 andCategoryLabel:v20];

          v22 = +[IMDChatRegistry sharedInstance];
          v23 = [(IMDFilteringController *)self account];
          v24 = [v22 existingChatForID:v21 account:v23];

          if (v24)
          {
            v25 = v9 == 0;
          }

          else
          {
            v25 = 0;
          }

          if (v25)
          {
            v9 = [v19 action];
            v30 = [v19 subAction];
          }

          v8 += [v24 getNumberOfTimesRespondedToThread];
          v6 = v24;
          v7 = v21;
        }
      }

      v36 = [v31 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v36);
  }

  else
  {
    v30 = 0;
  }

  if (v8 >= 3)
  {
    *v28 = v9;
    *v29 = v30;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)_areAllParticipantsUnknown:(id)a3 fromSender:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = v5;
  if (a3)
  {
    LOBYTE(v7) = IMDAreAllAliasesUnknown();
  }

  else
  {
    v11[0] = v5;
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
  v6 = [v5 firstObject];

  return v6;
}

- (BOOL)_shouldCheckSMSForCategoryFromFirstPartyFilter
{
  if ([(IMDFilteringController *)self _isSpamFilteringEnabled])
  {
    v3 = 1;
  }

  else
  {
    v4 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v5 = [v4 isPriorityMessagesEnabled];

    if (v5 && [MEMORY[0x277D1AC58] receiverIsCandidateForAppleSMSFilter])
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
      v8 = [v7 BOOLValue];

      v9 = [(IMSyncedSettingsManaging *)self->_syncedSettingsManager settingValueForKey:6];
      v10 = [v9 BOOLValue];

      v11 = [(IMSyncedSettingsManaging *)self->_syncedSettingsManager settingValueForKey:7];
      v12 = [v11 BOOLValue];

      v13 = [(IMSyncedSettingsManaging *)self->_syncedSettingsManager settingValueForKey:8];
      LOBYTE(v11) = [v13 BOOLValue];

      v3 = v8 | v10 | v12 | v11;
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
  v4 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v5 = [v4 isPriorityMessagesEnabled];

  if (v5 && ![v3 length] && -[IMDFilteringController _shouldCheckSMSForCategoryFromFirstPartyFilter](self, "_shouldCheckSMSForCategoryFromFirstPartyFilter"))
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
  v3 = [MEMORY[0x277D19268] sharedInstance];
  if ([v3 isInternalInstall])
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
    v3 = [(IMDFilteringController *)self _isSpamFilteringEnabled];
    v4 = IMOSLoggingEnabled();
    if (v3)
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
  v3 = [(IMDFilteringController *)self _getSpamExtensionID];
  if (v3)
  {
    v4 = [(IMDFilteringController *)self identityLookupDecisioningManager];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_22B6D0B94;
    v5[3] = &unk_278708420;
    v6 = v3;
    v7 = self;
    [v4 requestFilterCapabilitiesForExtensionID:v6 withCompletion:v5];
  }
}

- (void)_checkIfMessageIsSpam:(id)a3 fromSender:(id)a4 withGuid:(id)a5 receiverISOCountryCode:(id)a6 receivedViaRelay:(BOOL)a7 containsOneTimeCode:(BOOL)a8
{
  v8 = a8;
  v32 = a7;
  v58 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v33 = a4;
  v14 = a5;
  v15 = a6;
  v16 = IMGetDomainIntForKey();
  v17 = [MEMORY[0x277D19268] sharedInstance];
  if ([v17 isInternalInstall])
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
    v21 = [(IMDFilteringController *)self _getSpamExtensionID];
    v22 = [v21 isEqualToString:@"com.apple.smsFilter.extension"];
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        v52 = v14;
        v53 = 2112;
        v54 = v21;
        v55 = 1024;
        *v56 = v22;
        *&v56[4] = 1024;
        *&v56[6] = v8;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Guid: %@, Checking for spam using spamExtensionID: %@, isUsingFirstPartyFilter: %{BOOL}d, containsOneTimeCode: %{BOOL}d", buf, 0x22u);
      }
    }

    v24 = v22 ^ 1;
    if (!v21)
    {
      v24 = 0;
    }

    if ((v24 & 1) != 0 || !v8)
    {
      if (!v13 || !v33)
      {
        goto LABEL_36;
      }

      v40 = MEMORY[0x277D85DD0];
      v41 = 3221225472;
      v42 = sub_22B6D15A4;
      v43 = &unk_278706650;
      v44 = self;
      v45 = v14;
      v46 = v32;
      im_dispatch_after();
      v27 = [(IMDFilteringController *)self identityLookupDecisioningManager];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = sub_22B6D15C4;
      v34[3] = &unk_2787084C0;
      v35 = v21;
      v38 = v22;
      v28 = v45;
      v36 = v28;
      v37 = self;
      v39 = v32;
      v29 = [v27 filterMessage:v13 fromSender:v33 receiverISOCountryCode:v15 extensionID:v35 withCompletion:v34];

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

        [(IMDFilteringController *)self _executeSpamCompletionBlockForMessageGuid:v28 category:0 subCategory:0 filterExtensionMetadata:0 receivedViaRelay:v32 spamDetectionSource:0];
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
          v52 = v14;
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
      v48 = v14;
      v49 = xmmword_22B7F87F0;
      v50 = v32;
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
      v52 = v14;
      v53 = 2112;
      v54 = @"IncomingMessageAlertSpamForcedCategory";
      v55 = 2048;
      *v56 = v16;
      *&v56[8] = 2048;
      v57 = v19;
      _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "_shouldCheckForSMSSpam: message.guid: %@ default %@ set, forcing category %ld sub category %ld", buf, 0x2Au);
    }
  }

  [(IMDFilteringController *)self _executeSpamCompletionBlockForMessageGuid:v14 category:v16 subCategory:v19 filterExtensionMetadata:0 receivedViaRelay:v32 spamDetectionSource:0];
LABEL_37:

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_checkAndUpdateSMSSpamFilterExtensionForUnregisteredOrUpdatedPlugins:(id)a3 arePluginsRegistered:(BOOL)a4
{
  v4 = a4;
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
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

    v7 = [(IMDFilteringController *)self _getSpamExtensionID];
    if (v7)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v8 = v5;
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

            if (v13 && [v7 isEqualToString:v13])
            {
              v15 = IMOSLoggingEnabled();
              if (v4)
              {
                if (v15)
                {
                  v16 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v28 = v7;
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
                    v28 = v7;
                    _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Spam extension deleted matches current spam extension %@.", buf, 0xCu);
                  }
                }

                v21 = v7;
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

- (void)_relaySMSFilteringSettingsForFilterState:(int64_t)a3
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
        v22 = a3;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Received request to relay SMS filtering settings for filterState: %ld", buf, 0xCu);
      }
    }

    v6 = [(IMDFilteringController *)self _newSMSFilteringSettingsDictForFilterState:a3];
    v7 = [v6 mutableCopy];

    [v7 setObject:@"1" forKey:@"sV"];
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v22 = v7;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Created SMSFilteringSettings dictionary: %@", buf, 0xCu);
      }
    }

    v9 = JWEncodeDictionary();
    v10 = [v9 _FTCopyGzippedData];
    v11 = MEMORY[0x277CBEB38];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:139];
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
    v14 = [v11 dictionaryWithObjectsAndKeys:{*MEMORY[0x277D18660], MEMORY[0x277CBEC38], *MEMORY[0x277D18648], v12, *MEMORY[0x277D18588], v10, *MEMORY[0x277D18598], v13, *MEMORY[0x277D18650], 0}];

    v15 = [(IMDFilteringController *)self relayController];
    v16 = [MEMORY[0x277D1A8F8] myCTPhoneNumber];
    v17 = [v15 sendDataToPeers:v14 forcedCallerID:v16 shouldFilterRecepients:1 requestProxySend:0 dontSendTo:0];

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
        v22 = v19;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Relayed SMSFilteringSettings dictionary: %@", buf, 0xCu);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)_newSMSFilteringSettingsDictForFilterState:(int64_t)a3
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

  if (a3 == 1)
  {
    v6 = IMGetCachedDomainValueForKey();
    v7 = [MEMORY[0x277D1AB68] fetchSMSFilterCapabilitiesOptions];
    v8 = v6;
    if (v8)
    {
      v9 = v8;
      CFDictionarySetValue(v4, SMSRelayFilteringSettingsFilterExtensionNameKey, v8);
    }
  }

  else
  {
    v10 = [MEMORY[0x277D19268] sharedInstance];
    v11 = [v10 isInternalInstall];

    if (v11 && (IMGetDomainIntForKey() - 4) >= 0xFFFFFFFFFFFFFFFDLL)
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

    v7 = 1;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
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

- (void)_checkAndUpdateSMSFilteringSettingsForDeviceID:(id)a3 smsFilterCapabilitiesOptions:(unint64_t)a4 filterExtensionName:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (![v8 length] || !objc_msgSend(MEMORY[0x277D1AB70], "supportsIncomingSMSRelayFiltering"))
  {
    goto LABEL_23;
  }

  v10 = [(IMDFilteringController *)self _isSpamFilteringEnabled];
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v18 = 138413058;
      v19 = v8;
      v20 = 2048;
      v21 = (a4 >> 1) & 1;
      v22 = 2048;
      v23 = a4;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Received SMSFilteringSettings from iPhone:%@ with filterState: %ld, smsFilterCapabilitiesOptions:%lu, filterExtensionName:%@. Checking if we need to update filter params.", &v18, 0x2Au);
    }
  }

  if ([MEMORY[0x277D1AB68] isValidSMSFilterCapabilitiesOptions:a4])
  {
    if ((a4 & 2) != 0)
    {
      if (v10)
      {
        v15 = [MEMORY[0x277D1AB68] shouldUpdateSMSFilterSyncDeviceParamsForDeviceID:v8 smsFilterCapabilitiesOptions:a4 filterExtensionName:v9];
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
      if (!v10)
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
    a4 = 0;
  }

  [MEMORY[0x277D1AB68] updateSMSFilterCapabilitiesOptionsForDeviceID:v8 smsFilterCapabilitiesOptions:a4 filterExtensionName:v9];
LABEL_16:
  if (v10 && ([MEMORY[0x277D1AB68] isSMSFilteringEnabledInSMSFilterCapabilitiesOptions] & 1) == 0)
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

- (void)_updateSpamFilteringState:(int64_t)a3
{
  CFPreferencesSetAppValue(@"IncomingMessageAlertSpamFiltration", [MEMORY[0x277CCABB0] numberWithInteger:a3], @"com.apple.MobileSMS");
  CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if ([MEMORY[0x277D1AC58] isFilterUnknownSendersEnabled])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.IncomingMessageAlertSpamFiltration.changed", 0, 0, 1u);
  }
}

- (void)handler:(id)a3 incomingSMSFilteringSettingsMessage:(id)a4 fromToken:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([MEMORY[0x277D1AB70] supportsIncomingSMSRelayFiltering])
  {
    v11 = [(IMDFilteringController *)self relayController];
    v12 = [v11 enrollmentController];
    [v12 _approveSelfForSMSRelay];

    v13 = [(IMDFilteringController *)self relayController];
    v14 = [v13 idsDeviceFromPushToken:v10];

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v14 name];
        v19 = 138412290;
        v20 = v16;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Incoming SMSFilteringSettings message from %@", &v19, 0xCu);
      }
    }

    v17 = [v14 uniqueIDOverride];
    [(IMDFilteringController *)self _processReceivedSMSFilteringSettingsDictionary:v9 deviceID:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_storeSpamCompletionBlock:(id)a3 forMessageGUID:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 length];
  if (v6)
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
    v11 = [(NSMutableDictionary *)self->_spamBlockMap objectForKey:v7];
    if (v11 && IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v22 = 138412546;
        v23 = v7;
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

    v17 = [v6 copy];
    [(NSMutableDictionary *)spamBlockMap setObject:v17 forKey:v7];

    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = _Block_copy(v6);
        v22 = 138412546;
        v23 = v7;
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

- (void)_executeSpamCompletionBlockForMessageGuid:(id)a3 category:(int64_t)a4 subCategory:(int64_t)a5 filterExtensionMetadata:(id)a6 receivedViaRelay:(BOOL)a7 spamDetectionSource:(int64_t)a8
{
  v21 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a6;
  v15 = [(NSMutableDictionary *)self->_spamBlockMap objectForKey:v13];
  if (v15)
  {
    if ([(IMDFilteringController *)self _isMessageCategorized:a4])
    {
      v16 = [(IMDFilteringController *)self _getSpamExtensionName];
    }

    else
    {
      v16 = 0;
    }

    (v15)[2](v15, a4, a5, v16, 0, v14, a8);
    [(IMDFilteringController *)self _clearSpamMapForMessageGUID:v13];
  }

  else if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = v13;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "executeSpamCompletionBlockForMessageGuid: %@ Aready ran completion block, not doing anything", &v19, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_clearSpamMapForMessageGUID:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Clearing spam block mapping for %@", &v8, 0xCu);
    }
  }

  if (v4)
  {
    [(NSMutableDictionary *)self->_spamBlockMap removeObjectForKey:v4];
    if (![(NSMutableDictionary *)self->_spamBlockMap count])
    {
      spamBlockMap = self->_spamBlockMap;
      self->_spamBlockMap = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)categorizeIncomingSMSMessage:(id)a3 messageGUID:(id)a4 sender:(id)a5 wasRelayed:(BOOL)a6 chatIdentifier:(id)a7 participants:(id)a8 checkingForSpam:(BOOL *)a9 myReceiverISOCountryCode:(id)a10 messageBody:(id)a11 foundChat:(id)a12 service:(id)a13 containsOneTimeCode:(BOOL)a14 completion:(id)a15
{
  v37 = a3;
  v34 = a15;
  v33 = a13;
  v32 = a12;
  v31 = a11;
  v30 = a10;
  v29 = a8;
  v28 = a7;
  v27 = a5;
  v26 = a4;
  if ([v37 has_spamCategory])
  {
    v19 = [v37 spamCategory];
  }

  else
  {
    v19 = 0;
  }

  v20 = [v37 smsFilteringSettings];
  v21 = [v37 originatedDeviceUniqueID];
  v22 = [v37 filterSubCategory];
  if ((v22 - 1) >= 0xC)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22;
  }

  LOBYTE(v25) = a14;
  LOBYTE(v24) = a6;
  [(IMDFilteringController *)self categorizeIncomingMessage:v20 deviceID:v21 category:v19 subCategory:v23 messageGUID:v26 sender:v27 wasRelayed:v24 chatIdentifier:v28 participants:v29 checkingForSpam:a9 trustIndicator:0 myReceiverISOCountryCode:v30 messageBody:v31 foundChat:v32 service:v33 containsOneTimeCode:v25 completion:v34];
}

- (void)categorizeIncomingRCSMessageGUID:(id)a3 sender:(id)a4 wasRelayed:(BOOL)a5 chatIdentifier:(id)a6 participants:(id)a7 checkingForSpam:(BOOL *)a8 trustIndicator:(id)a9 myReceiverISOCountryCode:(id)a10 messageBody:(id)a11 foundChat:(id)a12 service:(id)a13 containsOneTimeCode:(BOOL)a14 completion:(id)a15
{
  LOBYTE(v16) = a14;
  LOBYTE(v15) = a5;
  [(IMDFilteringController *)self categorizeIncomingMessage:0 deviceID:0 category:0 subCategory:0 messageGUID:a3 sender:a4 wasRelayed:v15 chatIdentifier:a6 participants:a7 checkingForSpam:a8 trustIndicator:a9 myReceiverISOCountryCode:a10 messageBody:a11 foundChat:a12 service:a13 containsOneTimeCode:v16 completion:a15];
}

- (void)categorizeIncomingMessage:(id)a3 deviceID:(id)a4 category:(int64_t)a5 subCategory:(int64_t)a6 messageGUID:(id)a7 sender:(id)a8 wasRelayed:(BOOL)a9 chatIdentifier:(id)a10 participants:(id)a11 checkingForSpam:(BOOL *)a12 trustIndicator:(id)a13 myReceiverISOCountryCode:(id)a14 messageBody:(id)a15 foundChat:(id)a16 service:(id)a17 containsOneTimeCode:(BOOL)a18 completion:(id)a19
{
  v107 = *MEMORY[0x277D85DE8];
  v50 = a3;
  v46 = a4;
  v57 = a7;
  v54 = a8;
  v23 = a10;
  v45 = a11;
  v24 = a6;
  v25 = a13;
  v52 = a14;
  v48 = a15;
  v26 = a16;
  v56 = a17;
  v27 = a19;
  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = v57;
      *&buf[12] = 2112;
      *&buf[14] = v23;
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
  v60 = v27;
  v96 = v60;
  v44 = v46;
  v86 = v44;
  v43 = v50;
  v87 = v43;
  v88 = self;
  v99 = a5;
  v100 = a6;
  v47 = v23;
  v89 = v47;
  v51 = v45;
  v90 = v51;
  v55 = v54;
  v91 = v55;
  v29 = v26;
  v92 = v29;
  v97 = buf;
  v98 = v104;
  v101 = a12;
  v30 = v48;
  v93 = v30;
  v58 = v57;
  v94 = v58;
  v31 = v52;
  v95 = v31;
  v102 = a9;
  v103 = a18;
  v32 = _Block_copy(aBlock);
  if (a5 == 2)
  {
    (*(v60 + 2))(v60, 2, v24, 0, 0, 0, 0);
  }

  else
  {
    v33 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v34 = [v33 isIntroductionsEnabled];

    if (v34)
    {
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = sub_22B6D3F48;
      v73[3] = &unk_278708538;
      v73[4] = self;
      v53 = v55;
      v74 = v53;
      v75 = v56;
      v76 = v25;
      v77 = v30;
      v78 = v31;
      v84 = a18;
      v35 = v29;
      v79 = v35;
      v82 = buf;
      v83 = v104;
      v36 = v32;
      v80 = v36;
      v49 = v60;
      v81 = v49;
      v62 = _Block_copy(v73);
      v37 = [(IMDFilteringController *)self trustKitDecisioningManager];
      v38 = [v37 isJunkFilteringEnabled];

      if (v38)
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

          v41 = [(IMDFilteringController *)self communicationTrustManager];
          *v69 = 0;
          v70 = v69;
          v71 = 0x2020000000;
          v72 = *(*&buf[8] + 24);
          *a12 = 1;
          v63[0] = MEMORY[0x277D85DD0];
          v63[1] = 3221225472;
          v63[2] = sub_22B6D3FA4;
          v63[3] = &unk_278708588;
          v64 = v35;
          v67 = v69;
          v65 = v49;
          v68 = v104;
          v66 = v62;
          [v41 requestDecisionForSender:v53 completion:v63];

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

- (void)_removeAppliedPriorityMessages:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [(IMDFilteringController *)self pendingPriorityMessageGUIDs];
        [v10 removeObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)relayPriorityMessageFor:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_22B6D48CC;
  v21[3] = &unk_278706590;
  v5 = v4;
  v22 = v5;
  v16 = v3;
  [v3 enumerateObjectsUsingBlock:v21];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
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

      v7 = [v6 countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_configureSyncedDefaultsWithOverride:(BOOL)a3
{
  v20 = *MEMORY[0x277D85DE8];
  if ((IMSharedHelperDeviceIsiPad() & 1) == 0 && (a3 || ([(IMSyncedSettingsManaging *)self->_syncedSettingsManager settingExplicitlySetForKey:12]& 1) == 0))
  {
    v5 = [(IMDFilteringController *)self relayController];
    v6 = [v5 peerDevices];
    v7 = [MEMORY[0x277CCAC30] predicateWithBlock:&unk_283F1B2E8];
    v8 = [v6 filteredArrayUsingPredicate:v7];
    v9 = [v8 count];

    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = [MEMORY[0x277D1AC58] receiverIsCandidateForAppleSMSFilter];
    }

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = @"NO";
        if (v10)
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
    v14 = [MEMORY[0x277CCABB0] numberWithBool:v10];
    [(IMSyncedSettingsManaging *)syncedSettingsManager setSettingValue:v14 forKey:12];
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end
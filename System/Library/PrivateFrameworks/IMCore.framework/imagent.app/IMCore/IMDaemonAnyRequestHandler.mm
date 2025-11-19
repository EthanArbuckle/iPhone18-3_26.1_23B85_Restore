@interface IMDaemonAnyRequestHandler
- (BOOL)_shouldContinueDownloadingPurgedAttachments:(unint64_t)a3;
- (IMDaemonAnyRequestHandler)init;
- (id)_pinnedChatIdentifiersFromContext:(id)a3;
- (id)_setupInfoForCapabilities:(unint64_t)a3 context:(id)a4;
- (id)valueOfPersistentProperty:(id)a3;
- (id)valueOfProperty:(id)a3;
- (int64_t)_numberOfChatsToLoadDuringInitialSetupFromContext:(id)a3;
- (int64_t)_precacheChatCountWithCapabilities:(unint64_t)a3;
- (unint64_t)_broadcastedUncachedAttachmentCountForChatWithGUID:(id)a3 chatIdentifiers:(id)a4 services:(id)a5 broadcaster:(id)a6;
- (void)_addAccountsToSetupInfo:(id)a3 capabilities:(unint64_t)a4 context:(id)a5;
- (void)_addApprovedCapabilitiesToSetupInfo:(id)a3 capabilities:(unint64_t)a4 context:(id)a5;
- (void)_addChatBotToSetupInfo:(id)a3;
- (void)_addChatCountsToSetupInfo:(id)a3 capabilities:(unint64_t)a4 context:(id)a5;
- (void)_addChatsToSetupInfo:(id)a3 capabilities:(unint64_t)a4 context:(id)a5;
- (void)_addFeatureStatusToSetupInfo:(id)a3 capabilities:(unint64_t)a4 context:(id)a5;
- (void)_addGroupPhotoTransfersToSetupInfo:(id)a3 capabilities:(unint64_t)a4 context:(id)a5;
- (void)_addKeyTransparencyToSetupInfo:(id)a3 capabilities:(unint64_t)a4 context:(id)a5;
- (void)_addTransfersToSetupInfo:(id)a3 capabilities:(unint64_t)a4 context:(id)a5;
- (void)_cacheChatsWithPinningIdentifiers:(id)a3;
- (void)acceptPendingNicknameForHandleID:(id)a3 updateType:(unint64_t)a4;
- (void)clearPendingNicknamePhotoUpdateForHandleIDs:(id)a3;
- (void)clearPendingNicknameUpdatesForHandleIDs:(id)a3;
- (void)conference:(id)a3 account:(id)a4 notifyInvitationCancelledFromPerson:(id)a5;
- (void)consumeCodeWithMessageGUID:(id)a3;
- (void)denyHandleIDsForNicknameSharing:(id)a3;
- (void)downloadStickerPackWithGUID:(id)a3 isIncomingMessage:(BOOL)a4 ignoreCache:(BOOL)a5;
- (void)downloadStickerWithGUID:(id)a3;
- (void)eagerUploadCancel:(id)a3;
- (void)eagerUploadTransfer:(id)a3 recipients:(id)a4;
- (void)fetchActiveNicknamesWithReply:(id)a3;
- (void)fetchAutoDeletionPreferenceWithReply:(id)a3;
- (void)fetchGroupPhotoPathsForChatsWithGroupIDs:(id)a3 completionHandler:(id)a4;
- (void)fetchHandleSharingStateWithReply:(id)a3;
- (void)fetchIgnoredNicknameHandlesWithReply:(id)a3;
- (void)fetchNicknamesWithReply:(id)a3;
- (void)fetchPersonalNicknameWithReply:(id)a3;
- (void)fetchTransitionedNicknameHandlesWithReply:(id)a3;
- (void)fetchUnknownSenderRecordsWithReply:(id)a3;
- (void)forceReloadChatRegistryWithQueryID:(id)a3;
- (void)holdBuddyUpdatesAccount:(id)a3;
- (void)ignorePendingNicknameUpdatesForHandleIDs:(id)a3;
- (void)initiateQuickSwitch;
- (void)locationUpdateDelivered:(id)a3;
- (void)locationUpdateSent;
- (void)markAllNicknamesAsPending;
- (void)markMessageAsReadWithGUID:(id)a3 callerOrigin:(int64_t)a4 reply:(id)a5;
- (void)markPlayedForIDs:(id)a3 style:(unsigned __int8)a4 onServices:(id)a5 message:(id)a6;
- (void)markPlayedForMessageGUID:(id)a3;
- (void)markProfileRecordsAsIgnored:(id)a3;
- (void)markReadForMessageGUID:(id)a3 callerOrigin:(int64_t)a4 queryID:(id)a5;
- (void)markUnreadForMessageGUID:(id)a3 IDs:(id)a4 style:(unsigned __int8)a5 services:(id)a6;
- (void)nicknamePreferencesDidChange;
- (void)onboardDeleteVerificationCodesIfNeededWithMessage:(id)a3 reply:(id)a4;
- (void)onboardDeleteVerificationCodesIfNeededWithReply:(id)a3;
- (void)openStewieChatWithContext:(id)a3;
- (void)playSendSoundForMessageGUID:(id)a3 callerOrigin:(int64_t)a4;
- (void)preWarm;
- (void)processReceivedEmergencyMessageFromIMTool:(int64_t)a3 message:(id)a4;
- (void)requestBuddyPicturesAndPropertiesForAccount:(id)a3;
- (void)requestGroupsAccount:(id)a3;
- (void)requestNetworkDataAvailability;
- (void)requestOneTimeCodeStatus;
- (void)requestPendingACInvites;
- (void)requestPendingVCInvites;
- (void)requestProperty:(id)a3 ofPerson:(id)a4 account:(id)a5;
- (void)requestQOSClassWhileServicingRequestsWithID:(id)a3;
- (void)requestSetupWithClientID:(id)a3 capabilities:(unint64_t)a4 context:(id)a5 reply:(id)a6;
- (void)requestSetupXPCObjectWithClientID:(id)a3 capabilities:(unint64_t)a4 context:(id)a5 reply:(id)a6;
- (void)resumeBuddyUpdatesAccount:(id)a3;
- (void)sendClearNotice:(id)a3 toHandles:(id)a4 reply:(id)a5;
- (void)sendEmergencyQuestionnaire:(id)a3;
- (void)sendNameOnlyToHandleIDs:(id)a3 fromHandleID:(id)a4;
- (void)sendNotice:(id)a3 toHandles:(id)a4 fromHandle:(id)a5 reply:(id)a6;
- (void)sendNotificationMessageToUniqueID:(id)a3 withCommand:(int64_t)a4;
- (void)sendQuestionnaire:(id)a3;
- (void)setNewPersonalNickname:(id)a3;
- (void)setValue:(id)a3 ofPersistentProperty:(id)a4;
- (void)setValue:(id)a3 ofProperty:(id)a4;
- (void)setValue:(id)a3 ofProperty:(id)a4 ofPerson:(id)a5 account:(id)a6;
- (void)simulateOneTimeCodeArriving:(id)a3;
- (void)startWatchingBuddy:(id)a3 account:(id)a4;
- (void)stopWatchingBuddy:(id)a3 account:(id)a4;
- (void)terminateForcingIfNeeded:(BOOL)a3;
@end

@implementation IMDaemonAnyRequestHandler

- (IMDaemonAnyRequestHandler)init
{
  v6.receiver = self;
  v6.super_class = IMDaemonAnyRequestHandler;
  v2 = [(IMDaemonAnyRequestHandler *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    downloadingCountDictionary = v2->_downloadingCountDictionary;
    v2->_downloadingCountDictionary = v3;
  }

  return v2;
}

- (void)requestSetupXPCObjectWithClientID:(id)a3 capabilities:(unint64_t)a4 context:(id)a5 reply:(id)a6
{
  v9 = _Block_copy(a6);
  sub_100054134();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a3;
  v12 = self;
  isa = sub_100054114().super.isa;

  v14 = swift_allocObject();
  *(v14 + 16) = sub_100003924;
  *(v14 + 24) = v10;
  v16[4] = sub_100003920;
  v16[5] = v14;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_1000037C8;
  v16[3] = &unk_100082D90;
  v15 = _Block_copy(v16);

  [(IMDaemonAnyRequestHandler *)v12 requestSetupWithClientID:v11 capabilities:a4 context:isa reply:v15];

  _Block_release(v15);
}

- (void)requestSetupWithClientID:(id)a3 capabilities:(unint64_t)a4 context:(id)a5 reply:(id)a6
{
  v8 = _Block_copy(a6);
  v9 = sub_100054164();
  v11 = v10;
  v12 = sub_100054134();
  _Block_copy(v8);
  v13 = self;
  sub_100002A7C(v9, v11, a4, v12, v13, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)requestNetworkDataAvailability
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "requesting network data availability", v6, 2u);
    }
  }

  v3 = +[IMDBroadcastController sharedProvider];
  v4 = [v3 broadcasterForAllListeners];
  v5 = +[IMDAccountController sharedAccountController];
  [v4 networkDataAvailabilityChanged:{objc_msgSend(v5, "networkDataAvailable")}];
}

- (id)_setupInfoForCapabilities:(unint64_t)a3 context:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = objc_autoreleasePoolPush();
  [(IMDaemonAnyRequestHandler *)self _addAccountsToSetupInfo:v7 capabilities:a3 context:v6];
  [(IMDaemonAnyRequestHandler *)self _addGroupPhotoTransfersToSetupInfo:v7 capabilities:a3 context:v6];
  [(IMDaemonAnyRequestHandler *)self _addTransfersToSetupInfo:v7 capabilities:a3 context:v6];
  [(IMDaemonAnyRequestHandler *)self _addChatCountsToSetupInfo:v7 capabilities:a3 context:v6];
  [(IMDaemonAnyRequestHandler *)self _addChatsToSetupInfo:v7 capabilities:a3 context:v6];
  [(IMDaemonAnyRequestHandler *)self _addKeyTransparencyToSetupInfo:v7 capabilities:a3 context:v6];
  [(IMDaemonAnyRequestHandler *)self _addApprovedCapabilitiesToSetupInfo:v7 capabilities:a3 context:v6];
  [(IMDaemonAnyRequestHandler *)self _addFeatureStatusToSetupInfo:v7 capabilities:a3 context:v6];
  [(IMDaemonAnyRequestHandler *)self _addChatBotToSetupInfo:v7];
  objc_autoreleasePoolPop(v8);

  return v7;
}

- (void)_addChatBotToSetupInfo:(id)a3
{
  theDict = a3;
  v3 = +[IMCTSubscriptionUtilities sharedInstance];
  v4 = [v3 allowedChatBotExtensions];

  if (v4 && [v4 count])
  {
    v5 = +[IMCTSubscriptionUtilities sharedInstance];
    v6 = [v5 allowedChatBotExtensions];

    if (v6)
    {
      CFDictionarySetValue(theDict, IMSetupAllowedChatBotExtensions, v6);
    }
  }
}

- (void)_addApprovedCapabilitiesToSetupInfo:(id)a3 capabilities:(unint64_t)a4 context:(id)a5
{
  v6 = a3;
  v7 = +[IMDeviceUtilities isMessagesInstalled];
  v8 = [NSNumber numberWithUnsignedLongLong:a4];
  if (v8)
  {
    CFDictionarySetValue(v6, IMSetupInfoApprovedClientCapabilitiesKey, v8);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100053A4C();
  }

  v9 = [NSNumber numberWithBool:v7];
  if (v9)
  {
    CFDictionarySetValue(v6, IMSetupInfoIsMessagesInstalledKey, v9);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100053AE0();
  }
}

- (void)_addAccountsToSetupInfo:(id)a3 capabilities:(unint64_t)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[IMDServiceController sharedController];
  v11 = [v10 allServices];

  v12 = objc_alloc_init(NSMutableArray);
  if ([(IMDaemonAnyRequestHandler *)self _clientCapabilitiesSupportAccounts:a4])
  {
    v13 = [v11 arrayByApplyingSelector:"internalName"];
    if (v13)
    {
      CFDictionarySetValue(v8, IMSetupInfoServiceNamesKey, v13);
    }

    v67 = v12;

    v14 = +[IMDDaemonPropertyManager sharedManager];
    v15 = [v14 properties];
    v16 = [v15 count];

    if (v16)
    {
      v17 = IMSetupInfoPropertiesKey;
      v18 = +[IMDDaemonPropertyManager sharedManager];
      v19 = [v18 properties];
      CFDictionarySetValue(v8, v17, v19);
    }

    v63 = v9;
    v20 = +[IMDDaemonPropertyManager sharedManager];
    v21 = [v20 persistentProperties];
    v22 = [v21 count];

    if (v22)
    {
      v23 = IMSetupInfoPersistentPropertiesKey;
      v24 = +[IMDDaemonPropertyManager sharedManager];
      v25 = [v24 persistentProperties];
      CFDictionarySetValue(v8, v23, v25);
    }

    v64 = v8;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v62 = v11;
    obj = v11;
    v68 = [obj countByEnumeratingWithState:&v75 objects:v80 count:16];
    if (v68)
    {
      v66 = *v76;
      v26 = &IMDCommandChatGroupIDKey_ptr;
      do
      {
        for (i = 0; i != v68; i = i + 1)
        {
          if (*v76 != v66)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v75 + 1) + 8 * i);
          context = objc_autoreleasePoolPush();
          v29 = [v26[15] sharedAccountController];
          v30 = [v29 accountsForService:v28];

          v31 = [v30 arrayByApplyingSelector:"accountID"];
          v32 = objc_alloc_init(NSMutableDictionary);
          v33 = [v28 internalName];
          if (v33)
          {
            CFDictionarySetValue(v32, IMServiceInfoInternalNameKey, v33);
          }

          v34 = [v28 serviceProperties];
          v35 = [v34 count];

          if (v35)
          {
            v36 = IMServiceInfoPropertiesKey;
            v37 = [v28 serviceProperties];
            CFDictionarySetValue(v32, v36, v37);
          }

          v38 = [v28 serviceDefaultsForSetup];
          v39 = [v38 count];

          if (v39)
          {
            v40 = IMServiceInfoDefaultsKey;
            v41 = [v28 serviceDefaultsForSetup];
            CFDictionarySetValue(v32, v40, v41);
          }

          v42 = [v28 defaultAccountSettings];
          v43 = [v42 count];

          if (v43)
          {
            v44 = IMServiceInfoDefaultAccountSettingsKey;
            v45 = [v28 defaultAccountSettings];
            CFDictionarySetValue(v32, v44, v45);
          }

          if ([v31 count])
          {
            CFDictionarySetValue(v32, IMServiceInfoAccountsKey, v31);
          }

          v69 = v31;
          v46 = [v26[15] sharedAccountController];
          v47 = [v46 activeAccountsForService:v28];
          [v47 arrayByApplyingSelector:"accountID"];
          v49 = v48 = v26;
          v50 = [v49 count];

          if (v50)
          {
            v51 = IMServiceInfoActiveAccountsKey;
            v52 = [v48[15] sharedAccountController];
            v53 = [v52 activeAccountsForService:v28];
            v54 = [v53 arrayByApplyingSelector:"accountID"];
            CFDictionarySetValue(v32, v51, v54);
          }

          [v67 addObject:v32];
          v55 = objc_alloc_init(NSMutableArray);
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v56 = v30;
          v57 = [v56 countByEnumeratingWithState:&v71 objects:v79 count:16];
          if (v57)
          {
            v58 = v57;
            v59 = *v72;
            do
            {
              for (j = 0; j != v58; j = j + 1)
              {
                if (*v72 != v59)
                {
                  objc_enumerationMutation(v56);
                }

                v61 = [*(*(&v71 + 1) + 8 * j) accountInfoToPost];
                if ([v61 count])
                {
                  [v55 addObject:v61];
                }
              }

              v58 = [v56 countByEnumeratingWithState:&v71 objects:v79 count:16];
            }

            while (v58);
          }

          if ([v55 count])
          {
            CFDictionarySetValue(v32, IMServiceInfoAccountInfoKey, v55);
          }

          objc_autoreleasePoolPop(context);
          v26 = v48;
        }

        v68 = [obj countByEnumeratingWithState:&v75 objects:v80 count:16];
      }

      while (v68);
    }

    v12 = v67;
    v9 = v63;
    v8 = v64;
    v11 = v62;
    if ([v67 count])
    {
      CFDictionarySetValue(v64, IMSetupInfoServicesKey, v67);
    }
  }
}

- (void)_addGroupPhotoTransfersToSetupInfo:(id)a3 capabilities:(unint64_t)a4 context:(id)a5
{
  v5 = a4;
  v6 = a3;
  if ((v5 & 0x1000000) != 0)
  {
    v7 = +[IMDFileTransferCenter sharedInstance];
    v8 = [v7 _allFileTransfers];

    v9 = [v8 allValues];
    if ([v9 count])
    {
      v22 = v8;
      theDict = v6;
      v24 = +[NSMutableDictionary dictionary];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v21 = v9;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v26;
        v14 = IMFileTransferFilenameKey;
        v15 = IMFileTransferGroupPhotoName;
        v16 = IMFileTransferGUIDKey;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v26 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v18 = *(*(&v25 + 1) + 8 * i);
            v19 = [v18 valueForKey:{v14, v21}];
            if ([v19 containsString:v15])
            {
              v20 = [v18 valueForKey:v16];
              if (v20)
              {
                [v24 setValue:v18 forKey:v20];
              }
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v12);
      }

      v6 = theDict;
      if ([v24 count] && v24)
      {
        CFDictionarySetValue(theDict, IMSetupInfoGroupPhotoFileTransfersKey, v24);
      }

      v9 = v21;
      v8 = v22;
    }
  }
}

- (void)_addTransfersToSetupInfo:(id)a3 capabilities:(unint64_t)a4 context:(id)a5
{
  v5 = a4;
  v6 = a3;
  if ((v5 & 0x1000100) == 0x100)
  {
    theDict = v6;
    v7 = +[IMDFileTransferCenter sharedInstance];
    v8 = [v7 contextStamp];

    v9 = +[IMDFileTransferCenter sharedInstance];
    v10 = [v9 _allFileTransfers];

    if (v10)
    {
      CFDictionarySetValue(theDict, IMSetupInfoFileTransfersKey, v10);
    }

    if (v8)
    {
      CFDictionarySetValue(theDict, IMSetupInfoFileTransfersStampKey, v8);
    }

    v6 = theDict;
  }
}

- (void)_addChatCountsToSetupInfo:(id)a3 capabilities:(unint64_t)a4 context:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  if ((v6 & 0x8004) != 0)
  {
    v9 = +[IMDMessageStore sharedInstance];
    v10 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v9 unreadMessagesCount]);

    if (v10)
    {
      CFDictionarySetValue(v7, IMSetupInfoUnreadMessageCountKey, v10);
    }

    v11 = +[IMFeatureFlags sharedFeatureFlags];
    v12 = [v11 isUnreadCountRefactorEnabled];

    if (v12)
    {
      v13 = +[IMDMessageStore sharedInstance];
      v14 = [v13 unreadCountReportDeltaForSetupInfo];

      v15 = [v14 updatedReports];
      v16 = [v15 arrayByApplyingSelector:"dictionary"];

      if (v16)
      {
        CFDictionarySetValue(v7, IMSetupInfoUnreadReportsKey, v16);
      }

      v17 = [v14 fromStamp];
      if (v17)
      {
        CFDictionarySetValue(v7, IMSetupInfoUnreadReportsLastStampKey, v17);
      }

      v18 = [v14 toStamp];
      if (v18)
      {
        CFDictionarySetValue(v7, IMSetupInfoUnreadReportsCurrentStampKey, v18);
      }
    }

    v19 = +[IMDMessageStore sharedInstance];
    v20 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v19 lastFailedMessageDate]);

    if (v20)
    {
      CFDictionarySetValue(v7, IMSetupInfoLastFailedMessageDateKey, v20);
    }

    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [(__CFDictionary *)v7 valueForKey:@"unreadMessageCount"];
        v23 = [(__CFDictionary *)v7 valueForKey:@"lastFailedMessageDate"];
        v24 = 134218240;
        v25 = v22;
        v26 = 2048;
        v27 = v23;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Adding unread message count (%ld) and lastFailedMessageDate (%ld) to setup info.", &v24, 0x16u);
      }

LABEL_21:
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Not adding unread message count or last failed message date to setup info due to missing capability.", &v24, 2u);
    }

    goto LABEL_21;
  }
}

- (void)_addChatsToSetupInfo:(id)a3 capabilities:(unint64_t)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ((a4 & 0x4000000) == 0 && (((a4 & 0x2400000) != 0) & (a4 >> 2)) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(v35[0]) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Client does not want initial chat load", v35, 2u);
      }
    }

    goto LABEL_41;
  }

  v11 = [(IMDaemonAnyRequestHandler *)self _pinnedChatIdentifiersFromContext:v9];
  [(IMDaemonAnyRequestHandler *)self _cacheChatsWithPinningIdentifiers:v11];
  v12 = +[IMDCKSyncController sharedInstance];
  [v12 resumeSyncOnLaunchIfNeeded];

  v13 = [(IMDaemonAnyRequestHandler *)self _numberOfChatsToLoadDuringInitialSetupFromContext:v9];
  if (v13 <= 0)
  {
    if ((a4 & 0x100000000) != 0)
    {
      v13 = IMDChatPrecacheCountClientRemote;
    }

    else
    {
      if ((a4 & 0x2400000) == 0)
      {
        [v11 count];
        goto LABEL_13;
      }

      v13 = [(IMDaemonAnyRequestHandler *)self _precacheChatCountWithCapabilities:a4];
    }
  }

  if (v13 <= [v11 count])
  {
LABEL_13:
    v13 = [v11 count];
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = IMStringFromClientCapabilities();
      v35[0] = 67109378;
      v35[1] = v13;
      v36 = 2112;
      v37 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Precaching %d chats for client with capabilities %@", v35, 0x12u);
    }
  }

  if ((a4 & 0x4000000) != 0)
  {
    v16 = +[IMDChatRegistry sharedInstance];
    v17 = [v16 _blackholedChatInfoForNumberOfChats:0x7FFFFFFFFFFFFFFFLL];

    if (v17)
    {
      CFDictionarySetValue(v8, IMSetupInfoChatsKey, v17);
    }

    v18 = +[IMDChatRegistry sharedInstance];
    v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 blackholedChatsExist]);
  }

  else
  {
    v20 = IMSharedHelperPersonCentricMergingEnabled();
    v21 = +[IMDChatRegistry sharedInstance];
    v22 = v21;
    if (v20)
    {
      v23 = [v21 chats];

      v24 = +[IMDChatRegistry sharedInstance];
      v25 = [v24 personCentricGroupedChatsArrayWithMaximumNumberOfChats:v13 skipsLastMessageLoading:(a4 >> 24) & 1 usingChats:v23 useCachedChatGroups:1 includingPinnedChatIdentifiers:v11 repairInconsistentMergedChats:1];

      if (v25)
      {
        CFDictionarySetValue(v8, IMSetupInfoPersonMergedChatsKey, v25);
      }

      v26 = +[IMDChatRegistry sharedInstance];
      v27 = [v26 aliasToCNIDMap];

      if (v27)
      {
        CFDictionarySetValue(v8, IMSetupInfoAliasToCNIDMapKey, v27);
      }

      v28 = +[IMDChatRegistry sharedInstance];
      v29 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v28 filterediMessageChatsExist]);

      if (v29)
      {
        CFDictionarySetValue(v8, IMSetupInfoFilteredIMessageChatsExistKey, v29);
      }
    }

    else
    {
      v23 = [v21 _chatInfoForNumberOfChats:v13];

      if (v23)
      {
        CFDictionarySetValue(v8, IMSetupInfoChatsKey, v23);
      }
    }

    v30 = +[IMDChatRegistry sharedInstance];
    v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v30 blackholedChatsExist]);
  }

  if (v19)
  {
    CFDictionarySetValue(v8, IMSetupInfoBlackholedChatsExistKey, v19);
  }

  v31 = +[IMDMessageStore sharedInstance];
  v32 = [v31 modificationStamp];

  if (v32)
  {
    CFDictionarySetValue(v8, IMSetupInfoDBModificationStampKey, v32);
  }

  v33 = +[IMHandleOffGridStateManager sharedInstance];
  v34 = [v33 cachedOverrideDatesByHandleID];

  if (v34)
  {
    CFDictionarySetValue(v8, IMSetupInfoOffGridStatusOverrideDatesKey, v34);
  }

LABEL_41:
}

- (void)_addKeyTransparencyToSetupInfo:(id)a3 capabilities:(unint64_t)a4 context:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  if ((v6 & 0x204) != 0)
  {
    v9 = +[IMDKeyTransparencyController sharedController];
    v10 = [v9 setupInfo];
    [v7 setObject:v10 forKeyedSubscript:IMSetupInfoKeyTransparencyInfoKey];
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_4;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Client does not want KT info", v11, 2u);
    }
  }

LABEL_4:
}

- (void)_addFeatureStatusToSetupInfo:(id)a3 capabilities:(unint64_t)a4 context:(id)a5
{
  theDict = a3;
  v5 = +[IMFeatureFlags sharedFeatureFlags];
  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 isOneChatEnabled] ^ 1);

  if (v6)
  {
    CFDictionarySetValue(theDict, IMSetupInfoForceLegacyChatVersion, v6);
  }
}

- (int64_t)_precacheChatCountWithCapabilities:(unint64_t)a3
{
  v3 = &IMDChatPrecacheCountClientVeryRecent;
  if ((a3 & 0x2000000) == 0)
  {
    v3 = &IMDChatPrecacheCountClientRecent;
  }

  v4 = *v3;
  return IMGetCachedDomainIntForKeyWithDefaultValue();
}

- (void)_cacheChatsWithPinningIdentifiers:(id)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v4)
  {
    v6 = *v15;
    *&v5 = 134218242;
    v13 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = [IMDChatRegistry sharedInstance:v13];
        v10 = [v9 existingChatsWithPinningIdentifier:v8];

        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = [v10 count];
            *buf = v13;
            v19 = v12;
            v20 = 2112;
            v21 = v8;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Found %llu pinned chats for pinning identifier %@", buf, 0x16u);
          }
        }

        v7 = v7 + 1;
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v4);
  }
}

- (int64_t)_numberOfChatsToLoadDuringInitialSetupFromContext:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100014800;
  v6[3] = &unk_100081A20;
  v6[4] = &v7;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)_pinnedChatIdentifiersFromContext:(id)a3
{
  v3 = a3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001493C;
  v7[3] = &unk_100081A48;
  v8 = objc_alloc_init(NSMutableArray);
  v4 = v8;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];

  v5 = [v4 copy];

  return v5;
}

- (void)setValue:(id)a3 ofProperty:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMDDaemonPropertyManager sharedManager];
  [v7 setValue:v6 ofProperty:v5];
}

- (id)valueOfProperty:(id)a3
{
  v3 = a3;
  v4 = +[IMDDaemonPropertyManager sharedManager];
  v5 = [v4 valueOfProperty:v3];

  return v5;
}

- (void)setValue:(id)a3 ofPersistentProperty:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMDDaemonPropertyManager sharedManager];
  [v7 setValue:v6 ofPersistentProperty:v5];
}

- (id)valueOfPersistentProperty:(id)a3
{
  v3 = a3;
  v4 = +[IMDDaemonPropertyManager sharedManager];
  v5 = [v4 valueOfPersistentProperty:v3];

  return v5;
}

- (void)markUnreadForMessageGUID:(id)a3 IDs:(id)a4 style:(unsigned __int8)a5 services:(id)a6
{
  v8 = a3;
  v32 = a4;
  v30 = a6;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [IMDClientRequestContext currentContext:v30];
      v11 = [v10 listenerID];
      *buf = 138412546;
      v39 = v11;
      v40 = 2112;
      v41 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Request from %@ to mark message as unread with GUID %@", buf, 0x16u);
    }
  }

  v12 = objc_alloc_init(IMTimingCollection);
  [v12 startTimingForKey:@"total-time-to-mark-unread"];
  if (![v8 length])
  {
    [v12 startTimingForKey:@"search-for-guid"];
    v13 = objc_alloc_init(NSMutableSet);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v14 = v32;
    v15 = 0;
    v16 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v16)
    {
      v17 = *v34;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v33 + 1) + 8 * i);
          if (([v13 containsObject:{v19, v30}] & 1) == 0)
          {
            [v13 addObject:v19];
            MessageForChatIdentifier = IMDMessageRecordCopyLastReadMessageForChatIdentifier();
            if (MessageForChatIdentifier)
            {
              AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef();
              CFRelease(MessageForChatIdentifier);
              if (!v15 || [v15 isOlderThanItem:AttachmentIfNeededRef])
              {
                v22 = [AttachmentIfNeededRef copy];

                v15 = v22;
              }
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v16);

      if (!v15)
      {
        goto LABEL_26;
      }

      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v39 = v15;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "We found a message guid to mark unread %@", buf, 0xCu);
        }
      }

      [v15 guid];
      v8 = v14 = v8;
    }

LABEL_26:
    [v12 stopTimingForKey:{@"search-for-guid", v30}];
  }

  if ([v8 length])
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v39 = v8;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Marking message as unread %@", buf, 0xCu);
      }
    }

    v25 = +[IMDMessageStore sharedInstance];
    [v25 markMessageGUIDUnread:v8];

    v26 = +[IMDAccountController sharedAccountController];
    v27 = [v26 anySessionForServiceName:IMServiceNameiMessage];

    if (v27)
    {
      [v27 reflectMarkUnreadToPeerDevicesForMessageGUID:v8];
    }

    else if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v39 = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "We could not find a service session for imessage to send that the message has been marked unread %@", buf, 0xCu);
      }
    }
  }

  [v12 stopTimingForKey:@"total-time-to-mark-unread"];
  if (IMOSLoggingEnabled())
  {
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v39 = v12;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "total time to mark unread %@", buf, 0xCu);
    }
  }
}

- (void)markMessageAsReadWithGUID:(id)a3 callerOrigin:(int64_t)a4 reply:(id)a5
{
  v31 = a3;
  v29 = a5;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = +[IMDClientRequestContext currentContext];
      v8 = [v7 listenerID];
      v9 = @"NO";
      *buf = 138412802;
      v42 = v8;
      v43 = 2112;
      if (a4 == 1)
      {
        v9 = @"YES";
      }

      v44 = v31;
      v45 = 2112;
      v46 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Request from %@ to mark message as read with GUID: %@ isFromSiri %@", buf, 0x20u);
    }
  }

  if (![v31 length])
  {
    v29[2](v29, 0);
    goto LABEL_25;
  }

  v10 = +[IMDMessageStore sharedInstance];
  v11 = [v10 chatsForMessageGUID:v31];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v11;
  v12 = 0;
  v13 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
  if (!v13)
  {
    goto LABEL_23;
  }

  v14 = *v34;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v34 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v33 + 1) + 8 * i);
      v17 = [v16 serviceName];
      if ([v17 length])
      {
        v18 = [v16 chatIdentifier];
        v19 = [v18 length] == 0;

        if (!v19)
        {
          v20 = [v16 chatIdentifier];
          v39 = v20;
          v21 = [NSArray arrayWithObjects:&v39 count:1];
          v22 = [v16 style];
          v23 = [v16 serviceName];
          v38 = v23;
          v24 = [NSArray arrayWithObjects:&v38 count:1];
          v37 = v31;
          v25 = [NSArray arrayWithObjects:&v37 count:1];
          sub_100003D50(v21, v22, v24, v25, 0, a4, 0);

          v12 = 1;
          continue;
        }
      }

      else
      {
      }

      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = [v16 chatIdentifier];
          v28 = [v16 serviceName];
          *buf = 138412802;
          v42 = v16;
          v43 = 2112;
          v44 = v27;
          v45 = 2112;
          v46 = v28;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Empty IDs or services for chat: %@ (IDs: %@  Services: %@)", buf, 0x20u);
        }
      }
    }

    v13 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
  }

  while (v13);
LABEL_23:

  v29[2](v29, v12 & 1);
LABEL_25:
}

- (void)markReadForMessageGUID:(id)a3 callerOrigin:(int64_t)a4 queryID:(id)a5
{
  v8 = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000155CC;
  v11[3] = &unk_100081A70;
  v12 = a5;
  v13 = v8;
  v9 = v8;
  v10 = v12;
  [(IMDaemonAnyRequestHandler *)self markMessageAsReadWithGUID:v9 callerOrigin:a4 reply:v11];
}

- (void)markPlayedForMessageGUID:(id)a3
{
  v23 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = +[IMDClientRequestContext currentContext];
      v6 = [v5 listenerID];
      *buf = 138412546;
      v29 = v6;
      v30 = 2112;
      v31 = v23;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Request from %@ to mark message as played with GUID: %@", buf, 0x16u);
    }
  }

  if ([v23 length])
  {
    v7 = +[IMDMessageStore sharedInstance];
    v8 = [v7 chatsForMessageGUID:v23];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v10)
    {
      v12 = *v25;
      *&v11 = 138412802;
      v22 = v11;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          v15 = [v14 chatIdentifier];
          v16 = IMSingleObjectArray();

          v17 = [v14 serviceName];
          v18 = IMSingleObjectArray();

          if ([v18 count] && objc_msgSend(v16, "count"))
          {
            v19 = +[IMDMessageStore sharedInstance];
            v20 = [v19 messageWithGUID:v23];

            -[IMDaemonAnyRequestHandler markPlayedForIDs:style:onServices:message:](self, "markPlayedForIDs:style:onServices:message:", v16, [v14 style], v18, v20);
          }

          else if (IMOSLoggingEnabled())
          {
            v21 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *buf = v22;
              v29 = v14;
              v30 = 2112;
              v31 = v16;
              v32 = 2112;
              v33 = v18;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Empty IDs or services for chat: %@ (IDs: %@  Services: %@)", buf, 0x20u);
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v24 objects:v34 count:16];
      }

      while (v10);
    }
  }
}

- (void)markPlayedForIDs:(id)a3 style:(unsigned __int8)a4 onServices:(id)a5 message:(id)a6
{
  v62 = a4;
  v65 = a3;
  v64 = a5;
  v8 = a6;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = +[IMDClientRequestContext currentContext];
      v11 = [v10 listenerID];
      *buf = 138412802;
      v74 = v11;
      v75 = 2112;
      v76 = v65;
      v77 = 2112;
      v78 = v64;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Request from %@ to mark message as played with IDs: %@  services: %@", buf, 0x20u);
    }
  }

  if ([v65 count] && objc_msgSend(v64, "count"))
  {
    v12 = [v65 count];
    if (v12 == [v64 count])
    {
      v13 = +[IMDMessageStore sharedInstance];
      v14 = [v8 guid];
      v15 = [v13 messageWithGUID:v14];

      if (v15)
      {
        [v15 setFlags:{objc_msgSend(v15, "flags") | 0x400000}];
        v16 = +[NSDate date];
        [v15 setTimePlayed:v16];

        v17 = +[IMDMessageStore sharedInstance];
        v67 = [v17 storeMessage:v15 forceReplace:0 modifyError:1 modifyFlags:1 flagMask:0x400000];
      }

      else
      {
        v67 = 0;
      }

      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v74 = v67;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Found message to mark as played: %@", buf, 0xCu);
        }
      }

      v63 = objc_alloc_init(NSMutableSet);
      if ([v65 count])
      {
        v20 = 0;
        do
        {
          v21 = [v65 objectAtIndex:v20];
          v22 = [v64 objectAtIndex:v20];
          v23 = IMCopyGUIDForChat();

          [v63 addObject:v23];
          ++v20;
        }

        while (v20 < [v65 count]);
      }

      if (v67)
      {
        v24 = +[IMDMessageStore sharedInstance];
        v66 = [v24 chatForMessage:v67];

        v25 = [v66 style] == 45;
        v26 = [v65 count];
        if (v25)
        {
          if (v26)
          {
            v27 = 0;
            do
            {
              v28 = [v65 objectAtIndex:v27];
              v29 = [v64 objectAtIndex:v27];
              v30 = +[IMDChatStore sharedInstance];
              v31 = [v30 chatsWithHandle:v28 onService:v29];

              v32 = [v31 arrayByApplyingSelector:"guid"];
              [v63 addObjectsFromArray:v32];

              ++v27;
            }

            while (v27 < [v65 count]);
          }
        }

        else if (v26)
        {
          v33 = 0;
          do
          {
            v34 = [v65 objectAtIndex:v33];
            v35 = [v64 objectAtIndex:v33];
            v36 = +[IMDChatStore sharedInstance];
            v37 = [v36 chatsWithRoomname:v34 onService:v35];

            v38 = [v37 arrayByApplyingSelector:"guid"];
            [v63 addObjectsFromArray:v38];

            ++v33;
          }

          while (v33 < [v65 count]);
        }

        v39 = [v67 guid];
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v40 = v63;
        v41 = [v40 countByEnumeratingWithState:&v68 objects:v72 count:16];
        if (v41)
        {
          v42 = *v69;
          do
          {
            for (i = 0; i != v41; i = i + 1)
            {
              if (*v69 != v42)
              {
                objc_enumerationMutation(v40);
              }

              v44 = *(*(&v68 + 1) + 8 * i);
              v45 = +[IMDChatRegistry sharedInstance];
              v46 = [v45 existingChatWithGUID:v44];

              v47 = [v46 lastMessage];
              v48 = [v47 guid];
              LODWORD(v45) = [v48 isEqualToString:v39];

              if (v45)
              {
                v49 = +[IMDChatRegistry sharedInstance];
                [v49 updateStateForChat:v66 hintMessage:v67 shouldRebuildFailedMessageDate:0];
              }
            }

            v41 = [v40 countByEnumeratingWithState:&v68 objects:v72 count:16];
          }

          while (v41);
        }

        v50 = [v67 accountID];
        v51 = +[IMDAccountController sharedInstance];
        v52 = [v51 sessionForAccount:v50];

        if (IMOSLoggingEnabled())
        {
          v53 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v74 = v67;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "Sending played receipt for: %@", buf, 0xCu);
          }
        }

        v54 = [v66 chatIdentifier];
        [v52 sendPlayedReceiptForMessage:v67 toChatID:0 identifier:v54 style:{objc_msgSend(v66, "style")}];

        v55 = +[IMDMessageStore sharedInstance];
        v56 = [v67 guid];
        v8 = [v55 messageWithGUID:v56];

        v57 = +[IMDBroadcastController sharedProvider];
        v58 = [v57 broadcasterForChatListeners];

        if (IMOSLoggingEnabled())
        {
          v59 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v74 = v8;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "Notifying about message: %@", buf, 0xCu);
          }
        }

        [v58 account:v50 chat:0 style:0 messageUpdated:v8];
      }

      else
      {
        v8 = 0;
      }

      if (IMMessageItemShouldAutomaticallySave())
      {
        if (IMOSLoggingEnabled())
        {
          v60 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v74 = v65;
            v75 = 2112;
            v76 = v64;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "Automatically marking played messages as saved with IDs: %@  services: %@", buf, 0x16u);
          }
        }

        v61 = objc_alloc_init(IMDaemonChatModifyReadStateRequestHandler);
        [(IMDaemonChatModifyReadStateRequestHandler *)v61 markSavedForIDs:v65 style:v62 onServices:v64 message:v8];
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v74 = v65;
        v75 = 2112;
        v76 = v64;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Mismatched IDs and serviceNames array to mark as played (IDs: %@   Service names: %@)", buf, 0x16u);
      }
    }
  }
}

- (void)playSendSoundForMessageGUID:(id)a3 callerOrigin:(int64_t)a4
{
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (a4 == 1)
      {
        v7 = @"YES";
      }

      v11 = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Request to play send sound for message with GUID: %@ isFromSiri %@", &v11, 0x16u);
    }
  }

  v8 = +[IMDMessageStore sharedInstance];
  v9 = [v8 messageWithGUID:v5];

  if (v9)
  {
    [IMDSoundUtilities playMessageSentSoundIfNeeded:v9];
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Could not find message item matching guid, not playing send sound. GUID: %@", &v11, 0xCu);
    }
  }
}

- (void)requestBuddyPicturesAndPropertiesForAccount:(id)a3
{
  v3 = a3;
  v4 = +[IMDAccountController sharedAccountController];
  v5 = [v4 accountForAccountID:v3];

  v6 = [v5 session];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412802;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "requestBuddyPicturesAndPropertiesForAccount: %@   session: %@  account: %@", &v13, 0x20u);
    }
  }

  v8 = +[IMDBroadcastController sharedProvider];
  v9 = [v6 service];
  v10 = [v8 broadcasterForListenersSupportingService:v9];

  v11 = [v6 buddyProperties];
  v12 = [v6 buddyPictures];
  [v10 account:v3 buddyProperties:v11 buddyPictures:v12];
}

- (void)forceReloadChatRegistryWithQueryID:(id)a3
{
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Forcing reload chats", v8, 2u);
    }
  }

  v5 = +[IMDChatRegistry sharedInstance];
  [v5 _forceReloadChats:1];

  if (v3)
  {
    v6 = +[IMDClientRequestContext currentContext];
    v7 = [v6 replyProxy];
    [v7 forcedReloadingChatRegistryWithQueryID:v3];
  }
}

- (void)requestOneTimeCodeStatus
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Request to get one time codes", v4, 2u);
    }
  }

  v3 = +[IMDOneTimeCodeManager sharedInstance];
  [v3 broadcastCodeStatusToClients];
}

- (void)consumeCodeWithMessageGUID:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Request to consume code with message guid: %@", &v8, 0xCu);
    }
  }

  [(IMDaemonAnyRequestHandler *)self markReadForMessageGUID:v4 callerOrigin:0 queryID:0];
  v6 = +[IMDOneTimeCodeManager sharedInstance];
  [v6 consumeCodeWithGuid:v4];

  v7 = +[IMMetricsCollector sharedInstance];
  [v7 trackEvent:IMMetricsCollecterEventConsumedOTC];
}

- (void)onboardDeleteVerificationCodesIfNeededWithReply:(id)a3
{
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Processing request to onboarding delete verification codes if needed", v6, 2u);
    }
  }

  v5 = +[IMDOneTimeCodeManager sharedInstance];
  [v5 onboardDeleteVerificationCodesIfNeededWithCompletionHandler:v3];
}

- (void)onboardDeleteVerificationCodesIfNeededWithMessage:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMDOneTimeCodeManager sharedInstance];
  [v7 onboardDeleteVerificationCodesIfNeededWithMessage:v6 completionHandler:v5];
}

- (void)fetchAutoDeletionPreferenceWithReply:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v3 = +[IMDOneTimeCodeManager sharedInstance];
    v4 = [v3 autoDeletionPreference];

    v5[2](v5, v4);
  }
}

- (void)simulateOneTimeCodeArriving:(id)a3
{
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Recevied request to simulate a One Time Code. Passing on to listeners.", v6, 2u);
    }
  }

  v5 = +[IMDOneTimeCodeManager sharedInstance];
  [v5 startTrackingCode:v3];
}

- (void)preWarm
{
  v2 = +[IMDAccountController sharedInstance];
  v3 = [v2 anySessionForServiceName:IMServiceNameiMessage];

  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v3 preWarm];
  }

  _objc_release_x2();
}

- (BOOL)_shouldContinueDownloadingPurgedAttachments:(unint64_t)a3
{
  v4 = [IDSServerBag sharedInstanceForBagType:1];
  v5 = [v4 objectForKey:@"ck-client-download-purged-attachments-max-retry-count"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 intValue] >= 1)
  {
    v6 = [v5 intValue];
  }

  else
  {
    v6 = 5;
  }

  if (v6 <= a3 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [NSNumber numberWithUnsignedInteger:v6];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Cannot continue downloading purged attachments becaused reach max retry count of %@", &v10, 0xCu);
    }
  }

  return v6 > a3;
}

- (unint64_t)_broadcastedUncachedAttachmentCountForChatWithGUID:(id)a3 chatIdentifiers:(id)a4 services:(id)a5 broadcaster:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[IMDCKUtilities sharedInstance];
  v14 = [v13 cloudKitSyncingEnabled];

  if (v14)
  {
    v15 = +[IMDCKAttachmentSyncController sharedInstance];
    v16 = [v15 purgedAttachmentsCountForChatsWithChatIdentifiers:v10 services:v11];
    v17 = [NSNumber numberWithUnsignedInteger:v16];
    [v12 chat:v9 uncachedAttachmentCountUpdated:v17];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v20 = 138412546;
        v21 = v10;
        v22 = 2112;
        v23 = v11;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "CloudKit syncing disabled, not broadcasting uncached attachment count for %@ on %@", &v20, 0x16u);
      }
    }

    v16 = 0;
  }

  return v16;
}

- (void)initiateQuickSwitch
{
  v2 = +[IMDQuickSwitchController sharedInstance];
  [v2 dummyMethod];
}

- (void)requestQOSClassWhileServicingRequestsWithID:(id)a3
{
  v3 = a3;
  v4 = qos_class_self();
  v6 = +[IMDBroadcastController sharedProvider];
  v5 = [v6 broadcasterForChatListeners];
  [v5 qosClassWhileServicingRequestsResponse:v4 identifier:v3];
}

- (void)fetchGroupPhotoPathsForChatsWithGroupIDs:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Fetching group photo paths for chats with group IDs from the database.", buf, 2u);
    }
  }

  v8 = +[IMDDatabase synchronousDatabase];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100017E00;
  v10[3] = &unk_1000819A8;
  v11 = v6;
  v9 = v6;
  [v8 fetchGroupPhotoPathsForChatsWithGroupIDs:v5 completionHandler:v10];
}

- (void)fetchNicknamesWithReply:(id)a3
{
  v3 = a3;
  v4 = +[IMDNicknameController sharedInstance];
  v9 = [v4 pendingNicknameUpdates];

  v5 = +[IMDNicknameController sharedInstance];
  v6 = [v5 handledNicknames];

  v7 = +[IMDNicknameController sharedInstance];
  v8 = [v7 archivedNicknames];

  v3[2](v3, v9, v6, v8);
}

- (void)fetchHandleSharingStateWithReply:(id)a3
{
  v3 = a3;
  v4 = +[IMDNicknameController sharedInstance];
  v7 = [v4 allowListedHandlesForSharing];

  v5 = +[IMDNicknameController sharedInstance];
  v6 = [v5 denyListedHandlesForSharing];

  v3[2](v3, v7, v6);
}

- (void)fetchTransitionedNicknameHandlesWithReply:(id)a3
{
  v3 = a3;
  v4 = +[IMDNicknameController sharedInstance];
  v5 = [v4 transitionedHandles];

  v3[2](v3, v5);
}

- (void)fetchActiveNicknamesWithReply:(id)a3
{
  v3 = a3;
  v4 = +[IMDNicknameController sharedInstance];
  v5 = [v4 activeRecords];

  v3[2](v3, v5);
}

- (void)fetchIgnoredNicknameHandlesWithReply:(id)a3
{
  v3 = a3;
  v4 = +[IMDNicknameController sharedInstance];
  v5 = [v4 ignoredRecords];

  v3[2](v3, v5);
}

- (void)fetchUnknownSenderRecordsWithReply:(id)a3
{
  v3 = a3;
  v4 = +[IMDNicknameController sharedInstance];
  v5 = [v4 unknownSenderRecordInfo];

  v3[2](v3, v5);
}

- (void)clearPendingNicknameUpdatesForHandleIDs:(id)a3
{
  v3 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = +[IMDNicknameController sharedInstance];
        [v9 clearPendingNicknameForHandleID:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)ignorePendingNicknameUpdatesForHandleIDs:(id)a3
{
  v3 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = +[IMDNicknameController sharedInstance];
        [v9 ignorePendingNicknameForHandleID:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)acceptPendingNicknameForHandleID:(id)a3 updateType:(unint64_t)a4
{
  v5 = a3;
  v6 = +[IMDNicknameController sharedInstance];
  [v6 acceptPendingNicknameForHandleID:v5 updateType:a4];
}

- (void)clearPendingNicknamePhotoUpdateForHandleIDs:(id)a3
{
  v3 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = +[IMDNicknameController sharedInstance];
        [v9 clearPendingNicknamePhotoForHandleID:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)denyHandleIDsForNicknameSharing:(id)a3
{
  v3 = a3;
  v4 = +[IMDNicknameController sharedInstance];
  [v4 denyHandlesForSharing:v3];
}

- (void)markProfileRecordsAsIgnored:(id)a3
{
  v3 = a3;
  v4 = +[IMDNicknameController sharedInstance];
  [v4 markProfileRecordsAsIgnored:v3 broadcastUpdates:1];
}

- (void)nicknamePreferencesDidChange
{
  v2 = +[IMDNicknameController sharedInstance];
  [v2 sendNicknamePreferencesDidChange];
}

- (void)setNewPersonalNickname:(id)a3
{
  v3 = a3;
  v4 = +[IMDNicknameController sharedInstance];
  [v4 setPersonalNickname:v3 completionBlock:&stru_100081B00];
}

- (void)sendNameOnlyToHandleIDs:(id)a3 fromHandleID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMDNicknameController sharedInstance];
  [v7 sendNameOnlyToHandleIDs:v6 fromHandleID:v5];
}

- (void)fetchPersonalNicknameWithReply:(id)a3
{
  v3 = a3;
  v4 = +[IMDNicknameController sharedInstance];
  v5 = [v4 personalNickname];

  v3[2](v3, v5);
}

- (void)markAllNicknamesAsPending
{
  v2 = +[IMDNicknameController sharedInstance];
  [v2 markAllNicknamesAsPending];
}

- (void)eagerUploadTransfer:(id)a3 recipients:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMDAccountController sharedAccountController];
  v8 = [v7 anySessionForServiceName:IMServiceNameiMessage];

  [v8 eagerUploadTransfer:v6 recipients:v5];
}

- (void)eagerUploadCancel:(id)a3
{
  v3 = a3;
  v4 = +[IMDAccountController sharedAccountController];
  v5 = [v4 anySessionForServiceName:IMServiceNameiMessage];

  [v5 eagerUploadCancel:v3];
}

- (void)downloadStickerWithGUID:(id)a3
{
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = +[IMDStickerRegistry sharedInstance];
      v6 = 138412546;
      v7 = v3;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Got a request to download sticker with GUID %@ stickerStore %@", &v6, 0x16u);
    }
  }
}

- (void)downloadStickerPackWithGUID:(id)a3 isIncomingMessage:(BOOL)a4 ignoreCache:(BOOL)a5
{
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = +[IMDStickerRegistry sharedInstance];
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Got a request to download sticker pack with GUID %@ stickerStore %@", &v8, 0x16u);
    }
  }
}

- (void)sendEmergencyQuestionnaire:(id)a3
{
  v3 = a3;
  v4 = +[IMFeatureFlags sharedFeatureFlags];
  v5 = [v4 stewieEnabled];

  if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Request to send Stewie emergency chat", v8, 2u);
      }
    }

    v7 = +[IMDChorosController sharedController];
    [v7 sendEmergencyQuestionnaire:v3];
  }
}

- (void)processReceivedEmergencyMessageFromIMTool:(int64_t)a3 message:(id)a4
{
  v8 = a4;
  v5 = +[IMFeatureFlags sharedFeatureFlags];
  v6 = [v5 stewieEnabled];

  if (v6)
  {
    v7 = +[IMDChorosController sharedController];
    [v7 processReceivedEmergencyMessageFromIMTool:a3 message:v8];
  }
}

- (void)locationUpdateSent
{
  v2 = +[IMFeatureFlags sharedFeatureFlags];
  v3 = [v2 stewieEnabled];

  if (v3)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Request to show a location update was sent", v6, 2u);
      }
    }

    v5 = +[IMDChorosController sharedController];
    [v5 locationUpdateSent];
  }
}

- (void)sendQuestionnaire:(id)a3
{
  v3 = a3;
  v4 = +[IMFeatureFlags sharedFeatureFlags];
  v5 = [v4 stewieEnabled];

  if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Request to send Stewie questionnaire", v8, 2u);
      }
    }

    v7 = +[IMDChorosController sharedController];
    [v7 sendQuestionnaire:v3];
  }
}

- (void)locationUpdateDelivered:(id)a3
{
  v3 = a3;
  v4 = +[IMFeatureFlags sharedFeatureFlags];
  v5 = [v4 stewieEnabled];

  if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Request to show a location update was sent", v8, 2u);
      }
    }

    v7 = +[IMDChorosController sharedController];
    [v7 locationUpdateDelivered:v3];
  }
}

- (void)openStewieChatWithContext:(id)a3
{
  v3 = a3;
  v4 = +[IMFeatureFlags sharedFeatureFlags];
  v5 = [v4 stewieEnabled];

  if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Request to open Stewie chat", v8, 2u);
      }
    }

    v7 = +[IMDChorosController sharedController];
    [v7 openStewieChatWithContext:v3];
  }
}

- (void)holdBuddyUpdatesAccount:(id)a3
{
  v3 = a3;
  v4 = +[IMDAccountController sharedAccountController];
  v5 = [v4 sessionForAccount:v3];

  if (v5)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v13, 0xCu);
    }
  }

  v7 = +[IMDAccountController sharedAccountController];
  v8 = +[IMDAccountController sharedAccountController];
  v9 = [v8 accountForAccountID:v3];
  v10 = [v9 service];
  v11 = [v10 internalName];
  v5 = [v7 anySessionForServiceName:v11];

  if (v5)
  {
LABEL_7:
    [v5 holdBuddyUpdates];
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v13, 0xCu);
    }
  }
}

- (void)resumeBuddyUpdatesAccount:(id)a3
{
  v3 = a3;
  v4 = +[IMDAccountController sharedAccountController];
  v5 = [v4 sessionForAccount:v3];

  if (v5)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v13, 0xCu);
    }
  }

  v7 = +[IMDAccountController sharedAccountController];
  v8 = +[IMDAccountController sharedAccountController];
  v9 = [v8 accountForAccountID:v3];
  v10 = [v9 service];
  v11 = [v10 internalName];
  v5 = [v7 anySessionForServiceName:v11];

  if (v5)
  {
LABEL_7:
    [v5 resumeBuddyUpdates];
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v13, 0xCu);
    }
  }
}

- (void)startWatchingBuddy:(id)a3 account:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[IMDAccountController sharedAccountController];
  v8 = [v7 sessionForAccount:v6];

  if (v8)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v16, 0xCu);
    }
  }

  v10 = +[IMDAccountController sharedAccountController];
  v11 = +[IMDAccountController sharedAccountController];
  v12 = [v11 accountForAccountID:v6];
  v13 = [v12 service];
  v14 = [v13 internalName];
  v8 = [v10 anySessionForServiceName:v14];

  if (v8)
  {
LABEL_7:
    [v8 startWatchingBuddy:v5];
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v16, 0xCu);
    }
  }
}

- (void)stopWatchingBuddy:(id)a3 account:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[IMDAccountController sharedAccountController];
  v8 = [v7 sessionForAccount:v6];

  if (v8)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v16, 0xCu);
    }
  }

  v10 = +[IMDAccountController sharedAccountController];
  v11 = +[IMDAccountController sharedAccountController];
  v12 = [v11 accountForAccountID:v6];
  v13 = [v12 service];
  v14 = [v13 internalName];
  v8 = [v10 anySessionForServiceName:v14];

  if (v8)
  {
LABEL_7:
    [v8 stopWatchingBuddy:v5];
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v16, 0xCu);
    }
  }
}

- (void)requestProperty:(id)a3 ofPerson:(id)a4 account:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[IMDAccountController sharedAccountController];
  v11 = [v10 sessionForAccount:v9];

  if (v11)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v19, 0xCu);
    }
  }

  v13 = +[IMDAccountController sharedAccountController];
  v14 = +[IMDAccountController sharedAccountController];
  v15 = [v14 accountForAccountID:v9];
  v16 = [v15 service];
  v17 = [v16 internalName];
  v11 = [v13 anySessionForServiceName:v17];

  if (v11)
  {
LABEL_7:
    [v11 requestProperty:v7 ofPerson:v8];
  }

  else if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v19, 0xCu);
    }
  }
}

- (void)setValue:(id)a3 ofProperty:(id)a4 ofPerson:(id)a5 account:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[IMDAccountController sharedAccountController];
  v14 = [v13 sessionForAccount:v12];

  if (v14)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v22, 0xCu);
    }
  }

  v16 = +[IMDAccountController sharedAccountController];
  v17 = +[IMDAccountController sharedAccountController];
  v18 = [v17 accountForAccountID:v12];
  v19 = [v18 service];
  v20 = [v19 internalName];
  v14 = [v16 anySessionForServiceName:v20];

  if (v14)
  {
LABEL_7:
    [v14 setValue:v9 ofProperty:v10 ofPerson:v11];
  }

  else if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v22, 0xCu);
    }
  }
}

- (void)requestGroupsAccount:(id)a3
{
  v3 = a3;
  v4 = +[IMDAccountController sharedAccountController];
  v5 = [v4 sessionForAccount:v3];

  if (v5)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v13, 0xCu);
    }
  }

  v7 = +[IMDAccountController sharedAccountController];
  v8 = +[IMDAccountController sharedAccountController];
  v9 = [v8 accountForAccountID:v3];
  v10 = [v9 service];
  v11 = [v10 internalName];
  v5 = [v7 anySessionForServiceName:v11];

  if (v5)
  {
LABEL_7:
    [v5 requestGroups];
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v13, 0xCu);
    }
  }
}

- (void)sendNotificationMessageToUniqueID:(id)a3 withCommand:(int64_t)a4
{
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [NSNumber numberWithInteger:a4];
      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Calling sendNotificationMessageToUniqueID with uniqueId %@ and command %@", &v9, 0x16u);
    }
  }

  v8 = +[IMMessageNotificationController sharedInstance];
  [v8 sendNotificationMessageToUniqueID:v5 withCommmand:a4];
}

- (void)requestPendingVCInvites
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = 136315138;
      v4 = "[IMDaemonAnyRequestHandler requestPendingVCInvites]";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Ignoring request for %s", &v3, 0xCu);
    }
  }
}

- (void)requestPendingACInvites
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = 136315138;
      v4 = "[IMDaemonAnyRequestHandler requestPendingACInvites]";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Ignoring request for %s", &v3, 0xCu);
    }
  }
}

- (void)conference:(id)a3 account:(id)a4 notifyInvitationCancelledFromPerson:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "[IMDaemonAnyRequestHandler conference:account:notifyInvitationCancelledFromPerson:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Ignoring request for %s", &v11, 0xCu);
    }
  }
}

- (void)terminateForcingIfNeeded:(BOOL)a3
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "[IMDaemonAnyRequestHandler terminateForcingIfNeeded:]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Ignoring request for %s", &v4, 0xCu);
    }
  }
}

- (void)sendNotice:(id)a3 toHandles:(id)a4 fromHandle:(id)a5 reply:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = 138412802;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Client request to send notice %@ toHandles %@ fromHandle: %@", &v16, 0x20u);
    }
  }

  v14 = +[IMDCollaborationNoticeController sharedController];
  v15 = [v14 noticeDispatcher];
  [v15 sendNotice:v9 toHandles:v10 fromHandle:v11];

  v12[2](v12, 1);
}

- (void)sendClearNotice:(id)a3 toHandles:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Client request to send clear notice %@ toHandles %@", &v13, 0x16u);
    }
  }

  v11 = +[IMDCollaborationNoticeController sharedController];
  v12 = [v11 noticeDispatcher];
  [v12 sendClearNotice:v7 toHandles:v8];

  v9[2](v9, 1);
}

@end
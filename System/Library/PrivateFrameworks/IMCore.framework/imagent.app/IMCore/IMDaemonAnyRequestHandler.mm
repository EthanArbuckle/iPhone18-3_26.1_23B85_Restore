@interface IMDaemonAnyRequestHandler
- (BOOL)_shouldContinueDownloadingPurgedAttachments:(unint64_t)attachments;
- (IMDaemonAnyRequestHandler)init;
- (id)_pinnedChatIdentifiersFromContext:(id)context;
- (id)_setupInfoForCapabilities:(unint64_t)capabilities context:(id)context;
- (id)valueOfPersistentProperty:(id)property;
- (id)valueOfProperty:(id)property;
- (int64_t)_numberOfChatsToLoadDuringInitialSetupFromContext:(id)context;
- (int64_t)_precacheChatCountWithCapabilities:(unint64_t)capabilities;
- (unint64_t)_broadcastedUncachedAttachmentCountForChatWithGUID:(id)d chatIdentifiers:(id)identifiers services:(id)services broadcaster:(id)broadcaster;
- (void)_addAccountsToSetupInfo:(id)info capabilities:(unint64_t)capabilities context:(id)context;
- (void)_addApprovedCapabilitiesToSetupInfo:(id)info capabilities:(unint64_t)capabilities context:(id)context;
- (void)_addChatBotToSetupInfo:(id)info;
- (void)_addChatCountsToSetupInfo:(id)info capabilities:(unint64_t)capabilities context:(id)context;
- (void)_addChatsToSetupInfo:(id)info capabilities:(unint64_t)capabilities context:(id)context;
- (void)_addFeatureStatusToSetupInfo:(id)info capabilities:(unint64_t)capabilities context:(id)context;
- (void)_addGroupPhotoTransfersToSetupInfo:(id)info capabilities:(unint64_t)capabilities context:(id)context;
- (void)_addKeyTransparencyToSetupInfo:(id)info capabilities:(unint64_t)capabilities context:(id)context;
- (void)_addTransfersToSetupInfo:(id)info capabilities:(unint64_t)capabilities context:(id)context;
- (void)_cacheChatsWithPinningIdentifiers:(id)identifiers;
- (void)acceptPendingNicknameForHandleID:(id)d updateType:(unint64_t)type;
- (void)clearPendingNicknamePhotoUpdateForHandleIDs:(id)ds;
- (void)clearPendingNicknameUpdatesForHandleIDs:(id)ds;
- (void)conference:(id)conference account:(id)account notifyInvitationCancelledFromPerson:(id)person;
- (void)consumeCodeWithMessageGUID:(id)d;
- (void)denyHandleIDsForNicknameSharing:(id)sharing;
- (void)downloadStickerPackWithGUID:(id)d isIncomingMessage:(BOOL)message ignoreCache:(BOOL)cache;
- (void)downloadStickerWithGUID:(id)d;
- (void)eagerUploadCancel:(id)cancel;
- (void)eagerUploadTransfer:(id)transfer recipients:(id)recipients;
- (void)fetchActiveNicknamesWithReply:(id)reply;
- (void)fetchAutoDeletionPreferenceWithReply:(id)reply;
- (void)fetchGroupPhotoPathsForChatsWithGroupIDs:(id)ds completionHandler:(id)handler;
- (void)fetchHandleSharingStateWithReply:(id)reply;
- (void)fetchIgnoredNicknameHandlesWithReply:(id)reply;
- (void)fetchNicknamesWithReply:(id)reply;
- (void)fetchPersonalNicknameWithReply:(id)reply;
- (void)fetchTransitionedNicknameHandlesWithReply:(id)reply;
- (void)fetchUnknownSenderRecordsWithReply:(id)reply;
- (void)forceReloadChatRegistryWithQueryID:(id)d;
- (void)holdBuddyUpdatesAccount:(id)account;
- (void)ignorePendingNicknameUpdatesForHandleIDs:(id)ds;
- (void)initiateQuickSwitch;
- (void)locationUpdateDelivered:(id)delivered;
- (void)locationUpdateSent;
- (void)markAllNicknamesAsPending;
- (void)markMessageAsReadWithGUID:(id)d callerOrigin:(int64_t)origin reply:(id)reply;
- (void)markPlayedForIDs:(id)ds style:(unsigned __int8)style onServices:(id)services message:(id)message;
- (void)markPlayedForMessageGUID:(id)d;
- (void)markProfileRecordsAsIgnored:(id)ignored;
- (void)markReadForMessageGUID:(id)d callerOrigin:(int64_t)origin queryID:(id)iD;
- (void)markUnreadForMessageGUID:(id)d IDs:(id)ds style:(unsigned __int8)style services:(id)services;
- (void)nicknamePreferencesDidChange;
- (void)onboardDeleteVerificationCodesIfNeededWithMessage:(id)message reply:(id)reply;
- (void)onboardDeleteVerificationCodesIfNeededWithReply:(id)reply;
- (void)openStewieChatWithContext:(id)context;
- (void)playSendSoundForMessageGUID:(id)d callerOrigin:(int64_t)origin;
- (void)preWarm;
- (void)processReceivedEmergencyMessageFromIMTool:(int64_t)tool message:(id)message;
- (void)requestBuddyPicturesAndPropertiesForAccount:(id)account;
- (void)requestGroupsAccount:(id)account;
- (void)requestNetworkDataAvailability;
- (void)requestOneTimeCodeStatus;
- (void)requestPendingACInvites;
- (void)requestPendingVCInvites;
- (void)requestProperty:(id)property ofPerson:(id)person account:(id)account;
- (void)requestQOSClassWhileServicingRequestsWithID:(id)d;
- (void)requestSetupWithClientID:(id)d capabilities:(unint64_t)capabilities context:(id)context reply:(id)reply;
- (void)requestSetupXPCObjectWithClientID:(id)d capabilities:(unint64_t)capabilities context:(id)context reply:(id)reply;
- (void)resumeBuddyUpdatesAccount:(id)account;
- (void)sendClearNotice:(id)notice toHandles:(id)handles reply:(id)reply;
- (void)sendEmergencyQuestionnaire:(id)questionnaire;
- (void)sendNameOnlyToHandleIDs:(id)ds fromHandleID:(id)d;
- (void)sendNotice:(id)notice toHandles:(id)handles fromHandle:(id)handle reply:(id)reply;
- (void)sendNotificationMessageToUniqueID:(id)d withCommand:(int64_t)command;
- (void)sendQuestionnaire:(id)questionnaire;
- (void)setNewPersonalNickname:(id)nickname;
- (void)setValue:(id)value ofPersistentProperty:(id)property;
- (void)setValue:(id)value ofProperty:(id)property;
- (void)setValue:(id)value ofProperty:(id)property ofPerson:(id)person account:(id)account;
- (void)simulateOneTimeCodeArriving:(id)arriving;
- (void)startWatchingBuddy:(id)buddy account:(id)account;
- (void)stopWatchingBuddy:(id)buddy account:(id)account;
- (void)terminateForcingIfNeeded:(BOOL)needed;
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

- (void)requestSetupXPCObjectWithClientID:(id)d capabilities:(unint64_t)capabilities context:(id)context reply:(id)reply
{
  v9 = _Block_copy(reply);
  sub_100054134();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  dCopy = d;
  selfCopy = self;
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

  [(IMDaemonAnyRequestHandler *)selfCopy requestSetupWithClientID:dCopy capabilities:capabilities context:isa reply:v15];

  _Block_release(v15);
}

- (void)requestSetupWithClientID:(id)d capabilities:(unint64_t)capabilities context:(id)context reply:(id)reply
{
  v8 = _Block_copy(reply);
  v9 = sub_100054164();
  v11 = v10;
  v12 = sub_100054134();
  _Block_copy(v8);
  selfCopy = self;
  sub_100002A7C(v9, v11, capabilities, v12, selfCopy, v8);
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
  broadcasterForAllListeners = [v3 broadcasterForAllListeners];
  v5 = +[IMDAccountController sharedAccountController];
  [broadcasterForAllListeners networkDataAvailabilityChanged:{objc_msgSend(v5, "networkDataAvailable")}];
}

- (id)_setupInfoForCapabilities:(unint64_t)capabilities context:(id)context
{
  contextCopy = context;
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = objc_autoreleasePoolPush();
  [(IMDaemonAnyRequestHandler *)self _addAccountsToSetupInfo:v7 capabilities:capabilities context:contextCopy];
  [(IMDaemonAnyRequestHandler *)self _addGroupPhotoTransfersToSetupInfo:v7 capabilities:capabilities context:contextCopy];
  [(IMDaemonAnyRequestHandler *)self _addTransfersToSetupInfo:v7 capabilities:capabilities context:contextCopy];
  [(IMDaemonAnyRequestHandler *)self _addChatCountsToSetupInfo:v7 capabilities:capabilities context:contextCopy];
  [(IMDaemonAnyRequestHandler *)self _addChatsToSetupInfo:v7 capabilities:capabilities context:contextCopy];
  [(IMDaemonAnyRequestHandler *)self _addKeyTransparencyToSetupInfo:v7 capabilities:capabilities context:contextCopy];
  [(IMDaemonAnyRequestHandler *)self _addApprovedCapabilitiesToSetupInfo:v7 capabilities:capabilities context:contextCopy];
  [(IMDaemonAnyRequestHandler *)self _addFeatureStatusToSetupInfo:v7 capabilities:capabilities context:contextCopy];
  [(IMDaemonAnyRequestHandler *)self _addChatBotToSetupInfo:v7];
  objc_autoreleasePoolPop(v8);

  return v7;
}

- (void)_addChatBotToSetupInfo:(id)info
{
  theDict = info;
  v3 = +[IMCTSubscriptionUtilities sharedInstance];
  allowedChatBotExtensions = [v3 allowedChatBotExtensions];

  if (allowedChatBotExtensions && [allowedChatBotExtensions count])
  {
    v5 = +[IMCTSubscriptionUtilities sharedInstance];
    allowedChatBotExtensions2 = [v5 allowedChatBotExtensions];

    if (allowedChatBotExtensions2)
    {
      CFDictionarySetValue(theDict, IMSetupAllowedChatBotExtensions, allowedChatBotExtensions2);
    }
  }
}

- (void)_addApprovedCapabilitiesToSetupInfo:(id)info capabilities:(unint64_t)capabilities context:(id)context
{
  infoCopy = info;
  v7 = +[IMDeviceUtilities isMessagesInstalled];
  v8 = [NSNumber numberWithUnsignedLongLong:capabilities];
  if (v8)
  {
    CFDictionarySetValue(infoCopy, IMSetupInfoApprovedClientCapabilitiesKey, v8);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100053A4C();
  }

  v9 = [NSNumber numberWithBool:v7];
  if (v9)
  {
    CFDictionarySetValue(infoCopy, IMSetupInfoIsMessagesInstalledKey, v9);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100053AE0();
  }
}

- (void)_addAccountsToSetupInfo:(id)info capabilities:(unint64_t)capabilities context:(id)context
{
  infoCopy = info;
  contextCopy = context;
  v10 = +[IMDServiceController sharedController];
  allServices = [v10 allServices];

  v12 = objc_alloc_init(NSMutableArray);
  if ([(IMDaemonAnyRequestHandler *)self _clientCapabilitiesSupportAccounts:capabilities])
  {
    v13 = [allServices arrayByApplyingSelector:"internalName"];
    if (v13)
    {
      CFDictionarySetValue(infoCopy, IMSetupInfoServiceNamesKey, v13);
    }

    v67 = v12;

    v14 = +[IMDDaemonPropertyManager sharedManager];
    properties = [v14 properties];
    v16 = [properties count];

    if (v16)
    {
      v17 = IMSetupInfoPropertiesKey;
      v18 = +[IMDDaemonPropertyManager sharedManager];
      properties2 = [v18 properties];
      CFDictionarySetValue(infoCopy, v17, properties2);
    }

    v63 = contextCopy;
    v20 = +[IMDDaemonPropertyManager sharedManager];
    persistentProperties = [v20 persistentProperties];
    v22 = [persistentProperties count];

    if (v22)
    {
      v23 = IMSetupInfoPersistentPropertiesKey;
      v24 = +[IMDDaemonPropertyManager sharedManager];
      persistentProperties2 = [v24 persistentProperties];
      CFDictionarySetValue(infoCopy, v23, persistentProperties2);
    }

    v64 = infoCopy;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v62 = allServices;
    obj = allServices;
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
          sharedAccountController = [v26[15] sharedAccountController];
          v30 = [sharedAccountController accountsForService:v28];

          v31 = [v30 arrayByApplyingSelector:"accountID"];
          v32 = objc_alloc_init(NSMutableDictionary);
          internalName = [v28 internalName];
          if (internalName)
          {
            CFDictionarySetValue(v32, IMServiceInfoInternalNameKey, internalName);
          }

          serviceProperties = [v28 serviceProperties];
          v35 = [serviceProperties count];

          if (v35)
          {
            v36 = IMServiceInfoPropertiesKey;
            serviceProperties2 = [v28 serviceProperties];
            CFDictionarySetValue(v32, v36, serviceProperties2);
          }

          serviceDefaultsForSetup = [v28 serviceDefaultsForSetup];
          v39 = [serviceDefaultsForSetup count];

          if (v39)
          {
            v40 = IMServiceInfoDefaultsKey;
            serviceDefaultsForSetup2 = [v28 serviceDefaultsForSetup];
            CFDictionarySetValue(v32, v40, serviceDefaultsForSetup2);
          }

          defaultAccountSettings = [v28 defaultAccountSettings];
          v43 = [defaultAccountSettings count];

          if (v43)
          {
            v44 = IMServiceInfoDefaultAccountSettingsKey;
            defaultAccountSettings2 = [v28 defaultAccountSettings];
            CFDictionarySetValue(v32, v44, defaultAccountSettings2);
          }

          if ([v31 count])
          {
            CFDictionarySetValue(v32, IMServiceInfoAccountsKey, v31);
          }

          v69 = v31;
          sharedAccountController2 = [v26[15] sharedAccountController];
          v47 = [sharedAccountController2 activeAccountsForService:v28];
          [v47 arrayByApplyingSelector:"accountID"];
          v49 = v48 = v26;
          v50 = [v49 count];

          if (v50)
          {
            v51 = IMServiceInfoActiveAccountsKey;
            sharedAccountController3 = [v48[15] sharedAccountController];
            v53 = [sharedAccountController3 activeAccountsForService:v28];
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

                accountInfoToPost = [*(*(&v71 + 1) + 8 * j) accountInfoToPost];
                if ([accountInfoToPost count])
                {
                  [v55 addObject:accountInfoToPost];
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
    contextCopy = v63;
    infoCopy = v64;
    allServices = v62;
    if ([v67 count])
    {
      CFDictionarySetValue(v64, IMSetupInfoServicesKey, v67);
    }
  }
}

- (void)_addGroupPhotoTransfersToSetupInfo:(id)info capabilities:(unint64_t)capabilities context:(id)context
{
  capabilitiesCopy = capabilities;
  infoCopy = info;
  if ((capabilitiesCopy & 0x1000000) != 0)
  {
    v7 = +[IMDFileTransferCenter sharedInstance];
    _allFileTransfers = [v7 _allFileTransfers];

    allValues = [_allFileTransfers allValues];
    if ([allValues count])
    {
      v22 = _allFileTransfers;
      theDict = infoCopy;
      v24 = +[NSMutableDictionary dictionary];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v21 = allValues;
      v10 = allValues;
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

      infoCopy = theDict;
      if ([v24 count] && v24)
      {
        CFDictionarySetValue(theDict, IMSetupInfoGroupPhotoFileTransfersKey, v24);
      }

      allValues = v21;
      _allFileTransfers = v22;
    }
  }
}

- (void)_addTransfersToSetupInfo:(id)info capabilities:(unint64_t)capabilities context:(id)context
{
  capabilitiesCopy = capabilities;
  infoCopy = info;
  if ((capabilitiesCopy & 0x1000100) == 0x100)
  {
    theDict = infoCopy;
    v7 = +[IMDFileTransferCenter sharedInstance];
    contextStamp = [v7 contextStamp];

    v9 = +[IMDFileTransferCenter sharedInstance];
    _allFileTransfers = [v9 _allFileTransfers];

    if (_allFileTransfers)
    {
      CFDictionarySetValue(theDict, IMSetupInfoFileTransfersKey, _allFileTransfers);
    }

    if (contextStamp)
    {
      CFDictionarySetValue(theDict, IMSetupInfoFileTransfersStampKey, contextStamp);
    }

    infoCopy = theDict;
  }
}

- (void)_addChatCountsToSetupInfo:(id)info capabilities:(unint64_t)capabilities context:(id)context
{
  capabilitiesCopy = capabilities;
  infoCopy = info;
  contextCopy = context;
  if ((capabilitiesCopy & 0x8004) != 0)
  {
    v9 = +[IMDMessageStore sharedInstance];
    v10 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v9 unreadMessagesCount]);

    if (v10)
    {
      CFDictionarySetValue(infoCopy, IMSetupInfoUnreadMessageCountKey, v10);
    }

    v11 = +[IMFeatureFlags sharedFeatureFlags];
    isUnreadCountRefactorEnabled = [v11 isUnreadCountRefactorEnabled];

    if (isUnreadCountRefactorEnabled)
    {
      v13 = +[IMDMessageStore sharedInstance];
      unreadCountReportDeltaForSetupInfo = [v13 unreadCountReportDeltaForSetupInfo];

      updatedReports = [unreadCountReportDeltaForSetupInfo updatedReports];
      v16 = [updatedReports arrayByApplyingSelector:"dictionary"];

      if (v16)
      {
        CFDictionarySetValue(infoCopy, IMSetupInfoUnreadReportsKey, v16);
      }

      fromStamp = [unreadCountReportDeltaForSetupInfo fromStamp];
      if (fromStamp)
      {
        CFDictionarySetValue(infoCopy, IMSetupInfoUnreadReportsLastStampKey, fromStamp);
      }

      toStamp = [unreadCountReportDeltaForSetupInfo toStamp];
      if (toStamp)
      {
        CFDictionarySetValue(infoCopy, IMSetupInfoUnreadReportsCurrentStampKey, toStamp);
      }
    }

    v19 = +[IMDMessageStore sharedInstance];
    v20 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v19 lastFailedMessageDate]);

    if (v20)
    {
      CFDictionarySetValue(infoCopy, IMSetupInfoLastFailedMessageDateKey, v20);
    }

    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [(__CFDictionary *)infoCopy valueForKey:@"unreadMessageCount"];
        v23 = [(__CFDictionary *)infoCopy valueForKey:@"lastFailedMessageDate"];
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

- (void)_addChatsToSetupInfo:(id)info capabilities:(unint64_t)capabilities context:(id)context
{
  infoCopy = info;
  contextCopy = context;
  if ((capabilities & 0x4000000) == 0 && (((capabilities & 0x2400000) != 0) & (capabilities >> 2)) == 0)
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

  v11 = [(IMDaemonAnyRequestHandler *)self _pinnedChatIdentifiersFromContext:contextCopy];
  [(IMDaemonAnyRequestHandler *)self _cacheChatsWithPinningIdentifiers:v11];
  v12 = +[IMDCKSyncController sharedInstance];
  [v12 resumeSyncOnLaunchIfNeeded];

  v13 = [(IMDaemonAnyRequestHandler *)self _numberOfChatsToLoadDuringInitialSetupFromContext:contextCopy];
  if (v13 <= 0)
  {
    if ((capabilities & 0x100000000) != 0)
    {
      v13 = IMDChatPrecacheCountClientRemote;
    }

    else
    {
      if ((capabilities & 0x2400000) == 0)
      {
        [v11 count];
        goto LABEL_13;
      }

      v13 = [(IMDaemonAnyRequestHandler *)self _precacheChatCountWithCapabilities:capabilities];
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

  if ((capabilities & 0x4000000) != 0)
  {
    v16 = +[IMDChatRegistry sharedInstance];
    v17 = [v16 _blackholedChatInfoForNumberOfChats:0x7FFFFFFFFFFFFFFFLL];

    if (v17)
    {
      CFDictionarySetValue(infoCopy, IMSetupInfoChatsKey, v17);
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
      chats = [v21 chats];

      v24 = +[IMDChatRegistry sharedInstance];
      v25 = [v24 personCentricGroupedChatsArrayWithMaximumNumberOfChats:v13 skipsLastMessageLoading:(capabilities >> 24) & 1 usingChats:chats useCachedChatGroups:1 includingPinnedChatIdentifiers:v11 repairInconsistentMergedChats:1];

      if (v25)
      {
        CFDictionarySetValue(infoCopy, IMSetupInfoPersonMergedChatsKey, v25);
      }

      v26 = +[IMDChatRegistry sharedInstance];
      aliasToCNIDMap = [v26 aliasToCNIDMap];

      if (aliasToCNIDMap)
      {
        CFDictionarySetValue(infoCopy, IMSetupInfoAliasToCNIDMapKey, aliasToCNIDMap);
      }

      v28 = +[IMDChatRegistry sharedInstance];
      v29 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v28 filterediMessageChatsExist]);

      if (v29)
      {
        CFDictionarySetValue(infoCopy, IMSetupInfoFilteredIMessageChatsExistKey, v29);
      }
    }

    else
    {
      chats = [v21 _chatInfoForNumberOfChats:v13];

      if (chats)
      {
        CFDictionarySetValue(infoCopy, IMSetupInfoChatsKey, chats);
      }
    }

    v30 = +[IMDChatRegistry sharedInstance];
    v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v30 blackholedChatsExist]);
  }

  if (v19)
  {
    CFDictionarySetValue(infoCopy, IMSetupInfoBlackholedChatsExistKey, v19);
  }

  v31 = +[IMDMessageStore sharedInstance];
  modificationStamp = [v31 modificationStamp];

  if (modificationStamp)
  {
    CFDictionarySetValue(infoCopy, IMSetupInfoDBModificationStampKey, modificationStamp);
  }

  v33 = +[IMHandleOffGridStateManager sharedInstance];
  cachedOverrideDatesByHandleID = [v33 cachedOverrideDatesByHandleID];

  if (cachedOverrideDatesByHandleID)
  {
    CFDictionarySetValue(infoCopy, IMSetupInfoOffGridStatusOverrideDatesKey, cachedOverrideDatesByHandleID);
  }

LABEL_41:
}

- (void)_addKeyTransparencyToSetupInfo:(id)info capabilities:(unint64_t)capabilities context:(id)context
{
  capabilitiesCopy = capabilities;
  infoCopy = info;
  contextCopy = context;
  if ((capabilitiesCopy & 0x204) != 0)
  {
    v9 = +[IMDKeyTransparencyController sharedController];
    setupInfo = [v9 setupInfo];
    [infoCopy setObject:setupInfo forKeyedSubscript:IMSetupInfoKeyTransparencyInfoKey];
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

- (void)_addFeatureStatusToSetupInfo:(id)info capabilities:(unint64_t)capabilities context:(id)context
{
  theDict = info;
  v5 = +[IMFeatureFlags sharedFeatureFlags];
  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 isOneChatEnabled] ^ 1);

  if (v6)
  {
    CFDictionarySetValue(theDict, IMSetupInfoForceLegacyChatVersion, v6);
  }
}

- (int64_t)_precacheChatCountWithCapabilities:(unint64_t)capabilities
{
  v3 = &IMDChatPrecacheCountClientVeryRecent;
  if ((capabilities & 0x2000000) == 0)
  {
    v3 = &IMDChatPrecacheCountClientRecent;
  }

  v4 = *v3;
  return IMGetCachedDomainIntForKeyWithDefaultValue();
}

- (void)_cacheChatsWithPinningIdentifiers:(id)identifiers
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  identifiersCopy = identifiers;
  v4 = [identifiersCopy countByEnumeratingWithState:&v14 objects:v22 count:16];
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
          objc_enumerationMutation(identifiersCopy);
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
      v4 = [identifiersCopy countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v4);
  }
}

- (int64_t)_numberOfChatsToLoadDuringInitialSetupFromContext:(id)context
{
  contextCopy = context;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100014800;
  v6[3] = &unk_100081A20;
  v6[4] = &v7;
  [contextCopy enumerateKeysAndObjectsUsingBlock:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)_pinnedChatIdentifiersFromContext:(id)context
{
  contextCopy = context;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001493C;
  v7[3] = &unk_100081A48;
  v8 = objc_alloc_init(NSMutableArray);
  v4 = v8;
  [contextCopy enumerateKeysAndObjectsUsingBlock:v7];

  v5 = [v4 copy];

  return v5;
}

- (void)setValue:(id)value ofProperty:(id)property
{
  propertyCopy = property;
  valueCopy = value;
  v7 = +[IMDDaemonPropertyManager sharedManager];
  [v7 setValue:valueCopy ofProperty:propertyCopy];
}

- (id)valueOfProperty:(id)property
{
  propertyCopy = property;
  v4 = +[IMDDaemonPropertyManager sharedManager];
  v5 = [v4 valueOfProperty:propertyCopy];

  return v5;
}

- (void)setValue:(id)value ofPersistentProperty:(id)property
{
  propertyCopy = property;
  valueCopy = value;
  v7 = +[IMDDaemonPropertyManager sharedManager];
  [v7 setValue:valueCopy ofPersistentProperty:propertyCopy];
}

- (id)valueOfPersistentProperty:(id)property
{
  propertyCopy = property;
  v4 = +[IMDDaemonPropertyManager sharedManager];
  v5 = [v4 valueOfPersistentProperty:propertyCopy];

  return v5;
}

- (void)markUnreadForMessageGUID:(id)d IDs:(id)ds style:(unsigned __int8)style services:(id)services
{
  dCopy = d;
  dsCopy = ds;
  servicesCopy = services;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [IMDClientRequestContext currentContext:servicesCopy];
      listenerID = [v10 listenerID];
      *buf = 138412546;
      v39 = listenerID;
      v40 = 2112;
      v41 = dCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Request from %@ to mark message as unread with GUID %@", buf, 0x16u);
    }
  }

  v12 = objc_alloc_init(IMTimingCollection);
  [v12 startTimingForKey:@"total-time-to-mark-unread"];
  if (![dCopy length])
  {
    [v12 startTimingForKey:@"search-for-guid"];
    v13 = objc_alloc_init(NSMutableSet);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v14 = dsCopy;
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
          if (([v13 containsObject:{v19, servicesCopy}] & 1) == 0)
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
      dCopy = v14 = dCopy;
    }

LABEL_26:
    [v12 stopTimingForKey:{@"search-for-guid", servicesCopy}];
  }

  if ([dCopy length])
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v39 = dCopy;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Marking message as unread %@", buf, 0xCu);
      }
    }

    v25 = +[IMDMessageStore sharedInstance];
    [v25 markMessageGUIDUnread:dCopy];

    v26 = +[IMDAccountController sharedAccountController];
    v27 = [v26 anySessionForServiceName:IMServiceNameiMessage];

    if (v27)
    {
      [v27 reflectMarkUnreadToPeerDevicesForMessageGUID:dCopy];
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

- (void)markMessageAsReadWithGUID:(id)d callerOrigin:(int64_t)origin reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = +[IMDClientRequestContext currentContext];
      listenerID = [v7 listenerID];
      v9 = @"NO";
      *buf = 138412802;
      v42 = listenerID;
      v43 = 2112;
      if (origin == 1)
      {
        v9 = @"YES";
      }

      v44 = dCopy;
      v45 = 2112;
      v46 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Request from %@ to mark message as read with GUID: %@ isFromSiri %@", buf, 0x20u);
    }
  }

  if (![dCopy length])
  {
    replyCopy[2](replyCopy, 0);
    goto LABEL_25;
  }

  v10 = +[IMDMessageStore sharedInstance];
  v11 = [v10 chatsForMessageGUID:dCopy];

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
      serviceName = [v16 serviceName];
      if ([serviceName length])
      {
        chatIdentifier = [v16 chatIdentifier];
        v19 = [chatIdentifier length] == 0;

        if (!v19)
        {
          chatIdentifier2 = [v16 chatIdentifier];
          v39 = chatIdentifier2;
          v21 = [NSArray arrayWithObjects:&v39 count:1];
          style = [v16 style];
          serviceName2 = [v16 serviceName];
          v38 = serviceName2;
          v24 = [NSArray arrayWithObjects:&v38 count:1];
          v37 = dCopy;
          v25 = [NSArray arrayWithObjects:&v37 count:1];
          sub_100003D50(v21, style, v24, v25, 0, origin, 0);

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
          chatIdentifier3 = [v16 chatIdentifier];
          serviceName3 = [v16 serviceName];
          *buf = 138412802;
          v42 = v16;
          v43 = 2112;
          v44 = chatIdentifier3;
          v45 = 2112;
          v46 = serviceName3;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Empty IDs or services for chat: %@ (IDs: %@  Services: %@)", buf, 0x20u);
        }
      }
    }

    v13 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
  }

  while (v13);
LABEL_23:

  replyCopy[2](replyCopy, v12 & 1);
LABEL_25:
}

- (void)markReadForMessageGUID:(id)d callerOrigin:(int64_t)origin queryID:(id)iD
{
  dCopy = d;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000155CC;
  v11[3] = &unk_100081A70;
  iDCopy = iD;
  v13 = dCopy;
  v9 = dCopy;
  v10 = iDCopy;
  [(IMDaemonAnyRequestHandler *)self markMessageAsReadWithGUID:v9 callerOrigin:origin reply:v11];
}

- (void)markPlayedForMessageGUID:(id)d
{
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = +[IMDClientRequestContext currentContext];
      listenerID = [v5 listenerID];
      *buf = 138412546;
      v29 = listenerID;
      v30 = 2112;
      v31 = dCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Request from %@ to mark message as played with GUID: %@", buf, 0x16u);
    }
  }

  if ([dCopy length])
  {
    v7 = +[IMDMessageStore sharedInstance];
    v8 = [v7 chatsForMessageGUID:dCopy];

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
          chatIdentifier = [v14 chatIdentifier];
          v16 = IMSingleObjectArray();

          serviceName = [v14 serviceName];
          v18 = IMSingleObjectArray();

          if ([v18 count] && objc_msgSend(v16, "count"))
          {
            v19 = +[IMDMessageStore sharedInstance];
            v20 = [v19 messageWithGUID:dCopy];

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

- (void)markPlayedForIDs:(id)ds style:(unsigned __int8)style onServices:(id)services message:(id)message
{
  styleCopy = style;
  dsCopy = ds;
  servicesCopy = services;
  messageCopy = message;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = +[IMDClientRequestContext currentContext];
      listenerID = [v10 listenerID];
      *buf = 138412802;
      v74 = listenerID;
      v75 = 2112;
      v76 = dsCopy;
      v77 = 2112;
      v78 = servicesCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Request from %@ to mark message as played with IDs: %@  services: %@", buf, 0x20u);
    }
  }

  if ([dsCopy count] && objc_msgSend(servicesCopy, "count"))
  {
    v12 = [dsCopy count];
    if (v12 == [servicesCopy count])
    {
      v13 = +[IMDMessageStore sharedInstance];
      guid = [messageCopy guid];
      v15 = [v13 messageWithGUID:guid];

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
      if ([dsCopy count])
      {
        v20 = 0;
        do
        {
          v21 = [dsCopy objectAtIndex:v20];
          v22 = [servicesCopy objectAtIndex:v20];
          v23 = IMCopyGUIDForChat();

          [v63 addObject:v23];
          ++v20;
        }

        while (v20 < [dsCopy count]);
      }

      if (v67)
      {
        v24 = +[IMDMessageStore sharedInstance];
        v66 = [v24 chatForMessage:v67];

        v25 = [v66 style] == 45;
        v26 = [dsCopy count];
        if (v25)
        {
          if (v26)
          {
            v27 = 0;
            do
            {
              v28 = [dsCopy objectAtIndex:v27];
              v29 = [servicesCopy objectAtIndex:v27];
              v30 = +[IMDChatStore sharedInstance];
              v31 = [v30 chatsWithHandle:v28 onService:v29];

              v32 = [v31 arrayByApplyingSelector:"guid"];
              [v63 addObjectsFromArray:v32];

              ++v27;
            }

            while (v27 < [dsCopy count]);
          }
        }

        else if (v26)
        {
          v33 = 0;
          do
          {
            v34 = [dsCopy objectAtIndex:v33];
            v35 = [servicesCopy objectAtIndex:v33];
            v36 = +[IMDChatStore sharedInstance];
            v37 = [v36 chatsWithRoomname:v34 onService:v35];

            v38 = [v37 arrayByApplyingSelector:"guid"];
            [v63 addObjectsFromArray:v38];

            ++v33;
          }

          while (v33 < [dsCopy count]);
        }

        guid2 = [v67 guid];
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

              lastMessage = [v46 lastMessage];
              guid3 = [lastMessage guid];
              LODWORD(v45) = [guid3 isEqualToString:guid2];

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

        accountID = [v67 accountID];
        v51 = +[IMDAccountController sharedInstance];
        v52 = [v51 sessionForAccount:accountID];

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

        chatIdentifier = [v66 chatIdentifier];
        [v52 sendPlayedReceiptForMessage:v67 toChatID:0 identifier:chatIdentifier style:{objc_msgSend(v66, "style")}];

        v55 = +[IMDMessageStore sharedInstance];
        guid4 = [v67 guid];
        messageCopy = [v55 messageWithGUID:guid4];

        v57 = +[IMDBroadcastController sharedProvider];
        broadcasterForChatListeners = [v57 broadcasterForChatListeners];

        if (IMOSLoggingEnabled())
        {
          v59 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v74 = messageCopy;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "Notifying about message: %@", buf, 0xCu);
          }
        }

        [broadcasterForChatListeners account:accountID chat:0 style:0 messageUpdated:messageCopy];
      }

      else
      {
        messageCopy = 0;
      }

      if (IMMessageItemShouldAutomaticallySave())
      {
        if (IMOSLoggingEnabled())
        {
          v60 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v74 = dsCopy;
            v75 = 2112;
            v76 = servicesCopy;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "Automatically marking played messages as saved with IDs: %@  services: %@", buf, 0x16u);
          }
        }

        v61 = objc_alloc_init(IMDaemonChatModifyReadStateRequestHandler);
        [(IMDaemonChatModifyReadStateRequestHandler *)v61 markSavedForIDs:dsCopy style:styleCopy onServices:servicesCopy message:messageCopy];
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v74 = dsCopy;
        v75 = 2112;
        v76 = servicesCopy;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Mismatched IDs and serviceNames array to mark as played (IDs: %@   Service names: %@)", buf, 0x16u);
      }
    }
  }
}

- (void)playSendSoundForMessageGUID:(id)d callerOrigin:(int64_t)origin
{
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (origin == 1)
      {
        v7 = @"YES";
      }

      v11 = 138412546;
      v12 = dCopy;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Request to play send sound for message with GUID: %@ isFromSiri %@", &v11, 0x16u);
    }
  }

  v8 = +[IMDMessageStore sharedInstance];
  v9 = [v8 messageWithGUID:dCopy];

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
      v12 = dCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Could not find message item matching guid, not playing send sound. GUID: %@", &v11, 0xCu);
    }
  }
}

- (void)requestBuddyPicturesAndPropertiesForAccount:(id)account
{
  accountCopy = account;
  v4 = +[IMDAccountController sharedAccountController];
  v5 = [v4 accountForAccountID:accountCopy];

  session = [v5 session];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412802;
      v14 = v5;
      v15 = 2112;
      v16 = session;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "requestBuddyPicturesAndPropertiesForAccount: %@   session: %@  account: %@", &v13, 0x20u);
    }
  }

  v8 = +[IMDBroadcastController sharedProvider];
  service = [session service];
  v10 = [v8 broadcasterForListenersSupportingService:service];

  buddyProperties = [session buddyProperties];
  buddyPictures = [session buddyPictures];
  [v10 account:accountCopy buddyProperties:buddyProperties buddyPictures:buddyPictures];
}

- (void)forceReloadChatRegistryWithQueryID:(id)d
{
  dCopy = d;
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

  if (dCopy)
  {
    v6 = +[IMDClientRequestContext currentContext];
    replyProxy = [v6 replyProxy];
    [replyProxy forcedReloadingChatRegistryWithQueryID:dCopy];
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

- (void)consumeCodeWithMessageGUID:(id)d
{
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = dCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Request to consume code with message guid: %@", &v8, 0xCu);
    }
  }

  [(IMDaemonAnyRequestHandler *)self markReadForMessageGUID:dCopy callerOrigin:0 queryID:0];
  v6 = +[IMDOneTimeCodeManager sharedInstance];
  [v6 consumeCodeWithGuid:dCopy];

  v7 = +[IMMetricsCollector sharedInstance];
  [v7 trackEvent:IMMetricsCollecterEventConsumedOTC];
}

- (void)onboardDeleteVerificationCodesIfNeededWithReply:(id)reply
{
  replyCopy = reply;
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
  [v5 onboardDeleteVerificationCodesIfNeededWithCompletionHandler:replyCopy];
}

- (void)onboardDeleteVerificationCodesIfNeededWithMessage:(id)message reply:(id)reply
{
  replyCopy = reply;
  messageCopy = message;
  v7 = +[IMDOneTimeCodeManager sharedInstance];
  [v7 onboardDeleteVerificationCodesIfNeededWithMessage:messageCopy completionHandler:replyCopy];
}

- (void)fetchAutoDeletionPreferenceWithReply:(id)reply
{
  if (reply)
  {
    replyCopy = reply;
    v3 = +[IMDOneTimeCodeManager sharedInstance];
    autoDeletionPreference = [v3 autoDeletionPreference];

    replyCopy[2](replyCopy, autoDeletionPreference);
  }
}

- (void)simulateOneTimeCodeArriving:(id)arriving
{
  arrivingCopy = arriving;
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
  [v5 startTrackingCode:arrivingCopy];
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

- (BOOL)_shouldContinueDownloadingPurgedAttachments:(unint64_t)attachments
{
  v4 = [IDSServerBag sharedInstanceForBagType:1];
  v5 = [v4 objectForKey:@"ck-client-download-purged-attachments-max-retry-count"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 intValue] >= 1)
  {
    intValue = [v5 intValue];
  }

  else
  {
    intValue = 5;
  }

  if (intValue <= attachments && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [NSNumber numberWithUnsignedInteger:intValue];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Cannot continue downloading purged attachments becaused reach max retry count of %@", &v10, 0xCu);
    }
  }

  return intValue > attachments;
}

- (unint64_t)_broadcastedUncachedAttachmentCountForChatWithGUID:(id)d chatIdentifiers:(id)identifiers services:(id)services broadcaster:(id)broadcaster
{
  dCopy = d;
  identifiersCopy = identifiers;
  servicesCopy = services;
  broadcasterCopy = broadcaster;
  v13 = +[IMDCKUtilities sharedInstance];
  cloudKitSyncingEnabled = [v13 cloudKitSyncingEnabled];

  if (cloudKitSyncingEnabled)
  {
    v15 = +[IMDCKAttachmentSyncController sharedInstance];
    v16 = [v15 purgedAttachmentsCountForChatsWithChatIdentifiers:identifiersCopy services:servicesCopy];
    v17 = [NSNumber numberWithUnsignedInteger:v16];
    [broadcasterCopy chat:dCopy uncachedAttachmentCountUpdated:v17];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v20 = 138412546;
        v21 = identifiersCopy;
        v22 = 2112;
        v23 = servicesCopy;
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

- (void)requestQOSClassWhileServicingRequestsWithID:(id)d
{
  dCopy = d;
  v4 = qos_class_self();
  v6 = +[IMDBroadcastController sharedProvider];
  broadcasterForChatListeners = [v6 broadcasterForChatListeners];
  [broadcasterForChatListeners qosClassWhileServicingRequestsResponse:v4 identifier:dCopy];
}

- (void)fetchGroupPhotoPathsForChatsWithGroupIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
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
  v11 = handlerCopy;
  v9 = handlerCopy;
  [v8 fetchGroupPhotoPathsForChatsWithGroupIDs:dsCopy completionHandler:v10];
}

- (void)fetchNicknamesWithReply:(id)reply
{
  replyCopy = reply;
  v4 = +[IMDNicknameController sharedInstance];
  pendingNicknameUpdates = [v4 pendingNicknameUpdates];

  v5 = +[IMDNicknameController sharedInstance];
  handledNicknames = [v5 handledNicknames];

  v7 = +[IMDNicknameController sharedInstance];
  archivedNicknames = [v7 archivedNicknames];

  replyCopy[2](replyCopy, pendingNicknameUpdates, handledNicknames, archivedNicknames);
}

- (void)fetchHandleSharingStateWithReply:(id)reply
{
  replyCopy = reply;
  v4 = +[IMDNicknameController sharedInstance];
  allowListedHandlesForSharing = [v4 allowListedHandlesForSharing];

  v5 = +[IMDNicknameController sharedInstance];
  denyListedHandlesForSharing = [v5 denyListedHandlesForSharing];

  replyCopy[2](replyCopy, allowListedHandlesForSharing, denyListedHandlesForSharing);
}

- (void)fetchTransitionedNicknameHandlesWithReply:(id)reply
{
  replyCopy = reply;
  v4 = +[IMDNicknameController sharedInstance];
  transitionedHandles = [v4 transitionedHandles];

  replyCopy[2](replyCopy, transitionedHandles);
}

- (void)fetchActiveNicknamesWithReply:(id)reply
{
  replyCopy = reply;
  v4 = +[IMDNicknameController sharedInstance];
  activeRecords = [v4 activeRecords];

  replyCopy[2](replyCopy, activeRecords);
}

- (void)fetchIgnoredNicknameHandlesWithReply:(id)reply
{
  replyCopy = reply;
  v4 = +[IMDNicknameController sharedInstance];
  ignoredRecords = [v4 ignoredRecords];

  replyCopy[2](replyCopy, ignoredRecords);
}

- (void)fetchUnknownSenderRecordsWithReply:(id)reply
{
  replyCopy = reply;
  v4 = +[IMDNicknameController sharedInstance];
  unknownSenderRecordInfo = [v4 unknownSenderRecordInfo];

  replyCopy[2](replyCopy, unknownSenderRecordInfo);
}

- (void)clearPendingNicknameUpdatesForHandleIDs:(id)ds
{
  dsCopy = ds;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [dsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(dsCopy);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = +[IMDNicknameController sharedInstance];
        [v9 clearPendingNicknameForHandleID:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [dsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)ignorePendingNicknameUpdatesForHandleIDs:(id)ds
{
  dsCopy = ds;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [dsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(dsCopy);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = +[IMDNicknameController sharedInstance];
        [v9 ignorePendingNicknameForHandleID:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [dsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)acceptPendingNicknameForHandleID:(id)d updateType:(unint64_t)type
{
  dCopy = d;
  v6 = +[IMDNicknameController sharedInstance];
  [v6 acceptPendingNicknameForHandleID:dCopy updateType:type];
}

- (void)clearPendingNicknamePhotoUpdateForHandleIDs:(id)ds
{
  dsCopy = ds;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [dsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(dsCopy);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = +[IMDNicknameController sharedInstance];
        [v9 clearPendingNicknamePhotoForHandleID:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [dsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)denyHandleIDsForNicknameSharing:(id)sharing
{
  sharingCopy = sharing;
  v4 = +[IMDNicknameController sharedInstance];
  [v4 denyHandlesForSharing:sharingCopy];
}

- (void)markProfileRecordsAsIgnored:(id)ignored
{
  ignoredCopy = ignored;
  v4 = +[IMDNicknameController sharedInstance];
  [v4 markProfileRecordsAsIgnored:ignoredCopy broadcastUpdates:1];
}

- (void)nicknamePreferencesDidChange
{
  v2 = +[IMDNicknameController sharedInstance];
  [v2 sendNicknamePreferencesDidChange];
}

- (void)setNewPersonalNickname:(id)nickname
{
  nicknameCopy = nickname;
  v4 = +[IMDNicknameController sharedInstance];
  [v4 setPersonalNickname:nicknameCopy completionBlock:&stru_100081B00];
}

- (void)sendNameOnlyToHandleIDs:(id)ds fromHandleID:(id)d
{
  dCopy = d;
  dsCopy = ds;
  v7 = +[IMDNicknameController sharedInstance];
  [v7 sendNameOnlyToHandleIDs:dsCopy fromHandleID:dCopy];
}

- (void)fetchPersonalNicknameWithReply:(id)reply
{
  replyCopy = reply;
  v4 = +[IMDNicknameController sharedInstance];
  personalNickname = [v4 personalNickname];

  replyCopy[2](replyCopy, personalNickname);
}

- (void)markAllNicknamesAsPending
{
  v2 = +[IMDNicknameController sharedInstance];
  [v2 markAllNicknamesAsPending];
}

- (void)eagerUploadTransfer:(id)transfer recipients:(id)recipients
{
  recipientsCopy = recipients;
  transferCopy = transfer;
  v7 = +[IMDAccountController sharedAccountController];
  v8 = [v7 anySessionForServiceName:IMServiceNameiMessage];

  [v8 eagerUploadTransfer:transferCopy recipients:recipientsCopy];
}

- (void)eagerUploadCancel:(id)cancel
{
  cancelCopy = cancel;
  v4 = +[IMDAccountController sharedAccountController];
  v5 = [v4 anySessionForServiceName:IMServiceNameiMessage];

  [v5 eagerUploadCancel:cancelCopy];
}

- (void)downloadStickerWithGUID:(id)d
{
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = +[IMDStickerRegistry sharedInstance];
      v6 = 138412546;
      v7 = dCopy;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Got a request to download sticker with GUID %@ stickerStore %@", &v6, 0x16u);
    }
  }
}

- (void)downloadStickerPackWithGUID:(id)d isIncomingMessage:(BOOL)message ignoreCache:(BOOL)cache
{
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = +[IMDStickerRegistry sharedInstance];
      v8 = 138412546;
      v9 = dCopy;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Got a request to download sticker pack with GUID %@ stickerStore %@", &v8, 0x16u);
    }
  }
}

- (void)sendEmergencyQuestionnaire:(id)questionnaire
{
  questionnaireCopy = questionnaire;
  v4 = +[IMFeatureFlags sharedFeatureFlags];
  stewieEnabled = [v4 stewieEnabled];

  if (stewieEnabled)
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
    [v7 sendEmergencyQuestionnaire:questionnaireCopy];
  }
}

- (void)processReceivedEmergencyMessageFromIMTool:(int64_t)tool message:(id)message
{
  messageCopy = message;
  v5 = +[IMFeatureFlags sharedFeatureFlags];
  stewieEnabled = [v5 stewieEnabled];

  if (stewieEnabled)
  {
    v7 = +[IMDChorosController sharedController];
    [v7 processReceivedEmergencyMessageFromIMTool:tool message:messageCopy];
  }
}

- (void)locationUpdateSent
{
  v2 = +[IMFeatureFlags sharedFeatureFlags];
  stewieEnabled = [v2 stewieEnabled];

  if (stewieEnabled)
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

- (void)sendQuestionnaire:(id)questionnaire
{
  questionnaireCopy = questionnaire;
  v4 = +[IMFeatureFlags sharedFeatureFlags];
  stewieEnabled = [v4 stewieEnabled];

  if (stewieEnabled)
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
    [v7 sendQuestionnaire:questionnaireCopy];
  }
}

- (void)locationUpdateDelivered:(id)delivered
{
  deliveredCopy = delivered;
  v4 = +[IMFeatureFlags sharedFeatureFlags];
  stewieEnabled = [v4 stewieEnabled];

  if (stewieEnabled)
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
    [v7 locationUpdateDelivered:deliveredCopy];
  }
}

- (void)openStewieChatWithContext:(id)context
{
  contextCopy = context;
  v4 = +[IMFeatureFlags sharedFeatureFlags];
  stewieEnabled = [v4 stewieEnabled];

  if (stewieEnabled)
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
    [v7 openStewieChatWithContext:contextCopy];
  }
}

- (void)holdBuddyUpdatesAccount:(id)account
{
  accountCopy = account;
  v4 = +[IMDAccountController sharedAccountController];
  v5 = [v4 sessionForAccount:accountCopy];

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
      v14 = accountCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v13, 0xCu);
    }
  }

  v7 = +[IMDAccountController sharedAccountController];
  v8 = +[IMDAccountController sharedAccountController];
  v9 = [v8 accountForAccountID:accountCopy];
  service = [v9 service];
  internalName = [service internalName];
  v5 = [v7 anySessionForServiceName:internalName];

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
      v14 = accountCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v13, 0xCu);
    }
  }
}

- (void)resumeBuddyUpdatesAccount:(id)account
{
  accountCopy = account;
  v4 = +[IMDAccountController sharedAccountController];
  v5 = [v4 sessionForAccount:accountCopy];

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
      v14 = accountCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v13, 0xCu);
    }
  }

  v7 = +[IMDAccountController sharedAccountController];
  v8 = +[IMDAccountController sharedAccountController];
  v9 = [v8 accountForAccountID:accountCopy];
  service = [v9 service];
  internalName = [service internalName];
  v5 = [v7 anySessionForServiceName:internalName];

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
      v14 = accountCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v13, 0xCu);
    }
  }
}

- (void)startWatchingBuddy:(id)buddy account:(id)account
{
  buddyCopy = buddy;
  accountCopy = account;
  v7 = +[IMDAccountController sharedAccountController];
  v8 = [v7 sessionForAccount:accountCopy];

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
      v17 = accountCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v16, 0xCu);
    }
  }

  v10 = +[IMDAccountController sharedAccountController];
  v11 = +[IMDAccountController sharedAccountController];
  v12 = [v11 accountForAccountID:accountCopy];
  service = [v12 service];
  internalName = [service internalName];
  v8 = [v10 anySessionForServiceName:internalName];

  if (v8)
  {
LABEL_7:
    [v8 startWatchingBuddy:buddyCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = accountCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v16, 0xCu);
    }
  }
}

- (void)stopWatchingBuddy:(id)buddy account:(id)account
{
  buddyCopy = buddy;
  accountCopy = account;
  v7 = +[IMDAccountController sharedAccountController];
  v8 = [v7 sessionForAccount:accountCopy];

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
      v17 = accountCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v16, 0xCu);
    }
  }

  v10 = +[IMDAccountController sharedAccountController];
  v11 = +[IMDAccountController sharedAccountController];
  v12 = [v11 accountForAccountID:accountCopy];
  service = [v12 service];
  internalName = [service internalName];
  v8 = [v10 anySessionForServiceName:internalName];

  if (v8)
  {
LABEL_7:
    [v8 stopWatchingBuddy:buddyCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = accountCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v16, 0xCu);
    }
  }
}

- (void)requestProperty:(id)property ofPerson:(id)person account:(id)account
{
  propertyCopy = property;
  personCopy = person;
  accountCopy = account;
  v10 = +[IMDAccountController sharedAccountController];
  v11 = [v10 sessionForAccount:accountCopy];

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
      v20 = accountCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v19, 0xCu);
    }
  }

  v13 = +[IMDAccountController sharedAccountController];
  v14 = +[IMDAccountController sharedAccountController];
  v15 = [v14 accountForAccountID:accountCopy];
  service = [v15 service];
  internalName = [service internalName];
  v11 = [v13 anySessionForServiceName:internalName];

  if (v11)
  {
LABEL_7:
    [v11 requestProperty:propertyCopy ofPerson:personCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = accountCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v19, 0xCu);
    }
  }
}

- (void)setValue:(id)value ofProperty:(id)property ofPerson:(id)person account:(id)account
{
  valueCopy = value;
  propertyCopy = property;
  personCopy = person;
  accountCopy = account;
  v13 = +[IMDAccountController sharedAccountController];
  v14 = [v13 sessionForAccount:accountCopy];

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
      v23 = accountCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v22, 0xCu);
    }
  }

  v16 = +[IMDAccountController sharedAccountController];
  v17 = +[IMDAccountController sharedAccountController];
  v18 = [v17 accountForAccountID:accountCopy];
  service = [v18 service];
  internalName = [service internalName];
  v14 = [v16 anySessionForServiceName:internalName];

  if (v14)
  {
LABEL_7:
    [v14 setValue:valueCopy ofProperty:propertyCopy ofPerson:personCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = accountCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v22, 0xCu);
    }
  }
}

- (void)requestGroupsAccount:(id)account
{
  accountCopy = account;
  v4 = +[IMDAccountController sharedAccountController];
  v5 = [v4 sessionForAccount:accountCopy];

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
      v14 = accountCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "FIND_SESSION: No session found for account, attempting to find ANYTHING for the service: %@", &v13, 0xCu);
    }
  }

  v7 = +[IMDAccountController sharedAccountController];
  v8 = +[IMDAccountController sharedAccountController];
  v9 = [v8 accountForAccountID:accountCopy];
  service = [v9 service];
  internalName = [service internalName];
  v5 = [v7 anySessionForServiceName:internalName];

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
      v14 = accountCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "FIND_SESSION: No session ever found for account: %@", &v13, 0xCu);
    }
  }
}

- (void)sendNotificationMessageToUniqueID:(id)d withCommand:(int64_t)command
{
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [NSNumber numberWithInteger:command];
      v9 = 138412546;
      v10 = dCopy;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Calling sendNotificationMessageToUniqueID with uniqueId %@ and command %@", &v9, 0x16u);
    }
  }

  v8 = +[IMMessageNotificationController sharedInstance];
  [v8 sendNotificationMessageToUniqueID:dCopy withCommmand:command];
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

- (void)conference:(id)conference account:(id)account notifyInvitationCancelledFromPerson:(id)person
{
  conferenceCopy = conference;
  accountCopy = account;
  personCopy = person;
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

- (void)terminateForcingIfNeeded:(BOOL)needed
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

- (void)sendNotice:(id)notice toHandles:(id)handles fromHandle:(id)handle reply:(id)reply
{
  noticeCopy = notice;
  handlesCopy = handles;
  handleCopy = handle;
  replyCopy = reply;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = 138412802;
      v17 = noticeCopy;
      v18 = 2112;
      v19 = handlesCopy;
      v20 = 2112;
      v21 = handleCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Client request to send notice %@ toHandles %@ fromHandle: %@", &v16, 0x20u);
    }
  }

  v14 = +[IMDCollaborationNoticeController sharedController];
  noticeDispatcher = [v14 noticeDispatcher];
  [noticeDispatcher sendNotice:noticeCopy toHandles:handlesCopy fromHandle:handleCopy];

  replyCopy[2](replyCopy, 1);
}

- (void)sendClearNotice:(id)notice toHandles:(id)handles reply:(id)reply
{
  noticeCopy = notice;
  handlesCopy = handles;
  replyCopy = reply;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 138412546;
      v14 = noticeCopy;
      v15 = 2112;
      v16 = handlesCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Client request to send clear notice %@ toHandles %@", &v13, 0x16u);
    }
  }

  v11 = +[IMDCollaborationNoticeController sharedController];
  noticeDispatcher = [v11 noticeDispatcher];
  [noticeDispatcher sendClearNotice:noticeCopy toHandles:handlesCopy];

  replyCopy[2](replyCopy, 1);
}

@end
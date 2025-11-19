@interface IMDNicknameController
+ (id)sharedInstance;
- (BOOL)_deviceUnderFirstUnlock;
- (BOOL)_isActiveForNickname:(id)a3;
- (BOOL)_isNicknamesSharingEnabled;
- (BOOL)_isUnderScrutiny;
- (BOOL)_populateNicknameDictionary:(id)a3 forKVStore:(id)a4 limitToLoad:(unint64_t)a5;
- (BOOL)_requestingToSendLocalNicknameInfo:(id)a3;
- (BOOL)_sendMessageDictionary:(id)a3 toDevice:(id)a4 sendType:(unint64_t)a5;
- (BOOL)evaluateAccountStateForFeatureEligibility;
- (BOOL)replacedNicknameForHandleIDInHandledMapIfNeeded:(id)a3 nickname:(id)a4;
- (IMDNicknameController)init;
- (NSDictionary)activeRecords;
- (NSDictionary)ignoredRecords;
- (NSMutableSet)handleAllowList;
- (NSMutableSet)handleDenyList;
- (NSSet)allowListedHandlesForSharing;
- (NSSet)denyListedHandlesForSharing;
- (NSSet)transitionedHandles;
- (id)_diffActiveRecords:(id)a3 againstPrevious:(id)a4;
- (id)_getPendingNicknameForUpload;
- (id)_idsDeviceFromPushToken:(id)a3;
- (id)_typeOfNicknameUpdateToShare;
- (id)allNicknames;
- (id)avatarRecipeTag;
- (id)loadListForKey:(id)a3 list:(id)a4;
- (id)lowResWallpaperDataTag;
- (id)messageDictionaryWithPersonalRecordIDAndVersion;
- (id)newNicknameInfoToSend;
- (id)nickNameDecryptionKey;
- (id)nickNameRecordID;
- (id)nicknameForHandle:(id)a3;
- (id)nicknameForHandleURI:(id)a3;
- (id)nicknameForRecordID:(id)a3;
- (id)nicknameForRecordID:(id)a3 handle:(id)a4;
- (id)pendingPersonalNickname;
- (id)storedPersonalNickname;
- (id)substringRecordIDForNickname:(id)a3;
- (id)unknownSenderRecordInfoFor:(id)a3;
- (id)wallpaperDataTag;
- (id)wallpaperMetadataTag;
- (unint64_t)_reuploadLocalProfileVersionNumber;
- (void)NicknameWithRecordID:(id)a3 URI:(id)a4 decryptionKey:(id)a5 wallpaperDataTag:(id)a6 wallpaperLowResDataTag:(id)a7 wallpaperMetadataTag:(id)a8 avatarRecipeDataTag:(id)a9 hasWallpaperUpdate:(BOOL)a10 dropNicknameForUnknownContacts:(BOOL)a11 withCompletionBlock:(id)a12;
- (void)_beginNicknameUpload:(id)a3;
- (void)_broadcastActiveListChanged;
- (void)_broadcastNicknamesMapChanged;
- (void)_clearActiveNicknameRecords;
- (void)_clearIgnoredNicknameRecords;
- (void)_clearSharingLists;
- (void)_clearTransitionedList;
- (void)_deleteAvatarForNickname:(id)a3;
- (void)_deleteDataUnderScrutiny;
- (void)_deleteHandleIDFromArchivedMap:(id)a3;
- (void)_deleteHandleIDFromHandledMap:(id)a3;
- (void)_deleteHandleIDFromPendingMap:(id)a3;
- (void)_deleteNicknameFromPendingMap:(id)a3;
- (void)_deleteOnDiskDataIfNeededForNickname:(id)a3 withNewNickname:(id)a4;
- (void)_deletePendingNicknameForUpload;
- (void)_deletePublicNicknameLocationAndKey;
- (void)_endNicknameUpload;
- (void)_evaluateIfAccountHasMultiplePhoneNumbers;
- (void)_getDevicesForBothNicknameServices:(id)a3 removeNewServiceURIsFromIMessageList:(BOOL)a4 completionHandler:(id)a5;
- (void)_loadAllInfoFromDiskIfAble;
- (void)_makeAllNicknameContentsClassC;
- (void)_markCurrentNicknameAsArchived:(id)a3 incrementPendingNicknameVersion:(BOOL)a4;
- (void)_markNicknamePhotoAsUpdated:(id)a3;
- (void)_newDeviceDidSignIntoiMessageWithRetryCount:(unint64_t)a3;
- (void)_removeFromList:(id)a3 withKey:(id)a4;
- (void)_removeFromTransitionedList:(id)a3;
- (void)_replaceUnknownSenderRecordInfoListWithInfo:(id)a3 purgeIfNeeded:(BOOL)a4;
- (void)_resetHandleSharingList;
- (void)_showDebugAlertWithHeader:(id)a3 message:(id)a4;
- (void)_storePendingNicknameForUpload:(id)a3;
- (void)_storePublicNickname:(id)a3 nicknameLocation:(id)a4 encryptionKey:(id)a5 wallpaperDataTag:(id)a6 wallpaperLowResDataTag:(id)a7 wallpaperMetadataTag:(id)a8 avatarRecipeDataTag:(id)a9;
- (void)_syncActiveNicknameRecordsToOtherDevices;
- (void)_syncHandleAllowDenyListToOtherDevices;
- (void)_syncHandleTransitionedListToOtherDevices;
- (void)_syncIgnoredNicknameRecordsToOtherDevices;
- (void)_tryToReuploadPersonalNicknameWithRetryCount:(unint64_t)a3 reuploadVersion:(unint64_t)a4;
- (void)_updateActiveList:(id)a3 withRecords:(id)a4 broadcastUpdates:(BOOL)a5;
- (void)_updateActiveNicknameRecordsListIfNeeded:(id)a3;
- (void)_updateCloudKitRecordIDAndDecryptionKeyIfNeeded:(id)a3;
- (void)_updateDenyAllowListHandlesVersion;
- (void)_updateHandleDenyAllowListIfNeeded:(id)a3;
- (void)_updateHandleList:(id)a3 withHandles:(id)a4 forKey:(id)a5 broadcastUpdates:(BOOL)a6;
- (void)_updateHandleTransitionedListIfNeeded:(id)a3;
- (void)_updateIgnoredList:(id)a3 withRecords:(id)a4 broadcastUpdates:(BOOL)a5;
- (void)_updateIgnoredNicknameRecordsListIfNeeded:(id)a3;
- (void)_updateIsActiveListHandlesVersion;
- (void)_updateIsIgnoredListHandlesVersion;
- (void)_updateMessageDictionaryWithNicknameUpdateRecordIDs:(id)a3;
- (void)_updateMessageDictionaryWithPendingNicknameUpdates:(id)a3;
- (void)_updateNameOnlyUpdateForMessage:(id)a3 fromHandleID:(id)a4;
- (void)_updateNicknameInArchivedMap:(id)a3;
- (void)_updateNicknameListsIfNeeded:(id)a3;
- (void)_updatePendingNicknameVersion;
- (void)_updateSharingPreferencesIfNeededFromMadridMessage:(id)a3;
- (void)_updateTransitionList:(id)a3 withHandles:(id)a4 forKey:(id)a5 broadcastUpdates:(BOOL)a6;
- (void)_updateTransitionedListHandlesVersion;
- (void)_uploadPendingNicknameIfNecessary;
- (void)_writeNicknameToKVStore:(id)a3 nickname:(id)a4;
- (void)acceptPendingNicknameForHandleID:(id)a3 updateType:(unint64_t)a4;
- (void)addNicknameToPendingUpdates:(id)a3;
- (void)allowHandlesForSharing:(id)a3 onChatGUIDs:(id)a4 fromHandle:(id)a5 forceSend:(BOOL)a6;
- (void)broadcastHandlesSharingNicknamesDidChange;
- (void)broadcastTransitionedHandlesDidChange;
- (void)cleanUpNicknameForIDs:(id)a3;
- (void)clearPendingNicknameForHandleID:(id)a3;
- (void)clearPendingNicknamePhotoForHandleID:(id)a3;
- (void)currentPersonalNicknameWithRecordID:(id)a3 decryptionKey:(id)a4 wallpaperDataTag:(id)a5 wallpaperLowResDataTag:(id)a6 wallpaperMetadataTag:(id)a7 avatarRecipeDataTag:(id)a8 completionBlock:(id)a9;
- (void)currentPersonalNicknamewithCompletionBlock:(id)a3;
- (void)dealloc;
- (void)deleteAllPersonalNicknames:(BOOL)a3 withCompletion:(id)a4;
- (void)denyHandlesForSharing:(id)a3;
- (void)deviceSignedOutOfiMessage;
- (void)displayTapToRadarNotificationWithError:(id)a3 invalidData:(id)a4;
- (void)getNicknameWithRecordID:(id)a3 decryptionKey:(id)a4 wallpaperDataTag:(id)a5 wallpaperLowResDataTag:(id)a6 wallpaperMetadataTag:(id)a7 avatarRecipeDataTag:(id)a8 isKnownSender:(BOOL)a9 shouldDecodeImageFields:(BOOL)a10 completionBlock:(id)a11;
- (void)handleNicknameUpdatesFromPeerDevice:(id)a3 fromPeerDevice:(id)a4;
- (void)ignorePendingNicknameForHandleID:(id)a3;
- (void)loadHandledTransitioned;
- (void)loadNicknamesFromKVStore;
- (void)loadPersonalNicknameIfNeeded;
- (void)loadSharingHandlesPrefs;
- (void)loadUnknownSenderRecordInfoFromKVStore;
- (void)markAllNicknamesAsPending;
- (void)markHandlesAsAllowed:(id)a3;
- (void)markNicknameAsUpdated:(id)a3;
- (void)markNicknamesAsTransitionedForHandleIDs:(id)a3 isAutoUpdate:(BOOL)a4;
- (void)markProfileRecords:(id)a3 asActive:(BOOL)a4;
- (void)purgeUnknownSenderRecordInfoIfNeeded;
- (void)queueChatToSendNicknamePostUploadIfNeeded:(id)a3;
- (void)reuploadProfileIfNeeded;
- (void)saveNicknameForRecordID:(id)a3 handleID:(id)a4 userNickname:(id)a5;
- (void)sendNameOnlyToHandleIDs:(id)a3 fromHandleID:(id)a4;
- (void)sendNicknamePreferencesDidChange;
- (void)sendPendingNicknameUpdatesDidChange;
- (void)sendPersonalNicknameRecordIDAndVersionRequestedByDevice:(id)a3;
- (void)sendPersonalNicknameRecordIDAndVersionToAllPeers;
- (void)sendPersonalNicknameToRecipients:(id)a3 chatGUID:(id)a4 fromHandle:(id)a5 onlyUseNicknameSendingService:(BOOL)a6 onlySendToThoseLoggedOutOfIMessage:(BOOL)a7;
- (void)service:(id)a3 account:(id)a4 incomingTopLevelMessage:(id)a5 fromID:(id)a6 messageContext:(id)a7;
- (void)setPersonalNickname:(id)a3;
- (void)setPersonalNickname:(id)a3 completionBlock:(id)a4;
- (void)systemDidLeaveFirstDataProtectionLock;
- (void)verifyTruncatedRecordIDMatchesPersonalNickname:(id)a3 forChat:(id)a4;
@end

@implementation IMDNicknameController

+ (id)sharedInstance
{
  if (qword_281421150 != -1)
  {
    sub_22B4D2DC4();
  }

  v3 = qword_281420FD0;

  return v3;
}

- (NSSet)transitionedHandles
{
  v2 = [(IMDNicknameController *)self handleTransitionedList];
  v3 = [v2 copy];

  return v3;
}

- (NSSet)allowListedHandlesForSharing
{
  v2 = [(IMDNicknameController *)self handleAllowList];
  v3 = [v2 copy];

  return v3;
}

- (NSSet)denyListedHandlesForSharing
{
  v2 = [(IMDNicknameController *)self handleDenyList];
  v3 = [v2 copy];

  return v3;
}

- (NSMutableSet)handleDenyList
{
  handleDenyList = self->_handleDenyList;
  if (!handleDenyList)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v5 = self->_handleDenyList;
    self->_handleDenyList = v4;

    handleDenyList = self->_handleDenyList;
  }

  return handleDenyList;
}

- (NSDictionary)ignoredRecords
{
  v2 = [(IMDNicknameController *)self ignoredNicknameRecords];
  v3 = [v2 copy];

  return v3;
}

- (NSMutableSet)handleAllowList
{
  handleAllowList = self->_handleAllowList;
  if (!handleAllowList)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v5 = self->_handleAllowList;
    self->_handleAllowList = v4;

    handleAllowList = self->_handleAllowList;
  }

  return handleAllowList;
}

- (NSDictionary)activeRecords
{
  v2 = [(IMDNicknameController *)self activeNicknameRecords];
  v3 = [v2 copy];

  return v3;
}

- (IMDNicknameController)init
{
  v43.receiver = self;
  v43.super_class = IMDNicknameController;
  v2 = [(IMDNicknameController *)&v43 init];
  v3 = v2;
  if (v2)
  {
    [(IMDNicknameController *)v2 _makeAllNicknameContentsClassC];
    if ([(IMDNicknameController *)v3 _nicknameFeatureEnabled])
    {
      if ((IMIsRunningInUnitTesting() & 1) == 0)
      {
        v4 = *MEMORY[0x277D1A390];
        v5 = [*MEMORY[0x277D1A390] stringByAppendingPathComponent:@"nickNameKeyStore.db"];
        v6 = [v4 stringByResolvingAndStandardizingPath];
        IMSharedHelperEnsureDirectoryExistsAtPath();

        v7 = [v5 stringByResolvingAndStandardizingPath];

        v8 = [objc_alloc(MEMORY[0x277D18AD0]) initWithPath:v7 storeName:@"nicknamekeystore" dataProtectionClass:0];
        cloudkitRecordsKVStore = v3->_cloudkitRecordsKVStore;
        v3->_cloudkitRecordsKVStore = v8;

        v10 = [v4 stringByAppendingString:@"pendingNicknamesKeyStore.db"];
        v11 = [v10 stringByResolvingAndStandardizingPath];

        v12 = [objc_alloc(MEMORY[0x277D18AD0]) initWithPath:v11 storeName:@"pendingNicknameUpdatesStore" dataProtectionClass:0];
        pendingNicknameUpdatesKVStore = v3->_pendingNicknameUpdatesKVStore;
        v3->_pendingNicknameUpdatesKVStore = v12;

        v14 = [v4 stringByAppendingString:@"handledNicknamesKeyStore.db"];
        v15 = [v14 stringByResolvingAndStandardizingPath];

        v16 = [objc_alloc(MEMORY[0x277D18AD0]) initWithPath:v15 storeName:@"handledNicknamesStore" dataProtectionClass:0];
        handledNicknamesKVStore = v3->_handledNicknamesKVStore;
        v3->_handledNicknamesKVStore = v16;

        v18 = [v4 stringByAppendingString:@"archivedNicknamesKeyStore.db"];
        v19 = [v18 stringByResolvingAndStandardizingPath];

        v20 = [objc_alloc(MEMORY[0x277D18AD0]) initWithPath:v19 storeName:@"archivedNicknamesStore" dataProtectionClass:0];
        archivedNicknamesKVStore = v3->_archivedNicknamesKVStore;
        v3->_archivedNicknamesKVStore = v20;

        v22 = [v4 stringByAppendingString:@"handleSharingPreferences.db"];
        v23 = [v22 stringByResolvingAndStandardizingPath];

        v24 = [objc_alloc(MEMORY[0x277D18AD0]) initWithPath:v23 storeName:@"handleSharingPreferences" dataProtectionClass:0];
        handleSharingKVStore = v3->_handleSharingKVStore;
        v3->_handleSharingKVStore = v24;

        v26 = [v4 stringByAppendingString:@"nicknameRecordsStore.db"];
        v27 = [v26 stringByResolvingAndStandardizingPath];

        v28 = [objc_alloc(MEMORY[0x277D18AD0]) initWithPath:v27 storeName:@"nicknameRecordsStore" dataProtectionClass:0];
        nicknameRecordsKVStore = v3->_nicknameRecordsKVStore;
        v3->_nicknameRecordsKVStore = v28;

        v30 = [v4 stringByAppendingString:@"unknownSenderRecordInfoStore.db"];
        v31 = [v30 stringByResolvingAndStandardizingPath];

        v32 = [objc_alloc(MEMORY[0x277D18AD0]) initWithPath:v31 storeName:@"unknownSenderRecordInfoStore" dataProtectionClass:0];
        unknownSenderRecordInfoKVStore = v3->_unknownSenderRecordInfoKVStore;
        v3->_unknownSenderRecordInfoKVStore = v32;

        v34 = [MEMORY[0x277D1ACB8] sharedInstance];
        [v34 addListener:v3];

        v35 = [MEMORY[0x277CCAB98] defaultCenter];
        [v35 addObserver:v3 selector:sel__ckAccountChanged_ name:*MEMORY[0x277CBBF00] object:0];

        [(IMDNicknameController *)v3 _loadAllInfoFromDiskIfAble];
        [(IMDNicknameController *)v3 purgeUnknownSenderRecordInfoIfNeeded];
        v36 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.nameandphoto"];
        nicknameService = v3->_nicknameService;
        v3->_nicknameService = v36;

        [(IDSService *)v3->_nicknameService addDelegate:v3 queue:MEMORY[0x277D85CD0]];
        v38 = [MEMORY[0x277D18728] sharedInstance];
        [v38 addListenerID:@"IMDNicknameController" forService:@"com.apple.private.alloy.nameandphoto"];

        v39 = objc_alloc_init(MEMORY[0x277CF7D40]);
        callHistoryManager = v3->_callHistoryManager;
        v3->_callHistoryManager = v39;

LABEL_8:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v42 = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Nickname feature is turned off, don't load nickname info into memory", v42, 2u);
      }

      goto LABEL_8;
    }
  }

  return v3;
}

- (void)purgeUnknownSenderRecordInfoIfNeeded
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(IMDNicknameController *)self unknownSenderRecordInfo];
  if (v3)
  {
    v4 = v3;
    v5 = [(IMDNicknameController *)self unknownSenderRecordInfo];
    v6 = [v5 count];

    if (v6)
    {
      v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v7 = [(IMDNicknameController *)self unknownSenderRecordInfo];
      v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v8)
      {
        v9 = v8;
        LOBYTE(v10) = 0;
        v11 = *v28;
        obj = v7;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v28 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v27 + 1) + 8 * i);
            v14 = [(IMDNicknameController *)self unknownSenderRecordInfo];
            v15 = [v14 objectForKey:v13];

            v16 = +[IMDChatRegistry sharedInstance];
            v17 = [v16 _hasSavedContactCardForHandle:v13];

            v25[0] = MEMORY[0x277D85DD0];
            v25[1] = 3221225472;
            v25[2] = sub_22B5C03CC;
            v25[3] = &unk_278705BD8;
            v26 = v17;
            v18 = [MEMORY[0x277CCAC30] predicateWithBlock:v25];
            v19 = [v15 filteredSetUsingPredicate:v18];
            v20 = v19;
            if (v10)
            {
              v10 = 1;
            }

            else
            {
              v21 = [v19 count];
              v10 = v21 != [v15 count];
            }

            if ([v20 count])
            {
              [v24 setObject:v20 forKey:v13];
            }
          }

          v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v9);

        if (v10)
        {
          [(IMDNicknameController *)self _replaceUnknownSenderRecordInfoListWithInfo:v24 purgeIfNeeded:0];
        }
      }

      else
      {
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  if ((IMIsRunningInUnitTesting() & 1) == 0)
  {
    v3 = [MEMORY[0x277D1ACB8] sharedInstance];
    [v3 removeListener:self];

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:self];
  }

  v5.receiver = self;
  v5.super_class = IMDNicknameController;
  [(IMDNicknameController *)&v5 dealloc];
}

- (BOOL)evaluateAccountStateForFeatureEligibility
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v4 = [v3 isNameAndPhotoC3Enabled];

  v5 = +[IMDCKUtilities sharedInstance];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 signedIntoiCloudAccount];
  }

  else
  {
    v7 = [v5 signedIntoiCloudAndiMessageAndiCloudAccountMatchesiMessageAccount];
  }

  v8 = v7;

  v9 = [(IMDNicknameController *)self defaults];
  v10 = *MEMORY[0x277D1A3C0];
  v11 = *MEMORY[0x277D1A438];
  v12 = [v9 getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A438]];
  v13 = [v12 BOOLValue];

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = @"NO";
      if (v8)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      if (v13)
      {
        v15 = @"YES";
      }

      v21 = 138412546;
      v22 = v16;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Evaluating account state for feature eligibility {refreshedFeatureEligibility: %@ currentFeatureEligibility: %@}", &v21, 0x16u);
    }
  }

  if (v8 != v13)
  {
    v17 = [(IMDNicknameController *)self defaults];
    v18 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    [v17 setValue:v18 forDomain:v10 forKey:v11];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_evaluateIfAccountHasMultiplePhoneNumbers
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = +[IMDServiceController sharedController];
  v4 = [v3 serviceWithName:*MEMORY[0x277D1A620]];

  v5 = +[IMDAccountController sharedInstance];
  v6 = [v5 accountsForService:v4];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 idsAccount];
          v14 = [v13 accountType];

          if (v14 == 1)
          {
            -[IMDNicknameController aliasesDidChange:](self, "aliasesDidChange:", [v12 multiplePhoneNumbersTiedToAccount]);
            goto LABEL_12;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_reuploadLocalProfileVersionNumber
{
  v2 = 1;
  v3 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v4 = [v3 objectForKey:@"nickname-reupload-profile-version"];

  if (v4)
  {
    v2 = [v4 unsignedIntegerValue];
  }

  v5 = [MEMORY[0x277D1A990] sharedInstance];
  v6 = [v5 getBoolFromDomain:*MEMORY[0x277D1A3C0] forKey:@"UseOldProfilesContainer"];

  if (v6)
  {
    v2 = 0;
  }

  return v2;
}

- (void)_tryToReuploadPersonalNicknameWithRetryCount:(unint64_t)a3 reuploadVersion:(unint64_t)a4
{
  if (a3 > 2)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "We were not successful in reuploading our nickname to the new container", location, 2u);
      }
    }

    v9 = [(IMDNicknameController *)self defaults];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    [v9 setValue:v10 forDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A418]];
  }

  else
  {
    objc_initWeak(location, self);
    v7 = [(IMDNicknameController *)self personalNickname];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_22B5C0DD0;
    v11[3] = &unk_278705C00;
    objc_copyWeak(v12, location);
    v12[1] = a4;
    v12[2] = a3;
    [(IMDNicknameController *)self setPersonalNickname:v7 completionBlock:v11];

    objc_destroyWeak(v12);
    objc_destroyWeak(location);
  }
}

- (void)reuploadProfileIfNeeded
{
  v3 = [(IMDNicknameController *)self defaults];
  v4 = [v3 getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A418]];
  v5 = [v4 unsignedIntegerValue];

  v6 = [(IMDNicknameController *)self _reuploadLocalProfileVersionNumber];
  if (v5 < v6)
  {

    [(IMDNicknameController *)self _tryToReuploadPersonalNicknameWithRetryCount:0 reuploadVersion:v6];
  }
}

- (void)_newDeviceDidSignIntoiMessageWithRetryCount:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [(IMDNicknameController *)self defaults];
  v5 = [v4 getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A410]];
  v6 = [v5 BOOLValue];

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      v9 = v8;
      v10 = @"NO";
      if (v6)
      {
        v10 = @"YES";
      }

      *buf = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Told this device just signed into iMessage, we need to ask our peers for nickname info requestedInfoBefore %@ retry count %@", buf, 0x16u);
    }
  }

  if ((v6 & 1) == 0)
  {
    im_dispatch_after();
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)deviceSignedOutOfiMessage
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Told this device signed out of iMessage, we need to reset the bit that we've asked for the nickname feature info", v8, 2u);
    }
  }

  v4 = [(IMDNicknameController *)self defaults];
  v5 = *MEMORY[0x277D1A3C0];
  [v4 setValue:0 forDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A410]];

  v6 = [(IMDNicknameController *)self defaults];
  [v6 setValue:MEMORY[0x277CBEC28] forDomain:v5 forKey:*MEMORY[0x277D1A3E0]];

  v7 = [(IMDNicknameController *)self defaults];
  [v7 setValue:&unk_283F4E978 forDomain:v5 forKey:*MEMORY[0x277D1A428]];

  [(IMDNicknameController *)self _deletePublicNicknameLocationAndKey];
}

- (void)verifyTruncatedRecordIDMatchesPersonalNickname:(id)a3 forChat:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (-[IMDNicknameController _nicknameFeatureEnabled](self, "_nicknameFeatureEnabled") && [v7 style] == 45)
  {
    v8 = [(IMDNicknameController *)self personalNickname];
    v9 = [(IMDNicknameController *)self substringRecordIDForNickname:v8];

    v10 = [v9 isEqualToString:v6];
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [(IMDNicknameController *)self personalNickname];
        v13 = [v12 recordID];
        v14 = v13;
        v15 = @"NO";
        *v18 = 138413058;
        *&v18[4] = v6;
        if (v10)
        {
          v15 = @"YES";
        }

        *&v18[12] = 2112;
        *&v18[14] = v13;
        v19 = 2112;
        v20 = v9;
        v21 = 2112;
        v22 = v15;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Going to verify if truncated record ID %@ is equivalent to our personal record id %@ current truncated id %@ recordIDS are equals %@", v18, 0x2Au);
      }
    }

    if ((v10 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *v18 = 0;
          _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Truncated record id does not match, marking this chat as dirty so we send a nickname on the next message send", v18, 2u);
        }
      }

      [v7 meCardHasUpdated];
    }

LABEL_19:

    goto LABEL_20;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Nickname sharing is not enabled or trying to verify on a group chat -- bailing verifying record ids", v18, 2u);
    }

    goto LABEL_19;
  }

LABEL_20:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_beginNicknameUpload:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Beginning upload of nickname profile to CloudKit", buf, 2u);
    }
  }

  self->_nicknameIsUploadingToCK = 1;
  [(IMDNicknameController *)self _storePendingNicknameForUpload:v4];
  im_dispatch_after();
}

- (void)_endNicknameUpload
{
  v26 = *MEMORY[0x277D85DE8];
  self->_nicknameIsUploadingToCK = 0;
  [(IMDNicknameController *)self _deletePendingNicknameForUpload];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Nickname upload has completed -- sending out of band nickname updates", buf, 2u);
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(IMDNicknameController *)self chatsToSendNicknameInfoTo];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v5)
  {
    v7 = *v20;
    *&v6 = 138412290;
    v18 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        v10 = +[IMDChatRegistry sharedInstance];
        v11 = [v10 existingChatWithGUID:v9];

        if (v11)
        {
          v12 = [v11 participants];
          v13 = [v11 guid];
          v14 = [v11 lastAddressedLocalHandle];
          [(IMDNicknameController *)self sendPersonalNicknameToRecipients:v12 chatGUID:v13 fromHandle:v14];
        }

        else if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = v18;
            v24 = v9;
            _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "We couldn't find a chat to send nickname info to for guid %@", buf, 0xCu);
          }
        }

        ++v8;
      }

      while (v5 != v8);
      v5 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v5);
  }

  v16 = [(IMDNicknameController *)self chatsToSendNicknameInfoTo];
  [v16 removeAllObjects];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setPersonalNickname:(id)a3
{
  v5 = a3;
  personalNickname = self->_personalNickname;
  p_personalNickname = &self->_personalNickname;
  if (personalNickname != v5)
  {
    v10 = v5;
    objc_storeStrong(p_personalNickname, a3);
    v8 = +[IMDBroadcastController sharedProvider];
    v9 = [v8 broadcasterForAccountListeners];
    [v9 updatePersonalNickname:*p_personalNickname];

    v5 = v10;
  }
}

- (void)setPersonalNickname:(id)a3 completionBlock:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v6 avatar];
      v10 = [v9 imageFilePath];
      *buf = 138412546;
      v28 = v6;
      v29 = 2112;
      v30 = v10;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Client request to store new personal nickname %@ path%@", buf, 0x16u);
    }
  }

  if ([(IMDNicknameController *)self _nicknameFeatureEnabled]&& [(IMDNicknameController *)self _isNicknamesSharingEnabled])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_22B5C21DC;
    aBlock[3] = &unk_278702930;
    v26 = v7;
    v11 = _Block_copy(aBlock);
    v12 = [(IMDNicknameController *)self transferServicesController];
    v13 = objc_opt_respondsToSelector();

    [(IMDNicknameController *)self _beginNicknameUpload:v6];
    v14 = [(IMDNicknameController *)self nickNameRecordID];
    v15 = [v6 description];
    [(IMDNicknameController *)self _showDebugAlertWithHeader:@"Uploading Personal Nickname" message:v15];

    objc_initWeak(buf, self);
    v16 = [(IMDNicknameController *)self transferServicesController];
    if (v13)
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = sub_22B5C21F4;
      v22[3] = &unk_278705C28;
      objc_copyWeak(&v24, buf);
      v23 = v11;
      [v16 setPersonalNickname:v6 oldRecordID:v14 completionBlockWithWallpaperAndRecipeDataTags:v22];

      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }

    else
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = sub_22B5C255C;
      v19[3] = &unk_278705C50;
      objc_copyWeak(&v21, buf);
      v20 = v11;
      [v16 setPersonalNickname:v6 oldRecordID:v14 completionBlockWithWallpaperTags:v19];

      objc_destroyWeak(&v21);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Trying to set a personal nickname when the feature is off", buf, 2u);
      }
    }

    if (v7)
    {
      (*(v7 + 2))(v7, 0, 0);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_uploadPendingNicknameIfNecessary
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(IMDNicknameController *)self _getPendingNicknameForUpload];
  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v3;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Loaded pending nickname from disk: %@ and uploading", &v9, 0xCu);
      }
    }

    v6 = [v3 description];
    [(IMDNicknameController *)self _showDebugAlertWithHeader:@"Found Pending Nickname Upload" message:v6];

    [(IMDNicknameController *)self setPersonalNickname:v3 completionBlock:0];
  }

  else if (v4)
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "No pending nickname found.", &v9, 2u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_resetHandleSharingList
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Resetting handle allow/denylist", v8, 2u);
    }
  }

  [(IMDNicknameController *)self _clearSharingLists];
  [(IMDNicknameController *)self _updateDenyAllowListHandlesVersion];
  [(IMDNicknameController *)self _syncHandleAllowDenyListToOtherDevices];
  v4 = +[IMDBroadcastController sharedProvider];
  v5 = [v4 broadcasterForAccountListeners];
  v6 = [(IMDNicknameController *)self allowListedHandlesForSharing];
  v7 = [(IMDNicknameController *)self denyListedHandlesForSharing];
  [v5 updateNicknameHandlesForSharing:v6 blocked:v7];
}

- (void)_clearSharingLists
{
  v3 = [(IMDNicknameController *)self handleAllowList];
  [v3 removeAllObjects];

  v4 = [(IMDNicknameController *)self handleDenyList];
  [v4 removeAllObjects];

  v5 = [(IMDNicknameController *)self handleSharingKVStore];
  [v5 deleteDatabase];
}

- (void)_clearTransitionedList
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(IMDNicknameController *)self handleTransitionedList];
  [v3 removeAllObjects];

  v4 = [(IMDNicknameController *)self nicknameRecordsKVStore];
  v8 = 0;
  [v4 persistData:0 forKey:@"handleTransitionedList" error:&v8];
  v5 = v8;

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Clearing nickname transition list, error: %@", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_clearActiveNicknameRecords
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(IMDNicknameController *)self activeNicknameRecords];
  [v3 removeAllObjects];

  v4 = [(IMDNicknameController *)self nicknameRecordsKVStore];
  v8 = 0;
  [v4 persistData:0 forKey:@"activeNicknameRecords" error:&v8];
  v5 = v8;

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Clearing nickname active records, error: %@", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_clearIgnoredNicknameRecords
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(IMDNicknameController *)self ignoredNicknameRecords];
  [v3 removeAllObjects];

  v4 = [(IMDNicknameController *)self nicknameRecordsKVStore];
  v8 = 0;
  [v4 persistData:0 forKey:@"ignoredNicknameRecords" error:&v8];
  v5 = v8;

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Clearing nickname ignored records, error: %@", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)currentPersonalNicknamewithCompletionBlock:(id)a3
{
  v4 = a3;
  v10 = [(IMDNicknameController *)self nickNameRecordID];
  v5 = [(IMDNicknameController *)self nickNameDecryptionKey];
  v6 = [(IMDNicknameController *)self wallpaperDataTag];
  v7 = [(IMDNicknameController *)self lowResWallpaperDataTag];
  v8 = [(IMDNicknameController *)self wallpaperDataTag];
  v9 = [(IMDNicknameController *)self avatarRecipeTag];
  [(IMDNicknameController *)self currentPersonalNicknameWithRecordID:v10 decryptionKey:v5 wallpaperDataTag:v6 wallpaperLowResDataTag:v7 wallpaperMetadataTag:v8 avatarRecipeDataTag:v9 completionBlock:v4];
}

- (void)currentPersonalNicknameWithRecordID:(id)a3 decryptionKey:(id)a4 wallpaperDataTag:(id)a5 wallpaperLowResDataTag:(id)a6 wallpaperMetadataTag:(id)a7 avatarRecipeDataTag:(id)a8 completionBlock:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Going to retrieve the current nickname from CloudKit", buf, 2u);
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B5C3384;
  aBlock[3] = &unk_278705C78;
  v23 = v21;
  v42 = v23;
  v24 = _Block_copy(aBlock);
  if ([(IMDNicknameController *)self _nicknameFeatureEnabled])
  {
    if ([v15 length] && objc_msgSend(v16, "length"))
    {
      objc_initWeak(buf, self);
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = sub_22B5C339C;
      v35[3] = &unk_278705CA0;
      v36 = v15;
      objc_copyWeak(&v39, buf);
      v34 = v16;
      v25 = v16;
      v26 = v20;
      v27 = v19;
      v28 = v18;
      v29 = v17;
      v30 = v25;
      v37 = v25;
      v38 = v24;
      LOWORD(v33) = 257;
      v31 = v30;
      v17 = v29;
      v18 = v28;
      v19 = v27;
      v20 = v26;
      [(IMDNicknameController *)self getNicknameWithRecordID:v36 decryptionKey:v31 wallpaperDataTag:v17 wallpaperLowResDataTag:v18 wallpaperMetadataTag:v19 avatarRecipeDataTag:v26 isKnownSender:v33 shouldDecodeImageFields:v35 completionBlock:?];

      objc_destroyWeak(&v39);
      objc_destroyWeak(buf);
      v16 = v34;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Nickname feature is disabled, not fetching current nickname", buf, 2u);
      }
    }

    if (v24)
    {
      (*(v24 + 2))(v24, 0, 0);
    }
  }
}

- (void)getNicknameWithRecordID:(id)a3 decryptionKey:(id)a4 wallpaperDataTag:(id)a5 wallpaperLowResDataTag:(id)a6 wallpaperMetadataTag:(id)a7 avatarRecipeDataTag:(id)a8 isKnownSender:(BOOL)a9 shouldDecodeImageFields:(BOOL)a10 completionBlock:(id)a11
{
  v17 = a5;
  v48 = a6;
  v18 = a7;
  v46 = a8;
  v19 = a11;
  v20 = MEMORY[0x277D192C0];
  v45 = a4;
  v47 = a3;
  v21 = objc_alloc_init(v20);
  [v21 startTimingForKey:@"Nickname Download"];
  v22 = [(IMDNicknameController *)self transferServicesController];
  v23 = objc_opt_respondsToSelector();

  v24 = [(IMDNicknameController *)self transferServicesController];
  if (v23)
  {
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = sub_22B5C3904;
    v55[3] = &unk_278705CC8;
    v43 = &v60;
    v44 = &v56;
    v59 = v18;
    v60 = v19;
    v56 = v21;
    v57 = v17;
    v41 = &v58;
    v42 = &v57;
    v25 = &v59;
    v58 = v48;
    v26 = v18;
    v27 = v48;
    v28 = v17;
    v29 = v17;
    v30 = v19;
    v31 = v21;
    LOWORD(v40) = __PAIR16__(a10, a9);
    v32 = v45;
    v33 = v26;
    v34 = v46;
    [v24 getNicknameWithRecordID:v47 decryptionKey:v45 wallpaperDataTag:v29 wallpaperLowResDataTag:v27 wallpaperMetadataTag:v33 avatarRecipeDataTag:v46 isKnownSender:v40 shouldDecodeImageFields:v55 completionBlock:?];
  }

  else
  {
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = sub_22B5C3AF4;
    v49[3] = &unk_278705CC8;
    v43 = &v54;
    v44 = &v50;
    v53 = v18;
    v54 = v19;
    v50 = v21;
    v51 = v17;
    v41 = &v52;
    v42 = &v51;
    v25 = &v53;
    v52 = v48;
    v35 = v18;
    v36 = v48;
    v28 = v17;
    v37 = v17;
    v38 = v19;
    v39 = v21;
    v32 = v45;
    [v24 getNicknameWithRecordID:v47 decryptionKey:v45 wallpaperDataTag:v37 wallpaperLowResDataTag:v36 wallpaperMetadataTag:v35 isKnownSender:a9 completionBlock:v49];
    v34 = v46;
  }
}

- (void)NicknameWithRecordID:(id)a3 URI:(id)a4 decryptionKey:(id)a5 wallpaperDataTag:(id)a6 wallpaperLowResDataTag:(id)a7 wallpaperMetadataTag:(id)a8 avatarRecipeDataTag:(id)a9 hasWallpaperUpdate:(BOOL)a10 dropNicknameForUnknownContacts:(BOOL)a11 withCompletionBlock:(id)a12
{
  v77 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v59 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a12;
  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v72 = v18;
      v73 = 2112;
      *v74 = v19;
      _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Asked to fetch nickname with recordID %@, sender URI: %@", buf, 0x16u);
    }
  }

  if ([(IMDNicknameController *)self _nicknameFeatureEnabled])
  {
    if (-[__CFString length](v18, "length") && [v19 length] && objc_msgSend(v20, "length"))
    {
      v58 = [v19 _stripFZIDPrefix];
      v57 = [(IMDNicknameController *)self nicknameForRecordID:v18 handle:v58];
      v26 = +[IMDChatRegistry sharedInstance];
      v56 = [v26 _hasSavedContactCardForHandle:v58];

      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = @"NO";
          if (v56)
          {
            v28 = @"YES";
          }

          *buf = 138412546;
          v72 = v58;
          v73 = 2112;
          *v74 = v28;
          _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Is %@ a known sender: %@", buf, 0x16u);
        }
      }

      v55 = [MEMORY[0x277D18A10] sharedInstanceForBagType:0];
      v54 = [v55 objectForKey:@"disable-SNaP-downloads-for-unknown-senders"];
      v29 = [v54 BOOLValue];
      if (IMOSLoggingEnabled())
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = @"NO";
          if (v29)
          {
            v31 = @"YES";
          }

          *buf = 138412290;
          v72 = v31;
          _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "IDS server bag tells us to drop all payloads from unknown senders: %@", buf, 0xCu);
        }
      }

      if (v56 & 1 | (((a11 | v29) & 1) == 0))
      {
        if (v57)
        {
          v32 = [v57 wallpaper];
          if (v32)
          {
            v33 = 0;
          }

          else
          {
            v33 = a10;
          }

          v49 = v33 & v56;
        }

        else
        {
          v49 = 0;
        }

        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = sub_22B5C4748;
        aBlock[3] = &unk_278705CF0;
        v37 = v58;
        v70 = v37;
        v52 = _Block_copy(aBlock);
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = sub_22B5C4878;
        v66[3] = &unk_278705D18;
        v50 = v37;
        v67 = v50;
        v68 = self;
        v51 = _Block_copy(v66);
        if (v56 & 1) != 0 || (v52[2]())
        {
          v53 = 1;
        }

        else
        {
          v53 = v51[2]();
        }

        if (v57)
        {
          v38 = [v57 avatar];
          v39 = [v38 hasImage];

          v40 = (v39 ^ 1) & v53;
        }

        else
        {
          v40 = 0;
        }

        if (IMOSLoggingEnabled())
        {
          v41 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v42 = @"NO";
            if (v53)
            {
              v42 = @"YES";
            }

            *buf = 138412290;
            v72 = v42;
            _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, "Should decode image fields: %@", buf, 0xCu);
          }
        }

        if (v57 && (([v57 avatarRecipe], (v43 = objc_claimAutoreleasedReturnValue()) == 0) ? (v23 ? (v44 = v53) : (v44 = 0)) : (v44 = 0), v43, ((v40 | v49 | v44) & 1) == 0))
        {
          if (IMOSLoggingEnabled())
          {
            v46 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
            {
              *buf = 138413314;
              v72 = v18;
              v73 = 1024;
              *v74 = v56;
              *&v74[4] = 1024;
              *&v74[6] = 1;
              LOWORD(v75) = 1024;
              *(&v75 + 2) = a10;
              HIWORD(v75) = 2112;
              v76 = v57;
              _os_log_impl(&dword_22B4CC000, v46, OS_LOG_TYPE_INFO, "Already have this one, no need to grab it again from CloudKit with recordID %@, knownSender: %i, shouldAttemptWallpaperFetch: %i, hasWallpaperUpdate: %i, existingNickname: %@", buf, 0x28u);
            }
          }

          v24[2](v24, v57, 1, 0, 1);
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v45 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v72 = v18;
              _os_log_impl(&dword_22B4CC000, v45, OS_LOG_TYPE_INFO, "Retrieving nickname from IMTransferAgent with recordID %@", buf, 0xCu);
            }
          }

          objc_initWeak(buf, self);
          v60[0] = MEMORY[0x277D85DD0];
          v60[1] = 3221225472;
          v60[2] = sub_22B5C49E0;
          v60[3] = &unk_278705D40;
          objc_copyWeak(&v65, buf);
          v61 = v50;
          v62 = v19;
          v63 = v18;
          v64 = v24;
          BYTE1(v48) = v53;
          LOBYTE(v48) = v56;
          [(IMDNicknameController *)self getNicknameWithRecordID:v63 decryptionKey:v20 wallpaperDataTag:v59 wallpaperLowResDataTag:v21 wallpaperMetadataTag:v22 avatarRecipeDataTag:v23 isKnownSender:v48 shouldDecodeImageFields:v60 completionBlock:?];

          objc_destroyWeak(&v65);
          objc_destroyWeak(buf);
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v36 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Refusing to download SNaP payload because the sender is unknown and we have been told drop incoming payloads from this or all unknown senders.", buf, 2u);
          }
        }

        if (v24)
        {
          v24[2](v24, 0, 0, 0, 1);
        }
      }

      goto LABEL_77;
    }

    if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v72 = v18;
        v73 = 2112;
        *v74 = v19;
        *&v74[8] = 2112;
        v75 = v20;
        _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "We are missing parameters to fetch the CloudKit record (recordID: %@) (URI: %@) (decryptionKey: %@)", buf, 0x20u);
      }
    }

LABEL_32:
    v24[2](v24, 0, 0, 0, 1);
    goto LABEL_77;
  }

  if (IMOSLoggingEnabled())
  {
    v34 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "Name+Photo sharing feature is disabled, not fetching CloudKit record", buf, 2u);
    }
  }

  if (v24)
  {
    goto LABEL_32;
  }

LABEL_77:

  v47 = *MEMORY[0x277D85DE8];
}

- (void)deleteAllPersonalNicknames:(BOOL)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [(IMDNicknameController *)self _nicknameFeatureEnabled];
  v8 = IMOSLoggingEnabled();
  if (v7)
  {
    if (v8)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Client request to delete personal nickname with recordID", buf, 2u);
      }
    }

    v10 = [(IMDNicknameController *)self transferServicesController];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      objc_initWeak(buf, self);
      v12 = [(IMDNicknameController *)self transferServicesController];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = sub_22B5C4E90;
      v14[3] = &unk_278705D68;
      objc_copyWeak(&v16, buf);
      v17 = a3;
      v15 = v6;
      [v12 deleteAllPersonalNicknamesWithCompletion:v14];

      objc_destroyWeak(&v16);
      objc_destroyWeak(buf);
    }
  }

  else if (v8)
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "The nickname feature is disabled, we shouldn't make any requests to CloudKit", buf, 2u);
    }
  }
}

- (void)_updateSharingPreferencesIfNeededFromMadridMessage:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(IMDNicknameController *)self _nicknameFeatureEnabled])
  {
    v5 = [v4 objectForKey:MessageDictionaryMeCardSharingAudienceKey];
    v6 = [v4 objectForKey:MessageDictionaryMeCardSharingEnabledKey];
    v7 = [v4 objectForKey:MessageDictionaryMeCardSharingNameForkedKey];
    v8 = [v4 objectForKey:MessageDictionaryMeCardSharingImageForkedKey];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"audienceValue %@ enabledValue %@ nameForked %@ imageForked %@", v5, v6, v7, v8];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v24 = v9;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Going to update Me Card preferences %@", buf, 0xCu);
      }
    }

    if (v5 || v6 || v7 || v8)
    {
      [(IMDNicknameController *)self _showDebugAlertWithHeader:@"Sharing Preferences Changed" message:v9];
      if (v5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v5 integerValue];
          if (v11 <= 2)
          {
            v12 = [(IMDNicknameController *)self defaults];
            v13 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
            [v12 setValue:v13 forDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A3D8]];
          }
        }
      }

      if (v7)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [(IMDNicknameController *)self defaults];
          v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "BOOLValue")}];
          [v14 setValue:v15 forDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A3F0]];
        }
      }

      if (v8)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [(IMDNicknameController *)self defaults];
          v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "BOOLValue")}];
          [v16 setValue:v17 forDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A3E8]];
        }
      }

      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = [(IMDNicknameController *)self defaults];
          v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "BOOLValue")}];
          [v18 setValue:v19 forDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A3E0]];

          if (([v6 BOOLValue] & 1) == 0)
          {
            if (IMOSLoggingEnabled())
            {
              v20 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Not enabled, deleting local recordID and cache", buf, 2u);
              }
            }

            [(IMDNicknameController *)self _deletePublicNicknameLocationAndKey];
            [(IMDNicknameController *)self setPersonalNickname:0];
          }
        }
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "The nickname feature is disabled, not taking updates coming from madrid", buf, 2u);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_updateMessageDictionaryWithPendingNicknameUpdates:(id)a3
{
  v4 = a3;
  v5 = [(IMDNicknameController *)self defaults];
  v6 = [v5 getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A408]];
  v7 = [v6 unsignedIntegerValue];

  v8 = [(IMDNicknameController *)self pendingNicknameUpdates];
  v10 = [v8 allKeys];

  if (!v10)
  {
    v10 = [MEMORY[0x277CBEA60] array];
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  [v4 setObject:v9 forKey:MessageDictionaryPendingNicknameUpdatesVersionKey];

  [v4 setObject:v10 forKey:MessageDictionaryPendingNicknameUpdatesHandlesKey];
}

- (void)_updateMessageDictionaryWithNicknameUpdateRecordIDs:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v44 = a3;
  v4 = [(IMDNicknameController *)self defaults];
  v5 = [v4 getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A408]];
  v43 = [v5 unsignedIntegerValue];

  v6 = [(IMDNicknameController *)self pendingNicknameUpdates];
  v7 = [v6 allValues];

  v8 = [(IMDNicknameController *)self handledNicknames];
  v9 = [v8 allValues];

  v10 = [(IMDNicknameController *)self archivedNicknames];
  v11 = [v10 allValues];

  if (v7)
  {
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_33:
    v9 = [MEMORY[0x277CBEA60] array];
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_34;
  }

  v7 = [MEMORY[0x277CBEA60] array];
  if (!v9)
  {
    goto LABEL_33;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_34:
  v11 = [MEMORY[0x277CBEA60] array];
LABEL_4:
  v12 = [MEMORY[0x277CBEB18] array];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v54;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v54 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v53 + 1) + 8 * i);
        v19 = [v18 objectForKeyedSubscript:@"rid"];

        if (v19)
        {
          v20 = [v18 objectForKeyedSubscript:@"rid"];
          [v12 addObject:v20];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v15);
  }

  v41 = v13;
  v42 = v12;

  v21 = [MEMORY[0x277CBEB18] array];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v22 = v9;
  v23 = [v22 countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v50;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v50 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v49 + 1) + 8 * j);
        v28 = [v27 objectForKeyedSubscript:{@"rid", v41}];

        if (v28)
        {
          v29 = [v27 objectForKeyedSubscript:@"rid"];
          [v21 addObject:v29];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v49 objects:v58 count:16];
    }

    while (v24);
  }

  v30 = [MEMORY[0x277CBEB18] array];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v31 = v11;
  v32 = [v31 countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v46;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v46 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v45 + 1) + 8 * k);
        v37 = [v36 objectForKeyedSubscript:{@"rid", v41}];

        if (v37)
        {
          v38 = [v36 objectForKeyedSubscript:@"rid"];
          [v30 addObject:v38];
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v33);
  }

  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v43];
  [v44 setObject:v39 forKey:MessageDictionaryPendingNicknameUpdatesVersionKey];

  [v44 setObject:v42 forKey:MessageDictionaryPendingNicknameUpdatesRecordIDsKey];
  [v44 setObject:v21 forKey:MessageDictionaryCurrentNicknameUpdatesRecordIDsKey];
  [v44 setObject:v30 forKey:MessageDictionaryArchivedNicknameUpdatesRecordIDsKey];

  v40 = *MEMORY[0x277D85DE8];
}

- (id)messageDictionaryWithPersonalRecordIDAndVersion
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  value = [MEMORY[0x277CCABB0] numberWithBool:{-[IMDNicknameController _isNicknamesSharingEnabled](self, "_isNicknamesSharingEnabled")}];
  if (value)
  {
    CFDictionarySetValue(v3, MessageDictionaryMeCardSharingEnabledKey, value);
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = value;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Transporting sharingEnabled %@", buf, 0xCu);
    }
  }

  v5 = [(IMDNicknameController *)self defaults];
  v6 = *MEMORY[0x277D1A3C0];
  v25 = [v5 getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A3D8]];

  if (v25)
  {
    CFDictionarySetValue(v3, MessageDictionaryMeCardSharingAudienceKey, v25);
  }

  v7 = [(IMDNicknameController *)self defaults];
  v24 = [v7 getValueFromDomain:v6 forKey:*MEMORY[0x277D1A400]];

  v8 = [(IMDNicknameController *)self nickNameDecryptionKey];
  v9 = [(IMDNicknameController *)self wallpaperDataTag];
  v10 = [(IMDNicknameController *)self lowResWallpaperDataTag];
  v11 = [(IMDNicknameController *)self wallpaperMetadataTag];
  v12 = [(IMDNicknameController *)self nickNameRecordID];
  if (v24)
  {
    CFDictionarySetValue(v3, MessageDictionaryNicknameVersionKey, v24);
  }

  if (v12)
  {
    CFDictionarySetValue(v3, MessageDictionaryPersonalNicknameRecordIDKey, v12);
  }

  if (v8)
  {
    CFDictionarySetValue(v3, MessageDictionaryPersonalNicknameDecryptKeyKey, v8);
  }

  if (v9)
  {
    CFDictionarySetValue(v3, MessageDictionaryNicknameWallpaperTagKey, v9);
  }

  if (v10)
  {
    CFDictionarySetValue(v3, MessageDictionaryNicknameLowResWallpaperTagKey, v10);
  }

  if (v11)
  {
    CFDictionarySetValue(v3, MessageDictionaryNicknameWallpaperMetadataTagKey, v11);
  }

  v13 = [(IMDNicknameController *)self avatarRecipeTag];
  if (v13)
  {
    CFDictionarySetValue(v3, MessageDictionaryNicknameAvatarRecipeDataTagKey, v13);
  }

  v14 = [(IMDNicknameController *)self defaults];
  v15 = [v14 getValueFromDomain:v6 forKey:*MEMORY[0x277D1A3F0]];

  v16 = [(IMDNicknameController *)self defaults];
  v17 = [v16 getValueFromDomain:v6 forKey:*MEMORY[0x277D1A3E8]];

  if (v15)
  {
    CFDictionarySetValue(v3, MessageDictionaryMeCardSharingNameForkedKey, v15);
  }

  if (v17)
  {
    CFDictionarySetValue(v3, MessageDictionaryMeCardSharingImageForkedKey, v17);
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v8 length];
      v20 = @"YES";
      *buf = 138413570;
      v27 = v25;
      v28 = 2112;
      if (!v19)
      {
        v20 = @"NO";
      }

      v29 = v24;
      v30 = 2112;
      v31 = v20;
      v32 = 2112;
      v33 = v12;
      v34 = 2112;
      v35 = v15;
      v36 = 2112;
      v37 = v17;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Transporting meCardSharingAudience %@ nicknameVersion %@ decryptionKey %@ nickNameID %@ nameForked %@ imageForked %@", buf, 0x3Eu);
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)acceptPendingNicknameForHandleID:(id)a3 updateType:(unint64_t)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(IMDNicknameController *)self pendingNicknameUpdates];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D1AAD0]) initWithDictionaryRepresentation:v8];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Marking nickname as current %@", &v12, 0xCu);
      }
    }

    [(IMDNicknameController *)self _markPendingNicknameAsCurrent:v9 incrementPendingNicknameVersion:1 updateType:a4 broadcastUpdates:1];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_updateNicknameListsIfNeeded:(id)a3
{
  v150 = *MEMORY[0x277D85DE8];
  v102 = a3;
  v4 = [v102 objectForKey:MessageDictionaryPendingNicknameUpdatesVersionKey];
  v101 = [v4 unsignedIntegerValue];

  v5 = [(IMDNicknameController *)self defaults];
  v6 = *MEMORY[0x277D1A408];
  v100 = *MEMORY[0x277D1A3C0];
  v7 = [v5 getValueFromDomain:? forKey:?];
  v8 = [v7 unsignedIntegerValue];

  v9 = [(IMDNicknameController *)self defaults];
  v97 = *MEMORY[0x277D1A3C8];
  v10 = [v9 getValueFromDomain:v100 forKey:?];
  v11 = [v10 unsignedIntegerValue];

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = v6;
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v101];
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
      *buf = 138412546;
      v147 = v14;
      v148 = 2112;
      v149 = v15;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "updateHandledNicknamesIfNeeded incomingPendingNicknameVersion %@ currentPendingNicknameUpdatesVersion %@", buf, 0x16u);

      v6 = v13;
    }
  }

  if (v8 < v101 || v11 < v101)
  {
    v99 = [v102 objectForKey:MessageDictionaryPendingNicknameUpdatesHandlesKey];
    if (v99)
    {
      v19 = [(IMDNicknameController *)self pendingNicknameUpdates];
      v107 = [v19 allKeys];

      v20 = [v107 arrayByExcludingObjectsInArray:v99];
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v147 = v107;
          v148 = 2112;
          v149 = v99;
          _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Our current pending handles %@ our incoming pending handles %@", buf, 0x16u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v147 = v20;
          _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "We need to mark the following handles as having been updated %@", buf, 0xCu);
        }
      }

      v98 = [v20 description];
      [(IMDNicknameController *)self _showDebugAlertWithHeader:@"Peer Device Updated Handled Nicknames" message:v98];
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      obj = v20;
      v23 = [obj countByEnumeratingWithState:&v133 objects:v145 count:16];
      if (v23)
      {
        v24 = *v134;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v134 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v133 + 1) + 8 * i);
            v27 = [(IMDNicknameController *)self pendingNicknameUpdates];
            v28 = [v27 objectForKey:v26];

            v29 = [v28 objectForKeyedSubscript:@"rid"];

            if (v29)
            {
              v143 = v26;
              v30 = [v28 objectForKeyedSubscript:@"rid"];
              v144 = v30;
              v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
              [(IMDNicknameController *)self markProfileRecordsAsIgnored:v31 broadcastUpdates:0];
            }
          }

          v23 = [obj countByEnumeratingWithState:&v133 objects:v145 count:16];
        }

        while (v23);
      }

      v106 = [(IMDNicknameController *)self defaults];
      v105 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v101];
      [v106 setValue:v105 forDomain:v100 forKey:v6];
    }

    else
    {
      v107 = [v102 objectForKey:MessageDictionaryPendingNicknameUpdatesRecordIDsKey];
      obj = [v102 objectForKey:MessageDictionaryCurrentNicknameUpdatesRecordIDsKey];
      v98 = [v102 objectForKey:MessageDictionaryArchivedNicknameUpdatesRecordIDsKey];
      if (!v107 || !obj || !v98)
      {

        goto LABEL_91;
      }

      v106 = [MEMORY[0x277CBEB58] set];
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v32 = [(IMDNicknameController *)self archivedNicknames];
      v33 = [v32 allValues];

      v34 = [v33 countByEnumeratingWithState:&v129 objects:v142 count:16];
      if (v34)
      {
        v35 = *v130;
        do
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v130 != v35)
            {
              objc_enumerationMutation(v33);
            }

            v37 = *(*(&v129 + 1) + 8 * j);
            v38 = [v37 objectForKeyedSubscript:@"rid"];

            if (v38)
            {
              v39 = [v37 objectForKeyedSubscript:@"rid"];
              [v106 addObject:v39];
            }
          }

          v34 = [v33 countByEnumeratingWithState:&v129 objects:v142 count:16];
        }

        while (v34);
      }

      v105 = [MEMORY[0x277CBEB58] set];
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v40 = [(IMDNicknameController *)self handledNicknames];
      v41 = [v40 allValues];

      v42 = [v41 countByEnumeratingWithState:&v125 objects:v141 count:16];
      if (v42)
      {
        v43 = *v126;
        do
        {
          for (k = 0; k != v42; ++k)
          {
            if (*v126 != v43)
            {
              objc_enumerationMutation(v41);
            }

            v45 = *(*(&v125 + 1) + 8 * k);
            v46 = [v45 objectForKeyedSubscript:@"rid"];

            if (v46)
            {
              v47 = [v45 objectForKeyedSubscript:@"rid"];
              [v105 addObject:v47];
            }
          }

          v42 = [v41 countByEnumeratingWithState:&v125 objects:v141 count:16];
        }

        while (v42);
      }

      v104 = [MEMORY[0x277CBEB58] set];
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v48 = [(IMDNicknameController *)self pendingNicknameUpdates];
      v49 = [v48 allValues];

      v50 = [v49 countByEnumeratingWithState:&v121 objects:v140 count:16];
      if (v50)
      {
        v51 = *v122;
        do
        {
          for (m = 0; m != v50; ++m)
          {
            if (*v122 != v51)
            {
              objc_enumerationMutation(v49);
            }

            v53 = *(*(&v121 + 1) + 8 * m);
            v54 = [v53 objectForKeyedSubscript:@"rid"];

            if (v54)
            {
              v55 = [v53 objectForKeyedSubscript:@"rid"];
              [v104 addObject:v55];
            }
          }

          v50 = [v49 countByEnumeratingWithState:&v121 objects:v140 count:16];
        }

        while (v50);
      }

      v96 = [MEMORY[0x277CBEB98] setWithArray:v98];
      v56 = [v106 mutableCopy];
      [v56 minusSet:v96];
      v94 = [v96 mutableCopy];
      [v94 minusSet:v106];
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v103 = v56;
      v57 = [v103 countByEnumeratingWithState:&v117 objects:v139 count:16];
      if (v57)
      {
        v58 = *v118;
        do
        {
          for (n = 0; n != v57; ++n)
          {
            if (*v118 != v58)
            {
              objc_enumerationMutation(v103);
            }

            v60 = *(*(&v117 + 1) + 8 * n);
            v61 = [(IMDNicknameController *)self nicknameForRecordID:v60];
            v62 = [v61 handle];

            if (v62)
            {
              v63 = [(IMDNicknameController *)self archivedNicknames];
              v64 = [v61 handle];
              [v63 setValue:0 forKey:v64];

              v65 = [v61 handle];
              [(IMDNicknameController *)self _deleteHandleIDFromArchivedMap:v65];

              v66 = [(IMDNicknameController *)self activeRecords];
              v67 = [v61 handle];
              v68 = [v66 objectForKey:v67];
              v69 = [v68 isEqualToString:v60];

              if ((v69 & 1) == 0)
              {
                [(IMDNicknameController *)self _deleteOnDiskDataIfNeededForNickname:v61 withNewNickname:0];
              }
            }
          }

          v57 = [v103 countByEnumeratingWithState:&v117 objects:v139 count:16];
        }

        while (v57);
      }

      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v70 = v94;
      v71 = [v70 countByEnumeratingWithState:&v113 objects:v138 count:16];
      if (v71)
      {
        v72 = *v114;
        do
        {
          for (ii = 0; ii != v71; ++ii)
          {
            if (*v114 != v72)
            {
              objc_enumerationMutation(v70);
            }

            v74 = [(IMDNicknameController *)self nicknameForRecordID:*(*(&v113 + 1) + 8 * ii)];
            v75 = [v74 handle];

            if (v75)
            {
              [(IMDNicknameController *)self _markCurrentNicknameAsArchived:v74 incrementPendingNicknameVersion:0];
              v76 = [(IMDNicknameController *)self handledNicknames];
              v77 = [v74 handle];
              [v76 setValue:0 forKey:v77];

              v78 = [v74 handle];
              [(IMDNicknameController *)self _deleteHandleIDFromHandledMap:v78];
            }
          }

          v71 = [v70 countByEnumeratingWithState:&v113 objects:v138 count:16];
        }

        while (v71);
      }

      v95 = [MEMORY[0x277CBEB98] setWithArray:obj];
      v93 = [v105 mutableCopy];
      [v93 minusSet:v95];
      v79 = [v95 mutableCopy];
      [v79 minusSet:v105];
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v80 = v79;
      v81 = [v80 countByEnumeratingWithState:&v109 objects:v137 count:16];
      if (v81)
      {
        v82 = *v110;
        v83 = MEMORY[0x277D1A3A0];
        do
        {
          for (jj = 0; jj != v81; ++jj)
          {
            if (*v110 != v82)
            {
              objc_enumerationMutation(v80);
            }

            v85 = *(*(&v109 + 1) + 8 * jj);
            v86 = [(IMDNicknameController *)self nicknameForRecordID:v85];
            v87 = [v107 containsObject:v85];
            v88 = *v83;
            if (v87)
            {
              v89 = 12;
            }

            else
            {
              v89 = *v83;
            }

            [(IMDNicknameController *)self _markPendingNicknameAsCurrent:v86 incrementPendingNicknameVersion:0 updateType:v89 broadcastUpdates:0];
          }

          v81 = [v80 countByEnumeratingWithState:&v109 objects:v137 count:16];
        }

        while (v81);
      }

      [(IMDNicknameController *)self _broadcastNicknamesMapChanged];
      v90 = [(IMDNicknameController *)self defaults];
      v91 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v101];
      [v90 setValue:v91 forDomain:v100 forKey:v97];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v101];
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
      *buf = 138412546;
      v147 = v17;
      v148 = 2112;
      v149 = v18;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Received older version number (%@, old: %@), dropping pending nickname update", buf, 0x16u);
    }
  }

LABEL_91:

  v92 = *MEMORY[0x277D85DE8];
}

- (void)_showDebugAlertWithHeader:(id)a3 message:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Alert header: %@", &v10, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Alert message: %@", &v10, 0xCu);
    }
  }

  if (IMEnableNicknamesDebug())
  {
    CFUserNotificationDisplayNotice(0.0, 0, 0, 0, 0, v5, v6, @"OK");
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_updateCloudKitRecordIDAndDecryptionKeyIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:MessageDictionaryPersonalNicknameDecryptKeyKey];
  v6 = [v4 objectForKeyedSubscript:MessageDictionaryNicknameWallpaperTagKey];
  v7 = [v4 objectForKeyedSubscript:MessageDictionaryNicknameLowResWallpaperTagKey];
  v8 = [v4 objectForKeyedSubscript:MessageDictionaryNicknameWallpaperMetadataTagKey];
  v9 = [v4 objectForKeyedSubscript:MessageDictionaryPersonalNicknameRecordIDKey];
  v10 = [v4 objectForKeyedSubscript:MessageDictionaryNicknameAvatarRecipeDataTagKey];
  objc_initWeak(&location, self);
  if (v9)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_22B5C71D0;
    v11[3] = &unk_278705D90;
    objc_copyWeak(&v18, &location);
    v12 = v9;
    v13 = v5;
    v14 = v6;
    v15 = v7;
    v16 = v8;
    v17 = v10;
    [(IMDNicknameController *)self currentPersonalNicknameWithRecordID:v12 decryptionKey:v13 wallpaperDataTag:v14 wallpaperLowResDataTag:v15 wallpaperMetadataTag:v16 avatarRecipeDataTag:v17 completionBlock:v11];

    objc_destroyWeak(&v18);
  }

  objc_destroyWeak(&location);
}

- (void)_updateHandleDenyAllowListIfNeeded:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKey:MessageDictionaryNicknameDenyAllowListVersionKey];
  v6 = [v5 unsignedIntegerValue];

  v7 = [(IMDNicknameController *)self defaults];
  v8 = *MEMORY[0x277D1A3C0];
  v9 = *MEMORY[0x277D1A3B8];
  v10 = [v7 getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A3B8]];
  v11 = [v10 unsignedIntegerValue];

  if (v11 >= v6)
  {
    if (IMOSLoggingEnabled())
    {
      v40 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v47 = v6;
        v48 = 2048;
        v49 = v11;
        _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_INFO, "Received older version number (%lu, old: %lu), dropping deny/allow list update", buf, 0x16u);
      }
    }
  }

  else
  {
    v45 = [v4 objectForKeyedSubscript:MessageDictionaryNicknameDenyListKey];
    v44 = [v4 objectForKeyedSubscript:MessageDictionaryNicknameAllowListKey];
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v47 = v6;
        v48 = 2048;
        v49 = v11;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Received newer version number (%lu, old: %lu), updating the deny/allow list store", buf, 0x16u);
      }
    }

    if (IMEnableNicknamesDebug())
    {
      v13 = [MEMORY[0x277CCAB68] stringWithString:&stru_283F23018];
      v14 = [(IMDNicknameController *)self handleDenyList];
      v15 = [v14 allObjects];
      v43 = [v45 arrayByExcludingObjectsInArray:v15];

      v16 = [(IMDNicknameController *)self handleDenyList];
      v17 = [v16 allObjects];
      v42 = [v17 arrayByExcludingObjectsInArray:v45];

      v18 = [(IMDNicknameController *)self handleAllowList];
      v19 = [v18 allObjects];
      v20 = [v44 arrayByExcludingObjectsInArray:v19];

      v21 = [(IMDNicknameController *)self handleAllowList];
      v22 = [v21 allObjects];
      v23 = [v22 arrayByExcludingObjectsInArray:v44];

      if ([v43 count])
      {
        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Deny list added: %@\n", v43];
        [v13 appendString:v24];
      }

      if ([v42 count])
      {
        if ([v13 length])
        {
          [v13 appendString:@"\n"];
        }

        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Deny list removed: %@", v42];
        [v13 appendString:v25];
      }

      if ([v20 count])
      {
        if ([v13 length])
        {
          [v13 appendString:@"\n"];
        }

        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Allow list added: %@", v20];
        [v13 appendString:v26];
      }

      if ([v23 count])
      {
        if ([v13 length])
        {
          [v13 appendString:@"\n"];
        }

        v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Allow list removed: %@", v23];
        [v13 appendString:v27];
      }

      if ([v13 length])
      {
        v28 = [MEMORY[0x277CCAB68] stringWithString:&stru_283F23018];
        if ([v43 count] || objc_msgSend(v42, "count"))
        {
          [v28 appendString:@"Deny list"];
        }

        if ([v20 count] || objc_msgSend(v23, "count"))
        {
          if ([v28 length])
          {
            [v28 appendString:@" and "];
          }

          [v28 appendString:@"Allow list"];
        }

        [v28 appendString:@" Updated from Peer Device"];
        [(IMDNicknameController *)self _showDebugAlertWithHeader:v28 message:v13];
      }
    }

    [(IMDNicknameController *)self _clearSharingLists];
    v29 = [(IMDNicknameController *)self handleDenyList];
    v30 = [MEMORY[0x277CBEB98] setWithArray:v45];
    [(IMDNicknameController *)self _updateHandleList:v29 withHandles:v30 forKey:@"handleBlacklist" broadcastUpdates:0];

    v31 = [(IMDNicknameController *)self handleAllowList];
    v32 = [MEMORY[0x277CBEB98] setWithArray:v44];
    [(IMDNicknameController *)self _updateHandleList:v31 withHandles:v32 forKey:@"handleWhitelist" broadcastUpdates:0];

    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Broadcasting changes to the deny and allow list", buf, 2u);
      }
    }

    v34 = +[IMDBroadcastController sharedProvider];
    v35 = [v34 broadcasterForAccountListeners];
    v36 = [(IMDNicknameController *)self allowListedHandlesForSharing];
    v37 = [(IMDNicknameController *)self denyListedHandlesForSharing];
    [v35 updateNicknameHandlesForSharing:v36 blocked:v37];

    v38 = [(IMDNicknameController *)self defaults];
    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
    [v38 setValue:v39 forDomain:v8 forKey:v9];
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_updateHandleTransitionedListIfNeeded:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKey:MessageDictionaryNicknameTransitionedListVersionKey];
  v6 = [v5 unsignedIntegerValue];

  v7 = [(IMDNicknameController *)self defaults];
  v8 = *MEMORY[0x277D1A3C0];
  v9 = *MEMORY[0x277D1A430];
  v10 = [v7 getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A430]];
  v11 = [v10 unsignedIntegerValue];

  v12 = [v4 objectForKeyedSubscript:MessageDictionaryNicknameTransitionedListKey];
  if (v11 >= v6)
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v20 = 134218240;
        v21 = v6;
        v22 = 2048;
        v23 = v11;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Received older version number (%lu, old: %lu), dropping transitioned list update", &v20, 0x16u);
      }
    }
  }

  else
  {
    [(IMDNicknameController *)self _clearTransitionedList];
    v13 = [(IMDNicknameController *)self handleTransitionedList];
    v14 = [MEMORY[0x277CBEB98] setWithArray:v12];
    [(IMDNicknameController *)self _updateTransitionList:v13 withHandles:v14 forKey:@"handleTransitionedList" broadcastUpdates:0];

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Broadcasting changes to the transitioned list", &v20, 2u);
      }
    }

    [(IMDNicknameController *)self broadcastTransitionedHandlesDidChange];
    v16 = [(IMDNicknameController *)self defaults];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
    [v16 setValue:v17 forDomain:v8 forKey:v9];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_updateActiveNicknameRecordsListIfNeeded:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKey:MessageDictionaryNicknameActiveListVersionKey];
  v6 = [v5 unsignedIntegerValue];

  v7 = [(IMDNicknameController *)self defaults];
  v8 = *MEMORY[0x277D1A3C0];
  v9 = *MEMORY[0x277D1A3B0];
  v10 = [v7 getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A3B0]];
  v11 = [v10 unsignedIntegerValue];

  v12 = [v4 objectForKeyedSubscript:MessageDictionaryNicknameActiveListKey];
  if (v11 >= v6)
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v22 = 134218240;
        v23 = v6;
        v24 = 2048;
        v25 = v11;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Received older version number (%lu, old: %lu), dropping active list update", &v22, 0x16u);
      }
    }
  }

  else
  {
    [(IMDNicknameController *)self _clearActiveNicknameRecords];
    v13 = [(IMDNicknameController *)self activeNicknameRecords];
    [(IMDNicknameController *)self _updateActiveList:v13 withRecords:v12 broadcastUpdates:0];

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Broadcasting changes to the active list", &v22, 2u);
      }
    }

    v15 = +[IMDBroadcastController sharedProvider];
    v16 = [v15 broadcasterForAccountListeners];
    v17 = [(IMDNicknameController *)self activeRecords];
    [v16 updateActiveNicknameRecords:v17];

    v18 = [(IMDNicknameController *)self defaults];
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
    [v18 setValue:v19 forDomain:v8 forKey:v9];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_updateIgnoredNicknameRecordsListIfNeeded:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKey:MessageDictionaryNicknameIgnoredListVersionKey];
  v6 = [v5 unsignedIntegerValue];

  v7 = [(IMDNicknameController *)self defaults];
  v8 = *MEMORY[0x277D1A3C0];
  v9 = *MEMORY[0x277D1A3D0];
  v10 = [v7 getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A3D0]];
  v11 = [v10 unsignedIntegerValue];

  v12 = [v4 objectForKeyedSubscript:MessageDictionaryNicknameIgnoredListKey];
  if (v11 >= v6)
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v27 = 134218240;
        v28 = v6;
        v29 = 2048;
        v30 = v11;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Received older version number (%lu, old: %lu), dropping ignored list update", &v27, 0x16u);
      }
    }
  }

  else
  {
    v13 = [(IMDNicknameController *)self ignoredNicknameRecords];
    v14 = [v13 isEqualToDictionary:v12];

    if (v14)
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Received identical ignoredList. Ignoring.", &v27, 2u);
        }
      }

      v16 = [(IMDNicknameController *)self defaults];
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
      [v16 setValue:v17 forDomain:v8 forKey:v9];
    }

    else
    {
      [(IMDNicknameController *)self _clearIgnoredNicknameRecords];
      v19 = [(IMDNicknameController *)self ignoredNicknameRecords];
      [(IMDNicknameController *)self _updateIgnoredList:v19 withRecords:v12 broadcastUpdates:0];

      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Broadcasting changes to the ignored list", &v27, 2u);
        }
      }

      v21 = +[IMDBroadcastController sharedProvider];
      v22 = [v21 broadcasterForAccountListeners];
      v23 = [(IMDNicknameController *)self ignoredRecords];
      [v22 updateIgnoredNicknameRecords:v23];

      v24 = [(IMDNicknameController *)self defaults];
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
      [v24 setValue:v25 forDomain:v8 forKey:v9];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)_diffActiveRecords:(id)a3 againstPrevious:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v26 = v5;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Checking new active list: %@, against previous active list: %@", buf, 0x16u);
    }
  }

  v8 = [MEMORY[0x277CBEB38] dictionary];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v9 objectForKeyedSubscript:{v13, v20}];
        v15 = [v6 objectForKeyedSubscript:v13];
        if (!v15 || ([v14 isEqualToString:v15] & 1) == 0)
        {
          [v8 setObject:v14 forKeyedSubscript:v13];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = v8;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Sending active records diff: %@", buf, 0xCu);
    }
  }

  v17 = [v8 copy];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)_updateDenyAllowListHandlesVersion
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(IMDNicknameController *)self defaults];
  v4 = *MEMORY[0x277D1A3C0];
  v5 = *MEMORY[0x277D1A3B8];
  v6 = [v3 getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A3B8]];
  v7 = [v6 unsignedIntegerValue];

  v8 = [(IMDNicknameController *)self defaults];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7 + 1];
  [v8 setValue:v9 forDomain:v4 forKey:v5];

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7 + 1];
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Updated allow list handles version to %@", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateTransitionedListHandlesVersion
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(IMDNicknameController *)self defaults];
  v4 = *MEMORY[0x277D1A3C0];
  v5 = *MEMORY[0x277D1A430];
  v6 = [v3 getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A430]];
  v7 = [v6 unsignedIntegerValue];

  v8 = [(IMDNicknameController *)self defaults];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7 + 1];
  [v8 setValue:v9 forDomain:v4 forKey:v5];

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7 + 1];
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Updated transitioned list handles version to %@", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateIsActiveListHandlesVersion
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(IMDNicknameController *)self defaults];
  v4 = *MEMORY[0x277D1A3C0];
  v5 = *MEMORY[0x277D1A3B0];
  v6 = [v3 getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A3B0]];
  v7 = [v6 unsignedIntegerValue];

  v8 = [(IMDNicknameController *)self defaults];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7 + 1];
  [v8 setValue:v9 forDomain:v4 forKey:v5];

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7 + 1];
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Updated active list handles version to %@", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateIsIgnoredListHandlesVersion
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(IMDNicknameController *)self defaults];
  v4 = *MEMORY[0x277D1A3C0];
  v5 = *MEMORY[0x277D1A3D0];
  v6 = [v3 getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A3D0]];
  v7 = [v6 unsignedIntegerValue];

  v8 = [(IMDNicknameController *)self defaults];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7 + 1];
  [v8 setValue:v9 forDomain:v4 forKey:v5];

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7 + 1];
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Updated ignored list handles version to %@", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_syncHandleAllowDenyListToOtherDevices
{
  v14[3] = *MEMORY[0x277D85DE8];
  v3 = [(IMDNicknameController *)self handleAllowList];
  v4 = [v3 allObjects];

  v5 = [(IMDNicknameController *)self handleDenyList];
  v6 = [v5 allObjects];

  if (!v4)
  {
    v4 = [MEMORY[0x277CBEA60] array];
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = [MEMORY[0x277CBEA60] array];
    goto LABEL_3;
  }

  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = [(IMDNicknameController *)self defaults];
  v8 = [v7 getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A3B8]];
  v9 = [v8 unsignedIntegerValue];

  v13[0] = MessageDictionaryNicknameDenyListKey;
  v13[1] = MessageDictionaryNicknameAllowListKey;
  v14[0] = v6;
  v14[1] = v4;
  v13[2] = MessageDictionaryNicknameDenyAllowListVersionKey;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
  v14[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];

  [(IMDNicknameController *)self _sendMessageDictionary:v11 toDevice:0];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_syncHandleTransitionedListToOtherDevices
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = [(IMDNicknameController *)self handleTransitionedList];
  v4 = [v3 allObjects];

  if (!v4)
  {
    v4 = [MEMORY[0x277CBEA60] array];
  }

  v5 = [(IMDNicknameController *)self defaults];
  v6 = [v5 getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A430]];
  v7 = [v6 unsignedIntegerValue];

  v11[0] = MessageDictionaryNicknameTransitionedListKey;
  v11[1] = MessageDictionaryNicknameTransitionedListVersionKey;
  v12[0] = v4;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  [(IMDNicknameController *)self _sendMessageDictionary:v9 toDevice:0];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_syncActiveNicknameRecordsToOtherDevices
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = [(IMDNicknameController *)self activeNicknameRecords];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEAC0] dictionary];
  }

  v4 = [(IMDNicknameController *)self defaults];
  v5 = [v4 getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A3B0]];
  v6 = [v5 unsignedIntegerValue];

  v10[0] = MessageDictionaryNicknameActiveListKey;
  v10[1] = MessageDictionaryNicknameActiveListVersionKey;
  v11[0] = v3;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  [(IMDNicknameController *)self _sendMessageDictionary:v8 toDevice:0];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_syncIgnoredNicknameRecordsToOtherDevices
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = [(IMDNicknameController *)self ignoredNicknameRecords];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEAC0] dictionary];
  }

  v4 = [(IMDNicknameController *)self defaults];
  v5 = [v4 getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A3D0]];
  v6 = [v5 unsignedIntegerValue];

  v13[0] = MessageDictionaryNicknameIgnoredListKey;
  v13[1] = MessageDictionaryNicknameIgnoredListVersionKey;
  v14[0] = v3;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  v14[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 134217984;
      v12 = v6;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Sending ignored list to peer devices, with current version: %lu", &v11, 0xCu);
    }
  }

  [(IMDNicknameController *)self _sendMessageDictionary:v8 toDevice:0];

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_requestingToSendLocalNicknameInfo:(id)a3
{
  v3 = [a3 objectForKey:MessageDictionaryNicknameRequestPersonalNicknameInfoKey];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)handleNicknameUpdatesFromPeerDevice:(id)a3 fromPeerDevice:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(IMDNicknameController *)self _nicknameFeatureEnabled])
  {
    v8 = [v6 description];
    [(IMDNicknameController *)self _showDebugAlertWithHeader:@"Nickname Updates from Peer Device" message:v8];

    if ([(IMDNicknameController *)self _requestingToSendLocalNicknameInfo:v6])
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v12 = 138412290;
          v13 = v7;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "We got a request to send nickname info to a specific device %@", &v12, 0xCu);
        }
      }

      [(IMDNicknameController *)self sendPersonalNicknameRecordIDAndVersionRequestedByDevice:v7];
    }

    else
    {
      [(IMDNicknameController *)self _updateSharingPreferencesIfNeededFromMadridMessage:v6];
      [(IMDNicknameController *)self _updateCloudKitRecordIDAndDecryptionKeyIfNeeded:v6];
      [(IMDNicknameController *)self _updateNicknameListsIfNeeded:v6];
      [(IMDNicknameController *)self _updateHandleDenyAllowListIfNeeded:v6];
      [(IMDNicknameController *)self _updateHandleTransitionedListIfNeeded:v6];
      [(IMDNicknameController *)self _updateActiveNicknameRecordsListIfNeeded:v6];
      [(IMDNicknameController *)self _updateIgnoredNicknameRecordsListIfNeeded:v6];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Nickname feature is disabled, ignoring updates from peer device", &v12, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_updateNameOnlyUpdateForMessage:(id)a3 fromHandleID:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v27 = 136315650;
      v28 = "[IMDNicknameController _updateNameOnlyUpdateForMessage:fromHandleID:]";
      v29 = 2112;
      v30 = v7;
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "%s fromHandleID: %@, message: %@", &v27, 0x20u);
    }
  }

  if ([(IMDNicknameController *)self _nicknameFeatureEnabled])
  {
    v9 = [v6 objectForKey:@"FirstName"];
    v10 = [v6 objectForKey:@"LastName"];
    if (v9 | v10)
    {
      v11 = [(IMDNicknameController *)self pendingNicknameUpdates];
      v12 = [v11 objectForKey:v7];

      v13 = [(IMDNicknameController *)self handledNicknames];
      v14 = [v13 objectForKey:v7];

      v15 = v12;
      if ((v12 || (v15 = v14) != 0) && (v16 = [objc_alloc(MEMORY[0x277D1AAD0]) initWithDictionaryRepresentation:v15], (v17 = v16) != 0))
      {
        [v16 setFirstName:v9];
        [v17 setLastName:v10];
        v18 = IMOSLoggingEnabled();
        if (v12)
        {
          if (v18)
          {
            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              LOWORD(v27) = 0;
              _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Found an existing nickname, updating name", &v27, 2u);
            }
          }

          [(IMDNicknameController *)self _deleteHandleIDFromPendingMap:v7];
        }

        else if (v18)
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            LOWORD(v27) = 0;
            _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Found a handled nickname, updating name", &v27, 2u);
          }
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            LOWORD(v27) = 0;
            _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "No nickname exist, creating a pending one", &v27, 2u);
          }
        }

        v17 = [objc_alloc(MEMORY[0x277D1AAD0]) initWithFirstName:v9 lastName:v10 avatar:0 pronouns:0];
      }

      pendingNicknameUpdates = self->_pendingNicknameUpdates;
      v23 = [v17 persistedDictionaryRepresentation];
      [(NSMutableDictionary *)pendingNicknameUpdates setObject:v23 forKey:v7];

      v24 = [(IMDNicknameController *)self pendingNicknameUpdatesKVStore];
      [(IMDNicknameController *)self _writeNicknameToKVStore:v24 nickname:v17];

      [(IMDNicknameController *)self _updatePendingNicknameVersion];
      [(IMDNicknameController *)self _broadcastNicknamesMapChanged];
    }

    else
    {
      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D4BE8();
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Nickname feature is disabled, ignoring updates from peer device", &v27, 2u);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)sendPendingNicknameUpdatesDidChange
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(IMDNicknameController *)self _updateMessageDictionaryWithPendingNicknameUpdates:v4];
  [(IMDNicknameController *)self _updateMessageDictionaryWithNicknameUpdateRecordIDs:v3];
  [(IMDNicknameController *)self _sendMessageDictionary:v4 toDevice:0 sendType:1];
  [(IMDNicknameController *)self _sendMessageDictionary:v3 toDevice:0 sendType:2];
}

- (BOOL)_isNicknamesSharingEnabled
{
  v3 = [(IMDNicknameController *)self defaults];
  v4 = [v3 getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A3E0]];
  if ([v4 BOOLValue])
  {
    v5 = [(IMDNicknameController *)self _nicknameFeatureEnabled];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)sendNicknamePreferencesDidChange
{
  if ([(IMDNicknameController *)self _isNicknamesSharingEnabled])
  {
    v3 = [(IMDNicknameController *)self nickNameRecordID];
    v4 = [v3 length];

    if (v4)
    {
      if (IMOSLoggingEnabled())
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          *v9 = 0;
          _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Nicknames enabled, and we already have one in cloudkit. Broadcasting to my other devices.", v9, 2u);
        }
      }

      [(IMDNicknameController *)self sendPersonalNicknameRecordIDAndVersionToAllPeers];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Nicknames not enabled, deleting the one we know about.", buf, 2u);
      }
    }

    v7 = [(IMDNicknameController *)self storedPersonalNickname];
    if (v7)
    {
      [(IMDNicknameController *)self deleteAllPersonalNicknames:1 withCompletion:0];
    }

    else if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "No nickname stored locally. Not querying CK.", v10, 2u);
      }
    }
  }
}

- (void)sendPersonalNicknameRecordIDAndVersionRequestedByDevice:(id)a3
{
  v4 = a3;
  v5 = [(IMDNicknameController *)self messageDictionaryWithPersonalRecordIDAndVersion];
  [(IMDNicknameController *)self _sendMessageDictionary:v5 toDevice:v4];
}

- (void)sendPersonalNicknameRecordIDAndVersionToAllPeers
{
  v3 = [(IMDNicknameController *)self messageDictionaryWithPersonalRecordIDAndVersion];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "We should send personal nickname info to all of our own devices", v5, 2u);
    }
  }

  [(IMDNicknameController *)self _sendMessageDictionary:v3 toDevice:0];
}

- (BOOL)_sendMessageDictionary:(id)a3 toDevice:(id)a4 sendType:(unint64_t)a5
{
  v96 = *MEMORY[0x277D85DE8];
  v63 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v91 = v7;
      v92 = 2048;
      v93 = a5;
      v94 = 2112;
      v95 = v63;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Asked to send dictionary to device: %@, send type: %lu, dict: %@", buf, 0x20u);
    }
  }

  if (![(IMDNicknameController *)self _nicknameFeatureEnabled])
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Nickname feature is disabled, not sending updates to peers", buf, 2u);
      }

      goto LABEL_24;
    }

LABEL_25:
    LOBYTE(v21) = 0;
    goto LABEL_94;
  }

  if (!v63)
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Was asked to send a nil dictionary, bailing", buf, 2u);
      }

LABEL_24:

      goto LABEL_25;
    }

    goto LABEL_25;
  }

  v9 = [(IDSService *)self->_nicknameService devices];
  v10 = v9;
  if (v7)
  {
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v79 objects:v89 count:16];
    if (!v12)
    {
LABEL_48:

      LOBYTE(v21) = 0;
      goto LABEL_53;
    }

    v13 = *v80;
LABEL_10:
    v14 = 0;
    while (1)
    {
      if (*v80 != v13)
      {
        objc_enumerationMutation(v11);
      }

      v15 = *(*(&v79 + 1) + 8 * v14);
      v78 = 0;
      v16 = IDSCopyTokenAndIDForTokenWithID();
      v17 = 0;
      v18 = [v15 pushToken];
      v19 = [v18 isEqualToData:v17];

      if (v19)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v11 countByEnumeratingWithState:&v79 objects:v89 count:16];
        if (v12)
        {
          goto LABEL_10;
        }

        goto LABEL_48;
      }
    }

    v88 = v15;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v88 count:1];

    if ((a5 & 2) == 0)
    {
      goto LABEL_47;
    }

    LOBYTE(a5) = 0;
    goto LABEL_29;
  }

  if ((a5 & 2) != 0)
  {
LABEL_29:
    if ([v10 count])
    {
      v22 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v63];
      [v22 setObject:qword_27D8CC188 forKey:qword_27D8CC170];
      v86[0] = *MEMORY[0x277D18650];
      v23 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
      v86[1] = *MEMORY[0x277D18570];
      v87[0] = v23;
      v87[1] = MEMORY[0x277CBEC38];
      v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:2];

      v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v11 = v10;
      v25 = [v11 countByEnumeratingWithState:&v74 objects:v85 count:16];
      if (v25)
      {
        v26 = *v75;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v75 != v26)
            {
              objc_enumerationMutation(v11);
            }

            v28 = *(*(&v74 + 1) + 8 * i);
            v29 = IDSCopyIDForDevice();
            if (v29)
            {
              [v24 addObject:v29];
            }
          }

          v25 = [v11 countByEnumeratingWithState:&v74 objects:v85 count:16];
        }

        while (v25);
      }

      nicknameService = self->_nicknameService;
      v72 = 0;
      v73 = 0;
      v21 = [MEMORY[0x277D1AA08] service:nicknameService sendMessage:v22 toDestinations:v24 priority:300 options:v59 identifier:&v73 error:&v72];
      v31 = v73;
      v32 = v72;
      if (v32)
      {
        v33 = 0;
      }

      else
      {
        v33 = v21;
      }

      if (v33 == 1)
      {
        if (!IMOSLoggingEnabled())
        {
LABEL_52:

          goto LABEL_53;
        }

        v34 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v91 = v31;
          v92 = 2112;
          v93 = v24;
          _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "Successfully sent nickname to message (%@) to destinations %@", buf, 0x16u);
        }
      }

      else
      {
        v34 = IMLogHandleForCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D4C24();
        }
      }

      goto LABEL_52;
    }
  }

LABEL_47:
  LOBYTE(v21) = 0;
  v11 = v10;
LABEL_53:
  if (a5)
  {
    v35 = objc_alloc(MEMORY[0x277D18778]);
    v36 = [v35 initWithService:*MEMORY[0x277D186B0]];
    v58 = [v36 devices];

    v37 = +[IMDAccountController sharedAccountController];
    v60 = [v37 anySessionForServiceName:*MEMORY[0x277D1A620]];

    if (v60 && [v63 count])
    {
      v62 = [MEMORY[0x277CBEB18] array];
      v38 = [MEMORY[0x277CBEB98] setWithArray:v11];
      v39 = [MEMORY[0x277CBEB58] set];
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v40 = v38;
      v41 = [v40 countByEnumeratingWithState:&v68 objects:v84 count:16];
      if (v41)
      {
        v42 = *v69;
        do
        {
          for (j = 0; j != v41; ++j)
          {
            if (*v69 != v42)
            {
              objc_enumerationMutation(v40);
            }

            v44 = *(*(&v68 + 1) + 8 * j);
            v45 = IDSCopyIDForDevice();
            if (v45)
            {
              [v39 addObject:v45];
            }
          }

          v41 = [v40 countByEnumeratingWithState:&v68 objects:v84 count:16];
        }

        while (v41);
      }

      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v46 = v58;
      v47 = [v46 countByEnumeratingWithState:&v64 objects:v83 count:16];
      if (v47)
      {
        v48 = *v65;
        do
        {
          for (k = 0; k != v47; ++k)
          {
            if (*v65 != v48)
            {
              objc_enumerationMutation(v46);
            }

            v50 = *(*(&v64 + 1) + 8 * k);
            v51 = IDSCopyIDForDevice();
            v52 = [v39 containsObject:v51];
            if (v51)
            {
              v53 = v52;
            }

            else
            {
              v53 = 1;
            }

            if ((v53 & 1) == 0)
            {
              if (v7)
              {
                if ([v51 isEqualToString:v7])
                {
                  [v62 addObject:v51];

                  goto LABEL_85;
                }
              }

              else
              {
                [v62 addObject:v51];
              }
            }
          }

          v47 = [v46 countByEnumeratingWithState:&v64 objects:v83 count:16];
        }

        while (v47);
      }

LABEL_85:

      if ([v62 count])
      {
        if (IMOSLoggingEnabled())
        {
          v55 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v91 = v62;
            _os_log_impl(&dword_22B4CC000, v55, OS_LOG_TYPE_INFO, "Sending nickname info to destinations %@", buf, 0xCu);
          }
        }

        LOBYTE(v21) = [v60 sendNicknameUpdatesToPeerDevices:v63 toDestinations:v62];
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v54 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v91 = v60;
        v92 = 2112;
        v93 = v63;
        _os_log_impl(&dword_22B4CC000, v54, OS_LOG_TYPE_INFO, "We could not find a service session for imessage to send the nickname info or no contents in message dictionary %@ %@", buf, 0x16u);
      }
    }
  }

LABEL_94:
  v56 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)sendNameOnlyToHandleIDs:(id)a3 fromHandleID:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v33 = a3;
  v32 = a4;
  v6 = [(IMDNicknameController *)self _nicknameFeatureEnabled];
  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    v31 = self;
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v48 = v33;
        v49 = 2112;
        v50 = v32;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Sending name only to: %@ from: %@", buf, 0x16u);
      }
    }

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v10 = v33;
    v11 = [v10 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v11)
    {
      v12 = *v42;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v42 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = [[IMDHandle alloc] initWithID:*(*(&v41 + 1) + 8 * i) unformattedID:*(*(&v41 + 1) + 8 * i) countryCode:0];
          [v9 addObject:v14];
        }

        v11 = [v10 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v11);
    }

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v16 = v9;
    v17 = [v16 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v17)
    {
      v18 = *v38;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v38 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v37 + 1) + 8 * j);
          v21 = [v20 ID];
          v22 = [v21 _appearsToBePhoneNumber];

          v23 = [v20 ID];
          v24 = v23;
          if (v22)
          {
            v25 = IDSCopyIDForPhoneNumber();
            [v15 setObject:v20 forKey:v25];
          }

          else
          {
            v26 = [v23 _appearsToBeEmail];

            if (v26)
            {
              v24 = [v20 ID];
              v27 = MEMORY[0x231896500]();
              [v15 setObject:v20 forKey:v27];
            }

            else
            {
              v24 = IMLogHandleForCategory();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                sub_22B7D4C8C(buf, v20, &v48, v24);
              }
            }
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v17);
    }

    v28 = [v15 allKeys];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_22B5CAB24;
    v34[3] = &unk_278705DB8;
    v35 = v32;
    v36 = v31;
    [(IMDNicknameController *)v31 _getDevicesForBothNicknameServices:v28 removeNewServiceURIsFromIMessageList:0 completionHandler:v34];
  }

  else if (v7)
  {
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Nickname feature is disabled, not sending personal nickname to chat", buf, 2u);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)queueChatToSendNicknamePostUploadIfNeeded:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(IMDNicknameController *)self nicknameIsUploadingToCK])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [v4 guid];
        v12 = 138412290;
        v13 = v6;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "We are still uploading the nickname to iCloud, queue to send info out of band for chat %@", &v12, 0xCu);
      }
    }

    if (!self->_chatsToSendNicknameInfoTo)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      chatsToSendNicknameInfoTo = self->_chatsToSendNicknameInfoTo;
      self->_chatsToSendNicknameInfoTo = v7;
    }

    v9 = [(IMDNicknameController *)self chatsToSendNicknameInfoTo];
    v10 = [v4 guid];
    [v9 addObject:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_getDevicesForBothNicknameServices:(id)a3 removeNewServiceURIsFromIMessageList:(BOOL)a4 completionHandler:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a5;
  if (![v6 count])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v32 = "[IMDNicknameController _getDevicesForBothNicknameServices:removeNewServiceURIsFromIMessageList:completionHandler:]";
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "idsHandles were nil or empty returning from %s", buf, 0xCu);
      }
    }

    v7[2](v7, 0);
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v11 = dispatch_group_create();
  v12 = dispatch_get_global_queue(25, 0);
  dispatch_group_enter(v11);
  v13 = MEMORY[0x277D1AA00];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_22B5CB414;
  v28[3] = &unk_278705DB8;
  v14 = v9;
  v29 = v14;
  v15 = v11;
  v30 = v15;
  [v13 currentRemoteDevicesForDestinations:v6 service:@"com.apple.private.alloy.nameandphoto" listenerID:@"IMDNicknameController" queue:v12 completionBlock:v28];
  dispatch_group_enter(v15);
  v16 = MEMORY[0x277D1AA00];
  v17 = *MEMORY[0x277D186B0];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_22B5CB5DC;
  v25[3] = &unk_278705DB8;
  v18 = v10;
  v26 = v18;
  v27 = v15;
  v19 = v15;
  [v16 currentRemoteDevicesForDestinations:v6 service:v17 listenerID:@"MessageServiceSession" queue:v12 completionBlock:v25];
  dispatch_time(0, 60000000000);
  v24 = v7;
  v20 = v7;
  v21 = v14;
  v22 = v18;
  IMDispatchGroupNotifyWithTimeout();

  v23 = *MEMORY[0x277D85DE8];
}

- (void)sendPersonalNicknameToRecipients:(id)a3 chatGUID:(id)a4 fromHandle:(id)a5 onlyUseNicknameSendingService:(BOOL)a6 onlySendToThoseLoggedOutOfIMessage:(BOOL)a7
{
  v7 = a7;
  v54 = *MEMORY[0x277D85DE8];
  v34 = a3;
  v33 = a4;
  v12 = a5;
  if ([(IMDNicknameController *)self _nicknameFeatureEnabled])
  {
    v32 = [(IMDNicknameController *)self newNicknameInfoToSend];
    if (v32)
    {
      v30 = a6;
      v31 = v7;
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v49 = v34;
          v50 = 2112;
          v51 = v33;
          v52 = 2112;
          v53 = v12;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Attempting to send nickname to recipients: %@ on chat %@ from handle: %@", buf, 0x20u);
        }
      }

      v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v15 = v34;
      v16 = [v15 countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v16)
      {
        v17 = *v44;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v44 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v43 + 1) + 8 * i);
            if (v19)
            {
              v20 = [*(*(&v43 + 1) + 8 * i) ID];
              v21 = [v20 _appearsToBePhoneNumber];

              v22 = [v19 ID];
              v23 = v22;
              if (v21)
              {
                v24 = IDSCopyIDForPhoneNumber();
              }

              else
              {
                v25 = [v22 _appearsToBeEmail];

                if (!v25)
                {
                  continue;
                }

                v26 = [v19 ID];
                v24 = MEMORY[0x231896500]();
              }

              if (v24)
              {
                [v14 setObject:v19 forKey:v24];
              }
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v43 objects:v47 count:16];
        }

        while (v16);
      }

      v27 = [v14 allKeys];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = sub_22B5CBDC8;
      v35[3] = &unk_278705E08;
      v36 = v12;
      v41 = v31;
      v37 = v33;
      v38 = v32;
      v39 = self;
      v40 = v15;
      v42 = v30;
      [(IMDNicknameController *)self _getDevicesForBothNicknameServices:v27 removeNewServiceURIsFromIMessageList:!v31 completionHandler:v35];
    }

    else
    {
      v14 = IMLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D4DB0();
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Nickname feature is disabled, not sending personal nickname to chat", buf, 2u);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (id)_typeOfNicknameUpdateToShare
{
  v2 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLong:15];

  return v2;
}

- (id)newNicknameInfoToSend
{
  v3 = [(IMDNicknameController *)self nickNameDecryptionKey];
  v4 = [(IMDNicknameController *)self wallpaperDataTag];
  v5 = [(IMDNicknameController *)self lowResWallpaperDataTag];
  v6 = [(IMDNicknameController *)self wallpaperMetadataTag];
  v7 = [(IMDNicknameController *)self nickNameRecordID];
  if ([v3 length] && objc_msgSend(v7, "length"))
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = v8;
    if (v7)
    {
      CFDictionarySetValue(v8, MessageDictionaryNicknameCloudKitRecordKey, v7);
    }

    if (v3)
    {
      CFDictionarySetValue(v9, MessageDictionaryNicknameCloudKitDecryptionRecordKey, v3);
    }

    v10 = [(IMDNicknameController *)self _typeOfNicknameUpdateToShare];
    if (v10)
    {
      CFDictionarySetValue(v9, MessageDictionaryNicknameUpdateInfoIncluded, v10);
    }

    v11 = [(IMDNicknameController *)self personalNickname];
    v12 = [v11 wallpaper];

    if (v12)
    {
      v13 = NSStringFromBOOL();
      if (v13)
      {
        CFDictionarySetValue(v9, MessageDictionaryWallpaperUpdateKey, v13);
      }

      if (v4)
      {
        CFDictionarySetValue(v9, MessageDictionaryNicknameWallpaperTagKey, v4);
      }

      if (v5)
      {
        CFDictionarySetValue(v9, MessageDictionaryNicknameLowResWallpaperTagKey, v5);
      }

      if (v6)
      {
        CFDictionarySetValue(v9, MessageDictionaryNicknameWallpaperMetadataTagKey, v6);
      }
    }

    v14 = [(IMDNicknameController *)self avatarRecipeTag];
    if (v14)
    {
      CFDictionarySetValue(v9, MessageDictionaryNicknameAvatarRecipeDataTagKey, v14);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "User does not have a nickname set, not adding nickname information", v17, 2u);
      }
    }

    v9 = 0;
  }

  return v9;
}

- (id)_idsDeviceFromPushToken:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(IMDNicknameController *)self nicknameService];
  v6 = [v5 devices];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 pushToken];
        v12 = [v11 isEqualToData:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)displayTapToRadarNotificationWithError:(id)a3 invalidData:(id)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D19268] sharedInstance];
  v8 = [v7 isInternalInstall];

  if (v8)
  {
    v9 = MEMORY[0x277CBEBC0];
    v10 = NSTemporaryDirectory();
    v11 = [v9 fileURLWithPath:v10];

    v12 = [MEMORY[0x277CCAD78] UUID];
    v13 = [v12 UUIDString];
    v14 = [v13 stringByAppendingString:@"-nicknameData"];

    v15 = [v11 URLByAppendingPathComponent:v14];
    v16 = [v15 path];
    v27 = 0;
    v17 = [v6 writeToFile:v16 options:1 error:&v27];
    v18 = v27;

    if ((v17 & 1) == 0)
    {
      v19 = IMLogHandleForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D4DEC(v15, v18);
      }
    }

    v20 = MEMORY[0x277CCACA8];
    v21 = [v5 description];
    v22 = [v5 localizedDescription];
    v23 = [v20 stringWithFormat:@"I encountered a BlastDoor explosion when receiving a Name and Photo payload. Error: %@. Localized description: %@", v21, v22];

    v24 = MEMORY[0x277D1AC88];
    v28[0] = v15;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    [v24 submitAndOpenTapToRadarWithNotificationIdentifier:@"com.apple.MobileSMS.IMDNicknameController" notificationTitle:@"Invalid incoming Name and Photo payload" notificationBody:@"Please file a radar. This is a serious issue that needs to be identified and addressed." draftTitle:@"[SNaP] Invalid Name and Photo payload received" problemDescription:v23 attachments:v25 deviceClasses:&unk_283F4EE70 classification:@"Serious Bug" reproducibility:@"I Didn't Try"];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 incomingTopLevelMessage:(id)a5 fromID:(id)a6 messageContext:(id)a7
{
  v73 = *MEMORY[0x277D85DE8];
  v65 = a3;
  v66 = a4;
  v12 = a5;
  v13 = a6;
  v67 = a7;
  v14 = [v12 objectForKey:*MEMORY[0x277D187F8]];
  v15 = [v12 objectForKey:*MEMORY[0x277D18810]];
  v16 = +[IMDChatRegistry sharedInstance];
  v17 = [v16 _hasSavedContactCardForHandle:v13];

  v18 = [MEMORY[0x277D1AB80] contextWithKnownSender:v17];
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v70 = v13;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Received a nickname update from: %@, attempting to blast-door.", buf, 0xCu);
    }
  }

  v68 = 0;
  v20 = [MEMORY[0x277D1A8B0] defuseNicknameCommand:v14 senderContext:v18 error:&v68];
  v21 = v68;
  v22 = v21;
  if (v20 || !v21)
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v70 = v13;
        v71 = 2112;
        v72 = v20;
        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Received a nickname update from: %@, with message: %@", buf, 0x16u);
      }
    }

    if (IMSharedHelperNickNameEnabled())
    {
      if ([(__CFString *)v13 length])
      {
        v25 = [v20 _stringForKey:qword_27D8CC170];
        v57 = [v25 isEqualToString:qword_27D8CC188];

        v63 = [v20 _stringForKey:MessageDictionaryNicknameCloudKitRecordKey];
        v62 = [v20 _dataForKey:MessageDictionaryNicknameCloudKitDecryptionRecordKey];
        v61 = [v20 _dataForKey:MessageDictionaryNicknameWallpaperTagKey];
        v60 = [v20 _dataForKey:MessageDictionaryNicknameLowResWallpaperTagKey];
        v59 = [v20 _dataForKey:MessageDictionaryNicknameWallpaperMetadataTagKey];
        v26 = [v20 _stringForKey:MessageDictionaryWallpaperUpdateKey];
        v27 = v26;
        v28 = @"NO";
        if (v26)
        {
          v28 = v26;
        }

        v64 = v28;

        v56 = NSBOOLFromString();
        v58 = [v20 _dataForKey:MessageDictionaryNicknameAvatarRecipeDataTagKey];
        if (IMOSLoggingEnabled())
        {
          v29 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v70 = v63;
            _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "This message came from user with nickname cloudKitRecord  %@", buf, 0xCu);
          }
        }

        v30 = [v20 _stringForKey:qword_27D8CC170];
        v31 = [v30 isEqualToString:qword_27D8CC180];

        v32 = IMOSLoggingEnabled();
        if (v57)
        {
          if (v32)
          {
            v33 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v70 = v13;
              _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "This is a personal nickname update from: %@", buf, 0xCu);
            }
          }

          v34 = IDSCopyTokenAndIDForTokenWithID();
          v35 = 0;
          v36 = [(IMDNicknameController *)self _idsDeviceFromPushToken:v35];
          if (v36)
          {
            [(IMDNicknameController *)self handleNicknameUpdatesFromPeerDevice:v20 fromPeerDevice:v13];
          }

          else
          {
            v53 = IMLogHandleForCategory();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              sub_22B7D4EAC();
            }
          }
        }

        else if (v31)
        {
          if (v32)
          {
            v45 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v70 = v13;
              _os_log_impl(&dword_22B4CC000, v45, OS_LOG_TYPE_INFO, "This is a name only nickname update from: %@", buf, 0xCu);
            }
          }

          v46 = IDSCopyAddressDestinationForDestination();
          v47 = IDSCopyRawAddressForDestination();

          [(IMDNicknameController *)self _updateNameOnlyUpdateForMessage:v20 fromHandleID:v47];
        }

        else
        {
          if (v32)
          {
            v48 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v70 = v13;
              _os_log_impl(&dword_22B4CC000, v48, OS_LOG_TYPE_INFO, "This is a nickname update from: %@", buf, 0xCu);
            }
          }

          v49 = IDSCopyAddressDestinationForDestination();

          v50 = [v15 BOOLValueForKey:MessageDictionaryTrustedUserKey withDefault:1];
          if (IMOSLoggingEnabled())
          {
            v51 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
            {
              v52 = @"YES";
              if (!v50)
              {
                v52 = @"NO";
              }

              *buf = 138412290;
              v70 = v52;
              _os_log_impl(&dword_22B4CC000, v51, OS_LOG_TYPE_INFO, "The sender is SNaP trusted: %@", buf, 0xCu);
            }
          }

          BYTE1(v55) = v50 ^ 1;
          LOBYTE(v55) = v56;
          [(IMDNicknameController *)self NicknameWithRecordID:v63 URI:v49 decryptionKey:v62 wallpaperDataTag:v61 wallpaperLowResDataTag:v60 wallpaperMetadataTag:v59 avatarRecipeDataTag:v58 hasWallpaperUpdate:v55 dropNicknameForUnknownContacts:&unk_283F1A128 withCompletionBlock:?];
          v13 = v49;
        }
      }

      else
      {
        v37 = IMLogHandleForCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D4F1C(v37, v38, v39, v40, v41, v42, v43, v44);
        }
      }
    }
  }

  else
  {
    v23 = IMLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D4F94(v22);
    }

    [(IMDNicknameController *)self displayTapToRadarNotificationWithError:v22 invalidData:v14];
  }

  v54 = *MEMORY[0x277D85DE8];
}

- (void)broadcastHandlesSharingNicknamesDidChange
{
  v6 = +[IMDBroadcastController sharedProvider];
  v3 = [v6 broadcasterForAccountListeners];
  v4 = [(IMDNicknameController *)self allowListedHandlesForSharing];
  v5 = [(IMDNicknameController *)self denyListedHandlesForSharing];
  [v3 updateNicknameHandlesForSharing:v4 blocked:v5];
}

- (void)broadcastTransitionedHandlesDidChange
{
  v5 = +[IMDBroadcastController sharedProvider];
  v3 = [v5 broadcasterForAccountListeners];
  v4 = [(IMDNicknameController *)self transitionedHandles];
  [v3 updateTransitionedNicknameHandles:v4];
}

- (void)allowHandlesForSharing:(id)a3 onChatGUIDs:(id)a4 fromHandle:(id)a5 forceSend:(BOOL)a6
{
  v6 = a6;
  v85 = *MEMORY[0x277D85DE8];
  v55 = a3;
  v54 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v78 = v55;
      v79 = 2112;
      v80 = v54;
      v81 = 2112;
      v82 = v10;
      v83 = 1024;
      v84 = v6;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Asked to allow handles: %@, on chatGUIDS: %@, from handle: %@, forceSend: %{BOOL}d", buf, 0x26u);
    }
  }

  if (v6 || (-[IMDNicknameController allowListedHandlesForSharing](self, "allowListedHandlesForSharing"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v55 isSubsetOfSet:v12], v12, !v13))
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v55 count];
        *buf = 134217984;
        v78 = v16;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Writing %lu nicknames to allow list", buf, 0xCu);
      }
    }

    [(IMDNicknameController *)self markHandlesAsAllowed:v55, v54];
    if (v54 && [v54 count])
    {
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v17 = v54;
      v18 = [v17 countByEnumeratingWithState:&v69 objects:v76 count:16];
      if (v18)
      {
        v19 = *v70;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v70 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(&v69 + 1) + 8 * i);
            v22 = +[IMDChatRegistry sharedInstance];
            v23 = [v22 existingChatWithGUID:v21];

            if (IMOSLoggingEnabled())
            {
              v24 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v78 = v23;
                _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "We have a chat for guid so sending nickname info %@", buf, 0xCu);
              }
            }

            v25 = [v23 participants];
            v26 = [v23 guid];
            [(IMDNicknameController *)self sendPersonalNicknameToRecipients:v25 chatGUID:v26 fromHandle:v10];
          }

          v18 = [v17 countByEnumeratingWithState:&v69 objects:v76 count:16];
        }

        while (v18);
      }
    }

    else if (v55)
    {
      v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v28 = v55;
      v29 = [v28 countByEnumeratingWithState:&v65 objects:v75 count:16];
      if (v29)
      {
        v30 = *v66;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v66 != v30)
            {
              objc_enumerationMutation(v28);
            }

            v32 = [[IMDHandle alloc] initWithID:*(*(&v65 + 1) + 8 * j) unformattedID:*(*(&v65 + 1) + 8 * j) countryCode:0];
            [v27 addObject:v32];
          }

          v29 = [v28 countByEnumeratingWithState:&v65 objects:v75 count:16];
        }

        while (v29);
      }

      v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v33 = v27;
      v34 = [v33 countByEnumeratingWithState:&v61 objects:v74 count:16];
      if (v34)
      {
        v35 = *v62;
        do
        {
          for (k = 0; k != v34; ++k)
          {
            if (*v62 != v35)
            {
              objc_enumerationMutation(v33);
            }

            v37 = *(*(&v61 + 1) + 8 * k);
            v38 = +[IMDChatRegistry sharedInstance];
            v39 = [v37 ID];
            v40 = [v38 allExistingChatsWithIdentifier:v39];

            if (v40)
            {
              [v56 addObjectsFromArray:v40];
            }
          }

          v34 = [v33 countByEnumeratingWithState:&v61 objects:v74 count:16];
        }

        while (v34);
      }

      if (IMOSLoggingEnabled())
      {
        v41 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v78 = v56;
          _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, "Found these chats: %@", buf, 0xCu);
        }
      }

      v42 = [v56 count];
      if (!v10 || v42)
      {
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v44 = v56;
        v45 = [v44 countByEnumeratingWithState:&v57 objects:v73 count:16];
        if (v45)
        {
          v46 = *v58;
          do
          {
            v47 = 0;
            do
            {
              if (*v58 != v46)
              {
                objc_enumerationMutation(v44);
              }

              v48 = *(*(&v57 + 1) + 8 * v47);
              if (v10 || ([*(*(&v57 + 1) + 8 * v47) lastAddressedLocalHandle], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                if (IMOSLoggingEnabled())
                {
                  v49 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_INFO, "We have a fromHandle, sending the nickname", buf, 2u);
                  }
                }

                v50 = [v48 guid];
                [(IMDNicknameController *)self sendPersonalNicknameToRecipients:v33 chatGUID:v50 fromHandle:v10];
              }

              else
              {
                if (IMOSLoggingEnabled())
                {
                  v51 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_22B4CC000, v51, OS_LOG_TYPE_INFO, "We don't have a fromHandle, so we can't send the nickname", buf, 2u);
                  }
                }

                v10 = 0;
              }

              ++v47;
            }

            while (v45 != v47);
            v52 = [v44 countByEnumeratingWithState:&v57 objects:v73 count:16];
            v45 = v52;
          }

          while (v52);
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v43 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v43, OS_LOG_TYPE_INFO, "We don't have a chat, but we do have a fromHandle, sending the nickname", buf, 2u);
          }
        }

        [(IMDNicknameController *)self sendPersonalNicknameToRecipients:v33 chatGUID:0 fromHandle:v10];
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v78 = v55;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "We tried to allow handle(s) that have already been allowed, bailing. Handles: %@", buf, 0xCu);
    }
  }

  v53 = *MEMORY[0x277D85DE8];
}

- (void)markHandlesAsAllowed:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDNicknameController *)self allowListedHandlesForSharing];
  v6 = [v4 isSubsetOfSet:v5];

  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v4;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Given handles are already in our allow list, no need to do anything. Handles: %@", &v12, 0xCu);
      }
    }
  }

  else
  {
    if (v7)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 134217984;
        v13 = [v4 count];
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Writing %lu nicknames to allow list", &v12, 0xCu);
      }
    }

    v10 = [(IMDNicknameController *)self handleAllowList];
    [(IMDNicknameController *)self _updateHandleList:v10 withHandles:v4 forKey:@"handleWhitelist" broadcastUpdates:1];

    [(IMDNicknameController *)self broadcastHandlesSharingNicknamesDidChange];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)denyHandlesForSharing:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 134217984;
      v9 = [v4 count];
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Writing %lu nicknames to deny list", &v8, 0xCu);
    }
  }

  v6 = [(IMDNicknameController *)self handleDenyList];
  [(IMDNicknameController *)self _updateHandleList:v6 withHandles:v4 forKey:@"handleBlacklist" broadcastUpdates:1];

  [(IMDNicknameController *)self broadcastHandlesSharingNicknamesDidChange];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)markNicknamesAsTransitionedForHandleIDs:(id)a3 isAutoUpdate:(BOOL)a4
{
  v4 = a4;
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v21 = v6;
  if (v6)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v8)
    {
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          v12 = IMOSLoggingEnabled();
          if (v4)
          {
            if (v12)
            {
              v13 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v27 = v11;
                _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Auto update mode is set for handle ID: %@", buf, 0xCu);
              }
            }

            [(IMDNicknameController *)self acceptPendingNicknameForHandleID:v11 updateType:12];
          }

          else if (v12)
          {
            v14 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v27 = v11;
              _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Always ask mode is set for handle ID: %@", buf, 0xCu);
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v8);
    }

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v7 count];
        *buf = 134217984;
        v27 = v16;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Writing handles %lu to transitioned list", buf, 0xCu);
      }
    }

    v17 = [(IMDNicknameController *)self handleTransitionedList];
    [(IMDNicknameController *)self _updateTransitionList:v17 withHandles:v7 forKey:@"handleTransitionedList" broadcastUpdates:1];

    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Broadcasting changes to the transitioned list", buf, 2u);
      }
    }

    [(IMDNicknameController *)self broadcastTransitionedHandlesDidChange];
  }

  else
  {
    v19 = IMLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D503C();
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)markProfileRecords:(id)a3 asActive:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v7 = IMOSLoggingEnabled();
    if (v4)
    {
      if (v7)
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v16 = 134217984;
          v17 = [v6 count];
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Writing record IDs %lu to active list", &v16, 0xCu);
        }
      }

      v9 = [(IMDNicknameController *)self activeNicknameRecords];
      [(IMDNicknameController *)self _updateActiveList:v9 withRecords:v6 broadcastUpdates:1];
    }

    else
    {
      if (v7)
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v16 = 134217984;
          v17 = [v6 count];
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Removing record IDs %lu from active list", &v16, 0xCu);
        }
      }

      v9 = [v6 allKeys];
      [(IMDNicknameController *)self _removeFromList:v9 withKey:@"activeNicknameRecords"];
    }

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Broadcasting changes to the active list", &v16, 2u);
      }
    }

    v10 = +[IMDBroadcastController sharedProvider];
    v13 = [v10 broadcasterForAccountListeners];
    v14 = [(IMDNicknameController *)self activeRecords];
    [v13 updateActiveNicknameRecords:v14];
  }

  else
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D5078();
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_updateHandleList:(id)a3 withHandles:(id)a4 forKey:(id)a5 broadcastUpdates:(BOOL)a6
{
  v6 = a6;
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v11 isSubsetOfSet:v10])
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v25 = v11;
        v26 = 2112;
        v27 = v12;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Given handles are already in our list, no need to do anything. Handles: %@, key: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    [v10 unionSet:v11];
    v23 = 0;
    v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v23];
    v15 = v23;
    v16 = v15;
    if (!v14 || v15)
    {
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v25 = v12;
          v26 = 2112;
          v27 = v16;
          _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Nicknames - We had a problem archiving handle list for key %@ error %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v17 = [(IMDNicknameController *)self handleSharingKVStore];
      v22 = 0;
      [v17 persistData:v14 forKey:v12 error:&v22];
      v18 = v22;

      if (v18 && IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v25 = v12;
          v26 = 2112;
          v27 = v18;
          _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Nicknames - We had a problem writing a handle list update with key %@ -  %@", buf, 0x16u);
        }
      }
    }

    if (v6)
    {
      [(IMDNicknameController *)self _updateDenyAllowListHandlesVersion];
      [(IMDNicknameController *)self _syncHandleAllowDenyListToOtherDevices];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_updateTransitionList:(id)a3 withHandles:(id)a4 forKey:(id)a5 broadcastUpdates:(BOOL)a6
{
  v6 = a6;
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  [v10 unionSet:v11];
  v23 = 0;
  v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v23];
  v14 = v23;
  v15 = v14;
  if (v13)
  {
    v16 = v14 == 0;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    v19 = [(IMDNicknameController *)self nicknameRecordsKVStore];
    v22 = 0;
    [v19 persistData:v13 forKey:v12 error:&v22];
    v20 = v22;

    if (v20 && IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v25 = v12;
        v26 = 2112;
        v27 = v20;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Nicknames - We had a problem writing a transitioned list update with key %@ -  %@", buf, 0x16u);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v25 = v12;
      v26 = 2112;
      v27 = v15;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Nicknames - We had a problem archiving transitioned list for key %@ error %@", buf, 0x16u);
    }
  }

  if (v6)
  {
    [(IMDNicknameController *)self _updateTransitionedListHandlesVersion];
    [(IMDNicknameController *)self _syncHandleTransitionedListToOtherDevices];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_updateActiveList:(id)a3 withRecords:(id)a4 broadcastUpdates:(BOOL)a5
{
  v5 = a5;
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v22 = v9;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Saving new active list: %@, after previous active list: %@", buf, 0x16u);
    }
  }

  if (v8)
  {
    [v8 addEntriesFromDictionary:v9];
    v20 = 0;
    v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v20];
    v12 = v20;
    v13 = v12;
    if (!v11 || v12)
    {
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v22 = @"activeNicknameRecords";
          v23 = 2112;
          v24 = v13;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Nicknames - We had a problem archiving active list for key %@ error %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v14 = [(IMDNicknameController *)self nicknameRecordsKVStore];
      v19 = 0;
      [v14 persistData:v11 forKey:@"activeNicknameRecords" error:&v19];
      v15 = v19;

      if (v15 && IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v22 = @"activeNicknameRecords";
          v23 = 2112;
          v24 = v15;
          _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Nicknames - We had a problem writing a active list update with key %@ -  %@", buf, 0x16u);
        }
      }
    }

    if (v5)
    {
      [(IMDNicknameController *)self _updateIsActiveListHandlesVersion];
      [(IMDNicknameController *)self _syncActiveNicknameRecordsToOtherDevices];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_updateIgnoredList:(id)a3 withRecords:(id)a4 broadcastUpdates:(BOOL)a5
{
  v5 = a5;
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    [v8 addEntriesFromDictionary:v9];
    v20 = 0;
    v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v20];
    v11 = v20;
    v12 = v11;
    if (v10)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v16 = [(IMDNicknameController *)self nicknameRecordsKVStore];
      v19 = 0;
      [v16 persistData:v10 forKey:@"ignoredNicknameRecords" error:&v19];
      v17 = v19;

      if (v17 && IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v22 = @"ignoredNicknameRecords";
          v23 = 2112;
          v24 = v17;
          _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Nicknames - We had a problem writing a ignored list update with key %@ -  %@", buf, 0x16u);
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v22 = @"ignoredNicknameRecords";
        v23 = 2112;
        v24 = v12;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Nicknames - We had a problem archiving ignored list for key %@ error %@", buf, 0x16u);
      }
    }

    if (v5)
    {
      [(IMDNicknameController *)self _updateIsIgnoredListHandlesVersion];
      [(IMDNicknameController *)self _syncIgnoredNicknameRecordsToOtherDevices];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)unknownSenderRecordInfoFor:(id)a3
{
  v4 = a3;
  v5 = [(IMDNicknameController *)self unknownSenderRecordInfo];
  v6 = [v5 objectForKey:v4];

  v7 = [MEMORY[0x277D1AAD0] processSetOfUnknownSenderRecords:v6];

  return v7;
}

- (void)_replaceUnknownSenderRecordInfoListWithInfo:(id)a3 purgeIfNeeded:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    [(IMDNicknameController *)self setUnknownSenderRecordInfo:v6];
    v7 = MEMORY[0x277CCAAB0];
    v8 = MEMORY[0x277CBEAC0];
    v9 = [(IMDNicknameController *)self unknownSenderRecordInfo];
    v10 = [v8 dictionaryWithDictionary:v9];
    v22 = 0;
    v11 = [v7 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v22];
    v12 = v22;

    if (!v11 || v12)
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v24 = @"unknownSenderRecordInfoKey";
          v25 = 2112;
          v26 = v12;
          _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Nicknames - We had a problem archiving unknown sender payload update for key %@ error %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v13 = [(IMDNicknameController *)self unknownSenderRecordInfoKVStore];
      v21 = 0;
      [v13 persistData:v11 forKey:@"unknownSenderRecordInfoKey" error:&v21];
      v14 = v21;

      if (v14 && IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v24 = @"unknownSenderRecordInfoKey";
          v25 = 2112;
          v26 = v14;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Nicknames - We had a problem writing an unknown sender payload update with key %@ -  %@", buf, 0x16u);
        }
      }
    }

    if (v4)
    {
      [(IMDNicknameController *)self purgeUnknownSenderRecordInfoIfNeeded];
    }

    v17 = +[IMDBroadcastController sharedProvider];
    v18 = [v17 broadcasterForAccountListeners];
    v19 = [(IMDNicknameController *)self unknownSenderRecordInfo];
    [v18 updateUnknownSenderRecords:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_removeFromTransitionedList:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(IMDNicknameController *)self _nicknameFeatureEnabled])
  {
    v5 = [(__CFString *)v4 handle];
    if (v5)
    {
      v6 = [(IMDNicknameController *)self handleTransitionedList];
      v7 = [v6 count];

      if (v7)
      {
        v8 = [(IMDNicknameController *)self handleTransitionedList];
        v9 = [v8 containsObject:v5];

        if (v9)
        {
          v10 = [(IMDNicknameController *)self handleTransitionedList];
          [v10 removeObject:v5];

          v11 = MEMORY[0x277CCAAB0];
          v12 = [(IMDNicknameController *)self handleTransitionedList];
          v23 = 0;
          v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v23];
          v14 = v23;

          if (!v13 || v14)
          {
            if (IMOSLoggingEnabled())
            {
              v20 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v25 = @"handleTransitionedList";
                v26 = 2112;
                v27 = v14;
                _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Nicknames - We had a problem archiving list for key %@ error %@", buf, 0x16u);
              }
            }
          }

          else
          {
            v15 = [(IMDNicknameController *)self nicknameRecordsKVStore];
            v22 = 0;
            [v15 persistData:v13 forKey:@"handleTransitionedList" error:&v22];
            v16 = v22;

            if (v16 && IMOSLoggingEnabled())
            {
              v17 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v25 = @"handleTransitionedList";
                v26 = 2112;
                v27 = v16;
                _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Nicknames - We had a problem writing list update with key %@ -  %@", buf, 0x16u);
              }
            }
          }

          [(IMDNicknameController *)self _updateTransitionedListHandlesVersion];
          [(IMDNicknameController *)self _syncHandleTransitionedListToOtherDevices];
          [(IMDNicknameController *)self broadcastTransitionedHandlesDidChange];

          goto LABEL_30;
        }

        if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v25 = v4;
            _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "handleTransitionedList doesn't contain nickname %@", buf, 0xCu);
          }

LABEL_20:
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v25 = v4;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "No handle id for nickname %@", buf, 0xCu);
      }

      goto LABEL_20;
    }

LABEL_30:

    goto LABEL_31;
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Feature is not enabled", buf, 2u);
    }
  }

LABEL_31:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_removeFromList:(id)a3 withKey:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![(IMDNicknameController *)self _nicknameFeatureEnabled])
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_46;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Feature is not enabled", buf, 2u);
    }

LABEL_8:

    goto LABEL_46;
  }

  if (![v6 count])
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_46;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "No nickname handle id provided", buf, 2u);
    }

    goto LABEL_8;
  }

  if ([v7 isEqualToString:@"ignoredNicknameRecords"])
  {
    v8 = [(IMDNicknameController *)self ignoredNicknameRecords];
  }

  else
  {
    if (![v7 isEqualToString:@"activeNicknameRecords"])
    {
      goto LABEL_46;
    }

    v8 = [(IMDNicknameController *)self activeNicknameRecords];
  }

  v10 = v8;
  if (v8)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v12)
    {
      v13 = *v29;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v16 = [v10 objectForKeyedSubscript:v15];
          v17 = v16 == 0;

          if (v17)
          {
            if (IMOSLoggingEnabled())
            {
              v23 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v33 = v15;
                _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Handle id is already removed from list %@", buf, 0xCu);
              }
            }

            goto LABEL_45;
          }

          [v10 removeObjectForKey:v15];
        }

        v12 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v27 = 0;
    v18 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v27];
    v19 = v27;
    v11 = v19;
    if (!v18 || v19)
    {
      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v33 = v7;
          v34 = 2112;
          v35 = v11;
          _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Nicknames - We had a problem archiving list for key %@ error %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v20 = [(IMDNicknameController *)self nicknameRecordsKVStore];
      v26 = 0;
      [v20 persistData:v18 forKey:v7 error:&v26];
      v21 = v26;

      if (v21 && IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v33 = v7;
          v34 = 2112;
          v35 = v21;
          _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Nicknames - We had a problem writing list update with key %@ -  %@", buf, 0x16u);
        }
      }
    }

    if ([v7 isEqualToString:@"ignoredNicknameRecords"])
    {
      [(IMDNicknameController *)self _updateIsIgnoredListHandlesVersion];
      [(IMDNicknameController *)self _syncIgnoredNicknameRecordsToOtherDevices];
    }

    else if ([v7 isEqualToString:@"activeNicknameRecords"])
    {
      [(IMDNicknameController *)self _updateIsActiveListHandlesVersion];
      [(IMDNicknameController *)self _syncActiveNicknameRecordsToOtherDevices];
    }

LABEL_45:
  }

LABEL_46:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_updatePendingNicknameVersion
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(IMDNicknameController *)self defaults];
  v4 = *MEMORY[0x277D1A3C0];
  v5 = *MEMORY[0x277D1A408];
  v6 = [v3 getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A408]];
  v7 = [v6 unsignedIntegerValue];

  v8 = [(IMDNicknameController *)self defaults];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7 + 1];
  [v8 setValue:v9 forDomain:v4 forKey:v5];

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7 + 1];
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Updated pending nickname version to %@", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)saveNicknameForRecordID:(id)a3 handleID:(id)a4 userNickname:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v10 setRecordID:v8];
  [v10 setHandle:v9];
  v11 = [(IMDNicknameController *)self replacedNicknameForHandleIDInHandledMapIfNeeded:v9 nickname:v10];
  v12 = IMOSLoggingEnabled();
  if (v11)
  {
    if (v12)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v28 = 0;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "We replaced userNickname in our handled map w/ an existing handled record", v28, 2u);
      }
    }
  }

  else
  {
    if (v12)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "We could not replace incoming nickname in our handled map, add to pending", buf, 2u);
      }
    }

    [(IMDNicknameController *)self addNicknameToPendingUpdates:v10];
  }

  v15 = [v10 preBlastDoorPayloadData];

  if (v9 && v15)
  {
    v16 = [(IMDNicknameController *)self unknownSenderRecordInfo];
    v17 = [v16 objectForKey:v9];
    v18 = [v17 mutableCopy];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = [MEMORY[0x277CBEB58] set];
    }

    v21 = v20;

    v22 = [v10 preBlastDoorPayloadData];
    v23 = [v22 mutableCopy];

    v24 = [MEMORY[0x277CBEAA8] now];
    [v23 setObject:v24 forKey:@"date"];

    v25 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v23];
    [v21 addObject:v25];

    v26 = [(IMDNicknameController *)self unknownSenderRecordInfo];
    v27 = [v26 mutableCopy];

    [v27 setObject:v21 forKey:v9];
    [(IMDNicknameController *)self _replaceUnknownSenderRecordInfoListWithInfo:v27 purgeIfNeeded:1];
  }

  else
  {
    [(IMDNicknameController *)self purgeUnknownSenderRecordInfoIfNeeded];
  }
}

- (void)clearPendingNicknameForHandleID:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_pendingNicknameUpdates objectForKey:v4];
  v6 = [v5 count];
  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "We got a pending nickname to handle %@", &v12, 0xCu);
      }
    }

    v9 = [objc_alloc(MEMORY[0x277D1AAD0]) initWithDictionaryRepresentation:v5];
    [(IMDNicknameController *)self markNicknameAsUpdated:v9];
  }

  else if (v7)
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "We don't have a pending nickname to clear for handle ID %@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)ignorePendingNicknameForHandleID:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_pendingNicknameUpdates objectForKey:v4];
  v6 = [v5 count];
  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = v5;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "We got a malicious pending nickname to handle %@", &v14, 0xCu);
      }
    }

    v9 = [objc_alloc(MEMORY[0x277D1AAD0]) initWithDictionaryRepresentation:v5];
    [v9 setFirstName:&stru_283F23018];
    [v9 setLastName:&stru_283F23018];
    v10 = [objc_alloc(MEMORY[0x277D1AAE0]) initWithImageName:&stru_283F23018 imageFilePath:&stru_283F23018 contentIsSensitive:0];
    [v9 setAvatar:v10];
    v11 = [objc_alloc(MEMORY[0x277D1ACD8]) initWithFileName:0 filePath:0 lowResFileName:0 lowResFilePath:0 metadata:0 contentIsSensitive:0];
    [v9 setWallpaper:v11];
    [(IMDNicknameController *)self markNicknameAsUpdated:v9];
    [(IMDNicknameController *)self _updatePendingNicknameVersion];
    [(IMDNicknameController *)self sendPendingNicknameUpdatesDidChange];
  }

  else if (v7)
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "We don't have a malicious pending nickname to clear for handle ID %@", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)clearPendingNicknamePhotoForHandleID:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_pendingNicknameUpdates objectForKey:v4];
  v6 = [v5 count];
  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "We got a pending nickname photo to handle %@", &v12, 0xCu);
      }
    }

    v9 = [objc_alloc(MEMORY[0x277D1AAD0]) initWithDictionaryRepresentation:v5];
    [(IMDNicknameController *)self _markNicknamePhotoAsUpdated:v9];
    [(IMDNicknameController *)self _updatePendingNicknameVersion];
    [(IMDNicknameController *)self sendPendingNicknameUpdatesDidChange];
  }

  else if (v7)
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "We don't have a pending nickname to clear for handle ID %@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_markNicknamePhotoAsUpdated:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = IMOSLoggingEnabled();
  if (v4)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [v4 handle];
        v21 = 138412290;
        v22 = v7;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Marking nickname photo %@ as handled", &v21, 0xCu);
      }
    }

    pendingNicknameUpdates = self->_pendingNicknameUpdates;
    v9 = [v4 handle];
    [(NSMutableDictionary *)pendingNicknameUpdates removeObjectForKey:v9];

    [(IMDNicknameController *)self _deleteNicknameFromPendingMap:v4];
    v10 = objc_alloc(MEMORY[0x277D1AAD0]);
    v11 = [v4 firstName];
    v12 = [v4 lastName];
    v13 = [v4 pronouns];
    v14 = [v10 initWithFirstName:v11 lastName:v12 avatar:0 pronouns:v13];

    if ([v14 isUpdateFromNickname:v4 withOptions:20])
    {
      v15 = [v14 persistedDictionaryRepresentation];
      v16 = self->_pendingNicknameUpdates;
      v17 = [v4 handle];
      [(NSMutableDictionary *)v16 setObject:v15 forKey:v17];

      v18 = [(IMDNicknameController *)self pendingNicknameUpdatesKVStore];
      [(IMDNicknameController *)self _writeNicknameToKVStore:v18 nickname:v14];
    }

    [(IMDNicknameController *)self _updateNicknameInHandledMap:v4 updateType:*MEMORY[0x277D1A3A0] broadcastUpdates:1];
    [(IMDNicknameController *)self _updatePendingNicknameVersion];
    [(IMDNicknameController *)self _broadcastNicknamesMapChanged];
  }

  else if (v5)
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Trying to update a nil nickname", &v21, 2u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_broadcastNicknamesMapChanged
{
  v10 = +[IMDBroadcastController sharedProvider];
  v3 = [v10 broadcasterForAccountListeners];
  v4 = [(IMDNicknameController *)self pendingNicknameUpdates];
  v5 = [v4 copy];
  v6 = [(IMDNicknameController *)self handledNicknames];
  v7 = [v6 copy];
  v8 = [(IMDNicknameController *)self archivedNicknames];
  v9 = [v8 copy];
  [v3 updatePendingNicknameUpdates:v5 handledNicknames:v7 archivedNicknames:v9];
}

- (void)_broadcastActiveListChanged
{
  v5 = +[IMDBroadcastController sharedProvider];
  v3 = [v5 broadcasterForAccountListeners];
  v4 = [(IMDNicknameController *)self activeRecords];
  [v3 updateActiveNicknameRecords:v4];
}

- (void)addNicknameToPendingUpdates:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_pendingNicknameUpdates)
  {
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_33;
    }

    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      LOWORD(v35) = 0;
      _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Tried to add a nil nickname to our pending map", &v35, 2u);
    }

LABEL_23:

    goto LABEL_33;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  pendingNicknameUpdates = self->_pendingNicknameUpdates;
  self->_pendingNicknameUpdates = Mutable;

  if (!v5)
  {
    goto LABEL_20;
  }

LABEL_3:
  v6 = [v5 handle];

  if (!v6)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_33;
    }

    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v35 = 138412290;
      v36 = v5;
      _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Tried to add nickname to our pending map without a handle %@", &v35, 0xCu);
    }

    goto LABEL_23;
  }

  v7 = [v5 avatar];
  v8 = [v7 hasImage];

  if (v8)
  {
    goto LABEL_11;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v35 = 138412290;
      v36 = v5;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "New pending nickname has no image %@", &v35, 0xCu);
    }
  }

  v10 = [(IMDNicknameController *)self handledNicknames];
  v11 = [v5 handle];
  v12 = [v10 objectForKey:v11];

  v13 = [objc_alloc(MEMORY[0x277D1AAD0]) initWithDictionaryRepresentation:v12];
  if ([v5 isUpdateFromNickname:v13 withOptions:4])
  {

LABEL_11:
    v14 = [(IMDNicknameController *)self pendingNicknameUpdates];
    v15 = [v5 handle];
    v16 = [v14 objectForKey:v15];

    v17 = [objc_alloc(MEMORY[0x277D1AAD0]) initWithDictionaryRepresentation:v16];
    if (v17 && ([v5 isUpdateFromNickname:v17 withOptions:8] & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v34 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v35 = 138412290;
          v36 = v5;
          _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "Ignoring update for nickname since nothing changed %@", &v35, 0xCu);
        }
      }
    }

    else
    {
      v18 = self->_pendingNicknameUpdates;
      v19 = [v5 persistedDictionaryRepresentation];
      v20 = [v5 handle];
      [(NSMutableDictionary *)v18 setObject:v19 forKey:v20];

      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = self->_pendingNicknameUpdates;
          v35 = 138412546;
          v36 = v5;
          v37 = 2112;
          v38 = v22;
          _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "add nickname to pending updates %@ %@", &v35, 0x16u);
        }
      }

      [(IMDNicknameController *)self _removeFromTransitionedList:v5];
      v23 = [(IMDNicknameController *)self pendingNicknameUpdatesKVStore];
      [(IMDNicknameController *)self _writeNicknameToKVStore:v23 nickname:v5];

      [(IMDNicknameController *)self _updatePendingNicknameVersion];
      [(IMDNicknameController *)self _broadcastNicknamesMapChanged];
    }

    goto LABEL_33;
  }

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v35 = 138412290;
      v36 = v13;
      _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "New pending nickname name hasn't changed, silently updating record ID for previously handled nickname %@", &v35, 0xCu);
    }
  }

  v28 = [v5 recordID];
  [v13 setRecordID:v28];

  handledNicknames = self->_handledNicknames;
  v30 = [v13 persistedDictionaryRepresentation];
  v31 = [v13 handle];
  [(NSMutableDictionary *)handledNicknames setObject:v30 forKey:v31];

  v32 = [(IMDNicknameController *)self handledNicknamesKVStore];
  [(IMDNicknameController *)self _writeNicknameToKVStore:v32 nickname:v13];

LABEL_33:
  v33 = *MEMORY[0x277D85DE8];
}

- (BOOL)replacedNicknameForHandleIDInHandledMapIfNeeded:(id)a3 nickname:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(IMDNicknameController *)self handledNicknames];
  v9 = [v8 objectForKey:v6];

  v10 = [objc_alloc(MEMORY[0x277D1AAD0]) initWithDictionaryRepresentation:v9];
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = [v7 isUpdateFromNickname:v10 withOptions:8];
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = @"NO";
      v17 = 138412802;
      v18 = v10;
      v19 = 2112;
      if (v11)
      {
        v13 = @"YES";
      }

      v20 = v7;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Existing nickname %@ and new nickname %@ are different %@", &v17, 0x20u);
    }
  }

  if ((v11 & 1) == 0)
  {
    [(IMDNicknameController *)self _updateNicknameInHandledMap:v7 updateType:*MEMORY[0x277D1A3A0] broadcastUpdates:1];
    [(IMDNicknameController *)self _updatePendingNicknameVersion];
    [(IMDNicknameController *)self _broadcastNicknamesMapChanged];
    v14 = 1;
  }

  else
  {
LABEL_9:
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)_markCurrentNicknameAsArchived:(id)a3 incrementPendingNicknameVersion:(BOOL)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v5 handle];
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Marking nickname %@ as archived", &v12, 0xCu);
    }
  }

  v8 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v9 = [v8 isNameAndPhotoC3Enabled];

  if ((v9 & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_16;
    }

    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Name Photo FF not enabled", &v12, 2u);
    }

LABEL_15:

    goto LABEL_16;
  }

  if (!v5)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_16;
    }

    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Trying to update a nil nickname", &v12, 2u);
    }

    goto LABEL_15;
  }

  [(IMDNicknameController *)self _updateNicknameInArchivedMap:v5];
LABEL_16:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_deleteOnDiskDataIfNeededForNickname:(id)a3 withNewNickname:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 avatar];
  v8 = [v7 imageFilePath];

  if ([v8 length] && (objc_msgSend(v6, "avatar"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "imageFilePath"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v8, "isEqualToString:", v10), v10, v9, (v11 & 1) == 0))
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v6 handle];
        *buf = 138412546;
        v40 = v14;
        v41 = 2112;
        v42 = v8;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "For nickname %@, deleting old avatar image at path during mark as updated %@", buf, 0x16u);
      }
    }

    v15 = [MEMORY[0x277CCAA00] defaultManager];
    v38 = 0;
    [v15 removeItemAtPath:v8 error:&v38];
    v12 = v38;

    if (v12)
    {
      v16 = IMLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D50F0();
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v17 = [v5 wallpaper];
  v18 = [v17 filePath];

  if ([v18 length])
  {
    v19 = [v6 wallpaper];
    v20 = [v19 filePath];
    v21 = [v18 isEqualToString:v20];

    if ((v21 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = [v6 handle];
          *buf = 138412546;
          v40 = v23;
          v41 = 2112;
          v42 = v18;
          _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "For nickname %@, deleting old wallpaper image at path during mark as updated %@", buf, 0x16u);
        }
      }

      v24 = [MEMORY[0x277CCAA00] defaultManager];
      v37 = 0;
      [v24 removeItemAtPath:v18 error:&v37];
      v12 = v37;

      if (v12)
      {
        v25 = IMLogHandleForCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D5158();
        }
      }
    }
  }

  v26 = [v5 wallpaper];
  v27 = [v26 lowResFilePath];

  if ([v27 length])
  {
    v28 = [v6 wallpaper];
    v29 = [v28 lowResFilePath];
    v30 = [v27 isEqualToString:v29];

    if ((v30 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = [v6 handle];
          *buf = 138412546;
          v40 = v32;
          v41 = 2112;
          v42 = v8;
          _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "For nickname %@, deleting old watch wallpaper image at path during mark as updated %@", buf, 0x16u);
        }
      }

      v33 = [MEMORY[0x277CCAA00] defaultManager];
      v36 = 0;
      [v33 removeItemAtPath:v27 error:&v36];
      v12 = v36;

      if (v12)
      {
        v34 = IMLogHandleForCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D51C0();
        }
      }
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_updateNicknameInArchivedMap:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_archivedNicknames)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    archivedNicknames = self->_archivedNicknames;
    self->_archivedNicknames = Mutable;
  }

  handledNicknames = self->_handledNicknames;
  v8 = [v4 handle];
  v9 = [(NSMutableDictionary *)handledNicknames objectForKey:v8];

  if (v9)
  {
    v10 = self->_archivedNicknames;
    v11 = [v4 handle];
    v12 = [(NSMutableDictionary *)v10 objectForKey:v11];

    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x277D1AAD0]) initWithDictionaryRepresentation:v12];
      v14 = [(IMDNicknameController *)self _isActiveForNickname:v13];
      v15 = IMOSLoggingEnabled();
      if (v14)
      {
        if (v15)
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v27 = 138412290;
            v28 = v13;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Not removing archived nickname as archived nickname is active: %@", &v27, 0xCu);
          }
        }

        goto LABEL_18;
      }

      if (v15)
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = [v4 handle];
          v19 = [v13 recordID];
          v20 = [v4 recordID];
          v27 = 138412802;
          v28 = v18;
          v29 = 2112;
          v30 = v19;
          v31 = 2112;
          v32 = v20;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Replacing archived nickname for handle id %@ from record id %@ to new record id %@", &v27, 0x20u);
        }
      }

      [(IMDNicknameController *)self _deleteOnDiskDataIfNeededForNickname:v13 withNewNickname:v4];
    }

    v13 = [objc_alloc(MEMORY[0x277D1AAD0]) initWithDictionaryRepresentation:v9];
    v21 = [MEMORY[0x277CBEAA8] now];
    [v13 setArchivedDate:v21];

    v22 = self->_archivedNicknames;
    v23 = [v13 persistedDictionaryRepresentation];
    v24 = [v4 handle];
    [(NSMutableDictionary *)v22 setObject:v23 forKey:v24];

    v25 = [(IMDNicknameController *)self archivedNicknamesKVStore];
    [(IMDNicknameController *)self _writeNicknameToKVStore:v25 nickname:v13];

LABEL_18:
    goto LABEL_19;
  }

  v12 = IMLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D52F8(v4);
  }

LABEL_19:

  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isActiveForNickname:(id)a3
{
  v4 = a3;
  v5 = [(IMDNicknameController *)self activeRecords];
  v6 = [v4 handle];
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    v8 = [v4 recordID];
    v9 = [v7 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)markNicknameAsUpdated:(id)a3
{
  v12 = a3;
  v4 = [(IMDNicknameController *)self handledNicknames];
  v5 = [v12 handle];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D1AAD0]) initWithDictionaryRepresentation:v6];
    if ([v12 isUpdateFromNickname:v7 withOptions:4])
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    if ([v12 isUpdateFromNickname:v7 withOptions:2])
    {
      v9 = v8 | 4;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v12 isUpdateFromNickname:v7 withOptions:32];
    if (([v12 isUpdateFromNickname:v7 withOptions:16] | v10))
    {
      v11 = v9 | 8;
    }

    else
    {
      v11 = v9;
    }
  }

  else
  {
    v11 = *MEMORY[0x277D1A3A0];
  }

  [(IMDNicknameController *)self _markPendingNicknameAsCurrent:v12 incrementPendingNicknameVersion:1 updateType:v11 broadcastUpdates:1];
}

- (void)_writeNicknameToKVStore:(id)a3 nickname:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v20 = v6;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "writing nickname %@ to kvstore %@", buf, 0x16u);
    }
  }

  v8 = MEMORY[0x277CCAAB0];
  v9 = [v6 persistedDictionaryRepresentation];
  v18 = 0;
  v10 = [v8 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v18];
  v11 = v18;

  if (!v10 || v11)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v20 = v11;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "We had a problem archiving the nickname object %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v12 = [v6 handle];
    v17 = 0;
    [v5 persistData:v10 forKey:v12 error:&v17];
    v13 = v17;

    if (v13 && IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v20 = v13;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "We had a problem writing the nickname to the pendingNicknameUpdatesKVStore %@", buf, 0xCu);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_deleteNicknameFromPendingMap:(id)a3
{
  v4 = [a3 handle];
  [(IMDNicknameController *)self _deleteHandleIDFromPendingMap:v4];
}

- (void)_deleteHandleIDFromPendingMap:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDNicknameController *)self pendingNicknameUpdatesKVStore];
  v9 = 0;
  [v5 persistData:0 forKey:v4 error:&v9];
  v6 = v9;

  if (v6 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "We got an error trying to remove %@ from the pending map %@", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_deleteHandleIDFromHandledMap:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDNicknameController *)self handledNicknamesKVStore];
  v9 = 0;
  [v5 persistData:0 forKey:v4 error:&v9];
  v6 = v9;

  if (v6 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "We got an error trying to remove %@ from the handled map %@", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_deleteHandleIDFromArchivedMap:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDNicknameController *)self archivedNicknamesKVStore];
  v9 = 0;
  [v5 persistData:0 forKey:v4 error:&v9];
  v6 = v9;

  if (v6 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "We got an error trying to remove %@ from the handled map %@", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)cleanUpNicknameForIDs:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v51 = v5;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Got called to clean up nickname for ids %@", buf, 0xCu);
      }
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v39 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v8)
    {
      v9 = 0;
      v10 = *v45;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v45 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v44 + 1) + 8 * i);
          v13 = [(IMDNicknameController *)self handleAllowList];
          v14 = [v13 containsObject:v12];

          if (v14)
          {
            if (IMOSLoggingEnabled())
            {
              v15 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v51 = v12;
                _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Removing %@ from allow list ", buf, 0xCu);
              }
            }

            v16 = [(IMDNicknameController *)self handleAllowList];
            [v16 removeObject:v12];

            v17 = [(IMDNicknameController *)self handleAllowList];
            v18 = [MEMORY[0x277CBEB98] set];
            [(IMDNicknameController *)self _updateHandleList:v17 withHandles:v18 forKey:@"handleWhitelist" broadcastUpdates:0];

            v9 = 1;
          }

          v19 = [(IMDNicknameController *)self handleDenyList];
          v20 = [v19 containsObject:v12];

          if (v20)
          {
            if (IMOSLoggingEnabled())
            {
              v21 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v51 = v12;
                _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Removing %@ from deny list ", buf, 0xCu);
              }
            }

            v22 = [(IMDNicknameController *)self handleDenyList];
            [v22 removeObject:v12];

            v23 = [(IMDNicknameController *)self handleDenyList];
            v24 = [MEMORY[0x277CBEB98] set];
            [(IMDNicknameController *)self _updateHandleList:v23 withHandles:v24 forKey:@"handleBlacklist" broadcastUpdates:0];

            v9 = 1;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v8);

      if (v9)
      {
        if (IMOSLoggingEnabled())
        {
          v25 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Sending updated allow and deny lists to peers and client", buf, 2u);
          }
        }

        [(IMDNicknameController *)self broadcastHandlesSharingNicknamesDidChange];
        [(IMDNicknameController *)self _updateDenyAllowListHandlesVersion];
        [(IMDNicknameController *)self _syncHandleAllowDenyListToOtherDevices];
      }
    }

    else
    {
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v27 = v7;
    v28 = [v27 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (!v28)
    {

LABEL_63:
      v5 = v39;
      goto LABEL_64;
    }

    v29 = 0;
    v30 = *v41;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v41 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v40 + 1) + 8 * j);
        v33 = [(NSMutableDictionary *)self->_pendingNicknameUpdates objectForKey:v32];

        if (v33)
        {
          if (IMOSLoggingEnabled())
          {
            v34 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v51 = v32;
              _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "Removing %@ from pending nickname updates", buf, 0xCu);
            }
          }

          [(NSMutableDictionary *)self->_pendingNicknameUpdates removeObjectForKey:v32];
          [(IMDNicknameController *)self _deleteHandleIDFromPendingMap:v32];
          v29 = 1;
        }

        v35 = [(NSMutableDictionary *)self->_handledNicknames objectForKey:v32];

        if (v35)
        {
          if (IMOSLoggingEnabled())
          {
            v36 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v51 = v32;
              _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Removing %@ from handled nickname updates", buf, 0xCu);
            }
          }

          [(NSMutableDictionary *)self->_handledNicknames removeObjectForKey:v32];
          [(IMDNicknameController *)self _deleteHandleIDFromHandledMap:v32];
          v29 = 1;
        }
      }

      v28 = [v27 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v28);

    v5 = v39;
    if (v29)
    {
      if (IMOSLoggingEnabled())
      {
        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "Sending updated handled and pending nicknames to peers and client", buf, 2u);
        }
      }

      [(IMDNicknameController *)self _broadcastNicknamesMapChanged];
      [(IMDNicknameController *)self _updatePendingNicknameVersion];
      [(IMDNicknameController *)self sendPendingNicknameUpdatesDidChange];
      goto LABEL_63;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "No handles to clean up, returning.", buf, 2u);
    }
  }

LABEL_64:

  v38 = *MEMORY[0x277D85DE8];
}

- (BOOL)_deviceUnderFirstUnlock
{
  v2 = [MEMORY[0x277D1ACB8] sharedInstance];
  v3 = [v2 isUnderFirstDataProtectionLock];

  return v3;
}

- (BOOL)_isUnderScrutiny
{
  v2 = [(IMDNicknameController *)self defaults];
  v3 = [v2 getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A420]];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)_deleteDataUnderScrutiny
{
  v3 = IMLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_22B7D5388();
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Deleting data from pending nicknames KVStore", buf, 2u);
    }
  }

  v5 = [(IMDNicknameController *)self pendingNicknameUpdatesKVStore];
  [v5 deleteDatabase];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Deleting data from handled nicknames KVStore", v13, 2u);
    }
  }

  v7 = [(IMDNicknameController *)self handledNicknamesKVStore];
  [v7 deleteDatabase];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Deleting data from archived nicknames KVStore", v12, 2u);
    }
  }

  v9 = [(IMDNicknameController *)self archivedNicknamesKVStore];
  [v9 deleteDatabase];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Exiting scrutiny mode", v11, 2u);
    }
  }

  [(IMDNicknameController *)self _setUnderScrutiny:0];
}

- (void)_loadAllInfoFromDiskIfAble
{
  if ([(IMDNicknameController *)self _nicknameFeatureEnabled])
  {
    v3 = [(IMDNicknameController *)self _deviceUnderFirstUnlock];
    v4 = IMOSLoggingEnabled();
    if (v3)
    {
      if (v4)
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Device is under first unlock so we need to put updates into a temporary map until we leave first unlock", buf, 2u);
        }
      }

      self->_needToLoadMapsInfoFromDisk = 1;
    }

    else
    {
      if (v4)
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *v14 = 0;
          _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "We are not under first unlock so we are able to load all data", v14, 2u);
        }
      }

      if ([(IMDNicknameController *)self _isUnderScrutiny])
      {
        if (IMOSLoggingEnabled())
        {
          v8 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            *v13 = 0;
            _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "IMDNicknameController is already in scrutiny mode before attempting to load data from disk. Will delete existing data.", v13, 2u);
          }
        }

        [(IMDNicknameController *)self _deleteDataUnderScrutiny];
      }

      [(IMDNicknameController *)self loadPersonalNicknameIfNeeded];
      [(IMDNicknameController *)self reuploadProfileIfNeeded];
      [(IMDNicknameController *)self loadNicknamesFromKVStore];
      [(IMDNicknameController *)self loadSharingHandlesPrefs];
      [(IMDNicknameController *)self loadHandledTransitioned];
      [(IMDNicknameController *)self loadUnknownSenderRecordInfoFromKVStore];
      v9 = [(IMDNicknameController *)self activeNicknameRecords];
      v10 = [(IMDNicknameController *)self loadListForKey:@"activeNicknameRecords" list:v9];
      [(IMDNicknameController *)self setActiveNicknameRecords:v10];

      v11 = [(IMDNicknameController *)self ignoredNicknameRecords];
      v12 = [(IMDNicknameController *)self loadListForKey:@"ignoredNicknameRecords" list:v11];
      [(IMDNicknameController *)self setIgnoredNicknameRecords:v12];

      [(IMDNicknameController *)self evaluateAccountStateForFeatureEligibility];
      [(IMDNicknameController *)self _evaluateIfAccountHasMultiplePhoneNumbers];
      [(IMDNicknameController *)self _uploadPendingNicknameIfNecessary];
      self->_needToLoadMapsInfoFromDisk = 0;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Nickname feature is disabled, not loading nickname info from disk", v16, 2u);
    }
  }
}

- (void)loadPersonalNicknameIfNeeded
{
  if ([(IMDNicknameController *)self _nicknameFeatureEnabled])
  {
    v3 = [(IMDNicknameController *)self storedPersonalNickname];
    if (v3)
    {
      [(IMDNicknameController *)self setPersonalNickname:v3];
    }

    else
    {
      v4 = [(IMDNicknameController *)self nickNameRecordID];

      if (v4)
      {
        objc_initWeak(buf, self);
        v5[0] = MEMORY[0x277D85DD0];
        v5[1] = 3221225472;
        v5[2] = sub_22B5D4464;
        v5[3] = &unk_278705E50;
        objc_copyWeak(&v6, buf);
        [(IMDNicknameController *)self currentPersonalNicknamewithCompletionBlock:v5];
        objc_destroyWeak(&v6);
        objc_destroyWeak(buf);
      }
    }
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Not going to load personal nickname, feature is disabled", buf, 2u);
    }
  }
}

- (void)loadNicknamesFromKVStore
{
  v39 = *MEMORY[0x277D85DE8];
  if (!self->_pendingNicknameUpdates)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    pendingNicknameUpdates = self->_pendingNicknameUpdates;
    self->_pendingNicknameUpdates = Mutable;
  }

  if (!self->_handledNicknames)
  {
    v5 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    handledNicknames = self->_handledNicknames;
    self->_handledNicknames = v5;
  }

  if (!self->_archivedNicknames)
  {
    v7 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    archivedNicknames = self->_archivedNicknames;
    self->_archivedNicknames = v7;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0x7FFFFFFFLL];
      v33 = 138412290;
      v34 = v10;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Limit to load of nicknames %@", &v33, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v33) = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Setting the IMDNicknameController scrutiny flag", &v33, 2u);
    }
  }

  [(IMDNicknameController *)self _setUnderScrutiny:1];
  v12 = self->_pendingNicknameUpdates;
  v13 = [(IMDNicknameController *)self pendingNicknameUpdatesKVStore];
  v14 = [(IMDNicknameController *)self _populateNicknameDictionary:v12 forKVStore:v13 limitToLoad:0x7FFFFFFFLL];

  v15 = self->_handledNicknames;
  v16 = [(IMDNicknameController *)self handledNicknamesKVStore];
  v17 = [(IMDNicknameController *)self _populateNicknameDictionary:v15 forKVStore:v16 limitToLoad:0x7FFFFFFFLL];

  v18 = self->_archivedNicknames;
  v19 = [(IMDNicknameController *)self archivedNicknamesKVStore];
  v20 = [(IMDNicknameController *)self _populateNicknameDictionary:v18 forKVStore:v19 limitToLoad:0x7FFFFFFFLL];

  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      LOWORD(v33) = 0;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Clearing the IMDNicknameController scrutiny flag", &v33, 2u);
    }
  }

  [(IMDNicknameController *)self _setUnderScrutiny:0];
  if ((!v14 || !v17 || !v20) && IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = @"NO";
      if (v17)
      {
        v24 = @"YES";
      }

      else
      {
        v24 = @"NO";
      }

      if (v14)
      {
        v25 = @"YES";
      }

      else
      {
        v25 = @"NO";
      }

      v33 = 138412802;
      v34 = v24;
      v35 = 2112;
      v36 = v25;
      if (v20)
      {
        v23 = @"YES";
      }

      v37 = 2112;
      v38 = v23;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "We did not have success loading handled nicknames %@ - updates %@ - archived %@", &v33, 0x20u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = self->_pendingNicknameUpdates;
      v33 = 138412290;
      v34 = v27;
      _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Created pending nickname map %@", &v33, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = self->_handledNicknames;
      v33 = 138412290;
      v34 = v29;
      _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Created handled nickname map %@", &v33, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = self->_archivedNicknames;
      v33 = 138412290;
      v34 = v31;
      _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Created archived nickname map %@", &v33, 0xCu);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)loadHandledTransitioned
{
  v27 = *MEMORY[0x277D85DE8];
  if (!self->_handleTransitionedList)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    handleTransitionedList = self->_handleTransitionedList;
    self->_handleTransitionedList = v3;
  }

  v5 = [(IMDNicknameController *)self nicknameRecordsKVStore];
  v24 = 0;
  v6 = [v5 dataForKey:@"handleTransitionedList" error:&v24];
  v7 = v24;

  if (v7)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v26 = v7;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Nicknames - We got an error loading the handle transitioned list data store %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v9 setWithObjects:{v10, v11, v12, objc_opt_class(), 0}];
    if (v6)
    {
      v23 = 0;
      v14 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v13 fromData:v6 error:&v23];
      v15 = v23;
      if (v15 && IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v26 = v15;
          _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Nicknames - Failed to unarchive transitioned list %@", buf, 0xCu);
        }
      }

      v17 = [(IMDNicknameController *)self handleTransitionedList];
      [v17 unionSet:v14];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "No transitioned list data to load", buf, 2u);
        }
      }

      v15 = 0;
      v14 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [(IMDNicknameController *)self handleTransitionedList];
        v21 = [v20 count];
        *buf = 134217984;
        v26 = v21;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Successfully loaded %lu transitioned list handles", buf, 0xCu);
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)loadListForKey:(id)a3 list:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  Mutable = a4;
  v8 = [MEMORY[0x277CBEC10] mutableCopy];
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v9 = [(IMDNicknameController *)self nicknameRecordsKVStore];
  v26 = 0;
  v10 = [v9 dataForKey:v6 error:&v26];
  v11 = v26;

  if (v11)
  {
    if (!IMOSLoggingEnabled())
    {
LABEL_8:
      v13 = v8;
      goto LABEL_9;
    }

    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = v11;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Nicknames - We got an error loading the data store %@", buf, 0xCu);
    }

LABEL_7:

    goto LABEL_8;
  }

  if (!v10)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_8;
    }

    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "No list data to load", buf, 2u);
    }

    goto LABEL_7;
  }

  v16 = MEMORY[0x277CCAAC8];
  v17 = objc_opt_class();
  v25 = 0;
  v18 = [v16 unarchivedDictionaryWithKeysOfClass:v17 objectsOfClass:objc_opt_class() fromData:v10 error:&v25];
  v19 = v25;
  if (v19)
  {
    v20 = v19;
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v28 = v20;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Nicknames - Failed to unarchive list %@", buf, 0xCu);
      }
    }

    v13 = v8;
  }

  else
  {
    v22 = [v18 mutableCopy];

    [v22 addEntriesFromDictionary:Mutable];
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = [v22 count];
        *buf = 134217984;
        v28 = v24;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Successfully loaded %lu list handles", buf, 0xCu);
      }
    }

    v13 = v22;
  }

LABEL_9:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)loadSharingHandlesPrefs
{
  v43 = *MEMORY[0x277D85DE8];
  if (!self->_handleAllowList)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    handleAllowList = self->_handleAllowList;
    self->_handleAllowList = v3;
  }

  if (!self->_handleDenyList)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    handleDenyList = self->_handleDenyList;
    self->_handleDenyList = v5;
  }

  v7 = [(IMDNicknameController *)self handleSharingKVStore];
  v38 = 0;
  v8 = [v7 dataForKey:@"handleWhitelist" error:&v38];
  v9 = v38;

  if (!v9)
  {
    v11 = [(IMDNicknameController *)self handleSharingKVStore];
    v37 = 0;
    v12 = [v11 dataForKey:@"handleBlacklist" error:&v37];
    v9 = v37;

    if (v9)
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v40 = v9;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Nicknames - We got an error loading the handle deny list data store %@", buf, 0xCu);
        }
      }

LABEL_43:

      goto LABEL_44;
    }

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v14 setWithObjects:{v15, v16, v17, objc_opt_class(), 0}];
    if (v8)
    {
      v36 = 0;
      v34 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v18 fromData:v8 error:&v36];
      v19 = v36;
      if (v19 && IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v40 = v19;
          _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Nicknames - Failed to unarchive allow list %@", buf, 0xCu);
        }
      }

      v21 = [(IMDNicknameController *)self handleAllowList];
      [v21 unionSet:v34];

      if (v12)
      {
LABEL_22:
        v35 = v19;
        v22 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v18 fromData:v12 error:&v35];
        v23 = v35;

        if (v23 && IMOSLoggingEnabled())
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v40 = v23;
            _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Nicknames - Failed to unarchive deny list %@", buf, 0xCu);
          }
        }

        v25 = [(IMDNicknameController *)self handleDenyList];
        [v25 unionSet:v22];

LABEL_38:
        if (IMOSLoggingEnabled())
        {
          v28 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = [(IMDNicknameController *)self handleAllowList];
            v30 = [v29 count];
            v31 = [(IMDNicknameController *)self handleDenyList];
            v32 = [v31 count];
            *buf = 134218240;
            v40 = v30;
            v41 = 2048;
            v42 = v32;
            _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Successfully loaded %lu allow list handles %lu deny list handles", buf, 0x16u);
          }
        }

        goto LABEL_43;
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "No allow list data to load", buf, 2u);
        }
      }

      v19 = 0;
      v34 = 0;
      if (v12)
      {
        goto LABEL_22;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "No deny list data to load", buf, 2u);
      }
    }

    v22 = 0;
    v23 = v19;
    goto LABEL_38;
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v40 = v9;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Nicknames - We got an error loading the handle allow list data store %@", buf, 0xCu);
    }
  }

LABEL_44:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)loadUnknownSenderRecordInfoFromKVStore
{
  v31 = *MEMORY[0x277D85DE8];
  if (!self->_unknownSenderRecordInfo)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    unknownSenderRecordInfo = self->_unknownSenderRecordInfo;
    self->_unknownSenderRecordInfo = Mutable;
  }

  v5 = [(IMDNicknameController *)self unknownSenderRecordInfoKVStore];
  v28 = 0;
  v25 = [v5 dataForKey:@"unknownSenderRecordInfoKey" error:&v28];
  v26 = v28;

  if (v26)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v30 = v26;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Nicknames - We got an error loading the unknown sender payload data store %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v7 setWithObjects:{v8, v9, v10, v11, v12, v13, v14, v15, objc_opt_class(), 0}];
    if (v25)
    {
      v27 = 0;
      v17 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v16 fromData:v25 error:&v27];
      v18 = v27;
      if (v18 && IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v30 = v18;
          _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Nicknames - Failed to unarchive unknown sender payloads list %@", buf, 0xCu);
        }
      }

      [(NSMutableDictionary *)self->_unknownSenderRecordInfo addEntriesFromDictionary:v17];
    }

    else if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "No unknown sender info payloads data to load", buf, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [(IMDNicknameController *)self unknownSenderRecordInfo];
        v23 = [v22 count];
        *buf = 134217984;
        v30 = v23;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Successfully loaded %lu unknown sender payload list handles", buf, 0xCu);
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)_populateNicknameDictionary:(id)a3 forKVStore:(id)a4 limitToLoad:(unint64_t)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v33 = 0;
  v24 = a4;
  v25 = [v24 datasUpToLimit:a5 deleteContext:0 error:&v33];
  v26 = v33;
  if (v26)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v35 = v26;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "We got an error loading the nicknames data store %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = v25;
    v9 = [v8 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v9)
    {
      v10 = *v30;
      do
      {
        v11 = 0;
        do
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v29 + 1) + 8 * v11);
          v13 = MEMORY[0x277CCAAC8];
          v14 = IMNicknameUnarchivingClasses();
          v28 = 0;
          v15 = [v13 _strictlyUnarchivedObjectOfClasses:v14 fromData:v12 error:&v28];
          v16 = v28;

          if (v15)
          {
            v17 = v16 == 0;
          }

          else
          {
            v17 = 0;
          }

          if (v17)
          {
            v19 = [objc_alloc(MEMORY[0x277D1AAD0]) initWithDictionaryRepresentation:v15];
            v20 = [v19 handle];

            if (v20)
            {
              v21 = [v19 handle];
              [v27 setObject:v15 forKey:v21];
            }

            else
            {
              v21 = IMLogHandleForCategory();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v35 = v19;
                _os_log_error_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_ERROR, "Nickname does not have a handle %@", buf, 0xCu);
              }
            }
          }

          else if (IMOSLoggingEnabled())
          {
            v18 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v35 = v16;
              v36 = 2112;
              v37 = v8;
              _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "We had an error %@ unarchiving data %@", buf, 0x16u);
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v9);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v26 == 0;
}

- (void)_makeAllNicknameContentsClassC
{
  v30[1] = *MEMORY[0x277D85DE8];
  v2 = [(IMDNicknameController *)self defaults];
  v3 = *MEMORY[0x277D1A3C0];
  v22 = *MEMORY[0x277D1A388];
  v4 = [v2 getBoolFromDomain:*MEMORY[0x277D1A3C0] forKey:?];

  if ((v4 & 1) == 0)
  {
    v21 = v3;
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Converting all nickname contents to Class C!", buf, 2u);
      }
    }

    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = *MEMORY[0x277D1A390];
    v8 = [v6 enumeratorAtPath:*MEMORY[0x277D1A390]];

    v9 = [v8 nextObject];
    if (v9)
    {
      v10 = *MEMORY[0x277CCA1B0];
      v11 = *MEMORY[0x277CCA1A0];
      do
      {
        v12 = [MEMORY[0x277CCAA00] defaultManager];
        v29 = v10;
        v30[0] = v11;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
        v14 = [v7 stringByAppendingPathComponent:v9];
        v24 = 0;
        v15 = [v12 setAttributes:v13 ofItemAtPath:v14 error:&v24];
        v16 = v24;

        if ((v15 & 1) == 0 && IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v26 = v9;
            v27 = 2112;
            v28 = v16;
            _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Failed making file class C: %@ with error %@", buf, 0x16u);
          }
        }

        v18 = [v8 nextObject];

        v9 = v18;
      }

      while (v18);
    }

    v19 = [(IMDNicknameController *)self defaults];
    [v19 setBool:1 forDomain:v21 forKey:v22];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_storePublicNickname:(id)a3 nicknameLocation:(id)a4 encryptionKey:(id)a5 wallpaperDataTag:(id)a6 wallpaperLowResDataTag:(id)a7 wallpaperMetadataTag:(id)a8 avatarRecipeDataTag:(id)a9
{
  v55 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v45 = a6;
  v44 = a7;
  v43 = a8;
  v42 = a9;
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v50 = v15;
      v51 = 2112;
      v52 = v16;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Storing personal nickname %@ and recordID %@ on disk", buf, 0x16u);
    }
  }

  v19 = [v16 dataUsingEncoding:4];
  v20 = [v15 dataRepresentation];
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [v20 length];
      v23 = [v19 length];
      v24 = [v17 length];
      *buf = 134218496;
      v50 = v22;
      v51 = 2048;
      v52 = v23;
      v53 = 2048;
      v54 = v24;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Writing nickname data of size %lu, recordID data of size %lu, and encryption key of size %lu to disk", buf, 0x20u);
    }
  }

  if (v20)
  {
    v25 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
    v48 = 0;
    [v25 persistData:v19 forKey:@"NicknameRecordID" error:&v48];
    v26 = v48;

    v27 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
    v47 = 0;
    [v27 persistData:v17 forKey:@"NicknameRecordKey" error:&v47];
    v28 = v47;

    v29 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
    v46 = 0;
    [v29 persistData:v20 forKey:@"NicknameDataKey" error:&v46];
    v30 = v46;

    v31 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
    [v31 persistData:v45 forKey:@"NicknameWallpaperDataTag" error:0];

    v32 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
    [v32 persistData:v44 forKey:@"NicknameLowResWallpaperDataTag" error:0];

    v33 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
    [v33 persistData:v43 forKey:@"NicknameWallpaperMetadataTag" error:0];

    v34 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
    [v34 persistData:v42 forKey:@"NicknameAvatarRecipeDataTag" error:0];

    if (v26 | v28)
    {
      v35 = IMLogHandleForCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D5430();
      }

      v36 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
      [v36 persistData:0 forKey:@"NicknameRecordKey" error:0];

      v37 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
      [v37 persistData:0 forKey:@"NicknameRecordID" error:0];
    }

    if (v30)
    {
      v38 = IMLogHandleForCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D54A0();
      }

      v39 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
      [v39 persistData:0 forKey:@"NicknameDataKey" error:0];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v40 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_INFO, "Personal nickname data is nil, not writing to disk", buf, 2u);
      }
    }

    v30 = 0;
    v28 = 0;
    v26 = 0;
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_storePendingNicknameForUpload:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Storing pending nickname %@ while waiting on upload", buf, 0xCu);
    }
  }

  v6 = [v4 dataRepresentation];
  if (v6)
  {
    v7 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
    v12 = 0;
    [v7 persistData:v6 forKey:@"NicknamePendingKey" error:&v12];
    v8 = v12;

    if (v8)
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D5508();
      }

      v10 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
      [v10 persistData:0 forKey:@"NicknamePendingKey" error:0];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_getPendingNicknameForUpload
{
  v2 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v15 = 0;
  v3 = [v2 dataForKey:@"NicknamePendingKey" error:&v15];
  v4 = v15;

  if (v4)
  {

    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D5570();
    }

LABEL_4:
    v5 = 0;
    goto LABEL_11;
  }

  if (![v3 length])
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "storedPersonalNickname is nil", buf, 2u);
      }
    }

    goto LABEL_4;
  }

  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v14 = 0;
  v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v8 fromData:v3 error:&v14];
  v9 = v14;
  if (v9)
  {

    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D55D8();
    }

    v5 = 0;
  }

LABEL_11:

  return v5;
}

- (void)_deletePendingNicknameForUpload
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v6 = 0;
  [v2 persistData:0 forKey:@"NicknamePendingKey" error:&v6];
  v3 = v6;

  if (v3 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v8 = v3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Error deleting data from kvStore %@", buf, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_deletePublicNicknameLocationAndKey
{
  v3 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v21 = 0;
  [v3 persistData:0 forKey:@"NicknameRecordID" error:&v21];
  v4 = v21;

  v5 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v20 = v4;
  [v5 persistData:0 forKey:@"NicknameRecordKey" error:&v20];
  v6 = v20;

  v7 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v19 = v6;
  [v7 persistData:0 forKey:@"NicknameDataKey" error:&v19];
  v8 = v19;

  v9 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v18 = v8;
  [v9 persistData:0 forKey:@"NicknameWallpaperDataTag" error:&v18];
  v10 = v18;

  v11 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v17 = v10;
  [v11 persistData:0 forKey:@"NicknameLowResWallpaperDataTag" error:&v17];
  v12 = v17;

  v13 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v16 = v12;
  [v13 persistData:0 forKey:@"NicknameWallpaperMetadataTag" error:&v16];
  v14 = v16;

  [(IMDNicknameController *)self setPersonalNickname:0];
  if (v14)
  {
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D5640();
    }
  }
}

- (id)nickNameDecryptionKey
{
  v2 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v7 = 0;
  v3 = [v2 dataForKey:@"NicknameRecordKey" error:&v7];
  v4 = v7;

  if (v4)
  {

    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D56A8();
    }

    v3 = 0;
  }

  return v3;
}

- (id)wallpaperDataTag
{
  v2 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v7 = 0;
  v3 = [v2 dataForKey:@"NicknameWallpaperDataTag" error:&v7];
  v4 = v7;

  if (v4)
  {

    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D5710();
    }

    v3 = 0;
  }

  return v3;
}

- (id)lowResWallpaperDataTag
{
  v2 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v7 = 0;
  v3 = [v2 dataForKey:@"NicknameLowResWallpaperDataTag" error:&v7];
  v4 = v7;

  if (v4)
  {

    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D5778();
    }

    v3 = 0;
  }

  return v3;
}

- (id)wallpaperMetadataTag
{
  v2 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v7 = 0;
  v3 = [v2 dataForKey:@"NicknameWallpaperMetadataTag" error:&v7];
  v4 = v7;

  if (v4)
  {

    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D57E0();
    }

    v3 = 0;
  }

  return v3;
}

- (id)avatarRecipeTag
{
  v2 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v7 = 0;
  v3 = [v2 dataForKey:@"NicknameAvatarRecipeDataTag" error:&v7];
  v4 = v7;

  if (v4)
  {

    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D5848();
    }

    v3 = 0;
  }

  return v3;
}

- (id)nickNameRecordID
{
  v2 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v8 = 0;
  v3 = [v2 dataForKey:@"NicknameRecordID" error:&v8];
  v4 = v8;

  if (v3)
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D56A8();
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (id)storedPersonalNickname
{
  v3 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v21 = 0;
  v4 = [v3 dataForKey:@"NicknameDataKey" error:&v21];
  v5 = v21;

  if (v5)
  {

    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D58B0();
    }

    v7 = [v5 description];
    [(IMDNicknameController *)self _showDebugAlertWithHeader:@"Error Loading Personal Nickname From Disk" message:v7];

LABEL_5:
    v8 = 0;
    goto LABEL_29;
  }

  if (!v4)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Stored personal nickname doesn't exist", buf, 2u);
      }
    }

    if ([(IMDNicknameController *)self _isNicknamesSharingEnabled])
    {
      [(IMDNicknameController *)self _showDebugAlertWithHeader:@"No Personal Nickname On Disk" message:0];
    }

    goto LABEL_5;
  }

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v19 = 0;
  v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v11 fromData:v4 error:&v19];
  v12 = v19;
  if (v12)
  {

    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D55D8();
    }

    v8 = 0;
    goto LABEL_19;
  }

  if (v8)
  {
    v13 = [v8 description];
    [(IMDNicknameController *)self _showDebugAlertWithHeader:@"Loaded Personal Nickname From Disk" message:v13];
LABEL_19:
  }

  v15 = [v8 recordID];

  if (!v15)
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Nickname loaded from disk did not have a recordID. Attempting to load recordID from disk.", buf, 2u);
      }
    }

    v17 = [(IMDNicknameController *)self nickNameRecordID];
    if (v17)
    {
      [v8 setRecordID:v17];
    }
  }

LABEL_29:

  return v8;
}

- (id)pendingPersonalNickname
{
  v2 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v13 = 0;
  v3 = [v2 dataForKey:@"NicknamePendingKey" error:&v13];
  v4 = v13;

  if (v4)
  {

    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D5918();
    }

    v5 = 0;
  }

  else
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v12 = 0;
    v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v8 fromData:v3 error:&v12];
    v9 = v12;
    if (v9)
    {

      v10 = IMLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D5980();
      }

      v5 = 0;
    }
  }

  return v5;
}

- (void)_deleteAvatarForNickname:(id)a3
{
  v3 = [a3 avatar];
  v4 = [v3 imageFilePath];

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = 0;
  [v5 removeItemAtPath:v4 error:&v8];
  v6 = v8;

  if (v6)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D59E8();
    }
  }
}

- (id)allNicknames
{
  v3 = [(IMDNicknameController *)self handledNicknames];
  v4 = [v3 allValues];

  v5 = [(IMDNicknameController *)self pendingNicknameUpdates];
  v6 = [v5 allValues];

  v7 = [(IMDNicknameController *)self archivedNicknames];
  v8 = [v7 allValues];

  v9 = [v6 arrayByAddingObjectsFromArray:v4];
  v10 = [v9 arrayByAddingObjectsFromArray:v8];

  return v10;
}

- (id)nicknameForRecordID:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [(IMDNicknameController *)self allNicknames];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v6)
    {
      v7 = *v17;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [objc_alloc(MEMORY[0x277D1AAD0]) initWithDictionaryRepresentation:*(*(&v16 + 1) + 8 * i)];
          v10 = [v9 recordID];
          v11 = [v10 isEqualToString:v4];

          if (v11)
          {

            goto LABEL_20;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v21 = v4;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Did not find nickname for recordID %@", buf, 0xCu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Passed in empty recordID", buf, 2u);
    }
  }

  v9 = 0;
LABEL_20:

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)nicknameForRecordID:(id)a3 handle:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    v8 = [(IMDNicknameController *)self nicknameForHandle:v7];
    v9 = v8;
    if (v8 && ([v8 recordID], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v6, "isEqualToString:", v10), v10, v11))
    {
      v12 = v9;
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Found existing nickname", &v17, 2u);
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
          v17 = 138412290;
          v18 = v7;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "No nickname for handle %@", &v17, 0xCu);
        }
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = [(IMDNicknameController *)self nicknameForRecordID:v6];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)nicknameForHandleURI:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "I'm being asked for handleURI %@", &v10, 0xCu);
    }
  }

  v6 = [v4 _stripFZIDPrefix];

  v7 = [(IMDNicknameController *)self nicknameForHandle:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)nicknameForHandle:(id)a3
{
  v4 = a3;
  v5 = [(IMDNicknameController *)self pendingNicknameUpdates];
  v6 = [v5 objectForKey:v4];

  if (v6 || (-[IMDNicknameController handledNicknames](self, "handledNicknames"), v7 = objc_claimAutoreleasedReturnValue(), [v7 objectForKey:v4], v6 = objc_claimAutoreleasedReturnValue(), v7, v6))
  {
    v8 = [objc_alloc(MEMORY[0x277D1AAD0]) initWithDictionaryRepresentation:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)substringRecordIDForNickname:(id)a3
{
  v3 = a3;
  v4 = [v3 recordID];
  v5 = [v4 length];

  if (v5 < 5)
  {
    v7 = &stru_283F23018;
  }

  else
  {
    v6 = [v3 recordID];
    v7 = [v6 substringToIndex:3];
  }

  return v7;
}

- (void)systemDidLeaveFirstDataProtectionLock
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "System did leave first unlock, loading maps into memory", v4, 2u);
    }
  }

  [(IMDNicknameController *)self _loadAllInfoFromDiskIfAble];
}

- (void)markAllNicknamesAsPending
{
  v20 = *MEMORY[0x277D85DE8];
  [(IMDNicknameController *)self loadNicknamesFromKVStore];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(IMDNicknameController *)self handledNicknames];
  v4 = [v3 allKeys];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = [(IMDNicknameController *)self handledNicknames];
        v11 = [v10 objectForKey:v9];

        v12 = [objc_alloc(MEMORY[0x277D1AAD0]) initWithDictionaryRepresentation:v11];
        [(IMDNicknameController *)self _deleteHandleIDFromHandledMap:v9];
        [v12 setRecordID:@"FakeID"];
        [v12 setFirstName:@"First"];
        [v12 setLastName:@"Last"];
        [(IMDNicknameController *)self addNicknameToPendingUpdates:v12];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end
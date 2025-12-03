@interface IMDNicknameController
+ (id)sharedInstance;
- (BOOL)_deviceUnderFirstUnlock;
- (BOOL)_isActiveForNickname:(id)nickname;
- (BOOL)_isNicknamesSharingEnabled;
- (BOOL)_isUnderScrutiny;
- (BOOL)_populateNicknameDictionary:(id)dictionary forKVStore:(id)store limitToLoad:(unint64_t)load;
- (BOOL)_requestingToSendLocalNicknameInfo:(id)info;
- (BOOL)_sendMessageDictionary:(id)dictionary toDevice:(id)device sendType:(unint64_t)type;
- (BOOL)evaluateAccountStateForFeatureEligibility;
- (BOOL)replacedNicknameForHandleIDInHandledMapIfNeeded:(id)needed nickname:(id)nickname;
- (IMDNicknameController)init;
- (NSDictionary)activeRecords;
- (NSDictionary)ignoredRecords;
- (NSMutableSet)handleAllowList;
- (NSMutableSet)handleDenyList;
- (NSSet)allowListedHandlesForSharing;
- (NSSet)denyListedHandlesForSharing;
- (NSSet)transitionedHandles;
- (id)_diffActiveRecords:(id)records againstPrevious:(id)previous;
- (id)_getPendingNicknameForUpload;
- (id)_idsDeviceFromPushToken:(id)token;
- (id)_typeOfNicknameUpdateToShare;
- (id)allNicknames;
- (id)avatarRecipeTag;
- (id)loadListForKey:(id)key list:(id)list;
- (id)lowResWallpaperDataTag;
- (id)messageDictionaryWithPersonalRecordIDAndVersion;
- (id)newNicknameInfoToSend;
- (id)nickNameDecryptionKey;
- (id)nickNameRecordID;
- (id)nicknameForHandle:(id)handle;
- (id)nicknameForHandleURI:(id)i;
- (id)nicknameForRecordID:(id)d;
- (id)nicknameForRecordID:(id)d handle:(id)handle;
- (id)pendingPersonalNickname;
- (id)storedPersonalNickname;
- (id)substringRecordIDForNickname:(id)nickname;
- (id)unknownSenderRecordInfoFor:(id)for;
- (id)wallpaperDataTag;
- (id)wallpaperMetadataTag;
- (unint64_t)_reuploadLocalProfileVersionNumber;
- (void)NicknameWithRecordID:(id)d URI:(id)i decryptionKey:(id)key wallpaperDataTag:(id)tag wallpaperLowResDataTag:(id)dataTag wallpaperMetadataTag:(id)metadataTag avatarRecipeDataTag:(id)recipeDataTag hasWallpaperUpdate:(BOOL)self0 dropNicknameForUnknownContacts:(BOOL)self1 withCompletionBlock:(id)self2;
- (void)_beginNicknameUpload:(id)upload;
- (void)_broadcastActiveListChanged;
- (void)_broadcastNicknamesMapChanged;
- (void)_clearActiveNicknameRecords;
- (void)_clearIgnoredNicknameRecords;
- (void)_clearSharingLists;
- (void)_clearTransitionedList;
- (void)_deleteAvatarForNickname:(id)nickname;
- (void)_deleteDataUnderScrutiny;
- (void)_deleteHandleIDFromArchivedMap:(id)map;
- (void)_deleteHandleIDFromHandledMap:(id)map;
- (void)_deleteHandleIDFromPendingMap:(id)map;
- (void)_deleteNicknameFromPendingMap:(id)map;
- (void)_deleteOnDiskDataIfNeededForNickname:(id)nickname withNewNickname:(id)newNickname;
- (void)_deletePendingNicknameForUpload;
- (void)_deletePublicNicknameLocationAndKey;
- (void)_endNicknameUpload;
- (void)_evaluateIfAccountHasMultiplePhoneNumbers;
- (void)_getDevicesForBothNicknameServices:(id)services removeNewServiceURIsFromIMessageList:(BOOL)list completionHandler:(id)handler;
- (void)_loadAllInfoFromDiskIfAble;
- (void)_makeAllNicknameContentsClassC;
- (void)_markCurrentNicknameAsArchived:(id)archived incrementPendingNicknameVersion:(BOOL)version;
- (void)_markNicknamePhotoAsUpdated:(id)updated;
- (void)_newDeviceDidSignIntoiMessageWithRetryCount:(unint64_t)count;
- (void)_removeFromList:(id)list withKey:(id)key;
- (void)_removeFromTransitionedList:(id)list;
- (void)_replaceUnknownSenderRecordInfoListWithInfo:(id)info purgeIfNeeded:(BOOL)needed;
- (void)_resetHandleSharingList;
- (void)_showDebugAlertWithHeader:(id)header message:(id)message;
- (void)_storePendingNicknameForUpload:(id)upload;
- (void)_storePublicNickname:(id)nickname nicknameLocation:(id)location encryptionKey:(id)key wallpaperDataTag:(id)tag wallpaperLowResDataTag:(id)dataTag wallpaperMetadataTag:(id)metadataTag avatarRecipeDataTag:(id)recipeDataTag;
- (void)_syncActiveNicknameRecordsToOtherDevices;
- (void)_syncHandleAllowDenyListToOtherDevices;
- (void)_syncHandleTransitionedListToOtherDevices;
- (void)_syncIgnoredNicknameRecordsToOtherDevices;
- (void)_tryToReuploadPersonalNicknameWithRetryCount:(unint64_t)count reuploadVersion:(unint64_t)version;
- (void)_updateActiveList:(id)list withRecords:(id)records broadcastUpdates:(BOOL)updates;
- (void)_updateActiveNicknameRecordsListIfNeeded:(id)needed;
- (void)_updateCloudKitRecordIDAndDecryptionKeyIfNeeded:(id)needed;
- (void)_updateDenyAllowListHandlesVersion;
- (void)_updateHandleDenyAllowListIfNeeded:(id)needed;
- (void)_updateHandleList:(id)list withHandles:(id)handles forKey:(id)key broadcastUpdates:(BOOL)updates;
- (void)_updateHandleTransitionedListIfNeeded:(id)needed;
- (void)_updateIgnoredList:(id)list withRecords:(id)records broadcastUpdates:(BOOL)updates;
- (void)_updateIgnoredNicknameRecordsListIfNeeded:(id)needed;
- (void)_updateIsActiveListHandlesVersion;
- (void)_updateIsIgnoredListHandlesVersion;
- (void)_updateMessageDictionaryWithNicknameUpdateRecordIDs:(id)ds;
- (void)_updateMessageDictionaryWithPendingNicknameUpdates:(id)updates;
- (void)_updateNameOnlyUpdateForMessage:(id)message fromHandleID:(id)d;
- (void)_updateNicknameInArchivedMap:(id)map;
- (void)_updateNicknameListsIfNeeded:(id)needed;
- (void)_updatePendingNicknameVersion;
- (void)_updateSharingPreferencesIfNeededFromMadridMessage:(id)message;
- (void)_updateTransitionList:(id)list withHandles:(id)handles forKey:(id)key broadcastUpdates:(BOOL)updates;
- (void)_updateTransitionedListHandlesVersion;
- (void)_uploadPendingNicknameIfNecessary;
- (void)_writeNicknameToKVStore:(id)store nickname:(id)nickname;
- (void)acceptPendingNicknameForHandleID:(id)d updateType:(unint64_t)type;
- (void)addNicknameToPendingUpdates:(id)updates;
- (void)allowHandlesForSharing:(id)sharing onChatGUIDs:(id)ds fromHandle:(id)handle forceSend:(BOOL)send;
- (void)broadcastHandlesSharingNicknamesDidChange;
- (void)broadcastTransitionedHandlesDidChange;
- (void)cleanUpNicknameForIDs:(id)ds;
- (void)clearPendingNicknameForHandleID:(id)d;
- (void)clearPendingNicknamePhotoForHandleID:(id)d;
- (void)currentPersonalNicknameWithRecordID:(id)d decryptionKey:(id)key wallpaperDataTag:(id)tag wallpaperLowResDataTag:(id)dataTag wallpaperMetadataTag:(id)metadataTag avatarRecipeDataTag:(id)recipeDataTag completionBlock:(id)block;
- (void)currentPersonalNicknamewithCompletionBlock:(id)block;
- (void)dealloc;
- (void)deleteAllPersonalNicknames:(BOOL)nicknames withCompletion:(id)completion;
- (void)denyHandlesForSharing:(id)sharing;
- (void)deviceSignedOutOfiMessage;
- (void)displayTapToRadarNotificationWithError:(id)error invalidData:(id)data;
- (void)getNicknameWithRecordID:(id)d decryptionKey:(id)key wallpaperDataTag:(id)tag wallpaperLowResDataTag:(id)dataTag wallpaperMetadataTag:(id)metadataTag avatarRecipeDataTag:(id)recipeDataTag isKnownSender:(BOOL)sender shouldDecodeImageFields:(BOOL)self0 completionBlock:(id)self1;
- (void)handleNicknameUpdatesFromPeerDevice:(id)device fromPeerDevice:(id)peerDevice;
- (void)ignorePendingNicknameForHandleID:(id)d;
- (void)loadHandledTransitioned;
- (void)loadNicknamesFromKVStore;
- (void)loadPersonalNicknameIfNeeded;
- (void)loadSharingHandlesPrefs;
- (void)loadUnknownSenderRecordInfoFromKVStore;
- (void)markAllNicknamesAsPending;
- (void)markHandlesAsAllowed:(id)allowed;
- (void)markNicknameAsUpdated:(id)updated;
- (void)markNicknamesAsTransitionedForHandleIDs:(id)ds isAutoUpdate:(BOOL)update;
- (void)markProfileRecords:(id)records asActive:(BOOL)active;
- (void)purgeUnknownSenderRecordInfoIfNeeded;
- (void)queueChatToSendNicknamePostUploadIfNeeded:(id)needed;
- (void)reuploadProfileIfNeeded;
- (void)saveNicknameForRecordID:(id)d handleID:(id)iD userNickname:(id)nickname;
- (void)sendNameOnlyToHandleIDs:(id)ds fromHandleID:(id)d;
- (void)sendNicknamePreferencesDidChange;
- (void)sendPendingNicknameUpdatesDidChange;
- (void)sendPersonalNicknameRecordIDAndVersionRequestedByDevice:(id)device;
- (void)sendPersonalNicknameRecordIDAndVersionToAllPeers;
- (void)sendPersonalNicknameToRecipients:(id)recipients chatGUID:(id)d fromHandle:(id)handle onlyUseNicknameSendingService:(BOOL)service onlySendToThoseLoggedOutOfIMessage:(BOOL)message;
- (void)service:(id)service account:(id)account incomingTopLevelMessage:(id)message fromID:(id)d messageContext:(id)context;
- (void)setPersonalNickname:(id)nickname;
- (void)setPersonalNickname:(id)nickname completionBlock:(id)block;
- (void)systemDidLeaveFirstDataProtectionLock;
- (void)verifyTruncatedRecordIDMatchesPersonalNickname:(id)nickname forChat:(id)chat;
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
  handleTransitionedList = [(IMDNicknameController *)self handleTransitionedList];
  v3 = [handleTransitionedList copy];

  return v3;
}

- (NSSet)allowListedHandlesForSharing
{
  handleAllowList = [(IMDNicknameController *)self handleAllowList];
  v3 = [handleAllowList copy];

  return v3;
}

- (NSSet)denyListedHandlesForSharing
{
  handleDenyList = [(IMDNicknameController *)self handleDenyList];
  v3 = [handleDenyList copy];

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
  ignoredNicknameRecords = [(IMDNicknameController *)self ignoredNicknameRecords];
  v3 = [ignoredNicknameRecords copy];

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
  activeNicknameRecords = [(IMDNicknameController *)self activeNicknameRecords];
  v3 = [activeNicknameRecords copy];

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
        stringByResolvingAndStandardizingPath = [v4 stringByResolvingAndStandardizingPath];
        IMSharedHelperEnsureDirectoryExistsAtPath();

        stringByResolvingAndStandardizingPath2 = [v5 stringByResolvingAndStandardizingPath];

        v8 = [objc_alloc(MEMORY[0x277D18AD0]) initWithPath:stringByResolvingAndStandardizingPath2 storeName:@"nicknamekeystore" dataProtectionClass:0];
        cloudkitRecordsKVStore = v3->_cloudkitRecordsKVStore;
        v3->_cloudkitRecordsKVStore = v8;

        v10 = [v4 stringByAppendingString:@"pendingNicknamesKeyStore.db"];
        stringByResolvingAndStandardizingPath3 = [v10 stringByResolvingAndStandardizingPath];

        v12 = [objc_alloc(MEMORY[0x277D18AD0]) initWithPath:stringByResolvingAndStandardizingPath3 storeName:@"pendingNicknameUpdatesStore" dataProtectionClass:0];
        pendingNicknameUpdatesKVStore = v3->_pendingNicknameUpdatesKVStore;
        v3->_pendingNicknameUpdatesKVStore = v12;

        v14 = [v4 stringByAppendingString:@"handledNicknamesKeyStore.db"];
        stringByResolvingAndStandardizingPath4 = [v14 stringByResolvingAndStandardizingPath];

        v16 = [objc_alloc(MEMORY[0x277D18AD0]) initWithPath:stringByResolvingAndStandardizingPath4 storeName:@"handledNicknamesStore" dataProtectionClass:0];
        handledNicknamesKVStore = v3->_handledNicknamesKVStore;
        v3->_handledNicknamesKVStore = v16;

        v18 = [v4 stringByAppendingString:@"archivedNicknamesKeyStore.db"];
        stringByResolvingAndStandardizingPath5 = [v18 stringByResolvingAndStandardizingPath];

        v20 = [objc_alloc(MEMORY[0x277D18AD0]) initWithPath:stringByResolvingAndStandardizingPath5 storeName:@"archivedNicknamesStore" dataProtectionClass:0];
        archivedNicknamesKVStore = v3->_archivedNicknamesKVStore;
        v3->_archivedNicknamesKVStore = v20;

        v22 = [v4 stringByAppendingString:@"handleSharingPreferences.db"];
        stringByResolvingAndStandardizingPath6 = [v22 stringByResolvingAndStandardizingPath];

        v24 = [objc_alloc(MEMORY[0x277D18AD0]) initWithPath:stringByResolvingAndStandardizingPath6 storeName:@"handleSharingPreferences" dataProtectionClass:0];
        handleSharingKVStore = v3->_handleSharingKVStore;
        v3->_handleSharingKVStore = v24;

        v26 = [v4 stringByAppendingString:@"nicknameRecordsStore.db"];
        stringByResolvingAndStandardizingPath7 = [v26 stringByResolvingAndStandardizingPath];

        v28 = [objc_alloc(MEMORY[0x277D18AD0]) initWithPath:stringByResolvingAndStandardizingPath7 storeName:@"nicknameRecordsStore" dataProtectionClass:0];
        nicknameRecordsKVStore = v3->_nicknameRecordsKVStore;
        v3->_nicknameRecordsKVStore = v28;

        v30 = [v4 stringByAppendingString:@"unknownSenderRecordInfoStore.db"];
        stringByResolvingAndStandardizingPath8 = [v30 stringByResolvingAndStandardizingPath];

        v32 = [objc_alloc(MEMORY[0x277D18AD0]) initWithPath:stringByResolvingAndStandardizingPath8 storeName:@"unknownSenderRecordInfoStore" dataProtectionClass:0];
        unknownSenderRecordInfoKVStore = v3->_unknownSenderRecordInfoKVStore;
        v3->_unknownSenderRecordInfoKVStore = v32;

        mEMORY[0x277D1ACB8] = [MEMORY[0x277D1ACB8] sharedInstance];
        [mEMORY[0x277D1ACB8] addListener:v3];

        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter addObserver:v3 selector:sel__ckAccountChanged_ name:*MEMORY[0x277CBBF00] object:0];

        [(IMDNicknameController *)v3 _loadAllInfoFromDiskIfAble];
        [(IMDNicknameController *)v3 purgeUnknownSenderRecordInfoIfNeeded];
        v36 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.nameandphoto"];
        nicknameService = v3->_nicknameService;
        v3->_nicknameService = v36;

        [(IDSService *)v3->_nicknameService addDelegate:v3 queue:MEMORY[0x277D85CD0]];
        mEMORY[0x277D18728] = [MEMORY[0x277D18728] sharedInstance];
        [mEMORY[0x277D18728] addListenerID:@"IMDNicknameController" forService:@"com.apple.private.alloy.nameandphoto"];

        v39 = objc_alloc_init(MEMORY[0x277CF7D40]);
        callHistoryManager = v3->_callHistoryManager;
        v3->_callHistoryManager = v39;

LABEL_8:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      stringByResolvingAndStandardizingPath2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(stringByResolvingAndStandardizingPath2, OS_LOG_TYPE_INFO))
      {
        *v42 = 0;
        _os_log_impl(&dword_22B4CC000, stringByResolvingAndStandardizingPath2, OS_LOG_TYPE_INFO, "Nickname feature is turned off, don't load nickname info into memory", v42, 2u);
      }

      goto LABEL_8;
    }
  }

  return v3;
}

- (void)purgeUnknownSenderRecordInfoIfNeeded
{
  v32 = *MEMORY[0x277D85DE8];
  unknownSenderRecordInfo = [(IMDNicknameController *)self unknownSenderRecordInfo];
  if (unknownSenderRecordInfo)
  {
    v4 = unknownSenderRecordInfo;
    unknownSenderRecordInfo2 = [(IMDNicknameController *)self unknownSenderRecordInfo];
    v6 = [unknownSenderRecordInfo2 count];

    if (v6)
    {
      v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      unknownSenderRecordInfo3 = [(IMDNicknameController *)self unknownSenderRecordInfo];
      v8 = [unknownSenderRecordInfo3 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v8)
      {
        v9 = v8;
        LOBYTE(v10) = 0;
        v11 = *v28;
        obj = unknownSenderRecordInfo3;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v28 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v27 + 1) + 8 * i);
            unknownSenderRecordInfo4 = [(IMDNicknameController *)self unknownSenderRecordInfo];
            v15 = [unknownSenderRecordInfo4 objectForKey:v13];

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
    mEMORY[0x277D1ACB8] = [MEMORY[0x277D1ACB8] sharedInstance];
    [mEMORY[0x277D1ACB8] removeListener:self];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self];
  }

  v5.receiver = self;
  v5.super_class = IMDNicknameController;
  [(IMDNicknameController *)&v5 dealloc];
}

- (BOOL)evaluateAccountStateForFeatureEligibility
{
  v25 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isNameAndPhotoC3Enabled = [mEMORY[0x277D1A9B8] isNameAndPhotoC3Enabled];

  v5 = +[IMDCKUtilities sharedInstance];
  v6 = v5;
  if (isNameAndPhotoC3Enabled)
  {
    signedIntoiCloudAccount = [v5 signedIntoiCloudAccount];
  }

  else
  {
    signedIntoiCloudAccount = [v5 signedIntoiCloudAndiMessageAndiCloudAccountMatchesiMessageAccount];
  }

  v8 = signedIntoiCloudAccount;

  defaults = [(IMDNicknameController *)self defaults];
  v10 = *MEMORY[0x277D1A3C0];
  v11 = *MEMORY[0x277D1A438];
  v12 = [defaults getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A438]];
  bOOLValue = [v12 BOOLValue];

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

      if (bOOLValue)
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

  if (v8 != bOOLValue)
  {
    defaults2 = [(IMDNicknameController *)self defaults];
    v18 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    [defaults2 setValue:v18 forDomain:v10 forKey:v11];
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
          idsAccount = [v12 idsAccount];
          accountType = [idsAccount accountType];

          if (accountType == 1)
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
  unsignedIntegerValue = 1;
  v3 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v4 = [v3 objectForKey:@"nickname-reupload-profile-version"];

  if (v4)
  {
    unsignedIntegerValue = [v4 unsignedIntegerValue];
  }

  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  v6 = [mEMORY[0x277D1A990] getBoolFromDomain:*MEMORY[0x277D1A3C0] forKey:@"UseOldProfilesContainer"];

  if (v6)
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (void)_tryToReuploadPersonalNicknameWithRetryCount:(unint64_t)count reuploadVersion:(unint64_t)version
{
  if (count > 2)
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

    defaults = [(IMDNicknameController *)self defaults];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:version];
    [defaults setValue:v10 forDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A418]];
  }

  else
  {
    objc_initWeak(location, self);
    personalNickname = [(IMDNicknameController *)self personalNickname];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_22B5C0DD0;
    v11[3] = &unk_278705C00;
    objc_copyWeak(v12, location);
    v12[1] = version;
    v12[2] = count;
    [(IMDNicknameController *)self setPersonalNickname:personalNickname completionBlock:v11];

    objc_destroyWeak(v12);
    objc_destroyWeak(location);
  }
}

- (void)reuploadProfileIfNeeded
{
  defaults = [(IMDNicknameController *)self defaults];
  v4 = [defaults getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A418]];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  _reuploadLocalProfileVersionNumber = [(IMDNicknameController *)self _reuploadLocalProfileVersionNumber];
  if (unsignedIntegerValue < _reuploadLocalProfileVersionNumber)
  {

    [(IMDNicknameController *)self _tryToReuploadPersonalNicknameWithRetryCount:0 reuploadVersion:_reuploadLocalProfileVersionNumber];
  }
}

- (void)_newDeviceDidSignIntoiMessageWithRetryCount:(unint64_t)count
{
  v16 = *MEMORY[0x277D85DE8];
  defaults = [(IMDNicknameController *)self defaults];
  v5 = [defaults getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A410]];
  bOOLValue = [v5 BOOLValue];

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
      v9 = v8;
      v10 = @"NO";
      if (bOOLValue)
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

  if ((bOOLValue & 1) == 0)
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

  defaults = [(IMDNicknameController *)self defaults];
  v5 = *MEMORY[0x277D1A3C0];
  [defaults setValue:0 forDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A410]];

  defaults2 = [(IMDNicknameController *)self defaults];
  [defaults2 setValue:MEMORY[0x277CBEC28] forDomain:v5 forKey:*MEMORY[0x277D1A3E0]];

  defaults3 = [(IMDNicknameController *)self defaults];
  [defaults3 setValue:&unk_283F4E978 forDomain:v5 forKey:*MEMORY[0x277D1A428]];

  [(IMDNicknameController *)self _deletePublicNicknameLocationAndKey];
}

- (void)verifyTruncatedRecordIDMatchesPersonalNickname:(id)nickname forChat:(id)chat
{
  v23 = *MEMORY[0x277D85DE8];
  nicknameCopy = nickname;
  chatCopy = chat;
  if (-[IMDNicknameController _nicknameFeatureEnabled](self, "_nicknameFeatureEnabled") && [chatCopy style] == 45)
  {
    personalNickname = [(IMDNicknameController *)self personalNickname];
    v9 = [(IMDNicknameController *)self substringRecordIDForNickname:personalNickname];

    v10 = [v9 isEqualToString:nicknameCopy];
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        personalNickname2 = [(IMDNicknameController *)self personalNickname];
        recordID = [personalNickname2 recordID];
        v14 = recordID;
        v15 = @"NO";
        *v18 = 138413058;
        *&v18[4] = nicknameCopy;
        if (v10)
        {
          v15 = @"YES";
        }

        *&v18[12] = 2112;
        *&v18[14] = recordID;
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

      [chatCopy meCardHasUpdated];
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

- (void)_beginNicknameUpload:(id)upload
{
  uploadCopy = upload;
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
  [(IMDNicknameController *)self _storePendingNicknameForUpload:uploadCopy];
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
  chatsToSendNicknameInfoTo = [(IMDNicknameController *)self chatsToSendNicknameInfoTo];
  v5 = [chatsToSendNicknameInfoTo countByEnumeratingWithState:&v19 objects:v25 count:16];
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
          objc_enumerationMutation(chatsToSendNicknameInfoTo);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        v10 = +[IMDChatRegistry sharedInstance];
        v11 = [v10 existingChatWithGUID:v9];

        if (v11)
        {
          participants = [v11 participants];
          guid = [v11 guid];
          lastAddressedLocalHandle = [v11 lastAddressedLocalHandle];
          [(IMDNicknameController *)self sendPersonalNicknameToRecipients:participants chatGUID:guid fromHandle:lastAddressedLocalHandle];
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
      v5 = [chatsToSendNicknameInfoTo countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v5);
  }

  chatsToSendNicknameInfoTo2 = [(IMDNicknameController *)self chatsToSendNicknameInfoTo];
  [chatsToSendNicknameInfoTo2 removeAllObjects];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setPersonalNickname:(id)nickname
{
  nicknameCopy = nickname;
  personalNickname = self->_personalNickname;
  p_personalNickname = &self->_personalNickname;
  if (personalNickname != nicknameCopy)
  {
    v10 = nicknameCopy;
    objc_storeStrong(p_personalNickname, nickname);
    v8 = +[IMDBroadcastController sharedProvider];
    broadcasterForAccountListeners = [v8 broadcasterForAccountListeners];
    [broadcasterForAccountListeners updatePersonalNickname:*p_personalNickname];

    nicknameCopy = v10;
  }
}

- (void)setPersonalNickname:(id)nickname completionBlock:(id)block
{
  v31 = *MEMORY[0x277D85DE8];
  nicknameCopy = nickname;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      avatar = [nicknameCopy avatar];
      imageFilePath = [avatar imageFilePath];
      *buf = 138412546;
      v28 = nicknameCopy;
      v29 = 2112;
      v30 = imageFilePath;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Client request to store new personal nickname %@ path%@", buf, 0x16u);
    }
  }

  if ([(IMDNicknameController *)self _nicknameFeatureEnabled]&& [(IMDNicknameController *)self _isNicknamesSharingEnabled])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_22B5C21DC;
    aBlock[3] = &unk_278702930;
    v26 = blockCopy;
    v11 = _Block_copy(aBlock);
    transferServicesController = [(IMDNicknameController *)self transferServicesController];
    v13 = objc_opt_respondsToSelector();

    [(IMDNicknameController *)self _beginNicknameUpload:nicknameCopy];
    nickNameRecordID = [(IMDNicknameController *)self nickNameRecordID];
    v15 = [nicknameCopy description];
    [(IMDNicknameController *)self _showDebugAlertWithHeader:@"Uploading Personal Nickname" message:v15];

    objc_initWeak(buf, self);
    transferServicesController2 = [(IMDNicknameController *)self transferServicesController];
    if (v13)
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = sub_22B5C21F4;
      v22[3] = &unk_278705C28;
      objc_copyWeak(&v24, buf);
      v23 = v11;
      [transferServicesController2 setPersonalNickname:nicknameCopy oldRecordID:nickNameRecordID completionBlockWithWallpaperAndRecipeDataTags:v22];

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
      [transferServicesController2 setPersonalNickname:nicknameCopy oldRecordID:nickNameRecordID completionBlockWithWallpaperTags:v19];

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

    if (blockCopy)
    {
      (*(blockCopy + 2))(blockCopy, 0, 0);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_uploadPendingNicknameIfNecessary
{
  v11 = *MEMORY[0x277D85DE8];
  _getPendingNicknameForUpload = [(IMDNicknameController *)self _getPendingNicknameForUpload];
  v4 = IMOSLoggingEnabled();
  if (_getPendingNicknameForUpload)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = _getPendingNicknameForUpload;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Loaded pending nickname from disk: %@ and uploading", &v9, 0xCu);
      }
    }

    v6 = [_getPendingNicknameForUpload description];
    [(IMDNicknameController *)self _showDebugAlertWithHeader:@"Found Pending Nickname Upload" message:v6];

    [(IMDNicknameController *)self setPersonalNickname:_getPendingNicknameForUpload completionBlock:0];
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
  broadcasterForAccountListeners = [v4 broadcasterForAccountListeners];
  allowListedHandlesForSharing = [(IMDNicknameController *)self allowListedHandlesForSharing];
  denyListedHandlesForSharing = [(IMDNicknameController *)self denyListedHandlesForSharing];
  [broadcasterForAccountListeners updateNicknameHandlesForSharing:allowListedHandlesForSharing blocked:denyListedHandlesForSharing];
}

- (void)_clearSharingLists
{
  handleAllowList = [(IMDNicknameController *)self handleAllowList];
  [handleAllowList removeAllObjects];

  handleDenyList = [(IMDNicknameController *)self handleDenyList];
  [handleDenyList removeAllObjects];

  handleSharingKVStore = [(IMDNicknameController *)self handleSharingKVStore];
  [handleSharingKVStore deleteDatabase];
}

- (void)_clearTransitionedList
{
  v11 = *MEMORY[0x277D85DE8];
  handleTransitionedList = [(IMDNicknameController *)self handleTransitionedList];
  [handleTransitionedList removeAllObjects];

  nicknameRecordsKVStore = [(IMDNicknameController *)self nicknameRecordsKVStore];
  v8 = 0;
  [nicknameRecordsKVStore persistData:0 forKey:@"handleTransitionedList" error:&v8];
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
  activeNicknameRecords = [(IMDNicknameController *)self activeNicknameRecords];
  [activeNicknameRecords removeAllObjects];

  nicknameRecordsKVStore = [(IMDNicknameController *)self nicknameRecordsKVStore];
  v8 = 0;
  [nicknameRecordsKVStore persistData:0 forKey:@"activeNicknameRecords" error:&v8];
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
  ignoredNicknameRecords = [(IMDNicknameController *)self ignoredNicknameRecords];
  [ignoredNicknameRecords removeAllObjects];

  nicknameRecordsKVStore = [(IMDNicknameController *)self nicknameRecordsKVStore];
  v8 = 0;
  [nicknameRecordsKVStore persistData:0 forKey:@"ignoredNicknameRecords" error:&v8];
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

- (void)currentPersonalNicknamewithCompletionBlock:(id)block
{
  blockCopy = block;
  nickNameRecordID = [(IMDNicknameController *)self nickNameRecordID];
  nickNameDecryptionKey = [(IMDNicknameController *)self nickNameDecryptionKey];
  wallpaperDataTag = [(IMDNicknameController *)self wallpaperDataTag];
  lowResWallpaperDataTag = [(IMDNicknameController *)self lowResWallpaperDataTag];
  wallpaperDataTag2 = [(IMDNicknameController *)self wallpaperDataTag];
  avatarRecipeTag = [(IMDNicknameController *)self avatarRecipeTag];
  [(IMDNicknameController *)self currentPersonalNicknameWithRecordID:nickNameRecordID decryptionKey:nickNameDecryptionKey wallpaperDataTag:wallpaperDataTag wallpaperLowResDataTag:lowResWallpaperDataTag wallpaperMetadataTag:wallpaperDataTag2 avatarRecipeDataTag:avatarRecipeTag completionBlock:blockCopy];
}

- (void)currentPersonalNicknameWithRecordID:(id)d decryptionKey:(id)key wallpaperDataTag:(id)tag wallpaperLowResDataTag:(id)dataTag wallpaperMetadataTag:(id)metadataTag avatarRecipeDataTag:(id)recipeDataTag completionBlock:(id)block
{
  dCopy = d;
  keyCopy = key;
  tagCopy = tag;
  dataTagCopy = dataTag;
  metadataTagCopy = metadataTag;
  recipeDataTagCopy = recipeDataTag;
  blockCopy = block;
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
  v23 = blockCopy;
  v42 = v23;
  v24 = _Block_copy(aBlock);
  if ([(IMDNicknameController *)self _nicknameFeatureEnabled])
  {
    if ([dCopy length] && objc_msgSend(keyCopy, "length"))
    {
      objc_initWeak(buf, self);
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = sub_22B5C339C;
      v35[3] = &unk_278705CA0;
      v36 = dCopy;
      objc_copyWeak(&v39, buf);
      v34 = keyCopy;
      v25 = keyCopy;
      v26 = recipeDataTagCopy;
      v27 = metadataTagCopy;
      v28 = dataTagCopy;
      v29 = tagCopy;
      v30 = v25;
      v37 = v25;
      v38 = v24;
      LOWORD(v33) = 257;
      v31 = v30;
      tagCopy = v29;
      dataTagCopy = v28;
      metadataTagCopy = v27;
      recipeDataTagCopy = v26;
      [(IMDNicknameController *)self getNicknameWithRecordID:v36 decryptionKey:v31 wallpaperDataTag:tagCopy wallpaperLowResDataTag:dataTagCopy wallpaperMetadataTag:metadataTagCopy avatarRecipeDataTag:v26 isKnownSender:v33 shouldDecodeImageFields:v35 completionBlock:?];

      objc_destroyWeak(&v39);
      objc_destroyWeak(buf);
      keyCopy = v34;
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

- (void)getNicknameWithRecordID:(id)d decryptionKey:(id)key wallpaperDataTag:(id)tag wallpaperLowResDataTag:(id)dataTag wallpaperMetadataTag:(id)metadataTag avatarRecipeDataTag:(id)recipeDataTag isKnownSender:(BOOL)sender shouldDecodeImageFields:(BOOL)self0 completionBlock:(id)self1
{
  tagCopy = tag;
  dataTagCopy = dataTag;
  metadataTagCopy = metadataTag;
  recipeDataTagCopy = recipeDataTag;
  blockCopy = block;
  v20 = MEMORY[0x277D192C0];
  keyCopy = key;
  dCopy = d;
  v21 = objc_alloc_init(v20);
  [v21 startTimingForKey:@"Nickname Download"];
  transferServicesController = [(IMDNicknameController *)self transferServicesController];
  v23 = objc_opt_respondsToSelector();

  transferServicesController2 = [(IMDNicknameController *)self transferServicesController];
  if (v23)
  {
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = sub_22B5C3904;
    v55[3] = &unk_278705CC8;
    v43 = &v60;
    v44 = &v56;
    v59 = metadataTagCopy;
    v60 = blockCopy;
    v56 = v21;
    v57 = tagCopy;
    v41 = &v58;
    v42 = &v57;
    v25 = &v59;
    v58 = dataTagCopy;
    v26 = metadataTagCopy;
    v27 = dataTagCopy;
    v28 = tagCopy;
    v29 = tagCopy;
    v30 = blockCopy;
    v31 = v21;
    LOWORD(v40) = __PAIR16__(fields, sender);
    v32 = keyCopy;
    v33 = v26;
    v34 = recipeDataTagCopy;
    [transferServicesController2 getNicknameWithRecordID:dCopy decryptionKey:keyCopy wallpaperDataTag:v29 wallpaperLowResDataTag:v27 wallpaperMetadataTag:v33 avatarRecipeDataTag:recipeDataTagCopy isKnownSender:v40 shouldDecodeImageFields:v55 completionBlock:?];
  }

  else
  {
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = sub_22B5C3AF4;
    v49[3] = &unk_278705CC8;
    v43 = &v54;
    v44 = &v50;
    v53 = metadataTagCopy;
    v54 = blockCopy;
    v50 = v21;
    v51 = tagCopy;
    v41 = &v52;
    v42 = &v51;
    v25 = &v53;
    v52 = dataTagCopy;
    v35 = metadataTagCopy;
    v36 = dataTagCopy;
    v28 = tagCopy;
    v37 = tagCopy;
    v38 = blockCopy;
    v39 = v21;
    v32 = keyCopy;
    [transferServicesController2 getNicknameWithRecordID:dCopy decryptionKey:keyCopy wallpaperDataTag:v37 wallpaperLowResDataTag:v36 wallpaperMetadataTag:v35 isKnownSender:sender completionBlock:v49];
    v34 = recipeDataTagCopy;
  }
}

- (void)NicknameWithRecordID:(id)d URI:(id)i decryptionKey:(id)key wallpaperDataTag:(id)tag wallpaperLowResDataTag:(id)dataTag wallpaperMetadataTag:(id)metadataTag avatarRecipeDataTag:(id)recipeDataTag hasWallpaperUpdate:(BOOL)self0 dropNicknameForUnknownContacts:(BOOL)self1 withCompletionBlock:(id)self2
{
  v77 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iCopy = i;
  keyCopy = key;
  tagCopy = tag;
  dataTagCopy = dataTag;
  metadataTagCopy = metadataTag;
  recipeDataTagCopy = recipeDataTag;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v72 = dCopy;
      v73 = 2112;
      *v74 = iCopy;
      _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Asked to fetch nickname with recordID %@, sender URI: %@", buf, 0x16u);
    }
  }

  if ([(IMDNicknameController *)self _nicknameFeatureEnabled])
  {
    if (-[__CFString length](dCopy, "length") && [iCopy length] && objc_msgSend(keyCopy, "length"))
    {
      _stripFZIDPrefix = [iCopy _stripFZIDPrefix];
      v57 = [(IMDNicknameController *)self nicknameForRecordID:dCopy handle:_stripFZIDPrefix];
      v26 = +[IMDChatRegistry sharedInstance];
      v56 = [v26 _hasSavedContactCardForHandle:_stripFZIDPrefix];

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
          v72 = _stripFZIDPrefix;
          v73 = 2112;
          *v74 = v28;
          _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Is %@ a known sender: %@", buf, 0x16u);
        }
      }

      v55 = [MEMORY[0x277D18A10] sharedInstanceForBagType:0];
      v54 = [v55 objectForKey:@"disable-SNaP-downloads-for-unknown-senders"];
      bOOLValue = [v54 BOOLValue];
      if (IMOSLoggingEnabled())
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = @"NO";
          if (bOOLValue)
          {
            v31 = @"YES";
          }

          *buf = 138412290;
          v72 = v31;
          _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "IDS server bag tells us to drop all payloads from unknown senders: %@", buf, 0xCu);
        }
      }

      if (v56 & 1 | (((contacts | bOOLValue) & 1) == 0))
      {
        if (v57)
        {
          wallpaper = [v57 wallpaper];
          if (wallpaper)
          {
            updateCopy = 0;
          }

          else
          {
            updateCopy = update;
          }

          v49 = updateCopy & v56;
        }

        else
        {
          v49 = 0;
        }

        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = sub_22B5C4748;
        aBlock[3] = &unk_278705CF0;
        v37 = _stripFZIDPrefix;
        v70 = v37;
        v52 = _Block_copy(aBlock);
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = sub_22B5C4878;
        v66[3] = &unk_278705D18;
        v50 = v37;
        v67 = v50;
        selfCopy = self;
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
          avatar = [v57 avatar];
          hasImage = [avatar hasImage];

          v40 = (hasImage ^ 1) & v53;
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

        if (v57 && (([v57 avatarRecipe], (v43 = objc_claimAutoreleasedReturnValue()) == 0) ? (recipeDataTagCopy ? (v44 = v53) : (v44 = 0)) : (v44 = 0), v43, ((v40 | v49 | v44) & 1) == 0))
        {
          if (IMOSLoggingEnabled())
          {
            v46 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
            {
              *buf = 138413314;
              v72 = dCopy;
              v73 = 1024;
              *v74 = v56;
              *&v74[4] = 1024;
              *&v74[6] = 1;
              LOWORD(v75) = 1024;
              *(&v75 + 2) = update;
              HIWORD(v75) = 2112;
              v76 = v57;
              _os_log_impl(&dword_22B4CC000, v46, OS_LOG_TYPE_INFO, "Already have this one, no need to grab it again from CloudKit with recordID %@, knownSender: %i, shouldAttemptWallpaperFetch: %i, hasWallpaperUpdate: %i, existingNickname: %@", buf, 0x28u);
            }
          }

          blockCopy[2](blockCopy, v57, 1, 0, 1);
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v45 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v72 = dCopy;
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
          v62 = iCopy;
          v63 = dCopy;
          v64 = blockCopy;
          BYTE1(v48) = v53;
          LOBYTE(v48) = v56;
          [(IMDNicknameController *)self getNicknameWithRecordID:v63 decryptionKey:keyCopy wallpaperDataTag:tagCopy wallpaperLowResDataTag:dataTagCopy wallpaperMetadataTag:metadataTagCopy avatarRecipeDataTag:recipeDataTagCopy isKnownSender:v48 shouldDecodeImageFields:v60 completionBlock:?];

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

        if (blockCopy)
        {
          blockCopy[2](blockCopy, 0, 0, 0, 1);
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
        v72 = dCopy;
        v73 = 2112;
        *v74 = iCopy;
        *&v74[8] = 2112;
        v75 = keyCopy;
        _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "We are missing parameters to fetch the CloudKit record (recordID: %@) (URI: %@) (decryptionKey: %@)", buf, 0x20u);
      }
    }

LABEL_32:
    blockCopy[2](blockCopy, 0, 0, 0, 1);
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

  if (blockCopy)
  {
    goto LABEL_32;
  }

LABEL_77:

  v47 = *MEMORY[0x277D85DE8];
}

- (void)deleteAllPersonalNicknames:(BOOL)nicknames withCompletion:(id)completion
{
  completionCopy = completion;
  _nicknameFeatureEnabled = [(IMDNicknameController *)self _nicknameFeatureEnabled];
  v8 = IMOSLoggingEnabled();
  if (_nicknameFeatureEnabled)
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

    transferServicesController = [(IMDNicknameController *)self transferServicesController];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      objc_initWeak(buf, self);
      transferServicesController2 = [(IMDNicknameController *)self transferServicesController];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = sub_22B5C4E90;
      v14[3] = &unk_278705D68;
      objc_copyWeak(&v16, buf);
      nicknamesCopy = nicknames;
      v15 = completionCopy;
      [transferServicesController2 deleteAllPersonalNicknamesWithCompletion:v14];

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

- (void)_updateSharingPreferencesIfNeededFromMadridMessage:(id)message
{
  v25 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if ([(IMDNicknameController *)self _nicknameFeatureEnabled])
  {
    v5 = [messageCopy objectForKey:MessageDictionaryMeCardSharingAudienceKey];
    v6 = [messageCopy objectForKey:MessageDictionaryMeCardSharingEnabledKey];
    v7 = [messageCopy objectForKey:MessageDictionaryMeCardSharingNameForkedKey];
    v8 = [messageCopy objectForKey:MessageDictionaryMeCardSharingImageForkedKey];
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
          integerValue = [v5 integerValue];
          if (integerValue <= 2)
          {
            defaults = [(IMDNicknameController *)self defaults];
            v13 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
            [defaults setValue:v13 forDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A3D8]];
          }
        }
      }

      if (v7)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          defaults2 = [(IMDNicknameController *)self defaults];
          v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "BOOLValue")}];
          [defaults2 setValue:v15 forDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A3F0]];
        }
      }

      if (v8)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          defaults3 = [(IMDNicknameController *)self defaults];
          v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "BOOLValue")}];
          [defaults3 setValue:v17 forDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A3E8]];
        }
      }

      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          defaults4 = [(IMDNicknameController *)self defaults];
          v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "BOOLValue")}];
          [defaults4 setValue:v19 forDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A3E0]];

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

- (void)_updateMessageDictionaryWithPendingNicknameUpdates:(id)updates
{
  updatesCopy = updates;
  defaults = [(IMDNicknameController *)self defaults];
  v6 = [defaults getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A408]];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  pendingNicknameUpdates = [(IMDNicknameController *)self pendingNicknameUpdates];
  allKeys = [pendingNicknameUpdates allKeys];

  if (!allKeys)
  {
    allKeys = [MEMORY[0x277CBEA60] array];
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
  [updatesCopy setObject:v9 forKey:MessageDictionaryPendingNicknameUpdatesVersionKey];

  [updatesCopy setObject:allKeys forKey:MessageDictionaryPendingNicknameUpdatesHandlesKey];
}

- (void)_updateMessageDictionaryWithNicknameUpdateRecordIDs:(id)ds
{
  v60 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  defaults = [(IMDNicknameController *)self defaults];
  v5 = [defaults getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A408]];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  pendingNicknameUpdates = [(IMDNicknameController *)self pendingNicknameUpdates];
  allValues = [pendingNicknameUpdates allValues];

  handledNicknames = [(IMDNicknameController *)self handledNicknames];
  allValues2 = [handledNicknames allValues];

  archivedNicknames = [(IMDNicknameController *)self archivedNicknames];
  allValues3 = [archivedNicknames allValues];

  if (allValues)
  {
    if (allValues2)
    {
      goto LABEL_3;
    }

LABEL_33:
    allValues2 = [MEMORY[0x277CBEA60] array];
    if (allValues3)
    {
      goto LABEL_4;
    }

    goto LABEL_34;
  }

  allValues = [MEMORY[0x277CBEA60] array];
  if (!allValues2)
  {
    goto LABEL_33;
  }

LABEL_3:
  if (allValues3)
  {
    goto LABEL_4;
  }

LABEL_34:
  allValues3 = [MEMORY[0x277CBEA60] array];
LABEL_4:
  array = [MEMORY[0x277CBEB18] array];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v13 = allValues;
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
          [array addObject:v20];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v15);
  }

  v41 = v13;
  v42 = array;

  array2 = [MEMORY[0x277CBEB18] array];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v22 = allValues2;
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
          [array2 addObject:v29];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v49 objects:v58 count:16];
    }

    while (v24);
  }

  array3 = [MEMORY[0x277CBEB18] array];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v31 = allValues3;
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
          [array3 addObject:v38];
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v33);
  }

  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
  [dsCopy setObject:v39 forKey:MessageDictionaryPendingNicknameUpdatesVersionKey];

  [dsCopy setObject:v42 forKey:MessageDictionaryPendingNicknameUpdatesRecordIDsKey];
  [dsCopy setObject:array2 forKey:MessageDictionaryCurrentNicknameUpdatesRecordIDsKey];
  [dsCopy setObject:array3 forKey:MessageDictionaryArchivedNicknameUpdatesRecordIDsKey];

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

  defaults = [(IMDNicknameController *)self defaults];
  v6 = *MEMORY[0x277D1A3C0];
  v25 = [defaults getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A3D8]];

  if (v25)
  {
    CFDictionarySetValue(v3, MessageDictionaryMeCardSharingAudienceKey, v25);
  }

  defaults2 = [(IMDNicknameController *)self defaults];
  v24 = [defaults2 getValueFromDomain:v6 forKey:*MEMORY[0x277D1A400]];

  nickNameDecryptionKey = [(IMDNicknameController *)self nickNameDecryptionKey];
  wallpaperDataTag = [(IMDNicknameController *)self wallpaperDataTag];
  lowResWallpaperDataTag = [(IMDNicknameController *)self lowResWallpaperDataTag];
  wallpaperMetadataTag = [(IMDNicknameController *)self wallpaperMetadataTag];
  nickNameRecordID = [(IMDNicknameController *)self nickNameRecordID];
  if (v24)
  {
    CFDictionarySetValue(v3, MessageDictionaryNicknameVersionKey, v24);
  }

  if (nickNameRecordID)
  {
    CFDictionarySetValue(v3, MessageDictionaryPersonalNicknameRecordIDKey, nickNameRecordID);
  }

  if (nickNameDecryptionKey)
  {
    CFDictionarySetValue(v3, MessageDictionaryPersonalNicknameDecryptKeyKey, nickNameDecryptionKey);
  }

  if (wallpaperDataTag)
  {
    CFDictionarySetValue(v3, MessageDictionaryNicknameWallpaperTagKey, wallpaperDataTag);
  }

  if (lowResWallpaperDataTag)
  {
    CFDictionarySetValue(v3, MessageDictionaryNicknameLowResWallpaperTagKey, lowResWallpaperDataTag);
  }

  if (wallpaperMetadataTag)
  {
    CFDictionarySetValue(v3, MessageDictionaryNicknameWallpaperMetadataTagKey, wallpaperMetadataTag);
  }

  avatarRecipeTag = [(IMDNicknameController *)self avatarRecipeTag];
  if (avatarRecipeTag)
  {
    CFDictionarySetValue(v3, MessageDictionaryNicknameAvatarRecipeDataTagKey, avatarRecipeTag);
  }

  defaults3 = [(IMDNicknameController *)self defaults];
  v15 = [defaults3 getValueFromDomain:v6 forKey:*MEMORY[0x277D1A3F0]];

  defaults4 = [(IMDNicknameController *)self defaults];
  v17 = [defaults4 getValueFromDomain:v6 forKey:*MEMORY[0x277D1A3E8]];

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
      v19 = [nickNameDecryptionKey length];
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
      v33 = nickNameRecordID;
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

- (void)acceptPendingNicknameForHandleID:(id)d updateType:(unint64_t)type
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  pendingNicknameUpdates = [(IMDNicknameController *)self pendingNicknameUpdates];
  v8 = [pendingNicknameUpdates objectForKey:dCopy];

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

    [(IMDNicknameController *)self _markPendingNicknameAsCurrent:v9 incrementPendingNicknameVersion:1 updateType:type broadcastUpdates:1];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_updateNicknameListsIfNeeded:(id)needed
{
  v150 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  v4 = [neededCopy objectForKey:MessageDictionaryPendingNicknameUpdatesVersionKey];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  defaults = [(IMDNicknameController *)self defaults];
  v6 = *MEMORY[0x277D1A408];
  v100 = *MEMORY[0x277D1A3C0];
  v7 = [defaults getValueFromDomain:? forKey:?];
  unsignedIntegerValue2 = [v7 unsignedIntegerValue];

  defaults2 = [(IMDNicknameController *)self defaults];
  v97 = *MEMORY[0x277D1A3C8];
  v10 = [defaults2 getValueFromDomain:v100 forKey:?];
  unsignedIntegerValue3 = [v10 unsignedIntegerValue];

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = v6;
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue2];
      *buf = 138412546;
      v147 = v14;
      v148 = 2112;
      v149 = v15;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "updateHandledNicknamesIfNeeded incomingPendingNicknameVersion %@ currentPendingNicknameUpdatesVersion %@", buf, 0x16u);

      v6 = v13;
    }
  }

  if (unsignedIntegerValue2 < unsignedIntegerValue || unsignedIntegerValue3 < unsignedIntegerValue)
  {
    v99 = [neededCopy objectForKey:MessageDictionaryPendingNicknameUpdatesHandlesKey];
    if (v99)
    {
      pendingNicknameUpdates = [(IMDNicknameController *)self pendingNicknameUpdates];
      allKeys = [pendingNicknameUpdates allKeys];

      v20 = [allKeys arrayByExcludingObjectsInArray:v99];
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v147 = allKeys;
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
            pendingNicknameUpdates2 = [(IMDNicknameController *)self pendingNicknameUpdates];
            v28 = [pendingNicknameUpdates2 objectForKey:v26];

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

      defaults3 = [(IMDNicknameController *)self defaults];
      v105 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
      [defaults3 setValue:v105 forDomain:v100 forKey:v6];
    }

    else
    {
      allKeys = [neededCopy objectForKey:MessageDictionaryPendingNicknameUpdatesRecordIDsKey];
      obj = [neededCopy objectForKey:MessageDictionaryCurrentNicknameUpdatesRecordIDsKey];
      v98 = [neededCopy objectForKey:MessageDictionaryArchivedNicknameUpdatesRecordIDsKey];
      if (!allKeys || !obj || !v98)
      {

        goto LABEL_91;
      }

      defaults3 = [MEMORY[0x277CBEB58] set];
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      archivedNicknames = [(IMDNicknameController *)self archivedNicknames];
      allValues = [archivedNicknames allValues];

      v34 = [allValues countByEnumeratingWithState:&v129 objects:v142 count:16];
      if (v34)
      {
        v35 = *v130;
        do
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v130 != v35)
            {
              objc_enumerationMutation(allValues);
            }

            v37 = *(*(&v129 + 1) + 8 * j);
            v38 = [v37 objectForKeyedSubscript:@"rid"];

            if (v38)
            {
              v39 = [v37 objectForKeyedSubscript:@"rid"];
              [defaults3 addObject:v39];
            }
          }

          v34 = [allValues countByEnumeratingWithState:&v129 objects:v142 count:16];
        }

        while (v34);
      }

      v105 = [MEMORY[0x277CBEB58] set];
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      handledNicknames = [(IMDNicknameController *)self handledNicknames];
      allValues2 = [handledNicknames allValues];

      v42 = [allValues2 countByEnumeratingWithState:&v125 objects:v141 count:16];
      if (v42)
      {
        v43 = *v126;
        do
        {
          for (k = 0; k != v42; ++k)
          {
            if (*v126 != v43)
            {
              objc_enumerationMutation(allValues2);
            }

            v45 = *(*(&v125 + 1) + 8 * k);
            v46 = [v45 objectForKeyedSubscript:@"rid"];

            if (v46)
            {
              v47 = [v45 objectForKeyedSubscript:@"rid"];
              [v105 addObject:v47];
            }
          }

          v42 = [allValues2 countByEnumeratingWithState:&v125 objects:v141 count:16];
        }

        while (v42);
      }

      v104 = [MEMORY[0x277CBEB58] set];
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      pendingNicknameUpdates3 = [(IMDNicknameController *)self pendingNicknameUpdates];
      allValues3 = [pendingNicknameUpdates3 allValues];

      v50 = [allValues3 countByEnumeratingWithState:&v121 objects:v140 count:16];
      if (v50)
      {
        v51 = *v122;
        do
        {
          for (m = 0; m != v50; ++m)
          {
            if (*v122 != v51)
            {
              objc_enumerationMutation(allValues3);
            }

            v53 = *(*(&v121 + 1) + 8 * m);
            v54 = [v53 objectForKeyedSubscript:@"rid"];

            if (v54)
            {
              v55 = [v53 objectForKeyedSubscript:@"rid"];
              [v104 addObject:v55];
            }
          }

          v50 = [allValues3 countByEnumeratingWithState:&v121 objects:v140 count:16];
        }

        while (v50);
      }

      v96 = [MEMORY[0x277CBEB98] setWithArray:v98];
      v56 = [defaults3 mutableCopy];
      [v56 minusSet:v96];
      v94 = [v96 mutableCopy];
      [v94 minusSet:defaults3];
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
            handle = [v61 handle];

            if (handle)
            {
              archivedNicknames2 = [(IMDNicknameController *)self archivedNicknames];
              handle2 = [v61 handle];
              [archivedNicknames2 setValue:0 forKey:handle2];

              handle3 = [v61 handle];
              [(IMDNicknameController *)self _deleteHandleIDFromArchivedMap:handle3];

              activeRecords = [(IMDNicknameController *)self activeRecords];
              handle4 = [v61 handle];
              v68 = [activeRecords objectForKey:handle4];
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
            handle5 = [v74 handle];

            if (handle5)
            {
              [(IMDNicknameController *)self _markCurrentNicknameAsArchived:v74 incrementPendingNicknameVersion:0];
              handledNicknames2 = [(IMDNicknameController *)self handledNicknames];
              handle6 = [v74 handle];
              [handledNicknames2 setValue:0 forKey:handle6];

              handle7 = [v74 handle];
              [(IMDNicknameController *)self _deleteHandleIDFromHandledMap:handle7];
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
            v87 = [allKeys containsObject:v85];
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
      defaults4 = [(IMDNicknameController *)self defaults];
      v91 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
      [defaults4 setValue:v91 forDomain:v100 forKey:v97];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue2];
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

- (void)_showDebugAlertWithHeader:(id)header message:(id)message
{
  v12 = *MEMORY[0x277D85DE8];
  headerCopy = header;
  messageCopy = message;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = headerCopy;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Alert header: %@", &v10, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = messageCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Alert message: %@", &v10, 0xCu);
    }
  }

  if (IMEnableNicknamesDebug())
  {
    CFUserNotificationDisplayNotice(0.0, 0, 0, 0, 0, headerCopy, messageCopy, @"OK");
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_updateCloudKitRecordIDAndDecryptionKeyIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = [neededCopy objectForKeyedSubscript:MessageDictionaryPersonalNicknameDecryptKeyKey];
  v6 = [neededCopy objectForKeyedSubscript:MessageDictionaryNicknameWallpaperTagKey];
  v7 = [neededCopy objectForKeyedSubscript:MessageDictionaryNicknameLowResWallpaperTagKey];
  v8 = [neededCopy objectForKeyedSubscript:MessageDictionaryNicknameWallpaperMetadataTagKey];
  v9 = [neededCopy objectForKeyedSubscript:MessageDictionaryPersonalNicknameRecordIDKey];
  v10 = [neededCopy objectForKeyedSubscript:MessageDictionaryNicknameAvatarRecipeDataTagKey];
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

- (void)_updateHandleDenyAllowListIfNeeded:(id)needed
{
  v50 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  v5 = [neededCopy objectForKey:MessageDictionaryNicknameDenyAllowListVersionKey];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  defaults = [(IMDNicknameController *)self defaults];
  v8 = *MEMORY[0x277D1A3C0];
  v9 = *MEMORY[0x277D1A3B8];
  v10 = [defaults getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A3B8]];
  unsignedIntegerValue2 = [v10 unsignedIntegerValue];

  if (unsignedIntegerValue2 >= unsignedIntegerValue)
  {
    if (IMOSLoggingEnabled())
    {
      v40 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v47 = unsignedIntegerValue;
        v48 = 2048;
        v49 = unsignedIntegerValue2;
        _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_INFO, "Received older version number (%lu, old: %lu), dropping deny/allow list update", buf, 0x16u);
      }
    }
  }

  else
  {
    v45 = [neededCopy objectForKeyedSubscript:MessageDictionaryNicknameDenyListKey];
    v44 = [neededCopy objectForKeyedSubscript:MessageDictionaryNicknameAllowListKey];
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v47 = unsignedIntegerValue;
        v48 = 2048;
        v49 = unsignedIntegerValue2;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Received newer version number (%lu, old: %lu), updating the deny/allow list store", buf, 0x16u);
      }
    }

    if (IMEnableNicknamesDebug())
    {
      v13 = [MEMORY[0x277CCAB68] stringWithString:&stru_283F23018];
      handleDenyList = [(IMDNicknameController *)self handleDenyList];
      allObjects = [handleDenyList allObjects];
      v43 = [v45 arrayByExcludingObjectsInArray:allObjects];

      handleDenyList2 = [(IMDNicknameController *)self handleDenyList];
      allObjects2 = [handleDenyList2 allObjects];
      v42 = [allObjects2 arrayByExcludingObjectsInArray:v45];

      handleAllowList = [(IMDNicknameController *)self handleAllowList];
      allObjects3 = [handleAllowList allObjects];
      v20 = [v44 arrayByExcludingObjectsInArray:allObjects3];

      handleAllowList2 = [(IMDNicknameController *)self handleAllowList];
      allObjects4 = [handleAllowList2 allObjects];
      v23 = [allObjects4 arrayByExcludingObjectsInArray:v44];

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
    handleDenyList3 = [(IMDNicknameController *)self handleDenyList];
    v30 = [MEMORY[0x277CBEB98] setWithArray:v45];
    [(IMDNicknameController *)self _updateHandleList:handleDenyList3 withHandles:v30 forKey:@"handleBlacklist" broadcastUpdates:0];

    handleAllowList3 = [(IMDNicknameController *)self handleAllowList];
    v32 = [MEMORY[0x277CBEB98] setWithArray:v44];
    [(IMDNicknameController *)self _updateHandleList:handleAllowList3 withHandles:v32 forKey:@"handleWhitelist" broadcastUpdates:0];

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
    broadcasterForAccountListeners = [v34 broadcasterForAccountListeners];
    allowListedHandlesForSharing = [(IMDNicknameController *)self allowListedHandlesForSharing];
    denyListedHandlesForSharing = [(IMDNicknameController *)self denyListedHandlesForSharing];
    [broadcasterForAccountListeners updateNicknameHandlesForSharing:allowListedHandlesForSharing blocked:denyListedHandlesForSharing];

    defaults2 = [(IMDNicknameController *)self defaults];
    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
    [defaults2 setValue:v39 forDomain:v8 forKey:v9];
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_updateHandleTransitionedListIfNeeded:(id)needed
{
  v24 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  v5 = [neededCopy objectForKey:MessageDictionaryNicknameTransitionedListVersionKey];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  defaults = [(IMDNicknameController *)self defaults];
  v8 = *MEMORY[0x277D1A3C0];
  v9 = *MEMORY[0x277D1A430];
  v10 = [defaults getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A430]];
  unsignedIntegerValue2 = [v10 unsignedIntegerValue];

  v12 = [neededCopy objectForKeyedSubscript:MessageDictionaryNicknameTransitionedListKey];
  if (unsignedIntegerValue2 >= unsignedIntegerValue)
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v20 = 134218240;
        v21 = unsignedIntegerValue;
        v22 = 2048;
        v23 = unsignedIntegerValue2;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Received older version number (%lu, old: %lu), dropping transitioned list update", &v20, 0x16u);
      }
    }
  }

  else
  {
    [(IMDNicknameController *)self _clearTransitionedList];
    handleTransitionedList = [(IMDNicknameController *)self handleTransitionedList];
    v14 = [MEMORY[0x277CBEB98] setWithArray:v12];
    [(IMDNicknameController *)self _updateTransitionList:handleTransitionedList withHandles:v14 forKey:@"handleTransitionedList" broadcastUpdates:0];

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
    defaults2 = [(IMDNicknameController *)self defaults];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
    [defaults2 setValue:v17 forDomain:v8 forKey:v9];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_updateActiveNicknameRecordsListIfNeeded:(id)needed
{
  v26 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  v5 = [neededCopy objectForKey:MessageDictionaryNicknameActiveListVersionKey];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  defaults = [(IMDNicknameController *)self defaults];
  v8 = *MEMORY[0x277D1A3C0];
  v9 = *MEMORY[0x277D1A3B0];
  v10 = [defaults getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A3B0]];
  unsignedIntegerValue2 = [v10 unsignedIntegerValue];

  v12 = [neededCopy objectForKeyedSubscript:MessageDictionaryNicknameActiveListKey];
  if (unsignedIntegerValue2 >= unsignedIntegerValue)
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v22 = 134218240;
        v23 = unsignedIntegerValue;
        v24 = 2048;
        v25 = unsignedIntegerValue2;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Received older version number (%lu, old: %lu), dropping active list update", &v22, 0x16u);
      }
    }
  }

  else
  {
    [(IMDNicknameController *)self _clearActiveNicknameRecords];
    activeNicknameRecords = [(IMDNicknameController *)self activeNicknameRecords];
    [(IMDNicknameController *)self _updateActiveList:activeNicknameRecords withRecords:v12 broadcastUpdates:0];

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
    broadcasterForAccountListeners = [v15 broadcasterForAccountListeners];
    activeRecords = [(IMDNicknameController *)self activeRecords];
    [broadcasterForAccountListeners updateActiveNicknameRecords:activeRecords];

    defaults2 = [(IMDNicknameController *)self defaults];
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
    [defaults2 setValue:v19 forDomain:v8 forKey:v9];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_updateIgnoredNicknameRecordsListIfNeeded:(id)needed
{
  v31 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  v5 = [neededCopy objectForKey:MessageDictionaryNicknameIgnoredListVersionKey];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  defaults = [(IMDNicknameController *)self defaults];
  v8 = *MEMORY[0x277D1A3C0];
  v9 = *MEMORY[0x277D1A3D0];
  v10 = [defaults getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A3D0]];
  unsignedIntegerValue2 = [v10 unsignedIntegerValue];

  v12 = [neededCopy objectForKeyedSubscript:MessageDictionaryNicknameIgnoredListKey];
  if (unsignedIntegerValue2 >= unsignedIntegerValue)
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v27 = 134218240;
        v28 = unsignedIntegerValue;
        v29 = 2048;
        v30 = unsignedIntegerValue2;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Received older version number (%lu, old: %lu), dropping ignored list update", &v27, 0x16u);
      }
    }
  }

  else
  {
    ignoredNicknameRecords = [(IMDNicknameController *)self ignoredNicknameRecords];
    v14 = [ignoredNicknameRecords isEqualToDictionary:v12];

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

      defaults2 = [(IMDNicknameController *)self defaults];
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
      [defaults2 setValue:v17 forDomain:v8 forKey:v9];
    }

    else
    {
      [(IMDNicknameController *)self _clearIgnoredNicknameRecords];
      ignoredNicknameRecords2 = [(IMDNicknameController *)self ignoredNicknameRecords];
      [(IMDNicknameController *)self _updateIgnoredList:ignoredNicknameRecords2 withRecords:v12 broadcastUpdates:0];

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
      broadcasterForAccountListeners = [v21 broadcasterForAccountListeners];
      ignoredRecords = [(IMDNicknameController *)self ignoredRecords];
      [broadcasterForAccountListeners updateIgnoredNicknameRecords:ignoredRecords];

      defaults3 = [(IMDNicknameController *)self defaults];
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
      [defaults3 setValue:v25 forDomain:v8 forKey:v9];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)_diffActiveRecords:(id)records againstPrevious:(id)previous
{
  v29 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  previousCopy = previous;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v26 = recordsCopy;
      v27 = 2112;
      v28 = previousCopy;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Checking new active list: %@, against previous active list: %@", buf, 0x16u);
    }
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = recordsCopy;
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
        v15 = [previousCopy objectForKeyedSubscript:v13];
        if (!v15 || ([v14 isEqualToString:v15] & 1) == 0)
        {
          [dictionary setObject:v14 forKeyedSubscript:v13];
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
      v26 = dictionary;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Sending active records diff: %@", buf, 0xCu);
    }
  }

  v17 = [dictionary copy];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)_updateDenyAllowListHandlesVersion
{
  v15 = *MEMORY[0x277D85DE8];
  defaults = [(IMDNicknameController *)self defaults];
  v4 = *MEMORY[0x277D1A3C0];
  v5 = *MEMORY[0x277D1A3B8];
  v6 = [defaults getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A3B8]];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  defaults2 = [(IMDNicknameController *)self defaults];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue + 1];
  [defaults2 setValue:v9 forDomain:v4 forKey:v5];

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue + 1];
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
  defaults = [(IMDNicknameController *)self defaults];
  v4 = *MEMORY[0x277D1A3C0];
  v5 = *MEMORY[0x277D1A430];
  v6 = [defaults getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A430]];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  defaults2 = [(IMDNicknameController *)self defaults];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue + 1];
  [defaults2 setValue:v9 forDomain:v4 forKey:v5];

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue + 1];
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
  defaults = [(IMDNicknameController *)self defaults];
  v4 = *MEMORY[0x277D1A3C0];
  v5 = *MEMORY[0x277D1A3B0];
  v6 = [defaults getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A3B0]];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  defaults2 = [(IMDNicknameController *)self defaults];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue + 1];
  [defaults2 setValue:v9 forDomain:v4 forKey:v5];

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue + 1];
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
  defaults = [(IMDNicknameController *)self defaults];
  v4 = *MEMORY[0x277D1A3C0];
  v5 = *MEMORY[0x277D1A3D0];
  v6 = [defaults getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A3D0]];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  defaults2 = [(IMDNicknameController *)self defaults];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue + 1];
  [defaults2 setValue:v9 forDomain:v4 forKey:v5];

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue + 1];
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
  handleAllowList = [(IMDNicknameController *)self handleAllowList];
  allObjects = [handleAllowList allObjects];

  handleDenyList = [(IMDNicknameController *)self handleDenyList];
  allObjects2 = [handleDenyList allObjects];

  if (!allObjects)
  {
    allObjects = [MEMORY[0x277CBEA60] array];
    if (allObjects2)
    {
      goto LABEL_3;
    }

LABEL_5:
    allObjects2 = [MEMORY[0x277CBEA60] array];
    goto LABEL_3;
  }

  if (!allObjects2)
  {
    goto LABEL_5;
  }

LABEL_3:
  defaults = [(IMDNicknameController *)self defaults];
  v8 = [defaults getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A3B8]];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  v13[0] = MessageDictionaryNicknameDenyListKey;
  v13[1] = MessageDictionaryNicknameAllowListKey;
  v14[0] = allObjects2;
  v14[1] = allObjects;
  v13[2] = MessageDictionaryNicknameDenyAllowListVersionKey;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
  v14[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];

  [(IMDNicknameController *)self _sendMessageDictionary:v11 toDevice:0];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_syncHandleTransitionedListToOtherDevices
{
  v12[2] = *MEMORY[0x277D85DE8];
  handleTransitionedList = [(IMDNicknameController *)self handleTransitionedList];
  allObjects = [handleTransitionedList allObjects];

  if (!allObjects)
  {
    allObjects = [MEMORY[0x277CBEA60] array];
  }

  defaults = [(IMDNicknameController *)self defaults];
  v6 = [defaults getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A430]];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  v11[0] = MessageDictionaryNicknameTransitionedListKey;
  v11[1] = MessageDictionaryNicknameTransitionedListVersionKey;
  v12[0] = allObjects;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  [(IMDNicknameController *)self _sendMessageDictionary:v9 toDevice:0];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_syncActiveNicknameRecordsToOtherDevices
{
  v11[2] = *MEMORY[0x277D85DE8];
  activeNicknameRecords = [(IMDNicknameController *)self activeNicknameRecords];
  if (!activeNicknameRecords)
  {
    activeNicknameRecords = [MEMORY[0x277CBEAC0] dictionary];
  }

  defaults = [(IMDNicknameController *)self defaults];
  v5 = [defaults getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A3B0]];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v10[0] = MessageDictionaryNicknameActiveListKey;
  v10[1] = MessageDictionaryNicknameActiveListVersionKey;
  v11[0] = activeNicknameRecords;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  [(IMDNicknameController *)self _sendMessageDictionary:v8 toDevice:0];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_syncIgnoredNicknameRecordsToOtherDevices
{
  v14[2] = *MEMORY[0x277D85DE8];
  ignoredNicknameRecords = [(IMDNicknameController *)self ignoredNicknameRecords];
  if (!ignoredNicknameRecords)
  {
    ignoredNicknameRecords = [MEMORY[0x277CBEAC0] dictionary];
  }

  defaults = [(IMDNicknameController *)self defaults];
  v5 = [defaults getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A3D0]];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v13[0] = MessageDictionaryNicknameIgnoredListKey;
  v13[1] = MessageDictionaryNicknameIgnoredListVersionKey;
  v14[0] = ignoredNicknameRecords;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
  v14[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 134217984;
      v12 = unsignedIntegerValue;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Sending ignored list to peer devices, with current version: %lu", &v11, 0xCu);
    }
  }

  [(IMDNicknameController *)self _sendMessageDictionary:v8 toDevice:0];

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_requestingToSendLocalNicknameInfo:(id)info
{
  v3 = [info objectForKey:MessageDictionaryNicknameRequestPersonalNicknameInfoKey];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)handleNicknameUpdatesFromPeerDevice:(id)device fromPeerDevice:(id)peerDevice
{
  v14 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  peerDeviceCopy = peerDevice;
  if ([(IMDNicknameController *)self _nicknameFeatureEnabled])
  {
    v8 = [deviceCopy description];
    [(IMDNicknameController *)self _showDebugAlertWithHeader:@"Nickname Updates from Peer Device" message:v8];

    if ([(IMDNicknameController *)self _requestingToSendLocalNicknameInfo:deviceCopy])
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v12 = 138412290;
          v13 = peerDeviceCopy;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "We got a request to send nickname info to a specific device %@", &v12, 0xCu);
        }
      }

      [(IMDNicknameController *)self sendPersonalNicknameRecordIDAndVersionRequestedByDevice:peerDeviceCopy];
    }

    else
    {
      [(IMDNicknameController *)self _updateSharingPreferencesIfNeededFromMadridMessage:deviceCopy];
      [(IMDNicknameController *)self _updateCloudKitRecordIDAndDecryptionKeyIfNeeded:deviceCopy];
      [(IMDNicknameController *)self _updateNicknameListsIfNeeded:deviceCopy];
      [(IMDNicknameController *)self _updateHandleDenyAllowListIfNeeded:deviceCopy];
      [(IMDNicknameController *)self _updateHandleTransitionedListIfNeeded:deviceCopy];
      [(IMDNicknameController *)self _updateActiveNicknameRecordsListIfNeeded:deviceCopy];
      [(IMDNicknameController *)self _updateIgnoredNicknameRecordsListIfNeeded:deviceCopy];
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

- (void)_updateNameOnlyUpdateForMessage:(id)message fromHandleID:(id)d
{
  v33 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v27 = 136315650;
      v28 = "[IMDNicknameController _updateNameOnlyUpdateForMessage:fromHandleID:]";
      v29 = 2112;
      v30 = dCopy;
      v31 = 2112;
      v32 = messageCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "%s fromHandleID: %@, message: %@", &v27, 0x20u);
    }
  }

  if ([(IMDNicknameController *)self _nicknameFeatureEnabled])
  {
    v9 = [messageCopy objectForKey:@"FirstName"];
    v10 = [messageCopy objectForKey:@"LastName"];
    if (v9 | v10)
    {
      pendingNicknameUpdates = [(IMDNicknameController *)self pendingNicknameUpdates];
      v12 = [pendingNicknameUpdates objectForKey:dCopy];

      handledNicknames = [(IMDNicknameController *)self handledNicknames];
      v14 = [handledNicknames objectForKey:dCopy];

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

          [(IMDNicknameController *)self _deleteHandleIDFromPendingMap:dCopy];
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
      persistedDictionaryRepresentation = [v17 persistedDictionaryRepresentation];
      [(NSMutableDictionary *)pendingNicknameUpdates setObject:persistedDictionaryRepresentation forKey:dCopy];

      pendingNicknameUpdatesKVStore = [(IMDNicknameController *)self pendingNicknameUpdatesKVStore];
      [(IMDNicknameController *)self _writeNicknameToKVStore:pendingNicknameUpdatesKVStore nickname:v17];

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
  defaults = [(IMDNicknameController *)self defaults];
  v4 = [defaults getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A3E0]];
  if ([v4 BOOLValue])
  {
    _nicknameFeatureEnabled = [(IMDNicknameController *)self _nicknameFeatureEnabled];
  }

  else
  {
    _nicknameFeatureEnabled = 0;
  }

  return _nicknameFeatureEnabled;
}

- (void)sendNicknamePreferencesDidChange
{
  if ([(IMDNicknameController *)self _isNicknamesSharingEnabled])
  {
    nickNameRecordID = [(IMDNicknameController *)self nickNameRecordID];
    v4 = [nickNameRecordID length];

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

    storedPersonalNickname = [(IMDNicknameController *)self storedPersonalNickname];
    if (storedPersonalNickname)
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

- (void)sendPersonalNicknameRecordIDAndVersionRequestedByDevice:(id)device
{
  deviceCopy = device;
  messageDictionaryWithPersonalRecordIDAndVersion = [(IMDNicknameController *)self messageDictionaryWithPersonalRecordIDAndVersion];
  [(IMDNicknameController *)self _sendMessageDictionary:messageDictionaryWithPersonalRecordIDAndVersion toDevice:deviceCopy];
}

- (void)sendPersonalNicknameRecordIDAndVersionToAllPeers
{
  messageDictionaryWithPersonalRecordIDAndVersion = [(IMDNicknameController *)self messageDictionaryWithPersonalRecordIDAndVersion];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "We should send personal nickname info to all of our own devices", v5, 2u);
    }
  }

  [(IMDNicknameController *)self _sendMessageDictionary:messageDictionaryWithPersonalRecordIDAndVersion toDevice:0];
}

- (BOOL)_sendMessageDictionary:(id)dictionary toDevice:(id)device sendType:(unint64_t)type
{
  v96 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  deviceCopy = device;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v91 = deviceCopy;
      v92 = 2048;
      typeCopy = type;
      v94 = 2112;
      v95 = dictionaryCopy;
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

  if (!dictionaryCopy)
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

  devices = [(IDSService *)self->_nicknameService devices];
  v10 = devices;
  if (deviceCopy)
  {
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v11 = devices;
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
      pushToken = [v15 pushToken];
      v19 = [pushToken isEqualToData:v17];

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

    if ((type & 2) == 0)
    {
      goto LABEL_47;
    }

    LOBYTE(type) = 0;
    goto LABEL_29;
  }

  if ((type & 2) != 0)
  {
LABEL_29:
    if ([v10 count])
    {
      v22 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:dictionaryCopy];
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
          typeCopy = v24;
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
  if (type)
  {
    v35 = objc_alloc(MEMORY[0x277D18778]);
    v36 = [v35 initWithService:*MEMORY[0x277D186B0]];
    devices2 = [v36 devices];

    v37 = +[IMDAccountController sharedAccountController];
    v60 = [v37 anySessionForServiceName:*MEMORY[0x277D1A620]];

    if (v60 && [dictionaryCopy count])
    {
      array = [MEMORY[0x277CBEB18] array];
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
      v46 = devices2;
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
              if (deviceCopy)
              {
                if ([v51 isEqualToString:deviceCopy])
                {
                  [array addObject:v51];

                  goto LABEL_85;
                }
              }

              else
              {
                [array addObject:v51];
              }
            }
          }

          v47 = [v46 countByEnumeratingWithState:&v64 objects:v83 count:16];
        }

        while (v47);
      }

LABEL_85:

      if ([array count])
      {
        if (IMOSLoggingEnabled())
        {
          v55 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v91 = array;
            _os_log_impl(&dword_22B4CC000, v55, OS_LOG_TYPE_INFO, "Sending nickname info to destinations %@", buf, 0xCu);
          }
        }

        LOBYTE(v21) = [v60 sendNicknameUpdatesToPeerDevices:dictionaryCopy toDestinations:array];
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
        typeCopy = dictionaryCopy;
        _os_log_impl(&dword_22B4CC000, v54, OS_LOG_TYPE_INFO, "We could not find a service session for imessage to send the nickname info or no contents in message dictionary %@ %@", buf, 0x16u);
      }
    }
  }

LABEL_94:
  v56 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)sendNameOnlyToHandleIDs:(id)ds fromHandleID:(id)d
{
  v51 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  dCopy = d;
  _nicknameFeatureEnabled = [(IMDNicknameController *)self _nicknameFeatureEnabled];
  v7 = IMOSLoggingEnabled();
  if (_nicknameFeatureEnabled)
  {
    selfCopy = self;
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v48 = dsCopy;
        v49 = 2112;
        v50 = dCopy;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Sending name only to: %@ from: %@", buf, 0x16u);
      }
    }

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v10 = dsCopy;
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
          _appearsToBePhoneNumber = [v21 _appearsToBePhoneNumber];

          v23 = [v20 ID];
          v24 = v23;
          if (_appearsToBePhoneNumber)
          {
            v25 = IDSCopyIDForPhoneNumber();
            [v15 setObject:v20 forKey:v25];
          }

          else
          {
            _appearsToBeEmail = [v23 _appearsToBeEmail];

            if (_appearsToBeEmail)
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

    allKeys = [v15 allKeys];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_22B5CAB24;
    v34[3] = &unk_278705DB8;
    v35 = dCopy;
    v36 = selfCopy;
    [(IMDNicknameController *)selfCopy _getDevicesForBothNicknameServices:allKeys removeNewServiceURIsFromIMessageList:0 completionHandler:v34];
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

- (void)queueChatToSendNicknamePostUploadIfNeeded:(id)needed
{
  v14 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  if ([(IMDNicknameController *)self nicknameIsUploadingToCK])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        guid = [neededCopy guid];
        v12 = 138412290;
        v13 = guid;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "We are still uploading the nickname to iCloud, queue to send info out of band for chat %@", &v12, 0xCu);
      }
    }

    if (!self->_chatsToSendNicknameInfoTo)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      chatsToSendNicknameInfoTo = self->_chatsToSendNicknameInfoTo;
      self->_chatsToSendNicknameInfoTo = v7;
    }

    chatsToSendNicknameInfoTo = [(IMDNicknameController *)self chatsToSendNicknameInfoTo];
    guid2 = [neededCopy guid];
    [chatsToSendNicknameInfoTo addObject:guid2];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_getDevicesForBothNicknameServices:(id)services removeNewServiceURIsFromIMessageList:(BOOL)list completionHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  handlerCopy = handler;
  if (![servicesCopy count])
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

    handlerCopy[2](handlerCopy, 0);
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
  [v13 currentRemoteDevicesForDestinations:servicesCopy service:@"com.apple.private.alloy.nameandphoto" listenerID:@"IMDNicknameController" queue:v12 completionBlock:v28];
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
  [v16 currentRemoteDevicesForDestinations:servicesCopy service:v17 listenerID:@"MessageServiceSession" queue:v12 completionBlock:v25];
  dispatch_time(0, 60000000000);
  v24 = handlerCopy;
  v20 = handlerCopy;
  v21 = v14;
  v22 = v18;
  IMDispatchGroupNotifyWithTimeout();

  v23 = *MEMORY[0x277D85DE8];
}

- (void)sendPersonalNicknameToRecipients:(id)recipients chatGUID:(id)d fromHandle:(id)handle onlyUseNicknameSendingService:(BOOL)service onlySendToThoseLoggedOutOfIMessage:(BOOL)message
{
  messageCopy = message;
  v54 = *MEMORY[0x277D85DE8];
  recipientsCopy = recipients;
  dCopy = d;
  handleCopy = handle;
  if ([(IMDNicknameController *)self _nicknameFeatureEnabled])
  {
    newNicknameInfoToSend = [(IMDNicknameController *)self newNicknameInfoToSend];
    if (newNicknameInfoToSend)
    {
      serviceCopy = service;
      v31 = messageCopy;
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v49 = recipientsCopy;
          v50 = 2112;
          v51 = dCopy;
          v52 = 2112;
          v53 = handleCopy;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Attempting to send nickname to recipients: %@ on chat %@ from handle: %@", buf, 0x20u);
        }
      }

      v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v15 = recipientsCopy;
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
              _appearsToBePhoneNumber = [v20 _appearsToBePhoneNumber];

              v22 = [v19 ID];
              v23 = v22;
              if (_appearsToBePhoneNumber)
              {
                v24 = IDSCopyIDForPhoneNumber();
              }

              else
              {
                _appearsToBeEmail = [v22 _appearsToBeEmail];

                if (!_appearsToBeEmail)
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

      allKeys = [v14 allKeys];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = sub_22B5CBDC8;
      v35[3] = &unk_278705E08;
      v36 = handleCopy;
      v41 = v31;
      v37 = dCopy;
      v38 = newNicknameInfoToSend;
      selfCopy = self;
      v40 = v15;
      v42 = serviceCopy;
      [(IMDNicknameController *)self _getDevicesForBothNicknameServices:allKeys removeNewServiceURIsFromIMessageList:!v31 completionHandler:v35];
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
  nickNameDecryptionKey = [(IMDNicknameController *)self nickNameDecryptionKey];
  wallpaperDataTag = [(IMDNicknameController *)self wallpaperDataTag];
  lowResWallpaperDataTag = [(IMDNicknameController *)self lowResWallpaperDataTag];
  wallpaperMetadataTag = [(IMDNicknameController *)self wallpaperMetadataTag];
  nickNameRecordID = [(IMDNicknameController *)self nickNameRecordID];
  if ([nickNameDecryptionKey length] && objc_msgSend(nickNameRecordID, "length"))
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = v8;
    if (nickNameRecordID)
    {
      CFDictionarySetValue(v8, MessageDictionaryNicknameCloudKitRecordKey, nickNameRecordID);
    }

    if (nickNameDecryptionKey)
    {
      CFDictionarySetValue(v9, MessageDictionaryNicknameCloudKitDecryptionRecordKey, nickNameDecryptionKey);
    }

    _typeOfNicknameUpdateToShare = [(IMDNicknameController *)self _typeOfNicknameUpdateToShare];
    if (_typeOfNicknameUpdateToShare)
    {
      CFDictionarySetValue(v9, MessageDictionaryNicknameUpdateInfoIncluded, _typeOfNicknameUpdateToShare);
    }

    personalNickname = [(IMDNicknameController *)self personalNickname];
    wallpaper = [personalNickname wallpaper];

    if (wallpaper)
    {
      v13 = NSStringFromBOOL();
      if (v13)
      {
        CFDictionarySetValue(v9, MessageDictionaryWallpaperUpdateKey, v13);
      }

      if (wallpaperDataTag)
      {
        CFDictionarySetValue(v9, MessageDictionaryNicknameWallpaperTagKey, wallpaperDataTag);
      }

      if (lowResWallpaperDataTag)
      {
        CFDictionarySetValue(v9, MessageDictionaryNicknameLowResWallpaperTagKey, lowResWallpaperDataTag);
      }

      if (wallpaperMetadataTag)
      {
        CFDictionarySetValue(v9, MessageDictionaryNicknameWallpaperMetadataTagKey, wallpaperMetadataTag);
      }
    }

    avatarRecipeTag = [(IMDNicknameController *)self avatarRecipeTag];
    if (avatarRecipeTag)
    {
      CFDictionarySetValue(v9, MessageDictionaryNicknameAvatarRecipeDataTagKey, avatarRecipeTag);
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

- (id)_idsDeviceFromPushToken:(id)token
{
  v20 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  nicknameService = [(IMDNicknameController *)self nicknameService];
  devices = [nicknameService devices];

  v7 = [devices countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(devices);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        pushToken = [v10 pushToken];
        v12 = [pushToken isEqualToData:tokenCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [devices countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)displayTapToRadarNotificationWithError:(id)error invalidData:(id)data
{
  v28[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  dataCopy = data;
  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  isInternalInstall = [mEMORY[0x277D19268] isInternalInstall];

  if (isInternalInstall)
  {
    v9 = MEMORY[0x277CBEBC0];
    v10 = NSTemporaryDirectory();
    v11 = [v9 fileURLWithPath:v10];

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v14 = [uUIDString stringByAppendingString:@"-nicknameData"];

    v15 = [v11 URLByAppendingPathComponent:v14];
    path = [v15 path];
    v27 = 0;
    v17 = [dataCopy writeToFile:path options:1 error:&v27];
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
    v21 = [errorCopy description];
    localizedDescription = [errorCopy localizedDescription];
    v23 = [v20 stringWithFormat:@"I encountered a BlastDoor explosion when receiving a Name and Photo payload. Error: %@. Localized description: %@", v21, localizedDescription];

    v24 = MEMORY[0x277D1AC88];
    v28[0] = v15;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    [v24 submitAndOpenTapToRadarWithNotificationIdentifier:@"com.apple.MobileSMS.IMDNicknameController" notificationTitle:@"Invalid incoming Name and Photo payload" notificationBody:@"Please file a radar. This is a serious issue that needs to be identified and addressed." draftTitle:@"[SNaP] Invalid Name and Photo payload received" problemDescription:v23 attachments:v25 deviceClasses:&unk_283F4EE70 classification:@"Serious Bug" reproducibility:@"I Didn't Try"];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service account:(id)account incomingTopLevelMessage:(id)message fromID:(id)d messageContext:(id)context
{
  v73 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  v14 = [messageCopy objectForKey:*MEMORY[0x277D187F8]];
  v15 = [messageCopy objectForKey:*MEMORY[0x277D18810]];
  v16 = +[IMDChatRegistry sharedInstance];
  v17 = [v16 _hasSavedContactCardForHandle:dCopy];

  v18 = [MEMORY[0x277D1AB80] contextWithKnownSender:v17];
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v70 = dCopy;
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
        v70 = dCopy;
        v71 = 2112;
        v72 = v20;
        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Received a nickname update from: %@, with message: %@", buf, 0x16u);
      }
    }

    if (IMSharedHelperNickNameEnabled())
    {
      if ([(__CFString *)dCopy length])
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
              v70 = dCopy;
              _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "This is a personal nickname update from: %@", buf, 0xCu);
            }
          }

          v34 = IDSCopyTokenAndIDForTokenWithID();
          v35 = 0;
          v36 = [(IMDNicknameController *)self _idsDeviceFromPushToken:v35];
          if (v36)
          {
            [(IMDNicknameController *)self handleNicknameUpdatesFromPeerDevice:v20 fromPeerDevice:dCopy];
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
              v70 = dCopy;
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
              v70 = dCopy;
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
          dCopy = v49;
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
  broadcasterForAccountListeners = [v6 broadcasterForAccountListeners];
  allowListedHandlesForSharing = [(IMDNicknameController *)self allowListedHandlesForSharing];
  denyListedHandlesForSharing = [(IMDNicknameController *)self denyListedHandlesForSharing];
  [broadcasterForAccountListeners updateNicknameHandlesForSharing:allowListedHandlesForSharing blocked:denyListedHandlesForSharing];
}

- (void)broadcastTransitionedHandlesDidChange
{
  v5 = +[IMDBroadcastController sharedProvider];
  broadcasterForAccountListeners = [v5 broadcasterForAccountListeners];
  transitionedHandles = [(IMDNicknameController *)self transitionedHandles];
  [broadcasterForAccountListeners updateTransitionedNicknameHandles:transitionedHandles];
}

- (void)allowHandlesForSharing:(id)sharing onChatGUIDs:(id)ds fromHandle:(id)handle forceSend:(BOOL)send
{
  sendCopy = send;
  v85 = *MEMORY[0x277D85DE8];
  sharingCopy = sharing;
  dsCopy = ds;
  handleCopy = handle;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v78 = sharingCopy;
      v79 = 2112;
      v80 = dsCopy;
      v81 = 2112;
      v82 = handleCopy;
      v83 = 1024;
      v84 = sendCopy;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Asked to allow handles: %@, on chatGUIDS: %@, from handle: %@, forceSend: %{BOOL}d", buf, 0x26u);
    }
  }

  if (sendCopy || (-[IMDNicknameController allowListedHandlesForSharing](self, "allowListedHandlesForSharing"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [sharingCopy isSubsetOfSet:v12], v12, !v13))
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [sharingCopy count];
        *buf = 134217984;
        v78 = v16;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Writing %lu nicknames to allow list", buf, 0xCu);
      }
    }

    [(IMDNicknameController *)self markHandlesAsAllowed:sharingCopy, dsCopy];
    if (dsCopy && [dsCopy count])
    {
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v17 = dsCopy;
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

            participants = [v23 participants];
            guid = [v23 guid];
            [(IMDNicknameController *)self sendPersonalNicknameToRecipients:participants chatGUID:guid fromHandle:handleCopy];
          }

          v18 = [v17 countByEnumeratingWithState:&v69 objects:v76 count:16];
        }

        while (v18);
      }
    }

    else if (sharingCopy)
    {
      v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v28 = sharingCopy;
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
      if (!handleCopy || v42)
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
              if (handleCopy || ([*(*(&v57 + 1) + 8 * v47) lastAddressedLocalHandle], (handleCopy = objc_claimAutoreleasedReturnValue()) != 0))
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

                guid2 = [v48 guid];
                [(IMDNicknameController *)self sendPersonalNicknameToRecipients:v33 chatGUID:guid2 fromHandle:handleCopy];
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

                handleCopy = 0;
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

        [(IMDNicknameController *)self sendPersonalNicknameToRecipients:v33 chatGUID:0 fromHandle:handleCopy];
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v78 = sharingCopy;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "We tried to allow handle(s) that have already been allowed, bailing. Handles: %@", buf, 0xCu);
    }
  }

  v53 = *MEMORY[0x277D85DE8];
}

- (void)markHandlesAsAllowed:(id)allowed
{
  v14 = *MEMORY[0x277D85DE8];
  allowedCopy = allowed;
  allowListedHandlesForSharing = [(IMDNicknameController *)self allowListedHandlesForSharing];
  v6 = [allowedCopy isSubsetOfSet:allowListedHandlesForSharing];

  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = allowedCopy;
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
        v13 = [allowedCopy count];
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Writing %lu nicknames to allow list", &v12, 0xCu);
      }
    }

    handleAllowList = [(IMDNicknameController *)self handleAllowList];
    [(IMDNicknameController *)self _updateHandleList:handleAllowList withHandles:allowedCopy forKey:@"handleWhitelist" broadcastUpdates:1];

    [(IMDNicknameController *)self broadcastHandlesSharingNicknamesDidChange];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)denyHandlesForSharing:(id)sharing
{
  v10 = *MEMORY[0x277D85DE8];
  sharingCopy = sharing;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 134217984;
      v9 = [sharingCopy count];
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Writing %lu nicknames to deny list", &v8, 0xCu);
    }
  }

  handleDenyList = [(IMDNicknameController *)self handleDenyList];
  [(IMDNicknameController *)self _updateHandleList:handleDenyList withHandles:sharingCopy forKey:@"handleBlacklist" broadcastUpdates:1];

  [(IMDNicknameController *)self broadcastHandlesSharingNicknamesDidChange];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)markNicknamesAsTransitionedForHandleIDs:(id)ds isAutoUpdate:(BOOL)update
{
  updateCopy = update;
  v29 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v21 = dsCopy;
  if (dsCopy)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = dsCopy;
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
          if (updateCopy)
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

    handleTransitionedList = [(IMDNicknameController *)self handleTransitionedList];
    [(IMDNicknameController *)self _updateTransitionList:handleTransitionedList withHandles:v7 forKey:@"handleTransitionedList" broadcastUpdates:1];

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

- (void)markProfileRecords:(id)records asActive:(BOOL)active
{
  activeCopy = active;
  v18 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  if (recordsCopy)
  {
    v7 = IMOSLoggingEnabled();
    if (activeCopy)
    {
      if (v7)
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v16 = 134217984;
          v17 = [recordsCopy count];
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Writing record IDs %lu to active list", &v16, 0xCu);
        }
      }

      activeNicknameRecords = [(IMDNicknameController *)self activeNicknameRecords];
      [(IMDNicknameController *)self _updateActiveList:activeNicknameRecords withRecords:recordsCopy broadcastUpdates:1];
    }

    else
    {
      if (v7)
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v16 = 134217984;
          v17 = [recordsCopy count];
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Removing record IDs %lu from active list", &v16, 0xCu);
        }
      }

      activeNicknameRecords = [recordsCopy allKeys];
      [(IMDNicknameController *)self _removeFromList:activeNicknameRecords withKey:@"activeNicknameRecords"];
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
    broadcasterForAccountListeners = [v10 broadcasterForAccountListeners];
    activeRecords = [(IMDNicknameController *)self activeRecords];
    [broadcasterForAccountListeners updateActiveNicknameRecords:activeRecords];
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

- (void)_updateHandleList:(id)list withHandles:(id)handles forKey:(id)key broadcastUpdates:(BOOL)updates
{
  updatesCopy = updates;
  v28 = *MEMORY[0x277D85DE8];
  listCopy = list;
  handlesCopy = handles;
  keyCopy = key;
  if ([handlesCopy isSubsetOfSet:listCopy])
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v25 = handlesCopy;
        v26 = 2112;
        v27 = keyCopy;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Given handles are already in our list, no need to do anything. Handles: %@, key: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    [listCopy unionSet:handlesCopy];
    v23 = 0;
    v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:listCopy requiringSecureCoding:1 error:&v23];
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
          v25 = keyCopy;
          v26 = 2112;
          v27 = v16;
          _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Nicknames - We had a problem archiving handle list for key %@ error %@", buf, 0x16u);
        }
      }
    }

    else
    {
      handleSharingKVStore = [(IMDNicknameController *)self handleSharingKVStore];
      v22 = 0;
      [handleSharingKVStore persistData:v14 forKey:keyCopy error:&v22];
      v18 = v22;

      if (v18 && IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v25 = keyCopy;
          v26 = 2112;
          v27 = v18;
          _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Nicknames - We had a problem writing a handle list update with key %@ -  %@", buf, 0x16u);
        }
      }
    }

    if (updatesCopy)
    {
      [(IMDNicknameController *)self _updateDenyAllowListHandlesVersion];
      [(IMDNicknameController *)self _syncHandleAllowDenyListToOtherDevices];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_updateTransitionList:(id)list withHandles:(id)handles forKey:(id)key broadcastUpdates:(BOOL)updates
{
  updatesCopy = updates;
  v28 = *MEMORY[0x277D85DE8];
  listCopy = list;
  handlesCopy = handles;
  keyCopy = key;
  [listCopy unionSet:handlesCopy];
  v23 = 0;
  v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:listCopy requiringSecureCoding:1 error:&v23];
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
    nicknameRecordsKVStore = [(IMDNicknameController *)self nicknameRecordsKVStore];
    v22 = 0;
    [nicknameRecordsKVStore persistData:v13 forKey:keyCopy error:&v22];
    v20 = v22;

    if (v20 && IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v25 = keyCopy;
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
      v25 = keyCopy;
      v26 = 2112;
      v27 = v15;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Nicknames - We had a problem archiving transitioned list for key %@ error %@", buf, 0x16u);
    }
  }

  if (updatesCopy)
  {
    [(IMDNicknameController *)self _updateTransitionedListHandlesVersion];
    [(IMDNicknameController *)self _syncHandleTransitionedListToOtherDevices];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_updateActiveList:(id)list withRecords:(id)records broadcastUpdates:(BOOL)updates
{
  updatesCopy = updates;
  v25 = *MEMORY[0x277D85DE8];
  listCopy = list;
  recordsCopy = records;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v22 = recordsCopy;
      v23 = 2112;
      v24 = listCopy;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Saving new active list: %@, after previous active list: %@", buf, 0x16u);
    }
  }

  if (listCopy)
  {
    [listCopy addEntriesFromDictionary:recordsCopy];
    v20 = 0;
    v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:listCopy requiringSecureCoding:1 error:&v20];
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
      nicknameRecordsKVStore = [(IMDNicknameController *)self nicknameRecordsKVStore];
      v19 = 0;
      [nicknameRecordsKVStore persistData:v11 forKey:@"activeNicknameRecords" error:&v19];
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

    if (updatesCopy)
    {
      [(IMDNicknameController *)self _updateIsActiveListHandlesVersion];
      [(IMDNicknameController *)self _syncActiveNicknameRecordsToOtherDevices];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_updateIgnoredList:(id)list withRecords:(id)records broadcastUpdates:(BOOL)updates
{
  updatesCopy = updates;
  v25 = *MEMORY[0x277D85DE8];
  listCopy = list;
  recordsCopy = records;
  if (listCopy)
  {
    [listCopy addEntriesFromDictionary:recordsCopy];
    v20 = 0;
    v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:listCopy requiringSecureCoding:1 error:&v20];
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
      nicknameRecordsKVStore = [(IMDNicknameController *)self nicknameRecordsKVStore];
      v19 = 0;
      [nicknameRecordsKVStore persistData:v10 forKey:@"ignoredNicknameRecords" error:&v19];
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

    if (updatesCopy)
    {
      [(IMDNicknameController *)self _updateIsIgnoredListHandlesVersion];
      [(IMDNicknameController *)self _syncIgnoredNicknameRecordsToOtherDevices];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)unknownSenderRecordInfoFor:(id)for
{
  forCopy = for;
  unknownSenderRecordInfo = [(IMDNicknameController *)self unknownSenderRecordInfo];
  v6 = [unknownSenderRecordInfo objectForKey:forCopy];

  v7 = [MEMORY[0x277D1AAD0] processSetOfUnknownSenderRecords:v6];

  return v7;
}

- (void)_replaceUnknownSenderRecordInfoListWithInfo:(id)info purgeIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v27 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (infoCopy)
  {
    [(IMDNicknameController *)self setUnknownSenderRecordInfo:infoCopy];
    v7 = MEMORY[0x277CCAAB0];
    v8 = MEMORY[0x277CBEAC0];
    unknownSenderRecordInfo = [(IMDNicknameController *)self unknownSenderRecordInfo];
    v10 = [v8 dictionaryWithDictionary:unknownSenderRecordInfo];
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
      unknownSenderRecordInfoKVStore = [(IMDNicknameController *)self unknownSenderRecordInfoKVStore];
      v21 = 0;
      [unknownSenderRecordInfoKVStore persistData:v11 forKey:@"unknownSenderRecordInfoKey" error:&v21];
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

    if (neededCopy)
    {
      [(IMDNicknameController *)self purgeUnknownSenderRecordInfoIfNeeded];
    }

    v17 = +[IMDBroadcastController sharedProvider];
    broadcasterForAccountListeners = [v17 broadcasterForAccountListeners];
    unknownSenderRecordInfo2 = [(IMDNicknameController *)self unknownSenderRecordInfo];
    [broadcasterForAccountListeners updateUnknownSenderRecords:unknownSenderRecordInfo2];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_removeFromTransitionedList:(id)list
{
  v28 = *MEMORY[0x277D85DE8];
  listCopy = list;
  if ([(IMDNicknameController *)self _nicknameFeatureEnabled])
  {
    handle = [(__CFString *)listCopy handle];
    if (handle)
    {
      handleTransitionedList = [(IMDNicknameController *)self handleTransitionedList];
      v7 = [handleTransitionedList count];

      if (v7)
      {
        handleTransitionedList2 = [(IMDNicknameController *)self handleTransitionedList];
        v9 = [handleTransitionedList2 containsObject:handle];

        if (v9)
        {
          handleTransitionedList3 = [(IMDNicknameController *)self handleTransitionedList];
          [handleTransitionedList3 removeObject:handle];

          v11 = MEMORY[0x277CCAAB0];
          handleTransitionedList4 = [(IMDNicknameController *)self handleTransitionedList];
          v23 = 0;
          v13 = [v11 archivedDataWithRootObject:handleTransitionedList4 requiringSecureCoding:1 error:&v23];
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
            nicknameRecordsKVStore = [(IMDNicknameController *)self nicknameRecordsKVStore];
            v22 = 0;
            [nicknameRecordsKVStore persistData:v13 forKey:@"handleTransitionedList" error:&v22];
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
            v25 = listCopy;
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
        v25 = listCopy;
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

- (void)_removeFromList:(id)list withKey:(id)key
{
  v37 = *MEMORY[0x277D85DE8];
  listCopy = list;
  keyCopy = key;
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

  if (![listCopy count])
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

  if ([keyCopy isEqualToString:@"ignoredNicknameRecords"])
  {
    ignoredNicknameRecords = [(IMDNicknameController *)self ignoredNicknameRecords];
  }

  else
  {
    if (![keyCopy isEqualToString:@"activeNicknameRecords"])
    {
      goto LABEL_46;
    }

    ignoredNicknameRecords = [(IMDNicknameController *)self activeNicknameRecords];
  }

  v10 = ignoredNicknameRecords;
  if (ignoredNicknameRecords)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = listCopy;
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
          v33 = keyCopy;
          v34 = 2112;
          v35 = v11;
          _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Nicknames - We had a problem archiving list for key %@ error %@", buf, 0x16u);
        }
      }
    }

    else
    {
      nicknameRecordsKVStore = [(IMDNicknameController *)self nicknameRecordsKVStore];
      v26 = 0;
      [nicknameRecordsKVStore persistData:v18 forKey:keyCopy error:&v26];
      v21 = v26;

      if (v21 && IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v33 = keyCopy;
          v34 = 2112;
          v35 = v21;
          _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Nicknames - We had a problem writing list update with key %@ -  %@", buf, 0x16u);
        }
      }
    }

    if ([keyCopy isEqualToString:@"ignoredNicknameRecords"])
    {
      [(IMDNicknameController *)self _updateIsIgnoredListHandlesVersion];
      [(IMDNicknameController *)self _syncIgnoredNicknameRecordsToOtherDevices];
    }

    else if ([keyCopy isEqualToString:@"activeNicknameRecords"])
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
  defaults = [(IMDNicknameController *)self defaults];
  v4 = *MEMORY[0x277D1A3C0];
  v5 = *MEMORY[0x277D1A408];
  v6 = [defaults getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A408]];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  defaults2 = [(IMDNicknameController *)self defaults];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue + 1];
  [defaults2 setValue:v9 forDomain:v4 forKey:v5];

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue + 1];
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Updated pending nickname version to %@", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)saveNicknameForRecordID:(id)d handleID:(id)iD userNickname:(id)nickname
{
  dCopy = d;
  iDCopy = iD;
  nicknameCopy = nickname;
  [nicknameCopy setRecordID:dCopy];
  [nicknameCopy setHandle:iDCopy];
  v11 = [(IMDNicknameController *)self replacedNicknameForHandleIDInHandledMapIfNeeded:iDCopy nickname:nicknameCopy];
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

    [(IMDNicknameController *)self addNicknameToPendingUpdates:nicknameCopy];
  }

  preBlastDoorPayloadData = [nicknameCopy preBlastDoorPayloadData];

  if (iDCopy && preBlastDoorPayloadData)
  {
    unknownSenderRecordInfo = [(IMDNicknameController *)self unknownSenderRecordInfo];
    v17 = [unknownSenderRecordInfo objectForKey:iDCopy];
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

    preBlastDoorPayloadData2 = [nicknameCopy preBlastDoorPayloadData];
    v23 = [preBlastDoorPayloadData2 mutableCopy];

    v24 = [MEMORY[0x277CBEAA8] now];
    [v23 setObject:v24 forKey:@"date"];

    v25 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v23];
    [v21 addObject:v25];

    unknownSenderRecordInfo2 = [(IMDNicknameController *)self unknownSenderRecordInfo];
    v27 = [unknownSenderRecordInfo2 mutableCopy];

    [v27 setObject:v21 forKey:iDCopy];
    [(IMDNicknameController *)self _replaceUnknownSenderRecordInfoListWithInfo:v27 purgeIfNeeded:1];
  }

  else
  {
    [(IMDNicknameController *)self purgeUnknownSenderRecordInfoIfNeeded];
  }
}

- (void)clearPendingNicknameForHandleID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_pendingNicknameUpdates objectForKey:dCopy];
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
      v13 = dCopy;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "We don't have a pending nickname to clear for handle ID %@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)ignorePendingNicknameForHandleID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_pendingNicknameUpdates objectForKey:dCopy];
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
      v15 = dCopy;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "We don't have a malicious pending nickname to clear for handle ID %@", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)clearPendingNicknamePhotoForHandleID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_pendingNicknameUpdates objectForKey:dCopy];
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
      v13 = dCopy;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "We don't have a pending nickname to clear for handle ID %@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_markNicknamePhotoAsUpdated:(id)updated
{
  v23 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  v5 = IMOSLoggingEnabled();
  if (updatedCopy)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        handle = [updatedCopy handle];
        v21 = 138412290;
        v22 = handle;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Marking nickname photo %@ as handled", &v21, 0xCu);
      }
    }

    pendingNicknameUpdates = self->_pendingNicknameUpdates;
    handle2 = [updatedCopy handle];
    [(NSMutableDictionary *)pendingNicknameUpdates removeObjectForKey:handle2];

    [(IMDNicknameController *)self _deleteNicknameFromPendingMap:updatedCopy];
    v10 = objc_alloc(MEMORY[0x277D1AAD0]);
    firstName = [updatedCopy firstName];
    lastName = [updatedCopy lastName];
    pronouns = [updatedCopy pronouns];
    v14 = [v10 initWithFirstName:firstName lastName:lastName avatar:0 pronouns:pronouns];

    if ([v14 isUpdateFromNickname:updatedCopy withOptions:20])
    {
      persistedDictionaryRepresentation = [v14 persistedDictionaryRepresentation];
      v16 = self->_pendingNicknameUpdates;
      handle3 = [updatedCopy handle];
      [(NSMutableDictionary *)v16 setObject:persistedDictionaryRepresentation forKey:handle3];

      pendingNicknameUpdatesKVStore = [(IMDNicknameController *)self pendingNicknameUpdatesKVStore];
      [(IMDNicknameController *)self _writeNicknameToKVStore:pendingNicknameUpdatesKVStore nickname:v14];
    }

    [(IMDNicknameController *)self _updateNicknameInHandledMap:updatedCopy updateType:*MEMORY[0x277D1A3A0] broadcastUpdates:1];
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
  broadcasterForAccountListeners = [v10 broadcasterForAccountListeners];
  pendingNicknameUpdates = [(IMDNicknameController *)self pendingNicknameUpdates];
  v5 = [pendingNicknameUpdates copy];
  handledNicknames = [(IMDNicknameController *)self handledNicknames];
  v7 = [handledNicknames copy];
  archivedNicknames = [(IMDNicknameController *)self archivedNicknames];
  v9 = [archivedNicknames copy];
  [broadcasterForAccountListeners updatePendingNicknameUpdates:v5 handledNicknames:v7 archivedNicknames:v9];
}

- (void)_broadcastActiveListChanged
{
  v5 = +[IMDBroadcastController sharedProvider];
  broadcasterForAccountListeners = [v5 broadcasterForAccountListeners];
  activeRecords = [(IMDNicknameController *)self activeRecords];
  [broadcasterForAccountListeners updateActiveNicknameRecords:activeRecords];
}

- (void)addNicknameToPendingUpdates:(id)updates
{
  v39 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  v5 = updatesCopy;
  if (self->_pendingNicknameUpdates)
  {
    if (updatesCopy)
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
  handle = [v5 handle];

  if (!handle)
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

  avatar = [v5 avatar];
  hasImage = [avatar hasImage];

  if (hasImage)
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

  handledNicknames = [(IMDNicknameController *)self handledNicknames];
  handle2 = [v5 handle];
  v12 = [handledNicknames objectForKey:handle2];

  v13 = [objc_alloc(MEMORY[0x277D1AAD0]) initWithDictionaryRepresentation:v12];
  if ([v5 isUpdateFromNickname:v13 withOptions:4])
  {

LABEL_11:
    pendingNicknameUpdates = [(IMDNicknameController *)self pendingNicknameUpdates];
    handle3 = [v5 handle];
    v16 = [pendingNicknameUpdates objectForKey:handle3];

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
      persistedDictionaryRepresentation = [v5 persistedDictionaryRepresentation];
      handle4 = [v5 handle];
      [(NSMutableDictionary *)v18 setObject:persistedDictionaryRepresentation forKey:handle4];

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
      pendingNicknameUpdatesKVStore = [(IMDNicknameController *)self pendingNicknameUpdatesKVStore];
      [(IMDNicknameController *)self _writeNicknameToKVStore:pendingNicknameUpdatesKVStore nickname:v5];

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

  recordID = [v5 recordID];
  [v13 setRecordID:recordID];

  handledNicknames = self->_handledNicknames;
  persistedDictionaryRepresentation2 = [v13 persistedDictionaryRepresentation];
  handle5 = [v13 handle];
  [(NSMutableDictionary *)handledNicknames setObject:persistedDictionaryRepresentation2 forKey:handle5];

  handledNicknamesKVStore = [(IMDNicknameController *)self handledNicknamesKVStore];
  [(IMDNicknameController *)self _writeNicknameToKVStore:handledNicknamesKVStore nickname:v13];

LABEL_33:
  v33 = *MEMORY[0x277D85DE8];
}

- (BOOL)replacedNicknameForHandleIDInHandledMapIfNeeded:(id)needed nickname:(id)nickname
{
  v23 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  nicknameCopy = nickname;
  handledNicknames = [(IMDNicknameController *)self handledNicknames];
  v9 = [handledNicknames objectForKey:neededCopy];

  v10 = [objc_alloc(MEMORY[0x277D1AAD0]) initWithDictionaryRepresentation:v9];
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = [nicknameCopy isUpdateFromNickname:v10 withOptions:8];
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

      v20 = nicknameCopy;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Existing nickname %@ and new nickname %@ are different %@", &v17, 0x20u);
    }
  }

  if ((v11 & 1) == 0)
  {
    [(IMDNicknameController *)self _updateNicknameInHandledMap:nicknameCopy updateType:*MEMORY[0x277D1A3A0] broadcastUpdates:1];
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

- (void)_markCurrentNicknameAsArchived:(id)archived incrementPendingNicknameVersion:(BOOL)version
{
  v14 = *MEMORY[0x277D85DE8];
  archivedCopy = archived;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      handle = [archivedCopy handle];
      v12 = 138412290;
      v13 = handle;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Marking nickname %@ as archived", &v12, 0xCu);
    }
  }

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isNameAndPhotoC3Enabled = [mEMORY[0x277D1A9B8] isNameAndPhotoC3Enabled];

  if ((isNameAndPhotoC3Enabled & 1) == 0)
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

  if (!archivedCopy)
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

  [(IMDNicknameController *)self _updateNicknameInArchivedMap:archivedCopy];
LABEL_16:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_deleteOnDiskDataIfNeededForNickname:(id)nickname withNewNickname:(id)newNickname
{
  v43 = *MEMORY[0x277D85DE8];
  nicknameCopy = nickname;
  newNicknameCopy = newNickname;
  avatar = [nicknameCopy avatar];
  imageFilePath = [avatar imageFilePath];

  if ([imageFilePath length] && (objc_msgSend(newNicknameCopy, "avatar"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "imageFilePath"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(imageFilePath, "isEqualToString:", v10), v10, v9, (v11 & 1) == 0))
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        handle = [newNicknameCopy handle];
        *buf = 138412546;
        v40 = handle;
        v41 = 2112;
        v42 = imageFilePath;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "For nickname %@, deleting old avatar image at path during mark as updated %@", buf, 0x16u);
      }
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v38 = 0;
    [defaultManager removeItemAtPath:imageFilePath error:&v38];
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

  wallpaper = [nicknameCopy wallpaper];
  filePath = [wallpaper filePath];

  if ([filePath length])
  {
    wallpaper2 = [newNicknameCopy wallpaper];
    filePath2 = [wallpaper2 filePath];
    v21 = [filePath isEqualToString:filePath2];

    if ((v21 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          handle2 = [newNicknameCopy handle];
          *buf = 138412546;
          v40 = handle2;
          v41 = 2112;
          v42 = filePath;
          _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "For nickname %@, deleting old wallpaper image at path during mark as updated %@", buf, 0x16u);
        }
      }

      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v37 = 0;
      [defaultManager2 removeItemAtPath:filePath error:&v37];
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

  wallpaper3 = [nicknameCopy wallpaper];
  lowResFilePath = [wallpaper3 lowResFilePath];

  if ([lowResFilePath length])
  {
    wallpaper4 = [newNicknameCopy wallpaper];
    lowResFilePath2 = [wallpaper4 lowResFilePath];
    v30 = [lowResFilePath isEqualToString:lowResFilePath2];

    if ((v30 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          handle3 = [newNicknameCopy handle];
          *buf = 138412546;
          v40 = handle3;
          v41 = 2112;
          v42 = imageFilePath;
          _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "For nickname %@, deleting old watch wallpaper image at path during mark as updated %@", buf, 0x16u);
        }
      }

      defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
      v36 = 0;
      [defaultManager3 removeItemAtPath:lowResFilePath error:&v36];
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

- (void)_updateNicknameInArchivedMap:(id)map
{
  v33 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  if (!self->_archivedNicknames)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    archivedNicknames = self->_archivedNicknames;
    self->_archivedNicknames = Mutable;
  }

  handledNicknames = self->_handledNicknames;
  handle = [mapCopy handle];
  v9 = [(NSMutableDictionary *)handledNicknames objectForKey:handle];

  if (v9)
  {
    v10 = self->_archivedNicknames;
    handle2 = [mapCopy handle];
    v12 = [(NSMutableDictionary *)v10 objectForKey:handle2];

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
          handle3 = [mapCopy handle];
          recordID = [v13 recordID];
          recordID2 = [mapCopy recordID];
          v27 = 138412802;
          v28 = handle3;
          v29 = 2112;
          v30 = recordID;
          v31 = 2112;
          v32 = recordID2;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Replacing archived nickname for handle id %@ from record id %@ to new record id %@", &v27, 0x20u);
        }
      }

      [(IMDNicknameController *)self _deleteOnDiskDataIfNeededForNickname:v13 withNewNickname:mapCopy];
    }

    v13 = [objc_alloc(MEMORY[0x277D1AAD0]) initWithDictionaryRepresentation:v9];
    v21 = [MEMORY[0x277CBEAA8] now];
    [v13 setArchivedDate:v21];

    v22 = self->_archivedNicknames;
    persistedDictionaryRepresentation = [v13 persistedDictionaryRepresentation];
    handle4 = [mapCopy handle];
    [(NSMutableDictionary *)v22 setObject:persistedDictionaryRepresentation forKey:handle4];

    archivedNicknamesKVStore = [(IMDNicknameController *)self archivedNicknamesKVStore];
    [(IMDNicknameController *)self _writeNicknameToKVStore:archivedNicknamesKVStore nickname:v13];

LABEL_18:
    goto LABEL_19;
  }

  v12 = IMLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D52F8(mapCopy);
  }

LABEL_19:

  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isActiveForNickname:(id)nickname
{
  nicknameCopy = nickname;
  activeRecords = [(IMDNicknameController *)self activeRecords];
  handle = [nicknameCopy handle];
  v7 = [activeRecords objectForKey:handle];

  if (v7)
  {
    recordID = [nicknameCopy recordID];
    v9 = [v7 isEqualToString:recordID];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)markNicknameAsUpdated:(id)updated
{
  updatedCopy = updated;
  handledNicknames = [(IMDNicknameController *)self handledNicknames];
  handle = [updatedCopy handle];
  v6 = [handledNicknames objectForKey:handle];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D1AAD0]) initWithDictionaryRepresentation:v6];
    if ([updatedCopy isUpdateFromNickname:v7 withOptions:4])
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    if ([updatedCopy isUpdateFromNickname:v7 withOptions:2])
    {
      v9 = v8 | 4;
    }

    else
    {
      v9 = v8;
    }

    v10 = [updatedCopy isUpdateFromNickname:v7 withOptions:32];
    if (([updatedCopy isUpdateFromNickname:v7 withOptions:16] | v10))
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

  [(IMDNicknameController *)self _markPendingNicknameAsCurrent:updatedCopy incrementPendingNicknameVersion:1 updateType:v11 broadcastUpdates:1];
}

- (void)_writeNicknameToKVStore:(id)store nickname:(id)nickname
{
  v23 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  nicknameCopy = nickname;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v20 = nicknameCopy;
      v21 = 2112;
      v22 = storeCopy;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "writing nickname %@ to kvstore %@", buf, 0x16u);
    }
  }

  v8 = MEMORY[0x277CCAAB0];
  persistedDictionaryRepresentation = [nicknameCopy persistedDictionaryRepresentation];
  v18 = 0;
  v10 = [v8 archivedDataWithRootObject:persistedDictionaryRepresentation requiringSecureCoding:1 error:&v18];
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
    handle = [nicknameCopy handle];
    v17 = 0;
    [storeCopy persistData:v10 forKey:handle error:&v17];
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

- (void)_deleteNicknameFromPendingMap:(id)map
{
  handle = [map handle];
  [(IMDNicknameController *)self _deleteHandleIDFromPendingMap:handle];
}

- (void)_deleteHandleIDFromPendingMap:(id)map
{
  v14 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  pendingNicknameUpdatesKVStore = [(IMDNicknameController *)self pendingNicknameUpdatesKVStore];
  v9 = 0;
  [pendingNicknameUpdatesKVStore persistData:0 forKey:mapCopy error:&v9];
  v6 = v9;

  if (v6 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v11 = mapCopy;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "We got an error trying to remove %@ from the pending map %@", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_deleteHandleIDFromHandledMap:(id)map
{
  v14 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  handledNicknamesKVStore = [(IMDNicknameController *)self handledNicknamesKVStore];
  v9 = 0;
  [handledNicknamesKVStore persistData:0 forKey:mapCopy error:&v9];
  v6 = v9;

  if (v6 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v11 = mapCopy;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "We got an error trying to remove %@ from the handled map %@", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_deleteHandleIDFromArchivedMap:(id)map
{
  v14 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  archivedNicknamesKVStore = [(IMDNicknameController *)self archivedNicknamesKVStore];
  v9 = 0;
  [archivedNicknamesKVStore persistData:0 forKey:mapCopy error:&v9];
  v6 = v9;

  if (v6 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v11 = mapCopy;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "We got an error trying to remove %@ from the handled map %@", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)cleanUpNicknameForIDs:(id)ds
{
  v52 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = dsCopy;
  if (dsCopy && [dsCopy count])
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
          handleAllowList = [(IMDNicknameController *)self handleAllowList];
          v14 = [handleAllowList containsObject:v12];

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

            handleAllowList2 = [(IMDNicknameController *)self handleAllowList];
            [handleAllowList2 removeObject:v12];

            handleAllowList3 = [(IMDNicknameController *)self handleAllowList];
            v18 = [MEMORY[0x277CBEB98] set];
            [(IMDNicknameController *)self _updateHandleList:handleAllowList3 withHandles:v18 forKey:@"handleWhitelist" broadcastUpdates:0];

            v9 = 1;
          }

          handleDenyList = [(IMDNicknameController *)self handleDenyList];
          v20 = [handleDenyList containsObject:v12];

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

            handleDenyList2 = [(IMDNicknameController *)self handleDenyList];
            [handleDenyList2 removeObject:v12];

            handleDenyList3 = [(IMDNicknameController *)self handleDenyList];
            v24 = [MEMORY[0x277CBEB98] set];
            [(IMDNicknameController *)self _updateHandleList:handleDenyList3 withHandles:v24 forKey:@"handleBlacklist" broadcastUpdates:0];

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
  mEMORY[0x277D1ACB8] = [MEMORY[0x277D1ACB8] sharedInstance];
  isUnderFirstDataProtectionLock = [mEMORY[0x277D1ACB8] isUnderFirstDataProtectionLock];

  return isUnderFirstDataProtectionLock;
}

- (BOOL)_isUnderScrutiny
{
  defaults = [(IMDNicknameController *)self defaults];
  v3 = [defaults getValueFromDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A420]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
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

  pendingNicknameUpdatesKVStore = [(IMDNicknameController *)self pendingNicknameUpdatesKVStore];
  [pendingNicknameUpdatesKVStore deleteDatabase];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Deleting data from handled nicknames KVStore", v13, 2u);
    }
  }

  handledNicknamesKVStore = [(IMDNicknameController *)self handledNicknamesKVStore];
  [handledNicknamesKVStore deleteDatabase];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Deleting data from archived nicknames KVStore", v12, 2u);
    }
  }

  archivedNicknamesKVStore = [(IMDNicknameController *)self archivedNicknamesKVStore];
  [archivedNicknamesKVStore deleteDatabase];
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
    _deviceUnderFirstUnlock = [(IMDNicknameController *)self _deviceUnderFirstUnlock];
    v4 = IMOSLoggingEnabled();
    if (_deviceUnderFirstUnlock)
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
      activeNicknameRecords = [(IMDNicknameController *)self activeNicknameRecords];
      v10 = [(IMDNicknameController *)self loadListForKey:@"activeNicknameRecords" list:activeNicknameRecords];
      [(IMDNicknameController *)self setActiveNicknameRecords:v10];

      ignoredNicknameRecords = [(IMDNicknameController *)self ignoredNicknameRecords];
      v12 = [(IMDNicknameController *)self loadListForKey:@"ignoredNicknameRecords" list:ignoredNicknameRecords];
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
    storedPersonalNickname = [(IMDNicknameController *)self storedPersonalNickname];
    if (storedPersonalNickname)
    {
      [(IMDNicknameController *)self setPersonalNickname:storedPersonalNickname];
    }

    else
    {
      nickNameRecordID = [(IMDNicknameController *)self nickNameRecordID];

      if (nickNameRecordID)
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

    storedPersonalNickname = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(storedPersonalNickname, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_22B4CC000, storedPersonalNickname, OS_LOG_TYPE_INFO, "Not going to load personal nickname, feature is disabled", buf, 2u);
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
  pendingNicknameUpdatesKVStore = [(IMDNicknameController *)self pendingNicknameUpdatesKVStore];
  v14 = [(IMDNicknameController *)self _populateNicknameDictionary:v12 forKVStore:pendingNicknameUpdatesKVStore limitToLoad:0x7FFFFFFFLL];

  v15 = self->_handledNicknames;
  handledNicknamesKVStore = [(IMDNicknameController *)self handledNicknamesKVStore];
  v17 = [(IMDNicknameController *)self _populateNicknameDictionary:v15 forKVStore:handledNicknamesKVStore limitToLoad:0x7FFFFFFFLL];

  v18 = self->_archivedNicknames;
  archivedNicknamesKVStore = [(IMDNicknameController *)self archivedNicknamesKVStore];
  v20 = [(IMDNicknameController *)self _populateNicknameDictionary:v18 forKVStore:archivedNicknamesKVStore limitToLoad:0x7FFFFFFFLL];

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

  nicknameRecordsKVStore = [(IMDNicknameController *)self nicknameRecordsKVStore];
  v24 = 0;
  v6 = [nicknameRecordsKVStore dataForKey:@"handleTransitionedList" error:&v24];
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

      handleTransitionedList = [(IMDNicknameController *)self handleTransitionedList];
      [handleTransitionedList unionSet:v14];
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
        handleTransitionedList2 = [(IMDNicknameController *)self handleTransitionedList];
        v21 = [handleTransitionedList2 count];
        *buf = 134217984;
        v26 = v21;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Successfully loaded %lu transitioned list handles", buf, 0xCu);
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)loadListForKey:(id)key list:(id)list
{
  v29 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  Mutable = list;
  v8 = [MEMORY[0x277CBEC10] mutableCopy];
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  nicknameRecordsKVStore = [(IMDNicknameController *)self nicknameRecordsKVStore];
  v26 = 0;
  v10 = [nicknameRecordsKVStore dataForKey:keyCopy error:&v26];
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

  handleSharingKVStore = [(IMDNicknameController *)self handleSharingKVStore];
  v38 = 0;
  v8 = [handleSharingKVStore dataForKey:@"handleWhitelist" error:&v38];
  v9 = v38;

  if (!v9)
  {
    handleSharingKVStore2 = [(IMDNicknameController *)self handleSharingKVStore];
    v37 = 0;
    v12 = [handleSharingKVStore2 dataForKey:@"handleBlacklist" error:&v37];
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

      handleAllowList = [(IMDNicknameController *)self handleAllowList];
      [handleAllowList unionSet:v34];

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

        handleDenyList = [(IMDNicknameController *)self handleDenyList];
        [handleDenyList unionSet:v22];

LABEL_38:
        if (IMOSLoggingEnabled())
        {
          v28 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            handleAllowList2 = [(IMDNicknameController *)self handleAllowList];
            v30 = [handleAllowList2 count];
            handleDenyList2 = [(IMDNicknameController *)self handleDenyList];
            v32 = [handleDenyList2 count];
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

  unknownSenderRecordInfoKVStore = [(IMDNicknameController *)self unknownSenderRecordInfoKVStore];
  v28 = 0;
  v25 = [unknownSenderRecordInfoKVStore dataForKey:@"unknownSenderRecordInfoKey" error:&v28];
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
        unknownSenderRecordInfo = [(IMDNicknameController *)self unknownSenderRecordInfo];
        v23 = [unknownSenderRecordInfo count];
        *buf = 134217984;
        v30 = v23;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Successfully loaded %lu unknown sender payload list handles", buf, 0xCu);
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)_populateNicknameDictionary:(id)dictionary forKVStore:(id)store limitToLoad:(unint64_t)load
{
  v39 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v33 = 0;
  storeCopy = store;
  v25 = [storeCopy datasUpToLimit:load deleteContext:0 error:&v33];
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
            handle = [v19 handle];

            if (handle)
            {
              handle2 = [v19 handle];
              [dictionaryCopy setObject:v15 forKey:handle2];
            }

            else
            {
              handle2 = IMLogHandleForCategory();
              if (os_log_type_enabled(handle2, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v35 = v19;
                _os_log_error_impl(&dword_22B4CC000, handle2, OS_LOG_TYPE_ERROR, "Nickname does not have a handle %@", buf, 0xCu);
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
  defaults = [(IMDNicknameController *)self defaults];
  v3 = *MEMORY[0x277D1A3C0];
  v22 = *MEMORY[0x277D1A388];
  v4 = [defaults getBoolFromDomain:*MEMORY[0x277D1A3C0] forKey:?];

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

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v7 = *MEMORY[0x277D1A390];
    v8 = [defaultManager enumeratorAtPath:*MEMORY[0x277D1A390]];

    nextObject = [v8 nextObject];
    if (nextObject)
    {
      v10 = *MEMORY[0x277CCA1B0];
      v11 = *MEMORY[0x277CCA1A0];
      do
      {
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        v29 = v10;
        v30[0] = v11;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
        v14 = [v7 stringByAppendingPathComponent:nextObject];
        v24 = 0;
        v15 = [defaultManager2 setAttributes:v13 ofItemAtPath:v14 error:&v24];
        v16 = v24;

        if ((v15 & 1) == 0 && IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v26 = nextObject;
            v27 = 2112;
            v28 = v16;
            _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Failed making file class C: %@ with error %@", buf, 0x16u);
          }
        }

        nextObject2 = [v8 nextObject];

        nextObject = nextObject2;
      }

      while (nextObject2);
    }

    defaults2 = [(IMDNicknameController *)self defaults];
    [defaults2 setBool:1 forDomain:v21 forKey:v22];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_storePublicNickname:(id)nickname nicknameLocation:(id)location encryptionKey:(id)key wallpaperDataTag:(id)tag wallpaperLowResDataTag:(id)dataTag wallpaperMetadataTag:(id)metadataTag avatarRecipeDataTag:(id)recipeDataTag
{
  v55 = *MEMORY[0x277D85DE8];
  nicknameCopy = nickname;
  locationCopy = location;
  keyCopy = key;
  tagCopy = tag;
  dataTagCopy = dataTag;
  metadataTagCopy = metadataTag;
  recipeDataTagCopy = recipeDataTag;
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v50 = nicknameCopy;
      v51 = 2112;
      v52 = locationCopy;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Storing personal nickname %@ and recordID %@ on disk", buf, 0x16u);
    }
  }

  v19 = [locationCopy dataUsingEncoding:4];
  dataRepresentation = [nicknameCopy dataRepresentation];
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [dataRepresentation length];
      v23 = [v19 length];
      v24 = [keyCopy length];
      *buf = 134218496;
      v50 = v22;
      v51 = 2048;
      v52 = v23;
      v53 = 2048;
      v54 = v24;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Writing nickname data of size %lu, recordID data of size %lu, and encryption key of size %lu to disk", buf, 0x20u);
    }
  }

  if (dataRepresentation)
  {
    cloudkitRecordsKVStore = [(IMDNicknameController *)self cloudkitRecordsKVStore];
    v48 = 0;
    [cloudkitRecordsKVStore persistData:v19 forKey:@"NicknameRecordID" error:&v48];
    v26 = v48;

    cloudkitRecordsKVStore2 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
    v47 = 0;
    [cloudkitRecordsKVStore2 persistData:keyCopy forKey:@"NicknameRecordKey" error:&v47];
    v28 = v47;

    cloudkitRecordsKVStore3 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
    v46 = 0;
    [cloudkitRecordsKVStore3 persistData:dataRepresentation forKey:@"NicknameDataKey" error:&v46];
    v30 = v46;

    cloudkitRecordsKVStore4 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
    [cloudkitRecordsKVStore4 persistData:tagCopy forKey:@"NicknameWallpaperDataTag" error:0];

    cloudkitRecordsKVStore5 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
    [cloudkitRecordsKVStore5 persistData:dataTagCopy forKey:@"NicknameLowResWallpaperDataTag" error:0];

    cloudkitRecordsKVStore6 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
    [cloudkitRecordsKVStore6 persistData:metadataTagCopy forKey:@"NicknameWallpaperMetadataTag" error:0];

    cloudkitRecordsKVStore7 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
    [cloudkitRecordsKVStore7 persistData:recipeDataTagCopy forKey:@"NicknameAvatarRecipeDataTag" error:0];

    if (v26 | v28)
    {
      v35 = IMLogHandleForCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D5430();
      }

      cloudkitRecordsKVStore8 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
      [cloudkitRecordsKVStore8 persistData:0 forKey:@"NicknameRecordKey" error:0];

      cloudkitRecordsKVStore9 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
      [cloudkitRecordsKVStore9 persistData:0 forKey:@"NicknameRecordID" error:0];
    }

    if (v30)
    {
      v38 = IMLogHandleForCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D54A0();
      }

      cloudkitRecordsKVStore10 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
      [cloudkitRecordsKVStore10 persistData:0 forKey:@"NicknameDataKey" error:0];
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

- (void)_storePendingNicknameForUpload:(id)upload
{
  v15 = *MEMORY[0x277D85DE8];
  uploadCopy = upload;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = uploadCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Storing pending nickname %@ while waiting on upload", buf, 0xCu);
    }
  }

  dataRepresentation = [uploadCopy dataRepresentation];
  if (dataRepresentation)
  {
    cloudkitRecordsKVStore = [(IMDNicknameController *)self cloudkitRecordsKVStore];
    v12 = 0;
    [cloudkitRecordsKVStore persistData:dataRepresentation forKey:@"NicknamePendingKey" error:&v12];
    v8 = v12;

    if (v8)
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D5508();
      }

      cloudkitRecordsKVStore2 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
      [cloudkitRecordsKVStore2 persistData:0 forKey:@"NicknamePendingKey" error:0];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_getPendingNicknameForUpload
{
  cloudkitRecordsKVStore = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v15 = 0;
  v3 = [cloudkitRecordsKVStore dataForKey:@"NicknamePendingKey" error:&v15];
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
  cloudkitRecordsKVStore = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v6 = 0;
  [cloudkitRecordsKVStore persistData:0 forKey:@"NicknamePendingKey" error:&v6];
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
  cloudkitRecordsKVStore = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v21 = 0;
  [cloudkitRecordsKVStore persistData:0 forKey:@"NicknameRecordID" error:&v21];
  v4 = v21;

  cloudkitRecordsKVStore2 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v20 = v4;
  [cloudkitRecordsKVStore2 persistData:0 forKey:@"NicknameRecordKey" error:&v20];
  v6 = v20;

  cloudkitRecordsKVStore3 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v19 = v6;
  [cloudkitRecordsKVStore3 persistData:0 forKey:@"NicknameDataKey" error:&v19];
  v8 = v19;

  cloudkitRecordsKVStore4 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v18 = v8;
  [cloudkitRecordsKVStore4 persistData:0 forKey:@"NicknameWallpaperDataTag" error:&v18];
  v10 = v18;

  cloudkitRecordsKVStore5 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v17 = v10;
  [cloudkitRecordsKVStore5 persistData:0 forKey:@"NicknameLowResWallpaperDataTag" error:&v17];
  v12 = v17;

  cloudkitRecordsKVStore6 = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v16 = v12;
  [cloudkitRecordsKVStore6 persistData:0 forKey:@"NicknameWallpaperMetadataTag" error:&v16];
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
  cloudkitRecordsKVStore = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v7 = 0;
  v3 = [cloudkitRecordsKVStore dataForKey:@"NicknameRecordKey" error:&v7];
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
  cloudkitRecordsKVStore = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v7 = 0;
  v3 = [cloudkitRecordsKVStore dataForKey:@"NicknameWallpaperDataTag" error:&v7];
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
  cloudkitRecordsKVStore = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v7 = 0;
  v3 = [cloudkitRecordsKVStore dataForKey:@"NicknameLowResWallpaperDataTag" error:&v7];
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
  cloudkitRecordsKVStore = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v7 = 0;
  v3 = [cloudkitRecordsKVStore dataForKey:@"NicknameWallpaperMetadataTag" error:&v7];
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
  cloudkitRecordsKVStore = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v7 = 0;
  v3 = [cloudkitRecordsKVStore dataForKey:@"NicknameAvatarRecipeDataTag" error:&v7];
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
  cloudkitRecordsKVStore = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v8 = 0;
  v3 = [cloudkitRecordsKVStore dataForKey:@"NicknameRecordID" error:&v8];
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
  cloudkitRecordsKVStore = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v21 = 0;
  v4 = [cloudkitRecordsKVStore dataForKey:@"NicknameDataKey" error:&v21];
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

  recordID = [v8 recordID];

  if (!recordID)
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

    nickNameRecordID = [(IMDNicknameController *)self nickNameRecordID];
    if (nickNameRecordID)
    {
      [v8 setRecordID:nickNameRecordID];
    }
  }

LABEL_29:

  return v8;
}

- (id)pendingPersonalNickname
{
  cloudkitRecordsKVStore = [(IMDNicknameController *)self cloudkitRecordsKVStore];
  v13 = 0;
  v3 = [cloudkitRecordsKVStore dataForKey:@"NicknamePendingKey" error:&v13];
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

- (void)_deleteAvatarForNickname:(id)nickname
{
  avatar = [nickname avatar];
  imageFilePath = [avatar imageFilePath];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = 0;
  [defaultManager removeItemAtPath:imageFilePath error:&v8];
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
  handledNicknames = [(IMDNicknameController *)self handledNicknames];
  allValues = [handledNicknames allValues];

  pendingNicknameUpdates = [(IMDNicknameController *)self pendingNicknameUpdates];
  allValues2 = [pendingNicknameUpdates allValues];

  archivedNicknames = [(IMDNicknameController *)self archivedNicknames];
  allValues3 = [archivedNicknames allValues];

  v9 = [allValues2 arrayByAddingObjectsFromArray:allValues];
  v10 = [v9 arrayByAddingObjectsFromArray:allValues3];

  return v10;
}

- (id)nicknameForRecordID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([dCopy length])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    allNicknames = [(IMDNicknameController *)self allNicknames];
    v6 = [allNicknames countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v6)
    {
      v7 = *v17;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(allNicknames);
          }

          v9 = [objc_alloc(MEMORY[0x277D1AAD0]) initWithDictionaryRepresentation:*(*(&v16 + 1) + 8 * i)];
          recordID = [v9 recordID];
          v11 = [recordID isEqualToString:dCopy];

          if (v11)
          {

            goto LABEL_20;
          }
        }

        v6 = [allNicknames countByEnumeratingWithState:&v16 objects:v22 count:16];
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
        v21 = dCopy;
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

- (id)nicknameForRecordID:(id)d handle:(id)handle
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handleCopy = handle;
  if ([handleCopy length])
  {
    v8 = [(IMDNicknameController *)self nicknameForHandle:handleCopy];
    v9 = v8;
    if (v8 && ([v8 recordID], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(dCopy, "isEqualToString:", v10), v10, v11))
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
          v18 = handleCopy;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "No nickname for handle %@", &v17, 0xCu);
        }
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = [(IMDNicknameController *)self nicknameForRecordID:dCopy];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)nicknameForHandleURI:(id)i
{
  v12 = *MEMORY[0x277D85DE8];
  iCopy = i;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = iCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "I'm being asked for handleURI %@", &v10, 0xCu);
    }
  }

  _stripFZIDPrefix = [iCopy _stripFZIDPrefix];

  v7 = [(IMDNicknameController *)self nicknameForHandle:_stripFZIDPrefix];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)nicknameForHandle:(id)handle
{
  handleCopy = handle;
  pendingNicknameUpdates = [(IMDNicknameController *)self pendingNicknameUpdates];
  v6 = [pendingNicknameUpdates objectForKey:handleCopy];

  if (v6 || (-[IMDNicknameController handledNicknames](self, "handledNicknames"), v7 = objc_claimAutoreleasedReturnValue(), [v7 objectForKey:handleCopy], v6 = objc_claimAutoreleasedReturnValue(), v7, v6))
  {
    v8 = [objc_alloc(MEMORY[0x277D1AAD0]) initWithDictionaryRepresentation:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)substringRecordIDForNickname:(id)nickname
{
  nicknameCopy = nickname;
  recordID = [nicknameCopy recordID];
  v5 = [recordID length];

  if (v5 < 5)
  {
    v7 = &stru_283F23018;
  }

  else
  {
    recordID2 = [nicknameCopy recordID];
    v7 = [recordID2 substringToIndex:3];
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
  handledNicknames = [(IMDNicknameController *)self handledNicknames];
  allKeys = [handledNicknames allKeys];

  obj = allKeys;
  v5 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        handledNicknames2 = [(IMDNicknameController *)self handledNicknames];
        v11 = [handledNicknames2 objectForKey:v9];

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
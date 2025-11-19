@interface IMDChatRegistry
+ (IMDChatRegistry)sharedInstance;
+ (id)supportedServiceNames;
- (BOOL)_chat:(id)a3 isDuplicateOfChat:(id)a4;
- (BOOL)_contactsBasedMergingEnabled;
- (BOOL)_ensureNoExistingGroupForSyncData:(id)a3;
- (BOOL)_existingItemRequiresUpgrade:(id)a3 itemFromCKRecord:(id)a4;
- (BOOL)_hasInconsistentGroupPhotoGUIDAcrossMergedChats:(id)a3;
- (BOOL)_hasInconsistentJoinStateAcrossMergedChats:(id)a3;
- (BOOL)_hasSavedContactCardForHandle:(id)a3;
- (BOOL)_mergeDuplicateGroupsIfNeeded;
- (BOOL)blackholedChatsExist;
- (BOOL)filteredChatsExistForServices:(id)a3;
- (BOOL)filterediMessageChatsExist;
- (BOOL)handleMessageUpdate:(id)a3;
- (BOOL)hasKnownSenderChatWithChatIdentifier:(id)a3;
- (BOOL)hasScheduledMessageForHandleID:(id)a3;
- (BOOL)loadChatsWithCompletionBlock:(id)a3;
- (BOOL)removeIMDHandleFromRegistry:(id)a3;
- (BOOL)repairDuplicateChatsIfNeeded;
- (BOOL)updateSyncedSyndicationRanges:(id)a3 forGUID:(id)a4;
- (BOOL)updateUnreadCountForChat:(id)a3;
- (IMDCKUtilities)ckUtilities;
- (IMDChatRegistry)init;
- (IMDChatStore)chatStore;
- (NSArray)allChats;
- (NSArray)cachedChats;
- (id)_activeTUConversations;
- (id)_addChatsFromCacheMisses:(id)a3 preferExistingChats:(BOOL)a4;
- (id)_aliasToCNIDMapForAliases:(id)a3;
- (id)_allHandles;
- (id)_bestServiceSessionForService:(id)a3 accountID:(id)a4;
- (id)_cachedChatWithGUID:(id)a3;
- (id)_cachedChatsWithGroupID:(id)a3;
- (id)_chatForTUConversation:(id)a3;
- (id)_chatForTUGroupID:(id)a3 participants:(id)a4;
- (id)_chatGUIDToChatMapForChats:(id)a3;
- (id)_chatInfoForChats:(id)a3;
- (id)_chatsWithBlackholed:(BOOL)a3;
- (id)_cnIDForHandle:(id)a3;
- (id)_conversationItemForChat:(id)a3 conversation:(id)a4;
- (id)_copyDuplicateChatsArrayWithLimit:(int64_t)a3;
- (id)_copyGroupedDuplicateChatsSortedFromWinningToLosingWithLimit:(int64_t)a3;
- (id)_createGroupChatForConversation:(id)a3 onSession:(id)a4;
- (id)_createGroupChatsArray;
- (id)_exactGroupChatMatchOrNewestMatchingGroupID:(id)a3 originalGroupID:(id)a4 serviceName:(id)a5 participants:(id)a6 toIdentifier:(id)a7 outNewestSiblingChat:(id *)a8;
- (id)_exactGroupChatMatchOrNewestMatchingIdentifierFromSortedIdentifiers:(id)a3 participants:(id)a4 toIdentifier:(id)a5;
- (id)_existingChatForSyncData:(id)a3;
- (id)_existingChatsSortedByIdentifiersAndRecencyFromSortedIdentifiers:(id)a3;
- (id)_extractHandlesFromMap:(id)a3 usingCNID:(id)a4;
- (id)_findChatWinnerInDuplicateChatArray:(id)a3 fixDisplayName:(BOOL *)a4;
- (id)_findExistingGroupChatForConversation:(id)a3 onSession:(id)a4;
- (id)_findLosingChatGUIDsInArrayOfChats:(id)a3 withWinner:(id)a4;
- (id)_generateCurrentAliasToCNIDDictionary;
- (id)_handlesWithChangedContactsOriginalMap:(id)a3 newMap:(id)a4;
- (id)_initiatorForConversation:(id)a3 chat:(id)a4;
- (id)_lookupChatUsingParentChatID:(id)a3 service:(id)a4;
- (id)_mergedPinningIdentifiersForChats:(id)a3 chatGUIDToChatMap:(id)a4 groupedChatsByPersonCentricIdWithSortedChats:(id)a5;
- (id)_newestExistingChatWithGroupID:(id)a3 onService:(id)a4;
- (id)_newestGroupChatMatchingParticipants:(id)a3 displayName:(id)a4 strictDisplayNameMatching:(BOOL)a5 serviceName:(id)a6 toIdentifier:(id)a7;
- (id)_oneToOneChatForRemoteHandle:(id)a3;
- (id)_participantIDSetFromHandles:(id)a3 toIdentifier:(id)a4;
- (id)_potentialGUIDsForIdentifier:(id)a3;
- (id)_preferredFileTransferFromGroupPhotoGUIDs:(id)a3;
- (id)_siblingChatsForChat:(id)a3 usingChatGUIDToChatMap:(id)a4 iMessageChat:(id *)a5;
- (id)_spamMessageCreator;
- (id)_tuConversationForChat:(id)a3;
- (id)_uncachedNewestChatWithOriginalGroupID:(id)a3 onService:(id)a4;
- (id)_upgradeChatToGroupChat:(id)a3 forConversation:(id)a4;
- (id)aliasToCNIDMap;
- (id)allChatsWithIdentifier:(id)a3 style:(unsigned __int8)a4 serviceNames:(id)a5;
- (id)allExistingChatsWithIdentifier:(id)a3;
- (id)allHandlesForID:(id)a3;
- (id)alternateIDForHandle:(id)a3;
- (id)bestCandidateGroupChatWithFromIdentifier:(id)a3 toIdentifier:(id)a4 displayName:(id)a5 participants:(id)a6 groupID:(id)a7 originalGroupID:(id)a8 serviceName:(id)a9;
- (id)bestCandidateGroupChatWithFromIdentifier:(id)a3 toIdentifier:(id)a4 displayName:(id)a5 participants:(id)a6 updatingToLatestiMessageGroupID:(id)a7 sortedIdentifiers:(id)a8 serviceName:(id)a9;
- (id)chatForHandle:(id)a3 account:(id)a4 chatIdentifier:(id)a5 guid:(id)a6 lastAddressedHandle:(id)a7 lastAddressedSIMID:(id)a8 isBlackholed:(BOOL)a9;
- (id)chatForHandles:(id)a3 account:(id)a4 chatIdentifier:(id)a5 style:(unsigned __int8)a6 groupID:(id)a7 originalGroupID:(id)a8 displayName:(id)a9 guid:(id)a10 lastAddressedHandle:(id)a11 lastAddressedSIMID:(id)a12 isBlackholed:(BOOL)a13;
- (id)chatForRoom:(id)a3 account:(id)a4 chatIdentifier:(id)a5 guid:(id)a6;
- (id)chatsToUploadToCloudKitWithLimit:(unint64_t)a3;
- (id)existingChatForID:(id)a3 account:(id)a4;
- (id)existingChatForRoom:(id)a3 account:(id)a4;
- (id)existingChatWithEngramID:(id)a3;
- (id)existingChatWithGUID:(id)a3;
- (id)existingChatWithGroupID:(id)a3 onService:(id)a4;
- (id)existingChatWithIdentifier:(id)a3 account:(id)a4;
- (id)existingChatsFilteredUsingPredicate:(id)a3;
- (id)existingChatsWithGroupID:(id)a3;
- (id)existingChatsWithPinningIdentifier:(id)a3;
- (id)existingGroupChatsContainingHandles:(id)a3;
- (id)existingOneOnOneChatsWithIdentifiers:(id)a3;
- (id)existingSMSChatForID:(id)a3 withChatStyle:(unsigned __int8)a4;
- (id)existingiMessageChatForID:(id)a3 withChatStyle:(unsigned __int8)a4;
- (id)generateUnusedChatIdentifierForGroupChatWithAccount:(id)a3;
- (id)groupChatsBasedOnIdentity:(id)a3;
- (id)groupChatsBasedOnIdentityUsingCacheIfApplicable:(id)a3;
- (id)messagesPendingUpdateT1ToCloudKitWithLimit:(unint64_t)a3;
- (id)messagesPendingUpdateT2ToCloudKitWithLimit:(unint64_t)a3;
- (id)messagesToUploadToCloudKitWithLimit:(unint64_t)a3;
- (id)newestExistingChatWithOriginalGroupID:(id)a3 onService:(id)a4;
- (id)recoverableMessagesMetadata;
- (id)recoverableMessagesMetadataPendingCloudKitDeleteWithLimit:(unint64_t)a3;
- (id)recoverableMessagesMetadataPendingCloudKitSaveWithLimit:(unint64_t)a3;
- (id)sortPersonCentricChatGroups:(id)a3;
- (id)stringForChatStyle:(unsigned __int8)a3;
- (id)truncatedSortedChatsGroupedByPersonCentricID:(id)a3 count:(int64_t)a4 pinnedChatIdentifiers:(id)a5;
- (int64_t)_compareDuplicateChatsWithFirstChat:(id)a3 secondChat:(id)a4;
- (unint64_t)cachedChatCount;
- (unint64_t)markAsSpamForIDs:(id)a3 style:(unsigned __int8)a4 onServices:(id)a5 chatID:(id)a6 conversationID:(id)a7 queryID:(id)a8 autoReport:(BOOL)a9 isJunkReportedToCarrier:(BOOL)a10 reportReason:(unint64_t)a11;
- (void)__addChatToGroupIDChatIndex:(id)a3;
- (void)__removeChatFromGroupIDChatIndex:(id)a3;
- (void)__unassignGroupIDFromAllChats:(id)a3;
- (void)_addItem:(id)a3 toChat:(id)a4 reason:(int64_t)a5;
- (void)_addItemToParentChatIfNotLocationItem:(id)a3 parentChat:(id)a4 updatedLastMessageCount:(unint64_t)a5 reason:(int64_t)a6;
- (void)_adoptUpdatedStateForExistingItem:(id)a3 itemFromCKRecord:(id)a4;
- (void)_chatGUIDsThatNeedRemerging:(id *)a3 chatDictionaryArray:(id *)a4 aliasMap:(id)a5;
- (void)_chatGUIDsThatNeedRemerging:(id *)a3 chatDictionaryArray:(id *)a4 oldPersonCentricID:(id)a5;
- (void)_chatGUIDsToRemergeForAcceptedContactChange:(id)a3;
- (void)_chatGUIDsToRemergeForContactChange:(id)a3;
- (void)_checkForContactChangesWithChangeType:(id)a3;
- (void)_enumeratePersonMergedChatsWithMaximumNumberOfChats:(int64_t)a3 usingChats:(id)a4 useCachedChatGroups:(BOOL)a5 includingPinnedChatIdentifiers:(id)a6 usingBlock:(id)a7;
- (void)_evictCachedChat:(id)a3;
- (void)_finalizeIncomingChat:(id)a3;
- (void)_fixSiblingChatsAndStoreIfNeeded:(id)a3 iMessageChat:(id)a4 chatsToRegenerate:(id)a5;
- (void)_fixUpChatParticipantsIfNeeded:(id)a3 usingChatGUIDToChatMap:(id)a4;
- (void)_forceReloadChats:(BOOL)a3;
- (void)_insertChatUsingSyncData:(id)a3;
- (void)_makeAllAttachmentsClassC;
- (void)_markForksAsSyncedForChat:(id)a3;
- (void)_markGroupPhotosAsUnpurgeableIfNecessary;
- (void)_performCheckForContactChangesWithChangeType:(int64_t)a3;
- (void)_performPostUnlockHousekeeping;
- (void)_persistMergeIDMergedChatsIfNeeded;
- (void)_populateContactIDOnHandles;
- (void)_populateLastMessageForChat:(id)a3;
- (void)_reloadChatsForDatabaseMergeOrDatabaseSwitchWithReset:(BOOL)a3;
- (void)_remergeChatsWithParticipantIDsSets:(id)a3;
- (void)_remergeChatsWithPendingParticipantIDSets;
- (void)_repairInconsistentGroupPhotoGuidAcrossMergedChatsIfNecessary:(id)a3;
- (void)_repairInconsistentJoinStatesAcrossMergedChatsIfNecessary:(id)a3;
- (void)_serializeChatsForRemerge:(id)a3 guidsThatNeedRemerging:(id *)a4 chatDictionaryArray:(id *)a5;
- (void)_setGroupID:(id)a3 forChatAndAllSiblings:(id)a4;
- (void)_setInitialLoadForTesting:(BOOL)a3;
- (void)_setSortIDOnIncomingMessage:(id)a3 forChat:(id)a4;
- (void)_startObservingAcceptedContactChanges;
- (void)_submitAndOpenTapToRadarForSortedIdentifiers:(id)a3 participants:(id)a4 sortedChats:(id)a5;
- (void)_triggerRemergeForPersonCentricID:(id)a3;
- (void)_updateAcceptedContactsInAliasToCNIDMapWithCompletionHandler:(id)a3;
- (void)_updateAliasToCNIDMapAndHistoryTokenWithCompletionHandler:(id)a3;
- (void)_updateCachedCNIDMapForHandles:(id)a3;
- (void)_updateChat:(id)a3 usingSyncData:(id)a4;
- (void)addChat:(id)a3 firstLoad:(BOOL)a4 store:(BOOL)a5;
- (void)addIMDHandleToRegistry:(id)a3;
- (void)addMessage:(id)a3 toChat:(id)a4 reason:(int64_t)a5;
- (void)assignNonHistoricaliMessageIdentifierAndBroadcastForChat:(id)a3 identifier:(id)a4;
- (void)checkBlackholedChatsExistAfterUpdatingChatWithAdd:(BOOL)a3;
- (void)clearPendingDeleteTable;
- (void)clearRecoverableMessageTombStones;
- (void)conversationManager:(id)a3 conversation:(id)a4 addedMembersLocally:(id)a5;
- (void)dealloc;
- (void)fetchExistingUnreadChatsOlderThan:(id)a3 predicate:(id)a4 limit:(unint64_t)a5 completionHandler:(id)a6;
- (void)handleMessageUpdateConflictType:(id)a3 serverRecord:(id)a4 localRowID:(int64_t)a5;
- (void)invalidatePersonCentricGroupedChatsCache;
- (void)markChatAsDeferredForSyncingUsingSyncData:(id)a3;
- (void)markDeferredChatsAsNeedingSync;
- (void)moveMessagesInChatsWithGUIDsToRecentlyDeleted:(id)a3 deleteDate:(id)a4;
- (void)moveMessagesWithGUIDsToRecentlyDeleted:(id)a3 deleteDate:(id)a4;
- (void)pendingAlternateID:(id)a3 forHandle:(id)a4;
- (void)permanentlyDeleteRecoverableMessagesInChatsWithGUIDs:(id)a3 completionHandler:(id)a4;
- (void)processMessageUsingCKRecord:(id)a3 updatedLastMessageCount:(int)a4;
- (void)recoverMessagesWithChatGUIDs:(id)a3;
- (void)refreshUIWhileSyncing;
- (void)removeChat:(id)a3;
- (void)removeItem:(id)a3 fromChat:(id)a4;
- (void)removeMessage:(id)a3 fromChat:(id)a4;
- (void)repairInconsistentMergedChatsIfNecessary:(id)a3;
- (void)resolveChatConflictUsingSyncData:(id)a3 localGUID:(id)a4;
- (void)setHistoryToken:(id)a3;
- (void)setUpInitialConversationManager;
- (void)simulateMessageReceive:(id)a3 serviceName:(id)a4 groupID:(id)a5 handles:(id)a6 sender:(id)a7 date:(id)a8 associatedMessageType:(int64_t)a9 associatedMessageGuid:(id)a10;
- (void)systemDidLeaveFirstDataProtectionLock;
- (void)systemDidUnlock;
- (void)updateCachedChatsSyncStatusTo:(int64_t)a3 forGUIDs:(id)a4;
- (void)updateChatUsingSyncData:(id)a3;
- (void)updateChatWithGUID:(id)a3 serverChangeToken:(id)a4 recordID:(id)a5;
- (void)updateChatsUsingMessageGUIDsAndSummaries:(id)a3;
- (void)updateChatsUsingMessageGUIDsWithPriority:(id)a3;
- (void)updateFaceTimeGroupName:(id)a3;
- (void)updateFaceTimeGroupPhoto:(id)a3;
- (void)updateGroupIDForChat:(id)a3 newGroupID:(id)a4;
- (void)updateLastMessageForChat:(id)a3 hintMessage:(id)a4 historyQuery:(BOOL)a5;
- (void)updateMeCardHasUpdatedForAllChats;
- (void)updateRecoverableMessageSyncState:(int64_t)a3 forMessageRowID:(int64_t)a4 onPartIndex:(int64_t)a5;
- (void)updateStateForChat:(id)a3 fromMessage:(id)a4 toMessage:(id)a5 forcePost:(BOOL)a6 hintMessage:(id)a7 shouldRebuildFailedMessageDate:(BOOL)a8 shouldCalculateUnreadCount:(BOOL)a9 setUnreadCountToZero:(BOOL)a10;
- (void)waitForLoadedChatsWithCompletionHandler:(id)a3;
@end

@implementation IMDChatRegistry

+ (IMDChatRegistry)sharedInstance
{
  if (qword_281421170 != -1)
  {
    sub_22B7D6604();
  }

  v3 = qword_281420FF0;

  return v3;
}

+ (id)supportedServiceNames
{
  v2 = +[IMDServiceController sharedController];
  v3 = [v2 serviceNamesSupportingCapability:*MEMORY[0x277D1A580]];

  return v3;
}

- (id)aliasToCNIDMap
{
  v2 = [(NSMutableDictionary *)self->_cachedAliasToCNIDMap copy];

  return v2;
}

- (BOOL)filterediMessageChatsExist
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = *MEMORY[0x277D1A620];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  LOBYTE(self) = [(IMDChatRegistry *)self filteredChatsExistForServices:v3];

  v4 = *MEMORY[0x277D85DE8];
  return self;
}

- (IMDChatStore)chatStore
{
  chatStore = self->_chatStore;
  if (!chatStore)
  {
    v4 = +[IMDChatStore sharedInstance];
    v5 = self->_chatStore;
    self->_chatStore = v4;

    chatStore = self->_chatStore;
  }

  return chatStore;
}

- (BOOL)blackholedChatsExist
{
  v2 = [(IMDChatRegistry *)self blackholedChats];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)recoverableMessagesMetadata
{
  v2 = [MEMORY[0x277D18EB0] synchronousDatabase];
  v3 = [v2 loadRecoverableMessagesMetadataGroupedByChatGUID];

  return v3;
}

- (void)systemDidUnlock
{
  v3 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEFAULT, "systemDidUnlock", buf, 2u);
  }

  if (!self->_firstUnlockTriggered)
  {
    v4 = [MEMORY[0x277D1ACB8] sharedInstance];
    v5 = [v4 isUnderFirstDataProtectionLock];

    if ((v5 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *v7 = 0;
          _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Detected an unlock but first unlock notifications were missed, performing first unlock as if we did just now", v7, 2u);
        }
      }

      [(IMDChatRegistry *)self systemDidLeaveFirstDataProtectionLock];
    }
  }

  [(IMDChatRegistry *)self _makeAllAttachmentsClassC];
}

- (IMDChatRegistry)init
{
  v48 = *MEMORY[0x277D85DE8];
  v45.receiver = self;
  v45.super_class = IMDChatRegistry;
  v2 = [(IMDChatRegistry *)&v45 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D1ACB8] sharedInstance];
    v4 = [v3 isUnderFirstDataProtectionLock];

    v2->_firstUnlockTriggered = v4 ^ 1;
    v5 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v47 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Is under first unlock: %{BOOL}d", buf, 8u);
    }

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    chats = v2->_chats;
    v2->_chats = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    chatsByGroupID = v2->_chatsByGroupID;
    v2->_chatsByGroupID = v8;

    v10 = objc_alloc_init(MEMORY[0x277CCAC60]);
    chatsLock = v2->_chatsLock;
    v2->_chatsLock = v10;

    v12 = objc_alloc_init(MEMORY[0x277CCAC60]);
    handlesLock = v2->_handlesLock;
    v2->_handlesLock = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    idToHandlesMap = v2->_idToHandlesMap;
    v2->_idToHandlesMap = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEA90]);
    historyToken = v2->_historyToken;
    v2->_historyToken = v16;

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_22B5FFC5C;
    aBlock[3] = &unk_2787062E8;
    v18 = v2;
    v44 = v18;
    v19 = _Block_copy(aBlock);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = sub_22B5FFC68;
    v41[3] = &unk_2787062E8;
    v20 = v18;
    v42 = v20;
    v21 = _Block_copy(v41);
    v22 = MEMORY[0x277D85CD0];
    dword_28141EA60 = IMDispatchForNotify();
    dword_28141EA64 = IMDispatchForNotify();

    v40 = v20;
    dword_28141EA68 = IMDispatchForNotify();

    v39 = v40;
    IMDispatchForNotify();

    v23 = [MEMORY[0x277D1ACB8] sharedInstance];
    [v23 addListener:v39];

    v39->_doneLoadingAfterMerge = 0;
    v24 = objc_alloc_init(MEMORY[0x277D6EE98]);
    conversationManager = v39->_conversationManager;
    v39->_conversationManager = v24;

    v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
    personCentricGroupedChatsCache = v39->_personCentricGroupedChatsCache;
    v39->_personCentricGroupedChatsCache = v26;

    v28 = objc_alloc_init(MEMORY[0x277CBEB58]);
    pendingParticipantIDSetsForRemerge = v39->_pendingParticipantIDSetsForRemerge;
    v39->_pendingParticipantIDSetsForRemerge = v28;
  }

  if (IMSharedHelperContactsBasedMergingEnabled())
  {
    [MEMORY[0x277CBDAB8] initialize];
    v30 = [MEMORY[0x277CCAB98] defaultCenter];
    [v30 addObserver:v2 selector:sel__contactsChanged_ name:*MEMORY[0x277CBD140] object:0];

    v31 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v32 = [v31 isIntroductionsEnabled];

    if (v32)
    {
      [(IMDChatRegistry *)v2 _startObservingAcceptedContactChanges];
    }
  }

  v33 = [MEMORY[0x277CCAB98] defaultCenter];
  [v33 addObserver:v2 selector:sel_updateMeCardHasUpdatedForAllChats name:IMDMeCardUpdatedNotification object:0];

  v34 = [MEMORY[0x277D1ACB8] sharedInstance];
  v35 = [v34 hasReceivedFirstUnlockNotification];

  if (v35)
  {
    v38 = v2;
    im_dispatch_after();
  }

  v36 = *MEMORY[0x277D85DE8];
  return v2;
}

- (IMDCKUtilities)ckUtilities
{
  ckUtilities = self->_ckUtilities;
  if (!ckUtilities)
  {
    v4 = +[IMDCKUtilities sharedInstance];
    v5 = self->_ckUtilities;
    self->_ckUtilities = v4;

    ckUtilities = self->_ckUtilities;
  }

  return ckUtilities;
}

- (void)dealloc
{
  if (dword_28141EA60 != -1)
  {
    notify_cancel(dword_28141EA60);
    dword_28141EA60 = -1;
  }

  if (dword_28141EA64 != -1)
  {
    notify_cancel(dword_28141EA64);
    dword_28141EA64 = -1;
  }

  if (dword_28141EA68 != -1)
  {
    notify_cancel(dword_28141EA68);
    dword_28141EA68 = -1;
  }

  v3 = [(IMDChatRegistry *)self acceptedContactsChangeNotifier];
  [v3 stopObserving];

  v4 = [MEMORY[0x277D1ACB8] sharedInstance];
  [v4 removeListener:self];

  v5.receiver = self;
  v5.super_class = IMDChatRegistry;
  [(IMDChatRegistry *)&v5 dealloc];
}

- (NSArray)allChats
{
  [(NSRecursiveLock *)self->_chatsLock lock];
  v3 = [(NSMutableDictionary *)self->_chats allValues];
  v4 = [v3 copy];

  [(NSRecursiveLock *)self->_chatsLock unlock];

  return v4;
}

- (NSArray)cachedChats
{
  [(NSRecursiveLock *)self->_chatsLock lock];
  v3 = [(NSMutableDictionary *)self->_chats allValues];
  v4 = [v3 copy];

  [(NSRecursiveLock *)self->_chatsLock unlock];

  return v4;
}

- (id)_chatsWithBlackholed:(BOOL)a3
{
  [(NSRecursiveLock *)self->_chatsLock lock];
  v5 = [(NSMutableDictionary *)self->_chats allValues];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B600094;
  v8[3] = &unk_278706308;
  v9 = a3;
  v6 = [v5 __imArrayByFilteringWithBlock:v8];

  [(NSRecursiveLock *)self->_chatsLock unlock];

  return v6;
}

- (unint64_t)cachedChatCount
{
  [(NSRecursiveLock *)self->_chatsLock lock];
  v3 = [(NSMutableDictionary *)self->_chats count];
  [(NSRecursiveLock *)self->_chatsLock unlock];
  return v3;
}

- (id)chatForHandle:(id)a3 account:(id)a4 chatIdentifier:(id)a5 guid:(id)a6 lastAddressedHandle:(id)a7 lastAddressedSIMID:(id)a8 isBlackholed:(BOOL)a9
{
  v58 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v48 = a7;
  v49 = a8;
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v51 = v14;
      v52 = 2112;
      v53 = v15;
      v54 = 2112;
      v55 = v16;
      v56 = 2112;
      v57 = v17;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEBUG, "handle: %@  account: %@  chatIdentifier: %@  guid: %@", buf, 0x2Au);
    }
  }

  v19 = 0;
  if (v14 && v15)
  {
    v20 = [(IMDChat *)v14 ID];
    v21 = [(IMDChatRegistry *)self existingChatForID:v20 account:v15];

    if (v21)
    {
      v22 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v51 = v21;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_DEFAULT, "Found existing chat: %@", buf, 0xCu);
      }

      v19 = v21;
    }

    else
    {
      v23 = [(IMDChat *)v14 ID];
      v46 = [(IMDChatRegistry *)self alternateIDForHandle:v23];

      if (v46)
      {
        [(IMDChat *)v14 setPersonCentricID:v46];
        if (IMOSLoggingEnabled())
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = [(IMDChat *)v14 ID];
            *buf = 138412546;
            v51 = v46;
            v52 = 2112;
            v53 = v25;
            _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Found alternate ID: %@, for handle: %@", buf, 0x16u);
          }
        }
      }

      v26 = [IMDChat alloc];
      v27 = [v15 accountID];
      v28 = [v15 service];
      v29 = [v28 internalName];
      v30 = [MEMORY[0x277CCACA8] stringGUID];
      v31 = IMSingleObjectArray();
      LOWORD(v45) = 0;
      LOBYTE(v44) = a9;
      LOBYTE(v43) = 0;
      LOBYTE(v42) = 45;
      v32 = [(IMDChat *)v26 initWithAccountID:v27 service:v29 guid:v17 groupID:v30 chatIdentifier:v16 participants:v31 roomName:v16 displayName:0 lastAddressedLocalHandle:v48 lastAddressedSIMID:v49 properties:0 state:3 style:v42 isFiltered:1 hasHadSuccessfulQuery:v43 engramID:0 serverChangeToken:0 cloudKitSyncState:0 originalGroupID:0 lastReadMessageTimeStamp:0 lastMessageTimeStampOnLoad:-1 cloudKitRecordID:0 isBlackholed:v44 autoDonationBehavior:0 autoDonationBehaviorLastModificationDate:0 isRecovered:v45 isDeletingIncomingMessages:0 domainIdentifiers:?];

      v33 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [(IMDChat *)v32 lastAddressedLocalHandle];
        *buf = 138412546;
        v51 = v32;
        v52 = 2112;
        v53 = v34;
        _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_DEFAULT, "Created chat: %@ lastAddressedHandle %@", buf, 0x16u);
      }

      [(IMDChatRegistry *)self addChat:v32];
      if ([MEMORY[0x277D1AC58] isInternationalSpamFilteringEnabled])
      {
        v35 = [(IMDChat *)v32 serviceName];
        v36 = [v35 isEqualToString:*MEMORY[0x277D1A620]];

        if (v36)
        {
          v37 = [(IMDChat *)v32 chatIdentifier];
          v38 = [(IMDChatRegistry *)self existingSMSChatForID:v37 withChatStyle:[(IMDChat *)v32 style]];

          if (v38)
          {
            -[IMDChat updateSMSHandshakeState:](v32, "updateSMSHandshakeState:", [v38 smsHandshakeState]);
          }
        }
      }

      v39 = +[IMDChatRegistry sharedInstance];
      [v39 addIMDHandleToRegistry:v14];

      v19 = v32;
    }
  }

  v40 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)chatForHandles:(id)a3 account:(id)a4 chatIdentifier:(id)a5 style:(unsigned __int8)a6 groupID:(id)a7 originalGroupID:(id)a8 displayName:(id)a9 guid:(id)a10 lastAddressedHandle:(id)a11 lastAddressedSIMID:(id)a12 isBlackholed:(BOOL)a13
{
  v68 = *MEMORY[0x277D85DE8];
  v54 = a3;
  v18 = a4;
  v19 = a5;
  v51 = a7;
  v52 = a8;
  v48 = a9;
  v53 = a10;
  v49 = a11;
  v50 = a12;
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v61 = v54;
      v62 = 2112;
      v63 = v18;
      v64 = 2112;
      v65 = v19;
      v66 = 2112;
      v67 = v53;
      _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_DEBUG, "handles: %@  account: %@  chatIdentifier: %@  guid: %@", buf, 0x2Au);
    }
  }

  if (v18)
  {
    v21 = [(IMDChatRegistry *)self existingChatWithIdentifier:v19 account:v18];
    if (v21)
    {
      v22 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v61 = v21;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_DEFAULT, "Found existing chat: %@", buf, 0xCu);
      }
    }

    else
    {
      v23 = [IMDChat alloc];
      v24 = [v18 accountID];
      v25 = [v18 service];
      v26 = [v25 internalName];
      if (v51)
      {
        LOWORD(v46) = 0;
        LOBYTE(v45) = a13;
        LOBYTE(v44) = 0;
        LOBYTE(v43) = a6;
        v21 = [(IMDChat *)v23 initWithAccountID:v24 service:v26 guid:v53 groupID:v51 chatIdentifier:v19 participants:v54 roomName:v19 displayName:v48 lastAddressedLocalHandle:v49 lastAddressedSIMID:v50 properties:0 state:0 style:v43 isFiltered:1 hasHadSuccessfulQuery:v44 engramID:0 serverChangeToken:0 cloudKitSyncState:0 originalGroupID:v52 lastReadMessageTimeStamp:0 lastMessageTimeStampOnLoad:-1 cloudKitRecordID:0 isBlackholed:v45 autoDonationBehavior:0 autoDonationBehaviorLastModificationDate:0 isRecovered:v46 isDeletingIncomingMessages:0 domainIdentifiers:?];
      }

      else
      {
        v27 = [MEMORY[0x277CCACA8] stringGUID];
        LOWORD(v46) = 0;
        LOBYTE(v45) = a13;
        LOBYTE(v44) = 0;
        LOBYTE(v43) = a6;
        v21 = [(IMDChat *)v23 initWithAccountID:v24 service:v26 guid:v53 groupID:v27 chatIdentifier:v19 participants:v54 roomName:v19 displayName:v48 lastAddressedLocalHandle:v49 lastAddressedSIMID:v50 properties:0 state:0 style:v43 isFiltered:1 hasHadSuccessfulQuery:v44 engramID:0 serverChangeToken:0 cloudKitSyncState:0 originalGroupID:v52 lastReadMessageTimeStamp:0 lastMessageTimeStampOnLoad:-1 cloudKitRecordID:0 isBlackholed:v45 autoDonationBehavior:0 autoDonationBehaviorLastModificationDate:0 isRecovered:v46 isDeletingIncomingMessages:0 domainIdentifiers:?];
      }

      v28 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      v29 = [v28 isMissingMessagesEnabled];

      if (v29 && [(IMDChat *)v21 style]== 43)
      {
        v30 = [v18 service];
        v31 = [v30 internalName];

        v32 = IMChatLookupDomainForServiceName();
        [(IMDChat *)v21 assignIdentifier:v51 forDomain:*MEMORY[0x277D19780] isHistoricalIdentifier:0];
        v33 = [v18 service];
        -[IMDChat assignIdentifier:forDomain:isHistoricalIdentifier:](v21, "assignIdentifier:forDomain:isHistoricalIdentifier:", v52, v32, [v33 groupIDIsHistoricalIdentifier] ^ 1);
      }

      v34 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v61 = v21;
        _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_DEFAULT, "Created chat: %@", buf, 0xCu);
      }

      [(IMDChatRegistry *)self addChat:v21];
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v22 = v54;
      v35 = [v22 countByEnumeratingWithState:&v55 objects:v59 count:16];
      if (v35)
      {
        v36 = *v56;
        do
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v56 != v36)
            {
              objc_enumerationMutation(v22);
            }

            v38 = *(*(&v55 + 1) + 8 * i);
            v39 = +[IMDChatRegistry sharedInstance];
            [v39 addIMDHandleToRegistry:v38];
          }

          v35 = [v22 countByEnumeratingWithState:&v55 objects:v59 count:16];
        }

        while (v35);
      }
    }

    v40 = v21;
  }

  else
  {
    v40 = 0;
  }

  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

- (id)chatForRoom:(id)a3 account:(id)a4 chatIdentifier:(id)a5 guid:(id)a6
{
  v39 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v32 = v10;
      v33 = 2112;
      v34 = v11;
      v35 = 2112;
      v36 = v12;
      v37 = 2112;
      v38 = v13;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEBUG, "room: %@  account: %@  chatIdentifier: %@  guid: %@", buf, 0x2Au);
    }
  }

  v15 = [(IMDChat *)v10 length];
  v16 = 0;
  if (v11 && v15)
  {
    v17 = [(IMDChatRegistry *)self existingChatForRoom:v10 account:v11];
    if (v17)
    {
      v18 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v17;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEFAULT, "Found existing chat: %@", buf, 0xCu);
      }
    }

    else
    {
      v19 = [IMDChat alloc];
      v20 = [v11 accountID];
      v21 = [v11 service];
      v22 = [v21 internalName];
      v23 = [MEMORY[0x277CCACA8] stringGUID];
      LOWORD(v30) = 0;
      LOBYTE(v29) = 0;
      LOBYTE(v28) = 0;
      LOBYTE(v27) = 35;
      v17 = [(IMDChat *)v19 initWithAccountID:v20 service:v22 guid:v13 groupID:v23 chatIdentifier:v12 participants:0 roomName:v10 displayName:0 lastAddressedLocalHandle:0 lastAddressedSIMID:0 properties:0 state:0 style:v27 isFiltered:1 hasHadSuccessfulQuery:v28 engramID:0 serverChangeToken:0 cloudKitSyncState:0 originalGroupID:0 lastReadMessageTimeStamp:0 lastMessageTimeStampOnLoad:-1 cloudKitRecordID:0 isBlackholed:v29 autoDonationBehavior:0 autoDonationBehaviorLastModificationDate:0 isRecovered:v30 isDeletingIncomingMessages:0 domainIdentifiers:?];

      v24 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v17;
        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_DEFAULT, "Created chat: %@", buf, 0xCu);
      }

      [(IMDChatRegistry *)self addChat:v17];
    }

    v16 = v17;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)generateUnusedChatIdentifierForGroupChatWithAccount:(id)a3
{
  v4 = MEMORY[0x277D1A918];
  v5 = [a3 service];
  v6 = [v5 internalName];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B600F70;
  v9[3] = &unk_278703AF0;
  v9[4] = self;
  v7 = [v4 generateUnusedChatIdentifierForGroupChatWithServiceName:v6 chatWithChatIdentifierExists:v9];

  return v7;
}

- (id)existingiMessageChatForID:(id)a3 withChatStyle:(unsigned __int8)a4
{
  v5 = MEMORY[0x231897A70](a3, a2);
  v6 = *MEMORY[0x277D1A620];
  v7 = IMCopyAnyServiceGUIDForChat();

  v8 = [(IMDChatRegistry *)self existingChatWithGUID:v7];

  return v8;
}

- (id)existingSMSChatForID:(id)a3 withChatStyle:(unsigned __int8)a4
{
  v5 = MEMORY[0x231897A70](a3, a2);
  v6 = *MEMORY[0x277D1A610];
  v7 = IMCopyAnyServiceGUIDForChat();

  v8 = [(IMDChatRegistry *)self existingChatWithGUID:v7];

  return v8;
}

- (BOOL)hasKnownSenderChatWithChatIdentifier:(id)a3
{
  v3 = [(IMDChatRegistry *)self existingiMessageChatForID:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isFiltered] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasScheduledMessageForHandleID:(id)a3
{
  v4 = MEMORY[0x231897A70](a3, a2);
  v5 = *MEMORY[0x277D1A620];
  v6 = IMCopyAnyServiceGUIDForChat();

  v7 = [(IMDChatRegistry *)self _cachedChatWithGUID:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 hasScheduledMessage];
  }

  else
  {
    v10 = +[IMDMessageStore sharedInstance];
    v9 = [v10 hasScheduledMessageForChatGUID:v6];
  }

  return v9;
}

- (id)_cachedChatWithGUID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    [(NSRecursiveLock *)self->_chatsLock lock];
    v5 = [(NSMutableDictionary *)self->_chats objectForKeyedSubscript:v4];
    [(NSRecursiveLock *)self->_chatsLock unlock];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_cachedChatsWithGroupID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    [(NSRecursiveLock *)self->_chatsLock lock];
    v5 = [(NSMutableDictionary *)self->_chatsByGroupID objectForKey:v4];
    v6 = [v5 copy];

    [(NSRecursiveLock *)self->_chatsLock unlock];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (void)pendingAlternateID:(id)a3 forHandle:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IMDChatRegistry *)self pendingChatBotHandleToAlternateID];

  if (!v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(IMDChatRegistry *)self setPendingChatBotHandleToAlternateID:v9];
  }

  v10 = [(IMDChatRegistry *)self pendingChatBotHandleToAlternateID];
  [v10 setObject:v7 forKeyedSubscript:v6];
}

- (id)alternateIDForHandle:(id)a3
{
  v4 = a3;
  v5 = [(IMDChatRegistry *)self pendingChatBotHandleToAlternateID];

  if (v5)
  {
    v6 = [(IMDChatRegistry *)self pendingChatBotHandleToAlternateID];
    v5 = [v6 objectForKeyedSubscript:v4];

    if (v5)
    {
      v7 = [(IMDChatRegistry *)self pendingChatBotHandleToAlternateID];
      [v7 removeObjectForKey:v4];
    }
  }

  return v5;
}

- (id)existingChatWithGUID:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    v5 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v6 = [v5 isOneChatEnabled];

    if (v6)
    {
      v7 = IMAnyServiceGUIDFromLegacyChatGUID();

      v4 = v7;
    }

    v8 = [(IMDChatRegistry *)self _cachedChatWithGUID:v4];
    if (!v8)
    {
      v9 = [(IMDChatRegistry *)self chatStore];
      v10 = [v9 chatWithGUID:v4];

      v11 = [(IMDChatRegistry *)self _addChatFromCacheMiss:v10 preferExistingChat:0];
      v8 = v11;
      if (v11)
      {
        v12 = [v11 guid];
        v13 = [v12 isEqualToString:v4];

        if ((v13 & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v14 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              v15 = [v8 guid];
              v19 = 138412546;
              v20 = v15;
              v21 = 2112;
              v22 = v4;
              _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Chat GUID %@ doesn't match requested GUID %@, may have changed due to inconsistent properties", &v19, 0x16u);
            }
          }

          v8 = 0;
        }
      }

      v16 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412546;
        v20 = v4;
        v21 = 2112;
        v22 = v8;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_DEFAULT, "Cache miss for chat with guid: %@ result: %@", &v19, 0x16u);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)existingChatsFilteredUsingPredicate:(id)a3
{
  v4 = a3;
  v5 = [(IMDChatRegistry *)self chatStore];
  v6 = [v5 chatsFilteredUsingPredicate:v4];

  v7 = [(IMDChatRegistry *)self _addChatsFromCacheMisses:v6 preferExistingChats:1];

  return v7;
}

- (void)fetchExistingUnreadChatsOlderThan:(id)a3 predicate:(id)a4 limit:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(IMDChatRegistry *)self chatStore];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B6018A8;
  v15[3] = &unk_278706330;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 fetchUnreadChatsOlderThan:v12 predicate:v11 limit:a5 completionHandler:v15];
}

- (id)existingChatsWithGroupID:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 length];
  v6 = MEMORY[0x277CBEBF8];
  if (v5)
  {
    v7 = [(IMDChatRegistry *)self _cachedChatsWithGroupID:v4];
    if ([v7 count])
    {
      v8 = v7;
    }

    else
    {
      v9 = [(IMDChatRegistry *)self chatStore];
      v10 = [v9 chatsWithGroupID:v4];

      v8 = [(IMDChatRegistry *)self _addChatsFromCacheMisses:v10 preferExistingChats:1];

      v11 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v8 arrayByApplyingSelector:sel_guid];
        v16 = 138412546;
        v17 = v4;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Cache miss for chats with group ID: %@ result: %@", &v16, 0x16u);
      }
    }

    if (v8)
    {
      v13 = v8;
    }

    else
    {
      v13 = v6;
    }

    v6 = v13;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)existingChatWithGroupID:(id)a3 onService:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v9 = [v8 isOneChatEnabled];

  v10 = [(IMDChatRegistry *)self existingChatsWithGroupID:v6];
  v11 = v10;
  if (v9)
  {
    v12 = [v10 firstObject];
LABEL_13:
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v10;
    v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          v18 = [v17 serviceName];
          v19 = [v18 isEqualToString:v7];

          if (v19)
          {
            v12 = v17;

            goto LABEL_13;
          }
        }

        v14 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)existingChatWithIdentifier:(id)a3 account:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v8 = [v7 service];
    v9 = [v8 internalName];
    v10 = IMCopyAnyServiceGUIDForChat();

    v11 = [(IMDChatRegistry *)self _cachedChatWithGUID:v10];
    if (v11)
    {
      v12 = v11;
      v13 = v12;
    }

    else
    {
      v14 = [v7 service];
      v15 = [v14 internalName];
      v16 = IMCopyAnyServiceGUIDForChat();

      v17 = [(IMDChatRegistry *)self _cachedChatWithGUID:v16];
      v12 = v17;
      if (v17)
      {
        v13 = v17;
      }

      else
      {
        v18 = [(IMDChatRegistry *)self chatStore];
        v19 = [v7 service];
        v20 = [v18 chatsWithIdentifier:v6 onService:v19];

        v21 = [v20 firstObject];
        v13 = [(IMDChatRegistry *)self _addChatFromCacheMiss:v21 preferExistingChat:1];

        if (v13)
        {
          v22 = [v13 chatIdentifier];
          v23 = [v22 isEqualToString:v6];

          if ((v23 & 1) == 0)
          {
            if (IMOSLoggingEnabled())
            {
              v24 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                v25 = [v13 chatIdentifier];
                v29 = 138412546;
                v30 = v25;
                v31 = 2112;
                v32 = v6;
                _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Chat identifier %@ doesn't match requested identifier %@, may have changed due to inconsistent properties", &v29, 0x16u);
              }
            }

            v13 = 0;
          }
        }

        v26 = IMChatRegistryLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v29 = 138412802;
          v30 = v6;
          v31 = 2112;
          v32 = v7;
          v33 = 2112;
          v34 = v13;
          _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_DEFAULT, "Cache miss for chat with identifier: %@ account: %@ result: %@", &v29, 0x20u);
        }
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)existingChatsWithPinningIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() supportedServiceNames];
  v6 = [(IMDChatRegistry *)self allChatsWithIdentifier:v4 style:45 serviceNames:v5];

  if ([v6 count])
  {
    v7 = v6;
  }

  else
  {
    v8 = [(IMDChatRegistry *)self existingChatsWithGroupID:v4];
    if ([v8 count])
    {
      v7 = v8;
    }

    else
    {
      v9 = [(IMDChatRegistry *)self chatStore];
      v10 = [v9 chatsWithPinningIdentifier:v4];

      v7 = [(IMDChatRegistry *)self _addChatsFromCacheMisses:v10 preferExistingChats:1];
    }
  }

  return v7;
}

- (id)existingChatWithEngramID:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(IMDChatRegistry *)self allChats];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v9 engramID];
          v11 = [v10 isEqualToString:v4];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)existingChatForID:(id)a3 account:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 length];
  v9 = 0;
  if (v7 && v8)
  {
    v10 = [v7 service];
    v11 = [v10 internalName];
    v12 = IMCopyAnyServiceGUIDForChat();

    v13 = [(IMDChatRegistry *)self existingChatWithGUID:v12];
    v14 = v13;
    if (v13)
    {
      v9 = v13;
    }

    else
    {
      v15 = [(IMDChatRegistry *)self chatStore];
      v16 = [v7 service];
      v17 = [v16 internalName];
      v18 = [v15 chatsWithHandle:v6 onService:v17];

      v19 = [v18 firstObject];
      v9 = [(IMDChatRegistry *)self _addChatFromCacheMiss:v19 preferExistingChat:1];

      v20 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412802;
        v24 = v6;
        v25 = 2112;
        v26 = v7;
        v27 = 2112;
        v28 = v9;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_DEFAULT, "Cache miss for chats with ID: %@ account: %@ result: %@", &v23, 0x20u);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_existingChatsSortedByIdentifiersAndRecencyFromSortedIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(IMDChatRegistry *)self chatStore];
  v6 = [v5 chatsFromSortedIdentifiers:v4];

  v7 = [(IMDChatRegistry *)self _addChatsFromCacheMisses:v6 preferExistingChats:1];

  return v7;
}

- (id)existingChatForRoom:(id)a3 account:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7 && [v6 length])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = self;
    v8 = [(IMDChatRegistry *)self allChats];
    v9 = [v8 countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v28 + 1) + 8 * i);
          v14 = [v13 service];
          v15 = [v7 service];

          if (v14 == v15 && [v13 style] == 35)
          {
            v16 = [v13 roomName];
            if ([v16 length])
            {
              v17 = [v13 roomName];
              v18 = [v17 isEqualToString:v6];

              if (v18)
              {
                v24 = v13;
                goto LABEL_20;
              }
            }

            else
            {
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v28 objects:v38 count:16];
      }

      while (v10);
    }

    v19 = [(IMDChatRegistry *)v27 chatStore];
    v20 = [v7 service];
    v21 = [v20 internalName];
    v8 = [v19 chatsWithRoomname:v6 onService:v21];

    v22 = [v8 firstObject];
    v24 = [(IMDChatRegistry *)v27 _addChatFromCacheMiss:v22 preferExistingChat:1];

    v23 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v33 = v6;
      v34 = 2112;
      v35 = v7;
      v36 = 2112;
      v37 = v24;
      _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_DEFAULT, "Cache miss for chat with roomname: %@ account: %@ result: %@", buf, 0x20u);
    }

LABEL_20:
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)allChatsWithIdentifier:(id)a3 style:(unsigned __int8)a4 serviceNames:(id)a5
{
  v33[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if ([v7 length] && objc_msgSend(v8, "count"))
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v11 = [v10 isOneChatEnabled];

    if (v11)
    {
      v12 = *MEMORY[0x277D1A5F8];
      v13 = IMCopyAnyServiceGUIDForChat();
      v14 = [(IMDChatRegistry *)self existingChatWithGUID:v13];
      v15 = v14;
      if (v14)
      {
        v33[0] = v14;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
      }

      else
      {
        v16 = MEMORY[0x277CBEBF8];
      }
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v27 = v8;
      v17 = v8;
      v18 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v29;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v29 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v28 + 1) + 8 * i);
            v23 = IMCopyGUIDForChat();
            v24 = [(IMDChatRegistry *)self existingChatWithGUID:v23];
            if (v24)
            {
              [v9 addObject:v24];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v19);
      }

      v16 = v9;
      v8 = v27;
    }
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)allExistingChatsWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(IMDChatRegistry *)self chatStore];
  v6 = [v5 chatsWithIdentifier:v4];

  v7 = [(IMDChatRegistry *)self _addChatsFromCacheMisses:v6 preferExistingChats:1];

  return v7;
}

- (id)_participantIDSetFromHandles:(id)a3 toIdentifier:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CBEB58];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = [v7 __imArrayByApplyingBlock:&unk_283F1A468];

  [v8 addObjectsFromArray:v9];
  if (v5)
  {
    [v8 addObject:v5];
  }

  return v8;
}

- (id)_exactGroupChatMatchOrNewestMatchingIdentifierFromSortedIdentifiers:(id)a3 participants:(id)a4 toIdentifier:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v39 = a5;
  v10 = [(IMDChatRegistry *)self _existingChatsSortedByIdentifiersAndRecencyFromSortedIdentifiers:v8];
  v11 = [v10 firstObject];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v13)
  {
    v14 = v13;
    v37 = v8;
    obj = v12;
    v15 = 0;
    v16 = *v41;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v41 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v40 + 1) + 8 * i);
        v19 = [v18 participants];
        v20 = [(IMDChatRegistry *)self _participantIDSetFromHandles:v19 toIdentifier:v39];

        if ([v9 isEqualToSet:v20])
        {
          v23 = v18;

          v12 = obj;
          v8 = v37;
          goto LABEL_27;
        }

        v21 = [v9 mutableCopy];
        [v21 intersectSet:v20];
        if ([v21 count] > v15)
        {
          v22 = v18;

          v15 = [v21 count];
          v11 = v22;
        }
      }

      v14 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }

    v12 = obj;

    v8 = v37;
    if (v15 > 2)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  if ([v12 count])
  {
    v24 = [v9 count];
    v25 = [v11 participants];
    if (v24 <= [v25 count])
    {
      v27 = [v11 participants];
      v28 = [v27 count];

      if (v28 < 5)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v26 = [v9 count];

      if (v26 <= 4)
      {
        goto LABEL_21;
      }
    }

    [(IMDChatRegistry *)self _submitAndOpenTapToRadarForSortedIdentifiers:v8 participants:v9 sortedChats:v12];
  }

LABEL_21:
  v29 = [v9 count];
  v30 = [v11 participants];
  if (v29 <= [v30 count])
  {
    v33 = [v11 participants];
    v34 = [v33 count];

    if (v34 <= 7)
    {
      goto LABEL_23;
    }

LABEL_25:
    v32 = 0;
    goto LABEL_26;
  }

  v31 = [v9 count];

  if (v31 >= 8)
  {
    goto LABEL_25;
  }

LABEL_23:
  v32 = v11;
LABEL_26:
  v23 = v32;
LABEL_27:

  v35 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)_submitAndOpenTapToRadarForSortedIdentifiers:(id)a3 participants:(id)a4 sortedChats:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 __imArrayByApplyingBlock:&unk_283F1A488];
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v23 = v7;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Matched identifiers %@ to chats with guids %@ with no matching participants!", buf, 0x16u);
    }
  }

  v12 = [MEMORY[0x277D19268] sharedInstance];
  v13 = [v12 isInternalInstall];

  if (v13)
  {
    v14 = [MEMORY[0x277D1A990] sharedInstance];
    v15 = [v14 getValueFromDomain:@"com.apple.MobileSMS" forKey:@"ChatInconsistencyTTRKey"];
    v16 = [v15 intValue] > 0;

    if (!v16)
    {
      v17 = [MEMORY[0x277D1A990] sharedInstance];
      v18 = [MEMORY[0x277CCABB0] numberWithInt:1];
      [v17 setValue:v18 forDomain:@"com.apple.MobileSMS" forKey:@"ChatInconsistencyTTRKey"];

      v19 = [v9 __imArrayByApplyingBlock:&unk_283F1A4A8];
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"*** If this is an internal group, please request logs from all participants! ***\n\nChats were found using the provided identifiers %@ and participants %@ that had no matching participants.\n\nChats Found: %@\n\nIdentifiers: %@", v7, v8, v9, v19];
      [MEMORY[0x277D1AC88] submitAndOpenTapToRadarWithNotificationIdentifier:@"com.apple.MobileSMS.BestCandidateChatAlert" notificationTitle:@"[Internal] Chat Inconsistencies" notificationBody:@"Please tap here to file a radar. This is a serious issue that needs to be identified and addressed." draftTitle:@"[FindChat] Found Chat By Identifier With No Matching Participants" problemDescription:v20 attachments:MEMORY[0x277CBEBF8] deviceClasses:&unk_283F4EF18 classification:@"Serious Bug" reproducibility:@"I Didn't Try"];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_exactGroupChatMatchOrNewestMatchingGroupID:(id)a3 originalGroupID:(id)a4 serviceName:(id)a5 participants:(id)a6 toIdentifier:(id)a7 outNewestSiblingChat:(id *)a8
{
  v91 = *MEMORY[0x277D85DE8];
  v52 = a3;
  v53 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = sub_22B4D7740;
  v80 = sub_22B4D78FC;
  v81 = 0;
  v74[0] = 0;
  v74[1] = v74;
  v74[2] = 0x2020000000;
  v75 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = sub_22B4D7740;
  v72 = sub_22B4D78FC;
  v73 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B603E74;
  aBlock[3] = &unk_278706378;
  v65 = &v68;
  v50 = self;
  v51 = v13;
  v61 = v51;
  v62 = self;
  v48 = v15;
  v63 = v48;
  v47 = v14;
  v64 = v47;
  v66 = v74;
  v67 = &v76;
  v16 = _Block_copy(aBlock);
  v17 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v18 = [v17 isMissingMessagesEnabled];

  if (v18)
  {
    v19 = v53;
  }

  else
  {
    v19 = v52;
  }

  if (v18)
  {
    v20 = v52;
  }

  else
  {
    v20 = v53;
  }

  v21 = v19;
  v54 = v20;
  v55 = v21;
  [(IMDChatRegistry *)v50 existingChatsWithGroupID:v21];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v22 = v57 = 0u;
  v23 = [v22 countByEnumeratingWithState:&v56 objects:v90 count:16];
  if (v23)
  {
    v24 = *v57;
    do
    {
      v25 = 0;
      do
      {
        if (*v57 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v56 + 1) + 8 * v25);
        v27 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
        v28 = [v27 isMissingMessagesEnabled];

        if (v28 & 1) != 0 || ([v26 groupID], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "isEqualToIgnoringCase:", v55), v29, (v30))
        {
          v16[2](v16, v26);
        }

        else if (IMOSLoggingEnabled())
        {
          v31 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v83 = v26;
            _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, " ==> ERROR sanity check failed: ChatRegistry returned chat that did not match inputs: %@", buf, 0xCu);
          }
        }

        ++v25;
      }

      while (v23 != v25);
      v32 = [v22 countByEnumeratingWithState:&v56 objects:v90 count:16];
      v23 = v32;
    }

    while (v32);
  }

  if (v54 && !v77[5])
  {
    v33 = [(IMDChatRegistry *)v50 newestExistingChatWithOriginalGroupID:v54 onService:v51];
    v34 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v35 = [v34 isMissingMessagesEnabled];

    if ((v35 & 1) != 0 || ([v33 originalGroupID], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "isEqualToString:", v53), v36, v37))
    {
      v16[2](v16, v33);
    }

    v38 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v39 = [v38 isMissingMessagesEnabled];

    if (v39 && v55 && v77[5] && [v55 length])
    {
      v40 = IMChatLookupDomainForServiceName();
      if (IMOSLoggingEnabled())
      {
        v41 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = [v77[5] guid];
          *buf = 138413058;
          v83 = v54;
          v84 = 2112;
          v85 = v55;
          v86 = 2112;
          v87 = v40;
          v88 = 2112;
          v89 = v42;
          _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, "Found a chat using fallback identifier %@ rather than identifier %@. Assigning identifier for domain %@ to chat with guid %@ as a historical identifier", buf, 0x2Au);
        }
      }

      [v77[5] assignIdentifier:v55 forDomain:v40 isHistoricalIdentifier:1];
    }
  }

  if (a8)
  {
    v43 = v69[5];
    if (v43)
    {
      *a8 = v43;
    }
  }

  v44 = v77[5];

  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(v74, 8);
  _Block_object_dispose(&v76, 8);

  v45 = *MEMORY[0x277D85DE8];

  return v44;
}

- (id)_newestGroupChatMatchingParticipants:(id)a3 displayName:(id)a4 strictDisplayNameMatching:(BOOL)a5 serviceName:(id)a6 toIdentifier:(id)a7
{
  v9 = a5;
  v48 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v38 = v12;
  v16 = [v12 mutableCopy];
  v36 = v15;
  [v16 removeObject:v15];
  v35 = v16;
  v17 = [v16 allObjects];
  v37 = v14;
  v18 = [(IMDChatRegistry *)self _existingChatsForIDs:v17 serviceName:v14 displayName:v13 groupID:0 useOriginalGroupID:0 style:43];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (!v20)
  {
    v22 = 0;
    goto LABEL_22;
  }

  v21 = v20;
  v22 = 0;
  v23 = *v40;
  do
  {
    v24 = 0;
    do
    {
      if (*v40 != v23)
      {
        objc_enumerationMutation(v19);
      }

      v25 = *(*(&v39 + 1) + 8 * v24);
      if (v9 && ![v13 length])
      {
        v28 = [v25 displayName];
        v29 = [v28 length];

        if (v29)
        {
          v27 = IMChatRegistryLogHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v30 = [v25 displayName];
            *buf = 138412546;
            v44 = v30;
            v45 = 2112;
            v46 = v25;
            _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_DEFAULT, " ==> Skipping chat with display name of %@, requested display name was zero length, chat: %@", buf, 0x16u);
          }

LABEL_13:

          goto LABEL_14;
        }
      }

      if (!v22 || [v25 isNewerThan:v22])
      {
        v26 = IMChatRegistryLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v44 = v25;
          _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_DEFAULT, " ==> Found a newer chat based on participants and display name: %@", buf, 0xCu);
        }

        v27 = v22;
        v22 = v25;
        goto LABEL_13;
      }

LABEL_14:
      ++v24;
    }

    while (v21 != v24);
    v31 = [v19 countByEnumeratingWithState:&v39 objects:v47 count:16];
    v21 = v31;
  }

  while (v31);
LABEL_22:

  v32 = v22;
  v33 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)_setGroupID:(id)a3 forChatAndAllSiblings:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v6;
    _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, " ==> Migrating siblings to new groupID if needed: %@", buf, 0xCu);
  }

  v9 = [v7 chatIdentifier];
  v23 = v7;
  v10 = -[IMDChatRegistry allExistingChatsWithIdentifier:style:](self, "allExistingChatsWithIdentifier:style:", v9, [v7 style]);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = [v16 groupID];
        v18 = IMSharedHelperAreObjectsLogicallySame();

        if ((v18 & 1) == 0)
        {
          v19 = IMChatRegistryLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [v16 guid];
            v21 = [v16 groupID];
            *buf = 138412802;
            v29 = v20;
            v30 = 2112;
            v31 = v21;
            v32 = 2112;
            v33 = v6;
            _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_DEFAULT, " ==> Updating chat (%@) group ID from %@ => %@", buf, 0x20u);
          }

          [(IMDChatRegistry *)self updateGroupIDForChat:v16 newGroupID:v6];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v13);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)bestCandidateGroupChatWithFromIdentifier:(id)a3 toIdentifier:(id)a4 displayName:(id)a5 participants:(id)a6 updatingToLatestiMessageGroupID:(id)a7 sortedIdentifiers:(id)a8 serviceName:(id)a9
{
  v88 = *MEMORY[0x277D85DE8];
  v54 = a5;
  v15 = a7;
  v57 = a8;
  v55 = a9;
  v16 = a6;
  v17 = a4;
  v52 = [a3 _stripFZIDPrefix];
  v56 = [v17 _stripFZIDPrefix];

  v18 = [v16 __imArrayByApplyingBlock:&unk_283F1A4C8];

  v53 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v18];
  v19 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v59 = v56;
    v60 = 2112;
    v61 = v52;
    v62 = 2112;
    *v63 = v54;
    *&v63[8] = 2112;
    *v64 = v18;
    *&v64[8] = 2112;
    *v65 = v57;
    _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_DEFAULT, "Finding best candidate group chat with toIdentifier: %@ fromIdentifier: %@ displayName: %@ participants: %@ sortedIdentifiers: %@", buf, 0x34u);
  }

  v20 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_DEFAULT, " ==> Looking up with identifiers", buf, 2u);
  }

  if (![v57 count])
  {
    goto LABEL_9;
  }

  v21 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v18];
  v22 = [(IMDChatRegistry *)self _exactGroupChatMatchOrNewestMatchingIdentifierFromSortedIdentifiers:v57 participants:v21 toIdentifier:v56];

  v23 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_DEFAULT, " ==> Found chat with identifiers.", buf, 2u);
  }

  if (!v22)
  {
LABEL_9:
    v24 = v18;
    v25 = +[IMDServiceController sharedController];
    v26 = [v25 serviceWithName:v55];
    v27 = [v26 groupsMergeDisplayNames];

    v28 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v59) = v27;
      _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_DEFAULT, " ==> groupID lookup failed, falling back to display name, participants, and mergeDisplayNames: %{BOOL}d", buf, 8u);
    }

    if (v27)
    {
      v29 = 0;
    }

    else
    {
      v29 = v54;
    }

    v22 = [(IMDChatRegistry *)self _newestGroupChatMatchingParticipants:v53 displayName:v29 strictDisplayNameMatching:v27 ^ 1u serviceName:v55 toIdentifier:v56];
    v18 = v24;
  }

  if ([v15 length] && v22)
  {
    [(IMDChatRegistry *)self assignNonHistoricaliMessageIdentifierAndBroadcastForChat:v22 identifier:v15];
    goto LABEL_19;
  }

  if (v22)
  {
LABEL_19:
    v30 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v22 guid];
      v32 = [v22 style];
      v33 = [v22 state];
      v49 = [v22 displayName];
      v48 = [v22 chatIdentifier];
      v47 = [v22 rowID];
      v34 = [v22 originalGroupID];
      v46 = [v22 isFiltered];
      v45 = ([v22 repairHistory] >> 1) & 1;
      v44 = ([v22 repairHistory] >> 2) & 1;
      v43 = ([v22 repairHistory] >> 3) & 1;
      v42 = ([v22 repairHistory] >> 4) & 1;
      v41 = [v22 repairHistory] & 1;
      v35 = ([v22 repairHistory] >> 5) & 1;
      [v22 domainIdentifiers];
      v36 = v50 = v18;
      [v22 participants];
      v37 = v51 = v15;
      v38 = [v37 __imArrayByApplyingBlock:&unk_283F1A4E8];
      *buf = 134222082;
      v59 = v22;
      v60 = 2112;
      v61 = v31;
      v62 = 1024;
      *v63 = v32;
      *&v63[4] = 1024;
      *&v63[6] = v33;
      *v64 = 2112;
      *&v64[2] = v49;
      *v65 = 2112;
      *&v65[2] = v48;
      v66 = 2048;
      v67 = v47;
      v68 = 2112;
      v69 = v34;
      v70 = 1024;
      v71 = v46;
      v72 = 1024;
      v73 = v45;
      v74 = 1024;
      v75 = v44;
      v76 = 1024;
      v77 = v43;
      v78 = 1024;
      v79 = v42;
      v80 = 1024;
      v81 = v41;
      v82 = 1024;
      v83 = v35;
      v84 = 2112;
      v85 = v36;
      v86 = 2112;
      v87 = v38;
      _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_DEFAULT, " ==> Found matching chat: [IMDChat: %p  GUID: %@  Style: %c  State: %d  Display Name: %@  Identifier: %@  Row ID: %lld  originalGroupID: %@  isFiltered: %d  repairHistory: (Repaired Participant For Chat ID Handle ID Mismatch: %{BOOL}d  Repaired Blank Service Name: %{BOOL}d  Repaired Chat Identifier: %{BOOL}d  Repaired Participant V2: %{BOOL}d  Repaired GUID: %{BOOL}d  Repaired GUID V2: %{BOOL}d)  Domain Identifiers: %@  Participants: %@]", buf, 0x88u);

      v15 = v51;
      v18 = v50;
    }

    goto LABEL_21;
  }

  v30 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_DEFAULT, " ==> Did not find a matching chat", buf, 2u);
  }

LABEL_21:

  v39 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)bestCandidateGroupChatWithFromIdentifier:(id)a3 toIdentifier:(id)a4 displayName:(id)a5 participants:(id)a6 groupID:(id)a7 originalGroupID:(id)a8 serviceName:(id)a9
{
  v54 = *MEMORY[0x277D85DE8];
  v42 = a5;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v18 = a6;
  v19 = a4;
  v20 = [a3 _stripFZIDPrefix];
  v21 = [v19 _stripFZIDPrefix];

  v22 = [v18 __imArrayByApplyingBlock:&unk_283F1A508];

  v23 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v22];
  v24 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v45 = v21;
    v46 = 2112;
    v47 = v20;
    v48 = 2112;
    v49 = v42;
    v50 = 2112;
    v51 = v22;
    v52 = 2112;
    v53 = v15;
    _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_DEFAULT, "Finding best candidate group chat with toIdentifier: %@ fromIdentifier: %@ displayName: %@ partipciants: %@ groupID: %@", buf, 0x34u);
  }

  v25 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = v15;
    _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_DEFAULT, " ==> Looking up with groupID %@", buf, 0xCu);
  }

  v41 = v20;

  v40 = v16;
  if ([v15 length])
  {
    v43 = 0;
    v26 = self;
    v27 = [(IMDChatRegistry *)self _exactGroupChatMatchOrNewestMatchingGroupID:v15 originalGroupID:v16 serviceName:v17 participants:v23 toIdentifier:v21 outNewestSiblingChat:&v43, v16, v41];
    v28 = v43;
    if (v27)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v26 = self;
    v28 = 0;
  }

  v29 = +[IMDServiceController sharedController];
  v30 = [v29 serviceWithName:v17];
  v31 = [v30 groupsMergeDisplayNames];

  v32 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v45 = v42;
    v46 = 2112;
    v47 = v22;
    v48 = 1024;
    LODWORD(v49) = v31;
    _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_DEFAULT, " ==> groupID lookup failed, falling back to display name: %@ participants: %@ mergeDisplayNames: %{BOOL}d", buf, 0x1Cu);
  }

  if (v31)
  {
    v33 = 0;
  }

  else
  {
    v33 = v42;
  }

  v27 = [(IMDChatRegistry *)v26 _newestGroupChatMatchingParticipants:v23 displayName:v33 strictDisplayNameMatching:v31 ^ 1u serviceName:v17 toIdentifier:v21];
LABEL_15:
  if ([v15 length] && v27)
  {
    v34 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v35 = [v34 isOneChatEnabled];

    if (v35)
    {
      [(IMDChatRegistry *)v26 assignNonHistoricaliMessageIdentifierAndBroadcastForChat:v27 identifier:v15];
    }

    else
    {
      [(IMDChatRegistry *)v26 _setGroupID:v15 forChatAndAllSiblings:v27];
    }
  }

  v36 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = v27;
    _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_DEFAULT, " ==> Found matching chat: %@", buf, 0xCu);
  }

  v37 = v27;
  v38 = *MEMORY[0x277D85DE8];
  return v27;
}

- (void)updateLastMessageForChat:(id)a3 hintMessage:(id)a4 historyQuery:(BOOL)a5
{
  v5 = a5;
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if ([v8 scheduleType] == 2 && (objc_msgSend(v9, "scheduleState") == 2 || objc_msgSend(v9, "scheduleState") == 1))
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          LOWORD(v22) = 0;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Scheduled Messages | Skiping updating last message as hint message is a user scheduled message", &v22, 2u);
        }

LABEL_8:
      }
    }

    else
    {
      if ([v9 isTypingMessage])
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_31;
        }

        v10 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v22 = 138412290;
          v23 = v9;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Skipping updating last message to %@ because it's a typingMessage.", &v22, 0xCu);
        }

        goto LABEL_8;
      }

      if (v9 && [v9 messageID] && (objc_msgSend(v7, "lastMessage"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isOlderThanItem:", v9), v11, v12))
      {
        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = [v9 time];
            v15 = [v7 lastMessage];
            v16 = [v15 time];
            v22 = 138412546;
            v23 = v14;
            v24 = 2112;
            v25 = v16;
            _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, " Hint message for last message was newer than the current last message: %@, current: %@", &v22, 0x16u);
          }
        }

        v17 = v9;
      }

      else
      {
        if (!v5)
        {
          goto LABEL_31;
        }

        if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v22 = 138412290;
            v23 = v7;
            _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, " Querying db for last message: %@", &v22, 0xCu);
          }
        }

        v19 = +[IMDMessageStore sharedInstance];
        v17 = [v19 lastMessageForChatWithRowID:{objc_msgSend(v7, "rowID")}];
      }

      v20 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412546;
        v23 = v17;
        v24 = 2112;
        v25 = v7;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_DEFAULT, " => Using last message: %@ for chat: %@", &v22, 0x16u);
      }

      [v7 _updateLastMessage:v17];
    }
  }

LABEL_31:

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateUnreadCountForChat:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v5 = [v4 isUnreadCountRefactorEnabled];

    if (v5)
    {
      v6 = [v3 guid];
      if ([v6 length])
      {
        v7 = IMLogHandleForCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          sub_22B7D6618(v3, v7);
        }

        *v39 = 0;
        *&v39[8] = v39;
        *&v39[16] = 0x3032000000;
        v40 = sub_22B4D7740;
        v41 = sub_22B4D78FC;
        v42 = 0;
        v8 = [MEMORY[0x277D18EE0] synchronousDatabaseQueryProvider];
        v38 = v6;
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = sub_22B605B00;
        v27[3] = &unk_278705FF0;
        v27[4] = v39;
        [v8 generateUnreadCountReportsForChatsWithGUIDs:v9 completionHandler:v27];

        if (IMOSLoggingEnabled())
        {
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v11 = *(*&v39[8] + 40);
            v12 = [v11 unreadCount];
            v13 = [v3 guid];
            v14 = [v3 rowID];
            *buf = 134218754;
            v31 = v11;
            v32 = 2048;
            v33 = v12;
            v34 = 2112;
            v35 = v13;
            v36 = 2048;
            v37 = v14;
            _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Fetched unread count report %p with unread count %llu for chat GUID %@ chat row ID %lld", buf, 0x2Au);
          }
        }

        v15 = *(*&v39[8] + 40);
        if (v15 && [v15 unreadCount])
        {
          v16 = +[IMDMessageStore sharedInstance];
          v17 = [v16 unreadCountController];
          v28 = *(*&v39[8] + 40);
          v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
          v19 = [v17 updateReports:v18];
        }

        else
        {
          v16 = +[IMDMessageStore sharedInstance];
          v17 = [v16 unreadCountController];
          v29 = v6;
          v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
          v19 = [v17 clearUnreadCountForChatsWithGUIDs:v18];
        }

        v20 = v19;

        _Block_object_dispose(v39, 8);
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v21 = [v3 unreadCount];
      v22 = +[IMDChatStore sharedInstance];
      v23 = [v22 unreadCountForChat:v3];

      if (v23 < 0)
      {
        v20 = 0;
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *v39 = 138412546;
            *&v39[4] = v3;
            *&v39[12] = 1024;
            *&v39[14] = v23;
            _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Updating unread count for chat: %@ to: %d", v39, 0x12u);
          }
        }

        [v3 _setUnreadCount:v23 & 0x7FFFFFFF];
        v20 = v21 != [v3 unreadCount];
      }
    }
  }

  else
  {
    v20 = 1;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)updateStateForChat:(id)a3 fromMessage:(id)a4 toMessage:(id)a5 forcePost:(BOOL)a6 hintMessage:(id)a7 shouldRebuildFailedMessageDate:(BOOL)a8 shouldCalculateUnreadCount:(BOOL)a9 setUnreadCountToZero:(BOOL)a10
{
  v10 = a8;
  v12 = a6;
  v37 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  if (v19)
  {
    [(IMDChatRegistry *)self updateLastMessageForChat:v16 hintMessage:v19];
  }

  v20 = [(IMDChatRegistry *)self isBeingSetup];
  if ((a9 || a10) && !v20)
  {
    v22 = +[IMDMessageStore sharedInstance];
    v23 = [v16 guid];
    [v22 updateStampForGUID:v23];
  }

  if (v18 && v17 && v10 && ([v17 errorCode] || objc_msgSend(v18, "errorCode")))
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v35 = 138412290;
        v36 = v17;
        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "We believe the failed message might have changed, lets rebuild with fromMessage: %@", &v35, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v35 = 138412290;
        v36 = v18;
        _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "    => toMessage: %@", &v35, 0xCu);
      }
    }

    v26 = 0;
  }

  else
  {
    if (!v12)
    {
      goto LABEL_30;
    }

    v26 = 1;
  }

  v27 = [v16 copyDictionaryRepresentation:0];
  v28 = [(IMDChatRegistry *)self _sharedMessageStore];
  v29 = [v28 isSuppressDatabaseUpdates];

  if (v29 ^ 1 | v12)
  {
    v30 = +[IMDBroadcastController sharedProvider];
    v31 = [v30 broadcasterForChatListenersUsingBlackholeRegistry:{objc_msgSend(v16, "isBlackholed")}];
    v32 = [v16 guid];
    [v31 chat:v32 updated:v27];
  }

  if (((v26 | [(IMDChatRegistry *)self isBeingSetup]) & 1) == 0)
  {
    v33 = [(IMDChatRegistry *)self _sharedMessageStore];
    [v33 rebuildLastFailedMessageDate];
  }

LABEL_30:
  v34 = *MEMORY[0x277D85DE8];
}

- (void)assignNonHistoricaliMessageIdentifierAndBroadcastForChat:(id)a3 identifier:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = *MEMORY[0x277D19780];
    v9 = [v6 latestIdentifierForDomain:*MEMORY[0x277D19780]];
    v10 = [v6 domainIdentifiers];
    v11 = IMSharedHelperAreObjectsLogicallySame();
    [(NSRecursiveLock *)self->_chatsLock lock];
    if ((v11 & 1) == 0)
    {
      [(IMDChatRegistry *)self __unassignGroupIDFromAllChats:v7];
    }

    [(IMDChatRegistry *)self __removeChatFromGroupIDChatIndex:v6];
    [(NSRecursiveLock *)self->_chatsLock unlock];
    v12 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v6 chatIdentifier];
      *buf = 138412802;
      v35 = v9;
      v36 = 2112;
      v37 = v7;
      v38 = 2112;
      v39 = v13;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, "Updating latest identifier in iMessageGroupID domain from (%@) to (%@) for chat %@ and broadcasting the update to clients.", buf, 0x20u);
    }

    if ((v11 & 1) == 0)
    {
      [v6 assignIdentifier:v7 forDomain:v8 isHistoricalIdentifier:0];
      [v6 storeAndBroadcastChatChanges];
      v14 = +[IMDMessageStore sharedInstance];
      v15 = [v14 unreadCountController];
      v16 = [v6 guid];
      [v15 chat:v16 groupIDUpdated:v7];
    }

    if (v7)
    {
      if (v9)
      {
        v17 = [v6 chatIdentifier];

        if (v17)
        {
          v18 = [MEMORY[0x277CCAB98] defaultCenter];
          v19 = *MEMORY[0x277D1AD18];
          v20 = *MEMORY[0x277D1AD28];
          v30 = *MEMORY[0x277D1AD20];
          v31 = v20;
          v33[0] = v9;
          v33[1] = v7;
          v21 = *MEMORY[0x277D1AD30];
          v22 = MEMORY[0x277CBEC10];
          if (v10)
          {
            v23 = v10;
          }

          else
          {
            v23 = MEMORY[0x277CBEC10];
          }

          v33[2] = v23;
          v24 = [v6 domainIdentifiers];
          v25 = v24;
          if (v24)
          {
            v26 = v24;
          }

          else
          {
            v26 = v22;
          }

          v33[3] = v26;
          v32 = *MEMORY[0x277D1AD10];
          v27 = [v6 chatIdentifier];
          v33[4] = v27;
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v30 count:5];
          [v18 __mainThreadPostNotificationName:v19 object:0 userInfo:v28];
        }
      }
    }

    [(NSRecursiveLock *)self->_chatsLock lock];
    [(IMDChatRegistry *)self __addChatToGroupIDChatIndex:v6];
    [(NSRecursiveLock *)self->_chatsLock unlock];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)updateGroupIDForChat:(id)a3 newGroupID:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    [(NSRecursiveLock *)self->_chatsLock lock];
    [(IMDChatRegistry *)self __removeChatFromGroupIDChatIndex:v6];
    [(NSRecursiveLock *)self->_chatsLock unlock];
    v8 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v6 groupID];
      *buf = 138412802;
      v25 = v9;
      v26 = 2112;
      v27 = v7;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Updating groupID from (%@) to (%@) for chat %@", buf, 0x20u);
    }

    v10 = [v6 groupID];
    v11 = [v6 groupID];
    v12 = IMSharedHelperAreObjectsLogicallySame();

    if ((v12 & 1) == 0)
    {
      [v6 setGroupID:v7];
      [v6 storeAndBroadcastChatChanges];
      v13 = +[IMDMessageStore sharedInstance];
      v14 = [v13 unreadCountController];
      v15 = [v6 guid];
      [v14 chat:v15 groupIDUpdated:v7];
    }

    if (v7)
    {
      if (v10)
      {
        v16 = [v6 chatIdentifier];

        if (v16)
        {
          v17 = [MEMORY[0x277CCAB98] defaultCenter];
          v18 = *MEMORY[0x277D1AD18];
          v19 = [v6 chatIdentifier];
          v23[2] = v19;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:3];
          [v17 __mainThreadPostNotificationName:v18 object:0 userInfo:v20];
        }
      }
    }

    [(NSRecursiveLock *)self->_chatsLock lock];
    [(IMDChatRegistry *)self __addChatToGroupIDChatIndex:v6];
    [(NSRecursiveLock *)self->_chatsLock unlock];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)checkBlackholedChatsExistAfterUpdatingChatWithAdd:(BOOL)a3
{
  blackholedChatsExistCache = self->_blackholedChatsExistCache;
  if (blackholedChatsExistCache != a3)
  {
    v5 = [(IMDChatRegistry *)self blackholedChatsExist];
    self->_blackholedChatsExistCache = v5;
    if (blackholedChatsExistCache != v5)
    {
      v6 = +[IMDBroadcastController sharedProvider];
      v7 = [v6 broadcasterForBlackholeChatListeners];
      [v7 blackholedChatsExist:self->_blackholedChatsExistCache];

      v9 = +[IMDBroadcastController sharedProvider];
      v8 = [v9 broadcasterForChatListeners];
      [v8 blackholedChatsExist:self->_blackholedChatsExistCache];
    }
  }
}

- (BOOL)filteredChatsExistForServices:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA920];
  v5 = MEMORY[0x277CCAC30];
  v6 = a3;
  v7 = [v5 __im_chatPredicateForFilterAction:2];
  v14[0] = v7;
  v8 = [MEMORY[0x277CCAC30] __im_chatPredicateForServiceNames:v6];

  v14[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v10 = [v4 andPredicateWithSubpredicates:v9];

  v11 = [(IMDChatRegistry *)self existingChatsFilteredUsingPredicate:v10 sortedUsingLastMessageDateAscending:0 limit:1];
  LOBYTE(self) = [v11 count] != 0;

  v12 = *MEMORY[0x277D85DE8];
  return self;
}

- (unint64_t)markAsSpamForIDs:(id)a3 style:(unsigned __int8)a4 onServices:(id)a5 chatID:(id)a6 conversationID:(id)a7 queryID:(id)a8 autoReport:(BOOL)a9 isJunkReportedToCarrier:(BOOL)a10 reportReason:(unint64_t)a11
{
  v15 = a4;
  v63 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v53 = a7;
  v52 = a8;
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = @"NO";
      *buf = 138413058;
      if (a9)
      {
        v21 = @"YES";
      }

      v56 = v21;
      v57 = 2112;
      v58 = v17;
      v59 = 2112;
      v60 = v18;
      v61 = 2112;
      v62 = v19;
      _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Handling request (autoReport %@) to mark IDs (%@) for services (%@) as spam for chatGUID (%@)", buf, 0x2Au);
    }
  }

  if ([v17 count] && objc_msgSend(v18, "count"))
  {
    if (v15 == 45 && a9)
    {
      v22 = +[IMDSpamController sharedInstance];
      v23 = [v17 lastObject];
      [v22 detectSpam:v23 chatGUID:v19];
    }

    v51 = [MEMORY[0x277D18A10] sharedInstanceForBagType:0];
    v24 = [v51 objectForKey:@"max-spam-messages-per-report"];
    v50 = v24;
    if (v24)
    {
      v48 = [v24 integerValue];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Server Bag has no value for max-spam-messages-per-report, using the default 2", buf, 2u);
        }
      }

      v48 = 2;
    }

    if ([(IMDChatRegistry *)self _shouldHandleInternalPhishingAttempts]|| !a10)
    {
      v27 = 30;
    }

    else
    {
      v27 = 1;
    }

    v28 = +[IMDMessageStore sharedInstance];
    v29 = v28;
    if (v15 == 45)
    {
      [v28 itemsWithHandles:v17 onServices:v18 messageGUID:0 limit:v27];
    }

    else
    {
      [v28 itemsWithRoomNames:v17 onServices:v18 messageGUID:0 limit:v27];
    }
    v49 = ;

    v30 = [(IMDChatRegistry *)self existingChatWithGUID:v19];
    v31 = v30;
    if (!a9)
    {
      [v30 setSpamDetectionSource:6];
      v32 = [v31 lastMessage];
      v33 = [v32 guid];
      [v31 setSpamDetectedMessage:v33];

      v34 = +[IMDSpamFilteringHelper sharedHelper];
      v35 = [v31 serviceName];
      [v34 recordJunkMetricsForSpamDetectionSource:6 service:v35];
    }

    v54 = 0;
    LOBYTE(v47) = a10;
    [(IMDChatRegistry *)self _reportMessageDictionaryForMessages:v49 isAutoReport:a9 withChat:v31 conversationID:v53 maxMessagesToReport:v48 totalMessageCount:&v54 isJunkReportedToCarrier:v47 reportReason:a11];
    if (v15 == 43 && !a9)
    {
      [v31 setWasReportedAsJunk:1];
      v36 = [v31 groupID];
      if ([v36 length])
      {
        v37 = [MEMORY[0x277D1A9E8] sharedInstance];
        [v37 blocklistGroupId:v36];
      }

      else
      {
        v37 = IMLogHandleForCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D66D4(v31, v37, v38, v39, v40, v41, v42, v43);
        }
      }
    }

    if (IMOSLoggingEnabled())
    {
      v44 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v56 = v54;
        _os_log_impl(&dword_22B4CC000, v44, OS_LOG_TYPE_INFO, "Marked %lu messages as spam", buf, 0xCu);
      }
    }

    v25 = v54;
  }

  else
  {
    v25 = 0;
  }

  v45 = *MEMORY[0x277D85DE8];
  return v25;
}

- (id)_spamMessageCreator
{
  v2 = objc_alloc_init(IMDSpamMessageCreator);

  return v2;
}

- (void)_finalizeIncomingChat:(id)a3
{
  v4 = a3;
  [(IMDChatRegistry *)self _populateLastMessageForChat:v4];
  [v4 _repairChatIfNeeded];
}

- (void)_populateLastMessageForChat:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (![v3 lastMessageTimeStampOnLoad] || (objc_msgSend(v3, "lastMessage"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v5 = [v3 lastMessage];

    if (!v5)
    {
      v6 = +[IMDMessageStore sharedInstance];
      v7 = [v6 lastMessageForChatWithRowID:{objc_msgSend(v3, "rowID")}];

      [v3 setLastMessage:v7];
      v8 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v3 guid];
        v10 = [v7 guid];
        *buf = 138412546;
        v23 = v9;
        v24 = 2112;
        v25 = v10;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Chat %@ did not have final message, loaded %@", buf, 0x16u);
      }
    }

    v11 = [v3 lastMessage];

    if (v11)
    {
      v12 = [v3 lastMessage];
      v13 = [v12 time];
      [v3 setLastMessageTimeStampOnLoad:{objc_msgSend(v13, "__im_nanosecondTimeInterval")}];
    }

    else
    {
      v14 = [MEMORY[0x277D18EB0] synchronousDatabase];
      v15 = [v3 guid];
      v16 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D19F88] ascending:0];
      v21 = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = sub_22B6071AC;
      v19[3] = &unk_2787042B8;
      v20 = v3;
      [v14 fetchMessageRecordsForChatRecordWithGUID:v15 filteredUsingPredicate:0 sortedUsingDescriptors:v17 limit:1 completionHandler:v19];

      v12 = v20;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_addChatsFromCacheMisses:(id)a3 preferExistingChats:(BOOL)a4
{
  v4 = a4;
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    [(NSRecursiveLock *)self->_chatsLock lock];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_22B607528;
    v22[3] = &unk_2787063A0;
    v22[4] = self;
    v8 = [v7 __imArrayByApplyingBlock:v22];
    [(NSRecursiveLock *)self->_chatsLock unlock];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [v6 countByEnumeratingWithState:&v18 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = IMChatRegistryLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v13 guid];
            *buf = 138412290;
            v24 = v15;
            _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Adding cache missed chat with GUID %@, not preferring existing chats", buf, 0xCu);
          }

          [(IMDChatRegistry *)self addChat:v13 firstLoad:0 store:0];
        }

        v10 = [v7 countByEnumeratingWithState:&v18 objects:v25 count:16];
      }

      while (v10);
    }

    v8 = v7;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)addChat:(id)a3 firstLoad:(BOOL)a4 store:(BOOL)a5
{
  v5 = a5;
  v50 = *MEMORY[0x277D85DE8];
  v33 = a3;
  if (v33)
  {
    v35 = a4;
    if (!a4 && IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v44 = v33;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Registering chat: %@", buf, 0xCu);
      }
    }

    [(IMDChatRegistry *)self _finalizeIncomingChat:v33];
    [(NSRecursiveLock *)self->_chatsLock lock];
    chats = self->_chats;
    v10 = [v33 guid];
    [(NSMutableDictionary *)chats setObject:v33 forKey:v10];

    if ([v33 style] == 43)
    {
      v11 = [v33 groupID];
      v12 = [v11 length] == 0;

      if (!v12)
      {
        [(IMDChatRegistry *)self __addChatToGroupIDChatIndex:v33];
      }
    }

    [(NSRecursiveLock *)self->_chatsLock unlock];
    if (!v35)
    {
      if ([v33 isBlackholed])
      {
        [(IMDChatRegistry *)self checkBlackholedChatsExistAfterUpdatingChatWithAdd:1];
      }

      if ((IMIsRunningInUnitTesting() & 1) == 0)
      {
        v13 = +[IMDChatVocabularyUpdater sharedInstance];
        [v13 updateVocabularyForAddedChat:v33 completionHandler:0];
      }
    }

    if (v5)
    {
      v14 = +[IMDChatStore sharedInstance];
      [v14 storeChat:v33];

      v15 = +[IMDMessageStore sharedInstance];
      v16 = [v33 guid];
      [v15 updateStampForGUID:v16];
    }

    v17 = [v33 participants];
    v32 = [v17 __imArrayByApplyingBlock:&unk_283F1A528];

    if ([(IMDChatRegistry *)self _contactsBasedMergingEnabled]&& !v35)
    {
      [(IMDChatRegistry *)self _updateCachedCNIDMapForHandles:v32];
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = [v33 participants];
    v18 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
    if (v18)
    {
      v19 = *v38;
      v34 = *MEMORY[0x277D18E68];
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v37 + 1) + 8 * i);
          v22 = [v21 ID];
          if (v22 && [(IMDChatRegistry *)self _contactsBasedMergingEnabled])
          {

            if (v35)
            {
              goto LABEL_35;
            }

            v23 = [(IMDChatRegistry *)self cachedAliasToCNIDMap];
            v24 = [v21 ID];
            v22 = [v23 objectForKeyedSubscript:v24];

            if (([v22 isEqualToString:v34] & 1) == 0)
            {
              [v21 setCNContactID:v22];
            }

            if (IMOSLoggingEnabled())
            {
              v25 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
              {
                v26 = [v21 ID];
                v27 = [v21 CNContactID];
                v28 = [v33 guid];
                *buf = 138412802;
                v44 = v26;
                v45 = 2112;
                v46 = v27;
                v47 = 2112;
                v48 = v28;
                _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Adding handle %@ handleCNID  %@ to chat %@", buf, 0x20u);
              }
            }
          }

LABEL_35:
          [(IMDChatRegistry *)self addIMDHandleToRegistry:v21];
        }

        v18 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
      }

      while (v18);
    }

    v29 = [MEMORY[0x277CCAB98] defaultCenter];
    v41 = @"__kIMDChatRegistryChatKey";
    v42 = v33;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    [v29 postNotificationName:@"__kIMDChatRegistryAddedChatNotification" object:self userInfo:v30];

    if (!v35)
    {
      [(IMDChatRegistry *)self invalidatePersonCentricGroupedChatsCache];
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_evictCachedChat:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 guid];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v6;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Evicting chat: %@", &v11, 0xCu);
      }
    }

    [(NSRecursiveLock *)self->_chatsLock lock];
    [(NSMutableDictionary *)self->_chats setObject:0 forKeyedSubscript:v6];
    if ([v5 style] == 43)
    {
      v8 = [v5 groupID];
      v9 = [v8 length] == 0;

      if (!v9)
      {
        [(IMDChatRegistry *)self __removeChatFromGroupIDChatIndex:v5];
      }
    }

    [(NSRecursiveLock *)self->_chatsLock unlock];
    [(IMDChatRegistry *)self invalidatePersonCentricGroupedChatsCache];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeChat:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v45 = self;
    [(IMDChatRegistry *)self invalidatePersonCentricGroupedChatsCache];
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v53 = v4;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Unregistering chat: %@", buf, 0xCu);
      }
    }

    v43 = [v4 guid];
    [(IMDChatRegistry *)v45 _evictCachedChat:v4];
    if ([v4 isBlackholed])
    {
      [(IMDChatRegistry *)v45 checkBlackholedChatsExistAfterUpdatingChatWithAdd:0];
    }

    if (!v45->_isLoading && (IMIsRunningInUnitTesting() & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v53 = v4;
          _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Deleting chat: %@", buf, 0xCu);
        }
      }

      v7 = +[IMDChatStore sharedInstance];
      [v7 deleteChat:v4];

      v8 = +[IMDMessageStore sharedInstance];
      v9 = [v4 guid];
      [v8 updateStampForGUID:v9];

      v10 = [MEMORY[0x277D1AA10] sharedInstance];
      v51 = v43;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
      [v10 deleteInteractionsWithChatGUIDs:v11];

      v12 = +[IMDChatVocabularyUpdater sharedInstance];
      [v12 updateVocabularyForDeletedChat:v4 completionHandler:0];

      v13 = [v4 recordName];
      v14 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      LOBYTE(v11) = [v14 isOneChatEnabled];

      if ((v11 & 1) == 0)
      {
        if ([v13 length])
        {
          v15 = +[IMDCKUtilities sharedInstance];
          v16 = [v15 cloudKitSyncingEnabled];

          if (v16)
          {
            if (IMOSLoggingEnabled())
            {
              v17 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "CloudKit syncing is on. Writing deleted chat to deleted sync table", buf, 2u);
              }
            }

            v18 = [v4 guid];
            v19 = [v4 recordName];
            v20 = [v4 lastMessage];
            v21 = [v20 time];
            [v21 __im_nanosecondTimeInterval];
            IMDChatInsertIntoDeletedChatsTable();
          }
        }
      }
    }

    v44 = [v4 account];
    v22 = [v44 session];
    v23 = [v4 guid];
    v24 = [v4 chatIdentifier];
    v25 = [v4 style];
    v26 = [v4 groupID];
    v27 = [v4 originalGroupID];
    v28 = [v4 properties];
    v29 = [v4 lastAddressedLocalHandle];
    v30 = [v4 lastAddressedSIMID];
    [v22 didDeleteChatGUID:v23 chatIdentifier:v24 style:v25 groupID:v26 originalGroupID:v27 properties:v28 lastAddressedLocalHandle:v29 lastAddressedSIMID:v30];

    v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v32 = [v4 participants];
    v33 = [v32 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v33)
    {
      v34 = *v47;
      do
      {
        v35 = 0;
        do
        {
          if (*v47 != v34)
          {
            objc_enumerationMutation(v32);
          }

          v36 = *(*(&v46 + 1) + 8 * v35);
          v37 = +[IMDChatRegistry sharedInstance];
          v38 = [v37 removeIMDHandleFromRegistry:v36];

          if (v38)
          {
            v39 = [v36 ID];
            [v31 addObject:v39];
          }

          ++v35;
        }

        while (v33 != v35);
        v33 = [v32 countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v33);
    }

    v40 = +[IMDNicknameController sharedInstance];
    [v40 cleanUpNicknameForIDs:v31];

    v41 = [(IMDChatRegistry *)v45 personCentricGroupedChatsCache];
    [v41 removeAllObjects];
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)_addItem:(id)a3 toChat:(id)a4 reason:(int64_t)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      v10 = +[IMDMessageStore sharedInstance];
      v11 = [v9 serviceName];
      v12 = [v10 canStoreItem:v7 onService:v11];

      if (v12)
      {
        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = [v7 guid];
            v15 = [v9 guid];
            v20 = 136315650;
            v21 = "[IMDChatRegistry _addItem:toChat:reason:]";
            v22 = 2112;
            v23 = v14;
            v24 = 2112;
            v25 = v15;
            _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "%s: item: %@ chat: %@\n", &v20, 0x20u);
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v7 skipIndexing];
        }

        else
        {
          v16 = 0;
        }

        v17 = +[IMDChatStore sharedInstance];
        v18 = [v7 guid];
        [v17 addMessageWithGUID:v18 toChat:v9 reason:a5 skipIndexing:v16];
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)removeItem:(id)a3 fromChat:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (v13)
  {
    if (v6)
    {
      v7 = +[IMDMessageStore sharedInstance];
      v8 = [v6 serviceName];
      v9 = [v7 canStoreItem:v13 onService:v8];

      if (v9)
      {
        v10 = +[IMDChatStore sharedInstance];
        v11 = [v13 guid];
        [v10 removeMessageWithGUID:v11 fromChat:v6];

        v12 = +[IMDChatRegistry sharedInstance];
        [v12 updateLastMessageForChat:v6 hintMessage:0];

        [(IMDChatRegistry *)self updateStateForChat:v6 hintMessage:0];
      }
    }
  }
}

- (void)addMessage:(id)a3 toChat:(id)a4 reason:(int64_t)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v7 guid];
      v11 = [v8 guid];
      v24 = 136315650;
      v25 = "[IMDChatRegistry addMessage:toChat:reason:]";
      v26 = 2112;
      v27 = v10;
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "%s: message: %@ chat: %@\n", &v24, 0x20u);
    }
  }

  if (!v7 || !v8)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_24;
    }

    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v24 = 138412546;
      v25 = v7;
      v26 = 2112;
      v27 = v8;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "******* Not storing message %@ to chat %@", &v24, 0x16u);
    }

    goto LABEL_23;
  }

  v12 = +[IMDMessageStore sharedInstance];
  v13 = [v8 serviceName];
  v14 = [v12 canStoreMessage:v7 onService:v13];

  v15 = IMOSLoggingEnabled();
  if ((v14 & 1) == 0)
  {
    if (!v15)
    {
      goto LABEL_24;
    }

    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v24 = 138412546;
      v25 = v7;
      v26 = 2112;
      v27 = v8;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "******* IMDMessageStore cannot store message %@ to chat %@", &v24, 0x16u);
    }

LABEL_23:

    goto LABEL_24;
  }

  if (v15)
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v7 guid];
      v18 = [v8 guid];
      v24 = 136315650;
      v25 = "[IMDChatRegistry addMessage:toChat:reason:]";
      v26 = 2112;
      v27 = v17;
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "%s: message: %@ chat: %@\n", &v24, 0x20u);
    }
  }

  if (([v7 isFromMe] & 1) == 0 && objc_msgSend(v8, "isFiltered"))
  {
    v19 = [MEMORY[0x277D1AAA8] sharedInstance];
    [v19 trackEvent:*MEMORY[0x277D1A208]];
  }

  v20 = +[IMDChatStore sharedInstance];
  v21 = [v7 guid];
  [v20 addMessageWithGUID:v21 toChat:v8 reason:a5 skipIndexing:{objc_msgSend(v7, "skipIndexing")}];

LABEL_24:
  v23 = *MEMORY[0x277D85DE8];
}

- (void)removeMessage:(id)a3 fromChat:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (v13)
  {
    if (v6)
    {
      v7 = +[IMDMessageStore sharedInstance];
      v8 = [v6 serviceName];
      v9 = [v7 canStoreMessage:v13 onService:v8];

      if (v9)
      {
        v10 = +[IMDChatStore sharedInstance];
        v11 = [v13 guid];
        [v10 removeMessageWithGUID:v11 fromChat:v6];

        v12 = +[IMDChatRegistry sharedInstance];
        [v12 updateLastMessageForChat:v6 hintMessage:0];

        [(IMDChatRegistry *)self updateStateForChat:v6 hintMessage:0];
      }
    }
  }
}

- (id)stringForChatStyle:(unsigned __int8)a3
{
  v3 = @"-";
  if (a3 == 43)
  {
    v3 = @"+";
  }

  if (a3 == 35)
  {
    return @"#";
  }

  else
  {
    return v3;
  }
}

- (void)_fixSiblingChatsAndStoreIfNeeded:(id)a3 iMessageChat:(id)a4 chatsToRegenerate:(id)a5
{
  v76 = *MEMORY[0x277D85DE8];
  v49 = a3;
  v7 = a4;
  v54 = a5;
  v60 = v7;
  if (v7)
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = v49;
    v56 = [obj countByEnumeratingWithState:&v61 objects:v75 count:16];
    if (!v56)
    {
      goto LABEL_50;
    }

    v55 = *v62;
    v51 = *MEMORY[0x277D19780];
    while (1)
    {
      for (i = 0; i != v56; ++i)
      {
        if (*v62 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v61 + 1) + 8 * i);
        v57 = [v9 displayName];
        v59 = [v9 groupID];
        v10 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
        v11 = [v10 isMissingMessagesEnabled];

        if (v11)
        {
          v12 = [v9 serviceName];
          v13 = IMChatLookupDomainForServiceName();

          if (v13)
          {
            v14 = [v9 latestIdentifierForDomain:v13];
            v15 = v14;
            if (v14)
            {
              v16 = v14;

              v59 = v16;
            }
          }
        }

        v58 = [v60 displayName];
        v17 = [v60 groupID];
        v18 = [v60 participants];
        v19 = [v9 participants];
        v20 = [v9 serviceSession];
        v21 = [v20 chatCanMergeWithSuperChat:v9];

        if (v21 && (!IMSharedHelperAreObjectsLogicallySame() || (IMSharedHelperAreObjectsLogicallySame() & 1) == 0))
        {
          v22 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
          v23 = [v22 isMissingMessagesEnabled];

          if (v23)
          {
            [v9 assignIdentifier:v17 forDomain:v51 isHistoricalIdentifier:0];
            v24 = [v9 serviceName];
            v25 = IMChatLookupDomainForServiceName();
            v26 = [v9 service];
            [v9 assignIdentifier:v17 forDomain:v25 isHistoricalIdentifier:{objc_msgSend(v26, "groupIDIsHistoricalIdentifier")}];
          }

          else
          {
            [v9 setGroupID:v17];
          }

          [v9 setDisplayName:v58];
          if (IMOSLoggingEnabled())
          {
            v27 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v28 = [v9 guid];
              v29 = [v9 displayName];
              v30 = [v9 groupID];
              *buf = 138413314;
              v66 = v28;
              v67 = 2112;
              v68 = v57;
              v69 = 2112;
              v70 = v59;
              v71 = 2112;
              v72 = v29;
              v73 = 2112;
              v74 = v30;
              _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Storing sibling chat %@ old display name %@, old group ID %@ new display name %@, new group ID %@", buf, 0x34u);
            }
          }

          v31 = [(IMDChatRegistry *)self chatStore];
          [v31 storeChat:v9];
        }

        if (![v18 count] && objc_msgSend(v19, "count"))
        {
          if (IMOSLoggingEnabled())
          {
            v32 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v66 = v60;
              v67 = 2112;
              v68 = v19;
              _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Found iMessage chat with zero participants %@. Updating with sibling participants %@", buf, 0x16u);
            }
          }

          [v60 _resetParticipants:v19];
          v33 = v19;

          [v54 addObject:v60];
          v18 = v33;
        }

        v34 = sub_22B609310(v18);
        v35 = sub_22B609310(v19);
        if (([v34 isEqualToSet:v35] & 1) == 0)
        {
          v36 = [v9 serviceSession];
          v37 = [v36 chatCanMergeWithSuperChat:v9];

          if (v37)
          {
            if (IMOSLoggingEnabled())
            {
              v38 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v66 = v9;
                v67 = 2112;
                v68 = v60;
                _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Found sibling chat with different participants than its iMessage sibling. Chat: %@. Updating participants using %@", buf, 0x16u);
              }
            }

            [v9 _resetParticipants:v18];
          }

          else
          {
            v39 = [v9 groupID];
            v40 = [v60 groupID];
            v41 = [v39 isEqualToString:v40];

            if (v41)
            {
              goto LABEL_48;
            }

            if (IMOSLoggingEnabled())
            {
              v42 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v42, OS_LOG_TYPE_INFO, "Found sibling chat with different participants than its iMessage sibling, but it is backed by a group server. We must fork 🍴", buf, 2u);
              }
            }

            v43 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
            v44 = [v43 isMissingMessagesEnabled];

            v45 = [MEMORY[0x277CCACA8] stringGUID];
            if (v44)
            {
              [v9 assignIdentifier:v45 forDomain:v51 isHistoricalIdentifier:0];
              v50 = [v9 serviceName];
              v46 = IMChatLookupDomainForServiceName();
              v47 = [v9 service];
              [v9 assignIdentifier:v45 forDomain:v46 isHistoricalIdentifier:{objc_msgSend(v47, "groupIDIsHistoricalIdentifier")}];
            }

            else
            {
              [v9 setGroupID:v45];
            }
          }

          [v54 addObject:v9];
        }

LABEL_48:
      }

      v56 = [obj countByEnumeratingWithState:&v61 objects:v75 count:16];
      if (!v56)
      {
LABEL_50:

        break;
      }
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (void)_fixUpChatParticipantsIfNeeded:(id)a3 usingChatGUIDToChatMap:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Attempting to fix up chat participants if needed", &buf, 2u);
    }
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [(IMDChatRegistry *)self _chatGUIDToChatMapForChats:v20];
  }

  v9 = v8;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v20;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v11)
  {
    v12 = *v23;
    do
    {
      v13 = 0;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v22 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        v21 = 0;
        v16 = [(IMDChatRegistry *)self _siblingChatsForChat:v14 usingChatGUIDToChatMap:v9 iMessageChat:&v21];
        v17 = v21;
        v18 = [v16 count];
        if (self && v18)
        {
          [(IMDChatRegistry *)self _fixSiblingChatsAndStoreIfNeeded:v16 iMessageChat:v17 chatsToRegenerate:0];
        }

        objc_autoreleasePoolPop(v15);
        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v11);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_chatGUIDToChatMapForChats:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 guid];
        [v4 setObject:v10 forKey:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_siblingChatsForChat:(id)a3 usingChatGUIDToChatMap:(id)a4 iMessageChat:(id *)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v27 = a4;
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [v7 serviceName];
  v9 = [v8 isEqualToString:*MEMORY[0x277D1A620]];
  v25 = a5;
  if (a5 && v9)
  {
    v10 = v7;
    *a5 = v7;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = +[IMDChatRegistry supportedServiceNames];
  v11 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        if (([v15 isEqualToString:v8] & 1) == 0)
        {
          v16 = -[IMDChatRegistry stringForChatStyle:](self, "stringForChatStyle:", [v7 style]);
          v17 = [v7 chatIdentifier];
          v18 = IMSharedHelperNSNewStringByAppendingStrings();

          v19 = [v27 objectForKeyedSubscript:v18];
          if (v19)
          {
            [v24 addObject:v19];
            v20 = [v15 isEqualToString:*MEMORY[0x277D1A620]];
            if (v25)
            {
              if (v20)
              {
                v21 = v19;
                *v25 = v19;
              }
            }
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v12);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)_chatInfoForChats:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v18;
    *&v7 = 138412290;
    v16 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 copyDictionaryRepresentation:{1, v16, v17}];
        if (v12)
        {
          [v4 addObject:v12];
        }

        else
        {
          v13 = IMLogHandleForCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = v16;
            v22 = v11;
            _os_log_error_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_ERROR, "Could not get chatInfo from chat: %@", buf, 0xCu);
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_setInitialLoadForTesting:(BOOL)a3
{
  if ((IMIsRunningInUnitTesting() & 1) == 0)
  {
    v5 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "********* Calling setInitialLoadForTesting in non unit tests is not supported ***** ", v7, 2u);
    }

    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:@"com.apple.IMDaemonCore.unsupportedAction" reason:0 userInfo:0];
    objc_exception_throw(v6);
  }

  self->_doneLoadingAfterMerge = a3;
}

- (void)_forceReloadChats:(BOOL)a3
{
  v3 = a3;
  v27 = *MEMORY[0x277D85DE8];
  if ((self->_isLoading || self->_doneLoadingAfterMerge) && !a3)
  {
    if ([(IMDChatRegistry *)self cachedChatCount])
    {
      if (IMOSLoggingEnabled())
      {
        v5 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          isLoading = self->_isLoading;
          doneLoadingAfterMerge = self->_doneLoadingAfterMerge;
          v21 = 67109632;
          v22 = isLoading;
          v23 = 1024;
          v24 = doneLoadingAfterMerge;
          v25 = 1024;
          v26 = 0;
          _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "NOT forcing reload of chats _isLoading: %d _doneLoadingAfterMerge: %d forced: %d", &v21, 0x14u);
        }
      }

      goto LABEL_27;
    }

    v8 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Would have ignored reload of chats but has zero chats, forcing reload", &v21, 2u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = self->_isLoading;
      v11 = self->_doneLoadingAfterMerge;
      v21 = 67109632;
      v22 = v10;
      v23 = 1024;
      v24 = v11;
      v25 = 1024;
      v26 = v3;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Forcing reload of chats _isLoading: %d _doneLoadingAfterMerge: %d forced: %d", &v21, 0x14u);
    }
  }

  v12 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, "Dropping all chats in registry", &v21, 2u);
  }

  [(NSRecursiveLock *)self->_chatsLock lock];
  [(NSMutableDictionary *)self->_chats removeAllObjects];
  [(NSMutableDictionary *)self->_chatsByGroupID removeAllObjects];
  [(NSRecursiveLock *)self->_chatsLock unlock];
  [(NSRecursiveLock *)self->_handlesLock lock];
  [(NSMutableDictionary *)self->_idToHandlesMap removeAllObjects];
  [(NSRecursiveLock *)self->_handlesLock unlock];
  v13 = +[IMDFileTransferCenter sharedInstance];
  [v13 removeFinishedTransfers];

  [(IMDChatRegistry *)self invalidatePersonCentricGroupedChatsCache];
  [(IMDChatRegistry *)self loadChatsWithCompletionBlock:0];
  v14 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Updating database clients", &v21, 2u);
  }

  v15 = +[IMDMessageStore sharedInstance];
  [v15 updateStamp];

  v16 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_DEFAULT, "Posting the update chat registry to all listeners", &v21, 2u);
  }

  v17 = +[IMDLocalDaemon sharedDaemon];
  [v17 notifyClientsNewSetupInfoAvailableWithRequiredCapabilities:4];

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "=> Done notifying clients", &v21, 2u);
    }
  }

  v19 = +[IMDChatVocabularyUpdater sharedInstance];
  [v19 updateVocabularyForDeferredUpdateRequestIfNecessaryWithCompletionHandler:0];

LABEL_27:
  v20 = *MEMORY[0x277D85DE8];
}

- (void)refreshUIWhileSyncing
{
  v2 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_DEFAULT, "Posting the update chat registry to all listeners", v4, 2u);
  }

  v3 = +[IMDLocalDaemon sharedDaemon];
  [v3 notifyClientsNewSetupInfoAvailableWithRequiredCapabilities:4];
}

- (void)waitForLoadedChatsWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Received request to wait for chats to be loaded", buf, 2u);
    }
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B60A86C;
  v7[3] = &unk_278703808;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

- (BOOL)loadChatsWithCompletionBlock:(id)a3
{
  v112[1] = *MEMORY[0x277D85DE8];
  v93 = a3;
  v99 = self;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Loading Chats... ", buf, 2u);
    }

    self = v99;
  }

  self->_isLoading = 1;
  v5 = [MEMORY[0x277D1ACB8] sharedInstance];
  v92 = [v5 isUnderFirstDataProtectionLock];

  v98 = *MEMORY[0x277D194B8];
  v96 = IMGetDomainBoolForKeyWithDefaultValue();
  v6 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v96 ^ 1;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Should fix unnamed groupID: %{BOOL}d", buf, 8u);
  }

  v7 = +[IMDChatStore sharedInstance];
  v94 = [v7 loadRecentChats];

  v8 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v94 count];
    *buf = 67109120;
    *&buf[4] = v9;
    _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, " Found %d chats", buf, 8u);
  }

  v10 = [MEMORY[0x277D1AAA8] sharedInstance];
  v111 = *MEMORY[0x277D1A320];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v94, "count")}];
  v112[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:&v111 count:1];
  [v10 trackEvent:*MEMORY[0x277D1A0D8] withDictionary:v12];

  if (!v94 || ![v94 count])
  {
    v59 = 0;
    goto LABEL_78;
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = v94;
  v13 = [obj countByEnumeratingWithState:&v102 objects:v110 count:16];
  if (!v13)
  {
    LOBYTE(v101) = 0;
    goto LABEL_77;
  }

  v101 = 0;
  v100 = *v103;
  v95 = *MEMORY[0x277D19780];
  do
  {
    v14 = 0;
    do
    {
      if (*v103 != v100)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v102 + 1) + 8 * v14);
      v16 = objc_autoreleasePoolPush();
      if (v15)
      {
        v17 = +[IMDAccountController sharedInstance];
        v18 = [v15 accountID];
        v19 = [v17 accountForAccountID:v18];

        if (v19)
        {
          goto LABEL_32;
        }

        v20 = [v15 service];
        v21 = [v15 serviceName];
        if (!v20 && IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v21;
            _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "No service found, looking at name: %@", buf, 0xCu);
          }
        }

        if (v21)
        {
          v23 = +[IMDServiceController sharedController];
          v24 = [v23 serviceWithName:v21];

          v20 = v24;
        }

        if (!v20 && IMOSLoggingEnabled())
        {
          v25 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = v21;
            *&buf[12] = 2112;
            *&buf[14] = v15;
            _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "No service found for name: %@: removing this chat [%@]", buf, 0x16u);
          }
        }

        v26 = +[IMDAccountController sharedInstance];
        v27 = [v26 accountsForService:v20];
        v19 = [v27 lastObject];

        if (v19)
        {
          v28 = [v19 accountID];
          [v15 setAccountID:v28];

LABEL_32:
          [(IMDChatRegistry *)v99 addChat:v15 firstLoad:1 store:0];
          v29 = [v15 groupID];
          v30 = [v29 length] == 0;

          if (v30)
          {
            v33 = [v15 generateNewGroupID];
            if (!v33)
            {
              *buf = xmmword_278706408;
              *&buf[16] = *off_278706418;
              v109 = 2428;
              v34 = MEMORY[0x277CCACA8];
              v35 = IMFileLocationTrimFileName();
              v36 = v109;
              v37 = [MEMORY[0x277CCACA8] stringWithFormat:&stru_283F23018];
              v38 = [v34 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"generatedGroupID", "-[IMDChatRegistry loadChatsWithCompletionBlock:]", v35, v36, v37];

              v39 = IMGetAssertionFailureHandler();
              if (v39)
              {
                v39(v38);
              }

              else
              {
                v44 = [MEMORY[0x277D19298] warning];
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  *v106 = 138412290;
                  v107 = v38;
                  _os_log_error_impl(&dword_22B4CC000, v44, OS_LOG_TYPE_ERROR, "ASSERTION FAILED: %@", v106, 0xCu);
                }
              }
            }

            v45 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
            v46 = [v45 isMissingMessagesEnabled];

            if (v46)
            {
              [v15 assignIdentifier:v33 forDomain:v95 isHistoricalIdentifier:0];
            }

            else
            {
              [v15 setGroupID:v33];
            }
          }

          else
          {
            if ((v96 & 1) != 0 || ([v15 displayName], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "length") == 0, v31, !v32))
            {
              IMSetDomainBoolForKey();
              goto LABEL_54;
            }

            v41 = objc_alloc(MEMORY[0x277CCAD78]);
            v42 = [v15 groupID];
            v43 = [v41 initWithUUIDString:v42];

            if (v43)
            {

              IMSetDomainBoolForKey();
              goto LABEL_54;
            }

            v47 = IMChatRegistryLogHandle();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v15;
              _os_log_impl(&dword_22B4CC000, v47, OS_LOG_TYPE_DEFAULT, "Unnamed group with non UUID style groupID, lets fix this chat: %@", buf, 0xCu);
            }

            v33 = [v15 generateNewGroupID];
            if (!v33)
            {
              *buf = xmmword_278706430;
              *&buf[16] = *off_278706440;
              v109 = 2443;
              v48 = MEMORY[0x277CCACA8];
              v49 = IMFileLocationTrimFileName();
              v50 = v109;
              v51 = [MEMORY[0x277CCACA8] stringWithFormat:&stru_283F23018];
              v52 = [v48 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"generatedGroupID", "-[IMDChatRegistry loadChatsWithCompletionBlock:]", v49, v50, v51];

              v53 = IMGetAssertionFailureHandler();
              if (v53)
              {
                v53(v52);
              }

              else
              {
                v54 = [MEMORY[0x277D19298] warning];
                if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                {
                  *v106 = 138412290;
                  v107 = v52;
                  _os_log_error_impl(&dword_22B4CC000, v54, OS_LOG_TYPE_ERROR, "ASSERTION FAILED: %@", v106, 0xCu);
                }
              }
            }

            v55 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
            v56 = [v55 isMissingMessagesEnabled];

            if (v56)
            {
              [v15 assignIdentifier:v33 forDomain:v95 isHistoricalIdentifier:0];
            }

            else
            {
              [v15 setGroupID:v33];
            }

            v57 = IMChatRegistryLogHandle();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v33;
              _os_log_impl(&dword_22B4CC000, v57, OS_LOG_TYPE_DEFAULT, "    New groupID: %@", buf, 0xCu);
            }
          }

          IMSetDomainBoolForKey();
          [v15 storeAndBroadcastChatChanges];
LABEL_54:
          v101 |= [v15 isBlackholed];
          v20 = v19;
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v40 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = v15;
              _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_INFO, "No account: removing this chat [%@]", buf, 0xCu);
            }
          }
        }
      }

      objc_autoreleasePoolPop(v16);
      ++v14;
    }

    while (v13 != v14);
    v58 = [obj countByEnumeratingWithState:&v102 objects:v110 count:16];
    v13 = v58;
  }

  while (v58);
LABEL_77:

  v59 = v101;
LABEL_78:
  v99->_blackholedChatsExistCache = v59 & 1;
  v60 = +[IMDMessageStore sharedInstance];
  [v60 rebuildUnreadMessageCount];

  v61 = +[IMDMessageStore sharedInstance];
  [v61 rebuildLastFailedMessageDate];

  if (IMOSLoggingEnabled())
  {
    v62 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      v63 = [(IMDChatRegistry *)v99 cachedChats];
      v64 = [v63 count];
      *buf = 67109120;
      *&buf[4] = v64;
      _os_log_impl(&dword_22B4CC000, v62, OS_LOG_TYPE_INFO, "=> Done Loading %d Chats", buf, 8u);
    }
  }

  v99->_isLoading = 0;
  v99->_doneLoadingAfterMerge = v92 ^ 1;
  v65 = [MEMORY[0x277D1ACB8] sharedInstance];
  v66 = [v65 isUnderFirstDataProtectionLock];

  if (v66)
  {
    if (IMOSLoggingEnabled())
    {
      v67 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v67, OS_LOG_TYPE_INFO, "Not merging forks before first unlock", buf, 2u);
      }
    }
  }

  else
  {
    [(IMDChatRegistry *)v99 repairDuplicateChatsIfNeeded];
    v68 = [MEMORY[0x277D1A990] sharedInstance];
    v69 = [v68 getValueFromDomain:@"com.apple.MobileSMS" forKey:@"RebuildMutedChatListVersion"];
    v70 = [v69 intValue] < 1;

    if (v70)
    {
      v71 = IMMutedChatListRebuildLogHandle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v71, OS_LOG_TYPE_DEFAULT, "Rebuilding muted chat list.", buf, 2u);
      }

      v72 = objc_alloc_init(IMDMutedChatListRebuilder);
      [(IMDMutedChatListRebuilder *)v72 rebuildMutedChatList];
      v73 = [MEMORY[0x277D1A990] sharedInstance];
      v74 = [MEMORY[0x277CCABB0] numberWithInteger:1];
      [v73 setValue:v74 forDomain:@"com.apple.MobileSMS" forKey:@"RebuildMutedChatListVersion"];
    }
  }

  if (IMSharedHelperContactsBasedMergingEnabled())
  {
    [(IMDChatRegistry *)v99 _populateContactIDOnHandles];
  }

  if (IMSharedHelperPersistMergeIDMergedChats())
  {
    [(IMDChatRegistry *)v99 _persistMergeIDMergedChatsIfNeeded];
  }

  if ((v92 & 1) == 0)
  {
    [(IMDChatRegistry *)v99 _markGroupPhotosAsUnpurgeableIfNecessary];
  }

  v75 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v76 = [v75 isBGSTMessageProcessingEnabled];

  if (v76)
  {
    v77 = v99;
    if (!v99->_bgstMessageProcessingController)
    {
      v78 = objc_alloc_init(IMDBackgroundMessageProcessingController);
      bgstMessageProcessingController = v99->_bgstMessageProcessingController;
      v99->_bgstMessageProcessingController = v78;

      goto LABEL_102;
    }
  }

  else
  {
    v77 = v99;
    if (!v99->_messageProcessingController)
    {
      v80 = objc_alloc_init(IMDMessageProcessingController);
      messageProcessingController = v99->_messageProcessingController;
      v99->_messageProcessingController = v80;

      [(IMDMessageProcessingController *)v99->_messageProcessingController scheduleInitialProcessingCheck];
LABEL_102:
      v77 = v99;
    }
  }

  if (!v77->_messageHistorySyncController)
  {
    v82 = objc_alloc_init(IMDMessageHistorySyncTaskLiveFactory);
    v83 = [[IMDMessageHistorySyncController alloc] initWithMessageHistorySyncTaskFactory:v82];
    messageHistorySyncController = v99->_messageHistorySyncController;
    v99->_messageHistorySyncController = v83;

    if (!v99->_messageHistorySyncController)
    {
      v85 = objc_alloc_init(IMDMessageHistorySyncTaskLiveFactory);
      v86 = [[IMDMessageHistorySyncController alloc] initWithMessageHistorySyncTaskFactory:v85];
      v87 = v99->_messageHistorySyncController;
      v99->_messageHistorySyncController = v86;
    }
  }

  if (v93)
  {
    v93[2](v93, 1);
  }

  v88 = [MEMORY[0x277CCAB98] defaultCenter];
  [v88 postNotificationName:@"__kIMDChatsLoadedNotification" object:0];

  v89 = +[IMDCKExitManager sharedInstance];
  [v89 writeInitialSyncCompletedRecordIfNeeded];

  [(IMDChatRegistry *)v99 setUpInitialConversationManager];
  +[IMDChatVocabularyUpdater performInitialUpdateIfNeeded];

  v90 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_persistMergeIDMergedChatsIfNeeded
{
  v20 = *MEMORY[0x277D85DE8];
  if ((byte_281421380 & 1) == 0)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = [(IMDChatRegistry *)self _allHandles];
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v19 = [v4 count];
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "try to persist mergeID merged chats for [%lu] handles", buf, 0xCu);
      }
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [(IMDChatRegistry *)self allChats];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v13 + 1) + 8 * v9);
          v11 = objc_autoreleasePoolPush();
          [v10 _persistMergedIDMergedChatsIfNeeded:v4];
          objc_autoreleasePoolPop(v11);
          ++v9;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    byte_281421380 = 1;
    objc_autoreleasePoolPop(v3);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)addIMDHandleToRegistry:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSRecursiveLock *)self->_handlesLock lock];
  if (v4 && ([v4 ID], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "length"), v5, v6))
  {
    idToHandlesMap = self->_idToHandlesMap;
    v8 = [v4 ID];
    v9 = [(NSMutableDictionary *)idToHandlesMap objectForKey:v8];

    if (!v9)
    {
      v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
      v10 = self->_idToHandlesMap;
      v11 = [v4 ID];
      [(NSMutableDictionary *)v10 setObject:v9 forKey:v11];
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = *v19;
      while (2)
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v12);
          }

          if (*(*(&v18 + 1) + 8 * v15) == v4)
          {

            goto LABEL_18;
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    [v12 addObject:{v4, v18}];
LABEL_18:
    [(NSRecursiveLock *)self->_handlesLock unlock];
  }

  else
  {
    v16 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v4;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_DEFAULT, "Will not add malformed IMHandle:%@ to IMDHandleRegistry", buf, 0xCu);
    }

    v12 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)removeIMDHandleFromRegistry:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSRecursiveLock *)self->_handlesLock lock];
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = [v4 ID];
  v6 = [v5 length];

  if (!v6)
  {
    goto LABEL_13;
  }

  idToHandlesMap = self->_idToHandlesMap;
  v8 = [v4 ID];
  v9 = [(NSMutableDictionary *)idToHandlesMap objectForKey:v8];

  if (!v9)
  {
LABEL_10:
    LOBYTE(v6) = 0;
    goto LABEL_13;
  }

  v10 = [v9 indexOfObject:v4];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v10;
    v12 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v4;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, "Removing IMDHandle:%@ from IMDHandleRegistry", &v18, 0xCu);
    }

    [v9 removeObjectAtIndex:v11];
  }

  v13 = [v9 count];
  LOBYTE(v6) = v13 == 0;
  v14 = self->_idToHandlesMap;
  v15 = [v4 ID];
  if (v13)
  {
    [(NSMutableDictionary *)v14 setObject:v9 forKey:v15];
  }

  else
  {
    [(NSMutableDictionary *)v14 removeObjectForKey:v15];
  }

LABEL_13:
  [(NSRecursiveLock *)self->_handlesLock unlock];

  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)allHandlesForID:(id)a3
{
  v4 = a3;
  [(NSRecursiveLock *)self->_handlesLock lock];
  if ([v4 length])
  {
    v5 = [(NSMutableDictionary *)self->_idToHandlesMap objectForKey:v4];
    [(NSRecursiveLock *)self->_handlesLock unlock];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (void)_reloadChatsForDatabaseMergeOrDatabaseSwitchWithReset:(BOOL)a3
{
  v3 = a3;
  v5 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Received merge complete notification, re-syncing chats", buf, 2u);
  }

  if (v3)
  {
    v6 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Forcing reset of IMDP service", v8, 2u);
    }

    v7 = [MEMORY[0x277D18EB0] synchronousDatabase];
    [v7 notifyDatabaseMergeComplete];

    [MEMORY[0x277D18EE0] reset];
  }

  [(IMDChatRegistry *)self _forceReloadChats:1];
  [(IMDChatRegistry *)self _performPostUnlockHousekeeping];
}

- (void)_performPostUnlockHousekeeping
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = +[IMDMessageStore sharedInstance];
  [v2 performInitialHousekeeping];

  v3 = +[IMDReplayController sharedInstance];
  [v3 replayMessages];

  v4 = +[IMDCKBackupController sharedInstance];
  [v4 _ensureRestoredDatabaseToBackup];

  MessagesSequenceNumber = IMDMessageRecordGetMessagesSequenceNumber();
  v6 = IMOSLoggingEnabled();
  if (MessagesSequenceNumber == -1)
  {
    if (v6)
    {
      v8 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 134217984;
        v11 = -1;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Not Resetting LastBulletinboardPostedMessageRowID: %lld", &v10, 0xCu);
      }
    }
  }

  else
  {
    if (v6)
    {
      v7 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v10 = 134217984;
        v11 = MessagesSequenceNumber;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Resetting LastBulletinboardPostedMessageRowID: %lld", &v10, 0xCu);
      }
    }

    IMSetDomainIntForKey();
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)systemDidLeaveFirstDataProtectionLock
{
  v3 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEFAULT, "Device left first unlock, re-syncing chats", buf, 2u);
  }

  self->_firstUnlockTriggered = 1;
  v4 = [MEMORY[0x277D18EB0] synchronousDatabase];
  [v4 notifyFirstUnlockComplete];

  [MEMORY[0x277D18EE0] reset];
  [(IMDChatRegistry *)self _forceReloadChats:0];
  [(IMDChatRegistry *)self _makeAllAttachmentsClassC];
  v5 = +[IMDAccountController sharedInstance];
  v6 = [v5 anySessionForServiceName:*MEMORY[0x277D1A620]];

  if (v6 || (+[IMDAccountController sharedInstance](IMDAccountController, "sharedInstance"), v7 = objc_claimAutoreleasedReturnValue(), [v7 anySessionForServiceName:*MEMORY[0x277D1A610]], v6 = objc_claimAutoreleasedReturnValue(), v7, v6))
  {
    v8 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "calling update routing, expire and watch dog after first unlock", v17, 2u);
    }

    [v6 _updateRoutingTimerWithInterval:120.0];
    [v6 _updateExpireStateTimerWithInterval:120.0];
    [v6 _updateWatchdogTimerWithInterval:120.0];
  }

  v9 = +[IMDCKRecordSaltManager sharedInstance];
  [v9 fetchLatestRecordKeyFromCKAndCreateIfKeyDoesNotExistWithCompletion:&unk_283F1A568];

  v10 = +[IMDCKRampManager sharedInstance];
  [v10 fetchLatestRampStateFromCK:0];

  v11 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Performing one time account check after upgrade", v16, 2u);
  }

  v12 = +[IMDCKSyncController sharedInstance];
  [v12 performOneTimeAccountUpgradeCheckIfNeeded];

  v13 = +[IMDAccountController sharedInstance];
  v14 = [v13 activeAliases];

  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v14 forKey:*MEMORY[0x277D18E98]];
  IMDNotificationsRetractNotificationsFromFirstUnlockWithContext();
}

- (void)_makeAllAttachmentsClassC
{
  if ((IMGetDomainBoolForKey() & 1) == 0)
  {

    im_dispatch_after();
  }
}

- (BOOL)_chat:(id)a3 isDuplicateOfChat:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 style] == 43 && objc_msgSend(v6, "style") == 43)
  {
    v7 = [v5 groupID];
    v8 = [v6 groupID];
    if ([v7 isEqual:v8])
    {
      v9 = [v5 serviceName];
      v10 = [v6 serviceName];
      v11 = [v9 isEqual:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int64_t)_compareDuplicateChatsWithFirstChat:(id)a3 secondChat:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 groupID];
  v8 = [v6 groupID];
  v9 = [v7 compare:v8];

  if (!v9)
  {
    v10 = [v5 serviceName];
    v11 = [v6 serviceName];
    v9 = [v10 compare:v11];

    if (!v9)
    {
      v12 = [v5 groupParticipantVersion];
      v13 = [v6 groupParticipantVersion];
      if (v12 >= v13)
      {
        if (v12 <= v13)
        {
          v14 = [v5 displayName];
          v15 = [v6 displayName];
          if ([v14 length] || !objc_msgSend(v15, "length"))
          {
            if (![v14 length] || objc_msgSend(v15, "length"))
            {

              v9 = [v5 compareBySequenceNumberAndDateDescending:v6];
              goto LABEL_15;
            }

            v9 = -1;
          }

          else
          {
            v9 = 1;
          }

          goto LABEL_15;
        }

        v9 = -1;
      }

      else
      {
        v9 = 1;
      }
    }
  }

LABEL_15:

  return v9;
}

- (id)_findChatWinnerInDuplicateChatArray:(id)a3 fixDisplayName:(BOOL *)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 count])
  {
    v6 = [v5 objectAtIndexedSubscript:0];
  }

  else
  {
    v6 = 0;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if ([(IMDChatRegistry *)self _compareDuplicateChatsWithFirstChat:v12 secondChat:v6]== -1)
        {
          v13 = [v6 displayName];
          if ([v13 length])
          {
            v14 = [v12 displayName];
            v15 = [v14 length];

            if (!v15)
            {
              v16 = [v6 displayName];
              [v12 setDisplayName:v16];

              if (a4)
              {
                *a4 = 1;
              }
            }
          }

          else
          {
          }

          v17 = v12;

          v6 = v17;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_findLosingChatGUIDsInArrayOfChats:(id)a3 withWinner:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count") - 1}];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v9)
  {
    v10 = 0;
    v11 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        if (v13 == v6)
        {
          v10 = 1;
        }

        else
        {
          v14 = [v13 guid];
          [v7 addObject:v14];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v9);

    if (v10)
    {
      v15 = v7;
      goto LABEL_19;
    }
  }

  else
  {
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v6 description];
      v18 = [v8 description];
      *buf = 138412546;
      v26 = v17;
      v27 = 2112;
      v28 = v18;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "did not find winner %@ in list of duplicates %@", buf, 0x16u);
    }
  }

  v15 = 0;
LABEL_19:

  v19 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_createGroupChatsArray
{
  v18 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Finding group chats", buf, 2u);
    }
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(IMDChatRegistry *)self allChats];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 style] == 43)
        {
          [v4 addObject:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)_copyDuplicateChatsArrayWithLimit:(int64_t)a3
{
  v5 = +[IMDChatStore sharedInstance];
  v6 = [v5 copyDuplicateGroupChatsWithLimit:a3];

  v7 = [(IMDChatRegistry *)self _addChatsFromCacheMisses:v6 preferExistingChats:1];

  return v7;
}

- (id)_copyGroupedDuplicateChatsSortedFromWinningToLosingWithLimit:(int64_t)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = [(IMDChatRegistry *)self _copyDuplicateChatsArrayWithLimit:a3];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_22B60D878;
  v26[3] = &unk_278706460;
  v26[4] = self;
  v5 = [v4 sortedArrayUsingComparator:v26];

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v12 groupID];
        v14 = [v6 objectForKeyedSubscript:v13];

        if (!v14)
        {
          v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v16 = [v12 groupID];
          [v6 setObject:v15 forKeyedSubscript:v16];
        }

        v17 = [v12 groupID];
        v18 = [v6 objectForKeyedSubscript:v17];
        [v18 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  v19 = [v6 allValues];

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)_mergeDuplicateGroupsIfNeeded
{
  v68 = *MEMORY[0x277D85DE8];
  v44 = [(IMDChatRegistry *)self _copyGroupedDuplicateChatsSortedFromWinningToLosingWithLimit:500];
  v3 = [v44 count];
  v4 = IMOSLoggingEnabled();
  if (!v3)
  {
    if (v4)
    {
      v36 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "No duplicate chats found to merge", buf, 2u);
      }
    }

    v9 = 0;
    goto LABEL_71;
  }

  if (v4)
  {
    v5 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v44 count];
      v7 = [v44 description];
      *buf = 134218242;
      v62 = v6;
      v63 = 2112;
      v64 = v7;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Found %ld duplicate chats needing merging: %@", buf, 0x16u);
    }
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v44;
  v47 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
  if (!v47)
  {
    v9 = 0;
    goto LABEL_70;
  }

  v9 = 0;
  v46 = *v57;
  *&v8 = 134217984;
  v43 = v8;
  while (2)
  {
    v10 = 0;
    do
    {
      if (*v57 != v46)
      {
        v11 = v10;
        objc_enumerationMutation(obj);
        v10 = v11;
      }

      v48 = v10;
      v12 = *(*(&v56 + 1) + 8 * v10);
      v55 = 0;
      v13 = [(IMDChatRegistry *)self _findChatWinnerInDuplicateChatArray:v12 fixDisplayName:&v55, v43];
      if (!v13)
      {
        if (IMOSLoggingEnabled())
        {
          v37 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "winningChat unexpectedly nil", buf, 2u);
          }
        }

        goto LABEL_70;
      }

      v49 = [(IMDChatRegistry *)self _findLosingChatGUIDsInArrayOfChats:v12 withWinner:v13];
      v14 = IMOSLoggingEnabled();
      if (!v49)
      {
        if (v14)
        {
          v38 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "losingChats is unexpectedly nil", buf, 2u);
          }
        }

        goto LABEL_69;
      }

      if (v14)
      {
        v15 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = [v13 description];
          v17 = [v49 description];
          v18 = [v12 description];
          *buf = 138412802;
          v62 = v16;
          v63 = 2112;
          v64 = v17;
          v65 = 2112;
          v66 = v18;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "found winning chat %@, and losing chats %@, in list of chat duplicates: %@", buf, 0x20u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = [v49 description];
          v21 = [v13 guid];
          *buf = 138412546;
          v62 = v20;
          v63 = 2112;
          v64 = v21;
          _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "will merge losing chats %@ into winning chat id %@", buf, 0x16u);
        }
      }

      if ((IMIsRunningInUnitTesting() & 1) == 0)
      {
        if (v55 == 1)
        {
          v22 = [v13 displayName];
        }

        else
        {
          v22 = 0;
        }

        v23 = [v13 guid];
        v54 = 0;
        IMDChatRecordRepairDuplicateChats();
        v24 = v54;

        if (!v24)
        {

          goto LABEL_27;
        }

        if (IMOSLoggingEnabled())
        {
          v39 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            v40 = [v24 localizedDescription];
            *buf = 138412290;
            v62 = v40;
            _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "repairing duplicate chats failed: %@", buf, 0xCu);
          }
        }

LABEL_69:
        goto LABEL_70;
      }

LABEL_27:
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = [v49 description];
          v27 = [v13 guid];
          *buf = 138412546;
          v62 = v26;
          v63 = 2112;
          v64 = v27;
          _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "merged losing chats %@ into winning chat id %@", buf, 0x16u);
        }
      }

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v28 = v12;
      v29 = [v28 countByEnumeratingWithState:&v50 objects:v60 count:16];
      if (v29)
      {
        v30 = *v51;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v51 != v30)
            {
              objc_enumerationMutation(v28);
            }

            v32 = *(*(&v50 + 1) + 8 * i);
            if (([v32 isEqual:v13] & 1) == 0)
            {
              [(IMDChatRegistry *)self removeChat:v32];
              if (IMOSLoggingEnabled())
              {
                v33 = OSLogHandleForIMEventCategory();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v62 = v32;
                  _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Deleted unwanted chat %@", buf, 0xCu);
                }
              }
            }
          }

          v29 = [v28 countByEnumeratingWithState:&v50 objects:v60 count:16];
        }

        while (v29);
      }

      if (IMOSLoggingEnabled())
      {
        v34 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v35 = [v49 count];
          *buf = v43;
          v62 = v35;
          _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "finished merging %ld duplicate chats", buf, 0xCu);
        }
      }

      v10 = v48 + 1;
      v9 = 1;
    }

    while (v48 + 1 != v47);
    v47 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
    if (v47)
    {
      continue;
    }

    break;
  }

LABEL_70:

LABEL_71:
  v41 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

- (BOOL)repairDuplicateChatsIfNeeded
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  if (self->_isLoading)
  {
    *buf = xmmword_278706480;
    v33 = *off_278706490;
    v34 = 3017;
    v4 = MEMORY[0x277CCACA8];
    v5 = IMFileLocationTrimFileName();
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:&stru_283F23018];
    v7 = [v4 stringWithFormat:@"Unexepectedly true '%@' in %s at %s:%d. %@", @"_isLoading", "-[IMDChatRegistry repairDuplicateChatsIfNeeded]", v5, 3017, v6];

    v8 = IMGetAssertionFailureHandler();
    if (v8)
    {
      v8(v7);
    }

    else
    {
      v9 = [MEMORY[0x277D19298] warning];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D6740(v7, v9, v10, v11, v12, v13, v14, v15);
      }
    }
  }

  v16 = *MEMORY[0x277D194B8];
  v17 = IMGetCachedDomainValueForKey();
  v18 = v17;
  if (v17 && [v17 integerValue] > 3)
  {
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v16;
        _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Will NOT check for duplicate chats after checking pref key %@:merged-duplicate-chats", buf, 0xCu);
      }

      goto LABEL_35;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v16;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "will check for duplicate chats after checking pref key %@:merged-duplicate-chats", buf, 0xCu);
      }
    }

    IMSetDomainValueForKey();
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v16;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Set pref for duplicate check (%@:merged-duplicate-chats) to YES", buf, 0xCu);
      }
    }

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v22 = v21;
    if ([(IMDChatRegistry *)self _mergeDuplicateGroupsIfNeeded])
    {
      v23 = 0;
      do
      {
        if (IMOSLoggingEnabled())
        {
          v24 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Finished repairing a batch of duplicate chats", buf, 2u);
          }
        }

        v25 = [(IMDChatRegistry *)self _mergeDuplicateGroupsIfNeeded];
      }

      while (v23++ < 9 && v25);
    }

    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        *buf = 134217984;
        *&buf[4] = v29 - v22;
        _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Finished repairing duplicate chats in %f seconds", buf, 0xCu);
      }

LABEL_35:
    }
  }

  objc_autoreleasePoolPop(v3);
  v30 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_markGroupPhotosAsUnpurgeableIfNecessary
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D194B8];
  if ((IMGetDomainBoolForKeyWithDefaultValue() & 1) == 0)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(NSRecursiveLock *)self->_chatsLock lock];
    v5 = [(NSMutableDictionary *)self->_chats allValues];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      do
      {
        v9 = 0;
        do
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v26 + 1) + 8 * v9) groupPhotoGuid];
          if ([v10 length])
          {
            [v4 addObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v7);
    }

    [(NSRecursiveLock *)self->_chatsLock unlock];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v4;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      v15 = *MEMORY[0x277CBECE8];
      do
      {
        v16 = 0;
        do
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v22 + 1) + 8 * v16);
          v18 = IMDAttachmentRecordCopyAttachmentForGUID();
          if (v18)
          {
            v19 = IMDAttachmentRecordCopyFilename();
            if ([v19 length])
            {
              v20 = +[IMDAttachmentStore sharedInstance];
              [v20 markAttachmentUnpurgeable:v19];
            }
          }

          ++v16;
        }

        while (v13 != v16);
        v13 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v13);
    }

    IMSetDomainBoolForKey();
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_allHandles
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [(IMDChatRegistry *)self allChats];
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = [v9 participants];
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              if (v3)
              {
                v15 = *(*(&v18 + 1) + 8 * j);
                if (v15)
                {
                  CFArrayAppendValue(v3, v15);
                }
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)groupChatsBasedOnIdentity:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "NOT Using person centric grouped chats cache", buf, 2u);
    }
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [v10 personCentricID];
        v13 = [v5 objectForKey:v12];
        if (!v13)
        {
          v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v5 setObject:v13 forKey:v12];
        }

        [v13 addObject:v10];

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)groupChatsBasedOnIdentityUsingCacheIfApplicable:(id)a3
{
  v4 = a3;
  v5 = [(IMDChatRegistry *)self personCentricGroupedChatsCache];
  v6 = [v5 count];

  if (v6)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_7;
    }

    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Using person centric grouped chats cache", v10, 2u);
    }
  }

  else
  {
    v7 = [(IMDChatRegistry *)self groupChatsBasedOnIdentity:v4];
    [(IMDChatRegistry *)self setPersonCentricGroupedChatsCache:v7];
  }

LABEL_7:
  v8 = [(IMDChatRegistry *)self personCentricGroupedChatsCache];

  return v8;
}

- (id)truncatedSortedChatsGroupedByPersonCentricID:(id)a3 count:(int64_t)a4 pinnedChatIdentifiers:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v26 = a3;
  v27 = a5;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v31 = a4;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Truncating person centric grouped chats to %ld chats.", buf, 0xCu);
    }
  }

  v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v27];
  v9 = [v26 allValues];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_22B60EFC0;
  v28[3] = &unk_2787064B0;
  v10 = v8;
  v29 = v10;
  v11 = [v9 sortedArrayUsingComparator:v28];
  v12 = [v11 count];
  if (v12 >= a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = v12;
  }

  v14 = [v11 subarrayWithRange:{0, v13}];
  v15 = [v11 subarrayWithRange:{v13, objc_msgSend(v11, "count") - v13}];
  v16 = [v15 __imArrayByFilteringWithBlock:&unk_283F1A5A8];
  v17 = [v16 count];
  v18 = 200;
  if (v17 < 0xC8)
  {
    v18 = [v16 count];
  }

  v19 = [v16 subarrayWithRange:{0, v18}];
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [v16 count];
      v22 = [v15 count];
      *buf = 134218496;
      v31 = v21;
      v32 = 2048;
      v33 = a4;
      v34 = 2048;
      v35 = v22;
      _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Found %ld chats with unread messages that would have been cutoff by a count of %ld of out %ld total cutoff chat groups", buf, 0x20u);
    }
  }

  v23 = [v14 arrayByAddingObjectsFromArray:v19];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)sortPersonCentricChatGroups:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B60F2C8;
  v8[3] = &unk_2787030B8;
  v6 = v5;
  v9 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

- (void)_enumeratePersonMergedChatsWithMaximumNumberOfChats:(int64_t)a3 usingChats:(id)a4 useCachedChatGroups:(BOOL)a5 includingPinnedChatIdentifiers:(id)a6 usingBlock:(id)a7
{
  v35 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v29 = [(IMDChatRegistry *)self _chatGUIDToChatMapForChats:v12];
  [(IMDChatRegistry *)self _fixUpChatParticipantsIfNeeded:v12 usingChatGUIDToChatMap:?];
  v27 = v12;
  if (a5)
  {
    [(IMDChatRegistry *)self groupChatsBasedOnIdentityUsingCacheIfApplicable:v12];
  }

  else
  {
    [(IMDChatRegistry *)self groupChatsBasedOnIdentity:v12];
  }
  v25 = ;
  v15 = [(IMDChatRegistry *)self sortPersonCentricChatGroups:v25];
  v16 = self;
  v26 = v13;
  [(IMDChatRegistry *)self truncatedSortedChatsGroupedByPersonCentricID:v15 count:a3 pinnedChatIdentifiers:v13];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v33 = 0u;
  v17 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v30 + 1) + 8 * i);
        v22 = objc_autoreleasePoolPush();
        v23 = [(IMDChatRegistry *)v16 _mergedPinningIdentifiersForChats:v21 chatGUIDToChatMap:v29 groupedChatsByPersonCentricIdWithSortedChats:v15];
        v14[2](v14, v21, v23);

        objc_autoreleasePoolPop(v22);
      }

      v18 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v18);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)_mergedPinningIdentifiersForChats:(id)a3 chatGUIDToChatMap:(id)a4 groupedChatsByPersonCentricIdWithSortedChats:(id)a5
{
  v56 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v33 = a4;
  v40 = a5;
  if ([v7 count])
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v29 = v7;
    obj = v7;
    v34 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v34)
    {
      v31 = *v50;
      do
      {
        v9 = 0;
        do
        {
          if (*v50 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v38 = v9;
          v10 = *(*(&v49 + 1) + 8 * v9);
          context = objc_autoreleasePoolPush();
          v11 = [v10 pinningIdentifier];
          if (v11)
          {
            [v8 addObject:v11];
          }

          v36 = v11;
          v12 = [v10 originalGroupID];
          if (v12 && [v10 style] != 45)
          {
            [v8 addObject:v12];
          }

          v35 = v12;
          v13 = [(IMDChatRegistry *)self _siblingChatsForChat:v10 usingChatGUIDToChatMap:v33 iMessageChat:0];
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v39 = v13;
          v14 = [v13 countByEnumeratingWithState:&v45 objects:v54 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v46;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v46 != v16)
                {
                  objc_enumerationMutation(v39);
                }

                v18 = [*(*(&v45 + 1) + 8 * i) personCentricID];
                v19 = [v40 objectForKeyedSubscript:v18];
                v41 = 0u;
                v42 = 0u;
                v43 = 0u;
                v44 = 0u;
                v20 = [v19 countByEnumeratingWithState:&v41 objects:v53 count:16];
                if (v20)
                {
                  v21 = v20;
                  v22 = *v42;
                  do
                  {
                    for (j = 0; j != v21; ++j)
                    {
                      if (*v42 != v22)
                      {
                        objc_enumerationMutation(v19);
                      }

                      v24 = [*(*(&v41 + 1) + 8 * j) pinningIdentifier];
                      if (v24)
                      {
                        [v8 addObject:v24];
                      }
                    }

                    v21 = [v19 countByEnumeratingWithState:&v41 objects:v53 count:16];
                  }

                  while (v21);
                }
              }

              v15 = [v39 countByEnumeratingWithState:&v45 objects:v54 count:16];
            }

            while (v15);
          }

          objc_autoreleasePoolPop(context);
          v9 = v38 + 1;
        }

        while (v38 + 1 != v34);
        v34 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
      }

      while (v34);
    }

    v25 = [v8 allObjects];
    v26 = [v25 copy];

    v7 = v29;
  }

  else
  {
    v26 = MEMORY[0x277CBEBF8];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)chatsToUploadToCloudKitWithLimit:(unint64_t)a3
{
  v30[2] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCA920];
  v7 = MEMORY[0x277CCAC30];
  v8 = +[IMDServiceController sharedController];
  v9 = [v8 serviceNamesSupportingCapability:*MEMORY[0x277D1A580]];
  v10 = [v9 allObjects];
  v11 = [v7 __im_chatPredicateForServiceNames:v10];
  v30[0] = v11;
  v12 = [MEMORY[0x277CCAC30] __im_chatPredicateForSyncState:1];
  v30[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v14 = [v6 andPredicateWithSubpredicates:v13];

  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = [(IMDChatRegistry *)self chatStore];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_22B60FF2C;
  v24[3] = &unk_278706548;
  v17 = v15;
  v25 = v17;
  v26 = a3;
  v27 = a2;
  [v16 enumerateBatchedChatsFilteredUsingPredicate:v14 batchSize:a3 block:v24];

  v18 = [v17 allValues];
  v19 = [(IMDChatRegistry *)self _addChatsFromCacheMisses:v18 preferExistingChats:1];

  v20 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v19 count];
    *buf = 134217984;
    v29 = v21;
    _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_DEFAULT, "Got %llu chats to upload", buf, 0xCu);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)updateChatWithGUID:(id)a3 serverChangeToken:(id)a4 recordID:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IMDChatRegistry *)self existingChatWithGUID:v8];
  v12 = v11;
  if (v11)
  {
    [v11 setServerChangeToken:v9];
    [v12 setCloudKitRecordID:v10];
    [v12 storeAndBroadcastChatChanges];
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v8;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Did not find chat for GUID %@", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_insertChatUsingSyncData:(id)a3
{
  v32[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [IMDChat chatWithSyncData:v4];
  v6 = [(IMDChat *)v5 guid];
  v7 = [(IMDChatRegistry *)self existingChatWithGUID:v6];

  if (!v7)
  {
    v8 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v9 = [v8 isMessagesIniCloudVersion2];

    if (v9)
    {
      v10 = +[IMDChatStore sharedInstance];
      [v10 storeChat:v5];

      v11 = +[IMDMessageStore sharedInstance];
      v12 = [(IMDChat *)v5 guid];
      [v11 updateStampForGUID:v12];

      v13 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      LODWORD(v12) = [v13 isOneChatEnabled];

      if (v12)
      {
        v14 = [MEMORY[0x277D18EB0] synchronousDatabase];
        v15 = [(IMDChat *)v5 guid];
        v16 = [(IMDChat *)v5 serviceName];
        v32[0] = v16;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = sub_22B6106A0;
        v29[3] = &unk_278703C58;
        v18 = v5;
        v30 = v18;
        [v14 updateServicesForChatWithGUID:v15 services:v17 completionHandler:v29];

        v19 = objc_alloc(MEMORY[0x277D18F00]);
        v20 = [(IMDChat *)v18 serviceName];
        v21 = [v4 sourceRecordName];
        v22 = [v19 initWithServiceName:v20 ckRecordID:v21];

        v23 = [MEMORY[0x277D18EB0] synchronousDatabase];
        v31 = v22;
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
        v25 = [(IMDChat *)v18 guid];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = sub_22B6107C4;
        v27[3] = &unk_278703C58;
        v28 = v18;
        [v23 addSyncChatSlices:v24 forChatWithGUID:v25 completionHandler:v27];
      }
    }

    else
    {
      [(IMDChatRegistry *)self addChat:v5];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)_uncachedNewestChatWithOriginalGroupID:(id)a3 onService:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IMDChatRegistry *)self chatStore];
  v9 = [v8 newestChatWithOriginalGroupID:v7 onService:v6];

  return v9;
}

- (id)newestExistingChatWithOriginalGroupID:(id)a3 onService:(id)a4
{
  v5 = [(IMDChatRegistry *)self _uncachedNewestChatWithOriginalGroupID:a3 onService:a4];
  v6 = [(IMDChatRegistry *)self _addChatFromCacheMiss:v5 preferExistingChat:1];

  return v6;
}

- (id)_newestExistingChatWithGroupID:(id)a3 onService:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v27 = v6;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Searching for the newest chat with groupID: %@ service: %@", buf, 0x16u);
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = v6;
  v9 = [(IMDChatRegistry *)self existingChatsWithGroupID:v6];
  v10 = 0;
  v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v14 serviceName];
        if (![v15 isEqualToString:v7])
        {
          goto LABEL_19;
        }

        v16 = [v14 style] == 43;

        if (v16 && (!v10 || [v14 isNewerThan:v10]))
        {
          if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v27 = v14;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Found newer chat match for groupID: %@", buf, 0xCu);
            }
          }

          v15 = v10;
          v10 = v14;
LABEL_19:

          continue;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_existingChatForSyncData:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 numberForKey:@"stl"];
  v6 = [v5 unsignedIntegerValue];

  v7 = [v4 stringForKey:@"guid"];
  if (v6 != 45)
  {
    v35 = [v4 arrayForKey:@"ptcpts"];
    v10 = [v4 stringForKey:@"ogid"];
    v11 = [v4 stringForKey:@"svc"];
    if (v7)
    {
      v12 = [(IMDChatRegistry *)self existingChatWithGUID:v7];
      v13 = [v12 hasMatchingParticipantHandles:v35];
      v14 = IMOSLoggingEnabled();
      if (v13)
      {
        if (v14)
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v37 = v7;
            _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Found matching group chat by original GUID %@", buf, 0xCu);
          }
        }

        v9 = v12;
      }

      else
      {
        if (v14)
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Ignoring chat matched by GUID due to mismatching partcipants", buf, 2u);
          }
        }

        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v37 = v10;
        v38 = 2112;
        v39 = v11;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Looking for group chat for CKRecord with originalGroupID: %@ and service: %@", buf, 0x16u);
      }
    }

    if (!v9 && v10)
    {
      if ([v10 length])
      {
        v9 = [(IMDChatRegistry *)self _uncachedNewestChatWithOriginalGroupID:v10 onService:v11];
      }

      else
      {
        v9 = 0;
      }
    }

    v18 = [v4 stringForKey:@"gid"];
    v19 = v18;
    if (!v9 && v18)
    {
      if ([v18 length])
      {
        if (IMOSLoggingEnabled())
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = [(IMDChatRegistry *)self cachedChatCount];
            *buf = 138412802;
            v37 = v10;
            v38 = 2048;
            v39 = v21;
            v40 = 2112;
            v41 = v19;
            _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Failed to find group chat with originalGroupID as regular groupID (%@) in %llu chats, trying with client groupID (%@)", buf, 0x20u);
          }
        }

        v9 = [(IMDChatRegistry *)self _newestExistingChatWithGroupID:v19 onService:v11];
        v22 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
        v23 = [v22 isMissingMessagesEnabled];

        if (v9)
        {
          v24 = v23;
        }

        else
        {
          v24 = 0;
        }

        if ((v24 & (v10 != 0)) == 1)
        {
          if (![v10 length]|| ([v19 isEqualToString:v10]& 1) != 0)
          {
            goto LABEL_64;
          }

          v25 = IMChatLookupDomainForServiceName();
          if (IMOSLoggingEnabled())
          {
            v26 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              v27 = [v9 guid];
              *buf = 138413058;
              v37 = v19;
              v38 = 2112;
              v39 = v10;
              v40 = 2112;
              v41 = v25;
              v42 = 2112;
              v43 = v27;
              _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Found a chat using groupID %@ rather than originalGroupID %@. Assigning identifier for domain %@ to chat with guid %@ as a historical identifier", buf, 0x2Au);
            }
          }

          [v9 assignIdentifier:v10 forDomain:v25 isHistoricalIdentifier:1];
          goto LABEL_62;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    if (v9 || !v10)
    {
      goto LABEL_64;
    }

    if (![v10 length])
    {
      v9 = 0;
      goto LABEL_64;
    }

    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v37 = v10;
        _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Failed to find group chat with current group ID, trying with originalGroupID (%@) as groupID", buf, 0xCu);
      }
    }

    v9 = [(IMDChatRegistry *)self _newestExistingChatWithGroupID:v10 onService:v11];
    v29 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v30 = [v29 isMissingMessagesEnabled];

    if (v9)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    if (v31 != 1)
    {
      goto LABEL_64;
    }

    v25 = IMLogHandleForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D67AC(v25);
    }

LABEL_62:

LABEL_64:
    goto LABEL_65;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v37 = v7;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Looking for 1-1 chat for CKRecord with GUID: %@", buf, 0xCu);
    }
  }

  v9 = [(IMDChatRegistry *)self existingChatWithGUID:v7];
LABEL_65:
  if (IMOSLoggingEnabled())
  {
    v32 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v37 = v9;
      _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Found existing chat for CKRecord: %@", buf, 0xCu);
    }
  }

  v33 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)_ensureNoExistingGroupForSyncData:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 numberForKey:@"stl"];
  v6 = [v5 unsignedIntegerValue];

  v7 = [v4 stringForKey:@"gid"];
  v8 = [v4 stringForKey:@"ogid"];
  v9 = [v4 stringForKey:@"svc"];
  v10 = v9;
  if (v6 == 45 || v8 == 0 || v9 == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v33 = 67109634;
        *v34 = v6;
        *&v34[4] = 2112;
        *&v34[6] = v8;
        *&v34[14] = 2112;
        *&v34[16] = v10;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Won't _ensureNoExistingGroupForCKRecord style:%hhu, originalGroupID:%@ service:%@", &v33, 0x1Cu);
      }
    }

    v14 = 1;
  }

  else
  {
    v15 = [(IMDChatRegistry *)self chatStore];
    v16 = [v15 newestChatWithOriginalGroupID:v8 onService:v10];

    if (v16)
    {
      goto LABEL_44;
    }

    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v33 = 138412546;
        *v34 = v8;
        *&v34[8] = 2112;
        *&v34[10] = v7;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "No existing chat with originalGroupID (%@) found, checking client groupID (%@)", &v33, 0x16u);
      }
    }

    v18 = [(IMDChatRegistry *)self chatStore];
    v16 = [v18 newestChatWithGroupID:v7 onService:v10];

    v19 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v20 = [v19 isMissingMessagesEnabled];

    if (v20)
    {
      v21 = IMChatLookupDomainForServiceName();
      v22 = +[IMDServiceController sharedController];
      v23 = [v22 serviceWithName:v10];

      if (v16)
      {
        if (v21)
        {
          if (v23)
          {
            if ([v8 length])
            {
              v24 = [v16 identifiersForDomain:v21];
              v25 = [v24 containsObject:v8];

              if ((v25 & 1) == 0)
              {
                if (IMOSLoggingEnabled())
                {
                  v26 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
                  {
                    v27 = [v16 guid];
                    v33 = 138412802;
                    *v34 = v8;
                    *&v34[8] = 2112;
                    *&v34[10] = v27;
                    *&v34[18] = 2112;
                    *&v34[20] = v21;
                    _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Found a missing originalGroupID %@ for chat with guid %@. Adding it now to domain %@", &v33, 0x20u);
                  }
                }

                [v16 assignIdentifier:v8 forDomain:v21 isHistoricalIdentifier:1];
                [v16 setCloudKitSyncState:0];
                v28 = +[IMDChatStore sharedInstance];
                [v28 storeChat:v16];
              }
            }
          }
        }
      }
    }

    if (v16)
    {
LABEL_44:
      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v33 = 138412546;
          *v34 = v8;
          *&v34[8] = 2112;
          *&v34[10] = v16;
          _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "IMDChatRegistry: Found an existing chat that's not in the registry. This is likely because the registry failed it's chat load. OriginalGroupID:%@ Chat:%@", &v33, 0x16u);
        }
      }

      if (![(IMDChatRegistry *)self hasDumpedLogsForNoExisitingGroup])
      {
        v30 = [(IMDChatRegistry *)self ckUtilities];
        [v30 reportMOCDebuggingErrorWithString:@"TriedToInsertDuplicateChat" internalOnly:1 initialSync:0 reasonString:@"TriedToInsertDuplicateChat"];

        [(IMDChatRegistry *)self setHasDumpedLogsForNoExisitingGroup:1];
      }

      v14 = 0;
    }

    else
    {
      v14 = 1;
    }
  }

  v31 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)_markForksAsSyncedForChat:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 style] == 43)
  {
    v28 = self;
    v5 = [v4 serviceName];
    v27 = [v4 groupID];
    v29 = [v4 originalGroupID];
    [(IMDChatRegistry *)v28 existingChatsWithGroupID:v27];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    obj = v36 = 0u;
    v6 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v6)
    {
      v7 = *v36;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v36 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v35 + 1) + 8 * i);
          v10 = [v9 serviceName];
          v11 = [v10 isEqualToString:v5];
          if (v9 == v4)
          {
            v12 = 0;
          }

          else
          {
            v12 = v11;
          }

          if (v12)
          {
            if (IMOSLoggingEnabled())
            {
              v13 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v41 = v4;
                _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Found groupd_id fork for chat while applying changes from cloudKit %@", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v14 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v41 = v9;
                _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Marking fork as clean %@", buf, 0xCu);
              }
            }

            [v9 updateCloudKitSyncState:1];
          }
        }

        v6 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v6);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = [(IMDChatRegistry *)v28 allChats];
    v16 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v16)
    {
      v17 = *v32;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v31 + 1) + 8 * j);
          if ([v19 style] == 43)
          {
            v20 = [v19 originalGroupID];
            if ([v20 isEqualToString:v29])
            {
              v21 = [v19 serviceName];
              v22 = [v21 isEqualToString:v5];
              if (v19 == v4)
              {
                v23 = 0;
              }

              else
              {
                v23 = v22;
              }

              if (v23)
              {
                if (IMOSLoggingEnabled())
                {
                  v24 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v41 = v4;
                    _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Found original_groupd_id fork for chat while applying changes from cloudKit %@", buf, 0xCu);
                  }
                }

                if (IMOSLoggingEnabled())
                {
                  v25 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v41 = v19;
                    _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Marking fork as clean %@", buf, 0xCu);
                  }
                }

                [v19 updateCloudKitSyncState:1];
              }
            }

            else
            {
            }
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v16);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_updateChat:(id)a3 usingSyncData:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v6 guid];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Chat already exists: %@ to apply changes from CKRecord", &v11, 0xCu);
    }
  }

  [v6 applyChangesUsingSyncData:v7];
  [(IMDChatRegistry *)self _markForksAsSyncedForChat:v6];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateChatUsingSyncData:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 stringForKey:@"guid"];
  v6 = [(IMDChatRegistry *)self _existingChatForSyncData:v4];
  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v10 = 138412546;
        v11 = v5;
        v12 = 2112;
        v13 = v4;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Updating existing chat %@ with record %@", &v10, 0x16u);
      }
    }

    [(IMDChatRegistry *)self _updateChat:v6 usingSyncData:v4];
  }

  else if ([(IMDChatRegistry *)self _ensureNoExistingGroupForSyncData:v4])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 138412546;
        v11 = v5;
        v12 = 2112;
        v13 = v4;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Creating new chat %@ with record %@", &v10, 0x16u);
      }
    }

    [(IMDChatRegistry *)self _insertChatUsingSyncData:v4];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)resolveChatConflictUsingSyncData:(id)a3 localGUID:(id)a4
{
  v6 = a3;
  v7 = [(IMDChatRegistry *)self existingChatWithGUID:a4];
  [(IMDChatRegistry *)self _updateChat:v7 usingSyncData:v6];
}

- (void)updateCachedChatsSyncStatusTo:(int64_t)a3 forGUIDs:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(IMDChatRegistry *)self _cachedChatWithGUID:*(*(&v14 + 1) + 8 * v10)];
        v12 = v11;
        if (v11)
        {
          [v11 setCloudKitSyncState:a3];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)markChatAsDeferredForSyncingUsingSyncData:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDChatRegistry *)self _existingChatForSyncData:v4];
  if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = v5;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Marking existing chat %@ as deferred", &v8, 0xCu);
      }
    }

    [v5 updateCloudKitSyncState:2];
    [v5 updateServerChangeToken:0];
    [v5 updateCloudKitRecordID:0];
    [(IMDChatRegistry *)self _markForksAsSyncedForChat:v5];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)markDeferredChatsAsNeedingSync
{
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %d", *MEMORY[0x277D197D0], 2];
  v3 = [(IMDChatRegistry *)self chatStore];
  [v3 enumerateBatchedChatsFilteredUsingPredicate:v4 block:&unk_283F1A5E8];
}

- (void)__addChatToGroupIDChatIndex:(id)a3
{
  v4 = a3;
  chatsByGroupID = self->_chatsByGroupID;
  v10 = v4;
  v6 = [v4 groupID];
  v7 = [(NSMutableDictionary *)chatsByGroupID objectForKey:v6];

  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    v8 = self->_chatsByGroupID;
    v9 = [v10 groupID];
    [(NSMutableDictionary *)v8 setObject:v7 forKey:v9];
  }

  [v7 addObject:v10];
}

- (void)__removeChatFromGroupIDChatIndex:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 groupID];
  v6 = [v5 length];

  if (v6)
  {
    chatsByGroupID = self->_chatsByGroupID;
    v8 = [v4 groupID];
    v9 = [(NSMutableDictionary *)chatsByGroupID objectForKey:v8];

    [v9 removeObject:v4];
    if (![v9 count])
    {
      v10 = self->_chatsByGroupID;
      v11 = [v4 groupID];
      [(NSMutableDictionary *)v10 removeObjectForKey:v11];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Trying to remove chat with nil groupID: %@", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)__unassignGroupIDFromAllChats:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(NSMutableDictionary *)self->_chatsByGroupID objectForKey:v4];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v6)
    {
      v7 = *v13;
      v8 = *MEMORY[0x277D19780];
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v12 + 1) + 8 * v9++) unassignAndPersistIdentifier:v4 forDomain:v8];
        }

        while (v6 != v9);
        v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v6);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Trying to unassign nil groupID from all chats.", buf, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)messagesToUploadToCloudKitWithLimit:(unint64_t)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = +[IMDMessageStore sharedInstance];
  v5 = [v4 messagesThatNeedSyncWithCloudKitWithFilter:0 limit:a3];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v12 = +[IMDMessageStore sharedInstance];
        v13 = [v11 guid];
        v14 = [v12 chatForMessageGUID:v13 enableVerboseLogging:0];

        v15 = [v11 service];
        v16 = [v14 cloudKitChatIDForServiceName:v15];
        [v11 setCloudKitChatID:v16];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)messagesPendingUpdateT1ToCloudKitWithLimit:(unint64_t)a3
{
  v4 = +[IMDMessageStore sharedInstance];
  v5 = [v4 messagesPendingUpdateT1ToCloudKitWithLimit:a3];

  return v5;
}

- (id)messagesPendingUpdateT2ToCloudKitWithLimit:(unint64_t)a3
{
  v4 = +[IMDMessageStore sharedInstance];
  v5 = [v4 messagesPendingUpdateT2ToCloudKitWithLimit:a3];

  return v5;
}

- (id)_lookupChatUsingParentChatID:(id)a3 service:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 __im_isWellFormedChatGUID])
  {
    [(IMDChatRegistry *)self existingChatWithGUID:v6];
  }

  else
  {
    [(IMDChatRegistry *)self existingChatWithGroupID:v6 onService:v7];
  }
  v8 = ;
  if (!v8)
  {
    v8 = [(IMDChatRegistry *)self _uncachedNewestChatWithOriginalGroupID:v6 onService:v7];
    if (!v8)
    {
      v8 = [(IMDChatRegistry *)self _newestExistingChatWithGroupID:v6 onService:v7];
    }
  }

  return v8;
}

- (void)_addItemToParentChatIfNotLocationItem:(id)a3 parentChat:(id)a4 updatedLastMessageCount:(unint64_t)a5 reason:(int64_t)a6
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_opt_class() addLocationShareItemToMatchingChats:v10];
  }

  else if (v11)
  {
    [(IMDChatRegistry *)self _addItem:v10 toChat:v11 reason:a6];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (a5)
      {
        [(IMDChatRegistry *)self updateLastMessageForChat:v11 hintMessage:v10 historyQuery:0];
      }

      else
      {
        [(IMDChatRegistry *)self updateLastMessageForChat:v11 hintMessage:v10];
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v10 guid];
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "No chat record found when adding message item %@, this may NOT be visible to the user!", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_setSortIDOnIncomingMessage:(id)a3 forChat:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (IMSharedHelperSortUsingReplyToGUIDAlgorithm())
  {
    v7 = objc_alloc_init(IMDMessageSortOrderAssigner);
    [(IMDMessageSortOrderAssigner *)v7 assignSortIDToIncomingMessage:v5 onChat:v6];
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "sortID")}];
        v10 = [v5 guid];
        v11 = [v6 guid];
        v13 = 138412802;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
        v17 = 2112;
        v18 = v11;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Setting sort id %@ for message %@ on chat %@ synced from CloudKit", &v13, 0x20u);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_existingItemRequiresUpgrade:(id)a3 itemFromCKRecord:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v8 = [v7 messageSyncP2Enabled];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v6;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v13 = v12;
    if (v10)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v16 = [v10 threadIdentifier];
      v17 = v16;
      if (v16)
      {
        v18 = [v13 threadIdentifier];
        v15 = v18 == 0;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_adoptUpdatedStateForExistingItem:(id)a3 itemFromCKRecord:(id)a4
{
  v16 = a3;
  v5 = a4;
  v6 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v7 = [v6 messageSyncP2Enabled];

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v16;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v5;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = v11;
    if (v9)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      v14 = [v9 threadIdentifier];

      if (!v14)
      {
        v15 = [v12 threadIdentifier];
        [v9 setThreadIdentifier:v15];
      }
    }
  }
}

- (void)processMessageUsingCKRecord:(id)a3 updatedLastMessageCount:(int)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [(IMDChatRegistry *)self _itemFromCKRecord:v6];
  if ([v8 isCompatibleWithMiC])
  {
    v9 = [(IMDChatRegistry *)self _sharedMessageStore];
    v10 = [v8 guid];
    v11 = [v9 hasStoredMessageWithGUID:v10];

    v12 = [(IMDChatRegistry *)self _parentChatIDFromCKRecord:v6];
    v13 = [v6 _stringForKey:@"svc"];
    v14 = [(IMDChatRegistry *)self _lookupChatUsingParentChatID:v12 service:v13];

    if (v11)
    {
      v15 = [(IMDChatRegistry *)self _sharedMessageStore];
      v16 = [v8 guid];
      v17 = [v15 itemWithGUID:v16];

      v18 = [(IMDChatRegistry *)self _existingItemRequiresUpgrade:v17 itemFromCKRecord:v8]^ 1;
      [(IMDChatRegistry *)self _adoptUpdatedStateForExistingItem:v17 itemFromCKRecord:v8];
      [v17 setCloudKitSyncState:v18];
      v19 = [v6 recordID];
      v20 = [v19 recordName];
      [v17 setCloudKitRecordID:v20];

      v21 = [v6 recordChangeTag];
      [v17 setCloudKitRecordChangeTag:v21];

      [v17 setCloudKitServerChangeTokenBlob:0];
      [v17 setCloudKitChatID:v12];
      objc_opt_class();
      LOBYTE(v21) = objc_opt_isKindOfClass();
      v22 = [(IMDChatRegistry *)self _sharedMessageStore];
      v23 = v22;
      if (v21)
      {
        LOBYTE(v50) = 0;
        v24 = [v22 storeMessage:v17 forceReplace:0 modifyError:0 modifyFlags:0 flagMask:0x2000 updateMessageCache:0 calculateUnreadCount:v50];
      }

      else
      {
        v33 = [v22 storeItem:v17 forceReplace:0];
      }

LABEL_38:
      goto LABEL_39;
    }

    if (![v8 shouldStoreMessage])
    {
      goto LABEL_19;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && v14)
    {
      v28 = v8;
      v29 = +[IMDBackwardCompatibilityMessageIdentifier sharedIdentifier];
      if ([v29 isIgnorableBackwardCompatibilityMessage:v28 inChat:v14])
      {
        if (IMOSLoggingEnabled())
        {
          v30 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = [v28 guid];
            *buf = 138412290;
            v54 = v31;
            _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Message %@ is an ignorable backward compatibility message, ignoring.", buf, 0xCu);
          }
        }

LABEL_19:
        v32 = 0;
LABEL_32:
        if (IMOSLoggingEnabled())
        {
          v44 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            v45 = [v8 guid];
            v46 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v8, "cloudKitSyncState")}];
            v47 = v46;
            v48 = @"NO";
            *buf = 138412802;
            v54 = v45;
            v55 = 2112;
            if (v32)
            {
              v48 = @"YES";
            }

            v56 = v46;
            v57 = 2112;
            v58 = v48;
            _os_log_impl(&dword_22B4CC000, v44, OS_LOG_TYPE_INFO, "Updated msg %@ to have CKSyncState %@ stored message: %@", buf, 0x20u);
          }
        }

        goto LABEL_38;
      }
    }

    [(IMDChatRegistry *)self _setSortIDOnIncomingMessage:v8 forChat:v14];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 setFlags:{objc_msgSend(v8, "flags") | 0x2000}];
      v34 = [(IMDChatRegistry *)self _sharedMessageStore];
      LOBYTE(v50) = 0;
      v35 = [v34 storeMessage:v8 forceReplace:0 modifyError:0 modifyFlags:0 flagMask:0x2000 updateMessageCache:0 calculateUnreadCount:v50];

      v36 = [v8 guid];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = sub_22B6137A4;
      v51[3] = &unk_278706590;
      v52 = v36;
      v37 = v36;
      [v8 enumerateAttachmentGUIDsWithBlock:v51];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38 = v8;
        v39 = [v38 timeRead];

        if (!v39)
        {
          v40 = [MEMORY[0x277CBEAA8] now];
          [v38 setTimeRead:v40];
        }

        v41 = [(IMDChatRegistry *)self _sharedMessageStore];
        v42 = [v41 storeItem:v38 forceReplace:0];
      }

      else
      {
        v38 = [(IMDChatRegistry *)self _sharedMessageStore];
        v43 = [v38 storeItem:v8 forceReplace:0];
      }
    }

    [(IMDChatRegistry *)self _addItemToParentChatIfNotLocationItem:v8 parentChat:v14 updatedLastMessageCount:a4 reason:1000];
    v32 = 1;
    goto LABEL_32;
  }

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v54 = v8;
      _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Found item that is incompatible with the current device version: %@", buf, 0xCu);
    }
  }

  v26 = [v8 guid];
  v27 = [v8 cloudKitRecordID];
  IMDMessageRecordAddGUIDAndCKRecordIDToDeleteFromCloudKit();

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 postNotificationName:@"__kCKRecordIMMessageIncompatibleDeleteNotification" object:0];
LABEL_39:

  objc_autoreleasePoolPop(v7);
  v49 = *MEMORY[0x277D85DE8];
}

- (BOOL)handleMessageUpdate:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 _stringForKey:@"ut"];
  v6 = [v4 _dataForKey:@"up"];
  if ([v5 isEqualToString:@"UT1"])
  {
    v7 = [MEMORY[0x277D1AA28] protobufForUpdateT1:v6];
    v8 = [v7 msgid];
    v9 = [v7 threadGuid];
    v10 = [v7 threadPart];
    ThreadIdentifierWithComponents = IMMessageCreateThreadIdentifierWithComponents();
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        v43 = v8;
        v44 = 2112;
        v45 = ThreadIdentifierWithComponents;
        v46 = 2112;
        v47 = v9;
        v48 = 2112;
        v49 = v10;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "UpdateSyncT1 relating msgID %@ to thread %@ (threadGuid %@ threadPart %@)", buf, 0x2Au);
      }
    }

    if (!v7 || ![v8 length] || !objc_msgSend(ThreadIdentifierWithComponents, "length"))
    {
      if (IMOSLoggingEnabled())
      {
        v36 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v43 = v7;
          _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Ignoring update message T1: no message ID or thread ID %@", buf, 0xCu);
        }
      }

      goto LABEL_56;
    }

    v13 = +[IMDMessageStore sharedInstance];
    v41 = [v13 itemWithGUID:v8];

    if (v41)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v40 = v41;
        v14 = [v40 threadIdentifier];
        v15 = [v14 length] == 0;

        if (v15)
        {
          [v40 setThreadIdentifier:ThreadIdentifierWithComponents];
        }

        else
        {
          v16 = [v40 threadIdentifier];
          v17 = [ThreadIdentifierWithComponents isEqualToString:v16];

          if ((v17 & 1) == 0 && IMOSLoggingEnabled())
          {
            v18 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = [v40 threadIdentifier];
              *buf = 138412546;
              v43 = v19;
              v44 = 2112;
              v45 = ThreadIdentifierWithComponents;
              _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "ThreadIdentifier update rejected, thread identifier already populated as %@, update would be %@", buf, 0x16u);
            }
          }
        }

        if ([v40 cloudKitSyncState] == 8)
        {
          [v40 setCloudKitSyncState:1];
        }

        v33 = +[IMDMessageStore sharedInstance];
        LOBYTE(v39) = 0;
        v34 = [v33 storeMessage:v40 forceReplace:0 modifyError:0 modifyFlags:0 flagMask:0x2000 updateMessageCache:0 calculateUnreadCount:v39];

        goto LABEL_45;
      }

      if (IMOSLoggingEnabled())
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Update record for non-message type, ignoring", buf, 2u);
        }

LABEL_36:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v43 = v8;
        _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Ignoring update T1 message: message not found for id %@ (it may have been deleted)", buf, 0xCu);
      }

      goto LABEL_36;
    }

LABEL_45:

LABEL_56:
LABEL_57:
    v31 = 1;
    goto LABEL_58;
  }

  if ([v5 isEqualToString:@"UT2"])
  {
    v20 = [MEMORY[0x277D1AA28] protobufForUpdateT2:v6];
    v21 = [v20 msgid];
    v22 = [v20 sr];
    if (v20 && [v21 length])
    {
      [(IMDChatRegistry *)self updateSyncedSyndicationRanges:v22 forGUID:v21];
    }

    goto LABEL_57;
  }

  if ([v5 isEqualToString:@"UT3"])
  {
    v23 = [MEMORY[0x277D1AA28] protobufForUpdateT3:v6];
    v24 = [v23 msgid];
    v25 = [v23 chatid];
    if (v23 && [v24 length] && objc_msgSend(v25, "length"))
    {
      v26 = +[IMDMessageStore sharedInstance];
      v27 = [v26 itemWithGUID:v24];

      if (v27)
      {
        [IMDaemonCoreBridgeImpl addItem:v27 toParentChatID:v25 updatedLastMessageCount:-1];
        [v27 setCloudKitSyncState:1];
        v28 = +[IMDMessageStore sharedInstance];
        v29 = [v28 storeItem:v27 forceReplace:0];
      }

      else if (IMOSLoggingEnabled())
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v43 = v24;
          _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "Ignoring update T3 message: message not found for guid %@ (it may have been deleted)", buf, 0xCu);
        }
      }
    }

    goto LABEL_57;
  }

  if (IMOSLoggingEnabled())
  {
    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v43 = v5;
      _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Ignoring message update %@, unrecognized update type", buf, 0xCu);
    }
  }

  v31 = 0;
LABEL_58:

  v37 = *MEMORY[0x277D85DE8];
  return v31;
}

- (void)handleMessageUpdateConflictType:(id)a3 serverRecord:(id)a4 localRowID:(int64_t)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([v8 isEqualToString:@"UT1"])
  {
    if (a5)
    {
LABEL_3:
      v10 = +[IMDMessageStore sharedInstance];
      [v10 markMessageAsCleanWithROWID:a5];
    }
  }

  else
  {
    if ([v8 isEqualToString:@"UT2"])
    {
      [(IMDChatRegistry *)self handleMessageUpdate:v9];
      goto LABEL_6;
    }

    if ([v8 isEqualToString:@"UT3"])
    {
      if (!a5)
      {
        goto LABEL_6;
      }

      goto LABEL_3;
    }

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = 138412546;
        v14 = v8;
        v15 = 2048;
        v16 = a5;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Failed to handle conflict for unknown update type %@, rowID %lu", &v13, 0x16u);
      }
    }
  }

LABEL_6:

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateSyncedSyndicationRanges:(id)a3 forGUID:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(IMDChatRegistry *)self _sharedMessageStore];
  v9 = [v8 itemWithGUID:v7];

  if (!v9)
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v29 = v7;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Can't apply updated syndication ranges for %@, message not found!", buf, 0xCu);
      }

      goto LABEL_16;
    }

LABEL_17:
    v20 = 0;
    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v29 = v7;
        v30 = 2112;
        v31 = v9;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Can't apply updated syndication ranges for %@, invalid message type for item %@", buf, 0x16u);
      }

LABEL_16:

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v10 = v9;
  v11 = [MEMORY[0x277D1AA98] rangesFromSerializedString:v6];
  v27 = [MEMORY[0x277D1AA98] maxStartDateForRanges:v11];
  v12 = MEMORY[0x277D1AA98];
  v13 = [(__CFString *)v10 syndicationRanges];
  v14 = [v12 maxStartDateForRanges:v13];

  v15 = [(__CFString *)v10 syndicationRanges];
  if (!v15)
  {
    goto LABEL_19;
  }

  v16 = [(__CFString *)v10 syndicationRanges];
  if (![v16 count] || !v14 || !v27)
  {

    goto LABEL_19;
  }

  v17 = [v14 compare:v27];

  if (v17 == -1)
  {
LABEL_19:
    [(__CFString *)v10 setSyndicationRanges:v11];
    v18 = @"YES";
    goto LABEL_20;
  }

  v18 = @"NO";
LABEL_20:
  [(__CFString *)v10 setSyncedSyndicationRanges:v11];
  v21 = [(IMDChatRegistry *)self _sharedMessageStore];
  LOWORD(v26) = 256;
  v22 = [v21 storeMessage:v10 forceReplace:0 modifyError:0 modifyFlags:0 flagMask:0 updateMessageCache:0 calculateUnreadCount:v26 reindexMessage:?];

  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v29 = v7;
      v30 = 2112;
      v31 = v18;
      _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Applied updated syndicationRanges to %@, was newer data? %@)", buf, 0x16u);
    }
  }

  v20 = 1;
LABEL_25:

  v24 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)clearPendingDeleteTable
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Clearing pending chat delete table", v3, 2u);
    }
  }

  IMDChatClearPendingDeleteChatsTable();
}

- (void)simulateMessageReceive:(id)a3 serviceName:(id)a4 groupID:(id)a5 handles:(id)a6 sender:(id)a7 date:(id)a8 associatedMessageType:(int64_t)a9 associatedMessageGuid:(id)a10
{
  v87 = *MEMORY[0x277D85DE8];
  v66 = a3;
  v16 = a4;
  v68 = a5;
  v17 = a6;
  v67 = a7;
  v69 = a8;
  v18 = a10;
  v71 = v17;
  v70 = v16;
  if ([v17 count] && objc_msgSend(v16, "length"))
  {
    v19 = +[IMDAccountController sharedInstance];
    v65 = [v19 anySessionForServiceName:v16];

    if (!v65)
    {
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v84 = v16;
          _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "No session for serviceName %@ -- can't simulate receive", buf, 0xCu);
        }
      }

      goto LABEL_53;
    }

    v62 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v66];
    if (a9 <= 0)
    {
      v26 = objc_alloc(MEMORY[0x277D1AA70]);
      v27 = v69;
      v21 = v69;
      if (!v69)
      {
        v21 = [MEMORY[0x277CBEAA8] date];
        v27 = 0;
      }

      v28 = v27 == 0;
      v29 = [MEMORY[0x277CCACA8] stringGUID];
      v64 = [v26 initWithSender:v67 time:v21 body:v62 attributes:0 fileTransferGUIDs:0 flags:1 error:0 guid:v29 threadIdentifier:0];

      if (!v28)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v20 = objc_alloc(MEMORY[0x277D1A8A8]);
      v21 = v69;
      if (!v69)
      {
        v21 = [MEMORY[0x277CBEAA8] date];
      }

      v22 = [MEMORY[0x277CCACA8] stringGUID];
      v23 = v22;
      if (v18)
      {
        v64 = [v20 initWithSender:v67 time:v21 body:v62 attributes:0 fileTransferGUIDs:0 flags:1 error:0 guid:v22 associatedMessageGUID:v18 associatedMessageType:a9 associatedMessageRange:0 messageSummaryInfo:0x7FFFFFFFFFFFFFFFLL threadIdentifier:{0, 0}];
      }

      else
      {
        v30 = [MEMORY[0x277CCACA8] stringGUID];
        v64 = [v20 initWithSender:v67 time:v21 body:v62 attributes:0 fileTransferGUIDs:0 flags:1 error:0 guid:v23 associatedMessageGUID:v30 associatedMessageType:a9 associatedMessageRange:0 messageSummaryInfo:0x7FFFFFFFFFFFFFFFLL threadIdentifier:{0, 0}];
      }

      if (v69)
      {
        goto LABEL_24;
      }
    }

LABEL_24:
    if ([v17 count] <= 1)
    {
      v31 = 45;
    }

    else
    {
      v31 = 43;
    }

    v63 = v31;
    v61 = [v65 service];
    v32 = [(IMDChatRegistry *)self existingChatsForIDs:v17 onService:v61 style:v63];
    v33 = [(IMDChatRegistry *)self existingChatsWithGroupID:v68];
    v60 = [v32 arrayByAddingObjectsFromArray:v33];

    if ([v60 count])
    {
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v34 = v60;
      v35 = 0;
      v36 = [v34 countByEnumeratingWithState:&v77 objects:v82 count:16];
      if (v36)
      {
        v37 = *v78;
        do
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v78 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = *(*(&v77 + 1) + 8 * i);
            if ([v39 lastMessageTimeStampOnLoad])
            {
              v40 = v39;

              v35 = v40;
            }
          }

          v36 = [v34 countByEnumeratingWithState:&v77 objects:v82 count:16];
        }

        while (v36);
      }

      v41 = [v35 chatIdentifier];
    }

    else
    {
      v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if ([v17 count] < 2)
      {
        v51 = MEMORY[0x277CBEAC0];
        v52 = [MEMORY[0x277CCABB0] numberWithInt:2];
        v53 = [v51 dictionaryWithObjectsAndKeys:{v52, *MEMORY[0x277D192F8], 0, *MEMORY[0x277D193A8], 0}];

        [v35 addObject:v53];
        v41 = [v17 firstObject];
      }

      else
      {
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        obj = v17;
        v42 = [obj countByEnumeratingWithState:&v73 objects:v81 count:16];
        if (v42)
        {
          v43 = *v74;
          v44 = *MEMORY[0x277D192F8];
          v45 = *MEMORY[0x277D193A8];
          do
          {
            for (j = 0; j != v42; ++j)
            {
              if (*v74 != v43)
              {
                objc_enumerationMutation(obj);
              }

              v47 = *(*(&v73 + 1) + 8 * j);
              v48 = MEMORY[0x277CBEAC0];
              v49 = [MEMORY[0x277CCABB0] numberWithInt:2];
              v50 = [v48 dictionaryWithObjectsAndKeys:{v49, v44, v47, v45, 0}];

              [v35 addObject:v50];
            }

            v42 = [obj countByEnumeratingWithState:&v73 objects:v81 count:16];
          }

          while (v42);
        }

        v41 = [MEMORY[0x277CCACA8] __im_uniqueChatIdentifierForGroupChat];
      }

      v54 = v68;
      v55 = v68;
      if (!v68)
      {
        v55 = [MEMORY[0x277CCACA8] stringGUID];
        v54 = 0;
      }

      v56 = v54 == 0;
      v57 = [v65 account];
      LOBYTE(v59) = 0;
      [v65 didJoinChat:v41 style:v63 displayName:0 groupID:v55 handleInfo:v35 account:v57 isBlackholed:v59];

      if (v56)
      {
      }
    }

    [v64 setRoomName:v41];
    [v65 didReceiveMessage:v64 forChat:v41 style:v63 fromIDSID:0];

LABEL_53:
    goto LABEL_54;
  }

  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v84 = v17;
      v85 = 2112;
      v86 = v16;
      _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "No handles or servicename to receive a message from: {handles: %@ serviceName: %@}", buf, 0x16u);
    }
  }

LABEL_54:

  v58 = *MEMORY[0x277D85DE8];
}

- (void)invalidatePersonCentricGroupedChatsCache
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Invalidating person centric grouped chats cache", v5, 2u);
    }
  }

  v4 = [(IMDChatRegistry *)self personCentricGroupedChatsCache];
  [v4 removeAllObjects];
}

- (BOOL)_contactsBasedMergingEnabled
{
  if (qword_2814213C0 != -1)
  {
    sub_22B7D67F0();
  }

  return byte_2814213C9;
}

- (id)_aliasToCNIDMapForAliases:(id)a3
{
  v4 = a3;
  if (IMIsRunningInUnitTesting())
  {
    v5 = 0;
  }

  else
  {
    v6 = IMDCNRecordIDAndHistoryTokenForAliases();
    v7 = [v6 objectForKey:*MEMORY[0x277D18F20]];
    [(IMDChatRegistry *)self setHistoryToken:v7];
    v5 = [v6 objectForKey:*MEMORY[0x277D18F18]];
  }

  return v5;
}

- (void)setHistoryToken:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    historyToken = self->_historyToken;
    p_historyToken = &self->_historyToken;
    if (![(NSData *)historyToken isEqualToData:v5])
    {
      objc_storeStrong(p_historyToken, a3);
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          LOWORD(v10) = 0;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "ContactStore history token updated.", &v10, 2u);
        }

LABEL_10:
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Not updating the ContactStore history token with %@", &v10, 0xCu);
    }

    goto LABEL_10;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_updateAliasToCNIDMapAndHistoryTokenWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6 = [(IMDChatRegistry *)self aliasToCNIDMap];
  v5 = [(NSData *)self->_historyToken copy];
  IMDCNRecordIDAndHistoryTokenForAliasesWithCompletionHandler();
}

- (void)_updateAcceptedContactsInAliasToCNIDMapWithCompletionHandler:(id)a3
{
  v4 = MEMORY[0x277D18EB0];
  v5 = a3;
  v7 = [v4 database];
  v6 = [(IMDChatRegistry *)self aliasToCNIDMap];
  [v7 updateAcceptedContactsInAliasMap:v6 completionHandler:v5];
}

- (id)_generateCurrentAliasToCNIDDictionary
{
  [(NSRecursiveLock *)self->_handlesLock lock];
  v3 = [(IMDChatRegistry *)self idToHandlesMap];
  v4 = [v3 allKeys];
  v5 = [v4 copy];

  [(NSRecursiveLock *)self->_handlesLock unlock];
  v6 = [(IMDChatRegistry *)self _aliasToCNIDMapForAliases:v5];
  v7 = [v6 mutableCopy];

  return v7;
}

- (void)_populateContactIDOnHandles
{
  v38 = *MEMORY[0x277D85DE8];
  p_handlesLock = &self->_handlesLock;
  [(NSRecursiveLock *)self->_handlesLock lock];
  v4 = [(IMDChatRegistry *)self idToHandlesMap];
  v5 = [v4 allKeys];
  v25 = [v5 copy];

  [(NSRecursiveLock *)*p_handlesLock unlock];
  v6 = [(IMDChatRegistry *)self _generateCurrentAliasToCNIDDictionary];
  v7 = [v6 mutableCopy];

  v24 = v7;
  [(IMDChatRegistry *)self setCachedAliasToCNIDMap:v7];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "All handles and CachedAliasToCNIDMap", buf, 2u);
    }
  }

  [MEMORY[0x277D1A968] logHandleIDs:v25 checkAdditionalLoggingEnabled:1];
  v9 = MEMORY[0x277D1A968];
  v10 = [(IMDChatRegistry *)self cachedAliasToCNIDMap];
  [v9 logDictionary:v10];

  [(NSRecursiveLock *)self->_handlesLock lock];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = [(IMDChatRegistry *)self cachedAliasToCNIDMap];
  obj = [v11 allKeys];

  v12 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v12)
  {
    v13 = *v32;
    v14 = *MEMORY[0x277D18E68];
    do
    {
      v15 = 0;
      do
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v31 + 1) + 8 * v15);
        v17 = [(IMDChatRegistry *)self cachedAliasToCNIDMap];
        v18 = [v17 objectForKey:v16];

        if ([v18 isEqualToString:v14])
        {

          v18 = 0;
        }

        v19 = [(NSMutableDictionary *)self->_idToHandlesMap objectForKey:v16];
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v20 = [v19 countByEnumeratingWithState:&v27 objects:v36 count:16];
        if (v20)
        {
          v21 = *v28;
          do
          {
            v22 = 0;
            do
            {
              if (*v28 != v21)
              {
                objc_enumerationMutation(v19);
              }

              [*(*(&v27 + 1) + 8 * v22++) setCNContactID:v18];
            }

            while (v20 != v22);
            v20 = [v19 countByEnumeratingWithState:&v27 objects:v36 count:16];
          }

          while (v20);
        }

        ++v15;
      }

      while (v15 != v12);
      v12 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v12);
  }

  [(NSRecursiveLock *)self->_handlesLock unlock];
  v23 = *MEMORY[0x277D85DE8];
}

- (void)_updateCachedCNIDMapForHandles:(id)a3
{
  v4 = [(IMDChatRegistry *)self _aliasToCNIDMapForAliases:a3];
  v5 = v4;
  v9 = v4;
  if (!self->_cachedAliasToCNIDMap)
  {
    v6 = [v4 count];
    v5 = v9;
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
      cachedAliasToCNIDMap = self->_cachedAliasToCNIDMap;
      self->_cachedAliasToCNIDMap = v7;

      v5 = v9;
    }
  }

  [(NSMutableDictionary *)self->_cachedAliasToCNIDMap addEntriesFromDictionary:v5];
}

- (id)_cnIDForHandle:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_cachedAliasToCNIDMap objectForKeyedSubscript:v4];
  if (!v5)
  {
    v10[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [(IMDChatRegistry *)self _updateCachedCNIDMapForHandles:v6];

    v5 = [(NSMutableDictionary *)self->_cachedAliasToCNIDMap objectForKeyedSubscript:v4];
  }

  if ([v5 isEqualToString:*MEMORY[0x277D18E68]])
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)_hasSavedContactCardForHandle:(id)a3
{
  v3 = [(IMDChatRegistry *)self _cnIDForHandle:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)_extractHandlesFromMap:(id)a3 usingCNID:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  [v6 removeObject:*MEMORY[0x277D18E68]];
  v7 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v8 objectForKeyedSubscript:{v13, v18}];
        if ([v6 containsObject:v14])
        {
          v15 = [v7 objectForKeyedSubscript:v14];
          if (!v15)
          {
            v15 = objc_opt_new();
            [v7 setObject:v15 forKeyedSubscript:v14];
          }

          [v15 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_handlesWithChangedContactsOriginalMap:(id)a3 newMap:(id)a4
{
  v25 = self;
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = [v6 allKeys];
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        v14 = [v6 objectForKeyedSubscript:{v13, v25}];
        v15 = [v5 objectForKeyedSubscript:v13];
        if (([v14 isEqualToIgnoringCase:v15] & 1) == 0)
        {
          [v7 addObject:v13];
          [v26 addObject:v14];
          if (v15)
          {
            [v26 addObject:v15];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v10);
  }

  [v26 removeObject:*MEMORY[0x277D18E68]];
  v16 = [(IMDChatRegistry *)v25 _extractHandlesFromMap:v6 usingCNID:v26];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = [v16 allKeys];
  v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v28;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [v16 objectForKeyedSubscript:{*(*(&v27 + 1) + 8 * j), v25}];
        [v7 addObjectsFromArray:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v19);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_potentialGUIDsForIdentifier:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v5 = [v4 isOneChatEnabled];

  if (v5)
  {
    v6 = *MEMORY[0x277D1A5F8];
    v7 = IMCopyAnyServiceGUIDForChat();
    v22[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  }

  else
  {
    v9 = +[IMDChatRegistry supportedServiceNames];
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v9;
    v10 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v7);
          }

          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-;%@", *(*(&v17 + 1) + 8 * i), v3, v17];;
          [v8 addObject:v14];
        }

        v11 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)existingOneOnOneChatsWithIdentifiers:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v11 = [(IMDChatRegistry *)self _potentialGUIDsForIdentifier:v10];
        v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v21;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v21 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [(IMDChatRegistry *)self existingChatWithGUID:*(*(&v20 + 1) + 8 * j)];
              if (v16)
              {
                [v5 addObject:v16];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v13);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)existingGroupChatsContainingHandles:(id)a3
{
  v110 = *MEMORY[0x277D85DE8];
  v65 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v5 = [(IMDChatRegistry *)self allChats];
  v6 = [v5 countByEnumeratingWithState:&v99 objects:v109 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v100;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v100 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v99 + 1) + 8 * i);
        if ([v10 style] == 43)
        {
          v11 = [v10 displayName];
          v12 = [v11 length];

          if (v12)
          {
            v13 = [v10 displayName];
            v14 = [v13 length];

            v15 = v56;
            if (v14)
            {
              v16 = v56 == 0;
            }

            else
            {
              v16 = 1;
            }

            if (!v16 && v10 != 0)
            {
LABEL_19:
              CFArrayAppendValue(v15, v10);
              continue;
            }
          }

          else if (v4)
          {
            v15 = v4;
            if (v10)
            {
              goto LABEL_19;
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v99 objects:v109 count:16];
    }

    while (v7);
  }

  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = v4;
  v61 = [(__CFArray *)obj countByEnumeratingWithState:&v95 objects:v108 count:16];
  if (v61)
  {
    v59 = *v96;
    do
    {
      v19 = 0;
      do
      {
        if (*v96 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v63 = v19;
        v20 = *(*(&v95 + 1) + 8 * v19);
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        v94 = 0u;
        v71 = v65;
        v21 = [v71 countByEnumeratingWithState:&v91 objects:v107 count:16];
        if (v21)
        {
          v22 = v21;
          LOBYTE(v23) = 0;
          v24 = *v92;
          v67 = *v92;
          do
          {
            v25 = 0;
            v69 = v22;
            do
            {
              if (*v92 != v24)
              {
                objc_enumerationMutation(v71);
              }

              if (v23)
              {
                LOBYTE(v23) = 1;
              }

              else
              {
                v73 = v25;
                v26 = *(*(&v91 + 1) + 8 * v25);
                v89 = 0u;
                v90 = 0u;
                v87 = 0u;
                v88 = 0u;
                v27 = [v20 participants];
                v28 = [v27 countByEnumeratingWithState:&v87 objects:v106 count:16];
                if (v28)
                {
                  v29 = v28;
                  v23 = 0;
                  v30 = *v88;
                  do
                  {
                    for (j = 0; j != v29; ++j)
                    {
                      if (*v88 != v30)
                      {
                        objc_enumerationMutation(v27);
                      }

                      v32 = [*(*(&v87 + 1) + 8 * j) ID];
                      v33 = [v32 isEqualToIgnoringCase:v26];

                      v34 = v33 ^ 1 | v23;
                      v23 |= v34 ^ 1;
                      if ((v34 & 1) == 0 && v18 && v20)
                      {
                        CFArrayAppendValue(v18, v20);
                        v23 = 1;
                      }
                    }

                    v29 = [v27 countByEnumeratingWithState:&v87 objects:v106 count:16];
                  }

                  while (v29);
                }

                else
                {
                  LOBYTE(v23) = 0;
                }

                v24 = v67;
                v22 = v69;
                v25 = v73;
              }

              ++v25;
            }

            while (v25 != v22);
            v22 = [v71 countByEnumeratingWithState:&v91 objects:v107 count:16];
          }

          while (v22);
        }

        v19 = v63 + 1;
      }

      while (v63 + 1 != v61);
      v61 = [(__CFArray *)obj countByEnumeratingWithState:&v95 objects:v108 count:16];
    }

    while (v61);
  }

  v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v57 = v56;
  v62 = [(__CFArray *)v57 countByEnumeratingWithState:&v83 objects:v105 count:16];
  if (v62)
  {
    v60 = *v84;
    v66 = v18;
    do
    {
      v36 = 0;
      do
      {
        if (*v84 != v60)
        {
          objc_enumerationMutation(v57);
        }

        v64 = v36;
        v37 = *(*(&v83 + 1) + 8 * v36);
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v72 = v65;
        v38 = [v72 countByEnumeratingWithState:&v79 objects:v104 count:16];
        if (v38)
        {
          v39 = v38;
          LOBYTE(v40) = 0;
          v41 = *v80;
          v68 = *v80;
          do
          {
            v42 = 0;
            v70 = v39;
            do
            {
              if (*v80 != v41)
              {
                objc_enumerationMutation(v72);
              }

              if (v40)
              {
                LOBYTE(v40) = 1;
              }

              else
              {
                v74 = v42;
                v43 = *(*(&v79 + 1) + 8 * v42);
                v77 = 0u;
                v78 = 0u;
                v75 = 0u;
                v76 = 0u;
                v44 = [v37 participants];
                v45 = [v44 countByEnumeratingWithState:&v75 objects:v103 count:16];
                if (v45)
                {
                  v46 = v45;
                  v40 = 0;
                  v47 = *v76;
                  do
                  {
                    for (k = 0; k != v46; ++k)
                    {
                      if (*v76 != v47)
                      {
                        objc_enumerationMutation(v44);
                      }

                      v49 = [*(*(&v75 + 1) + 8 * k) ID];
                      v50 = [v49 isEqualToIgnoringCase:v43];

                      v51 = v50 ^ 1 | v40;
                      v40 |= v51 ^ 1;
                      if ((v51 & 1) == 0 && v35 && v37)
                      {
                        CFArrayAppendValue(v35, v37);
                        v40 = 1;
                      }
                    }

                    v46 = [v44 countByEnumeratingWithState:&v75 objects:v103 count:16];
                  }

                  while (v46);
                }

                else
                {
                  LOBYTE(v40) = 0;
                }

                v18 = v66;
                v41 = v68;
                v39 = v70;
                v42 = v74;
              }

              ++v42;
            }

            while (v42 != v39);
            v39 = [v72 countByEnumeratingWithState:&v79 objects:v104 count:16];
          }

          while (v39);
        }

        v36 = v64 + 1;
      }

      while (v64 + 1 != v62);
      v62 = [(__CFArray *)v57 countByEnumeratingWithState:&v83 objects:v105 count:16];
    }

    while (v62);
  }

  v52 = [MEMORY[0x277CBEB38] dictionary];
  v53 = v52;
  if (v18)
  {
    [v52 setObject:v18 forKey:@"UnnamedGroupChats"];
  }

  if (v35)
  {
    [v53 setObject:v35 forKey:@"NamedGroupChats"];
  }

  v54 = *MEMORY[0x277D85DE8];

  return v53;
}

- (void)_startObservingAcceptedContactChanges
{
  if (IMSharedHelperContactsBasedMergingEnabled())
  {
    objc_initWeak(location, self);
    v3 = MEMORY[0x277D1A890];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_22B616A0C;
    v7[3] = &unk_278705388;
    objc_copyWeak(&v8, location);
    v4 = [v3 notifierWithBlock:v7];
    [(IMDChatRegistry *)self setAcceptedContactsChangeNotifier:v4];

    v5 = [(IMDChatRegistry *)self acceptedContactsChangeNotifier];
    [v5 startObserving];

    objc_destroyWeak(&v8);
    objc_destroyWeak(location);
  }

  else if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Contacts based merging is disabled. Not establishing an accepted contact change observer.", location, 2u);
    }
  }
}

- (void)_performCheckForContactChangesWithChangeType:(int64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = IMSharedHelperContactsBasedMergingEnabled();
  v6 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v12 = 134217984;
        v13 = a3;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Contacts changed with change type: %ld", &v12, 0xCu);
      }
    }

    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__checkForContactChangesWithChangeType_ object:v8];
    [(IMDChatRegistry *)self performSelector:sel__checkForContactChangesWithChangeType_ withObject:v8 afterDelay:0.5];
    v9 = +[IMDNicknameController sharedInstance];
    [v9 purgeUnknownSenderRecordInfoIfNeeded];
  }

  else if (v6)
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Contacts based merging is disabled.", &v12, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_checkForContactChangesWithChangeType:(id)a3
{
  if ([a3 integerValue] == 1)
  {

    MEMORY[0x2821F9670](self, sel__chatGUIDsToRemergeForAcceptedContactChange_);
  }

  else
  {

    MEMORY[0x2821F9670](self, sel__chatGUIDsToRemergeForContactChange_);
  }
}

- (void)_chatGUIDsToRemergeForContactChange:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22B616F08;
  v6[3] = &unk_2787065D8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(IMDChatRegistry *)self _updateAliasToCNIDMapAndHistoryTokenWithCompletionHandler:v6];
}

- (void)_chatGUIDsToRemergeForAcceptedContactChange:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22B61711C;
  v6[3] = &unk_2787065D8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(IMDChatRegistry *)self _updateAcceptedContactsInAliasToCNIDMapWithCompletionHandler:v6];
}

- (void)_chatGUIDsThatNeedRemerging:(id *)a3 chatDictionaryArray:(id *)a4 aliasMap:(id)a5
{
  v80 = *MEMORY[0x277D85DE8];
  v49 = a5;
  v56 = self;
  v6 = [(IMDChatRegistry *)self cachedAliasToCNIDMap];
  v50 = [(IMDChatRegistry *)v56 _handlesWithChangedContactsOriginalMap:v6 newMap:v49];

  if ([v50 count])
  {
    v48 = [MEMORY[0x277CBEB18] array];
    v7 = [v50 allObjects];
    v8 = [(IMDChatRegistry *)v56 existingOneOnOneChatsWithIdentifiers:v7];
    [v48 addObjectsFromArray:v8];

    v9 = [v50 allObjects];
    v10 = [(IMDChatRegistry *)v56 existingGroupChatsContainingHandles:v9];
    v11 = [v10 objectForKey:@"UnnamedGroupChats"];
    [v48 addObjectsFromArray:v11];

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v48, "count")}];
        *buf = 138412290;
        v74 = v13;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "# chats that need update after contacts changed notification %@", buf, 0xCu);
      }
    }

    v47 = [v49 mutableCopy];
    [(IMDChatRegistry *)v56 setCachedAliasToCNIDMap:v47];
    v51 = [(IMDChatRegistry *)v56 blackholedChats];
    v58 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = v50;
    v54 = [obj countByEnumeratingWithState:&v69 objects:v79 count:16];
    if (v54)
    {
      v53 = *v70;
      v60 = *MEMORY[0x277D18E68];
      do
      {
        v14 = 0;
        do
        {
          if (*v70 != v53)
          {
            v15 = v14;
            objc_enumerationMutation(obj);
            v14 = v15;
          }

          v55 = v14;
          v16 = *(*(&v69 + 1) + 8 * v14);
          v17 = [(IMDChatRegistry *)v56 idToHandlesMap];
          v18 = [v17 objectForKeyedSubscript:v16];

          v19 = [(IMDChatRegistry *)v56 cachedAliasToCNIDMap];
          v20 = [v19 objectForKeyedSubscript:v16];

          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v59 = v18;
          v21 = [v59 countByEnumeratingWithState:&v65 objects:v78 count:16];
          if (v21)
          {
            v22 = *v66;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v66 != v22)
                {
                  objc_enumerationMutation(v59);
                }

                v24 = *(*(&v65 + 1) + 8 * i);
                if ([v20 isEqualToString:v60])
                {
                  if (IMOSLoggingEnabled())
                  {
                    v25 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                    {
                      v26 = [v24 ID];
                      *buf = 138412290;
                      v74 = v26;
                      _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "No CNContact for alias %@", buf, 0xCu);
                    }
                  }

                  if (IMOSLoggingEnabled())
                  {
                    v27 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v74 = v16;
                      _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Clean up nickname for alias %@", buf, 0xCu);
                    }
                  }

                  if (v16)
                  {
                    [v58 addObject:v16];
                  }

                  v20 = 0;
                }

                [v24 setCNContactID:v20];
              }

              v21 = [v59 countByEnumeratingWithState:&v65 objects:v78 count:16];
            }

            while (v21);
          }

          if (([v20 isEqualToString:v60] & 1) == 0)
          {
            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            v57 = v51;
            v28 = [v57 countByEnumeratingWithState:&v61 objects:v77 count:16];
            if (v28)
            {
              v29 = *v62;
              do
              {
                for (j = 0; j != v28; ++j)
                {
                  if (*v62 != v29)
                  {
                    objc_enumerationMutation(v57);
                  }

                  v31 = *(*(&v61 + 1) + 8 * j);
                  v32 = [v31 participants];
                  v33 = [v32 __imArrayByApplyingBlock:&unk_283F1A648];

                  if ([v33 containsObject:v16])
                  {
                    if (IMOSLoggingEnabled())
                    {
                      v34 = OSLogHandleForIMFoundationCategory();
                      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                      {
                        v35 = [v31 guid];
                        *buf = 138412546;
                        v74 = v16;
                        v75 = 2112;
                        v76 = v35;
                        _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "Hawking: New contact (%@) added, removing chat (%@) from blackhole.", buf, 0x16u);
                      }
                    }

                    [v31 updateIsBlackholed:0];
                    v36 = [(IMDChatRegistry *)v56 _sharedMessageStore];
                    v37 = [v31 lastMessage];
                    v38 = [v37 guid];
                    [v36 markMessageGUIDUnread:v38];

                    v39 = [v31 participants];
                    LODWORD(v36) = [v39 count] == 1;

                    v40 = [MEMORY[0x277D1AAA8] sharedInstance];
                    v41 = v40;
                    if (v36)
                    {
                      v42 = 24;
                    }

                    else
                    {
                      v42 = 25;
                    }

                    [v40 trackSpamEvent:v42];
                  }
                }

                v28 = [v57 countByEnumeratingWithState:&v61 objects:v77 count:16];
              }

              while (v28);
            }
          }

          v14 = v55 + 1;
        }

        while (v55 + 1 != v54);
        v54 = [obj countByEnumeratingWithState:&v69 objects:v79 count:16];
      }

      while (v54);
    }

    v43 = +[IMDNicknameController sharedInstance];
    [v43 cleanUpNicknameForIDs:v58];

    [(IMDChatRegistry *)v56 _serializeChatsForRemerge:v48 guidsThatNeedRemerging:a3 chatDictionaryArray:a4];
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (void)_chatGUIDsThatNeedRemerging:(id *)a3 chatDictionaryArray:(id *)a4 oldPersonCentricID:(id)a5
{
  v13 = a5;
  if ([v13 length])
  {
    v8 = [(IMDChatRegistry *)self personCentricGroupedChatsCache];
    v9 = [v8 valueForKey:v13];

    v10 = [(IMDChatRegistry *)self personCentricGroupedChatsCache];
    [v10 removeObjectForKey:v13];

    if ([v9 count])
    {
      v11 = [(IMDChatRegistry *)self groupChatsBasedOnIdentity:v9];
      v12 = [(IMDChatRegistry *)self personCentricGroupedChatsCache];
      [v12 addEntriesFromDictionary:v11];

      [(IMDChatRegistry *)self _serializeChatsForRemerge:v9 guidsThatNeedRemerging:a3 chatDictionaryArray:a4];
    }
  }
}

- (void)_serializeChatsForRemerge:(id)a3 guidsThatNeedRemerging:(id *)a4 chatDictionaryArray:(id *)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([v6 count])
  {
    if (a4)
    {
      v19 = v6;
      *a4 = [MEMORY[0x277CBEB18] array];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
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
            if (IMOSLoggingEnabled())
            {
              v12 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
              {
                v13 = [v11 guid];
                *buf = 138412290;
                v27 = v13;
                _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Chat %@ needs to be merged / un-merged & updated in spotlight", buf, 0xCu);
              }
            }

            v14 = *a4;
            v15 = [v11 guid];
            [v14 addObject:v15];
          }

          v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
        }

        while (v8);
      }

      v6 = v19;
    }

    if (a5)
    {
      *a5 = [(IMDChatRegistry *)self personCentricGroupedChatsArrayWithMaximumNumberOfChats:0x7FFFFFFFFFFFFFFFLL skipsLastMessageLoading:0 usingChats:v6 useCachedChatGroups:0 includingPinnedChatIdentifiers:0 repairInconsistentMergedChats:0];
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*a5, "count")}];
          *buf = 138412290;
          v27 = v17;
          _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "No of entries in chat dictionary %@", buf, 0xCu);
        }
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updateMeCardHasUpdatedForAllChats
{
  v15 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Update MeCard for all IMDChats", buf, 2u);
    }
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [(IMDChatRegistry *)self allChats];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v7++) meCardHasUpdated];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)moveMessagesWithGUIDsToRecentlyDeleted:(id)a3 deleteDate:(id)a4
{
  v5 = MEMORY[0x277D18EB0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 database];
  [v8 moveMessageRecordsToRecoveryForMessageGUIDs:v7 deleteDate:v6];
}

- (void)moveMessagesInChatsWithGUIDsToRecentlyDeleted:(id)a3 deleteDate:(id)a4
{
  v5 = MEMORY[0x277D18EB0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 database];
  [v8 moveMessageRecordsToRecoveryForChatRecordsWithGUIDs:v7 deleteDate:v6];
}

- (void)recoverMessagesWithChatGUIDs:(id)a3
{
  v3 = MEMORY[0x277D18EB0];
  v4 = a3;
  v5 = [v3 database];
  [v5 recoverMessageRecordsForChatRecordsWithGUIDs:v4];
}

- (id)_bestServiceSessionForService:(id)a3 accountID:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = +[IMDServiceController sharedController];
    v8 = [v7 serviceWithName:v5];

    v9 = +[IMDAccountController sharedInstance];
    v10 = [v9 activeAccountsForService:v8];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          v17 = [v16 session];

          if (v17)
          {
            if (!v6 || ([v8 supportsOneSessionForAllAccounts] & 1) != 0 || (objc_msgSend(v16, "accountID"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v6, "isEqualToString:", v18), v18, (v19 & 1) != 0))
            {
              v20 = [v16 session];
              goto LABEL_17;
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
        v20 = 0;
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v20 = 0;
    }

LABEL_17:
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)permanentlyDeleteRecoverableMessagesInChatsWithGUIDs:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277D18EB0];
  v8 = a3;
  v9 = [v7 synchronousDatabase];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B618354;
  v11[3] = &unk_278706330;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [v9 permanentlyDeleteRecoverableMessagesInChatsWithGUIDs:v8 completionHandler:v11];
}

- (id)recoverableMessagesMetadataPendingCloudKitSaveWithLimit:(unint64_t)a3
{
  v4 = [MEMORY[0x277D18EB0] synchronousDatabase];
  v5 = [v4 recoverableMessagesMetadataPendingCloudKitSaveWithLimit:a3 filter:3];

  return v5;
}

- (id)recoverableMessagesMetadataPendingCloudKitDeleteWithLimit:(unint64_t)a3
{
  v4 = [MEMORY[0x277D18EB0] synchronousDatabase];
  v5 = [v4 recoverableMessagesMetadataPendingCloudKitDeleteWithLimit:a3];

  return v5;
}

- (void)clearRecoverableMessageTombStones
{
  v2 = [MEMORY[0x277D18EB0] database];
  [v2 clearRecoverableMessageTombStones];
}

- (void)updateRecoverableMessageSyncState:(int64_t)a3 forMessageRowID:(int64_t)a4 onPartIndex:(int64_t)a5
{
  v8 = [MEMORY[0x277D18EB0] database];
  [v8 updateRecoverableMessageSyncState:a3 forMessageRowID:a4 onPartIndex:a5];
}

- (void)_triggerRemergeForPersonCentricID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0;
  v13 = 0;
  [(IMDChatRegistry *)self _chatGUIDsThatNeedRemerging:&v13 chatDictionaryArray:&v12 oldPersonCentricID:v4];
  v5 = v13;
  v6 = v12;
  if ([v5 count])
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v5 count];
        *buf = 67109378;
        v15 = v8;
        v16 = 2112;
        v17 = v4;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Broadcasting remerge for %d chats, invalidated personCentricID=%@", buf, 0x12u);
      }
    }

    v9 = +[IMDBroadcastController sharedProvider];
    v10 = [v9 broadcasterForChatListeners];
    [v10 chatsNeedRemerging:v5 groupedChats:v6];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_remergeChatsWithParticipantIDsSets:(id)a3
{
  v4 = a3;
  v5 = [(IMDChatRegistry *)self pendingParticipantIDSetsForRemerge];
  [v5 addObjectsFromArray:v4];

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__remergeChatsWithPendingParticipantIDSets object:0];

  [(IMDChatRegistry *)self performSelector:sel__remergeChatsWithPendingParticipantIDSets withObject:0 afterDelay:0.0];
}

- (void)_remergeChatsWithPendingParticipantIDSets
{
  v47 = *MEMORY[0x277D85DE8];
  v30 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = [(IMDChatRegistry *)self pendingParticipantIDSetsForRemerge];
  v4 = [v3 allObjects];

  v5 = [(IMDChatRegistry *)self pendingParticipantIDSetsForRemerge];
  [v5 removeAllObjects];

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v8)
  {
    v9 = *v40;
    do
    {
      v10 = 0;
      do
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v39 + 1) + 8 * v10);
        v12 = [(IMDChatRegistry *)self cachedAliasToCNIDMap];
        v13 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v11];
        v14 = [(IMDChatRegistry *)self _extractHandlesFromMap:v12 usingCNID:v13];
        [v6 addEntriesFromDictionary:v14];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v39 objects:v46 count:16];
    }

    while (v8);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v7;
  v15 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v15)
  {
    v16 = *v36;
    do
    {
      v17 = 0;
      do
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v35 + 1) + 8 * v17);
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = sub_22B6196A0;
        v33[3] = &unk_278706628;
        v34 = v6;
        v19 = [v18 __imArrayByApplyingBlock:v33];
        v20 = [(IMDChatRegistry *)self existingChatsForGroupedIDs:v19 displayName:0 style:43];
        [v30 addObjectsFromArray:v20];

        ++v17;
      }

      while (v15 != v17);
      v15 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v15);
  }

  v21 = [v30 allObjects];
  v31 = 0;
  v32 = 0;
  [(IMDChatRegistry *)self _serializeChatsForRemerge:v21 guidsThatNeedRemerging:&v32 chatDictionaryArray:&v31];
  v22 = v32;
  v23 = v31;

  if ([v22 count])
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [v22 count];
        *buf = 67109120;
        v44 = v25;
        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Broadcasting remerge for %d chats", buf, 8u);
      }
    }

    v26 = +[IMDBroadcastController sharedProvider];
    v27 = [v26 broadcasterForChatListeners];
    [v27 chatsNeedRemerging:v22 groupedChats:v23];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)repairInconsistentMergedChatsIfNecessary:(id)a3
{
  v4 = a3;
  [(IMDChatRegistry *)self _repairInconsistentGroupPhotoGuidAcrossMergedChatsIfNecessary:v4];
  [(IMDChatRegistry *)self _repairInconsistentJoinStatesAcrossMergedChatsIfNecessary:v4];
}

- (BOOL)_hasInconsistentGroupPhotoGUIDAcrossMergedChats:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count] >= 2)
  {
    v5 = [v3 firstObject];
    v6 = [v5 groupPhotoGuid];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v3;
    v4 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v7);
          }

          v10 = [*(*(&v15 + 1) + 8 * i) groupPhotoGuid];
          v11 = v10;
          if (v10 != v6)
          {
            v12 = !v10 || v6 == 0;
            if (v12 || ([v10 isEqualToString:v6] & 1) == 0)
            {

              LOBYTE(v4) = 1;
              goto LABEL_18;
            }
          }
        }

        v4 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)_preferredFileTransferFromGroupPhotoGUIDs:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = a3;
  v3 = 0;
  v4 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v4)
  {
    v6 = *v32;
    *&v5 = 138412290;
    v29 = v5;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        v9 = +[IMDAttachmentStore sharedInstance];
        v10 = [v9 attachmentWithGUID:v8];

        v11 = IMOSLoggingEnabled();
        if (v10)
        {
          if (v11)
          {
            v12 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v36 = v8;
              v37 = 2112;
              v38 = v10;
              _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Have file transfer matching groupPhotoGuid: %@. FileTransfer: %@", buf, 0x16u);
            }
          }

          if (v3)
          {
            v13 = [v10 createdDate];
            if (v13)
            {
              v14 = [v3 createdDate];
              v15 = v14;
              if (!v14 || [v14 compare:v13] == -1)
              {
                if (IMOSLoggingEnabled())
                {
                  v20 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                  {
                    v21 = [v10 guid];
                    v22 = [v3 guid];
                    *buf = 138412546;
                    v36 = v21;
                    v37 = 2112;
                    v38 = v22;
                    _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Preferring %@ over %@ because the creation date is newer.", buf, 0x16u);
                  }
                }

                v23 = v10;

                v3 = v23;
              }

              else if (IMOSLoggingEnabled())
              {
                v16 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
                {
                  v17 = [v10 guid];
                  v18 = [v3 guid];
                  *buf = 138412546;
                  v36 = v17;
                  v37 = 2112;
                  v38 = v18;
                  _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Not preferring %@ over %@ because the creation date is older.", buf, 0x16u);
                }
              }
            }

            else if (IMOSLoggingEnabled())
            {
              v24 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                v25 = [v10 guid];
                *buf = v29;
                v36 = v25;
                _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Not preferring %@ because it does not have a creation date", buf, 0xCu);
              }
            }
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v26 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                *buf = v29;
                v36 = v8;
                _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Accepting groupPhotoGuid %@ as the initial preferred group photo.", buf, 0xCu);
              }
            }

            v3 = v10;
          }
        }

        else if (v11)
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = v29;
            v36 = v8;
            _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Could not find file transfer matching group photo guid: %@", buf, 0xCu);
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v4);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_repairInconsistentGroupPhotoGuidAcrossMergedChatsIfNecessary:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(IMDChatRegistry *)self _hasInconsistentGroupPhotoGUIDAcrossMergedChats:v4])
  {
    v34 = self;
    v32 = v4;
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Group photo inconsistency detected among merged chats. Attempting to repair", buf, 2u);
      }
    }

    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v7 = v32;
    v8 = [v7 countByEnumeratingWithState:&v39 objects:v50 count:16];
    if (v8)
    {
      v9 = *v40;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v40 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v39 + 1) + 8 * i);
          v12 = [v11 groupPhotoGuid];
          v13 = [v11 guid];
          if (IMOSLoggingEnabled())
          {
            v14 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v44 = v13;
              v45 = 2112;
              v46 = v12;
              _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "    Chat %@ has groupPhotoGuid %@", buf, 0x16u);
            }
          }

          if (v12)
          {
            [v6 addObject:v12];
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v39 objects:v50 count:16];
      }

      while (v8);
    }

    v15 = [(IMDChatRegistry *)v34 _preferredFileTransferFromGroupPhotoGUIDs:v6];
    v33 = v15;
    if (v15)
    {
      v16 = [v15 guid];
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v44 = v16;
          v45 = 2112;
          v46 = v33;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "The preferred groupPhotoGuid is %@. Transfer: %@", buf, 0x16u);
        }
      }

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v18 = v7;
      v19 = [v18 countByEnumeratingWithState:&v35 objects:v49 count:16];
      if (v19)
      {
        v20 = *v36;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v36 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = *(*(&v35 + 1) + 8 * j);
            v23 = [v22 guid];
            v24 = [v22 groupPhotoGuid];
            v25 = [v24 isEqualToString:v16];
            v26 = IMOSLoggingEnabled();
            if (v25)
            {
              if (v26)
              {
                v27 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v44 = v23;
                  v45 = 2112;
                  v46 = v24;
                  _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Chat %@ already had groupPhotoGuid %@, leaving as is.", buf, 0x16u);
                }
              }
            }

            else
            {
              if (v26)
              {
                v28 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412802;
                  v44 = v16;
                  v45 = 2112;
                  v46 = v23;
                  v47 = 2112;
                  v48 = v24;
                  _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Applying groupPhotoGuid %@ to chat %@ which previously had groupPhotoGuid %@", buf, 0x20u);
                }
              }

              [v22 updateGroupPhotoGuid:v16];
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v35 objects:v49 count:16];
        }

        while (v19);
      }

      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Completed repair of group photo inconsistency.", buf, 2u);
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Could not determine a preferred group photo among inconsistent merged chats. Leaving inconsistency as is.", buf, 2u);
      }
    }

    v4 = v32;
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (BOOL)_hasInconsistentJoinStateAcrossMergedChats:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count] >= 2)
  {
    v5 = [v3 firstObject];
    v6 = [v5 state];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if ([*(*(&v14 + 1) + 8 * i) state] != v6)
          {
            v4 = 1;
            goto LABEL_13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v4 = 0;
LABEL_13:
  }

  else
  {
    v4 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)_repairInconsistentJoinStatesAcrossMergedChatsIfNecessary:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v33 = a3;
  if ([(IMDChatRegistry *)self _hasInconsistentJoinStateAcrossMergedChats:?])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Join state inconsistency detected among merged chats. Attempting to repair", buf, 2u);
      }
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v5 = v33;
    v6 = [v5 countByEnumeratingWithState:&v38 objects:v45 count:16];
    if (v6)
    {
      v7 = *v39;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v39 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v38 + 1) + 8 * i);
          v10 = [v9 service];
          v11 = [v10 supportsMutatingGroupMembers];

          if (v11)
          {
            v18 = [v9 state];

            goto LABEL_33;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v38 objects:v45 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v12 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v13 = [v12 isMergeBusinessSenderIndiaEnabled];

    if (v13)
    {
      v14 = [v5 firstObject];
      v15 = [v14 isMergedBusinessThread];
      v16 = IMOSLoggingEnabled();
      if (v15)
      {
        if (v16)
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "First Chat is a mergedBusinessThread. Setting all chats to ReadOnly.", buf, 2u);
          }
        }

        v18 = 4;
      }

      else
      {
        if (v16)
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Couldn't find a chat whose service supports group mutability. Setting all chats to joined.", buf, 2u);
          }
        }

        v18 = 3;
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Couldn't find a chat whose service supports group mutability. Setting all chats to joined.", buf, 2u);
        }
      }

      v18 = 3;
    }

LABEL_33:
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v21 = v5;
    v22 = [v21 countByEnumeratingWithState:&v34 objects:v44 count:16];
    v23 = 0;
    if (v22)
    {
      v24 = *v35;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v35 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v34 + 1) + 8 * j);
          if ([v26 state] != v18)
          {
            if (IMOSLoggingEnabled())
            {
              v27 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                v28 = [v26 guid];
                *buf = 138412546;
                *v43 = v28;
                *&v43[8] = 2048;
                *&v43[10] = v18;
                _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Repairing join state of %@ to %ld", buf, 0x16u);
              }
            }

            [v26 setState:v18];
            v29 = +[IMDChatStore sharedInstance];
            [v29 storeChat:v26];

            ++v23;
          }
        }

        v22 = [v21 countByEnumeratingWithState:&v34 objects:v44 count:16];
      }

      while (v22);
    }

    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = [v21 count];
        *buf = 67109376;
        *v43 = v23;
        *&v43[4] = 2048;
        *&v43[6] = v31;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Repaired join state for %d of %lu chats", buf, 0x12u);
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)setUpInitialConversationManager
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Setting up conversation manager for imagent", buf, 2u);
    }
  }

  v4 = [(IMDChatRegistry *)self conversationManager];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22B6E0028;
  v5[3] = &unk_278702FF0;
  v5[4] = self;
  [v4 registerWithCompletionHandler:v5];
}

- (id)_activeTUConversations
{
  v2 = [(IMDChatRegistry *)self conversationManager];
  v3 = [v2 activeConversations];

  return v3;
}

- (void)updateFaceTimeGroupName:(id)a3
{
  v9 = a3;
  v4 = [(IMDChatRegistry *)self _tuConversationForChat:?];
  if (v4)
  {
    v5 = [(IMDChatRegistry *)self conversationManager];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(IMDChatRegistry *)self conversationManager];
      v8 = [v9 displayName];
      [v7 updateMessagesGroupName:v8 onConversation:v4];
    }
  }
}

- (void)updateFaceTimeGroupPhoto:(id)a3
{
  v4 = [(IMDChatRegistry *)self _tuConversationForChat:a3];
  if (v4)
  {
    v8 = v4;
    v5 = [(IMDChatRegistry *)self conversationManager];
    v6 = objc_opt_respondsToSelector();

    v4 = v8;
    if (v6)
    {
      v7 = [(IMDChatRegistry *)self conversationManager];
      [v7 conversationUpdateMessagesGroupPhoto:v8];

      v4 = v8;
    }
  }
}

- (id)_oneToOneChatForRemoteHandle:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v26 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = MEMORY[0x277CCABB0];
      v6 = [(IMDChatRegistry *)self chats];
      v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
      *buf = 138412290;
      v32 = v7;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Chats count: %@", buf, 0xCu);
    }
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [(IMDChatRegistry *)self chats];
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (!v9)
  {
    goto LABEL_22;
  }

  v11 = *v28;
  v12 = MEMORY[0x277D1A620];
  *&v10 = 138412546;
  v25 = v10;
  while (2)
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v27 + 1) + 8 * i);
      v15 = [v14 serviceName];
      if ([v15 isEqualToString:*v12])
      {
        v16 = [v14 participants];
        v17 = [v16 count] == 1;

        if (!v17)
        {
          continue;
        }

        v18 = MEMORY[0x277D6EEE8];
        v19 = [v14 participants];
        v20 = [v19 firstObject];
        v21 = [v20 ID];
        v15 = [v18 normalizedHandleWithDestinationID:v21];

        if (IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = v25;
            v32 = v15;
            v33 = 2112;
            v34 = v26;
            _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "chat handle %@ vs conversation handle %@", buf, 0x16u);
          }
        }

        if (TUHandlesAreCanonicallyEqual())
        {
          v9 = v14;

          goto LABEL_22;
        }
      }
    }

    v9 = [v8 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_22:

  v23 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_chatForTUGroupID:(id)a3 participants:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(IMDChatRegistry *)self existingChatsWithGroupID:v6];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_22B4D7850;
  v30 = sub_22B4D7990;
  v31 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_22B6E0B84;
  v25[3] = &unk_2787064F8;
  v25[4] = &v26;
  [v8 enumerateObjectsUsingBlock:v25];
  v9 = [v27[5] participants];
  if (v27[5] && (v10 = [v7 count], v10 == objc_msgSend(v9, "count")))
  {
    v11 = MEMORY[0x277CBEB58];
    v12 = [v9 __imArrayByApplyingBlock:&unk_283F1B3E8];
    v13 = [v11 setWithArray:v12];

    v14 = [v7 __imSetByApplyingBlock:&unk_283F1B408];
    [v13 minusSet:v14];
    if ([v13 count])
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v33 = v9;
          v34 = 2112;
          v35 = v7;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "While groupID matched, Messages participants (%@) did not equal TUConversation remoteMembers (%@)", buf, 0x16u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v33 = v13;
          _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "different handles: (%@)", buf, 0xCu);
        }
      }

      v17 = v27[5];
      v27[5] = 0;
    }

    else if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [v27[5] chatIdentifier];
        v21 = [v27[5] groupID];
        *buf = 138412802;
        v33 = v20;
        v34 = 2112;
        v35 = v6;
        v36 = 2112;
        v37 = v21;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "We mapped a chat %@ to a TUConversation with messagesGroupUUID %@ for chat groupID %@", buf, 0x20u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v33 = v9;
        v34 = 2112;
        v35 = v7;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "While groupID matched, Messages participants (%@) count did not equal TUConversation remoteMembers (%@)", buf, 0x16u);
      }
    }

    v13 = v27[5];
    v27[5] = 0;
  }

  v22 = v27[5];
  _Block_object_dispose(&v26, 8);

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)_chatForTUConversation:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 messagesGroupUUID];

  if (v5)
  {
    v6 = [v4 messagesGroupUUID];
    v7 = [v6 UUIDString];
    v8 = [v4 __im_filteredRemoteMembers];
    v9 = [(IMDChatRegistry *)self _chatForTUGroupID:v7 participants:v8];

    goto LABEL_13;
  }

  v10 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v11 = [v10 isAVLessSharePlayEnabled];

  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = [v4 remoteMembers];
  if ([v12 count] != 1)
  {

    goto LABEL_12;
  }

  v13 = [v4 avMode];

  if (v13)
  {
LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = v4;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Attempting to map 1x1 chat for conversation: %@", &v20, 0xCu);
    }
  }

  v15 = [v4 remoteMembers];
  v16 = [v15 anyObject];
  v17 = [v16 handle];
  v9 = [(IMDChatRegistry *)self _oneToOneChatForRemoteHandle:v17];

LABEL_13:
  v18 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_tuConversationForChat:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_22B4D7850;
  v34 = sub_22B4D7990;
  v35 = 0;
  v5 = [(IMDChatRegistry *)self _activeTUConversations];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = sub_22B6E131C;
  v27 = &unk_278708800;
  v6 = v4;
  v28 = v6;
  v29 = &v30;
  [v5 enumerateObjectsUsingBlock:&v24];

  v7 = [v31[5] remoteMembers];
  v8 = [v6 participants];
  v9 = [v7 count];
  if (v9 == [v8 count])
  {
    v10 = MEMORY[0x277CBEB58];
    v11 = [v8 __imArrayByApplyingBlock:&unk_283F1B428];
    v12 = [v10 setWithArray:v11];

    v13 = [v7 __imSetByApplyingBlock:&unk_283F1B448];
    [v12 minusSet:v13];
    if ([v12 count])
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v37 = v8;
          v38 = 2112;
          v39 = v7;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "While groupID matched, Messages participants (%@) did not equal TUConversation remoteMembers (%@)", buf, 0x16u);
        }
      }

      v15 = v31[5];
      v31[5] = 0;
    }

    else if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [v6 chatIdentifier];
        v19 = [v31[5] messagesGroupUUID];
        v20 = [v6 groupID];
        *buf = 138412802;
        v37 = v18;
        v38 = 2112;
        v39 = v19;
        v40 = 2112;
        v41 = v20;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "We mapped a chat %@ to a TUConversation with messagesGroupUUID %@ for chat groupID %@", buf, 0x20u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v37 = v8;
        v38 = 2112;
        v39 = v7;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "While groupID matched, Messages participants (%@) count did not equal TUConversation remoteMembers (%@)", buf, 0x16u);
      }
    }

    v12 = v31[5];
    v31[5] = 0;
  }

  v21 = v31[5];
  _Block_object_dispose(&v30, 8);

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_initiatorForConversation:(id)a3 chat:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v5 isLocallyCreated])
  {
    v7 = [v6 lastAddressedLocalHandle];
    if (!v7)
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Not able to find lastAddressedLocalHandle, falling back to account's loginID", &v18, 2u);
        }
      }

      v9 = [v6 account];
      v10 = [v9 loginID];
      v7 = [v10 _stripFZIDPrefix];
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [v5 performSelector:sel_initiator];
    }

    else
    {
      v12 = [v5 remoteMembers];
      v13 = [v12 anyObject];

      v14 = [v13 handles];
      v11 = [v14 anyObject];
    }

    v7 = [v11 value];
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = v7;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Conversation initiator handle value %@", &v18, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_conversationItemForChat:(id)a3 conversation:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v33 = a4;
  v7 = [IMDChatRegistry _initiatorForConversation:"_initiatorForConversation:chat:" chat:?];
  if (v7)
  {
    v8 = [v33 UUID];
    v32 = [v8 UUIDString];

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v42 = v32;
        v43 = 2112;
        v44 = v33;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "TUConversation UUID %@ for conversation %@", buf, 0x16u);
      }
    }

    v10 = objc_alloc(MEMORY[0x277D1AC80]);
    v39 = *MEMORY[0x277D193A8];
    v40 = v7;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v12 = [v6 account];
    v13 = [v12 loginID];
    v14 = [v6 account];
    v15 = [v14 loginID];
    v16 = [v6 serviceName];
    v17 = [v6 roomName];
    v18 = [v10 initWithSenderInfo:v11 time:0 guid:v32 messageID:0 account:v13 accountID:v15 service:v16 handle:v7 roomName:v17 unformattedID:0 countryCode:0 type:6];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v19 = [v6 participants];
    v20 = [v19 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v20)
    {
      v21 = *v35;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v35 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v34 + 1) + 8 * i);
          v24 = [v23 ID];
          v25 = [v24 isEqualToString:v7];

          if (v25)
          {
            v26 = [v23 unformattedID];
            [v18 setUnformattedID:v26];

            v27 = [v23 countryCode];
            [v18 setCountryCode:v27];
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v20);
    }

    v28 = [v6 lastAddressedLocalHandle];
    [v18 setDestinationCallerID:v28];

    if ([v33 isLocallyCreated])
    {
      [v18 setFlags:4];
    }

    [v18 setAvMode:{objc_msgSend(v33, "avMode")}];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v42 = v6;
        v43 = 2112;
        v44 = v33;
        _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Not creating IMTUConversationItem - likely a nil lastAddressedHandle on chat: %@ or nil handles in conversation: %@", buf, 0x16u);
      }
    }

    v18 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)conversationManager:(id)a3 conversation:(id)a4 addedMembersLocally:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v36 = a3;
  v7 = a4;
  v8 = a5;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v41 = v7;
      v42 = 2112;
      v43 = v8;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Callback for addedMembersLocally conversation: %@ member: %@", buf, 0x16u);
    }
  }

  v10 = [v7 __im_filteredRemoteMembers];
  v11 = [v10 mutableCopy];

  [v11 minusSet:v8];
  v12 = [v7 __im_filteredRemoteMembers];
  v13 = [v12 mutableCopy];

  [v13 minusSet:v11];
  v14 = [v13 count] == 0;
  v15 = IMOSLoggingEnabled();
  if (!v14)
  {
    if (v15)
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v41 = v13;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Proceeding with addedMembers: %@", buf, 0xCu);
      }
    }

    v17 = [v7 groupUUID];
    v18 = [v17 UUIDString];
    v19 = [v35 _chatForTUGroupID:v18 participants:v11];

    if (!v19)
    {
      if ([v11 count] != 1)
      {
        goto LABEL_13;
      }

      if ([v7 avMode])
      {
        goto LABEL_13;
      }

      v32 = [v11 anyObject];
      v33 = [v32 handle];
      v19 = [v35 _oneToOneChatForRemoteHandle:v33];

      if (!v19)
      {
LABEL_13:
        v20 = IMLogHandleForCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D9A0C(v7, v20);
        }

        v19 = 0;
      }
    }

    if ([v19 style] == 43)
    {
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v41 = v19;
          _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Found chat to potentially add members to: %@", buf, 0xCu);
        }
      }

      v22 = +[IMDAccountController sharedInstance];
      v23 = [v22 anySessionForServiceName:*MEMORY[0x277D1A620]];

      if (!v23)
      {
        v28 = IMLogHandleForCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D9B34();
        }

        goto LABEL_36;
      }

      v24 = [v13 __imSetByApplyingBlock:&unk_283F1B468];
      v25 = [v24 allObjects];

      if ([v25 count])
      {
        v26 = MEMORY[0x277D1AA00];
        v27 = *MEMORY[0x277D186B0];
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = sub_22B6E2158;
        v37[3] = &unk_278705DB8;
        v38 = v23;
        v39 = v19;
        [v26 refreshIDStatusForDestinations:v25 service:v27 listenerID:@"IMDChatRegistry_CallManagement" queue:MEMORY[0x277D85CD0] completionBlock:v37];
      }
    }

    if ([v19 style] != 45)
    {
LABEL_37:

      goto LABEL_38;
    }

    v28 = [v35 _upgradeChatToGroupChat:v19 forConversation:v7];
    if (!v28)
    {
      v29 = IMLogHandleForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D9AC0();
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  if (v15)
  {
    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Not processing addedMembersLocally since, after filtering, we don't have anyone to add.", buf, 2u);
    }
  }

LABEL_38:

  v31 = *MEMORY[0x277D85DE8];
}

- (id)_upgradeChatToGroupChat:(id)a3 forConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 style] == 45)
  {
    v8 = +[IMDAccountController sharedInstance];
    v9 = [v8 anySessionForServiceName:*MEMORY[0x277D1A620]];

    if (v9)
    {
      v10 = [(IMDChatRegistry *)self _findExistingGroupChatForConversation:v7 onSession:v9];
      if (v10)
      {
        goto LABEL_9;
      }

      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Couldn't find chat, trying to create a new one!", buf, 2u);
        }
      }

      v10 = [(IMDChatRegistry *)self _createGroupChatForConversation:v7 onSession:v9];
      if (v10)
      {
LABEL_9:
        v12 = v10;
        v13 = [v10 guid];
        v14 = [v12 chatIdentifier];
        -[NSObject invitePersonInfo:withMessage:toChatID:identifier:style:](v9, "invitePersonInfo:withMessage:toChatID:identifier:style:", &unk_283F4EF60, 0, v13, v14, [v12 style]);

        v15 = [(IMDChatRegistry *)self conversationManager];
        LOBYTE(v14) = objc_opt_respondsToSelector();

        if ((v14 & 1) == 0)
        {
          goto LABEL_22;
        }

        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *v20 = 0;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Indicating to TU that we are now mapped to a messages group.", v20, 2u);
          }
        }

        v17 = [(IMDChatRegistry *)self conversationManager];
        v18 = [v7 UUID];
        [v17 registerMessagesGroupUUIDForConversationUUID:v18];

        goto LABEL_21;
      }

      v17 = IMLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D9C00();
      }
    }

    else
    {
      v17 = IMLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D9B34();
      }
    }

    v12 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v9 = IMLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D9B74(v6, v9);
  }

  v12 = 0;
LABEL_22:

  return v12;
}

- (id)_findExistingGroupChatForConversation:(id)a3 onSession:(id)a4
{
  v30[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [v7 __im_filteredRemoteMembers];
  v9 = [v8 __imSetByApplyingBlock:&unk_283F1B488];
  v10 = [v9 allObjects];

  v11 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v12 = [v11 isOneChatEnabled];

  v13 = [v10 firstObject];
  v14 = [v7 initiator];
  v15 = [v14 normalizedValue];
  v16 = [v7 groupUUID];
  v17 = v16;
  if (v12)
  {
    v28 = [v16 UUIDString];
    v29 = [v7 groupUUID];

    v18 = [v29 UUIDString];
    v30[0] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    v20 = [v6 service];

    v21 = [v20 internalName];
    v22 = [(IMDChatRegistry *)self bestCandidateGroupChatWithFromIdentifier:v13 toIdentifier:v15 displayName:0 participants:v10 updatingToLatestiMessageGroupID:v28 sortedIdentifiers:v19 serviceName:v21];
  }

  else
  {

    v23 = [v17 UUIDString];
    v24 = [v6 service];

    v25 = [v24 internalName];
    v22 = [(IMDChatRegistry *)self bestCandidateGroupChatWithFromIdentifier:v13 toIdentifier:v15 displayName:0 participants:v10 groupID:v23 serviceName:v25];
  }

  v26 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)_createGroupChatForConversation:(id)a3 onSession:(id)a4
{
  v25 = self;
  v39 = *MEMORY[0x277D85DE8];
  v28 = a3;
  v27 = a4;
  v5 = [v27 account];
  v26 = [(IMDChatRegistry *)v25 generateUnusedChatIdentifierForGroupChatWithAccount:v5];

  v29 = [MEMORY[0x277CBEB18] array];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [v28 __im_filteredRemoteMembers];
  v6 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v6)
  {
    v31 = *v33;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        if ([v8 isLightweightMember])
        {
          if (IMOSLoggingEnabled())
          {
            v9 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v37 = v8;
              _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "This is a lightweight member - skipping: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v10 = [IMDHandle alloc];
          v11 = [v8 handle];
          v12 = [v11 normalizedValue];
          v13 = [v8 handle];
          v14 = [v13 value];
          v15 = [v8 handle];
          v16 = [v15 isoCountryCode];
          v17 = [(IMDHandle *)v10 initWithID:v12 unformattedID:v14 countryCode:v16];
          v18 = [(IMDHandle *)v17 handleInfo];

          [v29 addObject:v18];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v6);
  }

  v19 = [v28 groupUUID];
  v20 = [v19 UUIDString];
  [v27 didJoinChat:v26 style:43 displayName:0 groupID:v20 handleInfo:v29];

  v21 = [v27 account];
  v22 = [(IMDChatRegistry *)v25 existingChatWithIdentifier:v26 account:v21];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (void)updateChatsUsingMessageGUIDsAndSummaries:(id)a3
{
  sub_22B4D01A0(0, &qword_28141F1F0, 0x277CCA898);
  v4 = sub_22B7DB588();
  v5 = self;
  sub_22B704F28(v4);
}

- (void)updateChatsUsingMessageGUIDsWithPriority:(id)a3
{
  v4 = sub_22B7DB918();
  v5 = self;
  sub_22B736F34(v4);
}

@end
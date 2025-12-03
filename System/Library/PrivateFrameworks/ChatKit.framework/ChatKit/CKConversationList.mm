@interface CKConversationList
+ (BOOL)spamInboxEnabled;
+ (id)conversationListAlertSuppressionContextForFilterMode:(unint64_t)mode;
+ (id)sharedConversationList;
+ (void)_handleRegistryDidLoadNotification:(id)notification;
+ (void)initialize;
- (BOOL)_chatHasRelevantUnreadLastMessage:(id)message;
- (BOOL)_isUnreadChat:(id)chat ignoringMessages:(id)messages;
- (BOOL)_shouldFilterForParticipants:(id)participants;
- (BOOL)_shouldTreatConversationAsNonSMSCategorized:(id)categorized;
- (BOOL)conversation:(id)conversation includedInFilterMode:(unint64_t)mode;
- (BOOL)hasActiveConversations;
- (CKConversation)_beginTrackingConversationWithChat:(uint64_t)chat shouldUpdateEarliestMessageDate:;
- (CKConversationList)init;
- (CKConversationListScrollingController)scrollingController;
- (NSArray)conversations;
- (NSMutableArray)trackedConversations;
- (id)_conversationForChat:(id)chat;
- (id)_copyEntitiesForAddressStrings:(id)strings;
- (id)_emptyConversationsDictionaryWithConversationsCount:(unint64_t)count;
- (id)_filterConversations:(id)conversations byHandleID:(id)d simID:(id)iD;
- (id)_nonPlaceholderConversations;
- (id)_testingTrackedConversations;
- (id)calculatePrimaryFilterModesDictionary;
- (id)conversationForContacts:(id)contacts;
- (id)conversationForExistingChatWithChatIdentifier:(id)identifier;
- (id)conversationForExistingChatWithDeviceIndependentID:(id)d;
- (id)conversationForExistingChatWithGUID:(id)d;
- (id)conversationForExistingChatWithGroupID:(id)d;
- (id)conversationForExistingChatWithPersonCentricID:(id)d;
- (id)conversationForExistingChatWithPinningIdentifier:(id)identifier;
- (id)conversationForHandles:(id)handles displayName:(id)name lastAddressedHandle:(id)handle lastAddressedSIMID:(id)d joinedChatsOnly:(BOOL)only findMatchingNamedGroups:(BOOL)groups create:(BOOL)create;
- (id)conversationsContainingFilterMode:(unint64_t)mode;
- (id)conversationsForExistingChatsWithGUIDs:(id)ds;
- (id)conversationsForFilterMode:(unint64_t)mode;
- (id)defaultPrimaryFilterModeConversations;
- (id)description;
- (id)filterModesForConversation:(id)conversation;
- (id)firstUnreadFilteredConversationIgnoringMessages:(id)messages;
- (id)identifiersSetForConversations:(id)conversations;
- (id)pendingConversationCreatingIfNecessary;
- (id)pinningIdentifierMap;
- (id)relevantUnreadLastMessages;
- (id)subclassifiedConversationsForFilterMode:(unint64_t)mode;
- (id)topMostConversation;
- (int64_t)unreadCountForFilterMode:(unint64_t)mode;
- (int64_t)unreadFilteredConversationCountIgnoringMessages:(id)messages;
- (unint64_t)_filterModeForConversationAsNonSMSCategorized:(id)categorized;
- (unint64_t)primaryFilterModeForConversation:(id)conversation;
- (void)_abChanged:(id)changed;
- (void)_abPartialChanged:(id)changed;
- (void)_beginTrackingAllExistingChatsIfNeeded;
- (void)_beginTrackingConversation:(id)conversation forChat:(id)chat shouldUpdateEarliestMessageDate:(BOOL)date;
- (void)_beginTrackingConversationWithChat:(id)chat completion:(id)completion;
- (void)_chatItemsDidChange:(id)change;
- (void)_chatPropertiesChanged:(id)changed;
- (void)_configureForOscarEnabledUnsortedConversationList;
- (void)_configureForUnsortedConversationList;
- (void)_deleteBrandLogosIfNeededForConversations:(id)conversations;
- (void)_handleChatJoinStateDidChange:(id)change;
- (void)_handleChatParticipantsDidChange:(id)change;
- (void)_handleChatsDidRemergeNotification:(id)notification;
- (void)_handleEngroupFinishedUpdating:(id)updating;
- (void)_handleGroupNameChanged:(id)changed;
- (void)_handleGroupPhotoChanged:(id)changed;
- (void)_handleHistoryClearedNotification:(id)notification;
- (void)_handleMemoryWarning:(id)warning;
- (void)_handlePreferredServiceChangedNotification:(id)notification;
- (void)_handleRegistryDidRegisterChatNotification:(id)notification;
- (void)_handleRegistryWillUnregisterChatNotification:(id)notification;
- (void)_handleUpdatedMessagesWithSummariesNotification:(id)notification;
- (void)_insertConversationIntoSortedConversationList:(id)list;
- (void)_invalidatePartialABCaches:(id)caches;
- (void)_postConversationListChangedNotification;
- (void)_postConversationListUpdateVisibleConversationsNotificationForUID:(id)d;
- (void)_removeConversationsFromRecentlyDeleted:(id)deleted;
- (void)_setConversations:(id)conversations forFilterMode:(unint64_t)mode;
- (void)_trackSendEventForMySenderID:(id)d andParticipants:(id)participants;
- (void)_updateConversationsForNewPinnedConversations:(id)conversations;
- (void)_updatePinnedConversationsControllerForRemovedConversations:(id)conversations;
- (void)_updateRecoverableConversationList;
- (void)clearHoldInUnreadFilter;
- (void)deleteConversation:(id)conversation;
- (void)deleteConversations:(id)conversations;
- (void)logConversationsTopCount:(int64_t)count bottomCount:(int64_t)bottomCount;
- (void)permanentlyDeleteRecoverableMessagesInConversations:(id)conversations synchronousQuery:(BOOL)query completionHandler:(id)handler;
- (void)postFinishedInitalPinLoadIfNecessary;
- (void)recoverDeletedMessagesInConversations:(id)conversations synchronousQuery:(BOOL)query completionHandler:(id)handler;
- (void)recoverJunkMessagesInConversations:(id)conversations;
- (void)recoverableDeleteForConversations:(id)conversations deleteDate:(id)date synchronousQuery:(BOOL)query completionHandler:(id)handler;
- (void)removeConversation:(id)conversation;
- (void)resetCaches;
- (void)resort;
- (void)setFilterMode:(unint64_t)mode;
- (void)setNeedsReload;
- (void)setPendingConversation:(id)conversation;
- (void)stopTrackingConversation:(id)conversation;
- (void)unpendConversation;
- (void)updateConversationFilterModes;
- (void)updateConversationFilteredFlagsAndReportSpam;
- (void)updateConversationListsAndSortIfEnabled;
- (void)updateConversationsForNewPinnedConversations:(id)conversations;
- (void)updateConversationsWasKnownSender;
- (void)updateEarliestMessageDateForConversations:(id)conversations;
- (void)updateFilteredByFocusStateForConversations:(id)conversations;
- (void)updatePinnedConversationsFromDataSourceWithConversationFetch:(BOOL)fetch;
- (void)updateRecoverableConversationList;
@end

@implementation CKConversationList

+ (void)initialize
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleRegistryDidLoadNotification_ name:*MEMORY[0x1E69A58A0] object:0];
}

+ (id)sharedConversationList
{
  v2 = sharedConversationList_sSharedConversationList;
  if (!sharedConversationList_sSharedConversationList)
  {
    v3 = objc_alloc_init(CKConversationList);
    v4 = sharedConversationList_sSharedConversationList;
    sharedConversationList_sSharedConversationList = v3;

    v2 = sharedConversationList_sSharedConversationList;
  }

  return v2;
}

- (CKConversationList)init
{
  v9.receiver = self;
  v9.super_class = CKConversationList;
  v2 = [(CKConversationList *)&v9 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__invalidateABCaches_ name:*MEMORY[0x1E69A6830] object:0];
    [defaultCenter addObserver:v2 selector:sel__abChanged_ name:*MEMORY[0x1E69A6828] object:0];
    [defaultCenter addObserver:v2 selector:sel__invalidatePartialABCaches_ name:*MEMORY[0x1E69A6870] object:0];
    [defaultCenter addObserver:v2 selector:sel__abPartialChanged_ name:*MEMORY[0x1E69A6838] object:0];
    [defaultCenter addObserver:v2 selector:sel__handleChatParticipantsDidChange_ name:*MEMORY[0x1E69A5848] object:0];
    [defaultCenter addObserver:v2 selector:sel__handleChatJoinStateDidChange_ name:*MEMORY[0x1E69A57F8] object:0];
    [defaultCenter addObserver:v2 selector:sel__handlePreferredServiceChangedNotification_ name:*MEMORY[0x1E69A5908] object:0];
    [defaultCenter addObserver:v2 selector:sel__chatItemsDidChange_ name:*MEMORY[0x1E69A5748] object:0];
    [defaultCenter addObserver:v2 selector:sel__handleEngroupFinishedUpdating_ name:*MEMORY[0x1E69A5710] object:0];
    [defaultCenter addObserver:v2 selector:sel__chatPropertiesChanged_ name:*MEMORY[0x1E69A5870] object:0];
    [defaultCenter addObserver:v2 selector:sel__handleChatsWillRemergeNotification_ name:*MEMORY[0x1E69A58F8] object:0];
    [defaultCenter addObserver:v2 selector:sel__handleChatsDidRemergeNotification_ name:*MEMORY[0x1E69A58C8] object:0];
    [defaultCenter addObserver:v2 selector:sel__handleUpdatedMessagesWithSummariesNotification_ name:*MEMORY[0x1E69A58E0] object:0];
    [defaultCenter addObserver:v2 selector:sel__handleHistoryClearedNotification_ name:*MEMORY[0x1E69A5728] object:0];
    if (CKIsRunningInPreferences() || CKIsRunningInNanoSettings() || CKIsRunningInMessagesOrSpringBoard())
    {
      [defaultCenter addObserver:v2 selector:sel__handleRegistryDidRegisterChatNotification_ name:*MEMORY[0x1E69A58C0] object:0];
      [defaultCenter addObserver:v2 selector:sel__handleRegistryWillUnregisterChatNotification_ name:*MEMORY[0x1E69A5900] object:0];
      [defaultCenter addObserver:v2 selector:sel__handleMemoryWarning_ name:*MEMORY[0x1E69DDAD8] object:0];
    }

    [defaultCenter addObserver:v2 selector:sel_updateConversationsForNewPinnedConversations_ name:*MEMORY[0x1E69A5A40] object:0];
    [defaultCenter addObserver:v2 selector:sel__handleGroupPhotoChanged_ name:*MEMORY[0x1E69A5718] object:0];
    [defaultCenter addObserver:v2 selector:sel__handleGroupNameChanged_ name:*MEMORY[0x1E69A5700] object:0];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    conversationsDictionary = v2->_conversationsDictionary;
    v2->_conversationsDictionary = dictionary;

    v2->_simFilterIndex = -1;
    v6 = MEMORY[0x193AF5640](@"com.apple.MobileSMS", @"simFilterIndex");
    integerValue = [v6 integerValue];

    if ((integerValue - 1) <= 1)
    {
      v2->_simFilterIndex = integerValue;
    }
  }

  return v2;
}

- (void)_beginTrackingAllExistingChatsIfNeeded
{
  v26 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(26);
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v22 = "[CKConversationList _beginTrackingAllExistingChatsIfNeeded]";
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v16 = "[CKConversationList _beginTrackingAllExistingChatsIfNeeded]";
    _CKLog();
  }

  if (CKIsRunningInPreferences() || CKIsRunningInNanoSettings() || CKIsRunningInMessagesOrSpringBoard() || IMIsRunningInMessagesComposeViewService())
  {
    self->_loadingConversations = 1;
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Attempting to register existing chats", buf, 2u);
      }
    }

    trackedConversations = self->_trackedConversations;
    self->_trackedConversations = 0;

    pinnedConversations = self->_pinnedConversations;
    self->_pinnedConversations = 0;

    v7 = objc_alloc_init(MEMORY[0x1E69A6170]);
    [v7 startTimingForKey:@"ChatTracking"];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
    cachedChats = [mEMORY[0x1E69A5AF8] cachedChats];

    v10 = [cachedChats countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v10)
    {
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(cachedChats);
          }

          v13 = [(CKConversationList *)&self->super.isa _beginTrackingConversationWithChat:0 shouldUpdateEarliestMessageDate:?];
        }

        while (v10 != v12);
        v10 = [cachedChats countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v10);
    }

    [v7 stopTimingForKey:@"ChatTracking"];
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v22 = "[CKConversationList _beginTrackingAllExistingChatsIfNeeded]";
        v23 = 2112;
        v24 = v7;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
      }
    }

    *&self->_loadingConversations = 256;
    if ([MEMORY[0x1E69A5C38] processSupportsPinnedConversations])
    {
      [(CKConversationList *)self updatePinnedConversationsFromDataSource];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CKConversationListFinishedLoadingNotification" object:self userInfo:0];
  }
}

- (void)_postConversationListChangedNotification
{
  loadingConversations = [(CKConversationList *)self loadingConversations];
  v4 = IMOSLoggingEnabled();
  if (loadingConversations)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Not posting _postConversationListChangedNotification: Still loading conversations", v8, 2u);
      }
    }
  }

  else
  {
    if (v4)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Posting _postConversationListChangedNotification", buf, 2u);
      }
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CKConversationListChangedNotification" object:self userInfo:0];
  }
}

- (id)pinningIdentifierMap
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(CKConversationList *)self conversations];
  v4 = [obj countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v4)
  {
    v6 = *v20;
    *&v5 = 138412802;
    v17 = v5;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        chat = [v8 chat];
        mEMORY[0x1E69A5C38] = [MEMORY[0x1E69A5C38] sharedInstance];
        v11 = [mEMORY[0x1E69A5C38] matchingIdentifierForChat:chat];

        if (v11)
        {
          v12 = [v3 objectForKey:v11];
          if (v12)
          {
            v13 = IMLogHandleForCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = v17;
              v24 = v11;
              v25 = 2112;
              v26 = v12;
              v27 = 2112;
              v28 = v8;
              _os_log_error_impl(&dword_19020E000, v13, OS_LOG_TYPE_ERROR, "We matched multiple conversations to one pinning identifier. Keeping existing match. matchingIdentifier: %@, match1: %@, match2: %@", buf, 0x20u);
            }
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v14 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v24 = v11;
                v25 = 2112;
                v26 = v8;
                _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Found a match for the conversation in the IMPinnedConversationsController. matchingIdentifier: %@, conversation: %@", buf, 0x16u);
              }
            }

            [v3 setObject:v8 forKey:v11];
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v4);
  }

  v15 = [v3 copy];

  return v15;
}

- (NSArray)conversations
{
  trackedConversations = [(CKConversationList *)self trackedConversations];
  v3 = [trackedConversations copy];

  return v3;
}

- (NSMutableArray)trackedConversations
{
  if (!self->_loadedConversations)
  {
    [(CKConversationList *)self _beginTrackingAllExistingChatsIfNeeded];
  }

  trackedConversations = self->_trackedConversations;

  return trackedConversations;
}

- (void)postFinishedInitalPinLoadIfNecessary
{
  if (![(CKConversationList *)self loadedPinnedConversations])
  {
    [(CKConversationList *)self setLoadedPinnedConversations:1];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CKConversationListFinishedInitalPinLoadNotification" object:self userInfo:0];
  }
}

- (void)resort
{
  if (![(CKConversationList *)self loadingConversations])
  {
    trackedConversations = self->_trackedConversations;
    _conversationSortComparator = [(CKConversationList *)self _conversationSortComparator];
    [(NSMutableArray *)trackedConversations sortUsingComparator:_conversationSortComparator];

    [(CKConversationList *)self logConversationsTopCount:20 bottomCount:10];
  }
}

- (void)updateConversationListsAndSortIfEnabled
{
  v41 = *MEMORY[0x1E69E9840];
  conversations = [(CKConversationList *)self conversations];
  [(CKConversationList *)self updateFilteredByFocusStateForConversations:conversations];
  [(CKConversationList *)self _updateRecoverableConversationList];
  v26 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:0];
  v3 = [v26 objectForKey:@"stop-auto-report-unknown"];
  bOOLValue = [v3 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__CKConversationList_updateConversationListsAndSortIfEnabled__block_invoke;
    block[3] = &unk_1E72EBA18;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

  if (isModernFilteringEnabled)
  {
    [(CKConversationList *)self updateConversationFilterModes];
    calculatePrimaryFilterModesDictionary = [(CKConversationList *)self calculatePrimaryFilterModesDictionary];
    v8 = [calculatePrimaryFilterModesDictionary mutableCopy];

    [(CKConversationList *)self setConversationsDictionary:v8];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CKConversationListDidFinishSorting" object:0 userInfo:0];
  }

  else if ([(CKConversationList *)self _shouldShowInboxUI]|| [(CKConversationList *)self _messageUnknownFilteringEnabled])
  {
    if (bOOLValue && [(CKConversationList *)self _messageUnknownFilteringEnabled])
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __61__CKConversationList_updateConversationListsAndSortIfEnabled__block_invoke_2;
      v34[3] = &unk_1E72EBA18;
      v34[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], v34);
    }

    _nonPlaceholderConversations = [(CKConversationList *)self _nonPlaceholderConversations];
    v10 = -[CKConversationList _emptyConversationsDictionaryWithConversationsCount:](self, "_emptyConversationsDictionaryWithConversationsCount:", [_nonPlaceholderConversations count]);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __61__CKConversationList_updateConversationListsAndSortIfEnabled__block_invoke_3;
    v32[3] = &unk_1E72ED3A0;
    v32[4] = self;
    v11 = v10;
    v33 = v11;
    [_nonPlaceholderConversations enumerateObjectsUsingBlock:v32];
    for (i = 1; i != 27; ++i)
    {
      if (i != 7)
      {
        v13 = IMConversationListFilterModeStringValue(i);
        v14 = [v11 objectForKey:v13];

        [(CKConversationList *)self _setConversations:v14 forFilterMode:i];
      }
    }

    if ([(CKConversationList *)self _messageSpamFilteringEnabled])
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      fetchSMSFilterExtensionParams = [MEMORY[0x1E69A8210] fetchSMSFilterExtensionParams];
      v16 = [fetchSMSFilterExtensionParams countByEnumeratingWithState:&v28 objects:v40 count:16];
      if (v16)
      {
        v17 = *v29;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v29 != v17)
            {
              objc_enumerationMutation(fetchSMSFilterExtensionParams);
            }

            v19 = *(*(&v28 + 1) + 8 * j);
            if ([v19 filterMode] >= 0x10)
            {
              v20 = IMConversationListFilterModeStringValue([v19 filterMode]);
              if (v20)
              {
                v21 = [v11 objectForKey:v20];
                -[CKConversationList _setConversations:forFilterMode:](self, "_setConversations:forFilterMode:", v21, [v19 filterMode]);
              }

              else if (IMOSLoggingEnabled())
              {
                v22 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                {
                  filterMode = [v19 filterMode];
                  *buf = 138412546;
                  v37 = 0;
                  v38 = 2048;
                  v39 = filterMode;
                  _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "%@ found for filterMode: %ld, this will result in empty sub-classification folder", buf, 0x16u);
                }
              }
            }
          }

          v16 = [fetchSMSFilterExtensionParams countByEnumeratingWithState:&v28 objects:v40 count:16];
        }

        while (v16);
      }
    }

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"CKConversationListDidFinishSorting" object:0 userInfo:0];
  }

  else if (IMIsOscarEnabled())
  {
    [(CKConversationList *)self _configureForOscarEnabledUnsortedConversationList];
  }

  else
  {
    [(CKConversationList *)self _configureForUnsortedConversationList];
  }
}

- (void)_updateRecoverableConversationList
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
  cachedChats = [mEMORY[0x1E69A5AF8] cachedChats];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __56__CKConversationList__updateRecoverableConversationList__block_invoke;
  v12 = &unk_1E72ED430;
  selfCopy = self;
  v6 = v3;
  v14 = v6;
  [cachedChats enumerateObjectsUsingBlock:&v9];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LOBYTE(cachedChats) = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

  if ((cachedChats & 1) == 0)
  {
    _recoverableSortComparator = [(CKConversationList *)self _recoverableSortComparator];
    [v6 sortUsingComparator:_recoverableSortComparator];

    [(CKConversationList *)self _setConversations:v6 forFilterMode:7];
  }
}

void __56__CKConversationList__updateRecoverableConversationList__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 recoverableMessagesCount];
  v4 = v8;
  if (v3)
  {
    v5 = [*(a1 + 32) conversationForExistingChat:v8];
    v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v7 = [v6 isModernFilteringEnabled];

    if (v7)
    {
      [v5 updateCalculatedFilterModesCache];
    }

    else
    {
      [*(a1 + 40) addObject:v5];
    }

    v4 = v8;
  }
}

- (void)updateConversationFilterModes
{
  selfCopy = self;
  CKConversationList.updateConversationFilterModes()();
}

- (id)calculatePrimaryFilterModesDictionary
{
  selfCopy = self;
  CKConversationList.calculatePrimaryFilterModesDictionary()();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD606A0);
  v3 = sub_190D56D60();

  return v3;
}

- (CKConversationListScrollingController)scrollingController
{
  scrollingController = self->_scrollingController;
  if (!scrollingController)
  {
    v4 = [CKConversationListScrollingController alloc];
    mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v6 = [(CKConversationListScrollingController *)v4 initWithConversationList:self chatRegistry:mEMORY[0x1E69A5AF8]];
    v7 = self->_scrollingController;
    self->_scrollingController = v6;

    scrollingController = self->_scrollingController;
  }

  return scrollingController;
}

- (void)updateConversationFilteredFlagsAndReportSpam
{
  conversations = [(CKConversationList *)self conversations];
  v3 = conversations;
  if (updateConversationFilteredFlagsAndReportSpam_onceToken != -1)
  {
    [CKConversationList updateConversationFilteredFlagsAndReportSpam];
    conversations = v3;
  }

  [conversations enumerateObjectsUsingBlock:&__block_literal_global_397_0];
  if ((updateConversationFilteredFlagsAndReportSpam_sAlreadyMigrated & 1) == 0)
  {
    updateConversationFilteredFlagsAndReportSpam_sAlreadyMigrated = 1;
    IMSetDomainBoolForKey();
  }
}

uint64_t __66__CKConversationList_updateConversationFilteredFlagsAndReportSpam__block_invoke()
{
  result = IMGetDomainBoolForKey();
  updateConversationFilteredFlagsAndReportSpam_sAlreadyMigrated = result;
  return result;
}

void __66__CKConversationList_updateConversationFilteredFlagsAndReportSpam__block_invoke_2(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 chat];
  if ([v2 wasDetectedAsSpam])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = [v2 handles];
    v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v5)
    {
      v6 = *v23;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v23 != v6)
          {
            objc_enumerationMutation(v4);
          }

          if ([*(*(&v22 + 1) + 8 * i) isContact])
          {
            [v3 clearSMSCategory];
            goto LABEL_12;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  if ([v3 isFiltered])
  {
    v8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v9 = [v8 isIntroductionsEnabled];

    if (v9)
    {
      if (CKMessageUnknownFilteringEnabled() && [v3 containsMessageFromContact] && objc_msgSend(v3, "isFiltered") <= 1 && (objc_msgSend(v2, "wasDetectedAsSMSCategory") & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *v21 = 0;
            _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Chat has replies: Updating isFiltered to NO", v21, 2u);
          }
        }

        goto LABEL_70;
      }

      if (!CKMessageUnknownFilteringEnabled() && [v3 containsMessageFromContactOrMe] && objc_msgSend(v3, "isFiltered") <= 1 && (objc_msgSend(v2, "wasDetectedAsSMSCategory") & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *v21 = 0;
            _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "Chat has replies: Updating isFiltered to NO", v21, 2u);
          }
        }

        goto LABEL_70;
      }

      if ([v3 hasKnownParticipantsCache])
      {
        if (IMOSLoggingEnabled())
        {
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *v21 = 0;
            _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Chat has known participants: Updating isFiltered to NO", v21, 2u);
          }
        }

LABEL_70:
        [v3 updateIsFiltered:0];
        goto LABEL_71;
      }

      if ([v3 shouldBeAllowListed])
      {
        if (IMOSLoggingEnabled())
        {
          v12 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *v21 = 0;
            _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Allow listed iMessage: Updating isFiltered to NO", v21, 2u);
          }
        }

        goto LABEL_70;
      }
    }

    else
    {
      if ([v3 containsMessageFromContactOrMe] && objc_msgSend(v3, "isFiltered") <= 1 && (objc_msgSend(v2, "wasDetectedAsSMSCategory") & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *v21 = 0;
            _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Chat has replies: Updating isFiltered to NO", v21, 2u);
          }
        }

        goto LABEL_70;
      }

      if ([v3 hasKnownParticipantsCache])
      {
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *v21 = 0;
            _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Chat has known participants: Updating isFiltered to NO", v21, 2u);
          }
        }

        goto LABEL_70;
      }

      if ([v3 shouldBeAllowListed])
      {
        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *v21 = 0;
            _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Allow listed iMessage: Updating isFiltered to NO", v21, 2u);
          }
        }

        goto LABEL_70;
      }
    }

    v14 = [v3 account];
    v15 = [v14 service];
    v16 = [MEMORY[0x1E69A5CA0] iMessageService];
    v17 = v15 == v16;

    if (v17)
    {
      if (([v3 supportsFilteringExtensions] & 1) == 0)
      {
        [v3 clearSMSCategory];
      }

      if (updateConversationFilteredFlagsAndReportSpam_sAlreadyMigrated == 1)
      {
        [v3 autoReportSpam];
      }

      else
      {
        [v3 markAsAutoSpamReported];
      }
    }
  }

LABEL_71:
}

- (void)updateRecoverableConversationList
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

  if (isModernFilteringEnabled)
  {

    [(CKConversationList *)self updateConversationListsAndSortIfEnabled];
  }

  else
  {

    [(CKConversationList *)self _updateRecoverableConversationList];
  }
}

+ (void)_handleRegistryDidLoadNotification:(id)notification
{
  sharedConversationList = [self sharedConversationList];
  [sharedConversationList _beginTrackingAllExistingChatsIfNeeded];

  v4 = objc_alloc_init(CKConversationMutedChatListMigrator);
  [(CKConversationMutedChatListMigrator *)v4 migrateMutedChatListInfoIfNeeded];
}

+ (id)conversationListAlertSuppressionContextForFilterMode:(unint64_t)mode
{
  if (mode > 1)
  {
    v4 = IMConversationListFilterModeStringValue(mode);
    v3 = [@"ConversationListSuppressionContext" stringByAppendingString:v4];
  }

  else
  {
    v3 = @"ConversationListSuppressionContext";
  }

  return v3;
}

- (id)description
{
  v33 = *MEMORY[0x1E69E9840];
  conversations = [(CKConversationList *)self conversations];
  v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(conversations, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = conversations;
  v26 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v26)
  {
    v24 = *v29;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(obj);
        }

        chat = [*(*(&v28 + 1) + 8 * i) chat];
        lastFinishedMessageID = [chat lastFinishedMessageID];
        __ck_watermarkMessageID = [chat __ck_watermarkMessageID];
        lastFinishedMessageDate = [chat lastFinishedMessageDate];
        __ck_watermarkDate = [chat __ck_watermarkDate];
        v9 = objc_alloc(MEMORY[0x1E696AEC0]);
        if (lastFinishedMessageID <= __ck_watermarkMessageID)
        {
          v10 = __ck_watermarkMessageID;
        }

        else
        {
          v10 = lastFinishedMessageID;
        }

        v11 = [lastFinishedMessageDate laterDate:__ck_watermarkDate];
        guid = [chat guid];
        [lastFinishedMessageDate timeIntervalSinceReferenceDate];
        v14 = v13;
        [__ck_watermarkDate timeIntervalSinceReferenceDate];
        v16 = [v9 initWithFormat:@"%lld - %@ | %@ (%lld, %lld) (%f, %f)", v10, v11, guid, lastFinishedMessageID, __ck_watermarkMessageID, v14, v15];

        [v25 addObject:v16];
      }

      v26 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v26);
  }

  v17 = MEMORY[0x1E696AEC0];
  v27.receiver = self;
  v27.super_class = CKConversationList;
  v18 = [(CKConversationList *)&v27 description];
  v19 = [v25 description];
  v20 = [v17 stringWithFormat:@"%@ %@", v18, v19];

  return v20;
}

void __89__CKConversationList__beginTrackingConversationWithChat_shouldUpdateEarliestMessageDate___block_invoke(uint64_t a1)
{
  v3 = +[CKDraftManager sharedInstance];
  v2 = [v3 draftForConversation:*(a1 + 32)];
}

- (void)_beginTrackingConversationWithChat:(id)chat completion:(id)completion
{
  chatCopy = chat;
  completionCopy = completion;
  v8 = [(CKConversationList *)self _alreadyTrackedConversationForChat:chatCopy];
  if (!v8)
  {
    v8 = [[CKConversation alloc] initWithChat:chatCopy];
    if ([(CKConversationList *)self loadedConversations])
    {
      v9 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __68__CKConversationList__beginTrackingConversationWithChat_completion___block_invoke;
      block[3] = &unk_1E72EBA18;
      v8 = v8;
      v11 = v8;
      dispatch_async(v9, block);
    }
  }

  [chatCopy setContextInfo:v8];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v8);
  }
}

void __68__CKConversationList__beginTrackingConversationWithChat_completion___block_invoke(uint64_t a1)
{
  v3 = +[CKDraftManager sharedInstance];
  v2 = [v3 draftForConversation:*(a1 + 32)];
}

- (id)_conversationForChat:(id)chat
{
  chatCopy = chat;
  if (chatCopy)
  {
    v5 = [(CKConversationList *)self _alreadyTrackedConversationForChat:chatCopy];
    if (!v5)
    {
      v5 = [(CKConversationList *)&self->super.isa _beginTrackingConversationWithChat:chatCopy shouldUpdateEarliestMessageDate:0];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)conversationForExistingChatWithPinningIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = MEMORY[0x1E69A5AF8];
    identifierCopy = identifier;
    sharedRegistry = [v4 sharedRegistry];
    v7 = [sharedRegistry existingChatWithPinningIdentifier:identifierCopy];

    v8 = [(CKConversationList *)self _conversationForChat:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)conversationForExistingChatWithDeviceIndependentID:(id)d
{
  if (d)
  {
    v4 = MEMORY[0x1E69A5AF8];
    dCopy = d;
    sharedRegistry = [v4 sharedRegistry];
    v7 = [sharedRegistry existingChatWithDeviceIndependentID:dCopy];

    v8 = [(CKConversationList *)self _conversationForChat:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)conversationForExistingChatWithChatIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length] && (objc_msgSend(identifierCopy, "isEqualToString:", @"-1") & 1) == 0)
  {
    mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v7 = [mEMORY[0x1E69A5AF8] existingChatWithChatIdentifier:identifierCopy];

    v5 = [(CKConversationList *)self _conversationForChat:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)conversationForExistingChatWithGroupID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy && ([dCopy isEqualToString:@"-1"] & 1) == 0)
  {
    mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v8 = [mEMORY[0x1E69A5AF8] existingChatWithGroupID:v5];

    v6 = [(CKConversationList *)self _conversationForChat:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)conversationForExistingChatWithPersonCentricID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy && [dCopy length])
  {
    mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v7 = [mEMORY[0x1E69A5AF8] existingChatWithPersonID:v5];

    v8 = [(CKConversationList *)self _conversationForChat:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)conversationForExistingChatWithGUID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy && [dCopy length])
  {
    mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v7 = [mEMORY[0x1E69A5AF8] existingChatWithGUID:v5];

    v8 = [(CKConversationList *)self _conversationForChat:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)conversationsForExistingChatsWithGUIDs:(id)ds
{
  dsCopy = ds;
  v5 = dsCopy;
  if (dsCopy && [dsCopy count])
  {
    mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v7 = [mEMORY[0x1E69A5AF8] existingChatsWithGUIDs:v5];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__CKConversationList_conversationsForExistingChatsWithGUIDs___block_invoke;
    v10[3] = &unk_1E72ED2D0;
    v10[4] = self;
    v8 = [v7 __imArrayByApplyingBlock:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)stopTrackingConversation:(id)conversation
{
  v12 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      chat = [conversationCopy chat];
      guid = [chat guid];
      v10 = 138412290;
      v11 = guid;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Stop tracking conversation: %@", &v10, 0xCu);
    }
  }

  if (conversationCopy)
  {
    isPinned = [conversationCopy isPinned];
    chat2 = [conversationCopy chat];
    [chat2 setContextInfo:0];
    [(NSMutableArray *)self->_trackedConversations removeObject:conversationCopy];
    [(CKConversationList *)self _postConversationListChangedNotification];
    if (isPinned)
    {
      [(CKConversationList *)self updatePinnedConversationsFromDataSourceWithConversationFetch:0];
    }
  }
}

void __65__CKConversationList__handleRegistryDidRegisterChatNotification___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 objectAtIndex:a3];
  v10 = [v8 compareIDs:v9];

  if (v10)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (void)_handleRegistryWillUnregisterChatNotification:(id)notification
{
  v22 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(26);
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v21 = "[CKConversationList _handleRegistryWillUnregisterChatNotification:]";
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v17 = "[CKConversationList _handleRegistryWillUnregisterChatNotification:]";
    _CKLog();
  }

  object = [notificationCopy object];
  if (object)
  {
    v7 = [(CKConversationList *)self _alreadyTrackedConversationForChat:object];
    if (v7)
    {
      [(CKConversationList *)self stopTrackingConversation:v7];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"CKConversationListConversationLeftNotification" object:v7 userInfo:0];
    }

    pendingConversation = [(CKConversationList *)self pendingConversation];
    chat = [pendingConversation chat];
    v11 = [chat isEqual:object];

    if (v11)
    {
      pendingConversation2 = [(CKConversationList *)self pendingConversation];
      v13 = +[CKConversation newPendingConversation];
      participants = [object participants];
      [v13 setPendingHandles:participants];

      [(CKConversationList *)self setPendingConversation:v13];
      v18 = @"CKConversationListWasPendingKey";
      v19 = MEMORY[0x1E695E118];
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 postNotificationName:@"CKConversationListConversationLeftNotification" object:pendingConversation2 userInfo:v15];
    }
  }
}

- (id)_copyEntitiesForAddressStrings:(id)strings
{
  v19 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  v4 = stringsCopy;
  if (stringsCopy && [stringsCopy count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
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

          v11 = [CKEntity copyEntityForAddressString:*(*(&v14 + 1) + 8 * v10), v14];
          if (v11)
          {
            [v5 addObject:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    v12 = [v5 copy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)conversationForHandles:(id)handles displayName:(id)name lastAddressedHandle:(id)handle lastAddressedSIMID:(id)d joinedChatsOnly:(BOOL)only findMatchingNamedGroups:(BOOL)groups create:(BOOL)create
{
  groupsCopy = groups;
  onlyCopy = only;
  v15 = MEMORY[0x1E69A5AF8];
  dCopy = d;
  handleCopy = handle;
  nameCopy = name;
  handlesCopy = handles;
  sharedRegistry = [v15 sharedRegistry];
  LOBYTE(v24) = create;
  v21 = [sharedRegistry _ck_chatForHandles:handlesCopy displayName:nameCopy lastAddressedHandle:handleCopy lastAddressedSIMID:dCopy joinedChatsOnly:onlyCopy findMatchingNamedGroups:groupsCopy createIfNecessary:v24];

  v22 = [(CKConversationList *)self _conversationForChat:v21];

  return v22;
}

- (id)conversationForContacts:(id)contacts
{
  contactsCopy = contacts;
  v5 = [CKConversation conversationForContacts:contactsCopy candidateConversation:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v11 = 0;
    v7 = [mEMORY[0x1E69A5AF8] existingChatWithContacts:contactsCopy bestHandles:&v11];
    v8 = v11;

    v9 = [(CKConversationList *)self conversationForHandles:v8 displayName:0 joinedChatsOnly:1 create:1];
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

- (void)resetCaches
{
  v13 = *MEMORY[0x1E69E9840];
  _copyForEnumerating = [(NSMutableArray *)self->_trackedConversations _copyForEnumerating];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = _copyForEnumerating;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) resetCaches];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)setNeedsReload
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_trackedConversations;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setNeedsReload];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)updatePinnedConversationsFromDataSourceWithConversationFetch:(BOOL)fetch
{
  fetchCopy = fetch;
  v38 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E69A5C38] processSupportsPinnedConversations])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Updating pinned conversations from the IMPinnedConversationsController", buf, 2u);
      }
    }

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    mEMORY[0x1E69A5C38] = [MEMORY[0x1E69A5C38] sharedInstance];
    pinnedConversationIdentifiers = [mEMORY[0x1E69A5C38] pinnedConversationIdentifiers];

    if (fetchCopy)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v7 = pinnedConversationIdentifiers;
      v8 = [v7 countByEnumeratingWithState:&v30 objects:v37 count:16];
      if (v8)
      {
        v9 = *v31;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v31 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v30 + 1) + 8 * i);
            v12 = [(CKConversationList *)self conversationForExistingChatWithPinningIdentifier:v11];
            if (!v12 && IMOSLoggingEnabled())
            {
              v13 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v36 = v11;
                _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Failed to find existing chat for pinning identifier %@", buf, 0xCu);
              }
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v30 objects:v37 count:16];
        }

        while (v8);
      }
    }

    pinningIdentifierMap = [(CKConversationList *)self pinningIdentifierMap];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = pinnedConversationIdentifiers;
    v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v16)
    {
      v17 = *v27;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v26 + 1) + 8 * j);
          v20 = [pinningIdentifierMap objectForKey:v19];
          if (v20)
          {
            [v5 addObject:v20];
          }

          else
          {
            v21 = IMLogHandleForCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v36 = v19;
              _os_log_error_impl(&dword_19020E000, v21, OS_LOG_TYPE_ERROR, "A CKConversation with pinningIdentifier %@ was not found in pinningIdentifierMap. This conversation will appear as not pinned.", buf, 0xCu);
            }

            if (pinningIdentifierMap)
            {
              [pinningIdentifierMap enumerateKeysAndObjectsUsingBlock:&__block_literal_global_29];
            }

            else if (IMOSLoggingEnabled())
            {
              v22 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "pinningIdentifierMap == nil", buf, 2u);
              }
            }
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v16);
    }

    v23 = [v5 copy];
    [(CKConversationList *)self setPinnedConversations:v23];
  }

  else
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CKConversationList updatePinnedConversationsFromDataSourceWithConversationFetch:v5];
    }
  }
}

void __83__CKConversationList_updatePinnedConversationsFromDataSourceWithConversationFetch___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "pinningIdentifierMap[%@] == %@", &v7, 0x16u);
    }
  }
}

- (void)updateConversationsForNewPinnedConversations:(id)conversations
{
  object = [conversations object];
  [(CKConversationList *)self _updateConversationsForNewPinnedConversations:object];
}

- (void)_updateConversationsForNewPinnedConversations:(id)conversations
{
  v27 = *MEMORY[0x1E69E9840];
  conversationsCopy = conversations;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  selfCopy = self;
  pinnedConversations = [(CKConversationList *)self pinnedConversations];
  v6 = [pinnedConversations countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v6)
  {
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(pinnedConversations);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        pinningIdentifier = [v9 pinningIdentifier];
        if (pinningIdentifier)
        {
          [v4 addObject:pinningIdentifier];
        }

        else if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            pinnedConversations2 = [(CKConversationList *)selfCopy pinnedConversations];
            *buf = 138412546;
            v23 = v9;
            v24 = 2112;
            v25 = pinnedConversations2;
            _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "An existing pinned conversation's pinningIdentifier was nil. existingPinnedConversation: %@, pinnedConversations: %@", buf, 0x16u);
          }
        }
      }

      v6 = [pinnedConversations countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v6);
  }

  if ([v4 isEqualToOrderedSet:conversationsCopy])
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "A pinned conversation list update notification was received, but the conversations are the same. Ignoring notification.", buf, 2u);
      }
    }

    [(CKConversationList *)selfCopy postFinishedInitalPinLoadIfNecessary];
  }

  else
  {
    [(CKConversationList *)selfCopy updatePinnedConversationsFromDataSource];
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v14 setObject:v4 forKeyedSubscript:@"previousPinnedConversationIdentifiers"];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CKConversationListPinnedConversationsChangedNotification" object:selfCopy userInfo:v14];

    [(CKConversationList *)selfCopy postFinishedInitalPinLoadIfNecessary];
  }
}

- (void)_handleGroupPhotoChanged:(id)changed
{
  v31 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      selfCopy = self;
      v29 = 2112;
      v30 = changedCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "IMChatGroupPhotoChangedNotification _handleGroupPhotoChanged called on conversation list %@ notification %@", buf, 0x16u);
    }
  }

  userInfo = [changedCopy userInfo];
  v7 = [userInfo valueForKey:@"sender"];
  object = [changedCopy object];
  v9 = [(CKConversationList *)self conversationForExistingChat:object];
  [(CKConversationList *)v9 setNeedsUpdatedGroupPhotoForVisualIdentity];
  v25 = @"conversation";
  v26 = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"CKConversationListAvatarUpdateNotification" object:0 userInfo:v10];

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      guid = [(CKConversationList *)object guid];
      *buf = 138412546;
      selfCopy = v9;
      v29 = 2112;
      v30 = guid;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Found conversation %@ for chatGuid %@", buf, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy = object;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, " => chat %@", buf, 0xCu);
    }
  }

  [(CKConversationList *)v9 updateConversationVisualIdentityGroupPhotoWithSender:v7];
  if ([v7 length] && -[CKConversationList shouldDisplayGroupIdentity](v9, "shouldDisplayGroupIdentity"))
  {
    [(CKConversationList *)v9 setShouldShowGroupPhotoUpdateBanner:1];
    v15 = [(CKConversationList *)v9 conversationVisualIdentityWithKeys:MEMORY[0x1E695E0F0] requestedNumberOfContactsToFetch:0];
    groupPhoto = [v15 groupPhoto];
    v17 = [groupPhoto length] == 0;

    v18 = [CKGroupUpdate alloc];
    if (v17)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    v20 = [(CKGroupUpdate *)v18 initWithType:v19 handleID:v7];
    v23 = @"CKGroupPhotoUpdate";
    v24 = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"CKConversationShowGroupPhotoBannersNotification" object:object userInfo:v21];
  }
}

- (void)_handleGroupNameChanged:(id)changed
{
  v21[1] = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v6 = [userInfo valueForKey:@"sender"];
  object = [changedCopy object];

  v8 = [(CKConversationList *)self conversationForExistingChat:object];
  [v8 updateConversationVisualIdentityDisplayNameWithSender:v6];
  v9 = [v8 conversationVisualIdentityWithKeys:MEMORY[0x1E695E0F0] requestedNumberOfContactsToFetch:0];
  if ([v6 length] && objc_msgSend(v8, "shouldDisplayGroupIdentity") && ((objc_msgSend(v9, "groupName"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, v12 = [CKGroupUpdate alloc], v11) ? (v13 = 1) : (v13 = 5), (v14 = -[CKGroupUpdate initWithType:handleID:](v12, "initWithType:handleID:", v13, v6)) != 0))
  {
    v15 = v14;
    if ([v8 shouldDisplayGroupIdentity])
    {
      [v8 setShouldShowGroupNameUpdateBanner:1];
    }

    v16 = 0;
    v20 = @"GroupNameUpdate";
    null = v15;
  }

  else
  {
    v20 = @"GroupNameUpdate";
    null = [MEMORY[0x1E695DFB0] null];
    v15 = 0;
    v16 = 1;
  }

  v21[0] = null;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  if (v16)
  {
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"CKConversationShowGroupNameBannersNotification" object:object userInfo:v18];
}

- (BOOL)_shouldFilterForParticipants:(id)participants
{
  v20 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  if ([(CKConversationList *)self _messageUnknownFilteringEnabled])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = participantsCopy;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      v9 = MEMORY[0x1E695E0F0];
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = MEMORY[0x1E69A7FD0];
          v12 = [*(*(&v15 + 1) + 8 * i) cnContactWithKeys:{v9, v15}];
          LOBYTE(v11) = [v11 isCNContactAKnownContact:v12];

          if (v11)
          {
            v13 = 0;
            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v13 = 1;
LABEL_13:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)firstUnreadFilteredConversationIgnoringMessages:(id)messages
{
  v23 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
  cachedChats = [mEMORY[0x1E69A5AF8] cachedChats];

  v7 = [cachedChats countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(cachedChats);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([(CKConversationList *)self _isUnreadChat:v11 ignoringMessages:messagesCopy])
        {
          persistentID = [v11 persistentID];
          v14 = [(CKConversationList *)self conversationForExistingChatWithChatIdentifier:persistentID];
          v15 = v14;
          if (v14)
          {
            v12 = v14;
          }

          else
          {
            persistentID2 = [v11 persistentID];
            v12 = [(CKConversationList *)self conversationForExistingChatWithGroupID:persistentID2];
          }

          goto LABEL_14;
        }
      }

      v8 = [cachedChats countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (BOOL)hasActiveConversations
{
  if (!CKIsRunningInPreferences() && !CKIsRunningInNanoSettings() && !CKIsRunningInMessagesOrSpringBoard())
  {
    return 0;
  }

  mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v3 = [mEMORY[0x1E69A5AF8] numberOfExistingChats] != 0;

  return v3;
}

- (void)_insertConversationIntoSortedConversationList:(id)list
{
  trackedConversations = self->_trackedConversations;
  listCopy = list;
  v5 = [(NSMutableArray *)trackedConversations count];
  _conversationSortComparator = [(CKConversationList *)self _conversationSortComparator];
  v7 = [(NSMutableArray *)trackedConversations indexOfObject:listCopy inSortedRange:0 options:v5 usingComparator:1024, _conversationSortComparator];

  [(NSMutableArray *)self->_trackedConversations insertObject:listCopy atIndex:v7];
}

- (void)logConversationsTopCount:(int64_t)count bottomCount:(int64_t)bottomCount
{
  selfCopy = self;
  v45 = *MEMORY[0x1E69E9840];
  v34 = [(NSMutableArray *)self->_trackedConversations count];
  v32 = selfCopy;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      countCopy = v34;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "resorted conversation list. length %ld", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      countCopy = count;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "top %ld conversations:", buf, 0xCu);
    }
  }

  v7 = [(NSMutableArray *)selfCopy->_trackedConversations count];
  if (count >= 1 && v7)
  {
    v8 = 1;
    do
    {
      v9 = [(NSMutableArray *)selfCopy->_trackedConversations objectAtIndex:v8 - 1];
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          chat = [v9 chat];
          lastFinishedMessageDate = [chat lastFinishedMessageDate];
          chat2 = [v9 chat];
          lastTUConversationCreatedDate = [chat2 lastTUConversationCreatedDate];
          chat3 = [v9 chat];
          lastScheduledMessageCreatedDate = [chat3 lastScheduledMessageCreatedDate];
          *buf = 134219010;
          countCopy = v8 - 1;
          v37 = 2112;
          v38 = lastFinishedMessageDate;
          v39 = 2112;
          v40 = lastTUConversationCreatedDate;
          v41 = 2112;
          v42 = lastScheduledMessageCreatedDate;
          v43 = 2112;
          v44 = v9;
          _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "%ld. %@ (lastTUConversationCreatedDate: %@) (lastScheduledMessageCreatedDate: %@) - %@", buf, 0x34u);

          selfCopy = v32;
        }
      }

      v17 = [(NSMutableArray *)selfCopy->_trackedConversations count];
      if (v8 >= count)
      {
        break;
      }
    }

    while (v8++ < v17);
  }

  if (v34 - count >= bottomCount)
  {
    bottomCountCopy = bottomCount;
  }

  else
  {
    bottomCountCopy = v34 - count;
  }

  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "---------------------------------------", buf, 2u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      countCopy = bottomCountCopy & ~(bottomCountCopy >> 63);
      _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "bottom %ld conversations:", buf, 0xCu);
    }
  }

  if (bottomCountCopy >= 1)
  {
    v22 = v34 - (bottomCountCopy & ~(bottomCountCopy >> 63));
    do
    {
      v23 = [(NSMutableArray *)selfCopy->_trackedConversations objectAtIndex:v22];
      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          chat4 = [v23 chat];
          lastFinishedMessageDate2 = [chat4 lastFinishedMessageDate];
          chat5 = [v23 chat];
          lastTUConversationCreatedDate2 = [chat5 lastTUConversationCreatedDate];
          chat6 = [v23 chat];
          lastScheduledMessageCreatedDate2 = [chat6 lastScheduledMessageCreatedDate];
          *buf = 134219010;
          countCopy = v22;
          v37 = 2112;
          v38 = lastFinishedMessageDate2;
          v39 = 2112;
          v40 = lastTUConversationCreatedDate2;
          v41 = 2112;
          v42 = lastScheduledMessageCreatedDate2;
          v43 = 2112;
          v44 = v23;
          _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "%ld. %@ (lastTUConversationCreatedDate: %@) (lastScheduledMessageCreatedDate: %@) - %@", buf, 0x34u);

          selfCopy = v32;
        }
      }

      ++v22;
    }

    while (v22 < v34);
  }
}

- (id)topMostConversation
{
  [(CKConversationList *)self resort];
  trackedConversations = self->_trackedConversations;

  return [(NSMutableArray *)trackedConversations firstObject];
}

- (void)_postConversationListUpdateVisibleConversationsNotificationForUID:(id)d
{
  v8[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (![(CKConversationList *)self loadingConversations])
  {
    if ([dCopy length])
    {
      v7 = @"uid";
      v8[0] = dCopy;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    }

    else
    {
      v5 = 0;
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CKConversationListUpdateVisibleConversationsNotification" object:self userInfo:v5];
  }
}

- (void)_beginTrackingConversation:(id)conversation forChat:(id)chat shouldUpdateEarliestMessageDate:(BOOL)date
{
  dateCopy = date;
  v24 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  chatCopy = chat;
  if (![(CKConversationList *)self _shouldBailBeginTrackingForCurrentProcess])
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        guid = [chatCopy guid];
        *buf = 138412802;
        v19 = guid;
        v20 = 2048;
        v21 = conversationCopy;
        v22 = 2048;
        v23 = chatCopy;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "-beginTrackingConversation called with guid %@ conversation %p chat %p", buf, 0x20u);
      }
    }

    if (!self->_trackedConversations)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      trackedConversations = self->_trackedConversations;
      self->_trackedConversations = v12;
    }

    if (conversationCopy)
    {
      [chatCopy setContextInfo:conversationCopy];
      if (dateCopy)
      {
        if (IMIsOscarEnabled())
        {
          chat = [conversationCopy chat];
          v15 = [chat isFiltered] == 2;

          if (v15)
          {
            v17 = conversationCopy;
            v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
            [(CKConversationList *)self updateEarliestMessageDateForConversations:v16];
          }
        }
      }

      [(CKConversationList *)self _insertConversationIntoSortedConversationList:conversationCopy];
    }

    [chatCopy setAllowsJunkConfiguration:{+[CKConversationList spamInboxEnabled](CKConversationList, "spamInboxEnabled")}];
    [(CKConversationList *)self _postConversationListChangedNotification];
  }
}

- (void)unpendConversation
{
  if (self->_pendingConversation)
  {
    [(CKConversationList *)self setPendingConversation:0];
  }
}

- (int64_t)unreadCountForFilterMode:(unint64_t)mode
{
  v22 = *MEMORY[0x1E69E9840];
  if (mode == 7)
  {
    return 0;
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isUnreadCountRefactorEnabled = [mEMORY[0x1E69A8070] isUnreadCountRefactorEnabled];

  if (isUnreadCountRefactorEnabled)
  {
    mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
    unreadCountController = [mEMORY[0x1E69A5AF8] unreadCountController];
    v10 = [unreadCountController unreadCountForChatsWithFilterMode:mode];

    return v10;
  }

  v12 = [(CKConversationList *)self conversationsForFilterMode:mode];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v3 = 0;
    v15 = *v18;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v3 += [*(*(&v17 + 1) + 8 * i) unreadCount];
      }

      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)unreadFilteredConversationCountIgnoringMessages:(id)messages
{
  v18 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
  cachedChats = [mEMORY[0x1E69A5AF8] cachedChats];

  v7 = [cachedChats countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(cachedChats);
        }

        v9 += [(CKConversationList *)self _isUnreadChat:*(*(&v13 + 1) + 8 * i) ignoringMessages:messagesCopy];
      }

      v8 = [cachedChats countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_isUnreadChat:(id)chat ignoringMessages:(id)messages
{
  chatCopy = chat;
  messagesCopy = messages;
  if ([(CKConversationList *)self _chatHasRelevantUnreadLastMessage:chatCopy])
  {
    persistentID = [chatCopy persistentID];
    v9 = [(CKConversationList *)self conversationForExistingChatWithChatIdentifier:persistentID];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      persistentID2 = [chatCopy persistentID];
      v11 = [(CKConversationList *)self conversationForExistingChatWithGroupID:persistentID2];
    }

    if ([v11 isKnownSender] && (objc_msgSend(v11, "isMuted") & 1) == 0)
    {
      lastMessage = [chatCopy lastMessage];
      guid = [lastMessage guid];

      if (guid)
      {
        v12 = [messagesCopy containsObject:guid] ^ 1;
      }

      else
      {
        LOBYTE(v12) = 0;
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (id)relevantUnreadLastMessages
{
  v31 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
  cachedChats = [mEMORY[0x1E69A5AF8] cachedChats];

  v5 = [cachedChats countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    v20 = *MEMORY[0x1E695D930];
    v21 = cachedChats;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(cachedChats);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        if ([(CKConversationList *)self _chatHasRelevantUnreadLastMessage:v9])
        {
          lastMessage = [v9 lastMessage];
          guid = [lastMessage guid];

          if (guid)
          {
            [array addObject:guid];
          }

          else
          {
            lastMessage2 = [v9 lastMessage];
            if (lastMessage2)
            {
              [MEMORY[0x1E696AEC0] stringWithFormat:@"*** relevantUnreadLastMessages: IMMessage has nil guid: %@", lastMessage2];
            }

            else
            {
              [MEMORY[0x1E696AEC0] stringWithFormat:@"*** relevantUnreadLastMessages: IMMessageItem has nil message in chat %@", v9];
            }
            v13 = ;
            v14 = MEMORY[0x1E695DF30];
            v28[0] = @"chat";
            v15 = [v9 description];
            v28[1] = @"lastMessage";
            v29[0] = v15;
            if (lastMessage2)
            {
              v22 = [lastMessage2 description];
              v16 = v22;
            }

            else
            {
              v16 = @"<nil>";
            }

            v29[1] = v16;
            v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
            v18 = [v14 exceptionWithName:v20 reason:v13 userInfo:v17];

            if (lastMessage2)
            {
            }

            IMLogExceptionBacktrace();
            IMLogSimulateCrashForException();

            cachedChats = v21;
          }
        }
      }

      v6 = [cachedChats countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v6);
  }

  return array;
}

- (BOOL)_chatHasRelevantUnreadLastMessage:(id)message
{
  messageCopy = message;
  if ([messageCopy unreadMessageCount] && objc_msgSend(messageCopy, "lastMessageExists") && (objc_msgSend(messageCopy, "lastMessage"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isRead"), v4, (v5 & 1) == 0))
  {
    lastMessage = [messageCopy lastMessage];
    isFromMe = [lastMessage isFromMe];

    v6 = isFromMe ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)deleteConversation:(id)conversation
{
  v11 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(26);
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v10 = conversationCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_DEBUG, "-deleteConversation called with: %@", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v7 = conversationCopy;
    _CKLog();
  }

  v8 = conversationCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:{1, v7}];
  [(CKConversationList *)self deleteConversations:v6];
}

- (void)deleteConversations:(id)conversations
{
  v34 = *MEMORY[0x1E69E9840];
  conversationsCopy = conversations;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(26);
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v33 = conversationsCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_DEBUG, "-deleteConversations called with: %@", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v21 = conversationsCopy;
    _CKLog();
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  _copyForEnumerating = [conversationsCopy _copyForEnumerating];
  v8 = [_copyForEnumerating countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(_copyForEnumerating);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        chat = [v11 chat];
        [chat setContextInfo:0];
        [v11 deleteAllMessagesAndRemoveGroup];
        pinningIdentifier = [v11 pinningIdentifier];
        if ([pinningIdentifier length])
        {
          [v6 addObject:pinningIdentifier];
        }

        [(NSMutableArray *)self->_trackedConversations removeObject:v11];
      }

      v8 = [_copyForEnumerating countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  if ([MEMORY[0x1E69A5C38] processSupportsPinnedConversations])
  {
    if ([(CKConversationList *)self remergingConversations])
    {
      goto LABEL_23;
    }

    mEMORY[0x1E69A5C38] = [MEMORY[0x1E69A5C38] sharedInstance];
    [mEMORY[0x1E69A5C38] conversationsWereDeletedWithIdentifiers:v6];
  }

  else
  {
    mEMORY[0x1E69A5C38] = IMLogHandleForCategory();
    if (os_log_type_enabled(mEMORY[0x1E69A5C38], OS_LOG_TYPE_ERROR))
    {
      [CKConversationList deleteConversations:mEMORY[0x1E69A5C38]];
    }
  }

LABEL_23:
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = conversationsCopy;
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = *v23;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v22 + 1) + 8 * j);
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter postNotificationName:@"CKConversationListConversationLeftNotification" object:v19 userInfo:0];

        [v19 resetCaches];
        [v19 setPendingHandles:0];
      }

      v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v16);
  }
}

- (void)_abChanged:(id)changed
{
  changedCopy = changed;
  [(CKConversationList *)self resetCaches];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "AB changed notification, updating caches", v6, 2u);
    }
  }

  [(CKConversationList *)self _postConversationListChangedNotification];
}

- (void)_invalidatePartialABCaches:(id)caches
{
  v21 = *MEMORY[0x1E69E9840];
  cachesCopy = caches;
  userInfo = [cachesCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69A6868]];
  v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69A6858]];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Received address book partial change notification for UID %@.", buf, 0xCu);
    }
  }

  if ([v7 isEqualToString:*MEMORY[0x1E69A6860]])
  {
    [(CKConversationList *)self resetCaches];
  }

  if ([v6 length])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    conversations = [(CKConversationList *)self conversations];
    v10 = [conversations countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(conversations);
          }

          v13 = *(*(&v14 + 1) + 8 * i);
          if ([v13 containsHandleWithUID:v6])
          {
            [v13 resetCaches];
          }
        }

        v10 = [conversations countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

- (void)_abPartialChanged:(id)changed
{
  userInfo = [changed userInfo];
  v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69A6868]];
  [(CKConversationList *)self _postConversationListUpdateVisibleConversationsNotificationForUID:v4];
}

- (void)_handleChatParticipantsDidChange:(id)change
{
  changeCopy = change;
  object = [changeCopy object];
  v5 = [(CKConversationList *)self _alreadyTrackedConversationForChat:object];
  [v5 _handleChatParticipantsDidChange:changeCopy];
}

- (void)_handleChatJoinStateDidChange:(id)change
{
  changeCopy = change;
  object = [changeCopy object];
  v5 = [(CKConversationList *)self _alreadyTrackedConversationForChat:object];
  [v5 _handleChatJoinStateDidChange:changeCopy];
}

- (void)_handlePreferredServiceChangedNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  v5 = [(CKConversationList *)self _alreadyTrackedConversationForChat:object];
  [v5 _handlePreferredServiceChangedNotification:notificationCopy];
}

- (void)_chatItemsDidChange:(id)change
{
  changeCopy = change;
  object = [changeCopy object];
  v5 = [(CKConversationList *)self _alreadyTrackedConversationForChat:object];
  [v5 _chatItemsDidChange:changeCopy];
}

- (void)_handleEngroupFinishedUpdating:(id)updating
{
  updatingCopy = updating;
  object = [updatingCopy object];
  v5 = [(CKConversationList *)self _alreadyTrackedConversationForChat:object];
  [v5 _handleEngroupFinishedUpdating:updatingCopy];
}

- (void)_chatPropertiesChanged:(id)changed
{
  changedCopy = changed;
  object = [changedCopy object];
  v5 = [(CKConversationList *)self _alreadyTrackedConversationForChat:object];
  [v5 _chatPropertiesChanged:changedCopy];
}

- (void)_handleChatsDidRemergeNotification:(id)notification
{
  [(CKConversationList *)self setRemergingConversations:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"CKConversationListFinishedMergingChatsNotification" object:self];
}

- (void)_handleUpdatedMessagesWithSummariesNotification:(id)notification
{
  notificationCopy = notification;
  if ([MEMORY[0x1E69A8090] messageSummarizationEnabled])
  {
    userInfo = [notificationCopy userInfo];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CKConversationListDidReceiveSummaries" object:0 userInfo:userInfo];
  }
}

- (void)_handleHistoryClearedNotification:(id)notification
{
  object = [notification object];
  v4 = [(CKConversationList *)self _alreadyTrackedConversationForChat:object];
  [v4 setNeedsReload];
}

- (id)pendingConversationCreatingIfNecessary
{
  v11 = *MEMORY[0x1E69E9840];
  pendingConversation = [(CKConversationList *)self pendingConversation];

  if (!pendingConversation)
  {
    v4 = +[CKConversation newPendingConversation];
    [(CKConversationList *)self setPendingConversation:v4];

    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        pendingConversation2 = [(CKConversationList *)self pendingConversation];
        v9 = 138412290;
        v10 = pendingConversation2;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "no current pendingConversation, creating one: %@", &v9, 0xCu);
      }
    }
  }

  pendingConversation3 = [(CKConversationList *)self pendingConversation];

  return pendingConversation3;
}

- (void)setPendingConversation:(id)conversation
{
  v12 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  pendingConversation = self->_pendingConversation;
  p_pendingConversation = &self->_pendingConversation;
  if (pendingConversation != conversationCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = conversationCopy;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "pendingConversation changed to: %@", &v10, 0xCu);
      }
    }

    objc_storeStrong(p_pendingConversation, conversation);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CKConversationListPendingConversationChangedNotification" object:conversationCopy];
  }
}

- (id)_testingTrackedConversations
{
  trackedConversations = self->_trackedConversations;
  if (!trackedConversations)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_trackedConversations;
    self->_trackedConversations = v4;

    trackedConversations = self->_trackedConversations;
  }

  return trackedConversations;
}

- (void)_handleMemoryWarning:(id)warning
{
  warningCopy = warning;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(26);
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Received memory warning, clearing caches", v6, 2u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
  {
    _CKLogExternal();
  }

  [(CKConversationList *)self resetCaches];
}

- (void)updateFilteredByFocusStateForConversations:(id)conversations
{
  v17 = *MEMORY[0x1E69E9840];
  conversationsCopy = conversations;
  mEMORY[0x1E69A8088] = [MEMORY[0x1E69A8088] sharedManager];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = conversationsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if ([mEMORY[0x1E69A8088] shouldDisplayFocusFilterBanner])
        {
          v11 = [mEMORY[0x1E69A8088] conversationMatchesActiveFocusMode:v10];
        }

        else
        {
          v11 = 1;
        }

        [v10 setAllowedByPersonListInActiveFocus:v11];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (id)_nonPlaceholderConversations
{
  conversations = [(CKConversationList *)self conversations];
  if (CKIsRunningForDevelopmentOnSimulator() || CKIsRunningUITests())
  {
    v3 = conversations;
  }

  else
  {
    v5 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_402];
    v3 = [conversations filteredArrayUsingPredicate:v5];
  }

  return v3;
}

- (void)_configureForUnsortedConversationList
{
  _nonPlaceholderConversations = [(CKConversationList *)self _nonPlaceholderConversations];
  [(CKConversationList *)self _setConversations:_nonPlaceholderConversations forFilterMode:0];
}

- (void)_configureForOscarEnabledUnsortedConversationList
{
  _nonPlaceholderConversations = [(CKConversationList *)self _nonPlaceholderConversations];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(_nonPlaceholderConversations, "count")}];
  array = [MEMORY[0x1E695DF70] array];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __71__CKConversationList__configureForOscarEnabledUnsortedConversationList__block_invoke;
  v11 = &unk_1E72ED3A0;
  v12 = array;
  v13 = v4;
  v6 = v4;
  v7 = array;
  [_nonPlaceholderConversations enumerateObjectsUsingBlock:&v8];
  [(CKConversationList *)self _setConversations:v6 forFilterMode:0, v8, v9, v10, v11];
  [(CKConversationList *)self _setConversations:v7 forFilterMode:9];
}

void __71__CKConversationList__configureForOscarEnabledUnsortedConversationList__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 chat];
  v4 = [v3 isFiltered];

  v5 = 40;
  if (v4 == 2)
  {
    v5 = 32;
  }

  [*(a1 + v5) addObject:v6];
}

void __61__CKConversationList_updateConversationListsAndSortIfEnabled__block_invoke_3(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isMergeFilteredThreadsEnabled];

  v6 = *(a1 + 32);
  if (!v5)
  {
    v21 = [v6 primaryFilterModeForConversation:v3];
    v22 = *(a1 + 40);
    v23 = IMConversationListFilterModeStringValue(v21);
    v24 = [v22 objectForKey:v23];
    [v24 addObject:v3];

    if (v21 == 6 || v21 == 9)
    {
      goto LABEL_28;
    }

    v25 = *(a1 + 40);
    v26 = IMConversationListFilterModeStringValue(1uLL);
    v27 = [v25 objectForKey:v26];
    [v27 addObject:v3];

    goto LABEL_23;
  }

  v7 = [v6 filterModesForConversation:v3];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v8)
  {
    goto LABEL_27;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v31;
  do
  {
    v12 = 0;
    do
    {
      if (*v31 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = [*(*(&v30 + 1) + 8 * v12) intValue];
      v14 = IMConversationListFilterModeStringValue(v13);
      v15 = [*(a1 + 40) objectForKey:v14];
      [v15 addObject:v3];

      if (v13 != 6 && v13 != 9)
      {
        if (v10)
        {
          v10 = 1;
        }

        else
        {
          v17 = *(a1 + 40);
          v10 = 1;
          v18 = IMConversationListFilterModeStringValue(1uLL);
          v19 = [v17 objectForKey:v18];
          [v19 addObject:v3];
        }
      }

      ++v12;
    }

    while (v9 != v12);
    v20 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
    v9 = v20;
  }

  while (v20);

  if (v10)
  {
LABEL_23:
    if (([v3 hasUnreadMessages] & 1) == 0 && !objc_msgSend(v3, "shouldHoldInUnreadFilter") || objc_msgSend(v3, "wasDetectedAsSMSSpam"))
    {
      goto LABEL_28;
    }

    [v3 setHoldInUnreadFilter:1];
    v28 = *(a1 + 40);
    v7 = IMConversationListFilterModeStringValue(8uLL);
    v29 = [v28 objectForKey:v7];
    [v29 addObject:v3];

LABEL_27:
  }

LABEL_28:
}

- (id)_emptyConversationsDictionaryWithConversationsCount:(unint64_t)count
{
  v30 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  for (i = 1; i != 27; ++i)
  {
    v7 = IMConversationListFilterModeStringValue(i);
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:count];
      [dictionary setObject:v8 forKey:v7];
    }
  }

  if ([(CKConversationList *)self _messageSpamFilteringEnabled])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    fetchSMSFilterExtensionParams = [MEMORY[0x1E69A8210] fetchSMSFilterExtensionParams];
    v10 = [fetchSMSFilterExtensionParams countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v10)
    {
      v12 = *v22;
      *&v11 = 138412546;
      v20 = v11;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(fetchSMSFilterExtensionParams);
          }

          v14 = *(*(&v21 + 1) + 8 * j);
          if ([v14 filterMode] >= 0x10)
          {
            v15 = IMConversationListFilterModeStringValue([v14 filterMode]);
            if (v15)
            {
              v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:count];
              [dictionary setObject:v16 forKey:v15];
            }

            else if (IMOSLoggingEnabled())
            {
              v17 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                filterMode = [v14 filterMode];
                *buf = v20;
                v26 = 0;
                v27 = 2048;
                v28 = filterMode;
                _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "%@ found for filterMode: %ld, this will result in empty sub-classification folder", buf, 0x16u);
              }
            }
          }
        }

        v10 = [fetchSMSFilterExtensionParams countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v10);
    }
  }

  return dictionary;
}

- (BOOL)conversation:(id)conversation includedInFilterMode:(unint64_t)mode
{
  v23 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  if (conversationCopy)
  {
    [(CKConversationList *)self conversationsForFilterMode:mode];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v21 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = *v19;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          chat = [conversationCopy chat];
          guid = [chat guid];
          chat2 = [v11 chat];
          guid2 = [chat2 guid];
          v16 = [guid isEqualToString:guid2];

          if (v16)
          {
            LOBYTE(v8) = 1;
            goto LABEL_12;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v8)
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
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (unint64_t)primaryFilterModeForConversation:(id)conversation
{
  conversationCopy = conversation;
  if (IMIsOscarEnabled() && ([conversationCopy chat], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isFiltered"), v5, v6 == 2))
  {
    v7 = 9;
  }

  else if ([(CKConversationList *)self _messageUnknownFilteringEnabled])
  {
    if ([(CKConversationList *)self _shouldTreatConversationAsNonSMSCategorized:conversationCopy])
    {
      v7 = [(CKConversationList *)self _filterModeForConversationAsNonSMSCategorized:conversationCopy];
    }

    else if ([conversationCopy spamSubCategory])
    {
      spamSubCategory = [conversationCopy spamSubCategory];
      v7 = [conversationCopy spamCategory] & 0xF | (16 * spamSubCategory);
    }

    else
    {
      spamCategory = [conversationCopy spamCategory];
      v7 = spamCategory;
      if (spamCategory != 4)
      {
        if (spamCategory == 3)
        {
          v7 = 5;
        }

        else if (IMIsOscarEnabled())
        {
          v7 = 9;
        }

        else
        {
          v7 = 6;
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)filterModesForConversation:(id)conversation
{
  v28 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isMergeFilteredThreadsEnabled = [mEMORY[0x1E69A8070] isMergeFilteredThreadsEnabled];

  if (isMergeFilteredThreadsEnabled)
  {
    if (IMIsOscarEnabled())
    {
      chat = [conversationCopy chat];
      isFiltered = [chat isFiltered];

      if (isFiltered == 2)
      {
        v10 = &unk_1F04E7800;
LABEL_9:
        [v5 addObject:v10];
        goto LABEL_27;
      }
    }

    if (![(CKConversationList *)self _messageUnknownFilteringEnabled])
    {
      v10 = &unk_1F04E7818;
      goto LABEL_9;
    }

    if ([(CKConversationList *)self _shouldTreatConversationAsNonSMSCategorized:conversationCopy])
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CKConversationList _filterModeForConversationAsNonSMSCategorized:](self, "_filterModeForConversationAsNonSMSCategorized:", conversationCopy)}];
      [v5 addObject:v11];
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = conversationCopy;
      mergedThreadFilterModes = [conversationCopy mergedThreadFilterModes];
      v13 = [mergedThreadFilterModes countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v24;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v24 != v15)
            {
              objc_enumerationMutation(mergedThreadFilterModes);
            }

            v17 = *(*(&v23 + 1) + 8 * i);
            intValue = [v17 intValue];
            if ([v17 intValue] > 0xF)
            {
              v19 = v5;
              v20 = v17;
            }

            else if ((intValue & 0xF) == 3)
            {
              v19 = v5;
              v20 = &unk_1F04E7848;
            }

            else if ((intValue & 0xF) == 4)
            {
              v19 = v5;
              v20 = &unk_1F04E7830;
            }

            else if (IMIsOscarEnabled())
            {
              v19 = v5;
              v20 = &unk_1F04E7800;
            }

            else
            {
              v19 = v5;
              v20 = &unk_1F04E7860;
            }

            [v19 addObject:v20];
          }

          v14 = [mergedThreadFilterModes countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v14);
      }

      conversationCopy = v22;
    }
  }

LABEL_27:

  return v5;
}

- (BOOL)_shouldTreatConversationAsNonSMSCategorized:(id)categorized
{
  categorizedCopy = categorized;
  if (![(CKConversationList *)self _messageSpamFilteringEnabled])
  {
    goto LABEL_9;
  }

  chat = [categorizedCopy chat];
  isRecovered = [chat isRecovered];

  if (isRecovered)
  {
    goto LABEL_9;
  }

  chat2 = [categorizedCopy chat];
  if (![chat2 isFiltered])
  {

LABEL_9:
    isKnownSender = 1;
    goto LABEL_10;
  }

  chat3 = [categorizedCopy chat];
  isFiltered = [chat3 isFiltered];

  if (isFiltered == 1)
  {
    goto LABEL_9;
  }

  chat4 = [categorizedCopy chat];
  supportsFilteringExtensions = [chat4 supportsFilteringExtensions];

  if (!supportsFilteringExtensions || ![categorizedCopy wasDetectedAsSMSCategory])
  {
    goto LABEL_9;
  }

  isKnownSender = [categorizedCopy isKnownSender];
LABEL_10:

  return isKnownSender;
}

- (unint64_t)_filterModeForConversationAsNonSMSCategorized:(id)categorized
{
  categorizedCopy = categorized;
  hasSetWasKnownSender = [categorizedCopy hasSetWasKnownSender];
  wasKnownSender = [categorizedCopy wasKnownSender];
  if ((hasSetWasKnownSender & 1) == 0)
  {
    wasKnownSender = [categorizedCopy isKnownSender];
  }

  if (wasKnownSender)
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  return v6;
}

- (id)subclassifiedConversationsForFilterMode:(unint64_t)mode
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  if (mode == 4)
  {
    goto LABEL_4;
  }

  if (mode == 5)
  {
    mode = 3;
LABEL_4:
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    fetchSMSFilterExtensionParams = [MEMORY[0x1E69A8210] fetchSMSFilterExtensionParams];
    v7 = [fetchSMSFilterExtensionParams countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(fetchSMSFilterExtensionParams);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          if ([v10 action] == mode)
          {
            conversationsDictionary = [(CKConversationList *)self conversationsDictionary];
            v12 = IMConversationListFilterModeStringValue([v10 filterMode]);
            v13 = [conversationsDictionary objectForKey:v12];

            if (v13)
            {
              [v5 addObjectsFromArray:v13];
            }
          }
        }

        v7 = [fetchSMSFilterExtensionParams countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    _conversationSortComparator = [(CKConversationList *)self _conversationSortComparator];
    [v5 sortUsingComparator:_conversationSortComparator];

    v15 = [v5 copy];
    goto LABEL_21;
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      modeCopy = mode;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Filter action mapping shouldn't fail. Got filterAction: %lu, returning empty array", buf, 0xCu);
    }
  }

  v15 = MEMORY[0x1E695E0F0];
LABEL_21:

  return v15;
}

- (id)conversationsForFilterMode:(unint64_t)mode
{
  v25 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

  if (isModernFilteringEnabled)
  {
    v7 = [(CKConversationList *)self conversationsContainingFilterMode:mode];
LABEL_17:
    v10 = v7;
    goto LABEL_18;
  }

  conversationsDictionary = [(CKConversationList *)self conversationsDictionary];
  v9 = IMConversationListFilterModeStringValue(mode);
  v10 = [conversationsDictionary objectForKey:v9];

  if ([(CKConversationList *)self _isParentWithSubfoldersForFilterMode:mode])
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v23 = 134217984;
        modeCopy = mode;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Looking into sub classes of parent mode: %lu", &v23, 0xCu);
      }
    }

    v12 = [(CKConversationList *)self subclassifiedConversationsForFilterMode:mode];

    v10 = v12;
  }

  if (v10 && [(CKConversationList *)self _messageSIMFilteringEnabled]&& self->_simFilterIndex != -1)
  {
    mEMORY[0x1E69A7F68] = [MEMORY[0x1E69A7F68] sharedInstance];
    ctSubscriptionInfo = [mEMORY[0x1E69A7F68] ctSubscriptionInfo];
    v15 = [ctSubscriptionInfo __im_subscriptionContextForForSlotID:{-[CKConversationList simFilterIndex](self, "simFilterIndex")}];

    phoneNumber = [v15 phoneNumber];
    labelID = [v15 labelID];
    v18 = [(CKConversationList *)self _filterConversations:v10 byHandleID:phoneNumber simID:labelID];

    v10 = v18;
  }

  mEMORY[0x1E69A8088] = [MEMORY[0x1E69A8088] sharedManager];
  shouldFilterConversationsByFocus = [mEMORY[0x1E69A8088] shouldFilterConversationsByFocus];

  if (shouldFilterConversationsByFocus)
  {
    v21 = [(CKConversationList *)self _filterConversationsByFocus:v10];

    v10 = v21;
  }

  if (!v10)
  {
    v7 = objc_opt_new();
    goto LABEL_17;
  }

LABEL_18:

  return v10;
}

uint64_t __62__CKConversationList__filterConversationsWithoutiMessageJunk___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 chat];
  v3 = [v2 isOscarChat];

  return v3 ^ 1u;
}

- (id)_filterConversations:(id)conversations byHandleID:(id)d simID:(id)iD
{
  v26 = *MEMORY[0x1E69E9840];
  conversationsCopy = conversations;
  dCopy = d;
  iDCopy = iD;
  v10 = iDCopy;
  if (dCopy | iDCopy)
  {
    if (dCopy)
    {
      v11 = v21;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v12 = __60__CKConversationList__filterConversations_byHandleID_simID___block_invoke;
      v13 = dCopy;
    }

    else
    {
      if (!iDCopy)
      {
        v15 = 0;
        goto LABEL_12;
      }

      v11 = &v19;
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v12 = __60__CKConversationList__filterConversations_byHandleID_simID___block_invoke_2;
      v13 = iDCopy;
    }

    v11[2] = v12;
    v11[3] = &unk_1E72ED3E8;
    v11[4] = v13;
    v16 = (v11 + 4);
    v15 = [conversationsCopy __imArrayByFilteringWithBlock:v11];

LABEL_12:
    if (![v15 count] && IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v23 = dCopy;
        v24 = 2112;
        v25 = v10;
        _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "SIM Filter | No conversations found for handleID: %@ simID: %@", buf, 0x16u);
      }
    }

    goto LABEL_17;
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "SIM Filter | handleID & simID are nil, do not apply any filter", buf, 2u);
    }
  }

  v15 = conversationsCopy;
LABEL_17:

  return v15;
}

uint64_t __60__CKConversationList__filterConversations_byHandleID_simID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 lastAddressedHandle];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __60__CKConversationList__filterConversations_byHandleID_simID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 lastAddressedSIMID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_setConversations:(id)conversations forFilterMode:(unint64_t)mode
{
  if (conversations)
  {
    conversationsCopy = conversations;
    conversationsDictionary = [(CKConversationList *)self conversationsDictionary];
    v7 = IMConversationListFilterModeStringValue(mode);
    [conversationsDictionary setObject:conversationsCopy forKey:v7];
  }
}

- (void)removeConversation:(id)conversation
{
  conversationCopy = conversation;
  for (i = 0; i != 27; ++i)
  {
    v5 = [(CKConversationList *)self conversationsForFilterMode:i];
    v6 = [v5 mutableCopy];

    [v6 removeObject:conversationCopy];
    [(CKConversationList *)self _setConversations:v6 forFilterMode:i];
  }
}

- (void)updateConversationsWasKnownSender
{
  if ([(CKConversationList *)self _messageUnknownFilteringEnabled])
  {
    conversations = [(CKConversationList *)self conversations];
    [conversations enumerateObjectsUsingBlock:&__block_literal_global_427_0];
  }
}

- (void)clearHoldInUnreadFilter
{
  if ([(CKConversationList *)self _messageUnknownFilteringEnabled])
  {
    v3 = [(CKConversationList *)self conversationsForFilterMode:8];
    [v3 enumerateObjectsUsingBlock:&__block_literal_global_429_0];
  }
}

- (void)setFilterMode:(unint64_t)mode
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isMergeFilteredThreadsEnabled = [mEMORY[0x1E69A8070] isMergeFilteredThreadsEnabled];

  if (isMergeFilteredThreadsEnabled)
  {
    if (mode >= 0xA)
    {
      v7 = mode & 0xF;
      v6 = mode & 0xFFFFFFFFFFFFFFF0;
    }

    else
    {
      v6 = 0;
      v7 = qword_190DCECE0[mode];
    }

    mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
    [mEMORY[0x1E69A5AF8] setCurrentMessageFilterMode:v6 | v7];
  }
}

uint64_t __48__CKConversationList__recoverableSortComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 chat];
  v6 = [v5 latestRecoverableMessageDeletionDate];

  v7 = [v4 chat];

  v8 = [v7 latestRecoverableMessageDeletionDate];

  v9 = [v8 compare:v6];
  return v9;
}

- (void)recoverableDeleteForConversations:(id)conversations deleteDate:(id)date synchronousQuery:(BOOL)query completionHandler:(id)handler
{
  queryCopy = query;
  v33 = *MEMORY[0x1E69E9840];
  conversationsCopy = conversations;
  dateCopy = date;
  handlerCopy = handler;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v30 = conversationsCopy;
      v31 = 2112;
      v32 = dateCopy;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Recently Deleted | -recoverableDeleteForConversations called with: %@ with deleteDate: %@", buf, 0x16u);
    }
  }

  [(CKConversationList *)self _updatePinnedConversationsControllerForRemovedConversations:conversationsCopy];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  _copyForEnumerating = [conversationsCopy _copyForEnumerating];
  v15 = [_copyForEnumerating countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = *v25;
    do
    {
      v17 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(_copyForEnumerating);
        }

        [*(*(&v24 + 1) + 8 * v17++) prepareForRecoverableDeletionWithDeleteDate:dateCopy];
      }

      while (v15 != v17);
      v15 = [_copyForEnumerating countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  v18 = [conversationsCopy __imArrayByApplyingBlock:&__block_literal_global_435_0];
  mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __102__CKConversationList_recoverableDeleteForConversations_deleteDate_synchronousQuery_completionHandler___block_invoke_2;
  v21[3] = &unk_1E72ED478;
  v23 = queryCopy;
  v22 = handlerCopy;
  v20 = handlerCopy;
  [mEMORY[0x1E69A5AF8] moveMessagesInChatsToRecentlyDeleted:v18 deleteDate:dateCopy synchronously:queryCopy completionHandler:v21];
}

void __102__CKConversationList_recoverableDeleteForConversations_deleteDate_synchronousQuery_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  [v2 updateRecoverableMessagesMetadataSynchronously:*(a1 + 40) completionHandler:*(a1 + 32)];
}

- (void)permanentlyDeleteRecoverableMessagesInConversations:(id)conversations synchronousQuery:(BOOL)query completionHandler:(id)handler
{
  queryCopy = query;
  v19 = *MEMORY[0x1E69E9840];
  conversationsCopy = conversations;
  handlerCopy = handler;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = conversationsCopy;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Recently Deleted | -permanentlyDeleteRecoverableMessagesInConversations called with: %@", buf, 0xCu);
    }
  }

  [(CKConversationList *)self _removeConversationsFromRecentlyDeleted:conversationsCopy];
  [(CKConversationList *)self _deleteBrandLogosIfNeededForConversations:conversationsCopy];
  v11 = [conversationsCopy __imArrayByApplyingBlock:&__block_literal_global_437_0];
  mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __109__CKConversationList_permanentlyDeleteRecoverableMessagesInConversations_synchronousQuery_completionHandler___block_invoke_2;
  v14[3] = &unk_1E72ED478;
  v16 = queryCopy;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [mEMORY[0x1E69A5AF8] permanentlyDeleteRecoverableMessagesInChats:v11 synchronously:queryCopy completionHandler:v14];
}

void __109__CKConversationList_permanentlyDeleteRecoverableMessagesInConversations_synchronousQuery_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  [v2 updateRecoverableMessagesMetadataSynchronously:*(a1 + 40) completionHandler:*(a1 + 32)];
}

- (void)_deleteBrandLogosIfNeededForConversations:(id)conversations
{
  v14 = *MEMORY[0x1E69E9840];
  conversationsCopy = conversations;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [conversationsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(conversationsCopy);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 isBusinessConversation])
        {
          [v8 deleteBrandLogos];
        }
      }

      v5 = [conversationsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_updatePinnedConversationsControllerForRemovedConversations:(id)conversations
{
  v12 = *MEMORY[0x1E69E9840];
  conversationsCopy = conversations;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = conversationsCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Recently Deleted | updatingPinnedConversationsForRemovedConversations: %@", &v10, 0xCu);
    }
  }

  v6 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_439_0];
  v7 = [conversationsCopy filteredArrayUsingPredicate:v6];
  v8 = [v7 valueForKey:@"pinningIdentifier"];

  if (![(CKConversationList *)self remergingConversations])
  {
    mEMORY[0x1E69A5C38] = [MEMORY[0x1E69A5C38] sharedInstance];
    [mEMORY[0x1E69A5C38] conversationsWereDeletedWithIdentifiers:v8];
  }
}

- (void)recoverDeletedMessagesInConversations:(id)conversations synchronousQuery:(BOOL)query completionHandler:(id)handler
{
  queryCopy = query;
  v19 = *MEMORY[0x1E69E9840];
  conversationsCopy = conversations;
  handlerCopy = handler;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = conversationsCopy;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Recently Deleted | -recoverDeletedMessagesInConversations called with: %@", buf, 0xCu);
    }
  }

  [(CKConversationList *)self _removeConversationsFromRecentlyDeleted:conversationsCopy];
  v11 = [conversationsCopy __imArrayByApplyingBlock:&__block_literal_global_444];
  mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __95__CKConversationList_recoverDeletedMessagesInConversations_synchronousQuery_completionHandler___block_invoke_2;
  v14[3] = &unk_1E72ED478;
  v16 = queryCopy;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [mEMORY[0x1E69A5AF8] recoverMessagesForChats:v11 synchronously:queryCopy completionHandler:v14];
}

void __95__CKConversationList_recoverDeletedMessagesInConversations_synchronousQuery_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  [v2 updateRecoverableMessagesMetadataSynchronously:*(a1 + 40) completionHandler:*(a1 + 32)];
}

- (void)_removeConversationsFromRecentlyDeleted:(id)deleted
{
  deletedCopy = deleted;
  v5 = [(CKConversationList *)self conversationsForFilterMode:7];
  v6 = [v5 mutableCopy];

  [v6 removeObjectsInArray:deletedCopy];
  [(CKConversationList *)self _setConversations:v6 forFilterMode:7];
}

- (void)recoverJunkMessagesInConversations:(id)conversations
{
  v14 = *MEMORY[0x1E69E9840];
  conversationsCopy = conversations;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = conversationsCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Junk Messages | -recoverJunkMessagesInConversations called with: %@", buf, 0xCu);
    }
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__CKConversationList_recoverJunkMessagesInConversations___block_invoke;
  v9[3] = &unk_1E72ED4A0;
  v9[4] = self;
  [conversationsCopy enumerateObjectsUsingBlock:v9];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v10 = @"CKConversationListRecoveredJunkConversationIdentifiersUserInfoKey";
  v7 = [(CKConversationList *)self identifiersSetForConversations:conversationsCopy];
  v11 = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [defaultCenter postNotificationName:@"CKConversationListDidRecoverJunkConversationsNotification" object:0 userInfo:v8];
}

void __57__CKConversationList_recoverJunkMessagesInConversations___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 chat];
  [v3 recoverFromJunkTo:1];

  v4 = [v10 sendingService];
  v5 = [MEMORY[0x1E69A5C90] iMessageService];

  if (v4 == v5)
  {
    v7 = *(a1 + 32);
    v6 = [v10 lastAddressedHandle];
    v8 = [v10 chat];
    v9 = [v8 participants];
    [v7 _trackSendEventForMySenderID:v6 andParticipants:v9];
  }

  else
  {
    v6 = [MEMORY[0x1E69A8168] sharedInstance];
    [v6 trackiMessageJunkEvent:6];
  }
}

- (id)identifiersSetForConversations:(id)conversations
{
  v3 = MEMORY[0x1E695DFA8];
  conversationsCopy = conversations;
  v5 = [v3 setWithCapacity:{objc_msgSend(conversationsCopy, "count")}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__CKConversationList_identifiersSetForConversations___block_invoke;
  v8[3] = &unk_1E72ED4A0;
  v6 = v5;
  v9 = v6;
  [conversationsCopy enumerateObjectsUsingBlock:v8];

  return v6;
}

void __53__CKConversationList_identifiersSetForConversations___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 chat];
  v3 = [v4 guid];
  [v2 addObject:v3];
}

- (void)updateEarliestMessageDateForConversations:(id)conversations
{
  v3 = MEMORY[0x1E695DF70];
  conversationsCopy = conversations;
  v5 = [v3 arrayWithCapacity:{objc_msgSend(conversationsCopy, "count")}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__CKConversationList_updateEarliestMessageDateForConversations___block_invoke;
  v8[3] = &unk_1E72ED4A0;
  v9 = v5;
  v6 = v5;
  [conversationsCopy enumerateObjectsUsingBlock:v8];

  mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
  [mEMORY[0x1E69A5AF8] updateEarliestMessageDateForChats:v6 completion:0];
}

void __64__CKConversationList_updateEarliestMessageDateForConversations___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 chat];
  [v2 addObject:v3];
}

- (void)_trackSendEventForMySenderID:(id)d andParticipants:(id)participants
{
  v20[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  participantsCopy = participants;
  v7 = [participantsCopy count];
  if (v7 && v7 <= 1)
  {
    firstObject = [participantsCopy firstObject];
    v9 = [firstObject ID];

    v10 = [MEMORY[0x1E696AD98] numberWithInt:0xFFFFFFFFLL];
    v11 = MEMORY[0x193AF5D40](v9);
    if (v11 && MEMORY[0x193AF5D40](dCopy))
    {
      v12 = MEMORY[0x1E696AD98];
      v13 = IMCountryCodeForNumber();
      v14 = IMCountryCodeForNumber();
      v15 = [v12 numberWithBool:{objc_msgSend(v13, "isEqualToString:", v14)}];

      v10 = v15;
    }

    mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
    v19[0] = &unk_1F04E7878;
    v17 = [MEMORY[0x1E696AD98] numberWithBool:v11];
    v19[1] = &unk_1F04E7890;
    v20[0] = v17;
    v20[1] = v10;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    [mEMORY[0x1E69A8168] trackiMessageJunkEvent:7 withDictionary:v18];
  }
}

+ (BOOL)spamInboxEnabled
{
  if (CKMessageSpamFilteringEnabled() || ([objc_opt_self() isSpamFilteringEnabled] & 1) != 0)
  {
    return 1;
  }

  return CKIsBlackholeEnabled();
}

- (id)defaultPrimaryFilterModeConversations
{
  selfCopy = self;
  CKConversationList.defaultPrimaryFilterModeConversations()();

  sub_1902188FC(0, &qword_1EAD466B0);
  v3 = sub_190D57160();

  return v3;
}

- (id)conversationsContainingFilterMode:(unint64_t)mode
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1D90;
  *(inited + 32) = mode;
  v6 = sub_19021E69C(inited);
  swift_setDeallocating();
  selfCopy = self;
  sub_19021B384(v6, 0);

  sub_1902188FC(0, &qword_1EAD466B0);
  v8 = sub_190D57160();

  return v8;
}

- (CKConversation)_beginTrackingConversationWithChat:(uint64_t)chat shouldUpdateEarliestMessageDate:
{
  v5 = a2;
  if (self)
  {
    if (CKIsRunningInPreferences() || CKIsRunningInMessages() || IMIsRunningInMessagesComposeViewService())
    {
      [v5 setNumberOfMessagesToKeepLoaded:50];
    }

    v6 = [self _alreadyTrackedConversationForChat:v5];
    if (!v6)
    {
      v6 = [[CKConversation alloc] initWithChat:v5];
      if ([self loadedConversations])
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __89__CKConversationList__beginTrackingConversationWithChat_shouldUpdateEarliestMessageDate___block_invoke;
        block[3] = &unk_1E72EBA18;
        v6 = v6;
        v9 = v6;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }
    }

    if (([self[7] containsObjectIdenticalTo:v6] & 1) == 0)
    {
      [self _beginTrackingConversation:v6 forChat:v5 shouldUpdateEarliestMessageDate:chat];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_handleRegistryDidRegisterChatNotification:(id)notification
{
  v38 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  object = [notificationCopy object];
  v6 = [(CKConversationList *)&self->super.isa _beginTrackingConversationWithChat:object shouldUpdateEarliestMessageDate:1];
  pendingConversation = [(CKConversationList *)self pendingConversation];
  if (pendingConversation)
  {
    pendingConversation2 = [(CKConversationList *)self pendingConversation];
    chat = [pendingConversation2 chat];

    if (!chat)
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          pendingConversation3 = [(CKConversationList *)self pendingConversation];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = pendingConversation3;
          _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Pending conversation has no chat set: %@", &buf, 0xCu);
        }
      }

      pendingConversation4 = [(CKConversationList *)self pendingConversation];
      chat2 = [v6 chat];
      participants = [chat2 participants];
      v15 = [participants sortedArrayUsingSelector:sel_guid];

      pendingConversation5 = [(CKConversationList *)self pendingConversation];
      pendingHandles = [pendingConversation5 pendingHandles];
      v18 = [pendingHandles sortedArrayUsingSelector:sel_guid];

      *&buf = 0;
      *(&buf + 1) = &buf;
      v36 = 0x2020000000;
      v19 = [v15 count];
      v37 = v19 == [v18 count];
      if (*(*(&buf + 1) + 24) == 1)
      {
        v25 = MEMORY[0x1E69E9820];
        v26 = 3221225472;
        v27 = __65__CKConversationList__handleRegistryDidRegisterChatNotification___block_invoke;
        v28 = &unk_1E72ED2F8;
        v29 = v18;
        p_buf = &buf;
        [v15 enumerateObjectsUsingBlock:&v25];

        if (*(*(&buf + 1) + 24))
        {
          copyForPendingConversation = [v6 copyForPendingConversation];
          pendingHandles2 = [pendingConversation4 pendingHandles];
          [copyForPendingConversation setPendingHandles:pendingHandles2];

          if (IMOSLoggingEnabled())
          {
            v22 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *v33 = 138412290;
              v34 = copyForPendingConversation;
              _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Handles are identical, setting new pending conversation: %@", v33, 0xCu);
            }
          }

          [(CKConversationList *)self setPendingConversation:copyForPendingConversation];
          v31 = @"CKConversationListWasPendingKey";
          v32 = MEMORY[0x1E695E118];
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter postNotificationName:@"CKConversationListConversationLeftNotification" object:pendingConversation4 userInfo:v23];
        }
      }

      _Block_object_dispose(&buf, 8);
    }
  }
}

@end
@interface CKConversationList
+ (BOOL)spamInboxEnabled;
+ (id)conversationListAlertSuppressionContextForFilterMode:(unint64_t)a3;
+ (id)sharedConversationList;
+ (void)_handleRegistryDidLoadNotification:(id)a3;
+ (void)initialize;
- (BOOL)_chatHasRelevantUnreadLastMessage:(id)a3;
- (BOOL)_isUnreadChat:(id)a3 ignoringMessages:(id)a4;
- (BOOL)_shouldFilterForParticipants:(id)a3;
- (BOOL)_shouldTreatConversationAsNonSMSCategorized:(id)a3;
- (BOOL)conversation:(id)a3 includedInFilterMode:(unint64_t)a4;
- (BOOL)hasActiveConversations;
- (CKConversation)_beginTrackingConversationWithChat:(uint64_t)a3 shouldUpdateEarliestMessageDate:;
- (CKConversationList)init;
- (CKConversationListScrollingController)scrollingController;
- (NSArray)conversations;
- (NSMutableArray)trackedConversations;
- (id)_conversationForChat:(id)a3;
- (id)_copyEntitiesForAddressStrings:(id)a3;
- (id)_emptyConversationsDictionaryWithConversationsCount:(unint64_t)a3;
- (id)_filterConversations:(id)a3 byHandleID:(id)a4 simID:(id)a5;
- (id)_nonPlaceholderConversations;
- (id)_testingTrackedConversations;
- (id)calculatePrimaryFilterModesDictionary;
- (id)conversationForContacts:(id)a3;
- (id)conversationForExistingChatWithChatIdentifier:(id)a3;
- (id)conversationForExistingChatWithDeviceIndependentID:(id)a3;
- (id)conversationForExistingChatWithGUID:(id)a3;
- (id)conversationForExistingChatWithGroupID:(id)a3;
- (id)conversationForExistingChatWithPersonCentricID:(id)a3;
- (id)conversationForExistingChatWithPinningIdentifier:(id)a3;
- (id)conversationForHandles:(id)a3 displayName:(id)a4 lastAddressedHandle:(id)a5 lastAddressedSIMID:(id)a6 joinedChatsOnly:(BOOL)a7 findMatchingNamedGroups:(BOOL)a8 create:(BOOL)a9;
- (id)conversationsContainingFilterMode:(unint64_t)a3;
- (id)conversationsForExistingChatsWithGUIDs:(id)a3;
- (id)conversationsForFilterMode:(unint64_t)a3;
- (id)defaultPrimaryFilterModeConversations;
- (id)description;
- (id)filterModesForConversation:(id)a3;
- (id)firstUnreadFilteredConversationIgnoringMessages:(id)a3;
- (id)identifiersSetForConversations:(id)a3;
- (id)pendingConversationCreatingIfNecessary;
- (id)pinningIdentifierMap;
- (id)relevantUnreadLastMessages;
- (id)subclassifiedConversationsForFilterMode:(unint64_t)a3;
- (id)topMostConversation;
- (int64_t)unreadCountForFilterMode:(unint64_t)a3;
- (int64_t)unreadFilteredConversationCountIgnoringMessages:(id)a3;
- (unint64_t)_filterModeForConversationAsNonSMSCategorized:(id)a3;
- (unint64_t)primaryFilterModeForConversation:(id)a3;
- (void)_abChanged:(id)a3;
- (void)_abPartialChanged:(id)a3;
- (void)_beginTrackingAllExistingChatsIfNeeded;
- (void)_beginTrackingConversation:(id)a3 forChat:(id)a4 shouldUpdateEarliestMessageDate:(BOOL)a5;
- (void)_beginTrackingConversationWithChat:(id)a3 completion:(id)a4;
- (void)_chatItemsDidChange:(id)a3;
- (void)_chatPropertiesChanged:(id)a3;
- (void)_configureForOscarEnabledUnsortedConversationList;
- (void)_configureForUnsortedConversationList;
- (void)_deleteBrandLogosIfNeededForConversations:(id)a3;
- (void)_handleChatJoinStateDidChange:(id)a3;
- (void)_handleChatParticipantsDidChange:(id)a3;
- (void)_handleChatsDidRemergeNotification:(id)a3;
- (void)_handleEngroupFinishedUpdating:(id)a3;
- (void)_handleGroupNameChanged:(id)a3;
- (void)_handleGroupPhotoChanged:(id)a3;
- (void)_handleHistoryClearedNotification:(id)a3;
- (void)_handleMemoryWarning:(id)a3;
- (void)_handlePreferredServiceChangedNotification:(id)a3;
- (void)_handleRegistryDidRegisterChatNotification:(id)a3;
- (void)_handleRegistryWillUnregisterChatNotification:(id)a3;
- (void)_handleUpdatedMessagesWithSummariesNotification:(id)a3;
- (void)_insertConversationIntoSortedConversationList:(id)a3;
- (void)_invalidatePartialABCaches:(id)a3;
- (void)_postConversationListChangedNotification;
- (void)_postConversationListUpdateVisibleConversationsNotificationForUID:(id)a3;
- (void)_removeConversationsFromRecentlyDeleted:(id)a3;
- (void)_setConversations:(id)a3 forFilterMode:(unint64_t)a4;
- (void)_trackSendEventForMySenderID:(id)a3 andParticipants:(id)a4;
- (void)_updateConversationsForNewPinnedConversations:(id)a3;
- (void)_updatePinnedConversationsControllerForRemovedConversations:(id)a3;
- (void)_updateRecoverableConversationList;
- (void)clearHoldInUnreadFilter;
- (void)deleteConversation:(id)a3;
- (void)deleteConversations:(id)a3;
- (void)logConversationsTopCount:(int64_t)a3 bottomCount:(int64_t)a4;
- (void)permanentlyDeleteRecoverableMessagesInConversations:(id)a3 synchronousQuery:(BOOL)a4 completionHandler:(id)a5;
- (void)postFinishedInitalPinLoadIfNecessary;
- (void)recoverDeletedMessagesInConversations:(id)a3 synchronousQuery:(BOOL)a4 completionHandler:(id)a5;
- (void)recoverJunkMessagesInConversations:(id)a3;
- (void)recoverableDeleteForConversations:(id)a3 deleteDate:(id)a4 synchronousQuery:(BOOL)a5 completionHandler:(id)a6;
- (void)removeConversation:(id)a3;
- (void)resetCaches;
- (void)resort;
- (void)setFilterMode:(unint64_t)a3;
- (void)setNeedsReload;
- (void)setPendingConversation:(id)a3;
- (void)stopTrackingConversation:(id)a3;
- (void)unpendConversation;
- (void)updateConversationFilterModes;
- (void)updateConversationFilteredFlagsAndReportSpam;
- (void)updateConversationListsAndSortIfEnabled;
- (void)updateConversationsForNewPinnedConversations:(id)a3;
- (void)updateConversationsWasKnownSender;
- (void)updateEarliestMessageDateForConversations:(id)a3;
- (void)updateFilteredByFocusStateForConversations:(id)a3;
- (void)updatePinnedConversationsFromDataSourceWithConversationFetch:(BOOL)a3;
- (void)updateRecoverableConversationList;
@end

@implementation CKConversationList

+ (void)initialize
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:a1 selector:sel__handleRegistryDidLoadNotification_ name:*MEMORY[0x1E69A58A0] object:0];
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
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel__invalidateABCaches_ name:*MEMORY[0x1E69A6830] object:0];
    [v3 addObserver:v2 selector:sel__abChanged_ name:*MEMORY[0x1E69A6828] object:0];
    [v3 addObserver:v2 selector:sel__invalidatePartialABCaches_ name:*MEMORY[0x1E69A6870] object:0];
    [v3 addObserver:v2 selector:sel__abPartialChanged_ name:*MEMORY[0x1E69A6838] object:0];
    [v3 addObserver:v2 selector:sel__handleChatParticipantsDidChange_ name:*MEMORY[0x1E69A5848] object:0];
    [v3 addObserver:v2 selector:sel__handleChatJoinStateDidChange_ name:*MEMORY[0x1E69A57F8] object:0];
    [v3 addObserver:v2 selector:sel__handlePreferredServiceChangedNotification_ name:*MEMORY[0x1E69A5908] object:0];
    [v3 addObserver:v2 selector:sel__chatItemsDidChange_ name:*MEMORY[0x1E69A5748] object:0];
    [v3 addObserver:v2 selector:sel__handleEngroupFinishedUpdating_ name:*MEMORY[0x1E69A5710] object:0];
    [v3 addObserver:v2 selector:sel__chatPropertiesChanged_ name:*MEMORY[0x1E69A5870] object:0];
    [v3 addObserver:v2 selector:sel__handleChatsWillRemergeNotification_ name:*MEMORY[0x1E69A58F8] object:0];
    [v3 addObserver:v2 selector:sel__handleChatsDidRemergeNotification_ name:*MEMORY[0x1E69A58C8] object:0];
    [v3 addObserver:v2 selector:sel__handleUpdatedMessagesWithSummariesNotification_ name:*MEMORY[0x1E69A58E0] object:0];
    [v3 addObserver:v2 selector:sel__handleHistoryClearedNotification_ name:*MEMORY[0x1E69A5728] object:0];
    if (CKIsRunningInPreferences() || CKIsRunningInNanoSettings() || CKIsRunningInMessagesOrSpringBoard())
    {
      [v3 addObserver:v2 selector:sel__handleRegistryDidRegisterChatNotification_ name:*MEMORY[0x1E69A58C0] object:0];
      [v3 addObserver:v2 selector:sel__handleRegistryWillUnregisterChatNotification_ name:*MEMORY[0x1E69A5900] object:0];
      [v3 addObserver:v2 selector:sel__handleMemoryWarning_ name:*MEMORY[0x1E69DDAD8] object:0];
    }

    [v3 addObserver:v2 selector:sel_updateConversationsForNewPinnedConversations_ name:*MEMORY[0x1E69A5A40] object:0];
    [v3 addObserver:v2 selector:sel__handleGroupPhotoChanged_ name:*MEMORY[0x1E69A5718] object:0];
    [v3 addObserver:v2 selector:sel__handleGroupNameChanged_ name:*MEMORY[0x1E69A5700] object:0];
    v4 = [MEMORY[0x1E695DF90] dictionary];
    conversationsDictionary = v2->_conversationsDictionary;
    v2->_conversationsDictionary = v4;

    v2->_simFilterIndex = -1;
    v6 = MEMORY[0x193AF5640](@"com.apple.MobileSMS", @"simFilterIndex");
    v7 = [v6 integerValue];

    if ((v7 - 1) <= 1)
    {
      v2->_simFilterIndex = v7;
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
    v8 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v9 = [v8 cachedChats];

    v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
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
            objc_enumerationMutation(v9);
          }

          v13 = [(CKConversationList *)&self->super.isa _beginTrackingConversationWithChat:0 shouldUpdateEarliestMessageDate:?];
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
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

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 postNotificationName:@"CKConversationListFinishedLoadingNotification" object:self userInfo:0];
  }
}

- (void)_postConversationListChangedNotification
{
  v3 = [(CKConversationList *)self loadingConversations];
  v4 = IMOSLoggingEnabled();
  if (v3)
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

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 postNotificationName:@"CKConversationListChangedNotification" object:self userInfo:0];
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
        v9 = [v8 chat];
        v10 = [MEMORY[0x1E69A5C38] sharedInstance];
        v11 = [v10 matchingIdentifierForChat:v9];

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
  v2 = [(CKConversationList *)self trackedConversations];
  v3 = [v2 copy];

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
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 postNotificationName:@"CKConversationListFinishedInitalPinLoadNotification" object:self userInfo:0];
  }
}

- (void)resort
{
  if (![(CKConversationList *)self loadingConversations])
  {
    trackedConversations = self->_trackedConversations;
    v4 = [(CKConversationList *)self _conversationSortComparator];
    [(NSMutableArray *)trackedConversations sortUsingComparator:v4];

    [(CKConversationList *)self logConversationsTopCount:20 bottomCount:10];
  }
}

- (void)updateConversationListsAndSortIfEnabled
{
  v41 = *MEMORY[0x1E69E9840];
  v27 = [(CKConversationList *)self conversations];
  [(CKConversationList *)self updateFilteredByFocusStateForConversations:v27];
  [(CKConversationList *)self _updateRecoverableConversationList];
  v26 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:0];
  v3 = [v26 objectForKey:@"stop-auto-report-unknown"];
  v4 = [v3 BOOLValue];

  if ((v4 & 1) == 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__CKConversationList_updateConversationListsAndSortIfEnabled__block_invoke;
    block[3] = &unk_1E72EBA18;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isModernFilteringEnabled];

  if (v6)
  {
    [(CKConversationList *)self updateConversationFilterModes];
    v7 = [(CKConversationList *)self calculatePrimaryFilterModesDictionary];
    v8 = [v7 mutableCopy];

    [(CKConversationList *)self setConversationsDictionary:v8];
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 postNotificationName:@"CKConversationListDidFinishSorting" object:0 userInfo:0];
  }

  else if ([(CKConversationList *)self _shouldShowInboxUI]|| [(CKConversationList *)self _messageUnknownFilteringEnabled])
  {
    if (v4 && [(CKConversationList *)self _messageUnknownFilteringEnabled])
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __61__CKConversationList_updateConversationListsAndSortIfEnabled__block_invoke_2;
      v34[3] = &unk_1E72EBA18;
      v34[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], v34);
    }

    v25 = [(CKConversationList *)self _nonPlaceholderConversations];
    v10 = -[CKConversationList _emptyConversationsDictionaryWithConversationsCount:](self, "_emptyConversationsDictionaryWithConversationsCount:", [v25 count]);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __61__CKConversationList_updateConversationListsAndSortIfEnabled__block_invoke_3;
    v32[3] = &unk_1E72ED3A0;
    v32[4] = self;
    v11 = v10;
    v33 = v11;
    [v25 enumerateObjectsUsingBlock:v32];
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
      v15 = [MEMORY[0x1E69A8210] fetchSMSFilterExtensionParams];
      v16 = [v15 countByEnumeratingWithState:&v28 objects:v40 count:16];
      if (v16)
      {
        v17 = *v29;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v29 != v17)
            {
              objc_enumerationMutation(v15);
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
                  v23 = [v19 filterMode];
                  *buf = 138412546;
                  v37 = 0;
                  v38 = 2048;
                  v39 = v23;
                  _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "%@ found for filterMode: %ld, this will result in empty sub-classification folder", buf, 0x16u);
                }
              }
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v28 objects:v40 count:16];
        }

        while (v16);
      }
    }

    v24 = [MEMORY[0x1E696AD88] defaultCenter];
    [v24 postNotificationName:@"CKConversationListDidFinishSorting" object:0 userInfo:0];
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
  v4 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v5 = [v4 cachedChats];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __56__CKConversationList__updateRecoverableConversationList__block_invoke;
  v12 = &unk_1E72ED430;
  v13 = self;
  v6 = v3;
  v14 = v6;
  [v5 enumerateObjectsUsingBlock:&v9];

  v7 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LOBYTE(v5) = [v7 isModernFilteringEnabled];

  if ((v5 & 1) == 0)
  {
    v8 = [(CKConversationList *)self _recoverableSortComparator];
    [v6 sortUsingComparator:v8];

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
  v2 = self;
  CKConversationList.updateConversationFilterModes()();
}

- (id)calculatePrimaryFilterModesDictionary
{
  v2 = self;
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
    v5 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v6 = [(CKConversationListScrollingController *)v4 initWithConversationList:self chatRegistry:v5];
    v7 = self->_scrollingController;
    self->_scrollingController = v6;

    scrollingController = self->_scrollingController;
  }

  return scrollingController;
}

- (void)updateConversationFilteredFlagsAndReportSpam
{
  v2 = [(CKConversationList *)self conversations];
  v3 = v2;
  if (updateConversationFilteredFlagsAndReportSpam_onceToken != -1)
  {
    [CKConversationList updateConversationFilteredFlagsAndReportSpam];
    v2 = v3;
  }

  [v2 enumerateObjectsUsingBlock:&__block_literal_global_397_0];
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
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isModernFilteringEnabled];

  if (v4)
  {

    [(CKConversationList *)self updateConversationListsAndSortIfEnabled];
  }

  else
  {

    [(CKConversationList *)self _updateRecoverableConversationList];
  }
}

+ (void)_handleRegistryDidLoadNotification:(id)a3
{
  v3 = [a1 sharedConversationList];
  [v3 _beginTrackingAllExistingChatsIfNeeded];

  v4 = objc_alloc_init(CKConversationMutedChatListMigrator);
  [(CKConversationMutedChatListMigrator *)v4 migrateMutedChatListInfoIfNeeded];
}

+ (id)conversationListAlertSuppressionContextForFilterMode:(unint64_t)a3
{
  if (a3 > 1)
  {
    v4 = IMConversationListFilterModeStringValue(a3);
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
  v2 = [(CKConversationList *)self conversations];
  v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v2;
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

        v4 = [*(*(&v28 + 1) + 8 * i) chat];
        v5 = [v4 lastFinishedMessageID];
        v6 = [v4 __ck_watermarkMessageID];
        v7 = [v4 lastFinishedMessageDate];
        v8 = [v4 __ck_watermarkDate];
        v9 = objc_alloc(MEMORY[0x1E696AEC0]);
        if (v5 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v5;
        }

        v11 = [v7 laterDate:v8];
        v12 = [v4 guid];
        [v7 timeIntervalSinceReferenceDate];
        v14 = v13;
        [v8 timeIntervalSinceReferenceDate];
        v16 = [v9 initWithFormat:@"%lld - %@ | %@ (%lld, %lld) (%f, %f)", v10, v11, v12, v5, v6, v14, v15];

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

- (void)_beginTrackingConversationWithChat:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CKConversationList *)self _alreadyTrackedConversationForChat:v6];
  if (!v8)
  {
    v8 = [[CKConversation alloc] initWithChat:v6];
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

  [v6 setContextInfo:v8];
  if (v7)
  {
    v7[2](v7, v8);
  }
}

void __68__CKConversationList__beginTrackingConversationWithChat_completion___block_invoke(uint64_t a1)
{
  v3 = +[CKDraftManager sharedInstance];
  v2 = [v3 draftForConversation:*(a1 + 32)];
}

- (id)_conversationForChat:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CKConversationList *)self _alreadyTrackedConversationForChat:v4];
    if (!v5)
    {
      v5 = [(CKConversationList *)&self->super.isa _beginTrackingConversationWithChat:v4 shouldUpdateEarliestMessageDate:0];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)conversationForExistingChatWithPinningIdentifier:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E69A5AF8];
    v5 = a3;
    v6 = [v4 sharedRegistry];
    v7 = [v6 existingChatWithPinningIdentifier:v5];

    v8 = [(CKConversationList *)self _conversationForChat:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)conversationForExistingChatWithDeviceIndependentID:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E69A5AF8];
    v5 = a3;
    v6 = [v4 sharedRegistry];
    v7 = [v6 existingChatWithDeviceIndependentID:v5];

    v8 = [(CKConversationList *)self _conversationForChat:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)conversationForExistingChatWithChatIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length] && (objc_msgSend(v4, "isEqualToString:", @"-1") & 1) == 0)
  {
    v6 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v7 = [v6 existingChatWithChatIdentifier:v4];

    v5 = [(CKConversationList *)self _conversationForChat:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)conversationForExistingChatWithGroupID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 isEqualToString:@"-1"] & 1) == 0)
  {
    v7 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v8 = [v7 existingChatWithGroupID:v5];

    v6 = [(CKConversationList *)self _conversationForChat:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)conversationForExistingChatWithPersonCentricID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v6 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v7 = [v6 existingChatWithPersonID:v5];

    v8 = [(CKConversationList *)self _conversationForChat:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)conversationForExistingChatWithGUID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v6 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v7 = [v6 existingChatWithGUID:v5];

    v8 = [(CKConversationList *)self _conversationForChat:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)conversationsForExistingChatsWithGUIDs:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v7 = [v6 existingChatsWithGUIDs:v5];

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

- (void)stopTrackingConversation:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 chat];
      v7 = [v6 guid];
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Stop tracking conversation: %@", &v10, 0xCu);
    }
  }

  if (v4)
  {
    v8 = [v4 isPinned];
    v9 = [v4 chat];
    [v9 setContextInfo:0];
    [(NSMutableArray *)self->_trackedConversations removeObject:v4];
    [(CKConversationList *)self _postConversationListChangedNotification];
    if (v8)
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

- (void)_handleRegistryWillUnregisterChatNotification:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v6 = [v4 object];
  if (v6)
  {
    v7 = [(CKConversationList *)self _alreadyTrackedConversationForChat:v6];
    if (v7)
    {
      [(CKConversationList *)self stopTrackingConversation:v7];
      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 postNotificationName:@"CKConversationListConversationLeftNotification" object:v7 userInfo:0];
    }

    v9 = [(CKConversationList *)self pendingConversation];
    v10 = [v9 chat];
    v11 = [v10 isEqual:v6];

    if (v11)
    {
      v12 = [(CKConversationList *)self pendingConversation];
      v13 = +[CKConversation newPendingConversation];
      v14 = [v6 participants];
      [v13 setPendingHandles:v14];

      [(CKConversationList *)self setPendingConversation:v13];
      v18 = @"CKConversationListWasPendingKey";
      v19 = MEMORY[0x1E695E118];
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v16 = [MEMORY[0x1E696AD88] defaultCenter];
      [v16 postNotificationName:@"CKConversationListConversationLeftNotification" object:v12 userInfo:v15];
    }
  }
}

- (id)_copyEntitiesForAddressStrings:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
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

- (id)conversationForHandles:(id)a3 displayName:(id)a4 lastAddressedHandle:(id)a5 lastAddressedSIMID:(id)a6 joinedChatsOnly:(BOOL)a7 findMatchingNamedGroups:(BOOL)a8 create:(BOOL)a9
{
  v9 = a8;
  v10 = a7;
  v15 = MEMORY[0x1E69A5AF8];
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [v15 sharedRegistry];
  LOBYTE(v24) = a9;
  v21 = [v20 _ck_chatForHandles:v19 displayName:v18 lastAddressedHandle:v17 lastAddressedSIMID:v16 joinedChatsOnly:v10 findMatchingNamedGroups:v9 createIfNecessary:v24];

  v22 = [(CKConversationList *)self _conversationForChat:v21];

  return v22;
}

- (id)conversationForContacts:(id)a3
{
  v4 = a3;
  v5 = [CKConversation conversationForContacts:v4 candidateConversation:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v11 = 0;
    v7 = [v6 existingChatWithContacts:v4 bestHandles:&v11];
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
  v2 = [(NSMutableArray *)self->_trackedConversations _copyForEnumerating];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v2;
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

- (void)updatePinnedConversationsFromDataSourceWithConversationFetch:(BOOL)a3
{
  v3 = a3;
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
    v6 = [MEMORY[0x1E69A5C38] sharedInstance];
    v24 = [v6 pinnedConversationIdentifiers];

    if (v3)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v7 = v24;
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

    v14 = [(CKConversationList *)self pinningIdentifierMap];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = v24;
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
          v20 = [v14 objectForKey:v19];
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

            if (v14)
            {
              [v14 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_29];
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

- (void)updateConversationsForNewPinnedConversations:(id)a3
{
  v4 = [a3 object];
  [(CKConversationList *)self _updateConversationsForNewPinnedConversations:v4];
}

- (void)_updateConversationsForNewPinnedConversations:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = self;
  v5 = [(CKConversationList *)self pinnedConversations];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v6)
  {
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 pinningIdentifier];
        if (v10)
        {
          [v4 addObject:v10];
        }

        else if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = [(CKConversationList *)v17 pinnedConversations];
            *buf = 138412546;
            v23 = v9;
            v24 = 2112;
            v25 = v12;
            _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "An existing pinned conversation's pinningIdentifier was nil. existingPinnedConversation: %@, pinnedConversations: %@", buf, 0x16u);
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v6);
  }

  if ([v4 isEqualToOrderedSet:v16])
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

    [(CKConversationList *)v17 postFinishedInitalPinLoadIfNecessary];
  }

  else
  {
    [(CKConversationList *)v17 updatePinnedConversationsFromDataSource];
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v14 setObject:v4 forKeyedSubscript:@"previousPinnedConversationIdentifiers"];
    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 postNotificationName:@"CKConversationListPinnedConversationsChangedNotification" object:v17 userInfo:v14];

    [(CKConversationList *)v17 postFinishedInitalPinLoadIfNecessary];
  }
}

- (void)_handleGroupPhotoChanged:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v28 = self;
      v29 = 2112;
      v30 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "IMChatGroupPhotoChangedNotification _handleGroupPhotoChanged called on conversation list %@ notification %@", buf, 0x16u);
    }
  }

  v6 = [v4 userInfo];
  v7 = [v6 valueForKey:@"sender"];
  v8 = [v4 object];
  v9 = [(CKConversationList *)self conversationForExistingChat:v8];
  [(CKConversationList *)v9 setNeedsUpdatedGroupPhotoForVisualIdentity];
  v25 = @"conversation";
  v26 = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 postNotificationName:@"CKConversationListAvatarUpdateNotification" object:0 userInfo:v10];

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [(CKConversationList *)v8 guid];
      *buf = 138412546;
      v28 = v9;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Found conversation %@ for chatGuid %@", buf, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = v8;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, " => chat %@", buf, 0xCu);
    }
  }

  [(CKConversationList *)v9 updateConversationVisualIdentityGroupPhotoWithSender:v7];
  if ([v7 length] && -[CKConversationList shouldDisplayGroupIdentity](v9, "shouldDisplayGroupIdentity"))
  {
    [(CKConversationList *)v9 setShouldShowGroupPhotoUpdateBanner:1];
    v15 = [(CKConversationList *)v9 conversationVisualIdentityWithKeys:MEMORY[0x1E695E0F0] requestedNumberOfContactsToFetch:0];
    v16 = [v15 groupPhoto];
    v17 = [v16 length] == 0;

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
    v22 = [MEMORY[0x1E696AD88] defaultCenter];
    [v22 postNotificationName:@"CKConversationShowGroupPhotoBannersNotification" object:v8 userInfo:v21];
  }
}

- (void)_handleGroupNameChanged:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 valueForKey:@"sender"];
  v7 = [v4 object];

  v8 = [(CKConversationList *)self conversationForExistingChat:v7];
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
    v17 = v15;
  }

  else
  {
    v20 = @"GroupNameUpdate";
    v17 = [MEMORY[0x1E695DFB0] null];
    v15 = 0;
    v16 = 1;
  }

  v21[0] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  if (v16)
  {
  }

  v19 = [MEMORY[0x1E696AD88] defaultCenter];
  [v19 postNotificationName:@"CKConversationShowGroupNameBannersNotification" object:v7 userInfo:v18];
}

- (BOOL)_shouldFilterForParticipants:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CKConversationList *)self _messageUnknownFilteringEnabled])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v4;
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

- (id)firstUnreadFilteredConversationIgnoringMessages:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v6 = [v5 cachedChats];

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([(CKConversationList *)self _isUnreadChat:v11 ignoringMessages:v4])
        {
          v13 = [v11 persistentID];
          v14 = [(CKConversationList *)self conversationForExistingChatWithChatIdentifier:v13];
          v15 = v14;
          if (v14)
          {
            v12 = v14;
          }

          else
          {
            v16 = [v11 persistentID];
            v12 = [(CKConversationList *)self conversationForExistingChatWithGroupID:v16];
          }

          goto LABEL_14;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

  v2 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v3 = [v2 numberOfExistingChats] != 0;

  return v3;
}

- (void)_insertConversationIntoSortedConversationList:(id)a3
{
  trackedConversations = self->_trackedConversations;
  v8 = a3;
  v5 = [(NSMutableArray *)trackedConversations count];
  v6 = [(CKConversationList *)self _conversationSortComparator];
  v7 = [(NSMutableArray *)trackedConversations indexOfObject:v8 inSortedRange:0 options:v5 usingComparator:1024, v6];

  [(NSMutableArray *)self->_trackedConversations insertObject:v8 atIndex:v7];
}

- (void)logConversationsTopCount:(int64_t)a3 bottomCount:(int64_t)a4
{
  v4 = self;
  v45 = *MEMORY[0x1E69E9840];
  v34 = [(NSMutableArray *)self->_trackedConversations count];
  v32 = v4;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v36 = v34;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "resorted conversation list. length %ld", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v36 = a3;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "top %ld conversations:", buf, 0xCu);
    }
  }

  v7 = [(NSMutableArray *)v4->_trackedConversations count];
  if (a3 >= 1 && v7)
  {
    v8 = 1;
    do
    {
      v9 = [(NSMutableArray *)v4->_trackedConversations objectAtIndex:v8 - 1];
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = [v9 chat];
          v12 = [v11 lastFinishedMessageDate];
          v13 = [v9 chat];
          v14 = [v13 lastTUConversationCreatedDate];
          v15 = [v9 chat];
          v16 = [v15 lastScheduledMessageCreatedDate];
          *buf = 134219010;
          v36 = v8 - 1;
          v37 = 2112;
          v38 = v12;
          v39 = 2112;
          v40 = v14;
          v41 = 2112;
          v42 = v16;
          v43 = 2112;
          v44 = v9;
          _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "%ld. %@ (lastTUConversationCreatedDate: %@) (lastScheduledMessageCreatedDate: %@) - %@", buf, 0x34u);

          v4 = v32;
        }
      }

      v17 = [(NSMutableArray *)v4->_trackedConversations count];
      if (v8 >= a3)
      {
        break;
      }
    }

    while (v8++ < v17);
  }

  if (v34 - a3 >= a4)
  {
    v19 = a4;
  }

  else
  {
    v19 = v34 - a3;
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
      v36 = v19 & ~(v19 >> 63);
      _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "bottom %ld conversations:", buf, 0xCu);
    }
  }

  if (v19 >= 1)
  {
    v22 = v34 - (v19 & ~(v19 >> 63));
    do
    {
      v23 = [(NSMutableArray *)v4->_trackedConversations objectAtIndex:v22];
      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = [v23 chat];
          v26 = [v25 lastFinishedMessageDate];
          v27 = [v23 chat];
          v28 = [v27 lastTUConversationCreatedDate];
          v29 = [v23 chat];
          v30 = [v29 lastScheduledMessageCreatedDate];
          *buf = 134219010;
          v36 = v22;
          v37 = 2112;
          v38 = v26;
          v39 = 2112;
          v40 = v28;
          v41 = 2112;
          v42 = v30;
          v43 = 2112;
          v44 = v23;
          _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "%ld. %@ (lastTUConversationCreatedDate: %@) (lastScheduledMessageCreatedDate: %@) - %@", buf, 0x34u);

          v4 = v32;
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

- (void)_postConversationListUpdateVisibleConversationsNotificationForUID:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(CKConversationList *)self loadingConversations])
  {
    if ([v4 length])
    {
      v7 = @"uid";
      v8[0] = v4;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    }

    else
    {
      v5 = 0;
    }

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 postNotificationName:@"CKConversationListUpdateVisibleConversationsNotification" object:self userInfo:v5];
  }
}

- (void)_beginTrackingConversation:(id)a3 forChat:(id)a4 shouldUpdateEarliestMessageDate:(BOOL)a5
{
  v5 = a5;
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (![(CKConversationList *)self _shouldBailBeginTrackingForCurrentProcess])
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v9 guid];
        *buf = 138412802;
        v19 = v11;
        v20 = 2048;
        v21 = v8;
        v22 = 2048;
        v23 = v9;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "-beginTrackingConversation called with guid %@ conversation %p chat %p", buf, 0x20u);
      }
    }

    if (!self->_trackedConversations)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      trackedConversations = self->_trackedConversations;
      self->_trackedConversations = v12;
    }

    if (v8)
    {
      [v9 setContextInfo:v8];
      if (v5)
      {
        if (IMIsOscarEnabled())
        {
          v14 = [v8 chat];
          v15 = [v14 isFiltered] == 2;

          if (v15)
          {
            v17 = v8;
            v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
            [(CKConversationList *)self updateEarliestMessageDateForConversations:v16];
          }
        }
      }

      [(CKConversationList *)self _insertConversationIntoSortedConversationList:v8];
    }

    [v9 setAllowsJunkConfiguration:{+[CKConversationList spamInboxEnabled](CKConversationList, "spamInboxEnabled")}];
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

- (int64_t)unreadCountForFilterMode:(unint64_t)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3 == 7)
  {
    return 0;
  }

  v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v7 = [v6 isUnreadCountRefactorEnabled];

  if (v7)
  {
    v8 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v9 = [v8 unreadCountController];
    v10 = [v9 unreadCountForChatsWithFilterMode:a3];

    return v10;
  }

  v12 = [(CKConversationList *)self conversationsForFilterMode:a3];
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

- (int64_t)unreadFilteredConversationCountIgnoringMessages:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v6 = [v5 cachedChats];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        v9 += [(CKConversationList *)self _isUnreadChat:*(*(&v13 + 1) + 8 * i) ignoringMessages:v4];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_isUnreadChat:(id)a3 ignoringMessages:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CKConversationList *)self _chatHasRelevantUnreadLastMessage:v6])
  {
    v8 = [v6 persistentID];
    v9 = [(CKConversationList *)self conversationForExistingChatWithChatIdentifier:v8];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v13 = [v6 persistentID];
      v11 = [(CKConversationList *)self conversationForExistingChatWithGroupID:v13];
    }

    if ([v11 isKnownSender] && (objc_msgSend(v11, "isMuted") & 1) == 0)
    {
      v14 = [v6 lastMessage];
      v15 = [v14 guid];

      if (v15)
      {
        v12 = [v7 containsObject:v15] ^ 1;
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
  v23 = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v4 = [v3 cachedChats];

  v5 = [v4 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    v20 = *MEMORY[0x1E695D930];
    v21 = v4;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        if ([(CKConversationList *)self _chatHasRelevantUnreadLastMessage:v9])
        {
          v10 = [v9 lastMessage];
          v11 = [v10 guid];

          if (v11)
          {
            [v23 addObject:v11];
          }

          else
          {
            v12 = [v9 lastMessage];
            if (v12)
            {
              [MEMORY[0x1E696AEC0] stringWithFormat:@"*** relevantUnreadLastMessages: IMMessage has nil guid: %@", v12];
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
            if (v12)
            {
              v22 = [v12 description];
              v16 = v22;
            }

            else
            {
              v16 = @"<nil>";
            }

            v29[1] = v16;
            v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
            v18 = [v14 exceptionWithName:v20 reason:v13 userInfo:v17];

            if (v12)
            {
            }

            IMLogExceptionBacktrace();
            IMLogSimulateCrashForException();

            v4 = v21;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v6);
  }

  return v23;
}

- (BOOL)_chatHasRelevantUnreadLastMessage:(id)a3
{
  v3 = a3;
  if ([v3 unreadMessageCount] && objc_msgSend(v3, "lastMessageExists") && (objc_msgSend(v3, "lastMessage"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isRead"), v4, (v5 & 1) == 0))
  {
    v8 = [v3 lastMessage];
    v9 = [v8 isFromMe];

    v6 = v9 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)deleteConversation:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(26);
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_DEBUG, "-deleteConversation called with: %@", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v7 = v4;
    _CKLog();
  }

  v8 = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:{1, v7}];
  [(CKConversationList *)self deleteConversations:v6];
}

- (void)deleteConversations:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(26);
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v33 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_DEBUG, "-deleteConversations called with: %@", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v21 = v4;
    _CKLog();
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [v4 _copyForEnumerating];
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [v11 chat];
        [v12 setContextInfo:0];
        [v11 deleteAllMessagesAndRemoveGroup];
        v13 = [v11 pinningIdentifier];
        if ([v13 length])
        {
          [v6 addObject:v13];
        }

        [(NSMutableArray *)self->_trackedConversations removeObject:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  if ([MEMORY[0x1E69A5C38] processSupportsPinnedConversations])
  {
    if ([(CKConversationList *)self remergingConversations])
    {
      goto LABEL_23;
    }

    v14 = [MEMORY[0x1E69A5C38] sharedInstance];
    [v14 conversationsWereDeletedWithIdentifiers:v6];
  }

  else
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CKConversationList deleteConversations:v14];
    }
  }

LABEL_23:
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = v4;
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
        v20 = [MEMORY[0x1E696AD88] defaultCenter];
        [v20 postNotificationName:@"CKConversationListConversationLeftNotification" object:v19 userInfo:0];

        [v19 resetCaches];
        [v19 setPendingHandles:0];
      }

      v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v16);
  }
}

- (void)_abChanged:(id)a3
{
  v4 = a3;
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

- (void)_invalidatePartialABCaches:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69A6868]];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69A6858]];
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
    v9 = [(CKConversationList *)self conversations];
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v14 + 1) + 8 * i);
          if ([v13 containsHandleWithUID:v6])
          {
            [v13 resetCaches];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

- (void)_abPartialChanged:(id)a3
{
  v5 = [a3 userInfo];
  v4 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69A6868]];
  [(CKConversationList *)self _postConversationListUpdateVisibleConversationsNotificationForUID:v4];
}

- (void)_handleChatParticipantsDidChange:(id)a3
{
  v4 = a3;
  v6 = [v4 object];
  v5 = [(CKConversationList *)self _alreadyTrackedConversationForChat:v6];
  [v5 _handleChatParticipantsDidChange:v4];
}

- (void)_handleChatJoinStateDidChange:(id)a3
{
  v4 = a3;
  v6 = [v4 object];
  v5 = [(CKConversationList *)self _alreadyTrackedConversationForChat:v6];
  [v5 _handleChatJoinStateDidChange:v4];
}

- (void)_handlePreferredServiceChangedNotification:(id)a3
{
  v4 = a3;
  v6 = [v4 object];
  v5 = [(CKConversationList *)self _alreadyTrackedConversationForChat:v6];
  [v5 _handlePreferredServiceChangedNotification:v4];
}

- (void)_chatItemsDidChange:(id)a3
{
  v4 = a3;
  v6 = [v4 object];
  v5 = [(CKConversationList *)self _alreadyTrackedConversationForChat:v6];
  [v5 _chatItemsDidChange:v4];
}

- (void)_handleEngroupFinishedUpdating:(id)a3
{
  v4 = a3;
  v6 = [v4 object];
  v5 = [(CKConversationList *)self _alreadyTrackedConversationForChat:v6];
  [v5 _handleEngroupFinishedUpdating:v4];
}

- (void)_chatPropertiesChanged:(id)a3
{
  v4 = a3;
  v6 = [v4 object];
  v5 = [(CKConversationList *)self _alreadyTrackedConversationForChat:v6];
  [v5 _chatPropertiesChanged:v4];
}

- (void)_handleChatsDidRemergeNotification:(id)a3
{
  [(CKConversationList *)self setRemergingConversations:0];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"CKConversationListFinishedMergingChatsNotification" object:self];
}

- (void)_handleUpdatedMessagesWithSummariesNotification:(id)a3
{
  v5 = a3;
  if ([MEMORY[0x1E69A8090] messageSummarizationEnabled])
  {
    v3 = [v5 userInfo];
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 postNotificationName:@"CKConversationListDidReceiveSummaries" object:0 userInfo:v3];
  }
}

- (void)_handleHistoryClearedNotification:(id)a3
{
  v5 = [a3 object];
  v4 = [(CKConversationList *)self _alreadyTrackedConversationForChat:v5];
  [v4 setNeedsReload];
}

- (id)pendingConversationCreatingIfNecessary
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(CKConversationList *)self pendingConversation];

  if (!v3)
  {
    v4 = +[CKConversation newPendingConversation];
    [(CKConversationList *)self setPendingConversation:v4];

    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [(CKConversationList *)self pendingConversation];
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "no current pendingConversation, creating one: %@", &v9, 0xCu);
      }
    }
  }

  v7 = [(CKConversationList *)self pendingConversation];

  return v7;
}

- (void)setPendingConversation:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  pendingConversation = self->_pendingConversation;
  p_pendingConversation = &self->_pendingConversation;
  if (pendingConversation != v5)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "pendingConversation changed to: %@", &v10, 0xCu);
      }
    }

    objc_storeStrong(p_pendingConversation, a3);
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 postNotificationName:@"CKConversationListPendingConversationChangedNotification" object:v5];
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

- (void)_handleMemoryWarning:(id)a3
{
  v4 = a3;
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

- (void)updateFilteredByFocusStateForConversations:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E69A8088] sharedManager];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
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
        if ([v4 shouldDisplayFocusFilterBanner])
        {
          v11 = [v4 conversationMatchesActiveFocusMode:v10];
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
  v2 = [(CKConversationList *)self conversations];
  if (CKIsRunningForDevelopmentOnSimulator() || CKIsRunningUITests())
  {
    v3 = v2;
  }

  else
  {
    v5 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_402];
    v3 = [v2 filteredArrayUsingPredicate:v5];
  }

  return v3;
}

- (void)_configureForUnsortedConversationList
{
  v3 = [(CKConversationList *)self _nonPlaceholderConversations];
  [(CKConversationList *)self _setConversations:v3 forFilterMode:0];
}

- (void)_configureForOscarEnabledUnsortedConversationList
{
  v3 = [(CKConversationList *)self _nonPlaceholderConversations];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = [MEMORY[0x1E695DF70] array];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __71__CKConversationList__configureForOscarEnabledUnsortedConversationList__block_invoke;
  v11 = &unk_1E72ED3A0;
  v12 = v5;
  v13 = v4;
  v6 = v4;
  v7 = v5;
  [v3 enumerateObjectsUsingBlock:&v8];
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

- (id)_emptyConversationsDictionaryWithConversationsCount:(unint64_t)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  for (i = 1; i != 27; ++i)
  {
    v7 = IMConversationListFilterModeStringValue(i);
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a3];
      [v5 setObject:v8 forKey:v7];
    }
  }

  if ([(CKConversationList *)self _messageSpamFilteringEnabled])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [MEMORY[0x1E69A8210] fetchSMSFilterExtensionParams];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * j);
          if ([v14 filterMode] >= 0x10)
          {
            v15 = IMConversationListFilterModeStringValue([v14 filterMode]);
            if (v15)
            {
              v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a3];
              [v5 setObject:v16 forKey:v15];
            }

            else if (IMOSLoggingEnabled())
            {
              v17 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                v18 = [v14 filterMode];
                *buf = v20;
                v26 = 0;
                v27 = 2048;
                v28 = v18;
                _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "%@ found for filterMode: %ld, this will result in empty sub-classification folder", buf, 0x16u);
              }
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v10);
    }
  }

  return v5;
}

- (BOOL)conversation:(id)a3 includedInFilterMode:(unint64_t)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    [(CKConversationList *)self conversationsForFilterMode:a4];
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
          v12 = [v6 chat];
          v13 = [v12 guid];
          v14 = [v11 chat];
          v15 = [v14 guid];
          v16 = [v13 isEqualToString:v15];

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

- (unint64_t)primaryFilterModeForConversation:(id)a3
{
  v4 = a3;
  if (IMIsOscarEnabled() && ([v4 chat], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isFiltered"), v5, v6 == 2))
  {
    v7 = 9;
  }

  else if ([(CKConversationList *)self _messageUnknownFilteringEnabled])
  {
    if ([(CKConversationList *)self _shouldTreatConversationAsNonSMSCategorized:v4])
    {
      v7 = [(CKConversationList *)self _filterModeForConversationAsNonSMSCategorized:v4];
    }

    else if ([v4 spamSubCategory])
    {
      v8 = [v4 spamSubCategory];
      v7 = [v4 spamCategory] & 0xF | (16 * v8);
    }

    else
    {
      v10 = [v4 spamCategory];
      v7 = v10;
      if (v10 != 4)
      {
        if (v10 == 3)
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

- (id)filterModesForConversation:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v7 = [v6 isMergeFilteredThreadsEnabled];

  if (v7)
  {
    if (IMIsOscarEnabled())
    {
      v8 = [v4 chat];
      v9 = [v8 isFiltered];

      if (v9 == 2)
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

    if ([(CKConversationList *)self _shouldTreatConversationAsNonSMSCategorized:v4])
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CKConversationList _filterModeForConversationAsNonSMSCategorized:](self, "_filterModeForConversationAsNonSMSCategorized:", v4)}];
      [v5 addObject:v11];
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = v4;
      v12 = [v4 mergedThreadFilterModes];
      v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v23 + 1) + 8 * i);
            v18 = [v17 intValue];
            if ([v17 intValue] > 0xF)
            {
              v19 = v5;
              v20 = v17;
            }

            else if ((v18 & 0xF) == 3)
            {
              v19 = v5;
              v20 = &unk_1F04E7848;
            }

            else if ((v18 & 0xF) == 4)
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

          v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v14);
      }

      v4 = v22;
    }
  }

LABEL_27:

  return v5;
}

- (BOOL)_shouldTreatConversationAsNonSMSCategorized:(id)a3
{
  v4 = a3;
  if (![(CKConversationList *)self _messageSpamFilteringEnabled])
  {
    goto LABEL_9;
  }

  v5 = [v4 chat];
  v6 = [v5 isRecovered];

  if (v6)
  {
    goto LABEL_9;
  }

  v7 = [v4 chat];
  if (![v7 isFiltered])
  {

LABEL_9:
    v12 = 1;
    goto LABEL_10;
  }

  v8 = [v4 chat];
  v9 = [v8 isFiltered];

  if (v9 == 1)
  {
    goto LABEL_9;
  }

  v10 = [v4 chat];
  v11 = [v10 supportsFilteringExtensions];

  if (!v11 || ![v4 wasDetectedAsSMSCategory])
  {
    goto LABEL_9;
  }

  v12 = [v4 isKnownSender];
LABEL_10:

  return v12;
}

- (unint64_t)_filterModeForConversationAsNonSMSCategorized:(id)a3
{
  v3 = a3;
  v4 = [v3 hasSetWasKnownSender];
  v5 = [v3 wasKnownSender];
  if ((v4 & 1) == 0)
  {
    v5 = [v3 isKnownSender];
  }

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  return v6;
}

- (id)subclassifiedConversationsForFilterMode:(unint64_t)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  if (a3 == 4)
  {
    goto LABEL_4;
  }

  if (a3 == 5)
  {
    a3 = 3;
LABEL_4:
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [MEMORY[0x1E69A8210] fetchSMSFilterExtensionParams];
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          if ([v10 action] == a3)
          {
            v11 = [(CKConversationList *)self conversationsDictionary];
            v12 = IMConversationListFilterModeStringValue([v10 filterMode]);
            v13 = [v11 objectForKey:v12];

            if (v13)
            {
              [v5 addObjectsFromArray:v13];
            }
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    v14 = [(CKConversationList *)self _conversationSortComparator];
    [v5 sortUsingComparator:v14];

    v15 = [v5 copy];
    goto LABEL_21;
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v24 = a3;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Filter action mapping shouldn't fail. Got filterAction: %lu, returning empty array", buf, 0xCu);
    }
  }

  v15 = MEMORY[0x1E695E0F0];
LABEL_21:

  return v15;
}

- (id)conversationsForFilterMode:(unint64_t)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isModernFilteringEnabled];

  if (v6)
  {
    v7 = [(CKConversationList *)self conversationsContainingFilterMode:a3];
LABEL_17:
    v10 = v7;
    goto LABEL_18;
  }

  v8 = [(CKConversationList *)self conversationsDictionary];
  v9 = IMConversationListFilterModeStringValue(a3);
  v10 = [v8 objectForKey:v9];

  if ([(CKConversationList *)self _isParentWithSubfoldersForFilterMode:a3])
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v23 = 134217984;
        v24 = a3;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Looking into sub classes of parent mode: %lu", &v23, 0xCu);
      }
    }

    v12 = [(CKConversationList *)self subclassifiedConversationsForFilterMode:a3];

    v10 = v12;
  }

  if (v10 && [(CKConversationList *)self _messageSIMFilteringEnabled]&& self->_simFilterIndex != -1)
  {
    v13 = [MEMORY[0x1E69A7F68] sharedInstance];
    v14 = [v13 ctSubscriptionInfo];
    v15 = [v14 __im_subscriptionContextForForSlotID:{-[CKConversationList simFilterIndex](self, "simFilterIndex")}];

    v16 = [v15 phoneNumber];
    v17 = [v15 labelID];
    v18 = [(CKConversationList *)self _filterConversations:v10 byHandleID:v16 simID:v17];

    v10 = v18;
  }

  v19 = [MEMORY[0x1E69A8088] sharedManager];
  v20 = [v19 shouldFilterConversationsByFocus];

  if (v20)
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

- (id)_filterConversations:(id)a3 byHandleID:(id)a4 simID:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v8 | v9)
  {
    if (v8)
    {
      v11 = v21;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v12 = __60__CKConversationList__filterConversations_byHandleID_simID___block_invoke;
      v13 = v8;
    }

    else
    {
      if (!v9)
      {
        v15 = 0;
        goto LABEL_12;
      }

      v11 = &v19;
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v12 = __60__CKConversationList__filterConversations_byHandleID_simID___block_invoke_2;
      v13 = v9;
    }

    v11[2] = v12;
    v11[3] = &unk_1E72ED3E8;
    v11[4] = v13;
    v16 = (v11 + 4);
    v15 = [v7 __imArrayByFilteringWithBlock:v11];

LABEL_12:
    if (![v15 count] && IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v23 = v8;
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

  v15 = v7;
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

- (void)_setConversations:(id)a3 forFilterMode:(unint64_t)a4
{
  if (a3)
  {
    v6 = a3;
    v8 = [(CKConversationList *)self conversationsDictionary];
    v7 = IMConversationListFilterModeStringValue(a4);
    [v8 setObject:v6 forKey:v7];
  }
}

- (void)removeConversation:(id)a3
{
  v7 = a3;
  for (i = 0; i != 27; ++i)
  {
    v5 = [(CKConversationList *)self conversationsForFilterMode:i];
    v6 = [v5 mutableCopy];

    [v6 removeObject:v7];
    [(CKConversationList *)self _setConversations:v6 forFilterMode:i];
  }
}

- (void)updateConversationsWasKnownSender
{
  if ([(CKConversationList *)self _messageUnknownFilteringEnabled])
  {
    v3 = [(CKConversationList *)self conversations];
    [v3 enumerateObjectsUsingBlock:&__block_literal_global_427_0];
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

- (void)setFilterMode:(unint64_t)a3
{
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isMergeFilteredThreadsEnabled];

  if (v5)
  {
    if (a3 >= 0xA)
    {
      v7 = a3 & 0xF;
      v6 = a3 & 0xFFFFFFFFFFFFFFF0;
    }

    else
    {
      v6 = 0;
      v7 = qword_190DCECE0[a3];
    }

    v8 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    [v8 setCurrentMessageFilterMode:v6 | v7];
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

- (void)recoverableDeleteForConversations:(id)a3 deleteDate:(id)a4 synchronousQuery:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v33 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v30 = v10;
      v31 = 2112;
      v32 = v11;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Recently Deleted | -recoverableDeleteForConversations called with: %@ with deleteDate: %@", buf, 0x16u);
    }
  }

  [(CKConversationList *)self _updatePinnedConversationsControllerForRemovedConversations:v10];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = [v10 _copyForEnumerating];
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v14);
        }

        [*(*(&v24 + 1) + 8 * v17++) prepareForRecoverableDeletionWithDeleteDate:v11];
      }

      while (v15 != v17);
      v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  v18 = [v10 __imArrayByApplyingBlock:&__block_literal_global_435_0];
  v19 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __102__CKConversationList_recoverableDeleteForConversations_deleteDate_synchronousQuery_completionHandler___block_invoke_2;
  v21[3] = &unk_1E72ED478;
  v23 = v7;
  v22 = v12;
  v20 = v12;
  [v19 moveMessagesInChatsToRecentlyDeleted:v18 deleteDate:v11 synchronously:v7 completionHandler:v21];
}

void __102__CKConversationList_recoverableDeleteForConversations_deleteDate_synchronousQuery_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  [v2 updateRecoverableMessagesMetadataSynchronously:*(a1 + 40) completionHandler:*(a1 + 32)];
}

- (void)permanentlyDeleteRecoverableMessagesInConversations:(id)a3 synchronousQuery:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Recently Deleted | -permanentlyDeleteRecoverableMessagesInConversations called with: %@", buf, 0xCu);
    }
  }

  [(CKConversationList *)self _removeConversationsFromRecentlyDeleted:v8];
  [(CKConversationList *)self _deleteBrandLogosIfNeededForConversations:v8];
  v11 = [v8 __imArrayByApplyingBlock:&__block_literal_global_437_0];
  v12 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __109__CKConversationList_permanentlyDeleteRecoverableMessagesInConversations_synchronousQuery_completionHandler___block_invoke_2;
  v14[3] = &unk_1E72ED478;
  v16 = v6;
  v15 = v9;
  v13 = v9;
  [v12 permanentlyDeleteRecoverableMessagesInChats:v11 synchronously:v6 completionHandler:v14];
}

void __109__CKConversationList_permanentlyDeleteRecoverableMessagesInConversations_synchronousQuery_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  [v2 updateRecoverableMessagesMetadataSynchronously:*(a1 + 40) completionHandler:*(a1 + 32)];
}

- (void)_deleteBrandLogosIfNeededForConversations:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 isBusinessConversation])
        {
          [v8 deleteBrandLogos];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_updatePinnedConversationsControllerForRemovedConversations:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Recently Deleted | updatingPinnedConversationsForRemovedConversations: %@", &v10, 0xCu);
    }
  }

  v6 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_439_0];
  v7 = [v4 filteredArrayUsingPredicate:v6];
  v8 = [v7 valueForKey:@"pinningIdentifier"];

  if (![(CKConversationList *)self remergingConversations])
  {
    v9 = [MEMORY[0x1E69A5C38] sharedInstance];
    [v9 conversationsWereDeletedWithIdentifiers:v8];
  }
}

- (void)recoverDeletedMessagesInConversations:(id)a3 synchronousQuery:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Recently Deleted | -recoverDeletedMessagesInConversations called with: %@", buf, 0xCu);
    }
  }

  [(CKConversationList *)self _removeConversationsFromRecentlyDeleted:v8];
  v11 = [v8 __imArrayByApplyingBlock:&__block_literal_global_444];
  v12 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __95__CKConversationList_recoverDeletedMessagesInConversations_synchronousQuery_completionHandler___block_invoke_2;
  v14[3] = &unk_1E72ED478;
  v16 = v6;
  v15 = v9;
  v13 = v9;
  [v12 recoverMessagesForChats:v11 synchronously:v6 completionHandler:v14];
}

void __95__CKConversationList_recoverDeletedMessagesInConversations_synchronousQuery_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  [v2 updateRecoverableMessagesMetadataSynchronously:*(a1 + 40) completionHandler:*(a1 + 32)];
}

- (void)_removeConversationsFromRecentlyDeleted:(id)a3
{
  v4 = a3;
  v5 = [(CKConversationList *)self conversationsForFilterMode:7];
  v6 = [v5 mutableCopy];

  [v6 removeObjectsInArray:v4];
  [(CKConversationList *)self _setConversations:v6 forFilterMode:7];
}

- (void)recoverJunkMessagesInConversations:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Junk Messages | -recoverJunkMessagesInConversations called with: %@", buf, 0xCu);
    }
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__CKConversationList_recoverJunkMessagesInConversations___block_invoke;
  v9[3] = &unk_1E72ED4A0;
  v9[4] = self;
  [v4 enumerateObjectsUsingBlock:v9];
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v10 = @"CKConversationListRecoveredJunkConversationIdentifiersUserInfoKey";
  v7 = [(CKConversationList *)self identifiersSetForConversations:v4];
  v11 = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [v6 postNotificationName:@"CKConversationListDidRecoverJunkConversationsNotification" object:0 userInfo:v8];
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

- (id)identifiersSetForConversations:(id)a3
{
  v3 = MEMORY[0x1E695DFA8];
  v4 = a3;
  v5 = [v3 setWithCapacity:{objc_msgSend(v4, "count")}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__CKConversationList_identifiersSetForConversations___block_invoke;
  v8[3] = &unk_1E72ED4A0;
  v6 = v5;
  v9 = v6;
  [v4 enumerateObjectsUsingBlock:v8];

  return v6;
}

void __53__CKConversationList_identifiersSetForConversations___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 chat];
  v3 = [v4 guid];
  [v2 addObject:v3];
}

- (void)updateEarliestMessageDateForConversations:(id)a3
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a3;
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__CKConversationList_updateEarliestMessageDateForConversations___block_invoke;
  v8[3] = &unk_1E72ED4A0;
  v9 = v5;
  v6 = v5;
  [v4 enumerateObjectsUsingBlock:v8];

  v7 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  [v7 updateEarliestMessageDateForChats:v6 completion:0];
}

void __64__CKConversationList_updateEarliestMessageDateForConversations___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 chat];
  [v2 addObject:v3];
}

- (void)_trackSendEventForMySenderID:(id)a3 andParticipants:(id)a4
{
  v20[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 count];
  if (v7 && v7 <= 1)
  {
    v8 = [v6 firstObject];
    v9 = [v8 ID];

    v10 = [MEMORY[0x1E696AD98] numberWithInt:0xFFFFFFFFLL];
    v11 = MEMORY[0x193AF5D40](v9);
    if (v11 && MEMORY[0x193AF5D40](v5))
    {
      v12 = MEMORY[0x1E696AD98];
      v13 = IMCountryCodeForNumber();
      v14 = IMCountryCodeForNumber();
      v15 = [v12 numberWithBool:{objc_msgSend(v13, "isEqualToString:", v14)}];

      v10 = v15;
    }

    v16 = [MEMORY[0x1E69A8168] sharedInstance];
    v19[0] = &unk_1F04E7878;
    v17 = [MEMORY[0x1E696AD98] numberWithBool:v11];
    v19[1] = &unk_1F04E7890;
    v20[0] = v17;
    v20[1] = v10;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    [v16 trackiMessageJunkEvent:7 withDictionary:v18];
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
  v2 = self;
  CKConversationList.defaultPrimaryFilterModeConversations()();

  sub_1902188FC(0, &qword_1EAD466B0);
  v3 = sub_190D57160();

  return v3;
}

- (id)conversationsContainingFilterMode:(unint64_t)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1D90;
  *(inited + 32) = a3;
  v6 = sub_19021E69C(inited);
  swift_setDeallocating();
  v7 = self;
  sub_19021B384(v6, 0);

  sub_1902188FC(0, &qword_1EAD466B0);
  v8 = sub_190D57160();

  return v8;
}

- (CKConversation)_beginTrackingConversationWithChat:(uint64_t)a3 shouldUpdateEarliestMessageDate:
{
  v5 = a2;
  if (a1)
  {
    if (CKIsRunningInPreferences() || CKIsRunningInMessages() || IMIsRunningInMessagesComposeViewService())
    {
      [v5 setNumberOfMessagesToKeepLoaded:50];
    }

    v6 = [a1 _alreadyTrackedConversationForChat:v5];
    if (!v6)
    {
      v6 = [[CKConversation alloc] initWithChat:v5];
      if ([a1 loadedConversations])
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

    if (([a1[7] containsObjectIdenticalTo:v6] & 1) == 0)
    {
      [a1 _beginTrackingConversation:v6 forChat:v5 shouldUpdateEarliestMessageDate:a3];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_handleRegistryDidRegisterChatNotification:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  v6 = [(CKConversationList *)&self->super.isa _beginTrackingConversationWithChat:v5 shouldUpdateEarliestMessageDate:1];
  v7 = [(CKConversationList *)self pendingConversation];
  if (v7)
  {
    v8 = [(CKConversationList *)self pendingConversation];
    v9 = [v8 chat];

    if (!v9)
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = [(CKConversationList *)self pendingConversation];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v11;
          _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Pending conversation has no chat set: %@", &buf, 0xCu);
        }
      }

      v12 = [(CKConversationList *)self pendingConversation];
      v13 = [v6 chat];
      v14 = [v13 participants];
      v15 = [v14 sortedArrayUsingSelector:sel_guid];

      v16 = [(CKConversationList *)self pendingConversation];
      v17 = [v16 pendingHandles];
      v18 = [v17 sortedArrayUsingSelector:sel_guid];

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
          v20 = [v6 copyForPendingConversation];
          v21 = [v12 pendingHandles];
          [v20 setPendingHandles:v21];

          if (IMOSLoggingEnabled())
          {
            v22 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *v33 = 138412290;
              v34 = v20;
              _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Handles are identical, setting new pending conversation: %@", v33, 0xCu);
            }
          }

          [(CKConversationList *)self setPendingConversation:v20];
          v31 = @"CKConversationListWasPendingKey";
          v32 = MEMORY[0x1E695E118];
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
          v24 = [MEMORY[0x1E696AD88] defaultCenter];
          [v24 postNotificationName:@"CKConversationListConversationLeftNotification" object:v12 userInfo:v23];
        }
      }

      _Block_object_dispose(&buf, 8);
    }
  }
}

@end